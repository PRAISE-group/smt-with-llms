from pydantic import BaseModel
from typing import List, Optional
from code.models import Lemmas, LemmaStatus

class LemmaList(BaseModel):
    lemmas: List[Lemmas]
    count: int

    def add(self, lemma: Lemmas) -> None:
        self.lemmas.append(lemma)
        self.count += 1

    def reset(self, index: int) -> None:
        self.lemmas[index].status = LemmaStatus.UNKNOWN

    def setValid(self, index: int) -> None:
        self.lemmas[index].status = LemmaStatus.VALID

    def setInvalid(self, index: int) -> None:
        self.lemmas[index].status = LemmaStatus.INVALID


