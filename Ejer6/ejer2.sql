-- 2. Listar nombre, stock y precio de repuestos que se usaron en reparaciones durante 2023 y que no 
-- se usaron en reparaciones del técnico ‘José Gonzalez’. 
SELECT DISTINCT  r.nombre, r.stock, r.precio
FROM Repuesto r
INNER JOIN RepuestoReparacion rr on (r.codRep=rr.codRep)
INNER JOIN Reparacion repa ON (rr.nroReparac= repa.nroReparac)
WHERE year(repa.fecha)= 2023
AND NOT EXISTS (
        SELECT * FROM RepuestoReparacion rr_jg
        INNER JOIN Reparacion repa_jg ON (rr_jg.nroReparac = repa_jg.nroReparac)
        INNER JOIN Tecnico t ON (repa_jg.codTec = t.codTec)
        WHERE
            rr_jg.codRep = r.codRep 
            AND t.nombre = 'Jose Gonzalez'
    );