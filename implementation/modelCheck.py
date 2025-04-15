

def modelCheck(solver, args, cbFunctions):
    for name in cbFunctions:
        m = solver.model()
        interp = m[cbFunctions[name]]
        print("Function interpretation:")
        for entry in interp.as_list()[:-1]:  # all defined mappings
            print(entry)
            input_tuple = entry[:-1]         # input args
            output = entry[-1]               # output
            print(f"  {input_tuple} -> {output}")
    return True
