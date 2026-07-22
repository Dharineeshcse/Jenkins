#!/bin/bash
set -e

echo "=================================="
echo "Running Tests"
echo "=================================="

source .venv/bin/activate

export PYTHONPATH=$PWD

mkdir -p reports

pytest tests \
    -v \
    --html=reports/report.html \
    --self-contained-html \
    --junitxml=reports/junit.xml

echo "Tests Completed"