SELECT DISTINCT repa.nroReparac,repa.fecha,repa.precio_total 
FROM Reparacion repa
INNER JOIN RepuestoReparacion rr ON (rr.nroReparac= repa.nroReparac)
where rr.precio between 10000 and 15000
-- otra forma
SELECT repa.nroReparac, repa.fecha, repa.precio_total 
FROM Reparacion repa
WHERE EXISTS (
    SELECT *
    FROM RepuestoReparacion rr
    WHERE rr.nroReparac = repa.nroReparac
    AND rr.precio BETWEEN 10000 AND 15000
);