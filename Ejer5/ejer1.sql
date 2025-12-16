SELECT a.razon_social, a.direccion, a.telef from Agencia a
INNER JOIN Viaje v ON (a.razon_social = v.razon_social)
inner Join Ciudad c on (c.codigo_postal = v.cpOrigen)
INNER JOIN Cliente cli on (v.dni = cli.dni)
WHERE c.nombreCiudad='La Plata' and (cli.apellido like '%Roma%')
ORDER BY a.razon_social, a.telef
