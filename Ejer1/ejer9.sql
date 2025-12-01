SELECT f.nroTicket, f.total, f.fecha, f.hora 
FROM Factura f
INNER JOIN Cliente c ON (c.idCliente = f.idCliente)
WHERE c.nombre = 'Jorge' AND c.apellido = 'Pérez'
AND f.nroTicket NOT IN (
    SELECT d2.nroTicket 
    FROM Detalle d2 
    INNER JOIN Producto p2 ON (p2.idProducto = d2.idProducto)
    WHERE p2.nombreP = 'Z'
);