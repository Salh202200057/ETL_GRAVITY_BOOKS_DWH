SELECT  [shippingmethod_sk]
      ,[shippingmethod_bk]

  FROM [Gravity_Books_DWH].[dbo].[DIM_shipping_method]
  where is_current = 1