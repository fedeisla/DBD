select p.DNI,p.apellido,p.nombre,p.telefono, p.fnac
from Podador p INNER JOIN Poda po ON (p.DNI=po.DNI)
INNER JOIN Arbol a ON (po.nroArbol=a.nroArbol) WHERE a.especie='Conífera'
and p.DNI not in
(select p2.DNI from Poda p2 
INNER JOIN Arbol a2 ON (p2.nroArbol=a2.nroArbol) where a2.especie<>'Conífera') 
