#!/bin/bash

# Prompt for the root folder containing the subfolders
# read -p "Enter the root folder where subfolders are located: " root_folder
root_folder="."

# Check if the root folder exists
if [ ! -d "$root_folder" ]; then
  echo "Root folder $root_folder does not exist."
  exit 1
fi

# Iterate through all subfolders in the root folder
for subfolder in "$root_folder"/*/; do
  # Check if the subfolder contains a Makefile
  if [ -f "$subfolder/Makefile" ]; then
    echo "---------------------------------------"
    echo "Entering $subfolder and running make..."
    echo "---------------------------------------"
    # Change directory to the subfolder
    cd "$subfolder"
    
    # Run make
    make
    
    # Go back to the root directory
    cd - > /dev/null
    
  else
    echo "No Makefile found in $subfolder, skipping..."
  fi
done

echo "Make executed in all subfolders containing a Makefile."
