SYSTEM_PROMPT_TEMPLATE = """
    You are an expert at <DOMAIN>. Let me test your <LEMMA>, <KNOWLEDGE> capabilities.
    I will give you a task in <DOMAIN> and you have to complete the task. 
    Do not give any explanation or extra text. You will be told the 'exact' output format. 
"""

# Start prompting.
LEMMA_GENERATION_START_TEMPLATE = """
    You objective is to generate a <LEMMA> in the following <FORMAT>. Please note that you need to 
    generate atleast <MIN_LIMIT> lemmas and at most <MAX_LIMIT>. You are forbidden from creating 
    lemmas that you have alredy created earlier in the conversation. 
"""

# GenLemma call with objectives.
LEMMA_OBJECTIVE_TEMPLATE = """
    Generate <LEMMA> for the <FUNCTION>. I have provided some supporting information about <FUNCTION>.
    I also provide you an initial set of input-output pairs in SAMPLES_LIST with SAMPLES_FORMAT describing 
    the format for reading the input-output pairs.
    
    FUNCTION_DESCRIPTION :: <FUNCTION_DESCRIPTION>
    FUNCTION_PARAMETERS :: <FUNCTION_PARAMETERS>
    SAMPLES_FORMAT :: <SAMPLES_FORMAT>
    SAMPLES_LIST :: <SAMPLES_LIST>
"""

# Additional feedbacks if required.
FEEDBACK_TEMPLATE = """
    The quality of the <LEMMAS> is <QUALITY>.
    Please perform the following, <NEXT_ACTION>.
"""

# Sync LLMs calls with lemma refinement.
LEMMA_REFINEMENT_TEMPLATE = """
    You generate the following <LEMMA> for the <FUNCTION>. It is incorrect. 
    Here is a counter-example in <SAMPLES_FORMAT>. 
    
    <COUNTEREXAMPLE_FORMAT>
    <COUNTEREXAMPLE_VALUES>
"""