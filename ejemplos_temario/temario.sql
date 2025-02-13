-- Modificacmos la tabla pacientes. ALTER TABLE pacientes
-- ADD FOREIGN KEY: añadimos una clave foranea a la tabla pacientes en una nueva columna que hace REFERENCIA  a la tabla cama (id_cama)
-- ON UPDAET CASCADE: significa que si cambias el id enla tabla camas se modifica automaticamente en la columna de la fk de pacientes.
-- ON DELETESET NULL: significa qwue si eliminas un id de la tabla cama, se  pone en NULL en la tabla pacientes
    
    ALTER TABLE Pacientes
    ADD FOREIGN KEY (fk_id_cama) REFERENCES Camas (id_cama) ON UPDATE CASCADE ON DELETE SET NULL;
--modifica en la tabla "id_camas" que 'set' id_camas=11 where donde id_cama=1;
     UPDATE Camas SET id_cama=11 WHERE id_cama=1;
--aquí está modificando que el id 1 sea ahora el 11 de la tabla camas y en la FK de pacientes también se ve modificado 
    
    ALTER TABLE Pacientes_Medicos
    ADD FOREIGN KEY (fk_id_paciente) REFERENCES Pacientes (id_paciente) ON UPDATE CASCADE ON DELETE SET NULL,
    ADD FOREIGN KEY (fk_id_medico) REFERENCES Medicos (id_medico) ON UPDATE CASCADE ON DELETE SET NULL;
--elimina de la tabla tal..(pacientes) donde=where el id sea tal.. id=?
    DELETE FROM Pacientes WHERE id_paciente=3;
    DELETE FROM Medicos WHERE id_medico=5;
--aquí se está eliminando de la tabla paciente el id 3 y se refleja en la tabla paciente-medicos con un null donde estana el id 3

    SELECT id_medico
    FROM Medicos
    WHERE id_medico NOT IN (SELECT fk_id_medico FROM Pacientes_Medicos);
--Selecciona los médicos que NO tienen pacientes asignados. PRimero hace la operación entre paréntesis 
-- NOT IN: Filtra los médicos cuyo id_medico no aparece en la subconsulta.
   
    SELECT nombre
    FROM Medicos
    WHERE id_medico IN (SELECT fk_id_medico FROM Pacientes_Medicos);
-- Selecciona los nombres de los medicos que SÍ tienen pacientes
-- IN: que el id del medico si tiene pacientes

    SELECT DISTINCT (fk_id_medico)
    FROM Pacientes_Medicos;
-- Selecciona los id de medicos de la tabla paciente-medicos
-- DISTINCT: elimina los valores duplicados.

--Selecciona el nombre del médico(con el alias emdico AS) y el del paciente.
--FROM: de la tabla medico, paciente (cuando quieres elecionar dos tablas pones coma)
--WHERE: donde el id medico e id paciente (igual, selecionas varias con coma)
--IN: que estén dentro de la tabla paciente-medicos. Es decir, selecciona el nombre del paciente y del medico en cada atencion
    SELECT Medicos.nombre AS MEDICOS, Pacientes.nombre AS PACIENTES
    FROM Medicos,Pacientes
    WHERE (id_medico, id_paciente) IN (SELECT fk_id_medico, fk_id_paciente FROM Pacientes_Medicos);

--DNI y especialidad de los médicos que han atendido a pacientes que se apellidan Pérez
    SELECT dni,especialidad
    FROM Medicos
    WHERE id_medico IN (SELECT fk_id_medico FROM Pacientes_Medicos WHERE fk_id_paciente IN 
    (SELECT id_paciente FROM Pacientes WHERE apellido1="Pérez")); 