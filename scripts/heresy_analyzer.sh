#!/bin/bash

set -eou pipefail

# --- Automated Heresy Analyzer ---
# This script scans a given file for lines containing "ERROR".

readonly LOG_FILE="$1"

echo "++ [Acolyte's Analysis] Scanning target: ${LOG_FILE} ++"
grep "ERROR" "${LOG_FILE}"
