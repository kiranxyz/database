INSERT INTO Users (Name, Email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Brown', 'charlie@example.com');

INSERT INTO Products (Name, Price) VALUES
('Laptop', 1200.00),
('Smartphone', 800.00),
('Headphones', 150.00),
('Monitor', 300.00),
('Keyboard', 50.00);

INSERT INTO Orders (UserID, OrderDate) VALUES
(1, '2024-12-01 10:00:00'),
(2, '2024-12-02 14:30:00'),
(3, '2024-12-03 09:15:00'),
(1, '2024-12-04 12:45:00');

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, TotalPrice) VALUES
(1, 1, 1, 1200.00), 
(1, 3, 2, 300.00),  
(2, 2, 1, 800.00),  
(3, 4, 2, 600.00),  
(4, 5, 3, 150.00);
