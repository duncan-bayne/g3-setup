#!/bin/bash
set -e

echo
echo Downloading and installing RSense

mkdir -p ~/g3_setup_tmp/rsense
pushd ~/g3_setup_tmp/rsense

wget http://cx4a.org/pub/rsense/rsense-0.3.zip
unzip rsense-0.3.zip
cp -av rsense-0.3 /opt

popd
rm -rf ~/g3_setup_tmp/rsense
