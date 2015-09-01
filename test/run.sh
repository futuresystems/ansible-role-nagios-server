#!/usr/bin/env bash

# This is intended to be run on the docker node

PS4='$LINENO: '
set -ex

ansible-playbook playbook.yml
nc -zv localhost 80
http \
    -a nagiosadmin:nagiosadmin \
    --follow \
    --check-status \
    localhost/nagios
