USE lana_dog_walking;

INSERT INTO Customers (first_name, last_name, phone, email, address)
VALUES
('John', 'Doe', '123-456-7890', 'john@email.com', '123 Main St'),
('Jane', 'Smith', '987-654-3210', 'jane@email.com', '456 Oak Ave');

INSERT INTO Walkers (first_name, last_name, phone, email)
VALUES
('Mike', 'Johnson', '111-222-3333', 'mike@email.com'),
('Sara', 'Lee', '444-555-6666', 'sara@email.com');

INSERT INTO Dogs (dog_name, breed, age, weight, customer_id)
VALUES
('Buddy', 'Golden Retriever', 3, 65.5, 1),
('Max', 'Bulldog', 5, 50.0, 2);

INSERT INTO Payments (customer_id, amount, payment_date, payment_method)
VALUES
(1, 25.00, '2026-04-15', 'Cash'),
(2, 30.00, '2026-04-15', 'Card');

INSERT INTO Walks (dog_id, walker_id, walk_date, walk_time, duration_minutes, notes)
VALUES
(1, 1, '2026-04-15', '10:00:00', 30, 'Morning walk'),
(2, 2, '2026-04-15', '11:00:00', 45, 'Park walk');

SELECT * FROM Customers;
SELECT * FROM Dogs;
SELECT * FROM Walks;