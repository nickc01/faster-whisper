#!/bin/bash
# Install faster-whisper in editable mode

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing faster-whisper in editable mode..."
cd "$SCRIPT_DIR"

# Check if setup.py or pyproject.toml exists
if [[ -f "setup.py" ]] || [[ -f "pyproject.toml" ]]; then
    pip install -e .
else
    echo "Warning: No setup.py or pyproject.toml found in $SCRIPT_DIR"
    echo "Skipping installation for faster-whisper"
    exit 1
fi

echo "✓ faster-whisper installed successfully"
