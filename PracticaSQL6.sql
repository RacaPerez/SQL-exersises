/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EstudiantesID]
      ,[Nombre]
      ,[Apellido]
      ,[Documento]
      ,[Correo]
      ,[Telefono]
      ,[Domicilio]
      ,[Codigo Postal]
      ,[Fecha de Nacimiento]
      ,[Fecha Ingreso]
      ,[Profesion]
      ,[Docente]
  FROM [CoderHouse].[dbo].[Estudiantes]

  SELECT Nombre, Apellido,
  DATEDIFF (YEAR,[Fecha de Nacimiento],GETDATE()) AS edad
  FROM [dbo].[Estudiantes]
  WHERE DATEDIFF (YEAR,[Fecha de Nacimiento],GETDATE()) >= 18
  ORDER BY edad ASC
  
  
  
