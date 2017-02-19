-- 1. `line_item_track.sql`: Provide a query that includes the purchased track name with each invoice line item.

SELECT il.InvoiceId, il.InvoiceLineId, t.Name
FROM InvoiceLine il, Track t
WHERE il.TrackId = t.TrackId