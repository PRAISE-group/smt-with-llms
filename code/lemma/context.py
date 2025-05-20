from pydantic import BaseModel, field_validator, Field, ConfigDict
from typing import List, Optional, Dict
from code.models import Lemmas, LemmaStatus
from threading import Lock

class LemmaDict(BaseModel):
    values: Optional[Dict[str, Lemmas]] = Field(default_factory=dict)
    lock: Lock = Field(default_factory=Lock, exclude=True)

    # ✅ Allow non-serializable types like Lock
    model_config = ConfigDict(arbitrary_types_allowed=True)

    def __getitem__(self, key: str) -> Lemmas:
        with self.lock:
            return self.values[key]

    def __setitem__(self, key: str, value: Lemmas):
        with self.lock:
            self.values[key] = value

    def __contains__(self, key: str) -> bool:
        with self.lock:
            return key in self.values

    def __len__(self) -> int:
        with self.lock:
            return len(self.values)

    def keys(self):
        with self.lock:
            return list(self.values.keys())

    def items(self):
        with self.lock:
            return list(self.values.items())

    def values_list(self):
        with self.lock:
            return list(self.values.values())

    def get(self, key: str, default=None):
        with self.lock:
            return self.values.get(key, default)

    @field_validator("values")
    @classmethod
    def check_all_lemmas(cls, v):
        if not all(isinstance(item, Lemmas) for item in v):
            raise ValueError("All items must be of type Lemmas")
        return v


