CREATE DATABASE cm_devices;
USE cm_devices;
CREATE TABLE devices( deviceID int, deviceName varchar(50), price decimal);

INSERT INTO devices (deviceID, deviceName, price) VALUES
(1, 'Smartphone X1', 699.99),
(2, 'Laptop Pro 15', 1299.50),
(3, 'Tablet Mini', 399.00),
(4, 'Smartwatch Z', 199.99),
(5, 'Gaming Console', 499.00),
(6, 'Wireless Earbuds', 149.99),
(7, '4K TV 55"', 899.00),
(8, 'Bluetooth Speaker', 89.99),
(9, 'External SSD 1TB', 129.00),
(10, 'VR Headset', 349.00);


SHOW COLUMNS FROM devices;


SELECT * FROM devices;

SHOW TABLES;

CREATE TABLE Customers (
    customer_id CHAR(7),
    fullname VARCHAR(100),
    email VARCHAR(255)
);


SHOW TABLES;

SHOW COLUMNS FROM Customers;

CREATE TABLE feedback(
    feedback_id CHAR(8),
    feedback_type VARCHAR(100),
    comment TEXT(500)
);

SHOW COLUMNS FROM feedback;

SHOW TABLES;