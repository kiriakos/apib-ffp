#!/bin/bash

#
#   Installs system dependencies
#

# Node & Npm
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
apt-get install nodejs
