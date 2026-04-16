USE lana_dog_walking;

-- ==========================================
-- 1. INDEPENDENT TABLES (Insert these first)
-- ==========================================

-- Insert Customers
INSERT INTO Customers (customer_id, first_name, last_name, phone, email, address, city, emergency_contact) VALUES
(1, 'Sarah', 'Johnson', '555-0101', 'sarah.j@email.com', '123 Maple St', 'Chicago', 'Mike J. - 555-0102'),
(2, 'David', 'Park', '555-0202', 'dpark@email.com', '456 Oak Ave', 'Chicago', 'Lisa Park - 555-0203'),
(3, 'Maria', 'Gonzalez', '555-0303', 'mgonzalez@email.com', '789 Pine Rd', 'Evanston', 'Carlos G. - 555-0304');

-- Insert Walkers
INSERT INTO Walkers (walker_id, first_name, last_name, phone, email, is_active) VALUES
(1, 'Alice', 'Smith', '555-1111', 'alice@walk.com', 1),
(2, 'Bob', 'Jones', '555-2222', 'bob@walk.com', 1);

-- ==========================================
-- 2. DEPENDENT TABLES (Require existing IDs)
-- ==========================================

-- Insert Dogs (Linked to customers 1, 2, and 3)
INSERT INTO Dogs (dog_id, dog_name, breed, age, weight, next_walk, customer_id) VALUES
(101, 'Buddy', 'Golden Retriever', 3, 30.50, '2026-04-20 09:00:00', 1),
(102, 'Max', 'German Shepherd', 2, 35.00, '2026-04-21 14:30:00', 2),
(103, 'Luna', 'Poodle', 4, 12.50, '2026-04-20 10:00:00', 3);

-- Insert Payments (Linked to customers 1 and 2)
INSERT INTO Payments (payment_id, customer_id, amount, payment_date, payment_method) VALUES
(1001, 1, 50.00, '2026-04-15', 'Credit Card'),
(1002, 2, 35.00, '2026-04-16', 'Venmo');

-- Insert Walks (Linked to dogs and walkers)
INSERT INTO Walks (walk_id, dog_id, walker_id, walk_date, walk_time, duration_minutes, notes, status) VALUES
(5001, 101, 1, '2026-04-15', '09:00:00', 45, 'Buddy was very energetic today.', 'Completed'),
(5002, 102, 2, '2026-04-16', '14:30:00', 60, 'Walked in the big park.', 'Completed'),
(5003, 103, 1, '2026-04-20', '10:00:00', 30, 'Upcoming scheduled walk.', 'Pending');