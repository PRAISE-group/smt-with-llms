from time import sleep
from typing import List, Optional, Any
from itertools import chain
from z3 import *

from code.utils.printers import console
from code.lemma.checkers import check_lemma_smtlib
from code.lemma.llmModels import callLLMforResponse
from code.lemma.context import LemmaDict
from code.utils.commandline import commandLineArgs
from code.lemma.promptTemplates import *
from code.models import exampleSet, ExampleSet, Function, Lemmas, LemmaStatus


def process_format(fragment: str) -> str:
    if "int" in fragment:
        fragment = fragment.replace("int", "Int")
    return fragment


def get_text_from_content(response) -> str | None:
    """
    If response.content is a list, return content[1]['text'] (when present).
    Otherwise, return response.content as-is.
    Works when `response` is an object with `.content` or a dict with 'content'.
    """
    # Pull `content` whether response is an object or a dict
    content = None
    if hasattr(response, "content"):
        content = response.content
    elif isinstance(response, dict):
        content = response.get("content")

    # If we didn't find content, just return whatever we have
    if content is None:
        return None

    # If it's a list, try to return content[1]['text']
    if isinstance(content, list):
        if len(content) > 1 and isinstance(content[1], dict) and "text" in content[1]:
            return content[1]["text"]
        # If the exact slot/key isn't there, fall back to returning the list as-is
        return content

    # Otherwise return as-is
    return content


def process_response(response: Any) -> str | None:
    if commandLineArgs.usegpt:
        return response.content
    if commandLineArgs.usebedrock:
        return get_text_from_content(response)
    else:
        return response

def get_lemmas_from_llm_response(
    response: str, funcName: str, funcDecl: str, generation: int
) -> List[Lemmas]:
    lemmas: List[Lemmas] = []
    formattedResponse: str | None = process_response(response)
    # TODO: Hashing based check to see if lemma is already added.
    # TODO: Do not add same identical lemma again.
    for index, fragments in enumerate(formattedResponse.strip().split("\n"), 0):
        # fragments = fragments.strip().lower()
        fragments = fragments.strip()
        if (
            fragments is not None
            and len(fragments) > 2
            and "here" not in fragments
            and "start" not in fragments
            and "end" not in fragments
            and "assert" in fragments
            and "forall" in fragments
        ):
            fragments = process_format(fragments)
            isSyntaxVal: bool = check_lemma_smtlib(
                lemma_smt=fragments,
                extra_decls="",
                extra_asserts="",
                funcDecl=funcDecl
            )

            if not isSyntaxVal:
                continue

            lemmas.append(
                Lemmas(
                    id=f"{funcName}_gen{generation}_l{index}",
                    status=LemmaStatus.UNKNOWN,
                    associatedFunction=f"{funcName}",
                    smtFormat=f"{fragments}",
                    generation=generation,
                )
            )

    return lemmas


def generateIntialLemmas(
    func: Function, formatting: str, minLimit: int, maxLimit: int, generation: int
) -> List[Lemmas]:
    """
    Descp: Take in an input of type Function and return a list of Lemmas
    We use the prompts as shown in code.lemma.promptTemplates
    Lemmas added here will have UNKNOWN status
    """

    user_prompt = LEMMA_GENERATION_START_TEMPLATE.replace("<LEMMA>", "initial lemmas")
    user_prompt = user_prompt.replace("<FORMAT>", formatting)
    user_prompt = user_prompt.replace("<MIN_LIMIT>", str(minLimit))
    user_prompt = user_prompt.replace("<MAX_LIMIT>", str(maxLimit))

    response = callLLMforResponse(user_prompt, func.name)
    if commandLineArgs.debug:
        console.log(response)

    function_prompt = LEMMA_OBJECTIVE_TEMPLATE.replace("<LEMMA>", "initial lemmas")
    function_prompt = function_prompt.replace("<FUNCTION>", func.name)
    function_prompt = function_prompt.replace("<FORMAT>", formatting)
    function_prompt = function_prompt.replace(
        "<FUNCTION_DESCRIPTION>", func.description
    )
    function_prompt = function_prompt.replace("<FUNCTION_DECLARATION>", func.smtDecl)
    function_prompt = function_prompt.replace(
        "<FUNCTION_PARAMETERS>",
        f"{len(func.inputs[0].strip().split(','))} integer inputs.",
    )
    function_prompt = function_prompt.replace(
        "<SAMPLES_FORMAT>",
        f"List of examples, each of a tuple of {len(func.inputs[0].strip().split(','))} integer inputs.",
    )
    function_prompt = function_prompt.replace("<SAMPLES_LIST>", str(func.inputs))
    if len(func.userLemmas) > 0:
        function_prompt = function_prompt.replace(
            "<LEMMA_SAMPLE>", func.userLemmas[0].smtFormat
        )
    else:
        function_prompt = function_prompt.replace("<LEMMA_SAMPLE>", "")
    # print("prompt:", function_prompt)
    response = callLLMforResponse(function_prompt, func.name)
    return get_lemmas_from_llm_response(response, func.name, func.smtDecl, generation)


def incrementalLemma(
    func: Function,
    formatting: str,
    minLimit: int,
    maxLimit: int,
    generation: int,
    exampleSet: ExampleSet,
) -> List[Lemmas]:
    """
    Descp: Take in an input of type Function and return a list of Lemmas
    We use the prompts as shown in code.lemma.promptTemplates
    Lemmas added here will have UNKNOWN status
    """

    user_prompt = INCREMENTAL_ACTION_TEMPLATE.replace("<LEMMA>", "lemmas")
    user_prompt = user_prompt.replace("<FORMAT>", formatting)
    user_prompt = user_prompt.replace("<FUNCTION>", func.name)
    user_prompt = user_prompt.replace("<MIN_LIMIT>", str(minLimit))
    user_prompt = user_prompt.replace("<MAX_LIMIT>", str(maxLimit))

    exp = []
    for examples in exampleSet:
        if examples.funcName == "foo_cb":
            exp.append(f"Input: {examples.input}, Output: {examples.output}\n")

    user_prompt = user_prompt.replace("<PAIRS>", "\n".join(exp))

    response = callLLMforResponse(user_prompt, func.name)
    return get_lemmas_from_llm_response(response, func.name, func.smtDecl, generation)


def refineSingleLemma(lemma: Lemmas, formatting: str, funcDecl: str, generation: int) -> List[Lemmas]:

    if lemma.getRefineDepth() <= 0:
        console.log(f"[bold red] No refinement available for lemma {lemma.name}")
        lemma.setDelete()
        return [lemma]

    # Extract the counterexample.
    counterExample = str(lemma.counterExample)

    user_prompt = LEMMA_REFINEMENT_TEMPLATE.replace(
        "<FUNCTION>", lemma.associatedFunction
    )
    user_prompt = user_prompt.replace("<FORMAT>", formatting)
    user_prompt = user_prompt.replace("<LEMMA_TEXT>", lemma.smtFormat)
    user_prompt = user_prompt.replace("<INPUT_TEXT>", counterExample)
    user_prompt = user_prompt.replace(
        "<INPUT_TYPE>", "A dictionary from 'variable' names to 'values'"
    )

    response = callLLMforResponse(user_prompt, lemma.associatedFunction)
    lemma.decrementRefineDepth()
    return get_lemmas_from_llm_response(response, lemma.associatedFunction, funcDecl, generation)


def refineLemma(
    lemmaDict: LemmaDict,
    generation: Optional[int],
    formatting: Optional[str],
    funcName: str,
    funcDecl: str
) -> List[Lemmas]:
    """
    Descp: Take in a list of Lemmas that have INVALID lemma status
    and return a list of Lemmas after LLM refinement
    We will possibly create new lemmas.
    Lemmas added here will have UNKNOWN status
    """

    # Pick only those lemmas that are associated with funcName and is status INVALID
    newLemmas = []
    for lemmaKey, lemma in lemmaDict.items():
        if lemma.status == LemmaStatus.INVALID and lemma.associatedFunction == funcName:
            lemmaList = refineSingleLemma(lemma, formatting, funcDecl, generation)
            for lemma in lemmaList:
                if lemma.getStatus() == LemmaStatus.SOFTDELETE:
                    lemmaDict.remove(lemma)
                else:
                    newLemmas.append(lemma)

    return list(chain.from_iterable(newLemmas))


def generate_lemmas_background(
    func: Function,
    formatting: str,
    minLimit: int,
    maxLimit: int,
    lemmaDict: LemmaDict,
    stop_event,
):
    lemmaDict.setLatestGeneration(func.id, 1)
    generation = lemmaDict.getLatestGeneration(func.id)

    console.log(f"[bold blue]Lemma Generation for: {func.name}")

    # Add existing userLemmas since we need them.
    for lemmas in func.userLemmas:
        lemmaDict[lemmas.id] = lemmas

    # This gives you the list of Initial LEMMAs from LLM.
    res = generateIntialLemmas(
        func=func,
        formatting=formatting,
        minLimit=minLimit,
        maxLimit=maxLimit,
        generation=generation,
    )

    for lms in res:
        lemmaDict[lms.id] = lms

    while not stop_event.is_set():
        res = []
        if lemmaDict.checkIfRefinementCall():
            # We got new lemmas from the counterexample.
            # After Fuzzer call, we may land here.
            # Keep track of generation
            lemmaDict.incrementLatestGeneration(func.id)
            generation = lemmaDict.getLatestGeneration(func.id)

            console.log(
                f"[bold red]Generating more lemmas for: {func.name}, after CEX "
                f"T.Length: {len(lemmaDict)}, Generation: {generation}"
            )

            res = refineLemma(
                lemmaDict=lemmaDict,
                generation=generation,
                formatting=formatting,
                funcName=func.name,
                funcDecl=func.smtDecl
            )
            lemmaDict.setRefinementCall(False)

        if lemmaDict.checkIfIncrementalCall():
            # We are asking for new lemmas incrementally.
            # After Solver call, we may land here
            # Keep track of generation
            lemmaDict.incrementLatestGeneration(func.id)
            generation = lemmaDict.getLatestGeneration(func.id)

            console.log(
                f"[bold blue]Generating more lemmas for: {func.name}, after INCREMENTAL "
                f"T.Length: {len(lemmaDict)}, Generation: {generation}"
            )

            res = incrementalLemma(
                func=func,
                formatting=formatting,
                minLimit=minLimit,
                maxLimit=maxLimit,
                generation=generation,
                exampleSet=exampleSet,
            )
            lemmaDict.setIncrementalCall(False)

        for lms in res:
            lemmaDict[lms.id] = lms

        # Rest and start again.
        # Local Run results are not affected.
        sleep(2)

        # Bedrock has a rate-limit.
        if commandLineArgs.usebedrock:
            sleep(10)

        # ChatGPT has not rate-limit but will incurr
        # much higher cost.
        if commandLineArgs.usegpt:
            sleep(10)
