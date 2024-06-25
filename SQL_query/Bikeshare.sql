
with cte as (
Select * from bike_share_yr_0
union 
Select * from bike_share_yr_1
)
select 
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
cogs,
riders*price as revenue,
riders*price - COGS*riders as profit
from cte as a
left join cost_table as b
on a.yr = b.yr


