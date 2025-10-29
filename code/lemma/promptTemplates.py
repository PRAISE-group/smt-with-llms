SYSTEM_PROMPT_TEMPLATE = """
    You are an expert logical assistant. You are proficient in generating formulas in SMT-LIB format that is understandable by Z3 SMT Solver.
    I will give you a task in <DOMAIN> and you have to complete the task.
"""

# Start prompting.
LEMMA_GENERATION_START_TEMPLATE = """
    Generate lemmas in the format of <FORMAT> for the function whose description will be provided below. 
    
    1) Please note that you need to generate atleast <MIN_LIMIT> and at most <MAX_LIMIT> <LEMMA>.
    2) You are forbidden from creating <LEMMA> that you have already created earlier in the conversation.
"""

FEW_SHOTS = """
    Lemmas in bit-vector theory typically looks like the ones given below.
    
    ```
    (assert (= (foo_cb (_ bv0 32)) (_ bv0 32)))
    (assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32))  (= (foo_cb z) (_ bv0 32)))))
    (assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32))  (= (foo_cb z) (_ bv0 32)))))
    (assert (forall ((z (_ BitVec 32))) (=> (not (bvugt z (_ bv0 32))) (= (foo_cb z) z))))
    (assert (forall ((z (_ BitVec 32))) (= (foo_cb (foo_cb z)) (foo_cb z))))
    (assert (forall ((z (_ BitVec 32))) (or (= (foo_cb z) (_ bv0 32))  (= (foo_cb z) z))))
    (assert (forall ((z (_ BitVec 32))) (=> (not (bvugt z (_ bv0 32))) (= (bvugt (foo_cb z) (_ bv0 32)) false))))
    ```
    
    Generate similar lemmas for the given closed box <FUNCTION> with forall constraints in bit-vector theory.
"""

# Base template to be added on each propmt.
BASE_TEMPLATE = """
    Write <LEMMA> in between LEMMA_START and LEMMA_END blocks. Please use the following rules strictly.

    1) The <LEMMA> for <FUNCTION> formula should be self contained. Only generate constraints with `forall` quantifier.
    
    2) The variables that you can use are only quantifier variables that are in <LEMMA>.
    
    3) Lemma should be in SMT-LIB format.
        For example, `(assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32)) (= (foo_cb z) (_ bv0 32)))))` is a well formatted lemma.
        However, `(assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32)) (= (foo_cb z) (_ bv0 32)))` is not as multiple parenthesis are missing at end. 
        This is an incorrect lemma, `(assert (forall ((a (_ BitVec 32))) (= (max_cb a b) b)))` as it gives  "unknown constant b" error.
        
    4) Variables in the lemma should be universally quantified using forall quantifier.
        For example, `(assert (forall ((a (_ BitVec 32))) (= (foo_cb a a) a)))` is a valid lemma.
        However, `(assert (exists ((a (_ BitVec 32))) (= (foo_cb a a) a)))` is not a valid lemma.
        
    5) User is interested in only Bitvector theory. Use Bitvector size accordingly based upon the FUNCTION_PROTOTYPE of the function provided by user.
    
    6) A <LEMMA> should look like '(assert <FORMULA>)', where <FORMULA> is a first order predicate with `forall` quantifier in correct SMTLIB format.
    
    7) Match the correct parenthesis, do not wrap the lemmas in extra parenthesis.
"""

# GenLemma call with objectives.
LEMMA_OBJECTIVE_TEMPLATE = f"""
    {FEW_SHOTS}
    
    Generate lemmas in the format of <FORMAT> for the function <FUNCTION> whose description is 
    provided below in FUNCTION_DESCRIPTION with prototype FUNCTION_PROTOTYPE as signature.

    ```
    FUNCTION_DESCRIPTION: <FUNCTION_DESCRIPTION>
    FUNCTION_PROTOTYPE: <FUNCTION_DECLARATION>
    OUTPUT_FORMAT: List of lemmas in <FORMAT>.
    LEMMA_SAMPLE: <LEMMA_SAMPLE>
    ```
    
    Give me each <LEMMA> in a seperate line so that I can parse it back. 
    Please generate syntatically correct <LEMMA> in <FORMAT> syntax. 
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
