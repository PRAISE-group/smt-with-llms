import boto3
from os import environ
from sys import exit
from typing import Dict
from dotenv import load_dotenv
from pathlib import Path
from botocore.config import Config

from pydantic import BaseModel
from typing import Dict, List
from langchain_aws import ChatBedrockConverse
from langchain_ollama import OllamaLLM
from langchain_openai import ChatOpenAI
from langchain_core.runnables import RunnableWithMessageHistory, RunnableConfig
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.chat_history import InMemoryChatMessageHistory

from code.utils.printers import console
from code.utils.commandline import commandLineArgs
from code.lemma.callbacks import TokenTrackingHandler
from code.lemma.promptTemplates import SYSTEM_PROMPT_TEMPLATE
from code.models import Lemmas, LemmaStatus

# TODO: Keep ChatGPT API key in .env file, do not commit.
env_path = Path(__file__).resolve().parents[2] / ".env"
load_dotenv(dotenv_path=env_path)

SYSTEM_PROMPT_TEMPLATE = SYSTEM_PROMPT_TEMPLATE.replace("<DOMAIN>", "lemma generation in SMT-LIB Bitvector Format")

BASE_URL = environ.get("BASE_URL", None)

if commandLineArgs.use156:
    BASE_URL = environ.get("BASE_URL_156", None)

if commandLineArgs.use160:
    BASE_URL = environ.get("BASE_URL_160", None)

if commandLineArgs.usegpt:
    # Connect to ChatGPT instance
    API_KEY = environ.get("CHAT_OPENAI_API_KEY", None)
    if API_KEY is None:
        console.log("[bold red] Please provide the API Key in CHAT_OPENAI_API_KEY.")
        exit(1)
    llm = ChatOpenAI(
        model=commandLineArgs.model,
        max_retries=2,
        api_key=API_KEY,
    )
elif commandLineArgs.usebedrock:
    REGION = environ.get("AWS_REGION", None)
    TOKEN = environ.get("AWS_BEARER_TOKEN_BEDROCK", None)
    if TOKEN is None:
        console.log(
            "[bold red] Please provide the AWS Bedrock token in AWS_BEARER_TOKEN_BEDROCK."
        )
        exit(1)

    if REGION is None:
        console.log("[bold red] Please provide the AWS region name in AWS_REGION.")
        exit(1)

    cfg = Config(
        region_name=REGION,
        retries={"max_attempts": 10, "mode": "adaptive"},
        connect_timeout=100,
        read_timeout=240,  # allow longer server generation/streaming
    )

    client = boto3.client(service_name="bedrock-runtime", config=cfg)

    llm = ChatBedrockConverse(
        model=commandLineArgs.model,
        region_name=environ.get("AWS_REGION"),
        client=client,
        max_tokens=None,
    )
else:
    # Connect to remote Ollama instance
    if BASE_URL is None:
        console.log(
            "[bold red]Please provide the BASE_URL or BASE_URL_160/BASE_URL_156 in .env file."
        )
        console.log(
            "[bold green]Need the IP address and PORT of the local ollama serve running instance."
        )
        exit(1)
    llm = OllamaLLM(model=commandLineArgs.model, base_url=BASE_URL)

# Define the chat prompt
prompt = ChatPromptTemplate.from_messages(
    [
        ("system", SYSTEM_PROMPT_TEMPLATE),
        MessagesPlaceholder(variable_name="history", optional=False),
        (
            "human",
            "Can you briefly explain what is SMTLIB Format in the context of SMT Solving (in 1~2 lines)?",
        ),
        (
            "human",
            "Can you give 2 examples of formulas in SMTLIB Format using bit-vector theory?",
        ),
        ("human", "{human_message}"),
    ]
)

chain = prompt | llm
chat_histories: Dict[str, InMemoryChatMessageHistory] = {}


def get_session_history(session_id: str) -> InMemoryChatMessageHistory:
    if session_id not in chat_histories:
        chat_histories[session_id] = InMemoryChatMessageHistory()
    return chat_histories[session_id]


class LLMOutputLemmas(BaseModel):
    explain: str
    lemmas: List[Lemmas]


# Create a conversation chain
conversation = RunnableWithMessageHistory(
    chain,
    get_session_history,
    input_messages_key="human_message",
    history_messages_key="history",
    verbose=False,
)


def callLLMforResponse(prompt: str, funcName: str):
    response = conversation.invoke(
        input={"human_message": prompt},
        config={
            "configurable": {"session_id": f"session_{funcName}"},
            "callbacks": [TokenTrackingHandler()],
        },
    )

    return response
