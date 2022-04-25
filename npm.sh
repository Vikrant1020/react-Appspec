#!/bin/bash

cd /home/ubuntu
apt install nodejs -y
curl -sL https://deb.nodesource.com/setup_14.x | bash -
npm -f install
