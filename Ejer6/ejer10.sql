SELECT repa.fecha, t.nombre AS Tecnico, repa.precio_total
FROM Reparacion repa INNER JOIN RepuestoReparacion rr ON (repa.nroReparac = rr.nroReparac)
INNER JOIN Tecnico t ON (repa.codTec = t.codTec)
GROUP BY repa.nroReparac, repa.fecha, t.nombre, repa.precio_total
HAVING COUNT(DISTINCT rr.codRep) >= 4;