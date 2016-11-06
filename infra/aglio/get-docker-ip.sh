#!/bin/bash

# Gets the IP of the docker interface
ip addr | grep /16 | tr "/" " " | awk '{print $2}'
