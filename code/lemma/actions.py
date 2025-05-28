# TODO: Sumit
from time import sleep
from typing import List, Optional
from rich.console import Console
from itertools import chain

from code.lemma.llmModels import callLLMforResponse
from code.lemma.context import LemmaDict
from code.models import Function, Lemmas, LemmaStatus
from code.lemma.promptTemplates import *
from code.models import exampleSet, ExampleSet

console = Console()

def process_format(fragment: str) -> str:
    if "int" in fragment:
        fragment = fragment.replace("int", "Int")
    return fragment

def get_lemmas_from_llm_response(response: str, funcName: str, generation: int) -> List[Lemmas]:
    lemmas: List[Lemmas] = []
    # TODO: Hashing based check to see if lemma is already added.
    # TODO: Do not add same identical lemma again.
    for index, fragments in enumerate(response.strip().split("\n"), 0):
        fragments = fragments.strip().lower()
        if (fragments is not None
                and len(fragments) > 2
                and "here" not in fragments
                and "start" not in fragments
                and "end" not in fragments
                and "assert" in fragments
                and "var_" in fragments
        ):
            fragments = process_format(fragments)
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

def generateIntialLemmas(func: Function,
                         formatting: str,
                         minLimit: int,
                         maxLimit: int,
                         generation: int
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
    console.log(response)

    function_prompt = LEMMA_OBJECTIVE_TEMPLATE.replace("<LEMMA>", "initial lemmas")
    function_prompt = function_prompt.replace("<FUNCTION>", func.name)
    function_prompt = function_prompt.replace("<FORMAT>", formatting)
    function_prompt = function_prompt.replace("<FUNCTION_DESCRIPTION>", func.description)
    function_prompt = function_prompt.replace("<FUNCTION_PARAMETERS>", f"{len(func.inputs[0].strip().split(','))} integer inputs.")
    function_prompt = function_prompt.replace("<SAMPLES_FORMAT>", f"List of examples, each of a tuple of {len(func.inputs[0].strip().split(','))} integer inputs.")
    function_prompt = function_prompt.replace("<SAMPLES_LIST>", str(func.inputs))
    function_prompt = function_prompt.replace("<LEMMA_SAMPLE>", func.userLemmas[0].smtFormat)

    response = callLLMforResponse(function_prompt, func.name)
    return get_lemmas_from_llm_response(response, func.name, generation)


def incrementalLemma(func: Function, formatting: str, minLimit: int, maxLimit: int, generation: int, exampleSet: ExampleSet) -> List[Lemmas]:
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
    return get_lemmas_from_llm_response(response, func.name, generation)

def refineSingleLemma(lemma: Lemmas, formatting: str, generation: int) -> List[Lemmas]:

    if lemma.getRefineDepth() <= 0:
        console.log(f"[bold red] No refinement available for lemma {lemma.name}")
        lemma.setDelete()
        return [lemma]

    # Extract the counterexample.
    counterExample = str(lemma.counterExample)

    user_prompt = LEMMA_REFINEMENT_TEMPLATE.replace("<FUNCTION>", lemma.associatedFunction)
    user_prompt = user_prompt.replace("<FORMAT>", formatting)
    user_prompt = user_prompt.replace("<LEMMA_TEXT>", lemma.smtFormat)
    user_prompt = user_prompt.replace("<INPUT_TEXT>", counterExample)
    user_prompt = user_prompt.replace("<INPUT_TYPE>", "A dictionary from 'variable' names to 'values'")

    response = callLLMforResponse(user_prompt, lemma.associatedFunction)
    lemma.decrementRefineDepth()
    return get_lemmas_from_llm_response(response, lemma.associatedFunction, generation)

def refineLemma(lemmaDict: LemmaDict, generation: Optional[int], formatting: Optional[str], funcName: str) -> List[Lemmas]:
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
            lemmaList = refineSingleLemma(lemma, formatting, generation)
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
):
    lemmaDict.setLatestGeneration(func.id, 1)
    generation = lemmaDict.getLatestGeneration(func.id)

    console.log(f"[bold blue]Lemma Generation for: {func.name}")

    # Add existing userLemmas since we need them.
    for lemmas in func.userLemmas:
        lemmaDict[lemmas.id] = lemmas

    # This gives you the list of Initial LEMMAs from LLM.
    res = generateIntialLemmas(
        func=func, formatting=formatting, minLimit=minLimit, maxLimit=maxLimit, generation=generation
    )

    for lms in res:
        lemmaDict[lms.id] = lms

    while True:
        res = []
        if lemmaDict.checkIfRefinementCall():
            # We got new lemmas from the counterexample.
            # After Fuzzer call, we may land here.
            # Keep track of generation
            lemmaDict.incrementLatestGeneration(func.id)
            generation = lemmaDict.getLatestGeneration(func.id)

            console.log(f"[bold red]Generating more lemmas for: {func.name}, after CEX "
                        f"T.Length: {len(lemmaDict)}, Generation: {generation}")

            res = refineLemma(lemmaDict=lemmaDict, generation=generation, formatting=formatting, funcName=func.name)
            lemmaDict.setRefinementCall(False)

        if lemmaDict.checkIfIncrementalCall():
            # We are asking for new lemmas incrementally.
            # After Solver call, we may land here
            # Keep track of generation
            lemmaDict.incrementLatestGeneration(func.id)
            generation = lemmaDict.getLatestGeneration(func.id)

            console.log(f"[bold blue]Generating more lemmas for: {func.name}, after INCREMENTAL "
                        f"T.Length: {len(lemmaDict)}, Generation: {generation}")

            res = incrementalLemma(func=func, formatting=formatting, minLimit=minLimit, maxLimit=maxLimit, generation=generation, exampleSet=exampleSet)
            lemmaDict.setIncrementalCall(False)

        for lms in res:
            lemmaDict[lms.id] = lms

        # Rest and start again.
        sleep(0.5)
