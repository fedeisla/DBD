Select a.especie, a.anios,a.calle,l.nombreL
From 
Arbol a 
INNER JOIN Localidad l on (a.codigoPostal=l.codigoPostal)
INNER JOIN Poda p on (a.nroArbol=p.nroArbol)
INNER JOIN Podador po on (po.DNI=p.DNI)
WHERE
(po.nombre="Juan") and (po.apellido="Perez") or
(po.nombre="Jose")and (po.apellido="Garcia");