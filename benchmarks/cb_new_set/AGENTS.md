# Benchmark Creation Task

Task is to generate benchmarks using the closed box function that is specified by the user. You can create more than one benchmarks using the same closed
box functions but used in a different semantic context and manner with different asserts. User may ask to search the web or give references to closed box functions.
Understand the use and generate `interesting` benchmarks out of it. Be creative, however keep the benchmark grounded without compromising on the interesting features
demonstrated by the closed box functions.

## Closed box Function Descriptions

- Function that uses integer or character inputs.
- Function outputs either a integer value or a character value.
- Inputs to the functions are unsigned integers.
- Character inputs can be treated as unsigned integers taking values between 0 to 255.
- Function will be used in the main() function of a C file.
- User can optionally provide the complete function. It can be used as is.
- User may only provide the signature of the function. Make an internet search and find more about the closed box function.
- Get a clear understanding of `what` the function does, `where` is it typically used, `how` it is typically used.

## How to create benchmarks

- Create a new folder in the `src/` folder with name as `bench_0N` where N runs from 0 to last benchmark enumeration number.
- Example: The third benchmark will be in folder `src/bench_03` and the next benchmark to generate will be in `src/bench_04` folder.
- Create a README.md file in the `src/bench_0N` folder describing how to use the functions and source you used to understand the function.
- Create a C file in `src/bench_0N` folder which demonstrates how to use the function in C code.
- Name the input variables with `inp_` prefix.
- Name the return or output variables with `out_` prefix.
- Name the C code file with a shortend yet understandable filename. User will refer to the benchmark with this name.
- If complete function is not provided by the user, search the web to find the correct implementation of the functions and add it to the C code.
- Once that the C code for the benchmark is generated, make the klee-compatible copy of the benchmark run klee on it in the same folder.
- The generated original C code file must have valid asserts that hold for all inputs.
- Do not generate trivial asserts like `assert(1 - 1 == 0)`, which is easy to catch and validate.
- Use integer inputs as `uint16` types.
- No cross benchmark files. Each benchamrk to be isolated into it's own individual folder.

## Expected outputs

- Folder in `src/`. Each benchmark has it's own isolated folder.
- Original C code demonstrating usage, simple C code demonstrating usage.
- Klee compatible C code so that KLEE can run, test harness generation.
- README.md file for the benchmark with design and commands to run the pipeline for testing with asserts and KLEE.
- Bash script to run the original benchmarks and then run KLEE on it to check if the asserts fail.
- Natural language description file `nl_desc.txt` that explains the following:
  - what the closed box function takes as inputs.
  - what it returns as an output.
  - what operations/task does the closed box function perform.
  - Example: Closed box function `terse_add_one()` takes two integer inputs `arg_x` and `arg_y` and returns their sum incremented by 21 -> `arg_x + arg_y + 21`.

## Template of the C file for benchmark creation (Original Benchmark C code)

Use the following template for creating the source benchmark that demonstrates the use of the closed box function.
In this example, `__builtin_popcount()` is the underlying closed box function.

- You must wrap it in `_cb` suffix and create a helper function like `builtin_popcount_cb()`.
- Use integer inputs as `uint16` types.

```cpp
#include <assert.h>
#include <stdio.h>

int builtin_popcount_cb(unsigned int x) {
    int out_1 = __builtin_popcount(x);
    return out_1;
}

int main() {
    int num1 = 5;       // Binary: 00000101 (Two 1s)
    long long num2 = 15; // Binary: 00001111 (Four 1s)
    int count1 = builtin_popcount_cb(num1);
    int count2 = builtin_popcount_cb(num2);

    // Usage
    printf("Set bits in %d: %d\n", num1, count1);   // Output: 2
    printf("Set bits in %lld: %d\n", num2, count2); // Output: 4

    // Valid asserts
    assert(count1 == 2);
    assert(count2 == 4);
    return 0;
}
```

- Show the usage and output from the functions against user defined inputs. Use integer inputs as `uint16` types.
- Write a valid assert that does not fail against any valid input passed to the closed box function.
- Example shows asserts against fixed inputs but try to generate asserts where inputs is not fixed.

## KLEE compatible transformation (Test Harness generation )

Once that the C code for the benchmark is generated. Make a KLEE compatible C code file out of it.
Objective is to run KLEE and check if the asserts and assume are all valid.
A useful KLEE test is to verify general properties of closed box function.
Here is the KLEE conversion from the above with useful asserts.

Get a better understanding of KLEE here: [KLEE Details](README.KLEE.md)

```cpp
#include <assert.h>
#include <klee/klee.h>

int builtin_popcount_cb(unsigned int x) {
    return __builtin_popcount(x);
}

int main(void) {
    unsigned int x;

    klee_make_symbolic(&x, sizeof(x), "x");

    int count = builtin_popcount_cb(x);

    /* A 32-bit unsigned integer has between 0 and 32 set bits. */
    assert(count >= 0);
    assert(count <= 32);

    /* Zero has no set bits. */
    if (x == 0U) {
        assert(count == 0);
    }

    /* Every nonzero integer has at least one set bit. */
    if (x != 0U) {
        assert(count >= 1);
    }

    /* A power of two has exactly one set bit. */
    if (x != 0U && (x & (x - 1U)) == 0U) {
        assert(count == 1);
    }

    return 0;
}
```

### Better harness for generating meaningful SMT

Here is another way to create the KLEE harness code which tests the original closed box function. Use integer inputs as `uint16` types.

```cpp
#include <klee/klee.h>

int builtin_popcount_cb(unsigned int x) {
    return __builtin_popcount(x);
}

int main(void) {
    unsigned int x;

    klee_make_symbolic(&x, sizeof(x), "x");

    klee_assume(x >= 0U);
    klee_assume(x <= 255U);

    int result = builtin_popcount_cb(x);

    klee_assert(result >= 0);
    klee_assert(result <= 8);

    return 0;
}
```

Try not to re-implement the built-in functions. Call them directly.
If nothing works, only then do you re-implement the functions. Here is an example.

One practical issue is that support for `__builtin_popcount()` or any other closed box function can depend on how Clang lowers
the operation and which LLVM/KLEE versions are paired. If KLEE reports an unsupported intrinsic or unresolved function,
replace it with an explicit implementation:

```cpp
int builtin_popcount_cb(unsigned int x) {
    int count = 0;

    while (x != 0U) {
        count += x & 1U;
        x >>= 1U;
    }

    return count;
}
```

This loop-based version is directly visible to KLEE and is generally more suitable when the purpose is to
analyse the internal behaviour of the popcount computation.

## Handling arrays as inputs and symbolic array flattening

Flatten array inputs. Example `unsigned char arr[26];` is nothing but 26 seperate unsigned
integers inputs with range 0 to 255. Use integer inputs as `uint16` types.
Here is another example. This is the original struct:

```cpp
struct factors
{
    uintmax_t plarge[2];
    uintmax_t arr1[26];
    unsigned char arr2[26];
    unsigned char nfactors;
};
```

You can treat it as this as 4 different variables.

1. plarge as two uint16 variables.
2. arr1 as 26 uint16 variables.
3. arr2 as 26 uint16 variables.
4. nfactors as a single uint16.

## Rules

- Donot use functions that use floating point operations.
- Donot use functions that take floating point inputs, pointer inputs, signed integer inputs, long integer inputs.
- Donot use functions that return floating point outputs, pointer outputs, signed integer outputs, long integer outputs.
- Prefer simple functions that are clean to integrate and easy to describe in natural language.
- Do not consider trivial functions that just add, multiply or substract, left-shift, right-shift the inputs and return outputs.
- Use closed box functions that both KLEE and Clang supports.

## Token Considerations

- No history rewrite - the context must be built up incrementally.
- Avoid frequent changes to context that cause cache misses.
- No unbounded items - everything injected in the model context must have a bounded size and a hard cap.
- No items larger than 10K tokens.
- Highlight new individual items that can cross >10k tokens as P0. These need an additional manual review.

## Reference to be used for creating the benchmarks

- [https://gcc.gnu.org/onlinedocs/gcc/Numeric-Builtins.html](https://gcc.gnu.org/onlinedocs/gcc/Numeric-Builtins.html)
- [https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html](https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html)
- [https://gcc.gnu.org/onlinedocs/gcc/Byte-Swapping-Builtins.html](https://gcc.gnu.org/onlinedocs/gcc/Byte-Swapping-Builtins.html)
- [https://gcc.gnu.org/onlinedocs/gcc/Integer-Overflow-Builtins.html](https://gcc.gnu.org/onlinedocs/gcc/Integer-Overflow-Builtins.html)
- [https://gcc.gnu.org/onlinedocs/gcc/Library-Builtins.html](https://gcc.gnu.org/onlinedocs/gcc/Library-Builtins.html)
- [https://optimlib.readthedocs.io/en/latest/test_functions.html](https://optimlib.readthedocs.io/en/latest/test_functions.html)
- [https://klee-se.org/](https://klee-se.org/)
- [https://klee-se.org/docs/intrinsics/](https://klee-se.org/docs/intrinsics/)
