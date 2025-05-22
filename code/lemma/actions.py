# TODO: Sumit
from time import sleep
from typing import List, Optional, Any

from rich.console import Console
from code.lemma.llmModels import conversation
from code.lemma.context import LemmaDict
from code.models import Function, Lemmas, LemmaStatus, AlgoVerdict
from code.lemma.promptTemplates import *

console = Console()

def process_format(fragment: str) -> str:
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
        ):
            fragments = process_format(fragments)
            lemmas.append(
                Lemmas(
                    id=f"{funcName}_gen{generation}_l{index}",
                    status=LemmaStatus.UNKNOWN,
                    associatedFunction=f"{funcName}",
                    smtFormat=f"({fragments})",
                    generation=generation,
                )
            )

    return lemmas

def generateIntialLemmas(func: Function,
                         format: str,
                         minLimit: int,
                         maxLimit: int,
                         generation: int
) -> List[Lemmas]:
    """
    Descp: Take in an input of type Function and return a list of Lemmas
    We use the prompts as shown in code.lemma.promptTemplates
    Lemmas added here will have UNKNOWN status
    """

    lemmas: List[Lemmas] = []

    user_prompt = LEMMA_GENERATION_START_TEMPLATE.replace("<LEMMA>", "initial lemmas")
    user_prompt = user_prompt.replace("<FORMAT>", format)
    user_prompt = user_prompt.replace("<MIN_LIMIT>", str(minLimit))
    user_prompt = user_prompt.replace("<MAX_LIMIT>", str(maxLimit))

    response = conversation.invoke(
        {"input": user_prompt},
        config={"configurable": {"session_id": f"session_{func.name}"}}
    )

    function_prompt = LEMMA_OBJECTIVE_TEMPLATE.replace("<LEMMA>", "initial lemmas")
    function_prompt = function_prompt.replace("<FUNCTION>", func.name)
    function_prompt = function_prompt.replace("<FORMAT>", format)
    function_prompt = function_prompt.replace("<FUNCTION_DESCRIPTION>", func.description)
    function_prompt = function_prompt.replace("<FUNCTION_PARAMETERS>", f"{len(func.inputs[0].strip().split(','))} integer inputs.")
    function_prompt = function_prompt.replace("<SAMPLES_FORMAT>", f"List of examples, each of a tuple of {len(func.inputs[0].strip().split(','))} integer inputs.")
    function_prompt = function_prompt.replace("<SAMPLES_LIST>", str(func.inputs))
    function_prompt = function_prompt.replace("<LEMMA_SAMPLE>", func.userLemmas[0].smtFormat)

    response = conversation.invoke(
        {"input": function_prompt},
        config={"configurable": {"session_id": f"session_{func.name}"}}
    )

    return get_lemmas_from_llm_response(response, func.name, generation)


def incrementalLemma(func: Function, format: str, minLimit: int, maxLimit: int, generation: int) -> List[Lemmas]:
    """
    Descp: Take in an input of type Function and return a list of Lemmas
    We use the prompts as shown in code.lemma.promptTemplates
    Lemmas added here will have UNKNOWN status
    """

    user_prompt = INCREMENTAL_ACTION_TEMPLATE.replace("<LEMMA>", "lemmas")
    user_prompt = user_prompt.replace("<FORMAT>", format)
    user_prompt = user_prompt.replace("<FUNCTION>", func.name)
    user_prompt = user_prompt.replace("<MIN_LIMIT>", str(minLimit))
    user_prompt = user_prompt.replace("<MAX_LIMIT>", str(maxLimit))

    response = conversation.invoke(
        {"input": user_prompt},
        config={"configurable": {"session_id": f"session_{func.name}"}}
    )

    return get_lemmas_from_llm_response(response, func.name, generation)

def refineLemma(lemmaDict: LemmaDict, generation: Optional[int], format: Optional[str]) -> List[Lemmas]:
    # """
    # Descp: Take in a list of Lemmas that have INVALID lemma status
    # and return a list of Lemmas after LLM refinement
    # We will possibly create new lemmas.
    # Lemmas added here will have UNKNOWN status
    # """
    # user_prompt = LEMMA_REFINEMENT_TEMPLATE.replace("<LEMMA>", lemma.smtFormat)
    # user_prompt = user_prompt.replace("<FUNCTION>", lemma.associatedFunction)
    #
    # numInputs = [x.strip() for x in counterExamples.strip().split(",")]
    # user_prompt = user_prompt.replace("<SAMPLES_FORMAT>", f"Input for the function: {len(numInputs)} integer inputs.")
    # user_prompt = user_prompt.replace("<COUNTEREXAMPLE_VALUES>", counterExamples)
    #
    # response = conversation.invoke(
    #     {"input": user_prompt},
    #     config={"configurable": {"session_id": f"session_{lemma.associatedFunction}"}}
    # )
    #
    # return get_lemmas_from_llm_response(response, lemma.associatedFunction, lemma.generation, True, lemmaId)
    return []

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
        func=func, format=formatting, minLimit=minLimit, maxLimit=maxLimit, generation=generation
    )

    for lms in res:
        lemmaDict[lms.id] = lms

    while True:
        res = []
        # We are now going to make a call to LLMs to generate more lemmas
        # for the function {func.name}
        console.log(f"[bold blue]Checking if LEMMA generation needed for {func.name}.")

        if lemmaDict.checkIfRefinementCall():
            # We got new lemmas from the counterexample.
            # After Fuzzer call, we may land here.
            # Keep track of generation
            lemmaDict.incrementLatestGeneration(func.id)
            generation = lemmaDict.getLatestGeneration(func.id)

            console.log(f"[bold red]Generating more lemmas for: {func.name}, after CEX"
                        f"T.Length: {len(lemmaDict)}, Generation: {generation}")

            res = refineLemma(lemmaDict=lemmaDict, generation=generation, format=formatting)
            lemmaDict.setRefinementCall(False)

        if lemmaDict.checkIfIncrementalCall():
            # We are asking for new lemmas incrementally.
            # After Solver call, we may land here
            # Keep track of generation
            lemmaDict.incrementLatestGeneration(func.id)
            generation = lemmaDict.getLatestGeneration(func.id)

            console.log(f"[bold blue]Generating more lemmas for: {func.name}, after INCREMENTAL "
                        f"T.Length: {len(lemmaDict)}, Generation: {generation}")

            res = incrementalLemma(func=func, format=formatting, minLimit=minLimit, maxLimit=maxLimit, generation=generation)
            lemmaDict.setIncrementalCall(True)

        for lms in res:
            lemmaDict[lms.id] = lms

        # Rest and start again.
        sleep(1)
