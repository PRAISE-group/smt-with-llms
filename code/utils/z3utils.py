"""
    This file contains the utitlity function associated with Z3
"""

import z3
import re

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
    nc = z3.Then(z3.Tactic('nnf'), z3.Tactic('tseitin-cnf'))
    goal = z3.Goal()
    goal.add(expr)
    res = nc(goal)
    f = []
    for l in res[0]:
        f.append(removeZ3Suffixes(str(l)))
    return f

def containsQuantifier(expr):
    """
        Checks if a formula or subformula contains quantifier
    """
    if z3.is_quantifier(expr):
        return True
    return any(containsQuantifier(child) for child in expr.children())
