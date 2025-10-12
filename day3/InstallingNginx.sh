#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update system packages
echo "🔄 Updating system packages..."
sudo apt update -y

# Install Nginx if not already installed
echo "🌐 Installing Nginx..."
if ! command -v nginx &> /dev/null; then
    sudo apt install nginx -y
else
    echo "✅ Nginx is already installed."
fi

# Enable and start Nginx service
echo "🚀 Starting Nginx service..."
sudo systemctl enable nginx
sudo systemctl start nginx

# Create a basic HTML file
HTML_FILE="/var/www/html/index.html"
echo "📝 Creating index.html file at $HTML_FILE"

sudo bash -c "cat > $HTML_FILE" <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My Nginx Server</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            text-align: center; 
            background-color: #f2f2f2; 
            margin-top: 100px; 
        }
        h1 { color: #333; }
    </style>
</head>
<body>
    <h1>Hello from Nginx!</h1>
    <p>This page was created automatically using a shell script 🚀</p>
</body>
</html>
EOF

# Restart Nginx to ensure new file is served
echo "🔁 Restarting Nginx..."
sudo systemctl restart nginx

# Print status and server info
echo "✅ Nginx installation and setup complete!"
echo "🌍 Visit your server's IP address in the browser to view the page."
echo "Example: http://$(hostname -I | awk '{print $1}')"
