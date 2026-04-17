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
INSERT INTO clients (first_name, last_name, phone, email, address) VALUES
('Sarah', 'Johnson', '555-1234', 'sarah@email.com', '123 Main St'),
('Mike', 'Davis', '555-2345', 'mike@email.com', '456 Oak Ave'),
('Emily', 'Clark', '555-3456', 'emily@email.com', '789 Pine Rd'),
('James', 'Wilson', '555-4567', 'james@email.com', '321 Elm St'),
('Laura', 'Martinez', '555-5678', 'laura@email.com', '654 Maple Dr'),
('Tom', 'Anderson', '555-6789', 'tom@email.com', '987 Cedar Ln'),
('Nina', 'Thomas', '555-7890', 'nina@email.com', '147 Birch Blvd'),
('Chris', 'Jackson', '555-8901', 'chris@email.com', '258 Walnut Way'),
('Mia', 'White', '555-9012', 'mia@email.com', '369 Spruce St'),
('Paul', 'Harris', '555-0123', 'paul@email.com', '741 Willow Ct');

select * from clients;

INSERT INTO walkers (first_name, last_name, phone, availability) VALUES
('Lana', 'Brooks', '555-1111', 'Mon-Fri'),
('Jake', 'Rivera', '555-2222', 'Mon-Wed'),
('Amy', 'Nguyen', '555-3333', 'Thu-Sun'),
('Ben', 'Scott', '555-4444', 'Weekends'),
('Zoe', 'King', '555-5555', 'Mon-Fri');
SELECT * FROM walkers;

INSERT INTO dogs (client_id, name, breed, size, notes) VALUES
(1, 'Buddy', 'Golden Retriever', 'Large', 'Friendly'),
(1, 'Daisy', 'Beagle', 'Small', 'Pulls on leash'),
(2, 'Max', 'German Shepherd', 'Large', 'No other dogs'),
(3, 'Bella', 'Poodle', 'Medium', 'Needs slow walks'),
(4, 'Charlie', 'Bulldog', 'Medium', 'Loves treats'),
(5, 'Luna', 'Labrador', 'Large', 'Very energetic'),
(6, 'Rocky', 'Boxer', 'Large', 'Gentle giant'),
(7, 'Lola', 'Chihuahua', 'Small', 'Barks at strangers'),
(8, 'Cooper', 'Pug', 'Small', 'Slow walker'),
(9, 'Sadie', 'Dachshund', 'Small', 'Very friendly');
SELECT * FROM dogs;
INSERT INTO walks (walker_id, client_id, walk_date, start_time, duration_mins, price, status) VALUES
(1, 1, '2024-01-15', '08:00:00', 30, 20.00, 'completed'),
(1, 2, '2024-01-15', '09:00:00', 60, 35.00, 'completed'),
(2, 3, '2024-01-16', '10:00:00', 30, 20.00, 'completed'),
(3, 4, '2024-01-16', '11:00:00', 45, 28.00, 'completed'),
(1, 5, '2024-01-17', '08:30:00', 30, 20.00, 'scheduled'),
(2, 6, '2024-01-17', '09:30:00', 60, 35.00, 'scheduled'),
(4, 7, '2024-01-18', '07:00:00', 30, 20.00, 'scheduled'),
(5, 8, '2024-01-18', '08:00:00', 45, 28.00, 'scheduled'),
(1, 9, '2024-01-19', '09:00:00', 30, 20.00, 'cancelled'),
(3, 10, '2024-01-19', '10:00:00', 60, 35.00, 'scheduled');
SELECT * FROM walks;
INSERT INTO dog_walk (walk_id, dog_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);
SELECT * FROM dog_walk;
DROP TABLE dog_walk;   