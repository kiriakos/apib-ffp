#!/bin/bash

# Gets the IP of the docker interface
ip=$( ip addr | grep /16 | tr "/" " " | awk '{print $2}' )

echo "Using aglio with host ip $ip"

aglio --host $ip $@
