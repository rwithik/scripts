#!/bin/bash

ifconfig wlp6s0 down
iwconfig wlp6s0 mode managed
ifconfig wlp6s0 up
service NetworkManager restart
