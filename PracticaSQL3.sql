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

 
SELECT Nombre, Apellido, [Fecha Ingreso],
CONCAT (Nombre,'-', Apellido) as nombres_apellidos
FROM [dbo].[Staff]
WHERE YEAR ([Fecha Ingreso]) = '2021'