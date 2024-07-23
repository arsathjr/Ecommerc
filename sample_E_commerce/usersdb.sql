users:

id (INT, primary key)
username (VARCHAR)
password (VARCHAR, hashed)
email (VARCHAR)
created_at (DATETIME)
products:

id (INT, primary key)
name (VARCHAR)
description (TEXT)
price (DECIMAL)
orders:

id (INT, primary key)
user_id (INT, foreign key to users.id)
total_amount (DECIMAL)
order_date (DATETIME)
order_items:

id (INT, primary key)
order_id (INT, foreign key to orders.id)
product_id (INT, foreign key to products.id)
quantity (INT)
price (DECIMAL)