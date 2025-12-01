SELECT e.nombre_escenario, count(r.nroEscenario) as cantidad_de_recitales
FROM Escenario e
INNER JOIN Recital r ON (e.nroEscenario=r.nroEscenario) GROUP BY e.nombre_escenario