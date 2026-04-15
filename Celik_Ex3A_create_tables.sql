DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Walkers (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    age INT,
    weight DECIMAL(5,2),
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    walker_id INT NOT NULL,
    walk_date DATE NOT NULL,
    walk_time TIME NOT NULL,
    duration_minutes INT NOT NULL,
    notes VARCHAR(255),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);