#!/bin/bash

# updating cache $ upgrading
apt -y update && sudo apt -y upgrade

# install GnuPG
apt install -y gnupg2

# add postgreSQL APT Repository
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# download postgresql Asc key
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# update apt cache
apt -y update

# install postgresQL
apt -y install postgresql