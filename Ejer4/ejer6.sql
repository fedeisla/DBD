SELECT p.DNI,p.Nombre,p.Apellido, sum(c.duracion) as cantidadHoras,
(select avg(c2.duracion) from Profesor_Curso pc2
 INNER JOIN Curso c2 ON (pc2.Cod_Curso=c2.Cod_Curso)
 where (p.DNI=pc2.DNI)
) as promedioHoras -- sub consulta para el promedio
from Persona p
inner join Profesor_Curso pc ON (p.DNI=pc.DNI)
inner join Curso c ON (c.Cod_Curso= pc.Cod_Curso)
GROUP BY p.DNI,p.Nombre,p.Apellido 
