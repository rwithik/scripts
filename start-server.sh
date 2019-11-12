#!/bin/bash

localip=`ip addr | grep 192.168 | awk '{print $2}' | awk -F '/' '{print $1}'`

echo -e "Deploying $PWD at $localip"

python -m http.server
