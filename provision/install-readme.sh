#!/bin/bash

##  Install readme service
cd /vagrant/infra/luminos/
docker build -t apibffp/readme .

docker run -d --name readme -p 1080:9000 -v /vagrant/README.md:/README.md apibffp/readme

cp /vagrant/infra/luminos/luminos.service /etc/systemd/system/
systemctl enable luminos.service
systemctl start luminos.service
