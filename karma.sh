#!/bin/bash

clear
atom ~/Projects/moksha & disown

firefox localhost:4000

st zsh -c 'cd ~/Projects/karma/src; npm run dev' & disown
# st zsh -c 'cd ~/Projects/moksha/src; npm run dev' & disown
cd ~/Projects/moksha/src; npm run dev

