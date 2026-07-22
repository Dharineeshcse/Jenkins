#!/bin/bash
set -e

echo "=================================="
echo "Packaging Application"
echo "=================================="

mkdir -p artifacts

tar -czf artifacts/python-app.tar.gz app/

echo "Package Created"

ls -lh artifacts/