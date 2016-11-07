#!/bin/bash

#
#   Installs the nodejs container running our node implementation
#

cd /vagrant/impl/nodesrv/
docker build -t apibffp/nodesrv .

docker run -d --name nodesrv -p 20080:20080 -v /vagrant/impl/nodesrv:/nodesrv \
    apibffp/nodesrv /nodesrv/index.js

sudo cp /vagrant/impl/nodesrv.service /etc/systemd/system/
sudo systemctl enable nodesrv.service
sudo systemctl start nodesrv.service

