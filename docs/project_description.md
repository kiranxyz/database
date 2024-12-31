Objective

The E-Commerce Database Project is designed to demonstrate a well-structured relational database system for an e-commerce platform. This project showcases:

User management

Product catalog management

Order processing and tracking

Detailed order breakdowns with product quantities and total prices

Database Schema

This database includes four main tables:

Users:

Fields: UserID, Name, Email

Primary Key: UserID

Stores customer information.

Products:

Fields: ProductID, Name, Price

Primary Key: ProductID

Contains the product catalog with pricing details.

Orders:

Fields: OrderID, UserID, OrderDate

Primary Key: OrderID

Foreign Key: UserID (references Users.UserID)

Tracks orders placed by users.

OrderDetails:

Fields: OrderDetailID, OrderID, ProductID, Quantity, TotalPrice

Primary Key: OrderDetailID

Foreign Keys: OrderID (references Orders.OrderID) and ProductID (references Products.ProductID)

Tracks individual items in orders, their quantities, and total prices.