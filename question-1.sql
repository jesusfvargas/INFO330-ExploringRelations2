-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT c.FirstName, c.LastName AS FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM customers AS c, Invoices AS i
WHERE c.CustomerId =i.CustomerId
AND c.Country = 'Brazil';
