#!/bin/bash

# Install nginx if not already installed
if ! command -v nginx &> /dev/null
then
    echo "Installing nginx..."
    sudo apt update
    sudo apt install -y nginx
fi

# Start and enable nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Copy your index.html to nginx web root
sudo cp index.html /var/www/html/index.html

# Set permissions
sudo chmod 644 /var/www/html/index.html

echo "Nginx is running."
echo "Open in browser:"
echo "https://localhost"
