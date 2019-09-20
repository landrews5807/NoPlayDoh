SELECT 
SalesOrderNumber,
OrderDate,
OrderQuantity,
UnitPrice,
SalesAmount,
TaxAmt,
Freight,
f.ProductKey,
p.EnglishProductName,
p.Color,
s.EnglishProductSubcategoryName,
c.EnglishProductCategoryName,
SizeRange,
ModelName,
EnglishDescription,
f.SalesTerritoryKey,
SalesTerritoryRegion,
SalesTerritoryGroup,
ShipDate,
ExtendedAmount,
ProductAlternateKey,
SalesTerritoryAlternateKey
  FROM [AdventureWorksDW2017].[dbo].[FactInternetSales] f
  inner join DimSalesTerritory t on f.SalesTerritoryKey = t.SalesTerritoryKey
  inner join DimProduct p on f.ProductKey = p.ProductKey
  inner join DimProductSubcategory s on p.ProductSubcategoryKey = s.ProductSubcategoryKey
  inner join DimProductCategory c on s.ProductCategoryKey = c.ProductCategoryKey
