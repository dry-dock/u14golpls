#!/bin/bash

# Set the source path of gvm. $HOME points to '/root'
#[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm

# Get latest version of go
#version=$(gvm listall | xargs | awk 'NF>1{print $NF}')

# Install latest version - Tip
#echo "================= Install latest version -Tip ==================="
#gvm install $version && gvm use $version --default

#echo 'GVM_ROOT=$HOME/.gvm' >> $HOME/.bashrc
echo "================= All Done ==================="
