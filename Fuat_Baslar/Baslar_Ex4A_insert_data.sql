USE lana_dog_walking;

-- ==========================================
-- 1. INDEPENDENT TABLES (Insert these first)
-- ==========================================

-- Insert Customers (10 Customers)
INSERT INTO Customers (customer_id, first_name, last_name, phone, email, address, city, emergency_contact) VALUES
(1, 'Sarah', 'Johnson', '555-0101', 'sarah.j@email.com', '123 Maple St', 'Chicago', 'Mike J. - 555-0102'),
(2, 'David', 'Park', '555-0202', 'dpark@email.com', '456 Oak Ave', 'Chicago', 'Lisa Park - 555-0203'),
(3, 'Maria', 'Gonzalez', '555-0303', 'mgonzalez@email.com', '789 Pine Rd', 'Evanston', 'Carlos G. - 555-0304'),
(4, 'James', 'Wilson', '555-0404', 'jwilson@email.com', '101 Elm St', 'Chicago', 'Mary W. - 555-0405'),
(5, 'Emily', 'Davis', '555-0505', 'edavis@email.com', '202 Cedar Ln', 'Evanston', 'Tom D. - 555-0506'),
(6, 'Michael', 'Brown', '555-0606', 'mbrown@email.com', '303 Birch Ct', 'Chicago', 'Sarah B. - 555-0607'),
(7, 'Jessica', 'Taylor', '555-0707', 'jtaylor@email.com', '404 Walnut Dr', 'Chicago', 'Paul T. - 555-0708'),
(8, 'Thomas', 'Anderson', '555-0808', 'tanderson@email.com', '505 Ash Way', 'Evanston', 'Lisa A. - 555-0809'),
(9, 'Ashley', 'Thomas', '555-0909', 'athomas@email.com', '606 Cherry St', 'Chicago', 'Mark T. - 555-0910'),
(10, 'Robert', 'Jackson', '555-1010', 'rjackson@email.com', '707 Spruce Ave', 'Chicago', 'Nancy J. - 555-1011');

-- Insert Walkers (4 Walkers)
INSERT INTO Walkers (walker_id, first_name, last_name, phone, email, is_active) VALUES
(1, 'Alice', 'Smith', '555-1111', 'alice@walk.com', 1),
(2, 'Bob', 'Jones', '555-2222', 'bob@walk.com', 1),
(3, 'Charlie', 'Day', '555-3333', 'charlie@walk.com', 1),
(4, 'Diana', 'Prince', '555-4444', 'diana@walk.com', 1);

-- ==========================================
-- 2. DEPENDENT TABLES (Require existing IDs)
-- ==========================================

-- Insert Dogs (10 Dogs - Linked to customers)
INSERT INTO Dogs (dog_id, dog_name, breed, age, weight, next_walk, customer_id) VALUES
(101, 'Buddy', 'Golden Retriever', 3, 30.50, '2026-04-20 09:00:00', 1),
(102, 'Max', 'German Shepherd', 2, 35.00, '2026-04-21 14:30:00', 2),
(103, 'Luna', 'Poodle', 4, 12.50, '2026-04-20 10:00:00', 3),
(104, 'Charlie', 'Beagle', 5, 20.00, '2026-04-22 09:00:00', 4),
(105, 'Daisy', 'Bulldog', 3, 40.00, '2026-04-21 15:00:00', 5),
(106, 'Cooper', 'Boxer', 4, 55.00, '2026-04-20 08:30:00', 6),
(107, 'Bella', 'Shih Tzu', 2, 10.50, '2026-04-22 10:00:00', 7),
(108, 'Rocky', 'Rottweiler', 6, 85.00, '2026-04-21 16:30:00', 8),
(109, 'Stella', 'French Bulldog', 1, 18.50, '2026-04-23 11:00:00', 9),
(110, 'Duke', 'Doberman', 4, 70.00, '2026-04-20 17:00:00', 10);

-- Insert Payments (10 Payments)
INSERT INTO Payments (payment_id, customer_id, amount, payment_date, payment_method) VALUES
(1001, 1, 50.00, '2026-04-15', 'Credit Card'),
(1002, 2, 35.00, '2026-04-16', 'Venmo'),
(1003, 3, 45.00, '2026-04-17', 'Cash'),
(1004, 4, 60.00, '2026-04-18', 'Zelle'),
(1005, 5, 30.00, '2026-04-19', 'Credit Card'),
(1006, 6, 75.00, '2026-04-15', 'Venmo'),
(1007, 7, 25.00, '2026-04-16', 'Cash'),
(1008, 8, 80.00, '2026-04-17', 'Credit Card'),
(1009, 9, 40.00, '2026-04-18', 'Zelle'),
(1010, 10, 55.00, '2026-04-19', 'Credit Card');

-- Insert Walks (10 Walks)
INSERT INTO Walks (walk_id, dog_id, walker_id, walk_date, walk_time, duration_minutes, notes, status) VALUES
(5001, 101, 1, '2026-04-15', '09:00:00', 45, 'Buddy was very energetic today.', 'Completed'),
(5002, 102, 2, '2026-04-16', '14:30:00', 60, 'Walked in the big park.', 'Completed'),
(5003, 103, 1, '2026-04-20', '10:00:00', 30, 'Upcoming scheduled walk.', 'Pending'),
(5004, 104, 3, '2026-04-17', '08:00:00', 45, 'Charlie sniffed everything.', 'Completed'),
(5005, 105, 4, '2026-04-18', '15:30:00', 30, 'Daisy got tired quickly.', 'Completed'),
(5006, 106, 2, '2026-04-19', '09:00:00', 60, 'Cooper ran around a lot.', 'Completed'),
(5007, 107, 1, '2026-04-22', '10:00:00', 30, 'Bella needs a shorter leash.', 'Pending'),
(5008, 108, 3, '2026-04-21', '16:30:00', 60, 'Rocky was a good boy.', 'Pending'),
(5009, 109, 4, '2026-04-23', '11:00:00', 45, 'Stella played with other dogs.', 'Pending'),
(5010, 110, 2, '2026-04-20', '17:00:00', 60, 'Duke enjoyed the sunset walk.', 'Pending');