CREATE DATABASE wordpress;
CREATE USER 'wpuser'@'%' IDENTIFIED BY 'strongpassword';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%';
FLUSH PRIVILEGES;