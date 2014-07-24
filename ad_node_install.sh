#!/bin/sh
TMP_DIR="/tmp/${USER}_node"
PREFIX_DIR="$HOME/local"
NODE_VERSION=v0.10.29

mkdir -p $PREFIX_DIR
mkdir -p $TMP_DIR

# INSTALL NODE.JS
cd $TMP_DIR && git clone https://github.com/joyent/node.git .
git checkout $NODE_VERSION
./configure --prefix=$PREFIX_DIR
make
make install

# INSTALL BOWER
$PREFIX_DIR/bin/npm install -g bower

# cleanup
cd $PREFIX_DIR
rm -r $TMP_DIR
