#!/bin/bash

# This script processes a file, handling cases where the file might not exist.

file_path="/path/to/my/file.txt"

if [ -f "$file_path" ]; then
  # Process the file
  while IFS= read -r line; do
    echo "Processing line: $line"
  done < "$file_path"
else
  echo "Error: File not found. Exiting with error code."
exit 1
fi

#It is good practice to check the exit status of commands
#Example:
#command && echo "Command executed successfully" || echo "Command failed"
