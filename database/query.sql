-- registro de las consultas 17 -> Sql_spirit.sql
-- tabla de usuarios

-- fecha: 20-05-24
-- Autor: Brayan Ronaldo Sanchez Mendoza
-- script: Sql

INSERT INTO Usuarios (nombre, apellido, email, telefono, semilla, contrasena, id_unico)
VALUES
  ('Clara', 'Vargas', 'clara.vargas@gmail.com', '555-1234', 'semilla1', 'password1', 'unique_id1'),
  ('Javier', 'Sanchez', 'javier.sanchez@example.com', '555-5678', 'semilla2', 'password2', 'unique_id2'),
  ('Luisa', 'Diaz', 'luisa.diaz@gmail.com', '555-9012', 'semilla3', 'password3', 'unique_id3'),
  ('Miguel', 'Herrera', 'miguel.herrera@example.com', '555-3456', 'semilla4', 'password4', 'unique_id4'),
  ('Ana', 'Morales', 'ana.morales@gmail.com', '555-7890', 'semilla5', 'password5', 'unique_id5'),
  ('Pedro', 'Gutierrez', 'pedro.gutierrez@example.com', '555-2109', 'semilla6', 'password6', 'unique_id6'),
  ('Maria', 'Ramirez', 'maria.ramirez@gmail.com', '555-8765', 'semilla7', 'password7', 'unique_id7'),
  ('Juan', 'Jimenez', 'juan.jimenez@example.com', '555-4321', 'semilla8', 'password8', 'unique_id8'),
  ('Fernanda', 'Castillo', 'fernanda.castillo@gmail.com', '555-8901', 'semilla9', 'password9', 'unique_id9'),
  ('Carlos', 'Reyes', 'carlos.reyes@example.com', '555-2345', 'semilla10', 'password10', 'unique_id10'),
  ('Gabriela', 'Mendoza', 'gabriela.mendoza@gmail.com', '555-6789', 'semilla11', 'password11', 'unique_id11'),
  ('Jorge', 'Rojas', 'jorge.rojas@example.com', '555-0123', 'semilla12', 'password12', 'unique_id12'),
  ('Valeria', 'Flores', 'valeria.flores@gmail.com', '555-4567', 'semilla13', 'password13', 'unique_id13'),
  ('Alejandro', 'Gomez', 'alejandro.gomez@example.com', '555-8901', 'semilla14', 'password14', 'unique_id14'),
  ('Daniela', 'Moreno', 'daniela.moreno@gmail.com', '555-2345', 'semilla15', 'password15', 'unique_id15');


-- tabla Configs 

INSERT INTO Configuraciones (usuario_id, motor_busqueda, otras_preferencias)
VALUES
  (1, 'Google', 'Preferencia 1'),
  (2, 'Bing', 'Preferencia 2'),
  (3, 'DuckDuckGo', 'Preferencia 3'),
  (4, 'Google', 'Preferencia 4'),
  (5, 'Bing', 'Preferencia 5'),
  (6, 'DuckDuckGo', 'Preferencia 6'),
  (7, 'Google', 'Preferencia 7'),
  (8, 'Bing', 'Preferencia 8'),
  (9, 'DuckDuckGo', 'Preferencia 9'),
  (10, 'Google', 'Preferencia 10'),
  (11, 'Bing', 'Preferencia 11'),
  (12, 'DuckDuckGo', 'Preferencia 12'),
  (13, 'Google', 'Preferencia 13'),
  (14, 'Bing', 'Preferencia 14'),
  (15, 'DuckDuckGo', 'Preferencia 15');


-- modificaciones::
UPDATE Configuraciones SET motor_busqueda = 'Yahoo' WHERE configuracion_id = 1;
UPDATE Configuraciones SET otras_preferencias = 'Nuevas preferencias' WHERE configuracion_id = 2;
UPDATE Configuraciones SET motor_busqueda = 'DuckDuckGo' WHERE configuracion_id = 3;
UPDATE Configuraciones SET otras_preferencias = 'Preferencias actualizadas' WHERE configuracion_id = 4;
UPDATE Configuraciones SET motor_busqueda = 'Google' WHERE configuracion_id = 5;
UPDATE Configuraciones SET otras_preferencias = 'Otras preferencias' WHERE configuracion_id = 6;
UPDATE Configuraciones SET motor_busqueda = 'Bing' WHERE configuracion_id = 7;
UPDATE Configuraciones SET otras_preferencias = 'Nuevas preferencias' WHERE configuracion_id = 8;

-- desto package dot:bob
-- Eliminaciones
DELETE FROM Configuraciones WHERE configuracion_id = 9;
DELETE FROM Configuraciones WHERE configuracion_id = 10;
DELETE FROM Configuraciones WHERE configuracion_id = 11;




