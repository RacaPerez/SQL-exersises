/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [AsignaturasID]
      ,[Nombre]
      ,[Tipo]
      ,[Jornada]
      ,[Costo]
      ,[Area]
  FROM [CoderHouse].[dbo].[Asignaturas]

SELECT Tipo, Jornada, 
AVG (Costo) AS Promedio
FROM [dbo].[Asignaturas]
GROUP BY Tipo, Jornada
ORDER BY Promedio DESC