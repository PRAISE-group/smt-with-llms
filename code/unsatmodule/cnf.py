import z3


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

vars_map = {}
funcs_map = {}

def parse_smtlib_expr(s):
    tokens = tokenize(s)
    expr, _ = parse_expr(tokens, 0)
    return expr, vars_map, funcs_map

def tokenize(s):
    s = s.replace('(', ' ( ').replace(')', ' ) ')
    return s.split()

def get_var(token):
    if token.lower() == 'true':
        return z3.BoolVal(True)
    elif token.lower() == 'false':
        return z3.BoolVal(False)
    if token.isdigit() or (token.startswith('-') and token[1:].isdigit()):
        return z3.IntVal(int(token))
    if token not in vars_map:
        if token[0].isupper():
            vars_map[token] = z3.Bool(token)
        else:
            vars_map[token] = z3.Int(token)
    return vars_map[token]

def get_or_create_function(fname, arity, is_bool=False):
    key = (fname, arity)
    if key in funcs_map:
        return funcs_map[key]
    arg_types = [z3.IntSort()] * arity
    ret_type = z3.BoolSort() if is_bool else z3.IntSort()
    func = z3.Function(fname, *(arg_types + [ret_type]))
    funcs_map[key] = func
    return func

def parse_expr(tokens, i):
    if tokens[i] == '(':
        op = tokens[i+1]
        i += 2

        # Handle known operators
        if op in ['+', '-', '*', '/']:
            args = []
            while tokens[i] != ')':
                arg, i = parse_expr(tokens, i)
                args.append(arg)
            i += 1
            if op == '+':
                return (z3.Sum(args), i)
            elif op == '-':
                return ((-args[0]) if len(args) == 1 else args[0] - z3.Sum(args[1:]), i)
            elif op == '*':
                res = args[0]
                for a in args[1:]:
                    res = res * a
                return (res, i)
            else:
                assert len(args) == 2
                return (args[0] / args[1], i)

        elif op in ['<', '<=', '>', '>=', '=', '=>', '<=>']:
            left, i = parse_expr(tokens, i)
            right, i = parse_expr(tokens, i)
            assert tokens[i] == ')'
            i += 1
            out = True
            if op == '<':
                out = left < right
            elif op == '<=':
                out = left <= right
            elif op == '>':
                out = left > right
            elif op == '>=':
                out = left >= right
            elif op in ['=', '<=>']:
                out = left == right
            elif op == '=>':
                out = z3.Implies(left, right)
            
            return (out, i)
            '''
            return ({
                '<': left < right,
                '<=': left <= right,
                '>': left > right,
                '>=': left >= right,
                '=': left == right,
                '=>': z3.Implies(left, right),
                '<=>': left == right
            }[op], i)
            '''
        elif op == 'not':
            arg, i = parse_expr(tokens, i)
            assert tokens[i] == ')'
            i += 1
            return (z3.Not(arg), i)

        elif op in ['and', 'or']:
            args = []
            while tokens[i] != ')':
                arg, i = parse_expr(tokens, i)
                args.append(arg)
            i += 1
            return (z3.And(args) if op == 'and' else z3.Or(args), i)

        else:
            # Function call case
            args = []
            while tokens[i] != ')':
                arg, i = parse_expr(tokens, i)
                args.append(arg)
            i += 1
            func = get_or_create_function(op, len(args))
            return (func(*args), i)

    else:
        # constant or variable
        return (get_var(tokens[i]), i + 1)
    
    
if __name__ == "__main__":
    # Example usage:
    formula = "(= (+ (+ x y) z) (+ x (+ y z)))"
    z3_expr, _, _ = parse_smtlib_expr(formula)
    print(z3_expr)
    print("=========")
    fuzPhi = getCNF(z3.Not(z3_expr))
    for i in fuzPhi:
        print("~~~~~~~")
        print(i)
