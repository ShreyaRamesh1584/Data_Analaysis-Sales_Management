/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductKey]
      ,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS [Product Name],
	  pc.[EnglishProductCategoryName] AS [Product Category],
	  ps.[EnglishProductSubcategoryName] AS [Product Sub-Category]
      --,[SpanishProductName]
      --,[FrenchProductName]
      ,[StandardCost] AS [Cost]
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
      ,[ModelName] AS [Model Name]
      --,[LargePhoto]
      ,[EnglishDescription] AS [Product Description],
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
	  ISNULL (p.Status, 'Outdated') AS [Product Status]
  FROM [dbo].[DimProduct] AS [p]
  LEFT JOIN [dbo].[DimProductSubcategory] AS [ps] ON ps.ProductSubcategoryKey=p.ProductSubcategoryKey
  LEFT JOIN [dbo].[DimProductCategory] AS [pc] ON ps.ProductSubcategoryKey=pc.ProductCategoryKey
  ORDER BY p.ProductKey ASC
