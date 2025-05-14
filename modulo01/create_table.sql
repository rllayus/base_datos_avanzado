drop table if exists my_user;
drop sequence if exists seq_my_user;


create table my_user(
    id int primary key ,
    name varchar(60) not null,
    lastname varchar(60) not null,
    document_number varchar(15) not null,
    age int,
    gender char(1)
);

CREATE SEQUENCE seq_my_user
INCREMENT BY 1
START WITH 1
MAXVALUE 1000000000000000
CACHE 200
owned by my_user.id;

-- Definir un generador de valores por defecto para una columna
ALTER TABLE my_user ALTER COLUMN id SET DEFAULT nextval('seq_my_user');

--- Insert de varios registros
insert into my_user( id,name, lastname, document_number, age, gender)
values (nextval('seq_my_user'),'Ricardo', 'Laredo', '11231231231', 18, 'F' ),
       ( nextval('seq_my_user'),'Ricardo', 'Laredo', '11231231231', 20, 'M');


-- Insert aleatorio de varios registros
INSERT INTO my_user (id, name, lastname, document_number, age, gender)
SELECT
    nextval('seq_my_user'),
    'Nombre' || s.i,
    'Apellido' || s.i,
    SUBSTR(md5(random()::text), 1, 15),
    floor(random() * (65 - 18 + 1) + 18),
    CASE WHEN random() < 0.5 THEN 'M' ELSE 'F' END
FROM generate_series(1, 100000) AS s(i);


---

