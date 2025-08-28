# WordPress on AWS - Setup Instructions

1. Launch EC2 (Ubuntu)
2. Run scripts/install_apache.sh
3. Run scripts/install_wordpress.sh
4. Setup RDS using sql/create_db.sql
5. Update wp-config.php
6. Secure server using scripts/secure_server.sh
7. Access WordPress at http://<EC2-IP>/