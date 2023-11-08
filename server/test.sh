#!/bin/bash
# Add the NodeSource repository for Node.js 16
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/nodesource-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/nodesource-archive-keyring.gpg] https://deb.nodesource.com/node_16.x $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/nodesource.list

echo "deb-src [signed-by=/usr/share/keyrings/nodesource-archive-keyring.gpg] https://deb.nodesource.com/node_16.x $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list

# Update package list
sudo apt update

# Install Node.js 16
sudo apt install nodejs

