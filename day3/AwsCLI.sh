#!/bin/bash

set -euo pipefail

# Function to check whether AWS CLI is installed or not
check_awscli() {
    if command -v aws &> /dev/null; then
        echo "✅ AWS CLI is already installed: $(aws --version)"
        return 0
    else
        echo "❌ AWS CLI not found. Need to install..."
        return 1
    fi
}


# Function to check and install unzip if not installed
install_unzip() {
    if command -v unzip &> /dev/null; then
        echo "✅ unzip is already installed."
    else
        echo "❌ unzip not found. Installing unzip..."
        if [ -f /etc/debian_version ]; then
            sudo apt update -y && sudo apt install unzip -y
        elif [ -f /etc/redhat-release ]; then
            sudo yum install unzip -y
        else
            echo "⚠️ Unsupported OS. Please install unzip manually."
            exit 1
        fi
        echo "✅ unzip installed successfully."
    fi
}

# Function to install AWS CLI
install_awscli() {
    if ! check_awscli; then
        install_unzip  # <-- ensure unzip is present before using it
        echo "Installing AWS CLI..."
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
        unzip -q awscliv2.zip
        sudo ./aws/install
        rm -rf awscliv2.zip aws
        echo "✅ AWS CLI installed successfully: $(aws --version)"
    else
        echo "✅ AWS CLI is already installed. Skipping installation."
    fi
}

# Run the installation
install_awscli




