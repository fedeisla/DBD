SELECT v.fecha,v.hora, cli.DNI, cli.nombre, cli.apellido, cli.telefono,
cli.direccion, ori.nombreCiudad as CiudadOrigen, dest.nombreCiudad as CiudadDestino
FROM Viaje v 
INNER JOIN Cliente cli ON (v.dni = cli.dni)
INNER JOIN Ciudad ori ON (v.cpOrigen= ori.codigo_postal)
INNER JOIN Ciudad dest ON (v.cpOrigen= dest.codigo_postal) 
WHERE v.fecha BETWEEN '2019-01-01' AND '2019-01-31'
AND v.descripcion LIKE '%demorado%'