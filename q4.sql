-- Q4. What are the current inventory levels for each product at each store?

SELECT 
    inventory_inventory.Store_ID,
    products_products.Product_ID,
    products_products.Product_Name,
    inventory_inventory.Stock_On_Hand
FROM 
    inventory_inventory
JOIN 
    products_products ON inventory_inventory.Product_ID = products_products.Product_ID
ORDER BY 
    inventory_inventory.Store_ID, products_products.Product_Name;
