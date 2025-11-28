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

USE cm_devices;

CREATE TABLE address (
    id INT NOT NULL,
    street VARCHAR(255),
    postcode VARCHAR(10),
    town VARCHAR(30) DEFAULT "Hallow"
);

SHOW COLUMNS FROM address;

DROP TABLE address;

CREATE TABLE address (
    id INT NOT NULL,
    street VARCHAR(255),
    postcode VARCHAR(10) DEFAULT "HA97DE",
    town VARCHAR(30) DEFAULT "Hallow"
);


SHOW COLUMNS FROM address;

CREATE TABLE cm_devices.invoice (
    customer_name VARCHAR(50),
    order_date DATE,
    product_quantity INT,
    total_price DECIMAL
)

SHOW COLUMNS FROM cm_devices.invoice;


SELECT CURRENT_DATE();


CREATE DATABASE bookshop;

USE bookshop;

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    customer_address VARCHAR(255)
);

SHOW TABLES;



INSERT INTO customers (customer_id, customer_name, customer_address)
VALUES
(1, 'Alice Johnson', '123 Maple Street, Springfield'),
(2, 'Bob Smith', '456 Oak Avenue, Lincoln'),
(3, 'Charlie Brown', '789 Pine Road, Madison'),
(4, 'Diana Prince', '101 Elm Street, Gotham'),
(5, 'Ethan Hunt', '202 Birch Lane, Metropolis'),
(6, 'Fiona Davis', '303 Cedar Drive, Star City'),
(7, 'George Miller', '404 Walnut Blvd, Central City'),
(8, 'Hannah Lee', '505 Chestnut Court, Coast City'),
(9, 'Ian Clark', '606 Aspen Way, Smallville');


SELECT * FROM bookshop.customers;

CREATE DATABASE football_club;

USE football_club;

CREATE TABLE players (
    playerID INT,
    playerName VARCHAR(50),
    age INT
);


SHOW TABLES;


CREATE TABLE games(
    gameID INT, 
    gameDate DATE, 
    score INT
);


USE bookshop;

TRUNCATE TABLE customers;

INSERT INTO customers 
(customer_id, customer_name, customer_address) 
VALUES
(1, 'Jack', '115 Old street Belfast'),
(2, 'James', '24 Carlson Rd London'),
(4, 'Maria', '5 Fredrik Rd, Bedford'),
(5, 'Jade', '10 Copland Ave Portsmouth '),
(6, 'Yasmine', '15 Fredrik Rd, Bedford'),
(3, 'Jimmy', '110 Copland Ave Portsmouth');


SELECT * FROM customers;

DELETE FROM customers WHERE customer_id= 3;

SELECT * FROM customers;


CREATE DATABASE Chinook;

USE Chinook;

CREATE TABLE Customer (
    CustomerId INT NOT NULL, 
    FirstName VARCHAR(40) NOT NULL, 
    LastName VARCHAR(20) NOT NULL, 
    Company VARCHAR(80), 
    Address VARCHAR(70), 
    City VARCHAR(40), 
    State VARCHAR(40), 
    Country VARCHAR(40), 
    PostalCode VARCHAR(10), 
    Phone VARCHAR(24), Fax 
    VARCHAR(24), 
    Email VARCHAR(60) NOT NULL, 
    SupportRepId INT, 
    CONSTRAINT PK_Customer PRIMARY KEY (CustomerId)
);

INSERT INTO Customer (
    CustomerId, 
    FirstName, 
    LastName, 
    Company, 
    Address, 
    City, 
    State, 
    Country, 
    PostalCode, 
    Phone, 
    Fax, 
    Email, 
    SupportRepId
) 
VALUES 
(1, 'Luís', 'Gonçalves', 'Embraer - Empresa Brasileira de Aeronáutica S.A.', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', '+55 (12) 3923-5555', '+55 (12) 3923-5566', 'luisg@embraer.com.br', 3);


INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (2, 'Eduardo', 'Martins', 'Woodstock Discos', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 'Brazil', '01007-010', '+55 (11) 3033-5446', '+55 (11) 3033-4564', 'eduardo@woodstock.com.br', 4);

INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES
(3, 'Alexandre', 'Rocha', 'Banco do Brasil S.A.', 'Av. Paulista, 2022', 'São Paulo', 'SP', 'Brazil', '01310-200', '+55 (11) 3055-3278', '+55 (11) 3055-8131', 'alero@uol.com.br', 5);


INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES
(4, 'Roberto', 'Almeida', 'Riotur', 'Praça Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', '20040-020', '+55 (21) 2271-7000', '+55 (21) 2271-7070', 'roberto.almeida@riotur.gov.br', 3);

INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (5, 'Mark', 'Philips', 'Telus', '8210 111 ST NW', 'Edmonton', 'AB', 'Canada', 'T6G 2C7', '+1 (780) 434-4554', '+1 (780) 434-5565', 'mphilips12@shaw.ca', 5);

INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (6, 'Jennifer', 'Peterson', 'Rogers Canada', '700 W Pender Street', 'Vancouver', 'BC', 'Canada', 'V6C 1G8', '+1 (604) 688-2255', '+1 (604) 688-8756', 'jenniferp@rogers.ca', 3); 

SELECT CustomerID, FirstName, LastName, City, State, Country FROM Customer;

SELECT CustomerID, FirstName, LastName, City, State, Country 
FROM Customer 
ORDER BY FirstName;

SELECT * 
FROM Customer 
WHERE Country = "Canada"; 

SELECT * 
FROM Customer  
WHERE Country = "Canada" 
ORDER BY FirstName; 

SELECT FirstName, Country 
FROM Customer  
WHERE Country = "Canada"  
ORDER BY FirstName;


CREATE DATABASE shoopping_card_db;

USE shoopping_card_db;

CREATE TABLE customer (
    customer_id INT,
    name VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(100),
    phone VARCHAR(10),
    PRIMARY KEY (customer_id)
);
SHOW COLUMNS FROM customer;

CREATE TABLE product (
    product_id INT,
    name VARCHAR(100),
    price DECIMAL(8,2),
    description VARCHAR(255),
    PRIMARY KEY (product_id)
);

CREATE TABLE card_order (
    order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    status VARCHAR(100),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
)

SHOW COLUMNS FROM card_order;

SHOW TABLES;


CREATE DATABASE restaurant;

USE restaurant;

CREATE TABLE tbl( 
    table_id INT, 
    location VARCHAR(255), 
    PRIMARY KEY (table_id) 
); 

CREATE TABLE waiter( 
    waiter_id INT, 
    name VARCHAR(150), 
    contact_no VARCHAR(10), 
    shift VARCHAR(10), 
    PRIMARY KEY (waiter_id) 
); 

CREATE TABLE table_order( 
    order_id INT, 
    date_time DATETIME, 
    table_id INT, 
    waiter_id INT, 
    PRIMARY KEY (order_id), 
    FOREIGN KEY (table_id) REFERENCES tbl(table_id), 
    FOREIGN KEY (waiter_id) REFERENCES waiter(waiter_id) 
); 


CREATE TABLE customer( 
    customer_id INT, 
    name VARCHAR(100), 
    NIC_no VARCHAR(12), 
    contact_no VARCHAR(10), 
    PRIMARY KEY (customer_id) 
); 

CREATE TABLE reservation( 
    reservation_id INT, 
    date_time DATETIME, 
    no_of_pax INT, 
    order_id INT, 
    table_id INT, 
    customer_id INT, 
    PRIMARY KEY (reservation_id), 
    FOREIGN KEY (order_id) REFERENCES table_order(order_id), 
    FOREIGN KEY (table_id) REFERENCES tbl(table_id), 
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) 
); 


CREATE TABLE menu( 
    menu_id INT, 
    description VARCHAR(255), 
    availability INT, 
    PRIMARY KEY (menu_id) 
); 

CREATE TABLE menu_item( 
    menu_item_id INT, 
    description VARCHAR(255), 
    price FLOAT, 
    availability INT, 
    menu_id INT, 
    PRIMARY KEY (menu_item_id), 
    FOREIGN KEY (menu_id) REFERENCES menu(menu_id) 
);


CREATE TABLE order_menu_item( 
    order_id INT, 
    menu_item_id INT, 
    quantity INT, 
    PRIMARY KEY (order_id,menu_item_id), 
    FOREIGN KEY (order_id) REFERENCES table_order(order_id), 
    FOREIGN KEY (menu_item_id) REFERENCES menu_item(menu_item_id) 
); 

CREATE DATABASE IF NOT EXISTS Lucky_Shrub;

USE Lucky_Shrub; 


CREATE TABLE Orders (
    OrderID INT NOT NULL PRIMARY KEY, 
    ClientID VARCHAR(10),  
    ProductID VARCHAR(10),  
    Quantity   INT, 
    Cost DECIMAL(6,2)
); 

INSERT INTO Orders (OrderID, ClientID, ProductID , Quantity, Cost) VALUES (1, "Cl1", "P1", 10, 500), (2, "Cl2", "P2", 5, 100), (3, "Cl3", "P3", 20, 800), (4, "Cl4", "P4", 15, 150), (5, "Cl3", "P3", 10, 450), (6, "Cl2", "P2", 5, 800), (7, "Cl1", "P4", 22, 1200), (8, "Cl3", "P1", 15, 150), (9, "Cl1", "P1", 10, 500), (10, "Cl2", "P2", 5, 100); 

-- Task 1: Write a SQL statement to print all records of orders where the cost is not $250 or more.
-- The expected output result should be the same as the following screenshot 
-- (assuming that you have populated the Orders table with the same data set)
SELECT
 * 
FROM Orders
WHERE NOT (cost > 250);
;


-- Task 2: Write a SQL statement to print all records of orders where the cost is between $50 and $750.
-- The expected output result should be the same as the following screenshot 
-- (assuming that you have populated the orders table with the same data set)
SELECT * FROM Orders
WHERE cost BETWEEN 50 AND 750;


-- Task 3: Write a SQL statement to print all records of orders that have been placed by the client with the id of Cl3 and where the cost of the order is more than $100.
-- The expected output result should be the same as the following screenshot 
-- (assuming that you have populated the Orders table with the same data set)
SELECT * FROM Orders
WHERE clientID = 'Cl3'
AND cost > 100;


-- Task 4: Write a SQL statement to print all records of orders that have a product id of p1 or p2 and the order quantity is more than 2.
-- The expected output result should be the same as the following screenshot 
-- (assuming that you have populated the Orders table with the same data set)
SELECT * FROM Orders
WHERE productID IN ('P1', 'P2')
AND quantity > 2;


TRUNCATE TABLE Orders;

INSERT INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES (1, "Cl1", "P1", 10, 500), (2, "Cl2", "P2", 5, 100), (3, "Cl3", "P3", 20, 800), (4, "Cl4", "P4", 15, 150), (5, "Cl3", "P3", 10, 450), (6, "Cl2", "P2", 5, 800), (7, "Cl1", "P4", 22, 1200), (8, "Cl1", "P1", 15, 150);  

SELECT * FROM Orders;

-- Task 1: Write a SQL REPLACE statement that inserts two new orders with the following details:
-- Order 9 data:
-- OrderID = 9, ClientID = "Cl1", ProductID = "P1", Quantity = 10, Cost = 5000
-- Order 10 data:
-- OrderID = 10, ClientID = "Cl2", ProductID = "P2", Quantity = 5, Cost = 100
-- Once you have executed the SQL statement, you can select all available data in the Orders table. The expected output result should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)

REPLACE INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES (9, "Cl1",  "P1", 10, 5000);
REPLACE INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES (10, "Cl2", "P2", 5, 100);

SELECT * FROM Orders;


-- Task 2: Lucky Shrub have noticed that the cost of order number 9 is 5000$. 
-- This is a mistake. The order must cost 500$. You must help them to change it to 500$ by writing a relevant REPLCACE statement. 
-- Once you have executed the SQL statement, select all available data from the Orders table. 
-- The expected output result should be the same as the following screenshot 
-- (assuming that you have created and populated the tables correctly.)


REPLACE INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost)
SELECT OrderID, ClientID, ProductID, Quantity, 500
FROM Orders
WHERE OrderID = 9;


SELECT * FROM Orders;



CREATE DATABASE IF NOT EXISTS little_lemon; 

USE little_lemon; 

CREATE TABLE Starters(
    StarterName VARCHAR(100) NOT NULL PRIMARY KEY, 
    Cost Decimal(3,2), 
    StarterType VARCHAR(100) DEFAULT 'Mediterranean'
);

-- Task 1: Use the REPLACE statement to insert a new data record with the following details. 
-- The ‘StarterName’ = Cheese bread
-- The ‘Cost’ = 9.50 and 
-- The ‘StarterType’ = Indian 
REPLACE INTO Starters (
    StarterName,
    Cost,
    StarterType
) VALUES
(
    "Cheese bread",
    9.50,
    "Indian"
);

SELECT * FROM Starters;

-- Task 2: Use the REPLACE statement to change the cost of the Cheese bread from $9.50 to $9.75.
REPLACE INTO Starters (
    StarterName,
    Cost,
    StarterType
) VALUES
(
    "Cheese bread",
    9.75,
    "Indian"
);

SELECT * FROM Starters;


CREATE DATABASE Mangata_Gallo; 

USE Mangata_Gallo; 

-- Task 1: Create the Clients table with the following constraints.
-- ClientID: INT, NOT NULL and PRIMARY KEY
-- FullName: VARCHAR(100) NOT NULL
-- PhoneNumber: INT, NOT NULL and UNIQUE
-- The expected structure of the table should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)
CREATE TABLE Clients (
    ClientID INT NOT NULL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    PhoneNumber INT NOT NULL UNIQUE
);

SHOW COLUMNS FROM Clients;
-- Task 2: Create the Items table with the following attributes and constraints:
-- ItemID: INT, NOT NULL and PRIMARY KEY
-- ItemName: VARCHAR(100) and NOT NULL
-- Price: Decimal(5,2) and NOT NULL
-- The expected structure of the table should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)
CREATE TABLE Items (
    ItemID INT NOT NULL PRIMARY KEY,
    ItemName VARCHAR(100) NOT NULL,
    Price DECIMAL(5,2) NOT NULL
);

SHOW COLUMNS FROM 

-- Task 3: Create the Orders table with the following constraints.
-- OrderID: INT, NOT NULL and PRIMARY KEY
-- ClientID: INT, NOT NULL and FOREIGN KEY
-- ItemID: INT, NOT NULL and FOREIGN KEY
-- Quantity: INT, NOT NULL and maximum allowed items in each order 3 only
-- COST Decimal(6,2) and NOT NULL
-- The expected structure of the table should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)
CREATE TABLE Orders (
    OrderID INT NOT NULL PRIMARY KEY,
    ClientID INT NOT NULL,
    ItemID INT NOT NULL,
    Quantity INT NOT NULL CHECK(Quantity <=3),
    Cost DECIMAL(6,2) NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

SHOW COLUMNS FROM Orders;

CREATE DATABASE IF NOT EXISTS Mangata_Gallo;

USE Mangata_Gallo;

-- Task 1:  Create the Staff table with the following PRIMARY KEY and NOT NULL constraints:
-- Staff ID should be INT, NOT NULL and PRIMARY KEY
-- PhoneNumber should be INT, NOT NULL and UNIQUE 
-- FullName: VARCHAR(100) NOT NULL.
CREATE TABLE Staff (
    StaffID INT NOT NULL PRIMARY KEY, 
    PhoneNumber INT NOT NULL UNIQUE, 
    FullName VARCHAR(100) NOT NULL
);

SHOW COLUMNS FROM Staff;

-- Task 2: Create the 'ContractInfo' table with the following key and domain constraints:
-- Contract ID should be INT, NOT NULL and PRIMARY KEY
-- StaffID should be INT, NOT NULL. 
-- Salary should be DECIMAL (7,2), NOT NULL.
-- Location should be VARCHAR (50) NOT NULL with DEFAULT = "Texas". 
-- StaffType should be VARCHAR (20) NOT NULL and should accept a "Junior" or a "Senior" value.
CREATE TABLE ContractInfo (
    ContractID INT NOT NULL PRIMARY KEY, 
    StaffID INT NOT NULL, 
    Salary Decimal(7, 2) NOT NULL, 
    Location VARCHAR(50) NOT NULL DEFAULT "Texas", 
    StaffType VARCHAR(20) NOT NULL CHECK (StaffType = "Junior" OR StaffType = "Senior")
);

SHOW COLUMNS FROM ContractInfo;

-- Create a foreign key that links the Staff table with the ContractInfo table. In this example, you need to apply the referential integrity rule as follows:
-- Link each member of staff in the Staff table to a specific contract in the Contract Info table. 
-- Each staff ID existing in the 'Contract Info' table is expected to exist as well in the Staff table. 
-- The staff ID in the 'Contract Info' table should be defined as a foreign key to reference the Staff ID in the Staff table.
ALTER TABLE ContractInfo 
ADD CONSTRAINT FK_StaffID_ContractInfo
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID);

SHOW COLUMNS FROM ContractInfo;
