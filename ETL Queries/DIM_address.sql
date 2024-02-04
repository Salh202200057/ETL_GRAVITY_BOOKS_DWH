
select 
	a.address_id,
	c.country_id,
	a.street_number,
	a.street_name,
	a.city 
	
from address a left join country c 
on a.country_id = c.country_id 
order by a.address_id 