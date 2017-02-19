-- 1. `top_3_artists.sql`: Provide a query that shows the top 3 best selling artists.

SELECT ar.Name, count(il.TrackId) AS 'Tracks Sold'
FROM Artist ar, Album al, InvoiceLine il, Track t
WHERE il.TrackId = t.TrackId
AND t.AlbumId = al.AlbumId
AND ar.ArtistId = al.ArtistId
GROUP BY ar.ArtistId
ORDER BY count(il.TrackId) DESC
LIMIT 3