#!/bin/bash

# Path to the Makefile you want to copy
MAKEFILE_PATH="./Makefile"

# Check if the Makefile exists
if [ ! -f "$MAKEFILE_PATH" ]; then
  echo "Makefile not found at $MAKEFILE_PATH."
  exit 1
fi

# Prompt for the root folder containing the subfolders
read -p "Enter the root folder where subfolders are located: " root_folder

# Check if the root folder exists
if [ ! -d "$root_folder" ]; then
  echo "Root folder $root_folder does not exist."
  exit 1
fi

# Iterate through all subfolders in the root folder
for subfolder in "$root_folder"/*/; do
  # Check if it's a directory
  if [ -d "$subfolder" ]; then
    echo "Copying Makefile to $subfolder"
    cp "$MAKEFILE_PATH" "$subfolder"
  fi
done

echo "Makefile copied to all subfolders."