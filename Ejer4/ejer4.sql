SELECT p.DNI,p.Nombre,p.Nombre,ac.Calificacion FROM Persona p
INNER JOIN Alumno_Curso ac ON (p.DNI=ac.DNI)
INNER JOIN Curso c on (ac.Cod_Curso=c.Cod_Curso)
INNER JOIN Profesor_Curso pc on (c.Cod_Curso=pc.Cod_Curso)
INNER JOIN Persona p2 on(p2.DNI = pc.DNI) 
where (p2.Nombre="Juan" and p2.Apellido="Garcia")
and ac.Calificacion>8
ORDER BY p.Apellido,p.Nombre
