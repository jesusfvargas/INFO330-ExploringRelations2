-- What was the most purchased track of 2013?
SELECT t.Name AS 'Track Name', count(t.name)  AS timesPurchased, substr(i.InvoiceDate, 1, 4)
FROM invoice_items AS item, invoices AS i, tracks as t
WHERE t.TrackId = item.TrackId
AND i.InvoiceId = item.InvoiceId
AND substr(i.InvoiceDate, 1, 4) = '2013'
GROUP BY t.Name
ORDER BY timesPurchased DESC
LIMIT 1;
