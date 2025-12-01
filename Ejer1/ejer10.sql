SELECT c.DNI,c.apellido,c.nombre, sum(f.total) from Cliente c
INNER JOIN Factura f ON (f.idCliente=c.idCliente)
GROUP BY c.DNI,c.apellido,c.nombre HAVING sum(f.total)>100000
 