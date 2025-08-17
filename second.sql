USE Billinginvoice;

INSERT INTO Customer (Name, EmailID, Phone) VALUES
('Digvijaysing', 'Digvijaysing@gmail.com', '9881017423'),
('Bhakti kale', 'bskpatil@gmail.com', '9999999999'),
('Saurabh Nikam', 'saurabhnikam@gmail.com', '9123456458'),
('Sejal Patil', 'sejalpatil@gmail.com', '9090903564');

INSERT INTO Product (ProductName, Description) VALUES
('Laptop', 'HP Pavilion 15'),
('Mobile', 'Samsung Galaxy S22'),
('Headphones', 'Oneplus nord buds 3 pro'),
('Keyboard', 'Mechanical RGB Keyboard'),
('Mouse', 'Logitech Wireless Mouse');

INSERT INTO Invoice (CustomerID, InvoiceDate, TotalAmount) VALUES
(1, '2025-08-01', 80000.00),
(2, '2025-08-03', 45000.00),
(3, '2025-08-05', 1500.00),
(1, '2025-08-10', 2500.00);

INSERT INTO Invoice_Item (InvoiceID, ProductID, Quantity, Price) VALUES
(1, 1, 1, 75000.00),  -- Laptop
(1, 5, 1, 5000.00),   -- Mouse
(2, 2, 1, 42000.00),  -- Mobile
(2, 3, 1, 3000.00),   -- Headphones
(3, 4, 1, 1500.00);   -- Keyboard

INSERT INTO Payment (InvoiceID, PaymentDate, PaymentMode, PaymentStatus) VALUES
(1, '2025-08-02', 'Credit Card', 'Completed'),
(2, '2025-08-04', 'UPI', 'Pending'),
(3, '2025-08-06', 'Cash', 'Completed'),
(4, '2025-08-11', 'Net Banking', 'Completed');

SELECT * FROM Customer;