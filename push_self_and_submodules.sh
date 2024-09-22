#!/bin/bash

# Exit script on any error
set -e

echo "Pushing for all submodules..."
git submodule foreach 'git checkout main; git push;'

