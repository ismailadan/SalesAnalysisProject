SELECT 
ProductKey,
OrderDateKey,
DueDateKey,
ShipDateKey,
CustomerKey,
SalesOrderNumber,
SalesAmount
FROM dbo.FactInternetSales
WHERE 
LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 2 -- Extracting the last 2 years for analysis
ORDER BY OrderDateKey ASC