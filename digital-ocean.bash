#!/usr/bin/env bash

echo "Install GIT "

# Start Script
apt-get update
apt-get upgrade -y
apt-get install build-essential -y

echo "Install ZSH "
# Install Zsh theme
sudo apt-get install zsh git-core -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)
zsh

echo "Install MongoDB "
# Install MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 
apt-get install mongodb -y
sh -c "echo 'LC_ALL=en_US.UTF-8\nLANG=en_US.UTF-8' >> /etc/environment"

echo "Install Nginx "
# Install Nginx
apt-get install nginx -y