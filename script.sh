#!/bin/bash
echo "Update System"
sudo apt update -y

echo "Installing Utilities"
sudo apt install zip unzip -y

echo "Installing Web Server NGINX"
sudo apt install nginx -y

echo "Cleanup Document Root"
sudo rm -rf /var/www/html/*

echo "Deploy Login App"
sudo git clone https://github.com/ravi2krishna/login-2430.git /var/www/html/

echo "Application Deployed - Browse the applicatiuon using Public IP"
