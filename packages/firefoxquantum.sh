#! /bin/bash

sudo apt install wget bzip2 
sudo apt-get install libdbus-glib-1-2

sudo wget -O FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
sudo tar xjf FirefoxSetup.tar.bz2
sudo mv firefox /opt/firefox

sudo ln -s /opt/firefox/firefox /usr/bin/firefox

sudo bash -c 'cat << EOF > /usr/share/applications/firefox.desktop
[Desktop Entry]
Name=Firefox
Comment=Browse the World Wide Web
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Exec=/opt/firefox/firefox %u
Type=Application
Categories=Network;WebBrowser;
EOF'
