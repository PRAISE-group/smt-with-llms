import boto3
from os import environ
from sys import exit
from typing import Dict
from dotenv import load_dotenv
from pathlib import Path

from langchain_aws import ChatBedrockConverse
from langchain_ollama import OllamaLLM
from langchain_openai import ChatOpenAI
from langchain_core.runnables import RunnableWithMessageHistory
from langchain_core.prompts import ChatPromptTemplate, MessagesPlaceholder
from langchain_core.chat_history import InMemoryChatMessageHistory

from rich.console import Console
from code.utils.commandline import commandLineArgs
from code.lemma.callbacks import TokenTrackingHandler
from code.lemma.promptTemplates import SYSTEM_PROMPT_TEMPLATE

console = Console()
# TODO: Keep ChatGPT API key in .env file, do not commit.
env_path = Path(__file__).resolve().parents[2] / ".env"
load_dotenv(dotenv_path=env_path)

SYSTEM_PROMPT_TEMPLATE = SYSTEM_PROMPT_TEMPLATE.replace("<DOMAIN>", "lemma generation")

if commandLineArgs.usegpt:
    # Connect to ChatGPT instance
    llm = ChatOpenAI(
        model=commandLineArgs.model,
        max_retries=2,
        api_key=environ.get("CHAT_OPENAI_API_KEY"),
    )
elif commandLineArgs.usebedrock:
    REGION = environ.get("AWS_REGION", None)
    TOKEN = environ.get("AWS_BEARER_TOKEN_BEDROCK", None)
    if TOKEN is None:
        console.log("[bold red] Please provide the token in AWS_BEARER_TOKEN_BEDROCK.")
        exit(1)
        
    if REGION is None:
        console.log("[bold red] Please provide the aws region name in AWS_REGION.")
        exit(1)

    client = boto3.client(
        service_name="bedrock-runtime",
        region_name=REGION
    )
    
    llm = ChatBedrockConverse(
        model=commandLineArgs.model,
        region_name=environ.get("AWS_REGION"),
        client=client,
        temperature=0.35,
        max_tokens=None
    )
else:
    # Connect to remote Ollama instance
    llm = OllamaLLM(
        model=commandLineArgs.model,
        base_url=environ.get("BASE_URL")
    )

# Define the chat prompt
prompt = ChatPromptTemplate.from_messages([
    ("system", SYSTEM_PROMPT_TEMPLATE),
    MessagesPlaceholder(variable_name="history", optional=True),
    ("human", "{input}")
])

chain = prompt | llm
chat_histories: Dict[str, InMemoryChatMessageHistory] = {}

def get_session_history(session_id: str) -> InMemoryChatMessageHistory:
    if session_id not in chat_histories:
        chat_histories[session_id] = InMemoryChatMessageHistory()
    return chat_histories[session_id]

# Create a conversation chain
conversation = RunnableWithMessageHistory(
    chain,
    get_session_history,
    input_messages_key="input",
    history_messages_key="history",
    verbose=True,
)

def callLLMforResponse(prompt: str, funcName: str):
    response = conversation.invoke(
        {"input": prompt},
        config={
            "configurable": {"session_id": f"session_{funcName}"},
            "callbacks": [TokenTrackingHandler()]
        },
    )

    return response
