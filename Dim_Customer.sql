-- Cleansed DIM_Customer Table 
SELECT [CustomerKey] AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] AS [First Name]
      --,[MiddleName]
      ,[LastName] AS [Last name],
	  CONCAT([FirstName], ',', [LastName]) AS [Full Name]
-- Combined the first and last name 
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE [Gender] WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS [Gender]
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
      ,[DateFirstPurchase] AS [DateFirtPurchase],
      --,[CommuteDistance]
	  g.city AS [Customer City] --Joined in Customer City from Geography Table
	  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
	  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g
	  ON g.GeographyKey=c.GeographyKey
	  ORDER BY CustomerKey ASC --Ordered List by CustomerKey
  