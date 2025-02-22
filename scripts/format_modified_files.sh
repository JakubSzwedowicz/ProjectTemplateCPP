#!/bin/bash

# Get the list of modified files
MODIFIED_FILES=$(git diff --name-only --diff-filter=ACMRTUXB)

# Filter the list to include only .cpp and .hpp files
files=()
for file in $MODIFIED_FILES; do
  if [[ $file == *.cpp || $file == *.hpp ]]; then
    files+=("$file")
  fi
done

# Loop through each file in the array and apply clang-format
for file in "${files[@]}"; do
  clang-format -i "$file"
done