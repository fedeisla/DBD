select b.nombreBanda,b.genero_musical, b.anio_creacion, 
count(i.DNI) as cant_integrantes
FROM Banda b INNER JOIN Integrante i on (b.codigoB=i.codigoB) 
GROUP BY b.nombreBanda, b.genero_musical, b.anio_creacion HAVING count(i.DNI) > 5
