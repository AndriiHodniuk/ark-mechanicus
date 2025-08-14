#!/bin/bash

set -eou pipefile

# Simple calculator
# This function adds two numbers

function add() {
    echo "$(($1 + $2))"
}

RESULT=$(add 5 5)
echo "Result: ${RESULT}"
