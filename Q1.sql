
-- Q1. What is the total sales revenue generated by each store? 

SELECT 
    sales.Store_ID,
    SUM(products_products.Product_Price * sales.Units) AS revenue
FROM
    products_products
        JOIN
    sales ON products_products.Product_ID = sales.Product_ID
GROUP BY sales.Store_ID;
