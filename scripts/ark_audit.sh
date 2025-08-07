#!/bin/bash

# --- Ark Audit Chronicler ---
# This script performs a structural audit and save it to a file.

(
    echo "=== Ark Structure Audit Log ==="
    echo "Audit performed on: $(date)"
    echo "=============================="
    echo "" # Adding blank line for readability
    eza --tree
) > docs/arc_structure_audit.txt

echo "Audit complete. Report saved to docs/ark_structure_audit.txt"
