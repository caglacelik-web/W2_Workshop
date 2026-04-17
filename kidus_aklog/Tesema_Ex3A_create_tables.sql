DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Walkers (
    walker_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Dogs (
    dog_id INT PRIMARY KEY,
    dog_name VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    weight DECIMAL(5,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_method VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Walks (
    walk_id INT PRIMARY KEY,
    dog_id INT,
    walker_id INT,
    walk_date DATE,
    walk_time TIME,
    duration_minutes INT,
    notes TEXT,
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);
