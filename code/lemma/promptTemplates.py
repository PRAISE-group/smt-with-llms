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

FEW_SHOTS = """
    A lemma with forall constraint typically looks like the ones given below.
    
    (assert (forall ((var_a Int) (var_b Int)) (= (+ var_a var_b) (+ var_a var_a))))
    (assert (forall ((var_a Int) (var_a Int) (var_a Int)) (= (+ (+ var_a var_b) var_c) (+ var_a (+ var_b var_c)))))
    (assert (forall ((var_a Int)) (= (+ var_a (- var_a)) 0)))
    
    Generate similar lemmas for the given closed box <FUNCTION> with foralls.
"""

# Base template to be added on each propmt.
BASE_TEMPLATE = """
    Write the <LEMMA> in between LEMMA_START and LEMMA_END blocks. Do not give any explanation or extra text. Please use the following rules strictly.
    
    1) If you are using variables in the <LEMMA> for <FUNCTION> formula, prefix 'var_' in them. Eg: 'var_1', 'var_2' so on ... 
    2) You must define/declare unknown variables and functions before using them in a <LEMMA> formula.
    2) Variables in each <LEMMA> must be numbered independently, where the variables indices are numbered sequentially from left to right, starting from 1.
    3) Try to use variables in the <LEMMA>, avoid using constants.
    4) Make sure the <LEMMA> is in correct SMTLIB format. 
    5) A <LEMMA> looks like this '(assert <formula>)', where <formula> is a first order predicate with `forall` in correct SMTLIB format.
    6) It is necessary that you create lemmas with `forall` constructs.
"""

# GenLemma call with objectives.
LEMMA_OBJECTIVE_TEMPLATE = f"""
    Generate <LEMMA> for <FUNCTION>. I have provided some supporting information about <FUNCTION>.
    I have provide you an initial set of input examples in SAMPLES_LIST with SAMPLES_FORMAT describing 
    the format for reading the inputs. Also a <LEMMA> sample format has been provided in LEMMA_SAMPLE,
    use it for creating the lemmas. 
    
    {FEW_SHOTS}
    
    Give me each <LEMMA> in a seperate line so that I can parse it back.
    Strictly adhere to LEMMA_SAMPLE format, starting with 'assert'. Please generate syntatically correct 
    <LEMMA> in <FORMAT> syntax. Please create lemmas with forall constraints.
    
    FUNCTION_DESCRIPTION: <FUNCTION_DESCRIPTION>
    FUNCTION_PARAMETERS: <FUNCTION_PARAMETERS>
    SAMPLES_FORMAT: <SAMPLES_FORMAT>
    SAMPLES_LIST: <SAMPLES_LIST>
    OUTPUT_FORMAT: List of lemmas in <FORMAT>.
    LEMMA_SAMPLE: <LEMMA_SAMPLE>
""" + BASE_TEMPLATE

# Additional feedbacks if required.
FEEDBACK_TEMPLATE = """
    The quality of the <LEMMAS> is <QUALITY>.
    Please perform the following, <NEXT_ACTION>.
"""

# Additional feedbacks if required. New lemmas required.
INCREMENTAL_ACTION_TEMPLATE = """
    I need new <LEMMA>. 
    Please generate <MIN_LIMIT> and at most <MAX_LIMIT> <LEMMA> in <FORMAT>. 
    I am providing you with a set of input (a list which forms the arguments to <FUNCTION>) 
    and output examples for the <FUNCTION>.
    Use those to generate new <LEMMA>.
    
    <PAIRS>
""" + BASE_TEMPLATE

# Sync LLMs calls with lemma refinement.
LEMMA_REFINEMENT_TEMPLATE = """
    The following lemma for <FUNCTION> is wrong. Please generate new lemma.
    LEMMA_TEXT: It is the lemma text in <FORMAT>
    INPUT_TEXT: Values for the variables in the lemmas for which it is wrong. 
    INPUT_TYPE: <INPUT_TYPE>
    
    <LEMMA_TEXT>
    <INPUT_TEXT>
""" + BASE_TEMPLATE