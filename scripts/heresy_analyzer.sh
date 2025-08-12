#!/bin/bash

set -eou pipefail

# --- Automated Heresy Analyzer ---
# This script scans a given file for lines containing "ERROR".

readonly LOG_FILE="$1"

echo "++ [System Standard] Commencing analysis of: ${LOG_FILE} ++"
grep "ERROR" "${LOG_FILE}"
