select c.Nombre, c.Descripcion 
FROM Curso c
INNER JOIN Alumno_Curso ac ON (c.Cod_Curso=ac.Cod_Curso)
GROUP BY c.Nombre, c.Descripcion 
having count(ac.DNI) >= all (
select count(ac2.DNI) from Alumno_Curso ac2 
GROUP BY ac2.Cod_Curso
) 
union all
select c.Nombre, c.Descripcion 
FROM Curso c
INNER JOIN Alumno_Curso ac ON (c.Cod_Curso=ac.Cod_Curso)
GROUP BY c.Nombre, c.Descripcion 
having count(ac.DNI) <= some (
select count(ac2.DNI) from Alumno_Curso ac2 
GROUP BY ac2.Cod_Curso
)
