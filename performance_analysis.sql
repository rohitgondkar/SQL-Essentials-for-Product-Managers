
-- Top-performing products
SELECT product_id, product_name, SUM(quantity) AS total_sold
FROM order_details
GROUP BY product_id, product_name
ORDER BY total_sold DESC
LIMIT 10;

-- Revenue by category
SELECT category_id, category_name, SUM(order_total) AS category_revenue
FROM orders
JOIN products ON orders.product_id = products.product_id
JOIN categories ON products.category_id = categories.category_id
GROUP BY category_id, category_name
ORDER BY category_revenue DESC;

-- Monthly trend of top product
SELECT 
    DATE_TRUNC('month', order_date) AS month, 
    product_name, 
    SUM(quantity) AS total_sold
FROM order_details
JOIN products ON order_details.product_id = products.product_id
WHERE product_name = 'Product A'
GROUP BY month, product_name
ORDER BY month;
