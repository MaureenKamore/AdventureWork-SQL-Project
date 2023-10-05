--Cleaning Product Table
SELECT
[ProductKey]
      ,[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS [Product Name]
	  ,PS.EnglishProductSubcategoryName AS [Subcategory]  
	  --joined from sub-category table
	  ,PC.EnglishProductCategoryName AS [Category Name]
	  	  --joined from category table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] AS [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] AS [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS [Product Model Name]
      --,[LargePhoto]
      ,[EnglishDescription] AS [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
,ISNULL (Status, 'Outdated') AS [Product Status]
   --where there is NULL replaced with Outdated

  FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS P
  LEFT JOIN DimProductSubcategory AS PS
  ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS PC
  ON PS.ProductCategoryKey = PC.ProductCategoryKey
  
  ORDER BY ProductKey ASC