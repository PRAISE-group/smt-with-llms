# TODO: Sumit
from time import sleep
from typing import List, Optional, Any

from rich.console import Console
from code.lemma.llmModels import conversation
from code.lemma.context import LemmaDict
from code.models import Function, Lemmas, LemmaStatus, AlgoVerdict
from code.lemma.promptTemplates import *

console = Console()

def generateIntialLemmas(func: Function, format: str, minLimit: int, maxLimit: int, generation: int) -> List[Lemmas]:
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

    # TODO: Hashing based check to see if lemma is already added.
    # TODO: Do not add same identical lemma again.
    for index, fragments in enumerate(response.strip().split("\n"), 2):
        fragments = fragments.strip().lower()
        if (fragments is not None
                and len(fragments) > 2
                and "here" not in fragments
                and "start" not in fragments
                and "end" not in fragments
                and "assert" in fragments
        ):
            # console.log(f"[bold white]{fragments}")
            lemmas.append(
                Lemmas(
                    id=f"{func.name}_gen{generation}_l{index}",
                    status=LemmaStatus.UNKNOWN,
                    associatedFunction=f"{func.name}",
                    smtFormat=f"({fragments})",
                    generation=generation
                )
            )

    return lemmas

def incrementalLemma(func: Function, format: str, minLimit: int, maxLimit: int, generation: int) -> List[Lemmas]:
    """
    Descp: Take in an input of type Function and return a list of Lemmas
    We use the prompts as shown in code.lemma.promptTemplates
    Lemmas added here will have UNKNOWN status
    """

    lemmas: List[Lemmas] = []

    user_prompt = INCREMENTAL_ACTION_TEMPLATE.replace("<LEMMA>", "lemmas")
    user_prompt = user_prompt.replace("<FUNCTION>", func.name)
    user_prompt = user_prompt.replace("<MIN_LIMIT>", str(minLimit))
    user_prompt = user_prompt.replace("<MAX_LIMIT>", str(maxLimit))

    response = conversation.invoke(
        {"input": user_prompt},
        config={"configurable": {"session_id": f"session_{func.name}"}}
    )

    # TODO: Hashing based check to see if lemma is already added.
    # TODO: Do not add same identical lemma again.
    for index, fragments in enumerate(response.strip().split("\n"), 2):
        fragments = fragments.strip().lower()
        if (fragments is not None
                and len(fragments) > 2
                and "here" not in fragments
                and "start" not in fragments
                and "end" not in fragments
                and "assert" in fragments
        ):
            # console.log(f"[bold white]{fragments}")
            lemmas.append(
                Lemmas(
                    id=f"{func.name}_gen{generation}_l{index}",
                    status=LemmaStatus.UNKNOWN,
                    associatedFunction=f"{func.name}",
                    smtFormat=f"({fragments})",
                    generation=generation
                )
            )

    return lemmas

def refineLemmas(lemmas: List[Lemmas], counterExamples: Optional[List[str]]) -> List[Lemmas]:
    """
    Descp: Take in a list of Lemmas that have INVALID lemma status
    and return a list of Lemmas after LLM refinement
    We will possibly create a new lemmas.
    Lemmas added here will have UNKNOWN status
    """
    return []

def generate_lemmas_background(
        func: Function,
        formatting: str,
        minLimit: int,
        maxLimit: int,
        lemmaDict: LemmaDict,
):
    generation = 1
    console.log(f"[bold blue]Lemma Generation for: {func.name}")

    # Add existing userLemmas since we need them.
    for lemmas in func.userLemmas:
        lemmaDict[lemmas.id] = lemmas

    res = generateIntialLemmas(func, formatting, minLimit, maxLimit, generation)
    for lms in res:
        lemmaDict[lms.id] = lms

    while True:
        # Keep track of generation
        generation += 1
        # We are now going to make a call to LLMs to generate more lemmas
        # for the function {func.name}
        console.log(f"[bold blue]Generating more lemmas for: {func.name}, "
                    f"T.Length: {len(lemmaDict)}, Generation: {generation}")

        # We probably got new lemmas.
        res = incrementalLemma(func, formatting, minLimit, maxLimit, generation)
        for lms in res:
            lemmaDict[lms.id] = lms

        # Rest and start again.
        sleep(4)
