SELECT i.DNI,i.nombre, i.apellido,i.direccion,i.email
from Integrante i INNER JOIN Recital r ON (r.codigoB=i.codigoB)
INNER JOIN Escenario e on (r.nroEscenario=e.nroEscenario) 
where e.nombre_escenario='Gustavo Cerati' and i.DNI in 
(
select i2.DNI from Integrante i2 INNER JOIN Recital r2 on (i2.codigoB=r2.codigoB)
INNER JOIN Escenario e2 on (r2.nroEscenario=e2.nroEscenario) 
where e2.nombre_escenario='Carlos Gardel'
)