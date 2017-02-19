-- 1. `tracks_no_id.sql`: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name AS 'Track', al.Title AS 'Album', me.Name AS 'Media Type', ge.Name AS 'Genre'
FROM Track t, Album al, MediaType me, Genre ge
WHERE t.AlbumId = al.AlbumId
AND t.MediaTypeId = me.MediaTypeId
AND t.GenreId = ge.GenreId