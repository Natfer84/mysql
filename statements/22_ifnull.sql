--Función nula (null)
SELECT name, surname, IFNULL(age,0) FROM hellow_mysql.alumnos 
--Cuando el campo está a vacío con null aparecedia un 0