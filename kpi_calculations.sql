
-- Calculate revenue
SELECT SUM(order_total) AS total_revenue FROM orders;

-- Calculate churn rate
SELECT COUNT(*) AS churned_customers FROM customers WHERE status = 'inactive';

-- Monthly revenue growth
SELECT 
    DATE_TRUNC('month', order_date) AS month, 
    SUM(order_total) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;
