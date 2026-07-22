#!/bin/bash

set -e

echo "Cleaning Workspace"

rm -rf artifacts/*
rm -rf reports/*
rm -rf app/__pycache__
rm -rf tests/__pycache__
rm -rf .pytest_cache

echo "Cleanup Completed"