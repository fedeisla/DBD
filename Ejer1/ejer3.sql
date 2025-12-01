select p.nombreP,p.descripcion,p.precio,p.stock FROM Producto p
INNER JOIN Detalle d ON (p.idProducto=d.idProducto)
INNER JOIN Factura f ON (f.nroTicket=d.nroTicket)
INNER JOIN Cliente c on (c.idCliente=f.idCliente) 
where c.DNI=45789456 and c.apellido<>'Garcia' 