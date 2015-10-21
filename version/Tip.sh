#!/bin/bash -e

# TODO: cross-check this list against final ubuntu os script
# Install packages for Go
apt-get update && apt-get install -y \
	autotools-dev \
	autoconf \
	bison \
	git \
	mercurial \
	cmake \
	scons \
	binutils

# Install gvm
curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm 

# Get latest version
version=$(gvm listall | xargs | awk 'NF>1{print $NF}')

# Install Go
gvm install $version && gvm use $version --default
echo 'GVM_ROOT=$HOME/.gvm' >> $HOME/.bashrc
