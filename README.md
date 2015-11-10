# benchmark_loop
Basic Language Benchmark purely based on speed.

# Running
Get the interpreters/compilers for the given languages, like `gcc` or `luajit`.

Then, to run the tests:
```bash
./run_tests.sh
```

# Adding a Test

Add your test to `tests/benchmark_loop.languageextension`.

Add your language's compiler or interpreter as a variable following the pattern of `LANGUAGE=interpreterorcompiler` directly under the already existing variables.

Add a test like that directly under the already existing tests:
```bash
testlang "My Language" "$($MYLANGUAGE --version)" "$MYLANGUAGE tests/benchmark_loop.mylanguage"
```
