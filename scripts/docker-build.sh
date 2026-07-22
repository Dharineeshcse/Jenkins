#!/bin/bash

set -e

echo "=================================="
echo "Building Docker Image"
echo "=================================="

docker build -t calculator-app:latest .

echo "Docker image created successfully"

docker images | grep calculator-app