#!/usr/bin/env bash

set -e
set -ex

apt-get update
apt-get install -y libav-tools mkvtoolnix

for ext in */; do \
    cd $ext
    ext_no_slash=${ext%/}
    echo "***************** Installing $ext_no_slash ******************"
    ./install.sh
    cd ..
done
