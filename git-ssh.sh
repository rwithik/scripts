#!/bin/bash

echo -e "Starting ssh agent..."
eval "$(ssh-agent -s)"
ssh-add
echo -e "You will not be prompted for the kekyphrase again in this session."
