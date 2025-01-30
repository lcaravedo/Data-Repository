Select
S2.ing_name,
s2.ordered_weight,
ing.ing_weight,
inv.quantity,
ing.ing_weight*inv.quantity as total_inv_weight,
(ing.ing_weight * inv.quantity)-s2.ordered_weight as remaining_weight
from (Select 
Expr2 as ing_id,
Expr3 as ing_name,
sum(ordered_weight) as ordered_weight
from 
stock1

group by Expr3, Expr2)s2

left join PS_inventory inv on inv.item_id = s2.ing_id
left join PS_ingredient ing on ing.ing_id = s2.ing_id

select * from PS_ingredient
select * from stock1