from random import random
from time import sleep
from rich.console import Console
from typing import List, Any
from code.lemma.context import LemmaDict
from code.models import Function, LemmaStatus

console = Console()

def testLocking(lemmaDict: LemmaDict, functionsList: List[Function]) -> Any:
    while True:

        for key, value in lemmaDict.items():
            if 10 * random() < 2:
                value.setInvalid()
                console.log(f"[bold red]Invalidated lemma: {key}, {value.id}")

        sleep(2)
