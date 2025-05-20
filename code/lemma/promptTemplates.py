SYSTEM_PROMPT_TEMPLATE = """
    You are an expert at <DOMAIN>. Let me test your capabilities.
    I will give you a task in <DOMAIN> and you have to complete the task. 
    Do not give any explanation or extra text. You will be told the 'exact' output format. 
"""

# Start prompting.
LEMMA_GENERATION_START_TEMPLATE = """
    You objective is to generate a <LEMMA> in <FORMAT>. Please note that you need to 
    generate atleast <MIN_LIMIT> and at most <MAX_LIMIT> <LEMMA>. You are forbidden from creating 
    <LEMMA> that you have already created earlier in the conversation. I will now give the objective for 
    <LEMMA> generation. Please wait!
"""

# GenLemma call with objectives.
LEMMA_OBJECTIVE_TEMPLATE = """
    Generate <LEMMA> for <FUNCTION>. I have provided some supporting information about <FUNCTION>.
    I have provide you an initial set of input examples in SAMPLES_LIST with SAMPLES_FORMAT describing 
    the format for reading the inputs. Also a <LEMMA> sample format has been provided in LEMMA_SAMPLE,
    use it for creating the lemmas. Give me each <LEMMA> in a seperate line so that I can parse it back.
    Strictly adhere to LEMMA_SAMPLE format, starting with 'assert'.
    
    FUNCTION_DESCRIPTION: <FUNCTION_DESCRIPTION>
    FUNCTION_PARAMETERS: <FUNCTION_PARAMETERS>
    SAMPLES_FORMAT: <SAMPLES_FORMAT>
    SAMPLES_LIST: <SAMPLES_LIST>
    OUTPUT_FORMAT: List of lemmas in <FORMAT>.
    LEMMA_SAMPLE: <LEMMA_SAMPLE>
    
    Write the <LEMMA> in between LEMMA_START and LEMMA_END blocks. Do not give any explanation or extra text.
"""

# Additional feedbacks if required.
FEEDBACK_TEMPLATE = """
    The quality of the <LEMMAS> is <QUALITY>.
    Please perform the following, <NEXT_ACTION>.
"""

# Additional feedbacks if required.
INCREMENTAL_ACTION_TEMPLATE = """
    Nice response! 
    Please generate <MIN_LIMIT> and at most <MAX_LIMIT> <LEMMA>, like the previous ones for this <FUNCTION>. 
"""

# Sync LLMs calls with lemma refinement.
LEMMA_REFINEMENT_TEMPLATE = """
    You generate the following <LEMMA> for the <FUNCTION>. It is incorrect. 
    Here is a counter-example in <SAMPLES_FORMAT>. 
    
    <COUNTEREXAMPLE_FORMAT>
    <COUNTEREXAMPLE_VALUES>
"""