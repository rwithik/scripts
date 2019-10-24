#!/bin/bash

ifconfig wlp6s0 down
iwconfig wlp6s0 mode monitor
ifconfig wlp6s0 up
airmon-ng check kill
echo "Manually kill remaining services"
