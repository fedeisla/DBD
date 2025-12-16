-- 5. Informar cantidad de viajes de la agencia con razón social ‘TAXI Y’
-- realizados a ‘Villa Elisa’. 
select a.razon_social,count(v.razon_social) as cantidadViajes
from Agencia a 
INNER JOIN Viaje v on (v.razon_social = a.razon_social)
INNER JOIN Ciudad c ON (v.cpDestino= c.codigo_postal)
where a.razon_social='TAXI Y' and c.nombreCiudad='Villa Elisa'
GROUP BY a.razon_social