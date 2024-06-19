/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Encargado_ID]
      ,[Nombre]
      ,[Apellido]
      ,[Documento]
      ,[Domicilio]
      ,[Codigo Postal]
      ,[Telefono]
      ,[Tipo]
  FROM [CoderHouse].[dbo].[Encargado]

SELECT LTRIM (RTRIM (Tipo)) AS docentes_tutores, 
COUNT (Encargado_ID) AS CantEncargados,
SUBSTRING (Tipo, 11, 8) as NuevoTipo
FROM [dbo].[Encargado]
GROUP BY Tipo




