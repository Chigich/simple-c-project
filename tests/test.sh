#!/bin/bash

echo "Running test..."

./program > output.txt

if grep -q "Hello from C Program" output.txt; then
    echo "TEST PASSED"
    exit 0
else
    echo "TEST FAILED"
    exit 1
fi

