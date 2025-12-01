select p.nombreP,p.descripcion,p.precio,p.stock, count(d.nroTicket) as vendidos
FROM Producto p
left JOIN Detalle d ON (d.idProducto=p.idProducto) -- usamos el left para los prod sin ventas
GROUP BY p.nombreP,p.descripcion,p.precio,p.stock