-- Total spending by each user
SELECT u.Name, SUM(od.TotalPrice) AS TotalSpending
FROM Users u
JOIN Orders o ON u.UserID = o.UserID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY u.Name;

-- List all products in an order
SELECT o.OrderID, u.Name AS Customer, p.Name AS Product, od.Quantity, od.TotalPrice
FROM Orders o
JOIN Users u ON o.UserID = u.UserID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderID = 1;
