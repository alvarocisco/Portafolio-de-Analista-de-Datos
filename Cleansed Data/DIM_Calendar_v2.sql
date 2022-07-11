--Cleansed DIM database / Informacion sobre fechas filtrada
SELECT 
  [DateKey] 
  ,[FullDateAlternateKey] AS [Date] 
  --,[DayNumberOfWeek]
  ,[EnglishDayNameOfWeek] AS day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  ,[WeekNumberOfYear] AS Weeknumber
  ,[EnglishMonthName] AS Month
  ,Left ([EnglishMonthName],3) AS Monthshort 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  ,[MonthNumberOfYear] AS Monthnumber
  ,[CalendarQuarter] AS Quarter
  ,[CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]

 WHERE CalendarYear >= 2019 AND CalendarYear <= 2021 

 --Rango de fechas de los datos del 2019 al 2021

    