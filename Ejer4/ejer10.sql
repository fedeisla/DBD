UPDATE Persona p
INNER JOIN Alumno a ON p.DNI = a.DNI
SET p.Estado_Civil = 'divorciado'
WHERE a.Legajo = '2020/09';