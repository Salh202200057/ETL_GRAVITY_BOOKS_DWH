SELECT [bookid_sk]
      ,[bookid_bk]

  FROM [Gravity_Books_DWH].[dbo].[DIM_book]
  where is_current = 1