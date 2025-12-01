SELECT f.nroTicket,f.total,f.fecha,f.hora, c.DNI FROM Factura f
INNER JOIN Cliente c ON (c.idCliente=f.idCliente)
INNER JOIN Detalle d ON (d.nroTicket=f.nroTicket)
INNER JOIN Producto p on (p.idProducto=d.idProducto)
where p.nombreP='prod38' or year(f.fecha)=2023