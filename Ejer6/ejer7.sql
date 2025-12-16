select  r.nombre,r.stock,r.precio FROM Repuesto r
where stock>0 and not exists (

select * from RepuestoReparacion rr 
INNER JOIN  Reparacion repa on (rr.nroReparac=repa.nroReparac)
where rr.codRep=r.codRep  and repa.precio_total>10000
)