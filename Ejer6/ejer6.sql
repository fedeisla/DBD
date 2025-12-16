-- 6. Listar nombre y especialidad del técnico con mayor cantidad de reparaciones realizadas y el 
-- técnico con menor cantidad de reparaciones. 
select t.nombre, t.especialidad FROM Tecnico t
INNER JOIN Reparacion r on (r.codTec= t.codTec)
GROUP BY t.nombre, t.especialidad
HAVING Count(t.codTec) >=all
(
 select count(*) FROM Reparacion r 
 group by r.codTec
);

select t.nombre, t.especialidad  FROM Tecnico t
left join Reparacion r on (r.codTec= t.codTec)
GROUP BY t.nombre, t.especialidad
HAVING Count(*) <=all
(
 select count(*) FROM Reparacion r 
 group by r.codTec
); 