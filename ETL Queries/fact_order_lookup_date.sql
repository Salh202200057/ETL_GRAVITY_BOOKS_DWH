
SELECT  [DateSK]
      ,cast([Date] as date) as 'Date'

  FROM [Gravity_Books_DWH].[dbo].[DimDate]


 SELECT
    Date AS ColumnValue,
    SQL_VARIANT_PROPERTY(Date, 'Basetype') AS BaseType, 
	SQL_VARIANT_PROPERTY(Date, 'precision') AS prec,
	SQL_VARIANT_PROPERTY(Date, 'Scale') AS Scale,
	SQL_VARIANT_PROPERTY(Date, 'MaxLength') AS MaxLength

	FROM [Gravity_Books_DWH].[dbo].[DimDate]


