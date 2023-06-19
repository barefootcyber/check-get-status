#!/bin/bash

# Get inside BarefootCyber-Wazuh-Docker
cd BarefootCyber-Wazuh-Docker

# Run git status command
status=$(git status)

# Check if the status matches the desired condition
if [[ $status =~ "On branch latestcode" && $status =~ "Your branch is up to date with 'origin/latestcode'." && $status =~ "nothing to commit, working tree clean" ]]; then
    echo "latestcode is up to date."
else
    git add .
fi
