SELECT b.nombreBanda,b.genero_musical,b.anio_creacion from Banda b
INNER JOIN Recital r ON (b.codigoB= r.codigoB)
where year(r.fecha)=2023 and b.codigoB not in (
select b2.codigoB from Banda b2 INNER JOIN Recital r2 on (b2.codigoB=r2.codigoB)
where year(r.fecha)=2022
)
