SELECT 
    o.OrderID,  -- Assuming OrderID is the correct identifier for the order
    i.Product_price, 
    o.quantity,
    i.Product_category,
    o.Product_id,
    o.date,
    o.Delivery_address,
    c.Delivery_City,
    c.Zip_Code
FROM PS_Order o
LEFT JOIN PS_Products i 
    ON o.Product_id = i.product_name  -- Corrected the join condition to match Product_id
LEFT JOIN PS_Customer c 
    ON o.Customer_ID = c.CustomerID;  -- Corrected the join condition to use Customer_ID