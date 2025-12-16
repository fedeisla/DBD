-- 8. Listar razón social, dirección y teléfono de la/s agencias que tengan mayor cantidad de viajes 
-- realizados.
SELECT a.razon_social, a.direccion, a.telef
FROM Agencia a
INNER JOIN Viaje v on (a.razon_social=v.razon_social)
GROUP BY  a.razon_social, a.direccion, a.telef
HAVING  count(*) >= all
(
  select  count(*) 
  from Viaje v
  group by v.razon_social
)
