# TODO: Sumit
from typing import List, Optional
from code.models import Function, Lemmas, LemmaStatus, AlgoVerdict
from code.genlemma.promptTemplates import *

def initPrompt():
    pass

def generateLemmas(func: Function) -> List[Lemmas]:
    """
    Descp: Take in a input of type Function and return a list of Lemmas
    We use the prompts as shown in code.genlemma.promptTemplates
    Lemmas added here will have UNKNOWN status
    """
    return []

def refineLemmas(lemmas: List[Lemmas]) -> List[Lemmas]:
    """
    Descp: Take in a list of Lemmas that have INVALID lemma status
    and return a list of Lemmas after LLM refinement
    We will possibly create a new lemmas.
    Lemmas added here will have UNKNOWN status
    """
    return []

