-- 9. Reportar nombre, apellido, dirección y teléfono de clientes con al menos 5 viajes.
select cli.nombre, cli.apellido, cli.direccion, cli.telefono 
from Cliente cli
INNER JOIN Viaje v ON (v.dni=cli.dni)
GROUP BY cli.nombre, cli.apellido, cli.direccion, cli.telefono 
HAVING Count(*) >= 5