(SELECT c.Nombre, c.Descripcion, count(ac.DNI) as cantInscriptos from Curso c 
INNER JOIN  Alumno_Curso ac on (c.Cod_Curso=ac.Cod_Curso) where ac.Anio=2024
GROUP BY c.Nombre, c.Descripcion 
ORDER BY cantInscriptos desc
limit 1 )
union all
(
SELECT c2.Nombre, c2.Descripcion, count(ac2.DNI) as cantInscriptosMenor 
from Curso c2 
INNER JOIN  Alumno_Curso ac2 on (c2.Cod_Curso=ac2.Cod_Curso) where ac2.Anio=2024
GROUP BY c2.Nombre, c2.Descripcion 
ORDER BY cantInscriptosMenor 
limit 1 
);
