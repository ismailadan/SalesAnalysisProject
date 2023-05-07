SELECT 
  p.ProductKey, 
  p.ProductAlternateKey AS [Product Code], 
  p.EnglishProductName AS [Product Name], 
  pc.EnglishProductCategoryName AS [Product Category], 
  -- Joined in from Category Table
  ps.EnglishProductSubcategoryName AS [Product Subcategory], 
  -- Joined in from Subcategory Table
  p.Color AS [Product Colour], 
  p.Size AS [Product Size], 
  p.ProductLine AS [Product Line], 
  p.ModelName AS [Product Model Name], 
  p.EnglishDescription AS [Product Description], 
  ISNULL(p.Status, 'Outdated') AS [Product Status] 
FROM 
  dbo.DimProduct AS p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey