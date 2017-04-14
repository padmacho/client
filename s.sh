#!/bin/bash
# add user mario
sudo useradd -m -d /home/mario mario

# set password for the user
echo -e 'bigdata123\nbigdata123\n' | sudo passwd mario

# Add user to sudo group
sudo usermod -aG sudo mario
