
-- Segment customers by total spending
SELECT 
    customer_id, 
    customer_name, 
    SUM(order_total) AS total_spent,
    CASE 
        WHEN SUM(order_total) > 1000 THEN 'High Value'
        WHEN SUM(order_total) BETWEEN 500 AND 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM orders
GROUP BY customer_id, customer_name
ORDER BY total_spent DESC;

-- Identify repeat customers
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;
