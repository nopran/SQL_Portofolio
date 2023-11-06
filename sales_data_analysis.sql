-- SQL script for analyzing sales data

-- Calculate total sales by category
SELECT category, SUM(amount) AS total_sales
FROM sales
GROUP BY category;

-- Find top 10 customers by total purchase amount
SELECT customer_id, SUM(amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- Daily sales trend over the last month
SELECT date, SUM(amount) AS daily_sales
FROM sales
WHERE date BETWEEN CURDATE() - INTERVAL 1 MONTH AND CURDATE()
GROUP BY date
ORDER BY date;
