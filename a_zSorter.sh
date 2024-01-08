#!/bin/bash

# Define the source directory containing the archived files
SOURCE_DIR="archive"

# Define the base directory where the alphabet directories are located
BASE_DIR="."

# Loop through each letter of the alphabet
for letter in {a..z}; do
    # Check if the directory for the letter exists; if not, create it
    if [ ! -d "$BASE_DIR/$letter" ]; then
        mkdir "$BASE_DIR/$letter"
    fi

    # Move files starting with the letter into the corresponding directory
    mv "$SOURCE_DIR/$letter"* "$BASE_DIR/$letter/"
done

echo "Files moved successfully."

