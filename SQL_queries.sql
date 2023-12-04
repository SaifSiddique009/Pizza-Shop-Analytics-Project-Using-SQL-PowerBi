
USE pizza_db;

SELECT * FROM pizza_sales;

-- Total Revenue
SELECT ROUND(SUM(total_price), 2) AS Total_Revenue
FROM pizza_sales;

-- Average Order Value or Price
SELECT ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS Average_Order_Price
FROM pizza_sales;

-- Total Pizza Sold
SELECT SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales;

-- Average Pizza Per Order
SELECT 
	CAST((SUM(quantity) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2))) AS DECIMAL(10,2)) AS Average_pizza_per_order
FROM pizza_sales;

-- Daily Trend (How many pizzas sales in each weekday?)
SELECT 
	DATENAME(DW, order_date) AS Week_day,
	COUNT(DISTINCT order_id) AS Total_order
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)
ORDER BY Total_order DESC;

-- Monthly Trend (What is the frequency of pizza sales in each month?)
SELECT 
	DATENAME(MONTH, order_date) AS Name_of_month,
	COUNT(DISTINCT order_id) AS Total_order
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_order DESC;

-- Percentage of sales by pizza category

SELECT 
	pizza_category AS Pizza_category,
	ROUND(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales), 2) AS Percentage_of_sales
FROM pizza_sales AS ps
GROUP BY pizza_category
ORDER BY Percentage_of_sales DESC;

-- Percentage of sales by pizza size

SELECT 
	pizza_size AS Pizza_size,
	ROUND(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales), 2) AS Percentage_of_sales
FROM pizza_sales AS ps
GROUP BY pizza_size
ORDER BY Percentage_of_sales DESC;

-- Total pizza sold by pizza category
SELECT 
	pizza_category AS Pizza_category,
	COUNT(quantity) AS Total_quantity_sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_quantity_sold;

-- Top 5 pizza by revenue
SELECT 
	TOP 5 pizza_name AS Pizza_name,
	CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_revenue
FROM pizza_sales
GROUP BY pizza_name 
ORDER BY Total_revenue DESC;

-- Bottom 5 pizza by revenue
SELECT 
	TOP 5 pizza_name AS Pizza_name,
	CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_revenue
FROM pizza_sales
GROUP BY pizza_name 
ORDER BY Total_revenue ASC;

-- Top 5 pizza by quantity
SELECT
	TOP 5 pizza_name AS Pizza_name,
	SUM(quantity) AS Total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_quantity DESC;

-- Bottom 5 pizza by quantity
SELECT
	TOP 5 pizza_name AS Pizza_name,
	SUM(quantity) AS Total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_quantity ASC;

-- Top 5 pizza by total_order
SELECT
	TOP 5 pizza_name AS Pizza_name,
	COUNT(DISTINCT order_id) AS Total_order
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_order DESC;

-- Bottom 5 pizza by total_order
SELECT
	TOP 5 pizza_name AS Pizza_name,
	COUNT(DISTINCT order_id) AS Total_order
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_order ASC;
