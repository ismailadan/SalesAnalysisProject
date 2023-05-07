-- Cleansed DIM_ Customer Table
SELECT 
  c.CustomerKey, 
  c.FirstName AS [First Name], 
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + c.Lastname AS [Full Name], 
  -- Combined First and Last name
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.DateFirstPurchase, 
  g.city AS [Customer City] 
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey -- Joined in City from Geography Table
ORDER BY 
  CustomerKey ASC -- Ordered by customer key
