#!/bin/bash

# Exit script on any error
set -e

echo "Fetching latest changes for all submodules..."
git submodule foreach 'git fetch'

# Fetch and update all submodules to their latest version on their default branch
echo "Updating all submodules to their latest version..."
git submodule update --remote --merge

# Add the updated submodule references
echo "Staging submodule changes..."
git add .

# Commit the changes
echo "Committing submodule updates..."
git commit -m "Update all submodules to their latest version"

# Push the changes to the main repository
echo "Pushing changes to the remote repository..."
git push

echo "All submodules have been updated and changes pushed successfully."
