#!/bin/bash

# Run git status command
status=$(git status)

# Check if the status matches the desired condition
if [[ $status =~ "On branch latestcode" && $status =~ "Your branch is up to date with 'origin/latestcode'." && $status =~ "nothing to commit, working tree clean" ]]; then
    echo "latestcode is up to date. Exiting..."
else
    echo "latestcode needs updating. Updating..."
    git add .
    git commit -m "codebuild test 1"
    git push origin latestcode
fi
