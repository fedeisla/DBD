SELECT p.DNI,p.Nombre,p.Apellido,p.Genero,p.Fecha_Nacimiento FROM Persona p
INNER JOIN Alumno_Curso ac ON (p.DNI=ac.DNI)
INNER JOIN Curso c ON (ac.Cod_Curso=c.Cod_Curso)
where ac.Anio = 2023
and c.Nombre='Diseño de Bases de Datos'