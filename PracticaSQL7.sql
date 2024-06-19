/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [DocentesID]
      ,[Nombre]
      ,[Apellido]
      ,[Documento]
      ,[Correo]
      ,[Telefono]
      ,[Domicilio]
      ,[Codigo Postal]
      ,[Fecha Ingreso]
      ,[Camada]
      ,[Profesion]
      ,[Encargado]
      ,[Asignatura]
  FROM [CoderHouse].[dbo].[Staff]

  SELECT Nombre, Correo, Camada, [Fecha Ingreso], DocentesID
  FROM [dbo].[Staff]
  WHERE Correo LIKE '%.edu%' AND DocentesID >= 100
  ORDER BY DocentesID ASC

  
  