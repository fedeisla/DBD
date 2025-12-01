SELECT l.nombreL, l.descripcion, l.nroHabitantes, Count(a.nroArbol) as cantidadArboles
from Localidad l INNER JOIN  Arbol a on (l.codigoPostal=a.codigoPostal) 
GROUP BY l.nombreL, l.descripcion, l.nroHabitantes HAVING Count(a.nroArbol)<5