#!/bin/bash

sudo apt update
sudo apt upgrade
sudo curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh

sudo usermod -aG docker $USER

sudo curl -L --fail https://github.com/linuxserver/docker-docker-compose/releases/download/1.28.2-ls31/docker-compose-arm64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose