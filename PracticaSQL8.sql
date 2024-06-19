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

  SELECT TOP (10) Nombre, Documento, Domicilio, [Codigo Postal], [Fecha Ingreso] 
  FROM [dbo].[Estudiantes]
  ORDER BY [Fecha Ingreso] ASC
  