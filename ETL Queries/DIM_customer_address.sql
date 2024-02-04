select  
	c.customer_id, 
	a.address_id,
	ads.status_id 

	from customer c left join customer_address ca on 
	c.customer_id = ca.customer_id left join address a 
	on ca.address_id = a.address_id left join address_status ads 
	on ca.status_id = ads.status_id 
	order by c.customer_id