#!/bin/bash
set -e

echo "Running Unit Tests"

mkdir -p reports

pytest tests \
--junitxml=reports/test-report.xml

echo "Tests Finished"