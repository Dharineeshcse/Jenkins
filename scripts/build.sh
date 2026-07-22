#!/bin/bash
set -e

echo "=================================="
echo "Starting Build"
echo "=================================="

python --version

echo "Creating Virtual Environment..."

python -m venv .venv

echo "Activating Virtual Environment..."

source .venv/bin/activate

echo "Installing Dependencies..."

pip install --upgrade pip
pip install -r app/requirements.txt

echo "Dependencies Installed"

python app/main.py

echo "Build Completed"