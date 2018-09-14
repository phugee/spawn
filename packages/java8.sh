#! /bin/bash

sudo apt-get install         \
  gnupg                      \
  software-properties-common \
  -y

sudo echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/java-8-debian.list
sudo echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/java-8-debian.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

sudo apt-get update

sudo apt-get install        \
  oracle-java8-installer   \
  oracle-java8-set-default \
  -y
