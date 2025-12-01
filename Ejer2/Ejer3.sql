select a.especie, a.anios, a.calle, a.nro, l.nombreL
from Arbol a INNER JOIN Localidad l ON (a.codigoPostal=l.codigoPostal)
WHERE a.nroArbol not in (select p.nroArbol from Poda p)