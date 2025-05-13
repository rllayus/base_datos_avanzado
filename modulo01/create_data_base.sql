CREATE USER my_db WITH
LOGIN
NOSUPERUSER
INHERIT
NOCREATEDB
NOCREATEROLE
NOREPLICATION;
--Cambiar contrasenia del usuario
ALTER USER user_01 WITH PASSWORD '123456';
--crear una base de datos con propietario especifico
CREATE DATABASE my_db WITH OWNER user_01;
--Asignar privilegios al usuario de de la base de datos
GRANT ALL PRIVILEGES ON DATABASE my_db TO user_01;