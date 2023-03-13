#!/bin/bash

# Install prerequisites
sudo apt-get update
sudo apt-get install -y curl

# Download the latest version of Docker Compose
LATEST_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep "tag_name" | cut -d'"' -f4)
sudo curl -L "https://github.com/docker/compose/releases/download/${LATEST_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Set permissions and make the binary executable
sudo chmod +x /usr/local/bin/docker-compose

# Verify the installation
docker-compose --version

