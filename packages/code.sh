#! /bin/bash

sudo apt-get install gpg -y
curl -s https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update -y
sudo apt-get install code -y
sudo apt-get install libxss1 libasound2 -y

code --install-extension salesforce.salesforcedx-vscode
code --install-extension eamodio.gitlens
code --install-extension hookyqr.beautify
code --install-extension chuckjonas.apex-pmd

code --list-extensions --show-versions  
