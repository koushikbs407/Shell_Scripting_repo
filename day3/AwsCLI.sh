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

# Function to install AWS CLI
install_awscli() {
    if ! check_awscli; then
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

install_awscli
