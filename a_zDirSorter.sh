#!/bin/bash

# Define the base directory where the alphabet directories are located
BASE_DIR="."

# Define the target directory where the directories will be moved
TARGET_DIR="repos"

# Create the target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    mkdir "$TARGET_DIR"
fi

# Loop through each letter of the alphabet
for letter in {a..z}; do
    # Check if the directory for the letter exists
    if [ -d "$BASE_DIR/$letter" ]; then
        # Move the directory into the target directory
        mv "$BASE_DIR/$letter" "$TARGET_DIR/"
    fi
done

echo "Directories moved successfully."
