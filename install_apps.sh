#!/bin/bash

sudo apt-get update

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev

curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
rvm install 2.2
rvm use 2.2 --default

echo "gem: --no-ri --no-rdoc" > ~/.gemrc

sudo apt-get install synapse -y
