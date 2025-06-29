SELECT 
  o.date AS order_date,
  pc.CategoryName AS category_name,
  p.ProdName AS product_name,
  p.price AS product_price,
  o.quantity AS order_qty,
  (p.price * o.quantity) AS total_sales,
  c.CustomerEmail AS cust_email,
  c.CustomerCity AS cust_city
FROM 
  Dataset_Id.Customers c
JOIN 
   Dataset_Id.Orders o ON c.CustomerID = o.CustomerID
JOIN 
   Dataset_Id.Products p ON o.ProdNumber = p.ProdNumber
JOIN 
   Dataset_Id.ProductCategory pc ON p.Category = pc.CategoryID
ORDER BY o.Date,o.quantity,pc.CategoryName;