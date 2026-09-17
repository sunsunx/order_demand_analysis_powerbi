Order Demand and Sales Performance Analysis
Database: SQLite
Table: sales

1. Data Quality Check
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders
FROM sales;

SELECT
    order_id,
    COUNT(*) AS occurrences
FROM sales
GROUP BY order_id
HAVING COUNT(*) > 1;

2. Key Performance Indicators
SELECT
    ROUND(SUM(revenue), 2) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS units_sold,
    ROUND(
        SUM(revenue) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM sales;

3. Revenue by Region
SELECT
    region,
    ROUND(SUM(revenue), 2) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

4. Revenue by Category
SELECT
    category,
    ROUND(SUM(revenue), 2) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

5. Top Products by Revenue
SELECT
    product,
    category,
    ROUND(SUM(revenue), 2) AS total_revenue,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY product, category
ORDER BY total_revenue DESC;

6. Monthly Revenue Trend
SELECT
    strftime('%Y-%m', order_date) AS month,
    ROUND(SUM(revenue), 2) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY month
ORDER BY month;

7. Discount Analysis by Category
SELECT
    category,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percentage,
    ROUND(SUM(revenue), 2) AS total_revenue,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;
