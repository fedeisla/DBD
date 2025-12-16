-- 5. Listar para cada repuesto nombre, stock y cantidad de técnicos distintos que lo utilizaron. Si un 
-- repuesto no participó en alguna reparación igual debe aparecer en dicho listado. 
SELECT r.nombre, r.stock, count(distinct repa.codTec) as CantUsados FROM Repuesto r
LEFT JOIN RepuestoReparacion rr on (rr.codRep=r.codRep)
INNER JOIN Reparacion repa ON (repa.nroReparac= rr.nroReparac)
GROUP BY  r.nombre, r.stock