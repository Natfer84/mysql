SELECT *,
CASE
	WHEN age > 17 THEN "true"
    ELSE "false"
    END AS "es mayor de edad?"
    FROM hellow_mysql.alumnos;


SELECT *,
CASE
	WHEN age > 17 THEN "Es mayor de edad"
    ELSE "Es menor de edad"
    END AS "es mayor de edad?"
    FROM hellow_mysql.alumnos;