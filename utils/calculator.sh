#!/bin/bash

set -eou pipefile

# Advanced STC Calculator
# This function adds two numbers

function add() {
    echo "$(($1 + $2))"
}

RESULT=$(add 5 5)
echo "Result: ${RESULT}"
