#!/usr/bin/env bash

set -xe

name=$(basename $PWD)
sudo docker build -t $name .
sudo docker run --rm -t -i $name
