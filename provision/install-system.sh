#!/bin/bash

#
#   Installs system dependencies
#

# Node & Npm
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -


# Install pakages
#
#   Node
#   Inotify
#
apt-get install -y nodejs inotify-tools

chmod -x /etc/update-motd.d/*
cp /vagrant/provision/motd.sh /etc/update-motd.d/10-apibffp
chmod +x  /etc/update-motd.d/10-apibffp

