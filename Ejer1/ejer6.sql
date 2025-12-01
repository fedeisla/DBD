select c.nombre,c.apellido,c.DNI,c.telefono,c.direccion FROM Cliente c
INNER JOIN Factura f on (c.idCliente=f.idCliente)
INNER JOIN Detalle d on (f.nroTicket=d.nroTicket)
INNER JOIN Producto p on (d.idProducto=p.idProducto)
WHERE p.nombreP='prod1' or p.nombreP='prod2' 
and c.idCliente not in (
 select f2.idCliente from Factura f2
 INNER JOIN Detalle d2 ON (f2.nroTicket=d2.nroTicket)
 INNER JOIN Producto p2 on (p2.idProducto=d2.idProducto)
 where p2.nombreP='prod3'
)