#!/bin/bash

# install node + npm
# 1 - install nvm - Node Version Manager


source ~/.bashrc

is_found=$((type nvm | head -1) 2>&1)

if [[ $is_found =~ "not found" ]];
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
    source ~/.bashrc
else
    echo "Already installed"
fi

