from code.models import exampleSet

if __name__ == "__main__":
    exampleSet.createExampleFromDict([
        {
            "foo_cb": [0, -1, -1]
        },
        {
            "foo_cb": [-1, 0, -1]
        },
        {
            "foo1_cb": [-1, 0, -1]
        }
    ])

    exp = []
    for examples in exampleSet:
        if examples.funcName == "foo2_cb":
            exp.append(f"Input: {examples.input}, Output: {examples.output}")

    print("\n".join(exp))