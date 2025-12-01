SELECT p.DNI, p.nombre, p.apellido,p.fnac, l.nombreL
from Podador p INNER JOIN Localidad l ON (p.codigoPostalVive=l.codigoPostal)
where (p.apellido like '%ata%')
and p.DNI in 
(select po.DNI from Poda po where year(po.fecha)=2024)
ORDER BY p.apellido, p.nombre
