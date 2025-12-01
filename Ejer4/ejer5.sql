SELECT p.DNI,p.Nombre,p.Apellido,pro.Matricula, count(tp.Cod_Titulo) as Cantidad_de_Titulos
FROM Persona p 
INNER JOIN Titulo_Profesor tp ON (tp.DNI=p.DNI)
INNER JOIN Profesor pro ON (tp.DNI=pro.DNI)
GROUP BY p.DNI,p.Nombre,p.Apellido,pro.Matricula 
HAVING count(tp.Cod_Titulo)>3
ORDER BY p.Apellido,p.Nombre