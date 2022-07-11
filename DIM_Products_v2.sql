--Cleansed DIM_Products table /Informacion sobre productos filtrada 
SELECT
	   p.[ProductKey]
      ,p.[ProductAlternateKey] AS [ProductItemCode]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS [Product Name]
	  ,pc.[EnglishProductCategoryName] AS [Product Category] -- Se agrega a traves de un left join "Product Category" de la tabla del mismo nombre
	  ,ps.[EnglishProductSubcategoryName] AS [Product Sub-category] -- Se agrega a traves de un left join "Sub-Category" de la tabla del mismo nombre
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
	ISNULL (Status,'Outdated') AS [Product Status] -- cuando un valor de la columna 'Status' sea NULL se agregara el termino 'Outdated'
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps
  ON ps.[ProductSubcategoryKey] = p.[ProductSubcategoryKey]
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc
  ON ps.[ProductCategoryKey] = pc.[ProductCategoryKey]
  ORDER BY p.ProductKey ASC