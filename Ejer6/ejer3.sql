SELECT t.especialidad, t.nombre FROM Tecnico t
where not exists 
(
 select * from Reparacion r where r.codTec = t.codTec 
)
ORDER BY t.nombre 