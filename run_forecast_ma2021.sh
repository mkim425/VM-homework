#!/bin/bash

#
# A wrapper script to run the baseline model, messaging slack with progress and results.
# - run as `ec2-user`, not root
#

# set environment variables - per https://stackoverflow.com/questions/19331497/set-environment-variables-from-file-of-key-value-pairs
set -o allexport
source ~/.env
set +o allexport

# load slack functions - per https://stackoverflow.com/questions/10822790/can-i-call-a-function-of-a-shell-script-from-another-shell-script/42101141#42101141
source $(dirname "$0")/slack.sh

#
# start
#

slack_message "starting"

# update repos 
VM_HOMEWORK_DIR="/data/VM-homework"
cd "${VM_HOMEWORK_DIR}"
git pull

Rscript forecast_MA2021.R > result

TODAY=$(date)
git commit -m "Changes committed: $TODAY"
git push

slack_message "done"
