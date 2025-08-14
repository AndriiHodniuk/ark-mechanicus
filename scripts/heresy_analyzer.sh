#!/bin/bash
set -euo pipefail

readonly LOG_FILE="$1"

echo "++ Heresy Analyzer activated. Monitoring ${LOG_FILE}... ++"

while true; do
  if [ -f "${LOG_FILE}" ]; then
    echo "--- [$(date)] Running analysis ---"
    grep "ERROR" "${LOG_FILE}" || true
  else
    echo "--- [$(date)] Log file not found. Awaiting data transmission... ---"
  fi
  sleep 10
done
