DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE walkers (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    availability VARCHAR(100)
);

CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    breed VARCHAR(100),
    size VARCHAR(20),
    notes TEXT,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);
CREATE TABLE walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    walker_id INT NOT NULL,
    client_id INT NOT NULL,
    walk_date DATE NOT NULL,
    start_time TIME,
    duration_mins INT,
    price DECIMAL(6,2),
    status VARCHAR(20),
    FOREIGN KEY (walker_id) REFERENCES walkers(walker_id),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);
CREATE TABLE dog_walk (
    dog_walk_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_id INT NOT NULL,
    dog_id INT NOT NULL,
    FOREIGN KEY (walk_id) REFERENCES walks(walk_id),
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id)
);