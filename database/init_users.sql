CREATE USER 'rise'@'localhost' IDENTIFIED BY @`password`;
GRANT ALL PRIVILEGES ON `rise`.* TO 'rise'@'localhost';

CREATE USER 'rise'@'%' IDENTIFIED BY @`password`;
GRANT SELECT ON `rise`.* TO 'rise'@'%';

FLUSH PRIVILEGES;
