-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.name AS 'TrackName',  art.name AS 'Artist Name'
FROM invoice_items AS i, tracks AS t, albums AS alb, artists AS art
WHERE i.TrackId = t.TrackId
AND t.AlbumId = alb.AlbumId
AND alb.ArtistId = art.ArtistId;
