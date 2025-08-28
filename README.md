# aws-wordpress-deployment

🚀 WordPress Deployment on AWS (EC2 + RDS + Apache)

📌 Project Overview

This project demonstrates the deployment of a highly available WordPress application on Amazon Web Services (AWS) using EC2 for hosting and RDS for database management.
The solution ensures scalability, security, and maintainability while following AWS best practices.


---

🛠 Tech Stack

AWS EC2 – Virtual server for hosting WordPress

AWS RDS (MySQL) – Managed database service

Apache2 – Web server

PHP – Server-side scripting

MySQL – Database backend

Let’s Encrypt (SSL) – Free SSL certificate for HTTPS

UFW & Fail2Ban – Security hardening



---

🏗 Architecture

A public EC2 instance runs Apache2 + PHP to serve WordPress.

Amazon RDS MySQL hosts the WordPress database.

Security Groups restrict database access to EC2 only.

SSL Certificates secure communication with HTTPS.

Optional: Amazon CloudFront + S3 for caching & media storage.


📌 Architecture Diagram:



---

🔧 Deployment Steps

1. Launch EC2 Instance

Ubuntu Server (free tier eligible)

Install Apache & PHP


sudo apt update && sudo apt upgrade -y
sudo apt install apache2 php php-mysql libapache2-mod-php unzip wget -y

2. Setup RDS (MySQL)

Create RDS MySQL DB instance

Create DB and user:


CREATE DATABASE wordpress;
CREATE USER 'wpuser'@'%' IDENTIFIED BY 'strongpassword';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%';
FLUSH PRIVILEGES;

3. Install WordPress

wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
sudo mv wordpress/* /var/www/html/
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/

Edit wp-config.php with RDS credentials


4. Secure Deployment

sudo apt install ufw fail2ban certbot python3-certbot-apache -y
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable
sudo certbot --apache -d yourdomain.com


---

✅ Output

WordPress accessible at:

http://<EC2-Public-IP>
https://<your-domain>

Admin login:

http://<EC2-Public-IP>/wp-admin



---

🔐 Security Enhancements

Restricted RDS access (EC2 only)

Enabled SSL with Let’s Encrypt

Configured UFW firewall & Fail2Ban

Regular backups to Amazon S3



---

📈 Future Improvements

Use Elastic Load Balancer for high availability

Store media files in Amazon S3

Serve content via Amazon CloudFront (CDN)

Add Auto Scaling Group for traffic spikes



---

🤝 Author

Santhi Kumari
Cloud & DevOps Enthusiast 🌩 | Exploring AWS, Linux, Networking, and Automation


---

👉 You can just copy-paste this into your README.md.
Would you like me to also generate the GitHub repository folder structure (with sample files like wp-config-sample.php, diagram.png placeholder, etc.) so you can push everything directly?
