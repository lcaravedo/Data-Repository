
Select 
s1.product_name,
s1.ing_id,
s1.ing_name,
s1.ing_weight,
s1.ing_price,
s1.order_quantity,
s1.recipe_quantity,
s1.order_quantity*s1.recipe_quantity as ordered_weight,
s1.ing_price/s1.ing_weight as unit_cost,
(s1.order_quantity*s1.recipe_quantity)*(s1.ing_price/s1.ing_weight) AS ingredient_cost

from (SELECT
    o.product_id,
    i.sku, 
    i.product_name, 
	r.ing_id,
	r.quantity AS recipe_quantity,
	ing.ing_name,
    ing.ing_weight,
	ing.ing_price,
	SUM(o.quantity) AS order_quantity
	
	FROM 
PS_Order o
LEFT JOIN PS_Products i ON o.product_id = i.product_name
LEFT JOIN PS_Recipe r ON i.sku = r.recipe_id
LEFT JOIN PS_ingredient ing ON ing.ing_id = r.ing_id 

GROUP BY o.product_id, i.sku, i.product_name, r.ing_id, r.quantity,ing.ing_name,ing.ing_weight ,ing.ing_price ) s1


