SELECT  [customer_sk]
      ,[customer_bk]

  FROM [Gravity_Books_DWH].[dbo].[DIM_customer]
  where is_current = 1 
