#!/bin/bash
sudo apt update -y
sudo apt install apache2 php php-mysql libapache2-mod-php unzip wget -y
sudo systemctl enable apache2
sudo systemctl start apache2