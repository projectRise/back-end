USE rise;

INSERT INTO Devices(`device_eui`, `app_eui`, `name`, `description`) VALUES("0011223300112233", "0011001100110011", "Device 1", "Weather station");
INSERT INTO Devices(`device_eui`, `app_eui`, `name`, `description`) VALUES("4455667744556677", "0011001100110011", "Device 2", "Kattklappare");

INSERT INTO Sensors(`name`, `description`) VALUES("Sensor 1", "Light");
INSERT INTO Sensors(`name`, `description`) VALUES("Sensor 2", "Temperature");
INSERT INTO Sensors(`name`, `description`) VALUES("Sensor 3", "Humidity");
INSERT INTO Sensors(`name`, `description`) VALUES("Sensor 4", "Air quality");

INSERT INTO Measurements(`sensor_id`, `device_id`, `timestamp`, `value`) VALUES(1, 1, 1581937668, 500);
INSERT INTO Measurements(`sensor_id`, `device_id`, `timestamp`, `value`) VALUES(2, 2, 1581937668, 25);
INSERT INTO Measurements(`sensor_id`, `device_id`, `timestamp`, `value`) VALUES(3, 1, 1581937668, 0.35);
INSERT INTO Measurements(`sensor_id`, `device_id`, `timestamp`, `value`) VALUES(4, 2, 1581937668, 0.9);

INSERT INTO Measurements(`sensor_id`, `device_id`, `timestamp`, `value`) VALUES(1, 1, 1581941268, 300);
INSERT INTO Measurements(`sensor_id`, `device_id`, `timestamp`, `value`) VALUES(2, 2, 1581941268, 21.6);
INSERT INTO Measurements(`sensor_id`, `device_id`, `timestamp`, `value`) VALUES(3, 1, 1581941268, 0.54);
INSERT INTO Measurements(`sensor_id`, `device_id`, `timestamp`, `value`) VALUES(4, 2, 1581941268, 0.895);
