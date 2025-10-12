#!/bin/bash

#This is a mongodb installation script

set -euo pipefail
# Function to check whether MongoDB is installed or not
sudo apt-get install gnupg curl -y
check_mongodb() {
    if command -v mongod &> /dev/null; then
        echo "✅ MongoDB is already installed: $(mongod --version | head -n 1)"
        return 0
    else
        echo "❌ MongoDB not found. Need to install..."
        return 1
    fi
}
# Function to install MongoDB
install_mongodb() {
    if ! check_mongodb; then
        echo "Installing MongoDB..."
        wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
        echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse
" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
        sudo apt update -y
        sudo apt install -y mongodb-org
        echo "✅ MongoDB installed successfully: $(mongod --version | head -n 1)"
    else
        echo "✅ MongoDB is already installed. Skipping installation."
    fi
}
# Function to start and enable MongoDB service
start_mongodb_service() {
    echo "Starting and enabling MongoDB service..."
    sudo systemctl start mongod
    sudo systemctl enable mongod
    echo "✅ MongoDB service started and enabled."
}
# Run the installation and service start
install_mongodb
start_mongodb_service
echo "🌍 You can check MongoDB service status with: sudo systemctl status mongod"
