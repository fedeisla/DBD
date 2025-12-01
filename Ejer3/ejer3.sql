select b.nombreBanda, r.fecha, r.hora, e.nombre_escenario, e.ubicacion 
FROM Recital r INNER JOIN Escenario e ON (r.nroEscenario=e.nroEscenario)
INNER JOIN Banda b ON (r.codigoB= b.codigoB) where (r.fecha='2023-12-04') 