#!/bin/bash

set -e

# Check if running in GitHub vs locally
if [ -n "$GITHUB_ACTIONS" ]
then
  echo "** Running github action script **"
  npm run hello:rg --silent
  npm run hello:cat --silent
  echo "** **"
fi