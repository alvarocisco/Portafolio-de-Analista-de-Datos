--Cleansed DIM_Costumer Table / Informacion sobre clientes filtrada 
SELECT 
  [CustomerKey] AS [Customer Key] 
	  --,[GeographyKey]
	  --,[CustomerAlternateKey]
	  --,[Title]
  ,[FirstName] AS [First Name] 
	  --,[MiddleName]
  ,[LastName] AS [Last Name]
  ,[FirstName] + ' ' + [LastName] AS [Full Name], 
	  --,[NameStyle]
	  --,[BirthDate]
	  --,[MaritalStatus]
	  --,[Suffix]
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender 
--Cambiando los valores "M" a "Male" y "F" a "Famale"
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
  ,[DateFirstPurchase] 
      --,[CommuteDistance]
  ,[City] AS [Customer City] 
  
--Se agrega a traves de un left join "Customer city" de la tabla de geografia

FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS C 
  LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS G 
  ON C.GeographyKey = G.GeographyKey 
ORDER BY 
  [Customer Key] ASC

