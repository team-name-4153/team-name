#!/bin/bash

# Exit script on any error
set -e

echo "Fetching latest changes for all submodules..."
git submodule foreach 'git checkout main; git push;'

