#!/bin/bash

# exit immediately if command exits with a non 0 status (error)
set -e

# first argument passed to shell script from command line
CMD="$@"

echo "I'll mind command $CMD so you don't have to!"
echo "I'll say 'done' if completed, and 'error' if non-zero exit"

($CMD && say done) || say error
