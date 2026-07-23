#!/bin/bash
set -e

echo "=================================="
echo "Running Tests"
echo "=================================="



export PYTHONPATH=$PWD

echo "Creating Virtual Environment..."

python -m venv .venv

echo "Activating Virtual Environment..."

source .venv/bin/activate

echo "Installing Dependencies..."

pip install --upgrade pip
pip install -r app/requirements.txt

echo "Dependencies Installed"



mkdir -p reports

pytest tests \
    -v \
    --html=reports/report.html \
    --self-contained-html \
    --junitxml=reports/junit.xml

echo "Tests Completed"