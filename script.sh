#!/bin/sh

wget -O - https://fsx-lustre-client-repo-public-keys.s3.amazonaws.com/fsx-ubuntu-public-key.asc | apt-key add -
bash -c 'echo "deb https://fsx-lustre-client-repo.s3.amazonaws.com/ubuntu focal main" > /etc/apt/sources.list.d/fsxlustreclientrepo.list && apt-get update'
apt install -y lustre-client-modules-$(uname -r)
apt install -y lustre-client-modules-aws
