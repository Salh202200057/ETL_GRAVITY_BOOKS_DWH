SELECT  [language_sk]
      ,[language_bk]

  FROM [Gravity_Books_DWH].[dbo].[DIM_language]
  where is_current = 1
