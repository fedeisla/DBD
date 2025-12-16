-- 6. Listar nombre, apellido, dirección y teléfono de clientes que viajaron 
-- con todas las agencias.
SELECT cli.nombre, cli.apellido,cli.direccion,cli.telefono 
FROM Cliente cli
WHERE
    NOT EXISTS (
        SELECT a.razon_social FROM Agencia a
        WHERE NOT EXISTS (
            SELECT *  -- 
            FROM Viaje v WHERE v.dni = cli.dni
            AND v.razon_social = a.razon_social
        )
    );