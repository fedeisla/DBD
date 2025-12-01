SELECT p.DNI,a.Legajo,p.Apellido,p.Nombre, a.Anio_Ingreso FROM Persona  p
inner join Alumno a ON (p.DNI=a.DNI) WHERE a.Anio_Ingreso<2014