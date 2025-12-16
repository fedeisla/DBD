-- 3. Reportar información de agencias que realizaron viajes durante 2019 o que tengan dirección de 
-- mail que termine con  ‘@jmail.com’.
select distinct a.razon_social, a.direccion, a.telef, a.email FROM Agencia a
LEFT JOIN Viaje v on (a.razon_social= v.razon_social) -- usamos el left para no perder agencias sin viajes
where (v.fecha between '2019-01-01' and '2019-12-31') 
or (a.email like '%@jmail.com%' );