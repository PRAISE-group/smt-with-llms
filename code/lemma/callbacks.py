from langchain.callbacks.base import BaseCallbackHandler
from langchain.schema import LLMResult
from pydantic import BaseModel
from code.utils.printers import console
from typing import Any, Dict, List, Union
from time import perf_counter
import uuid

from code.utils.commandline import commandLineArgs


class TokenTrackingHandler(BaseCallbackHandler):
    def __init__(self) -> None:
        self.total_tokens = 0
        self.prompt_tokens = 0
        self.completion_tokens = 0
        self.start_time = 0.0
        super().__init__()

    def on_llm_start(
        self,
        serialized: Dict[str, Any],
        prompts: List[str],
        run_id: uuid.UUID,
        **kwargs: Any,
    ) -> None:
        self.start_time = perf_counter()
        console.log("[bold white]Starting LLM run")

    def on_llm_end(self, response: LLMResult, run_id: uuid.UUID, **kwargs: Any) -> None:
        duration = perf_counter() - self.start_time
        console.log(f"[bold white]Ending LLM run, took {duration:1f}s")

        if commandLineArgs.debug:
            console.print(response.generations[0][0].message.usage_metadata)

    def on_llm_error(
        self,
        error: Union[Exception, KeyboardInterrupt],
        run_id: uuid.UUID,
        **kwargs: Any,
    ) -> None:
        console.log(f"[bold red]LLM error: {error}")

    def on_text(self, text: str, run_id: uuid.UUID, **kwargs: Any) -> None:
        console.log(f"[bold red]LLM Text: {text}")
