select 
	
	co.order_id, 
	co.order_date, 
	sm.method_id, 
	c.customer_id, 
	b.book_id, 
	ol.price, 
	sm.cost , 
	ol.price + sm.cost as total_price 

	from cust_order co left join shipping_method sm 
	on co.shipping_method_id = sm.method_id left join 
	customer c on c.customer_id = co.customer_id left join 
	order_line ol on co.order_id = ol.order_id left join 
	book b on ol.book_id = b.book_id 

	where co.order_id > -- user variable last order_id
	and co.order_date >= -- user variable last_load_date 
	and co.order_date < --system variable start_time 


