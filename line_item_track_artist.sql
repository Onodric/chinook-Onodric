-- 1. `line_item_track_artist.sql`: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT il.InvoiceId, il.InvoiceLineId, t.Name, ar.Name
FROM InvoiceLine il, Track t, Artist ar, Album al
WHERE il.TrackId = t.TrackId
AND t.AlbumId = al.AlbumId
AND al.ArtistId = ar.ArtistId