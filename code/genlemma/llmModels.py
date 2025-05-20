from langchain_community.llms import Ollama
from langchain.chains import ConversationChain
from langchain.memory import ConversationBufferMemory

# Connect to remote Ollama instance
llm = Ollama(
    model="llama3",
    base_url="http://172.27.21.160:11434"
)

# Set up memory to hold past messages
memory = ConversationBufferMemory()

# Create a conversation chain
conversation = ConversationChain(
    llm=llm,
    memory=memory,
    verbose=True,  # optional: prints prompt/response
)

def main():
    print("Chat with Ollama (remote). Type 'exit' to quit.\n")
    while True:
        user_input = input("You: ")
        if user_input.lower() in {"exit", "quit"}:
            break
        response = conversation.run(user_input)
        print("Bot:", response)


if __name__ == "__main__":
    main()