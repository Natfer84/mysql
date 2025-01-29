--relación 1:1 
-- Creamos otra tabla que contiene el DNI de los alumnos
create table hellow_mysql.dni(
id_dni INT auto_increment primary key,
dni_number int not null,
id_alumnos int,
unique(id_dni),
foreign key(id_alumnos) references alumnos(id_alumnos)
);
--Esta tabla tiene la FK que hace referencia al id key de alumnos. Así están conectadas las tabalas

--relación 1:N
ALTER TABLE hellow_mysql.alumnos 
ADD constraint fk_centro
foreign key (id_centro) references centro (id_centro)
--He alterado la tabla alumnos para crear un FK y conectar con la tabla centro. Ya que centro puede tener muchos alumnos, pero el alumno solo puede tener un curso.

--relación N:N
--crear una tabla intermedia
--lenguajes
--alumnos_lennguajes
--alumnos
CREATE TABLE `alumnos_lenguajes` (
  `id_alumnos_lenguajes` int NOT NULL AUTO_INCREMENT,
  `id_alumnos` int DEFAULT NULL,
  `id_lennguajes` int DEFAULT NULL,
  PRIMARY KEY (`id_alumnos_lenguajes`),
  KEY `id_alumnos_idx` (`id_alumnos`),
  KEY `id_lennguajes_idx` (`id_lennguajes`),
  CONSTRAINT `id_alumnos` FOREIGN KEY (`id_alumnos`) REFERENCES `alumnos` (`id_alumnos`),
  CONSTRAINT `id_lennguajes` FOREIGN KEY (`id_lennguajes`) REFERENCES `lennguajes` (`id_centro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci