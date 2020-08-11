#!/bin/bash

set -e

# Used to execute any specified pre and post commands
execute_commands() {
  COMMANDS=$1
  while IFS= read -r COMMAND; do
    CHUNKS=()

    for CHUNK in $COMMAND; do
      CHUNKS+=("$CHUNK")
    done

    "${CHUNKS[@]}"

    CHUNKS=()
  done <<< "$COMMANDS"
}

# If precommands is detected as input
if [ -n "$INPUT_PRECOMMANDS" ]
then
  execute_commands "$INPUT_PRECOMMANDS"
fi

echo "Something awesome happens here!"

# If postcommands is detected as input
if [ -n "$INPUT_POSTCOMMANDS" ]
then
  execute_commands "$INPUT_POSTCOMMANDS"
fi