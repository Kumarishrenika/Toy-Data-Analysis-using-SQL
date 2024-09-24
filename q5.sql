-- Q5.How do monthly sales trends vary across different stores?

SELECT 
    DATE_FORMAT(sales.Date, '%Y-%m-01') AS sales_month,
    sales.Store_ID,
    SUM(sales.Units) AS total_units_sold,
    SUM(products_products.Product_Price * sales.Units) AS total_revenue
FROM 
    sales
JOIN 
    products_products ON sales.Product_ID = products_products.Product_ID
GROUP BY 
    sales_month, sales.Store_ID
ORDER BY 
    sales_month, sales.Store_ID;
    
