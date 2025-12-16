SELECT r.nombre, r.stock, r.precio 
FROM Repuesto r WHERE
    -- 1. NO EXISTE (La lista de técnicos que no usaron el repuesto está vacía)
    NOT EXISTS (
        -- 2. UN TÉCNICO (t) con el cual el repuesto NO se usó.
        SELECT t.codTec 
        FROM Tecnico t -- ¡CORRECCIÓN CLAVE! El universo es Tecnico
        
        WHERE NOT EXISTS (
            -- 3. EXISTE una REPARACION (repa) y un USO (rr) que conecten t y r.
            SELECT *
            FROM Reparacion repa
            INNER JOIN RepuestoReparacion rr ON repa.nroReparac = rr.nroReparac
            WHERE 
                -- Correlación 1: La reparación es del técnico actual (t)
                repa.codTec = t.codTec
                -- Correlación 2: El uso es del repuesto actual (r)
                AND rr.codRep = r.codRep 
        )
    );
-- 2da forma
SELECT
    r.nombre,
    r.stock,
    r.precio
FROM
    Repuesto r
INNER JOIN
    RepuestoReparacion rr ON r.codRep = rr.codRep
INNER JOIN
    Reparacion repa ON rr.nroReparac = repa.nroReparac
GROUP BY
    r.codRep, r.nombre, r.stock, r.precio
HAVING
    -- El número de técnicos distintos que usaron el repuesto
    COUNT(DISTINCT repa.codTec) = (SELECT COUNT(codTec) FROM Tecnico); -- Total de técnicos
