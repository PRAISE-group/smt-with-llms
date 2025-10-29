from z3 import *
from time import sleep
from itertools import chain
from typing import List, Optional, Any

# Internal Imports.
from code.utils.printers import console
from code.lemma.checkers import check_lemma_smtlib
from code.lemma.llmModels import callLLMforResponse
from code.lemma.lemmaDict import LemmaDict
from code.utils.commandline import commandLineArgs
from code.lemma.promptTemplates import *
from code.models import exampleSet, ExampleSet, Function, Lemmas, LemmaStatus


def process_format(fragment: str) -> str:
    return fragment


def get_text_from_content(response) -> str | None | List[str]:
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

def defineObjective(
        formatting: str, minLimit: int, maxLimit: int, sessionId: str
) -> None:
    """
    After checking the capabilities of the LLM, we now define the task the
    LLM needs to perform. First useful prompt that goes to the LLM.
    We define the objective for the task here. 
    """

    user_prompt = OBJECTIVE_TEMPLATE.replace("<ARTIFACT>", "lemmas")
    user_prompt = user_prompt.replace("<FORMAT>", formatting)
    user_prompt = user_prompt.replace("<MIN_LIMIT>", str(minLimit))
    user_prompt = user_prompt.replace("<MAX_LIMIT>", str(maxLimit))
    response = callLLMforResponse(user_prompt, sessionId)
    
    if commandLineArgs.debug:
        console.log("[bold red]Objective Understanding:")
        console.print(response.content)

def defineGuidelines(
        formatting: str, sessionId: str
) -> None:
    """
    After checking the capabilities of the LLM, we now define the task the
    LLM needs to perform. First useful prompt that goes to the LLM.
    We define the objective for the task here.
    """

    user_prompt = LEMMA_GENERATION_GUIDELINES.replace("<ARTIFACT>", "lemmas")
    user_prompt = user_prompt.replace("<FORMAT>", formatting)
    response = callLLMforResponse(user_prompt, sessionId)

    if commandLineArgs.debug:
        console.log("[bold red]Guidelines Understanding:")
        console.print(response.content)

def generateLemmasForFunction(
    func: Function, formatting: str, generation: int, sessionId: str
) -> List[Lemmas]:
    """
    Descp: Take in an input of type Function and return a list of Lemmas
    We use the prompts as shown in code.lemma.promptTemplates
    Lemmas added here will have UNKNOWN status at the beginning.
    """
    console.log(f"[bold blue]Lemma Generation for: {func.name}")
    
    function_prompt = GEN_FUNCTION_LEMMAS.replace("<ARTIFACT>", "lemmas")
    function_prompt = function_prompt.replace("<FUNCTION>", func.name)
    function_prompt = function_prompt.replace("<FORMAT>", formatting)
    function_prompt = function_prompt.replace(
        "<FUNCTION_DESCRIPTION>", func.description
    )
    function_prompt = function_prompt.replace("<FUNCTION_PROTOTYPE>", func.smtDecl)
    function_prompt = function_prompt.replace(
        "<SAMPLES_FORMAT>",
        f"List of examples, each of a tuple of {len(func.inputs[0].strip().split(','))} integer inputs.",
    )
    function_prompt = function_prompt.replace("<SAMPLES_LIST>", str(func.inputs))

    response = callLLMforResponse(function_prompt, sessionId)

    if commandLineArgs.debug:
        console.log(f"[bold red]Lemmas for {func.name}:")
        console.print(response.content)

    return get_lemmas_from_llm_response(response, func.name, func.smtDecl, generation)


def getRefinedLemmasFromExamples(
    funcList: List[Function],
    lemmaDict: LemmaDict,
    generation: Optional[int],
    formatting: Optional[str],
    sessionId: str,
) -> List[Lemmas]:
    """
    Descp: Take in a list of Lemmas that have INVALID lemma status
    and return a list of Lemmas after LLM refinement
    We will possibly create new lemmas.
    Lemmas added here will have UNKNOWN status
    """

    # Pick only those lemmas that are associated with funcName and is status INVALID
    invalidLemmas, validLemmas = [], []
    for lemmaKey, lemma in lemmaDict.items():
        if lemma.status == LemmaStatus.INVALID:
            invalidLemmas.append(lemma.smtFormat)
        if lemma.status == LemmaStatus.VALID:
            validLemmas.append(lemma.smtFormat)

    user_prompt = LEMMA_REFINEMENT_TEMPLATE
    user_prompt = user_prompt.replace("<FORMAT>", formatting)
    user_prompt = user_prompt.replace("<ARTIFACT>", 'lemmas')
    user_prompt = user_prompt.replace("<REPLACE_LEMMAS_POS_LIST>", "\n".join(x for x in validLemmas))
    user_prompt = user_prompt.replace("<REPLACE_LEMMAS_NEG_LIST>", "\n".join(x for x in invalidLemmas))

    response = callLLMforResponse(user_prompt, sessionId)

    if commandLineArgs.debug:
        console.log(f"[bold red]New refinement lemmas:")
        console.print(response.content)

    funcDecl: str = "\n".join(x.smtDecl for x in funcList)
    return get_lemmas_from_llm_response(response, "refinement", funcDecl, generation)


def generate_lemmas_background(
    funcList: List[Function],
    formatting: str,
    minLimit: int,
    maxLimit: int,
    lemmaDict: LemmaDict,
    sessionId: str,
    stop_event,
):
    lemmaDict.setLatestGeneration(sessionId, 1)
    generation = lemmaDict.getLatestGeneration(sessionId)

    # PROMPT-1 Define objectives of the task.
    defineObjective(formatting=formatting, minLimit=minLimit, maxLimit=maxLimit, sessionId=sessionId)

    # PROMPT-2 Define the guidelines.
    defineGuidelines(formatting=formatting, sessionId=sessionId)
    
    # This gives you the list of Initial LEMMAs from LLM
    for function in funcList:
        # Add existing userLemmas since we need them.
        for lemmas in function.userLemmas:
            lemmaDict[lemmas.id] = lemmas

        # PROMPT-3 Give the function description.
        # And generate the LEMMAs.
        res = generateLemmasForFunction(
            func=function,
            formatting=formatting,
            generation=generation,
            sessionId=sessionId
        )

        for lms in res:
            lemmaDict[lms.id] = lms

        sleep(2)

    while not stop_event.is_set():
        res = []

        if lemmaDict.checkIfRefinementCall():
            # We got new lemmas from the counterexample.
            # After Fuzzer call, we may land here.
            # Keep track of generation
            lemmaDict.incrementLatestGeneration(sessionId)
            generation = lemmaDict.getLatestGeneration(sessionId)

            console.log(
                f"[bold red]Required refined lemmas after fuzzer invalidation!"
                f"T.Length: {len(lemmaDict)}, Generation: {generation}, session: {sessionId}"
            )

            res = getRefinedLemmasFromExamples(
                funcList=funcList,
                lemmaDict=lemmaDict,
                generation=generation,
                formatting=formatting,
                sessionId=sessionId
            )
            
            lemmaDict.setRefinementCall(False)

        for lms in res:
            lemmaDict[lms.id] = lms

        # Rest and start again (RATELIMIT).
        # Local Run results are not affected.
        sleep(5)