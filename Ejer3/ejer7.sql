select b.nombreBanda,b.genero_musical,b.anio_creacion from Banda b
INNER JOIN Recital r ON (b.codigoB=r.codigoB)
INNER JOIN Escenario e on (r.nroEscenario=e.nroEscenario)
where (e.cubierto=1) and (year(r.fecha)=2023)
