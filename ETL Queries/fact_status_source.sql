
SELECT 
    h.order_id,
	MAX(h.status_id) as status_id,
    MAX(CASE WHEN [status_id] = 1 THEN [status_date] END) AS 'order received',
    MAX(CASE WHEN [status_id] = 2 THEN [status_date] END) AS 'pending delivery',
    MAX(CASE WHEN [status_id] = 3 THEN [status_date] END) AS 'delivery in progress',
    MAX(CASE WHEN [status_id] = 4 THEN [status_date] END) AS 'delivered',
    MAX(CASE WHEN [status_id] = 5 THEN [status_date] END) AS 'canceled',
    MAX(CASE WHEN [status_id] = 6 THEN [status_date] END) AS 'returned'
FROM 
    [dbo].[order_history] AS h
WHERE 
h.status_date >= ? -- user variable st_last_load_date 
    AND h.status_date < ? -- system variable start_time
GROUP BY 
    h.order_id
ORDER BY 
    (h.order_id) ;