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
apt-get install nodejs inotify-tools

