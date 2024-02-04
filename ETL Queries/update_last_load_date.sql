
update [dbo].[Meta_control_fact_table]
	set [last_load_date] = ?
	, [last_load_orderdetails_bk]= ?
	where [order_details] = 'order'