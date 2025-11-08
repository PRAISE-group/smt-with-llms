from z3 import Solver, parse_smt2_string, BitVecSort, BitVecVal, Function
from code.utils.commandline import commandLineArgs
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
    funcDecl: str = "",
) -> bool:
    DEFAULT_DECLS = r"""
        (set-logic ALL)
        ; Declare any common symbols here (edit as you like)
        FUNC_DECL
    """

    DEFAULT_DECLS = DEFAULT_DECLS.replace("FUNC_DECL", funcDecl)
    prelude = DEFAULT_DECLS + "\n" + (extra_decls or "")
    lemma_block = _wrap_assert_if_needed(lemma_smt)
    tail = "\n" + (extra_asserts or "(check-sat)")

    smt2 = f"""
        {prelude}
        {lemma_block}
        {tail}
    """

    try:
        lemma = parse_smt2_string(smt2)
        if commandLineArgs.debug:
            console.print(f"[bold blue]Parsed Lemmas :: {lemma}")
    except Exception as exp:
        # Surface a clean error with the constructed SMT-LIB for quick debugging
        if commandLineArgs.debug:
            console.print(exp)
        return False

    return True
