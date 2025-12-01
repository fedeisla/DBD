select i.DNI,i.nombre,i.apellido,i.direccion,i.email,year(i.fecha_nacimiento) as anioNacimiento
FROM Integrante i
where (year(i.fecha_nacimiento) between 1980 and 1990) and i.DNI 
in (select i.DNI from Recital r 
INNER JOIN  Integrante i2 ON (r.codigoB=i2.codigoB) 
where year(r.fecha)=2023)