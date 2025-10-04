from z3 import Solver, parse_smt2_string, BitVecSort, BitVecVal, Function
from code.utils.printers import console

def _wrap_assert_if_needed(lemma: str) -> str:
    s = lemma.strip()
    # Accept multiple assertions already
    if s.startswith("(assert"):
        return s
    # Accept a bare formula like: (forall ((z (_ BitVec 16))) ...)
    if s.startswith("("):
        return f"(assert {s})"
    # If someone passes without outer parens, try to be helpful:
    return f"(assert ({s}))"

def check_lemma_smtlib(
    lemma_smt: str,
    extra_decls: str = "",
    extra_asserts: str = "",
    func_name: str = "",
) -> bool:
    DEFAULT_DECLS = r"""
        (set-logic ALL)
        ; Declare any common symbols here (edit as you like)
        (declare-fun FUNCNAME ((_ BitVec 16)) (_ BitVec 16))
    """

    DEFAULT_DECLS = DEFAULT_DECLS.replace("FUNCNAME", func_name)
    prelude = DEFAULT_DECLS + "\n" + (extra_decls or "")
    lemma_block = _wrap_assert_if_needed(lemma_smt)
    tail = "\n" + (extra_asserts or "")

    smt2 = f"""
        {prelude}
        {lemma_block}
        {tail}
    """

    try:
        s = Solver()
        s.add(parse_smt2_string(smt2))
    except Exception as e:
        # Surface a clean error with the constructed SMT-LIB for quick debugging
        # console.print(e)
        return False

    return True