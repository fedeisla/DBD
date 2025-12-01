SELECT  c.nombre, c.apellido, c.DNI, c.telefono,c.direccion 
from Cliente c
INNER JOIN Factura f ON (c.idCliente=f.idCliente)
where 
    year(f.fecha)=2024 and not exists (
    select * from Factura f2 where f2.idCliente=c.idCliente
    and year(f2.fecha)<>2024
)
