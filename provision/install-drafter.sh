#!/bin/bash

#
#   See: https://github.com/apiaryio/drafter#build
#
apt-get install -y gcc binutils make linux-source g++ python
mkdir -p /opt/apib
cd /opt/apib
git clone --recursive git://github.com/apiaryio/drafter.git
cd drafter
./configure
make drafter
make install

