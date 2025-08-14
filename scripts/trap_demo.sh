#!/bin/bash
set -euo pipefail

TMP_FILE=$(mktemp)
echo "Created temporary file: ${TMP_FILE}"

function cleanup() {
  echo "" # Newline for clarity
  echo "Signal received! Performing last rites (cleanup)..."
  rm -f "${TMP_FILE}"
  echo "Temporary file ${TMP_FILE} removed."
}

trap cleanup EXIT

echo "Script running... Press Ctrl+C to interrupt me within 30 seconds."
sleep 30
echo "Script finished normally."
