#!/bin/bash

#downloads the package lists from the repositories and "updates" them to get information on the newest versions of packages
sudo apt-get update

# add user mario
sudo useradd -m -d /home/mario mario

# set password for the user
echo -e 'bigdata123\nbigdata123\n' | sudo passwd mario

# Add user to sudo group
sudo usermod -aG sudo mario

# add bash as default shell for mario
sudo chsh mario -s /bin/bash


# create necessary  lab directories
sudo -u mario  mkdir /home/mario/lab
sudo -u mario  mkdir /home/mario/lab/installers
sudo -u mario  mkdir /home/mario/lab/softwares
sudo -u mario  mkdir /home/mario/lab/data
sudo -u mario  mkdir /home/mario/lab/examples

#add host entries
echo "192.168.7.7 reposerver" | sudo tee -a /etc/hosts

#download the installers
sudo -u mario wget -P /home/mario/lab/installers http://reposerver/installers/hadoop/hadoop-2.8.0.tar.gz
sudo -u mario wget -P /home/mario/lab/installers http://reposerver/installers/hadoop/apache-hive-2.1.1-bin.tar.gz
sudo -u mario wget -P /home/mario/lab/installers http://reposerver/installers/hadoop/hbase-1.2.5-bin.tar.gz
sudo -u mario wget -P /home/mario/lab/installers http://reposerver/installers/hadoop/pig-0.16.0.tar.gz
sudo -u mario wget -P /home/mario/lab/installers http://reposerver/installers/hadoop/sqoop-1.99.7-bin-hadoop200.tar.gz
sudo -u mario wget -P /home/mario/lab/installers http://reposerver/java/jdk-8u112-linux-x64.tar.gz
