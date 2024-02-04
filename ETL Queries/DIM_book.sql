select 
	   [book_id]
      ,[title]
      ,[isbn13]
      ,l.[language_id]
      ,[num_pages]
      ,[publication_date]
      ,p.[publisher_id]

	from book b left join publisher p 
	on b.publisher_id = p.publisher_id left join book_language l
	on b.language_id = l.language_id

order by book_id 