CREATE DATABASE IF NOT EXISTS rise;
USE rise;

DROP TABLE IF EXISTS `Measurements`;
DROP TABLE IF EXISTS `Sensors`;
DROP TABLE IF EXISTS `Devices`;

CREATE TABLE `Devices`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `device_eui` VARCHAR(16),
  `app_eui` VARCHAR(16),
  `name` VARCHAR(255),
  `description` VARCHAR(255),
  
  PRIMARY KEY (`id`)
);

CREATE TABLE `Sensors`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `adjustment` BOOLEAN NOT NULL DEFAULT FALSE,
  `name` VARCHAR(255),
  `description` VARCHAR(255),
  
  PRIMARY KEY (`id`)
);

CREATE TABLE `Measurements`
(
  `sensor_id` INT NOT NULL,
  `device_id` INT NOT NULL,
  `timestamp` INT,
  `value` FLOAT NOT NULL,
  
  FOREIGN KEY (`sensor_id`) REFERENCES Sensors(`id`),
  FOREIGN KEY (`device_id`) REFERENCES Devices(`id`),
  PRIMARY KEY (`sensor_id`, `device_id`, `timestamp`)
);
