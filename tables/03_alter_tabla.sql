--Alterar la tabla
--ALTER_TABLE
ALTER TABLE person8
ADD telefono varchar(150);
--renombrar una columna
ALTER TABLE person8
RENAME COLUMN name TO nombre;
--modificar el campo
ALTER TABLE person8
modify column email varchar(5)
--Eliminar una columna
ALTER TABLE person8
DROP COLUMN email;