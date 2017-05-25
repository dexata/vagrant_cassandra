#!/bin/bash

# install Java and a few base packages
add-apt-repository ppa:openjdk-r/ppa
apt-get update
apt-get install vim curl zip unzip git python-pip -y -q

# Java install - adjust if needed
# apt-get install openjdk-7-jdk -y -q
apt-get install openjdk-8-jdk -y -q

# Install Cassandra 
echo "deb http://www.apache.org/dist/cassandra/debian 310x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
sudo apt-get update
sudo apt-get install cassandra -y
sudo service cassandra start

echo "Vagrant provisioning complete"
