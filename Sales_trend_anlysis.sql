CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    product_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO orders (order_id, order_date, product_id, amount) VALUES
(1, '2024-01-10', 101, 500.00),
(2, '2024-01-15', 102, 350.00),
(3, '2024-02-05', 101, 700.00),
(4, '2024-02-12', 103, 250.00),
(5, '2024-03-09', 104, 900.00),
(6, '2024-03-25', 102, 400.00),
(7, '2024-04-02', 101, 800.00),
(8, '2024-04-22', 104, 650.00),
(9, '2024-05-11', 103, 500.00),
(10, '2024-05-28', 102, 300.00),
(11, '2024-06-03', 101, 1000.00),
(12, '2024-06-17', 104, 450.00);

SELECT * FROM orders;

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY year, month;

SELECT * FROM orders LIMIT 10;

SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  amount
FROM orders
LIMIT 10;

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY year, month
ORDER BY year, month;

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2024
GROUP BY year, month
ORDER BY month;

SELECT * FROM orders;

SELECT * FROM orders ORDER BY order_date;











