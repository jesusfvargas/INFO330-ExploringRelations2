-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName, e.LastName AS FullName, SUM(i.Total) AS TotalSales
FROM employees AS e, customers AS c, invoices AS i
WHERE e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId
AND e.Title = 'Sales Support Agent'
AND strftime('%Y', i.InvoiceDate) = '2010'
GROUP BY FullName
ORDER BY TotalSales DESC
LIMIT 1;