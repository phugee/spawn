#! /bin/bash

sudo apt-get install         \
  gnupg                      \
  software-properties-common \
  -y

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
sudo add-apt-repository ppa:webupd8team/java -y

sudo apt-get update

sudo apt-get install        \
  oracle-java8-installer   \
  oracle-java8-set-default \
  -y
