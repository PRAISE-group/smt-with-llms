# TODO: Sumit
from typing import List, Optional, Any

from code.lemma.llmModels import conversation
from code.models import Function, Lemmas, LemmaStatus, AlgoVerdict
from code.lemma.promptTemplates import *

def initPrompt() -> Any:
    prompt = SYSTEM_PROMPT_TEMPLATE.replace("<DOMAIN>", "lemma generation")
    response = conversation.run(prompt)
    return response

def generateLemmas(func: Function, format: str, minLimit: int, maxLimit: int) -> List[Lemmas]:
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

    response = conversation.run(user_prompt)
    print(response)

    function_prompt = LEMMA_OBJECTIVE_TEMPLATE.replace("<LEMMA>", "initial lemmas")
    function_prompt = function_prompt.replace("<FUNCTION>", func.name)
    function_prompt = function_prompt.replace("<FORMAT>", format)
    function_prompt = function_prompt.replace("<FUNCTION_DESCRIPTION>", func.description)
    function_prompt = function_prompt.replace("<FUNCTION_PARAMETERS>", f"{len(func.inputs[0].strip().split(','))} integer inputs.")
    function_prompt = function_prompt.replace("<SAMPLES_FORMAT>", f"List of examples, each of a tuple of {len(func.inputs[0].strip().split(','))} integer inputs.")
    function_prompt = function_prompt.replace("<SAMPLES_LIST>", str(func.inputs))
    function_prompt = function_prompt.replace("<LEMMA_SAMPLE>", func.userLemmas[0].smtFormat)

    response = conversation.run(function_prompt)

    for lms in func.userLemmas:
        lemmas.append(lms)

    index = 1
    for fragments in response.strip().split("\n"):
        fragments = fragments.strip()
        if fragments is not None or fragments != "":
            index += 1
            lemmas.append(
                Lemmas(
                    id=f"foo_cb_l{index}",
                    status=LemmaStatus.UNKNOWN,
                    associatedFunction="foo_cb",
                    smtFormat=fragments.strip()
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

if __name__ == "__main__":
    user_input = SYSTEM_PROMPT_TEMPLATE.replace("<LEMMA>", "lemma")
    response = conversation.run(user_input)
    print(response)