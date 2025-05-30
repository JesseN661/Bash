#!/bin/bash

#Script to manage a submissions directory(submissions.sh)
# Manage a submissions directory and create two files inside it.

# Prompt the user to enter a directory name
echo "Please enter a directory name."
read dir_name

# Define file names
file1="submission1.txt"
file2="submission2.txt"

# Check if the name already exists
if [ -e "$dir_name" ] then
    if [ -d "$dir_name" ] then
        # It's an existing directory
        echo "Directory '$dir_name' already exists."
    else
        # It's a file, not a directory — error out
        echo "Error: '$dir_name' exists but is not a directory."
        exit 1
    fi
else
    # If the directory does not exist, create it
    echo "Directory '$dir_name' does not exist. Create it..."
    mkdir "$dir_name"
    echo "Directory '$dir_name' created successfully."
fi

# Create the two files inside the directory
touch "$dir_name/$file1"
touch "$dir_name/$file2"
echo "Files '$file1' and '$file2' created inside '$dir_name'."

# Final message
echo "All tasks completed successfully."
