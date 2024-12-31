Example Queries

1. Select All Users
SELECT * FROM Users;

2. Find Products Priced Below $500
SELECT * FROM Products WHERE Price < 500;

3. Count Total Users
SELECT COUNT(*) AS TotalUsers FROM Users;

4. Join Orders with Users
SELECT o.OrderID, u.Name AS Customer, o.OrderDate
FROM Orders o
JOIN Users u ON o.UserID = u.UserID;

5. Calculate Total Order Value
SELECT od.OrderID, SUM(od.TotalPrice) AS TotalOrderValue
FROM OrderDetails od
GROUP BY od.OrderID;

6. List Products Purchased in a Specific Order
SELECT p.Name, od.Quantity, od.TotalPrice
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
WHERE od.OrderID = 1;

7. Identify Top-Spending Customers
SELECT u.Name, SUM(od.TotalPrice) AS TotalSpending
FROM Users u
JOIN Orders o ON u.UserID = o.UserID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY u.Name
ORDER BY TotalSpending DESC
LIMIT 3;

8. Products Purchased More Than Once
SELECT p.Name, SUM(od.Quantity) AS TotalPurchased
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Name
HAVING SUM(od.Quantity) > 1;

9. Analyze Sales by Month
SELECT EXTRACT(MONTH FROM o.OrderDate) AS Month, SUM(od.TotalPrice) AS TotalSales
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY EXTRACT(MONTH FROM o.OrderDate)
ORDER BY Month;

10. Using Window Functions to Rank Customers by Spending
SELECT u.Name, SUM(od.TotalPrice) AS TotalSpending,
       RANK() OVER (ORDER BY SUM(od.TotalPrice) DESC) AS Rank
FROM Users u
JOIN Orders o ON u.UserID = o.UserID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY u.Name;

11. JSON Aggregation for Products in Each Order
SELECT o.OrderID, 
       JSON_AGG(JSON_BUILD_OBJECT('Product', p.Name, 'Quantity', od.Quantity, 'TotalPrice', od.TotalPrice)) AS Products
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderID;

12. Full-Text Search in Product Names
SELECT * FROM Products
WHERE to_tsvector(Name) @@ to_tsquery('Laptop | Smartphone');

13. Total Spending by Each User
SELECT u.Name AS Customer, SUM(od.TotalPrice) AS TotalSpending
FROM Users u
JOIN Orders o ON u.UserID = o.UserID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY u.Name;

14. Products in an Order
SELECT o.OrderID, u.Name AS Customer, p.Name AS Product, od.Quantity, od.TotalPrice
FROM Orders o
JOIN Users u ON o.UserID = u.UserID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderID = 1;

15. List of All Orders
SELECT o.OrderID, u.Name AS Customer, o.OrderDate
FROM Orders o
JOIN Users u ON o.UserID = u.UserID;

16. Frequently Purchased Products
SELECT p.Name AS Product, SUM(od.Quantity) AS TotalQuantity
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Name
ORDER BY TotalQuantity DESC;

