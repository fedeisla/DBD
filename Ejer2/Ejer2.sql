SELECT p.DNI, p.nombre, p.apellido, p.fnac, l.nombreL 
FROM Podador p INNER JOIN Localidad l on (p.codigoPostalVive = l.codigoPostal)
INNER JOIN Poda po ON (p.DNI = po.DNI) WHERE (year(po.fecha)= 2023)