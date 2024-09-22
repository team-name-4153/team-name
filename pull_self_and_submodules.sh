#!/bin/bash

# Exit script on any error
set -e

echo "Pulling all submodules..."
git submodule foreach 'git checkout main; git pull;'

