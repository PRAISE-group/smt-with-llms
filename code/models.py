from datetime import datetime
import hashlib
from pydantic import field_validator, BaseModel
from typing import Optional, List
from enum import Enum


class AlgoVerdict(Enum):
    """
    List of all cases our algorithm can
    return. SAT_OK is SAT, UNSAT_OK is UNSAT
    """
    SAT = 6000
    UNSAT = 7000

class LemmaStatus(Enum):
    """
    Status of a Lemma,
    UNKNOWN: Newly generated, no checks done.
    VALID: Tick
    INVALID: Cross
    """
    UNKNOWN = 100
    VALID = 101
    INVALID = 102

class Lemmas(BaseModel):
    """
    Lemmas Object with id and current status
    """
    id: str
    status: LemmaStatus
    associatedFunction: str
    hash: Optional[str] = None
    generation: Optional[int] = None
    smtFormat: Optional[str] = None
    codeFormat: Optional[str] = None

    @field_validator("status", mode="before")
    def parse_enum_results(cls, v):
        if isinstance(v, str) and v.isdigit():
            return int(v)
        return v

    def reset(self) -> None:
        self.status = LemmaStatus.UNKNOWN

    def setValid(self) -> None:
        self.status = LemmaStatus.VALID

    def setInvalid(self) -> None:
        self.status = LemmaStatus.INVALID

    def setHash(self, hash: str) -> None:
        self.hash = hash

    def getHash(self) -> str:
        # Normalize text (strip + lowercase), then hash
        norm = self.smtFormat.strip().lower()
        return hashlib.sha256(norm.encode('utf-8')).hexdigest()

class Function(BaseModel):
    """
    Function Object
    """
    id: str
    name: str
    description: Optional[str] = None
    userLemmas: Optional[List[Lemmas]] = None
    inputs: Optional[List[str]] = None
    outputs: Optional[List[str]] = None
    smt_file: Optional[str] = None
    object_file: Optional[str] = None
