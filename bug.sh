#!/bin/bash

# This script attempts to process a file, but it fails if the file doesn't exist.

file_path="/path/to/my/file.txt"

if [ -f "$file_path" ]; then
  # Process the file
  while IFS= read -r line; do
    echo "Processing line: $line"
  done < "$file_path"
else
  echo "Error: File not found"
fi