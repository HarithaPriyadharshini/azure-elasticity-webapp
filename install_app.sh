#!/bin/bash
# Exit immediately if a command fails
set -e

# Update packages
sudo apt-get update -y

# Install Nginx
sudo apt-get install -y nginx

# Replace the default index page with a custom message
echo "Hello from VMSS instance: $(hostname)" | sudo tee /var/www/html/index.html

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx
