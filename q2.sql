-- Q2. Which products are the top-selling in terms of units sold?

SELECT 
    products_products.Product_Name,
    SUM(sales.Units) AS total_units_sold
FROM
    products_products
        JOIN
    sales ON products_products.Product_ID = sales.Product_ID
GROUP BY products_products.Product_ID , products_products.Product_Name
ORDER BY total_units_sold DESC;
