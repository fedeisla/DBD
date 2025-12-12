INSERT INTO Persona (DNI, Nombre, Apellido, Fecha_Nacimiento, Estado_Civil, Genero)
VALUES (33441122, 'fede', 'isla', '2025-01-01', 'soltero', 'm');
INSERT INTO Profesor (DNI,Matricula,Nro_Expediente) VALUES (33441122,"aaa",1313);
INSERT INTO Titulo (Cod_Titulo,Nombre,Descripcion)
VALUES (25, 'lic.Informatica','aaa');
Insert into Titulo_Profesor (Cod_Titulo,DNI,Fecha) 
values (25,33441122,'2025-01-01');