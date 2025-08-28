#!/bin/bash
sudo apt install ufw fail2ban certbot python3-certbot-apache -y
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable
echo "✅ Firewall configured successfully!"