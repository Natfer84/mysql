--comando concat=concatenar cadenas
SELECT CONCAT(name, " ", surname) FROM hellow_mysql.alumnos;
--creas en una misma columna el nombre y el apellido (dos, columnas)
-- Las comillas para dejar espacio
SELECT CONCAT("Nombre:" , name, " ", "Apellidos:", surname) FROM hellow_mysql.alumnos;
SELECT CONCAT("Nombre:" , name, " ", "Apellidos:", surname) AS "Nombre completo" FROM hellow_mysql.alumnos;