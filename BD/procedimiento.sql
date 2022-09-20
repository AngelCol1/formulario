DROP procedure IF EXISTS `sp_mostrar_datos`;

DELIMITER $$
USE `sakila`$$
CREATE PROCEDURE `sp_mostrar_datos` ()
BEGIN
SELECT 
id,
Nombre,
Nacademico,
Estadocivil
FROM procedimiento;
END$$

DELIMITER ;

DROP procedure IF EXISTS `sp_insertar_datos`;

DELIMITER $$
USE `sakila`$$
CREATE PROCEDURE `sp_insertar_datos` (in NombreI varchar(50), 
                                      in NacademicoI varchar(50), 
									  in EstadocivilI varchar(50))
BEGIN
INSERT INTO procedimiento(
Nombre,
Nacademico,
Estadocivil
)
VALUES(NombreI,NacademiaI,EstadocivilI);
END$$

DELIMITER ;

DROP procedure IF EXISTS `sp_actualizar_datos`;

DELIMITER $$
USE `sakila`$$
CREATE PROCEDURE `sp_actualiza_datos` (in NombreU varchar(50), 
                                       in NacademicoU varchar(50), 
									   in EstadocivilU varchar(50),
									   in idU int)
BEGIN                              
UPDATE procedimiento SET 
Nombre = NombreU,
Nacademico = NacademicoU,
Estadocivil = EstadocivilU
WHERE id = idU;
END$$

DELIMITER ;

DROP procedure IF EXISTS `sp_eliminar_datos`;

DELIMITER $$
USE `sakila`$$
CREATE PROCEDURE `sp_eliminar_datos` (in idD int)
BEGIN
DELETE FROM procedimiento 
WHERE id = idD;
END$$

DELIMITER ;

DROP procedure IF EXISTS `sp_obtener_registro`;

DELIMITER $$
USE `sakila`$$
CREATE PROCEDURE `sp_obtener_registro` (in idO int)
BEGIN
SELECT * FROM procedimiento WHERE id = idO;
END$$

DELIMITER ;