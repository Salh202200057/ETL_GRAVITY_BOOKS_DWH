SELECT 
      [last_load_orderdetails_bk]
  FROM [Gravity_Books_DWH].[dbo].[Meta_control_fact_table]
  where order_details = 'order'
