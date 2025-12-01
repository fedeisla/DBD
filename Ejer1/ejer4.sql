select p.nombreP,p.descripcion,p.precio,p.stock FROM Producto p
where p.idProducto not in (
 select d.idProducto from Detalle d 
 inner join Factura f ON (d.nroTicket=f.nroTicket)
 inner join Cliente c on (c.idCliente=f.idCliente)
 where c.apellido='Garcia'
)
order by p.nombreP