#!/bin/bash
set -e

echo "Packaging Application"

mkdir -p artifacts

zip -r artifacts/application.zip app

echo "Package Created"