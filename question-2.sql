-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName, e.LastName, i.InvoiceId
FROM employees AS e, customers AS c, invoices AS i
WHERE e.EmployeeId = c.SupportRepId
AND c.CustomerId = i.CustomerId
AND e.Title = 'Sales Support Agent'

