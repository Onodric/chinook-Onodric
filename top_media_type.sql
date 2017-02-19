-- 1. `top_media_type.sql`: Provide a query that shows the most purchased Media Type.

SELECT me.Name, count(il.TrackId) AS 'Times Purchased'
FROM MediaType me, InvoiceLine il, Track t
WHERE il.TrackId = t.TrackId
AND t.MediaTypeId = me.MediaTypeId
GROUP BY me.MediaTypeId
ORDER BY count(il.TrackId) DESC
LIMIT 1