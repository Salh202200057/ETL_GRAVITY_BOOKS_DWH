SELECT  [history_id]
      ,[order_id]
      ,[status_id]
      ,[status_date]
  FROM [gravity_books].[dbo].[order_history]
  where order_id = 1

  insert into  order_history (order_id,status_id, status_date)

  values (1,4,GETDATE())

  delete from order_history 
  where order_id =  1 and status_id = 4