#!/bin/bash

# install node + npm
# 1 - install nvm - Node Version Manager

function install_nvm() {
    source ~/.bashrc

    is_found=$((type nvm | head -1) 2>&1)

    if [[ $is_found =~ "not found" ]];
    then
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
        source ~/.bashrc
    else
        echo "Already installed"
    fi
}

function install_node() {
    # todo: ensure nvm is installed (install_nvm if needed )
    nvm install node
}

function install_ansible(){
    sudo apt update
    sudo apt install -y ansible
}
