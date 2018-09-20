#! /bin/bash
pushd /tmp/

wget https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz
mkdir sfdx
tar xJf sfdx-linux-amd64.tar.xz -C sfdx --strip-components 1
sudo ./sfdx/install

popd
