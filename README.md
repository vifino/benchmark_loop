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

# Results
Results are collected in a simple csv called `results.csv`.

Here is an example one of my powerful Server running Arch:

```
Language,Version,Command,Iterations
"C","gcc version 5.2.0 (GCC) ","gcc   -O3 -o tests/benchmark_loop tests/benchmark_loop.c && ./tests/benchmark_loop",307807360
"LuaJIT","LuaJIT 2.1.0-beta1","luajit tests/benchmark_loop.lua",94830720
"JavaScript","Node.JS v5.0.0","node tests/benchmark_loop.js",51066368
"Ruby","ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-linux]","ruby tests/benchmark_loop.rb",18167168
"Dart","Dart VM version: 1.12.2 (Wed Oct 21 07:18:28 2015) on "linux_x64"","dart tests/benchmark_loop.dart",236128512
"Python 3","Python 2.7.10","python tests/benchmark_loop.py",4458496
```
