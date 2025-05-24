import hashlib
from enum import Enum
from threading import Lock
from rich.console import Console
from pydantic import field_validator, BaseModel, Field, ConfigDict
from typing import Optional, List, Dict

console = Console()

class AlgoVerdict(Enum):
    """
    List of all cases our algorithm can
    return. SAT_OK is SAT, UNSAT_OK is UNSAT
    """
    UNKNOWN = 9000
    SAT = 6000
    UNSAT = 7000

class Example(BaseModel):
    funcName: str = None
    input: List[int] = []
    output: int = 0

class ExampleSet(BaseModel):
    examples: List[Example] = Field(default_factory=list)

    lock: Lock = Field(default_factory=Lock, exclude=True)
    model_config = ConfigDict(arbitrary_types_allowed=True)

    # Iteration
    def __iter__(self):
        with self.lock:
            return iter(self.examples)

    # Indexing
    def __getitem__(self, index: int) -> Example:
        with self.lock:
            return self.examples[index]

    # Assignment
    def __setitem__(self, index: int, value: Example):
        with self.lock:
            self.examples[index] = value

    # Deletion
    def __delitem__(self, index: int):
        with self.lock:
            del self.examples[index]

    # Append
    def append(self, value: Example):
        with self.lock:
            self.examples.append(value)

    # Length
    def __len__(self) -> int:
        with self.lock:
            return len(self.examples)

    def createExampleFromDict(self, exampleDictList: List[Dict[str, List[int]]]) -> None:
        with self.lock:
            for exampleItems in exampleDictList:
                for key, value in exampleItems.items():
                    self.examples.append(
                        Example(
                            funcName=key,
                            input=value[0:-1],
                            output=value[-1]
                        )
                    )


class LemmaStatus(Enum):
    """
    Status of a Lemma,
    UNKNOWN: ? (Newly generated, no checks done)
    VALID: Tick (Fuzzer says correct)
    INVALID: Cross (Fuzzer says wrong)
    """
    VALID = 200
    UNKNOWN = 404
    INVALID = 502

class Lemmas(BaseModel):
    """
    Lemmas Object with id and current status
    """
    # Unique Identifier of Lemma
    id: str

    # Status of the lemma ?, tick, cross
    # Lemma with status UNKNOWN is always picked.
    status: LemmaStatus = None

    # Function Name
    # Needed by Fuzzer and Solver Module.
    associatedFunction: str = None

    # Set from Fuzzer Call
    # To be set by Fuzzer Module if CEX found. LEMMA.INVALID
    counterExample: Optional[Dict[str, int]] = None

    # Raw string from LLM in SMTLIB Format
    # Needed by the Fuzzer and Solver Module.
    smtFormat: Optional[str] = None

    # Internal: Compute Hash
    hash: Optional[str] = None

    # Internal, Changed only by LEMMA Generation
    generation: Optional[int] = None
    codeFormat: Optional[str] = None
    lock: Lock = Field(default_factory=Lock, exclude=True)
    model_config = ConfigDict(arbitrary_types_allowed=True)

    @field_validator("status", mode="before")
    def parse_enum_results(cls, v):
        if isinstance(v, str) and v.isdigit():
            return int(v)
        return v

    def setUnknown(self) -> None:
        with self.lock:
            self.status = LemmaStatus.UNKNOWN

    def setValid(self) -> None:
        with self.lock:
            self.status = LemmaStatus.VALID

    def setInvalid(self, counterExample: Dict[str, int]) -> None:
        with self.lock:
            self.counterExample = counterExample
            self.status = LemmaStatus.INVALID

    def getStatus(self) -> LemmaStatus:
        with self.lock:
            return self.status

    def setCounterExample(self, counterExample: Dict[str, int]) -> None:
        with self.lock:
            self.counterExample = counterExample

    def getCounterExample(self) -> Dict[str, int] | None:
        with self.lock:
            return self.counterExample

    def setHash(self, hash: str) -> None:
        with self.lock:
            self.hash = hash

    def getHash(self) -> str:
        with self.lock:
            # Normalize text (strip + lowercase), then hash
            norm = self.smtFormat.strip().lower()
            return hashlib.sha256(norm.encode('utf-8')).hexdigest()

class Function(BaseModel):
    """
    Function Object
    A benchmark consists of different function calls.
    """
    id: str

    # Function Name, This is also the
    # associated Function name of the Lemma.
    name: str

    # Textual Description of the function.
    description: Optional[str] = None

    # Some initial user given Lemmas.
    # LLM will try to generate lemmas of this format.
    userLemmas: Optional[List[Lemmas]] = None

    # Some input on which the CB Function may run.
    inputs: Optional[List[str]] = None

    # Outputs from the Function for given inputs.
    # User may optionally provide it.
    outputs: Optional[List[str]] = None

    # The input SMT associated with a closed box function.
    smt_file: Optional[str] = None

    # Link to the Library of all external closed box functions.
    # We may pass a single file that has all the pre-compiled
    # binaries of the closed box function in all benchmarks.
    object_file: Optional[str] = None


exampleSet = ExampleSet(examples=[])