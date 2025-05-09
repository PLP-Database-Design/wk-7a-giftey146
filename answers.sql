-- 1NF: Flatten multivalued Products into separate rows
SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';


-- Orders table (Customer info per Order)
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;


--OrderItems table (Product and Quantity per Order)
SELECT OrderID, Product, Quantity
FROM OrderDetails;
