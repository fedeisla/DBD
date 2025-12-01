SELECT e.nombre_escenario, e.ubicacion,e.descripcion,b.genero_musical
from Escenario e INNER JOIN Recital r on (e.nroEscenario=r.nroEscenario)
INNER JOIN Banda b ON (r.codigoB=b.codigoB) 
WHERE b.genero_musical like "%rock%" and e.nroEscenario not in
(
 select e2.nroEscenario from Escenario e2 
INNER JOIN Recital r2 on (e2.nroEscenario=r2.nroEscenario) 
INNER JOIN Banda b2 on (r2.codigoB=b2.codigoB) 
 where b2.genero_musical NOT like "%rock%"
)
ORDER BY e.nombre_escenario
