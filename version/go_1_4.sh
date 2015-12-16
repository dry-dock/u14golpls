#!/bin/bash

# Set the source path of gvm. $HOME points to '/root'
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm

# Install Go 1.4
echo "================= Install Go 1.4 ==================="
gvm install go1.4 --prefer-binary && gvm use go1.4 && go install -a -race std && go get -u github.com/tools/godep
