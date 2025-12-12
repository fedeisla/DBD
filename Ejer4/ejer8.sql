select p.DNI,p.Apellido,p.Nombre,a.Legajo ,c.Nombre,ac.anio
FROM Persona p
inner join Alumno a ON (a.DNI=p.DNI)
INNER JOIN Alumno_Curso ac ON (a.DNI=ac.DNI) 
INNER JOIN Curso c ON (ac.Cod_Curso=c.Cod_Curso) 
where (c.Nombre like '%BD%') and ac.Anio=2022 
AND NOT EXISTS (
  SELECT * FROM Alumno_Curso ac2 
  WHERE ac2.DNI = p.DNI AND ac2.Anio = 2023
);