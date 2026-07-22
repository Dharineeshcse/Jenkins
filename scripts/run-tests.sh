#!/bin/bash

set -e

echo "=================================="
echo "Running Tests"
echo "=================================="

source .venv/bin/activate
export PYTHONPATH=$PWD
pytest tests -v