#!/bin/bash

# Variables
REPO_URL="https://github.com/content-services/content-sources-backend.git"
BRANCH="playwright-POC"
FOLDER_PATH="_playwright-tests/tests/API"
LOCAL_DIR="tests/"

# Create a temporary directory
TEMP_DIR=$(mktemp -d)

# Remove the existing folder in the local directory if it exists
rm -rf $LOCAL_DIR/$FOLDER_PATH

# Clone the specific branch
git clone --branch $BRANCH $REPO_URL $TEMP_DIR

# Copy the specific folder to the local directory
mkdir -p $LOCAL_DIR
cp -r $TEMP_DIR/$FOLDER_PATH $LOCAL_DIR

# Clean up the temporary directory
rm -rf $TEMP_DIR

echo "Folder copied to $LOCAL_DIR/$FOLDER_PATH"