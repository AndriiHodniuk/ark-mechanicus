#!/bin/bash

set -eou pipefail

# --- Automated Heresy Analyzer ---
# This script scans a given file for lines containing "ERROR".

readonly LOG_FILE="$1"

echo "++ Analyzing file: ${LOG_FILE} for heresy ++"
grep "ERROR" "${LOG_FILE}"
