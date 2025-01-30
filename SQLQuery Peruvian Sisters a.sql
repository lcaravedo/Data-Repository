select 
r.date,
s.Worker_name,
s.Hourly_Rate,
sh.start_time,
sh.end_time,
    -- Calculate the hours worked in the shift
    DATEDIFF(MINUTE, sh.start_time, sh.end_time) / 60.0 AS hour_in_shift,
    -- Calculate the staff cost
    (DATEDIFF(MINUTE, sh.start_time, sh.end_time) / 60.0) * s.Hourly_Rate AS staff_cost
from PS_rota r 
left join PS_staff s on r.staff_id = s.Worker_id
left join PS_shift sh on r.Shift_id = sh.Shift_id



select * from PS_staff
select * from PS_rota
select * from PS_shift