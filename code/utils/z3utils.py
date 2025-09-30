"""
    This file contains the utitlity function associated with Z3
"""
from code.solver.modelCheck import get_vars

import z3
import re

def z3_to_c(expr):
    if expr.decl().kind() == z3.Z3_OP_IMPLIES:
            a, b = expr.children()
            return f"(!({z3_to_c(a)}) || ({z3_to_c(b)}))"
    elif z3.is_and(expr):
        return ' && '.join(f'({z3_to_c(c)})' for c in expr.children())
    elif z3.is_or(expr):
        return ' || '.join(f'({z3_to_c(c)})' for c in expr.children())
    elif z3.is_not(expr):
        return f'!({z3_to_c(expr.arg(0))})'
    elif z3.is_eq(expr):
        return f'({z3_to_c(expr.arg(0))} == {z3_to_c(expr.arg(1))})'
    elif z3.is_le(expr):
        return f'({z3_to_c(expr.arg(0))} <= {z3_to_c(expr.arg(1))})'
    elif z3.is_lt(expr):
        return f'({z3_to_c(expr.arg(0))} < {z3_to_c(expr.arg(1))})'
    elif z3.is_ge(expr):
        return f'({z3_to_c(expr.arg(0))} >= {z3_to_c(expr.arg(1))})'
    elif z3.is_gt(expr):
        return f'({z3_to_c(expr.arg(0))} > {z3_to_c(expr.arg(1))})'
    elif expr.decl().name() == 'bvugt':
        return f'({z3_to_c(expr.arg(0))}) > ({z3_to_c(expr.arg(1))})'
    elif expr.decl().name() == 'bvule':
        return f'({z3_to_c(expr.arg(0))}) <= ({z3_to_c(expr.arg(1))})'
    elif expr.decl().name() == 'bvuge':
        return f'({z3_to_c(expr.arg(0))}) >= ({z3_to_c(expr.arg(1))})'
    elif expr.decl().name() == 'bvult':
        return f'({z3_to_c(expr.arg(0))}) < ({z3_to_c(expr.arg(1))})'
    elif expr.decl().name() == 'bvmul':
        return f'({z3_to_c(expr.arg(0))}) * ({z3_to_c(expr.arg(1))})'
    elif expr.decl().name() == 'bvurem':
        return f'({z3_to_c(expr.arg(0))}) % ({z3_to_c(expr.arg(1))})'
    elif expr.decl().kind() == z3.Z3_OP_ITE:
        cond, then_expr, else_expr = expr.children()
        return f'(({z3_to_c(cond)}) ? ({z3_to_c(then_expr)}) : ({z3_to_c(else_expr)}))'
    elif expr.decl().kind() == z3.Z3_OP_EXTRACT:
        i = expr.decl().params()[0]
        j = expr.decl().params()[1]
        # If they are z3 numerals, extract the int value
        if hasattr(i, "as_long"):
            i = i.as_long()
        if hasattr(j, "as_long"):
            j = j.as_long()
        x = z3_to_c(expr.arg(0))
        width = i - j + 1
        return f"(({x} >> {j}) & ((1u << {width}) - 1u))"
    elif expr.decl().kind() == z3.Z3_OP_CONCAT:
        hi, lo = expr.arg(0), expr.arg(1)
        lo_width = lo.size()
        print("Extract",expr)
        return f"(({z3_to_c(hi)} << {lo_width}) | {z3_to_c(lo)})"
    elif z3.is_false(expr):
        return "0"
    elif z3.is_true(expr):
        return "1"
    elif z3.is_const(expr):
        return str(expr).replace("!","_")
    elif z3.is_int_value(expr) or z3.is_rational_value(expr):
        return str(expr.as_long())
    else:
        return "("+ str(expr).replace("!","_") +")"  # fallback




def getCNF(phi):
    '''
        This function takes a formula and returns its CNF conversion
        In our case we assume that we are getting negation of the lemma as phi
    '''
    g = z3.Goal()
    g.add(phi)
    t = z3.Tactic('tseitin-cnf')
    r = t(g)
    return r[0]


def removeZ3Suffixes(expr_str):
    assert(type(expr_str) == str)
    # This regex captures names like x!1, y!23, foo!999 and removes the !<digits> part
    return re.sub(r'([a-zA-Z_][a-zA-Z0-9_]*)!\d+', r'\1', expr_str)


def removeQuantifier(expr):
    """
        Removes ForAll from the formula and rename the auxillary variable names
    """
    # goal = z3.Goal()
    # goal.add(expr)
    # res = z3.Tactic('nnf')(goal)
    nc = z3.Then(z3.Tactic('nnf'), z3.Tactic('tseitin-cnf'))
    goal = z3.Goal()
    goal.add(expr)
    res = nc(goal)
    print(res)
    f = []
    lemma_vars = []
    for l in res[0]:
        lemma_vars.extend(get_vars(l))
        f.append(z3_to_c(l))
        # f.append(removeZ3Suffixes(str(l)))
    lemma_vars = set(lemma_vars)
    return f, lemma_vars

def containsQuantifier(expr):
    """
        Checks if a formula or subformula contains quantifier
    """
    if z3.is_quantifier(expr):
        return True
    return any(containsQuantifier(child) for child in expr.children())
