CREATE USER 'rise'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON `rise`.* TO 'rise'@'localhost';
FLUSH PRIVILEGES;
