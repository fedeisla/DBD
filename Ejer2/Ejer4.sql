SELECT a.especie,a.anios,a.calle,a.nro,l.nombreL
from Arbol a INNER JOIN Localidad l on (a.codigoPostal=l.codigoPostal)
WHERE a.nroArbol in 
(select p.nroArbol from Poda p where year(p.fecha)=2022)
and a.nroArbol not in
(select p2.nroArbol from Poda p2 where year(p2.fecha)=2023)