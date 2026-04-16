DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

-- ==========================================
-- 1. INDEPENDENT TABLES (Create these first)
-- ==========================================

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),                 -- Added for Question 4
    emergency_contact VARCHAR(100)    -- Additional emergency contact detail
);

CREATE TABLE Walkers (
    walker_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    is_active BOOLEAN DEFAULT 1       -- Indicates if the walker is currently employed
);

-- ==========================================
-- 2. DEPENDENT TABLES (Contain Foreign Keys)
-- ==========================================

CREATE TABLE Dogs (
    dog_id INT PRIMARY KEY,
    dog_name VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    weight DECIMAL(5,2),
    next_walk DATETIME,               -- Reminder for the next scheduled walk
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(8,2),
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
    duration_minutes INT DEFAULT 30,
    notes TEXT,
    status VARCHAR(50),               -- Walk status (e.g., Completed, Pending, Cancelled)
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walkers(walker_id)
);