#!/bin/bash
set -e
echo "=================================="
echo "Starting Build"
echo "=================================="

python --version

pip install -r app/requirements.txt

echo "Dependencies Installed"

python app/main.py

echo "Build Completed"