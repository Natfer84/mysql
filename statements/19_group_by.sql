--Comando para agrupar filas con el mismo valor 
SELECT MAX(age) FROM hellow_mysql.alumnos GROUP BY age;
SELECT COUNT(age) FROM hellow_mysql.alumnos GROUP BY age;
SELECT COUNT(age) FROM hellow_mysql.alumnos GROUP BY age ORDER BY age ASC
SELECT COUNT(age) FROM hellow_mysql.alumnos WHERE age > 35 GROUP BY age ORDER BY age ASC