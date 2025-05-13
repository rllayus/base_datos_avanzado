CREATE USER user_02 WITH
LOGIN
NOSUPERUSER
INHERIT
NOCREATEDB
NOCREATEROLE
NOREPLICATION;
--Cambiar contrasenia del usuario
ALTER USER user_02 WITH PASSWORD '123456';
--crear una base de datos con propietario especifico
CREATE DATABASE my_db2 WITH OWNER user_02;
--Asignar privilegios al usuario de de la base de datos
GRANT ALL PRIVILEGES ON DATABASE my_db2 TO user_02;