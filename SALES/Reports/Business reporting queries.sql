-------------------------------------------------------------
-- Customer sales report 
-----------------------------------------------------------

SELECT
    c.customer_name,
    c.city,
    COUNT(s.sales_id) AS total_orders,
    SUM(s.sales_amount) AS total_sales,
    CASE
        WHEN SUM(s.sales_amount) > 5000 THEN 'VIP'
        ELSE 'REGULAR'
    END AS customer_type
FROM customers c
JOIN sales s
    ON c.customer_id = s.customer_id
GROUP BY
    c.customer_name,
    c.city
ORDER BY
    total_sales DESC;

-------------------------------------------------------------
-- Product sales report 
---------------------------------------------------------------

SELECT
    p.product_name,
    p.category,
    COUNT(s.sales_id) AS total_orders,
    SUM(s.sales_amount) AS total_sales,
    CASE
        WHEN SUM(s.sales_amount) > 8000 THEN 'HIGH'
        WHEN SUM(s.sales_amount) BETWEEN 3000 AND 8000 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS product_performance
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY
    p.product_name,
    p.category
ORDER BY
    total_sales DESC;


----------------------------------------------------------------------
    -- Monthly sales report (Medium level)
------------------------------------------------------------------------------
    
SELECT
    TO_CHAR(sales_date, 'YYYY-MM') AS sales_month,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY
    TO_CHAR(sales_date, 'YYYY-MM')
ORDER BY
    sales_month;

