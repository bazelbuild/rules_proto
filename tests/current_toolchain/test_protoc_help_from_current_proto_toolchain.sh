#!/bin/env sh

# Fail if the file in the PROTOC_HELP_OUTPUT environment variable is empty
[ -s  "$PROTOC_HELP_OUTPUT" ]
