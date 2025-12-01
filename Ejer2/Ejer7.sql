SELECT a.especie,l.nombreL 
FROM Arbol a INNER JOIN Localidad l on (a.codigoPostal=l.codigoPostal) 
WHERE (l.nombreL='La Plata' or l.nombreL='Salta') 