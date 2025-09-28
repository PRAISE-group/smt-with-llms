from pydantic import BaseModel, field_validator, Field, ConfigDict
from typing import List, Optional, Dict, Set, Tuple
from code.models import Lemmas, LemmaStatus
from threading import Lock
from rich.console import Console

console = Console()


class LemmaDict(BaseModel):
    # This is the list of the lemmas across all functions.
    values: Optional[Dict[str, Lemmas]] = Field(default_factory=dict)

    # To check if the next call is for refinement or not.
    # Only Fuzzer Module calls it.
    isRefinementCall: Optional[bool] = False

    # To check if the next call is for new lemmas from LLM or not.
    # Only solver/satmodule calls it.
    isIncrementalCall: Optional[bool] = False

    # Given a function key it says the latest
    # generation number for that function.
    latestGeneration: Optional[Dict[str, int]] = Field(default_factory=dict)

    # ✅ Allow non-serializable types like Lock
    hashes: Optional[Set[str]] = Field(default_factory=set, exclude=True)
    lock: Lock = Field(default_factory=Lock, exclude=True)
    model_config = ConfigDict(arbitrary_types_allowed=True)

    def __getitem__(self, key: str) -> Lemmas:
        with self.lock:
            return self.values[key]

    def __setitem__(self, key: str, value: Lemmas) -> None:
        with self.lock:
            text_hash = value.getHash()
            func = value.associatedFunction
            text_hash = f"{func}_{text_hash}__lemma"
            if text_hash in self.hashes:
                console.log(
                    f"[bold violet]Lemma with text '{value.smtFormat}' already exists for {func}."
                )
            else:
                value.setHash(text_hash)
                console.log(
                    f"[bold green]Lemma with text '{value.smtFormat}' added for {func}."
                )
                self.hashes.add(text_hash)
                self.values[key] = value
            return None

    def __contains__(self, key: str) -> bool:
        with self.lock:
            return key in self.values

    def __len__(self) -> int:
        with self.lock:
            return len(self.values)

    def removeLemma(self, key: str) -> None:
        with self.lock:
            del self.values[key]

    def keys(self) -> List[str]:
        with self.lock:
            return list(self.values.keys())

    def items(self) -> List[Tuple[str, Lemmas]]:
        with self.lock:
            return list(self.values.items())

    def get(self, key: str, default=None) -> Optional[Lemmas]:
        with self.lock:
            return self.values.get(key, default)

    @field_validator("values")
    @classmethod
    def check_all_lemmas(cls, v):
        if not all(isinstance(item, Lemmas) for item in v):
            raise ValueError("All items must be of type Lemmas")
        return v

    def getLatestGeneration(self, key: str) -> int:
        with self.lock:
            return self.latestGeneration[key]

    def setLatestGeneration(self, key: str, value: int) -> None:
        with self.lock:
            self.latestGeneration[key] = value

    def incrementLatestGeneration(self, key: str) -> None:
        with self.lock:
            self.latestGeneration[key] += 1

    def getAllLemmas(self) -> List[Lemmas]:
        with self.lock:
            return list(self.values.values())

    def getLemmasforSolver(self) -> Dict[str, str]:
        with self.lock:
            lms = {}
            for key, values in self.values.items():
                if (
                    values.status == LemmaStatus.VALID
                    or values.status == LemmaStatus.UNKNOWN
                ):
                    lms[key] = values.smtFormat
            return lms

    def setRefinementCall(self, isRefinementCall: bool) -> None:
        with self.lock:
            self.isRefinementCall = isRefinementCall

    def checkIfRefinementCall(self) -> None:
        with self.lock:
            return self.isRefinementCall

    def setIncrementalCall(self, isIncrementalCall: bool) -> None:
        with self.lock:
            self.isIncrementalCall = isIncrementalCall

    def checkIfIncrementalCall(self) -> None:
        with self.lock:
            return self.isIncrementalCall
