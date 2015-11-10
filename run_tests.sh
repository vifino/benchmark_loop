#!/bin/bash

# Variables
TEST_RESULTS_FILE=results.csv

## Interpreters
GCC=gcc
LUAJIT=luajit
NODE=node
RUBY=ruby
DART=dart
PYTHON3=python

# Pre-Test Setup
rm -f $TEST_RESULTS_FILE || true
echo "Language,Version,Command,Iterations" > $TEST_RESULTS_FILE

function testlang {
	echo "Testing $1 ($2)..."
	echo "$ $3"
	T=$(sh -c "$3")
	RES=$?
	ITERATIONS=$(echo "$T" | awk '{ print $1 }')
	if [ $RES -eq 0 ]; then
		echo "Iterations: $ITERATIONS"
		echo "\"$1\",\"$2\",\"$3\",$ITERATIONS" >> $TEST_RESULTS_FILE
	
	else
		echo "Test failed!"
	fi
}

# C 
rm -f benchmark_loop || true

# TESTS
testlang "C" "$($GCC -v 2>&1| tail -n1)" "$GCC $CFLAGS $LDFLAGS -O3 -o tests/benchmark_loop tests/benchmark_loop.c && ./tests/benchmark_loop"
testlang "LuaJIT" "$($LUAJIT -v | awk '{ print $1,$2}')" "$LUAJIT tests/benchmark_loop.lua"
testlang "JavaScript" "Node.JS $($NODE -v)" "$NODE tests/benchmark_loop.js"
testlang "Ruby" "$($RUBY -v)" "$RUBY tests/benchmark_loop.rb"
testlang "Dart" "$(dart --version 2>&1)" "$DART tests/benchmark_loop.dart" 
testlang "Python 3" "$($PYTHON3 --version 2>&1)" "$PYTHON3 tests/benchmark_loop.py" 
