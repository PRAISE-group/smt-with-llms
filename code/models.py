from datetime import datetime
import hashlib
from threading import Lock
from pydantic import field_validator, BaseModel, Field, ConfigDict
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
    status: LemmaStatus = None
    associatedFunction: str = None
    hash: Optional[str] = None
    generation: Optional[int] = None
    smtFormat: Optional[str] = None
    codeFormat: Optional[str] = None
    counterExample: Optional[str] = None
    picked: bool = False

    lock: Lock = Field(default_factory=Lock, exclude=True)
    model_config = ConfigDict(arbitrary_types_allowed=True)

    @field_validator("status", mode="before")
    def parse_enum_results(cls, v):
        if isinstance(v, str) and v.isdigit():
            return int(v)
        return v

    def reset(self) -> None:
        with self.lock:
            self.status = LemmaStatus.UNKNOWN

    def setValid(self) -> None:
        with self.lock:
            self.status = LemmaStatus.VALID

    def setInvalid(self) -> None:
        with self.lock:
            self.status = LemmaStatus.INVALID

    def setHash(self, hash: str) -> None:
        with self.lock:
            self.hash = hash

    def getHash(self) -> str:
        with self.lock:
            # Normalize text (strip + lowercase), then hash
            norm = self.smtFormat.strip().lower()
            return hashlib.sha256(norm.encode('utf-8')).hexdigest()

    def setPicked(self) -> None:
        with self.lock:
            self.picked = True

    def getStatus(self) -> LemmaStatus:
        with self.lock:
            return self.status

    def isPicked(self) -> bool:
        with self.lock:
            return self.picked


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
