SELECT p.DNI,p.Apellido,p.Nombre, pro.matricula, sum(c.duracion)as duracion 
FROM Persona p
INNER JOIN Profesor pro ON (p.DNI=pro.DNI) 
INNER JOIN Profesor_Curso pc ON (pc.DNI = pro.DNI)
INNER JOIN Curso c on (pc.Cod_Curso = c.Cod_Curso)
GROUP BY p.DNI,p.Apellido,p.Nombre,pro.Matricula HAVING  sum(c.duracion) > 100
ORDER BY p.DNI