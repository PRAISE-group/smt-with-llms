# Other Prompts:
CHECK_1 = """
    Can you briefly explain what is SMTLIB Format in the context of SMT Solving (in 1~2 lines)?
"""

CHECK_2 = """
    Can you give me 2 examples of formulas in SMTLIB Format using bit-vector theory?
"""

# PROMPT-0 prompt that goes to the LLM. We define the capability of the LLMs for the task here.
SYSTEM_PROMPT_TEMPLATE = """
    You are an expert logical assistant. You are proficient in generating formulas in SMT-LIB format 
    that is understandable by Z3 SMT Solver. The user will give you a task in <DOMAIN> and you have to complete the task.
    **Are you ready for some action?**
"""

# PROMPT-1 prompt that goes to the LLM. We define the objective for the task here.
OBJECTIVE_TEMPLATE = """
    Objective: You will be given details about one or more closed-box functions. Generate <ARTIFACT> 
    in the format of <FORMAT> for the closed-box functions whose descriptions will be provided later. 
    
    1) Please note that you need to generate atleast <MIN_LIMIT> and at most <MAX_LIMIT> <ARTIFACT>.
    2) You are free to generate lemmas that use one or more closed-box functions.
    
    **Is the objective of the task clear to you?**
"""

# PROMPT-2 prompt that goes to the LLM. We define the guidelines for the task here.
LEMMA_GENERATION_GUIDELINES = """
    **Please use the following rules strictly.**

    1) Write <ARTIFACT> in between LEMMA_START and LEMMA_END blocks. Give me each lemma in a seperate line so that I can parse it back.
    
    2) Only generate constraints with `forall` quantifier.
    
    3) The variables that you can use are only quantifier variables that are in <ARTIFACT>.
    
    4) <ARTIFACT> should be in SMT-LIB <FORMAT> format.
        For example, `(assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32)) (= (foo_cb z) (_ bv0 32)))))` is a well formatted lemma.
        However, `(assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32)) (= (foo_cb z) (_ bv0 32)))` is not as multiple parenthesis are missing at end. 
        This is an incorrect lemma, `(assert (forall ((a (_ BitVec 32))) (= (max_cb a b) b)))` as it gives  "unknown constant b" error.
        
    5) Variables in the lemma should be universally quantified using forall quantifier.
        For example, `(assert (forall ((a (_ BitVec 32))) (= (foo_cb a a) a)))` is a valid lemma.
        However, `(assert (exists ((a (_ BitVec 32))) (= (foo_cb a a) a)))` is not a valid lemma.
        
    6) User is interested in only <FORMAT> theory. Use <FORMAT> size accordingly based upon the FUNCTION_PROTOTYPE of the function provided by user.
    
    7) <ARTIFACT> should look like '(assert FORMULA)', where FORMULA is a first order predicate with `forall` quantifier in correct SMT-LIB <FORMAT> format.
    
    8) Match the correct parenthesis, do not wrap the <ARTIFACT> in extra parenthesis.
    
    9) Generate <ARTIFACT> which uses correct <FORMAT> operations from the <FORMAT> theory instructed earlier.
    
    **Are these 9 guideline rules clear to you?**
"""

FEW_SHOTS = """
    Lemmas in <FORMAT> theory typically looks like the ones given below.
    
    Here is an example of a simple lemma using the `forall` quantification.
    
    ```
    (assert (forall ((x (_ BitVec 32))) (= (bvadd (bvadd x (_ bv1 32)) (_ bvneg x)) (_ bv1 32))))
    ```
    Here are some lemmas for a closed-box function **foo_cb()**.
    
    ```
    (assert (= (foo_cb (_ bv0 32)) (_ bv0 32)))
    (assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32))  (= (foo_cb z) (_ bv0 32)))))
    (assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32))  (= (foo_cb z) (_ bv0 32)))))
    (assert (forall ((z (_ BitVec 32))) (=> (not (bvugt z (_ bv0 32))) (= (foo_cb z) z))))
    (assert (forall ((z (_ BitVec 32))) (= (foo_cb (foo_cb z)) (foo_cb z))))
    (assert (forall ((z (_ BitVec 32))) (or (= (foo_cb z) (_ bv0 32))  (= (foo_cb z) z))))
    (assert (forall ((z (_ BitVec 32))) (=> (not (bvugt z (_ bv0 32))) (= (bvugt (foo_cb z) (_ bv0 32)) false))))
    ```
    
    Generate similar lemmas for the given closed box <FUNCTION> with `forall` constraints in <FORMAT> theory between LEMMA_START and LEMMA_END blocks.
"""

# PROMPT-3 New we provide the details about a function and ask the LLM to generate a response.
GEN_FUNCTION_LEMMAS = f"""
    {FEW_SHOTS}
    
    A natural language description of the function <FUNCTION>
    is provided below in `DESC` along with it's prototype in `PROTOTYPE` as signature.

    ```
    DESC: <FUNCTION_DESCRIPTION>
    PROTOTYPE: <FUNCTION_PROTOTYPE>
    OUTPUT_FORMAT: List of <ARTIFACT> in <FORMAT>, between LEMMA_START and LEMMA_END blocks.
    ```
    You are free to generate lemmas over one or more of the closed-box functions whose descriptions have been provided till now.
"""

# Refinement Lemmas Blocking Clause.
LEMMA_REFINEMENT_TEMPLATE = """
    I appreciate the response to the tasks so far. However, there are some issues.
   
    - NEGATIVE_EXAMPLES: 
    <ARTIFACT> you generated which are not correct.
    
    ```
    NEGATIVE_EXAMPLES:
    <REPLACE_LEMMAS_NEG_LIST>
    ```

    - POSITIVE_EXAMPLES:
    <ARTIFACT> you generated which are correct and spot-on.
    
    ```
    POSITIVE_EXAMPLES:
    <REPLACE_LEMMAS_POS_LIST>
    ```
    
    1) Do not generate <ARTIFACT> which are like the ones in NEGATIVE_EXAMPLES.
    2) Be careful about the syntax correctness and adhere to <FORMAT>.
    3) Do not repeat the <ARTIFACT> that are already present in POSITIVE_EXAMPLES.
"""
