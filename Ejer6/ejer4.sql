SELECT DISTINCT  t.especialidad, t.nombre FROM Tecnico t
INNER JOIN Reparacion r ON (r.codTec= t.codTec)
where year(fecha)=2022 
and not exists 
(
 select * from Reparacion r 
where r.codTec = t.codTec 
and year(fecha)<>2022
)
 