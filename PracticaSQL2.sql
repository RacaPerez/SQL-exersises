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

 Select nombre,
 documento, 
 telefono
  from Estudiantes
  where Profesion = 6
  and [Fecha de Nacimiento] between '1970-01-01' and '2000-01-01'
