--Comando NULL, es nulo
--COMANDO NOT NULL, no es nulo
SELECT * FROM hellow_mysql.alumnos WHERE email IS NULL
SELECT * FROM hellow_mysql.alumnos WHERE email IS NOT NULL AND age = 35;