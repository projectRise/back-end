USE test;

SELECT * FROM `Devices` ORDER BY `id` ASC;

SELECT * FROM `Sensors` ORDER BY `id` ASC;

SELECT * FROM `Measurements` ORDER BY `timestamp` DESC, `device_id` ASC, `sensor_id` ASC;

SELECT * FROM `Measurements` ORDER BY `device_id` ASC, `sensor_id` ASC, `timestamp` DESC;
