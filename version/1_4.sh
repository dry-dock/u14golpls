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

# Install Go 1.4.2
curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm 
gvm install go1.4.2 && gvm use go1.4.2 --default
echo 'GVM_ROOT=$HOME/.gvm' >> $HOME/.bashrc
