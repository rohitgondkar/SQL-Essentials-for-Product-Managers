
-- Basic SELECT statement
SELECT * FROM customers;

-- Select specific columns
SELECT customer_id, customer_name, email FROM customers;

-- Filter rows with WHERE clause
SELECT * FROM orders WHERE order_date > '2023-01-01';

-- Sort results with ORDER BY
SELECT * FROM products ORDER BY price DESC;

-- Limit results with LIMIT
SELECT * FROM products LIMIT 10;
