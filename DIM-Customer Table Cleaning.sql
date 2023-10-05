--Cleaning dbo.DimCustomer
SELECT 
  [CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  --,[FirstName] AS [First Name]
  ----,[MiddleName]
  --,[LastName] AS [Last Name],
  [FirstName] + '  ' + [LastName] AS [Full Name] 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  --,[Gender]
  , 
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  [DateFirstPurchase] AS DateFirstPurchase 
  --,[CommuteDistance],
  ,
  G.city AS [Customer City] --Joins in customer City from Geography Table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS C 
  LEFT JOIN DimGeography AS G ON G.GeographyKey = C.GeographyKey 
ORDER BY 
  CustomerKey ASC --ordered list using customerkey in ascending order

