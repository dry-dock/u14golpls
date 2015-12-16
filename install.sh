#!/bin/bash -e

# TODO: cross-check this list against final ubuntu os script
# Install packages for Go
echo "================= Install packages for Go ==================="
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
echo "================= Install gvm ==================="
curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash

#Add libmysqlclient-dev to get mysql_config
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev libpq-dev libmysqlclient-dev


#!/bin/bash
for file in /u14golpls/version/*;
do
  $file
done
