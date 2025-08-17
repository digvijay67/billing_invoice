USE Billinginvoice;
SELECT MIN(Price) AS SmallestPrice FROM Invoice_Item;

SELECT MAX(Price) AS HighestPrice FROM Invoice_Item;

SELECT COUNT(*) AS TotalCustomers FROM Customer;

SELECT InvoiceID, TotalAmount FROM Invoice WHERE TotalAmount > 5000;

SELECT i.InvoiceID, p.ProductName, ii.Quantity, ii.Price
FROM Invoice i
JOIN Invoice_Item ii ON i.InvoiceID = ii.InvoiceID
JOIN Product p ON ii.ProductID = p.ProductID;

SELECT AVG(Price) AS AveragePrice FROM Invoice_Item;

SELECT SUM(TotalAmount) AS TotalSales FROM Invoice;

SELECT DISTINCT c.Name, c.EmailID
FROM Customer c
JOIN Invoice i ON c.CustomerID = i.CustomerID
JOIN Payment p ON i.InvoiceID = p.InvoiceID;

SELECT i.InvoiceID, p.PaymentStatus, p.PaymentDate
FROM Invoice i
JOIN Payment p ON i.InvoiceID = p.InvoiceID;

SELECT * FROM Customer ORDER BY Name ASC;

SELECT InvoiceID, TotalAmount
FROM Invoice
ORDER BY TotalAmount DESC
LIMIT 3;

SELECT c.Name, COUNT(i.InvoiceID) AS TotalInvoices
FROM Customer c
JOIN Invoice i ON c.CustomerID = i.CustomerID
GROUP BY c.CustomerID;

UPDATE Payment SET PaymentStatus = 'Completed' WHERE PaymentID = 2;

DELETE FROM Invoice_Item WHERE InvoiceID = 4 AND ProductID = 5;

ALTER TABLE Product ADD COLUMN Stock INT DEFAULT 0;

ALTER TABLE Customer CHANGE Phone ContactNo VARCHAR(20);

DROP TABLE IF EXISTS TempTable;

CREATE VIEW CustomerInvoices AS
SELECT c.Name, i.InvoiceID, i.TotalAmount
FROM Customer c
JOIN Invoice i ON c.CustomerID = i.CustomerID;

SELECT * FROM CustomerInvoices;

SELECT i.InvoiceID, SUM(ii.Quantity * ii.Price) AS InvoiceTotal
FROM Invoice i
JOIN Invoice_Item ii ON i.InvoiceID = ii.InvoiceID
GROUP BY i.InvoiceID;