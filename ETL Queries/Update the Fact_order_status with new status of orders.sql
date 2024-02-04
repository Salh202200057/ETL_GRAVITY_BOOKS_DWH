
UPDATE [dbo].[FACT_order_status]
SET 
    [created_at] = ?,
    [order_cancelled] = ISNULL([order_cancelled], ?),
    [order_delivered] = ISNULL([order_delivered], ?),
    [order_delivery_in_progress] = ISNULL([order_delivery_in_progress], ?),
    [order_pending_delivery] = ISNULL([order_pending_delivery], ?),
    [order_recieved] = ISNULL([order_recieved], ?),
    [order_returned] = ISNULL([order_returned], ?),
    [status_fk] = ? 
WHERE 
    [order_bk] = ?;