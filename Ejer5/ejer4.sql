-- Listar datos personales de clientes que viajaron solo con destino a la ciudad de ‘Coronel 
-- Brandsen’

select DISTINCT  cli.nombre, cli.apellido, cli.dni, cli.telefono, cli.direccion
from Cliente cli INNER JOIN Viaje v on (v.dni = cli.dni)
INNER JOIN Ciudad c on (c.codigo_postal= v.cpDestino)
where c.nombreCiudad='Coronel Brandsen' and not exists (
select * from Viaje v2  
INNER JOIN Ciudad c2 ON (v2.cpDestino=c2.codigo_postal) 
where (v2.dni= cli.dni) and (c2.nombreCiudad<>'Coronel Brandsen')
)