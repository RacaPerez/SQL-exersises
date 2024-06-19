SELECT TOP (1000) [AsignaturasID]
      ,[Nombre]
      ,[Tipo]
      ,[Jornada]
      ,[Costo]
      ,[Area]
  FROM [CoderHouse].[dbo].[Asignaturas]

  -- Conteo

Select 
-- tipo de curso
tipo, 
jornada,
-- conteo de curso
count (AsignaturasID) as count_asignatura
from[dbo].[Asignaturas]
-- filtrar por datos
where Area = 5
group by tipo, jornada 

