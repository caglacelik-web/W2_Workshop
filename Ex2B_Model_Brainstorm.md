# Requirements and Conceptual Model

Group Members:
- Cagla Celik
- Fuat Baslar


The end user is Lana. Also the owner.

She needs to:
- keep track of customers
- keep track of dogs
- schedule dog walks
- assign walkers to walks
- record payments

Important categories of data:
- customers
	- customer_id
	- first_name
	- last_name
	- phone
	- email
	- address
- dogs
	- dog_id
	- dog_name
	- breed
	- age
	-weight
	- customer_id
- walkers
	- walker_id
	- first_name
	- last_name
	- phone
	- email
- walks
	- walk_id
	- dog_id
	- walker_id
	- walk_date
	- walk_time
	- duration_minutes
	- notes
- payments
	- payment_id
	- customer_id
	- amount
	- payment_date
	- payment_method

# Logical Model

Main entities:
- Customers
- Dogs
- Walkers
- Walks
- Payments

Customers
- customer_id (PK)
- first_name
- last_name
- phone
- email
- address

Dogs
- dog_id (PK)
- dog_name
- breed
- age
- weight
- customer_id 

Walkers
- walker_id (PK)
- first_name
- last_name
- phone
- email

Walks
- walk_id (PK)
- dog_id 
- walker_id 
- walk_date
- walk_time
- duration_minutes
- notes

Payments
- payment_id (PK)
- customer_id 
- amount
- payment_date
- payment_method

Relationships:
- One customer can have many dogs.
- One dog belongs to one customer.
- One dog can have many walks.
- One walker can complete many walks.
- One customer can make many payments.

Possible many-to-many relationship:
- If multiple dogs can be included in one group walk, and each dog can join many group walks  then a resolving table such as Walk_Dogs may be needed.







