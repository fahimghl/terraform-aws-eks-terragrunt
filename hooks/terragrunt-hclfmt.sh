#!/bin/sh

set -e

# Check if terragrunt is installed
if ! command -v terragrunt >/dev/null 2>&1; then
  echo "Terragrunt not found. Please install it before running this script."
  exit 1
fi

# Run terragrunt hclfmt on provided files
for file in "$@"; do
  terragrunt hclfmt "$file"
done
