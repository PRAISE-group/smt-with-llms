from langchain.callbacks.base import BaseCallbackHandler
from langchain.schema import LLMResult
from rich.console import Console
from typing import Any, Dict, List, Union
import uuid

console = Console()

class TokenTrackingHandler(BaseCallbackHandler):
    def __init__(self) -> None:
        self.total_tokens = 0
        self.prompt_tokens = 0
        self.completion_tokens = 0
        super().__init__()

    def on_llm_start(
        self, serialized: Dict[str, Any], prompts: List[str], run_id: uuid.UUID, **kwargs: Any
    ) -> None:
        console.log("[bold white]Starting LLM run")

    def on_llm_end(self, response: LLMResult, run_id: uuid.UUID, **kwargs: Any) -> None:
        console.log("[bold white]Ending LLM run")
        if response.llm_output is not None:
            self.prompt_tokens += response.llm_output['token_usage']['prompt_tokens']
            self.completion_tokens += response.llm_output['token_usage']['completion_tokens']
            self.total_tokens += response.llm_output['token_usage']['total_tokens']
            print("Ending LLM run")
            print(f"Total Tokens: {self.total_tokens}")
            print(f"Prompt Tokens: {self.prompt_tokens}")
            print(f"Completion Tokens: {self.completion_tokens}")

    def on_llm_error(
        self, error: Union[Exception, KeyboardInterrupt], run_id: uuid.UUID, **kwargs: Any
    ) -> None:
        console.log(f"[bold red]LLM error: {error}")

    def on_text(self, text: str, run_id: uuid.UUID, **kwargs: Any) -> None:
        console.log(f"[bold red]LLM Text: {text}")