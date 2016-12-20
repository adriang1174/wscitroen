-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: forms
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evento` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `localidad` varchar(100) NOT NULL DEFAULT '',
  `codpostal` varchar(30) NOT NULL DEFAULT '',
  `telefono` varchar(30) NOT NULL DEFAULT '',
  `dni` varchar(20) NOT NULL DEFAULT '',
  `fechanac` varchar(15) NOT NULL DEFAULT '',
  `estadocivil` varchar(30) NOT NULL DEFAULT '',
  `canthijos` varchar(5) NOT NULL DEFAULT '',
  `ocupacion` varchar(200) NOT NULL DEFAULT '',
  `deportes` varchar(200) NOT NULL DEFAULT '',
  `auto` varchar(100) NOT NULL DEFAULT '',
  `marca` varchar(100) NOT NULL DEFAULT '',
  `modelo` varchar(100) NOT NULL DEFAULT '',
  `patente` varchar(15) NOT NULL DEFAULT '',
  `cambiaauto` varchar(5) NOT NULL DEFAULT '',
  `cmarca` varchar(100) NOT NULL DEFAULT '',
  `cmodelo` varchar(100) NOT NULL DEFAULT '',
  `masinfo` varchar(5) NOT NULL DEFAULT '',
  `suscribe` varchar(5) NOT NULL DEFAULT '',
  `aceptatyc` varchar(5) NOT NULL DEFAULT '',
  `registro` varchar(5) NOT NULL DEFAULT '',
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comentario` varchar(1024) NOT NULL DEFAULT '',
  `contacto` varchar(200),
  `testdrive` varchar(5),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`evento`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_comentario` BEFORE INSERT ON `forms` FOR EACH ROW SET NEW.comentario = CONCAT('Evento: ',NEW.evento,', DNI: ',NEW.dni,', Cant hijos: ',NEW.canthijos,', Ocupacion: ',NEW.ocupacion
									,', Deportes: ',NEW.deportes,', Tiene auto: ',NEW.auto,', Marca: ',NEW.marca,', Modelo: ',NEW.modelo,
									', Cambia el auto: ',NEW.cambiaauto,', Nueva marca: ',NEW.cmarca,', Nuevo Modelo: ',NEW.cmodelo, ', Mas Info: ',NEW.masinfo,
									', Newsletter: ',NEW.suscribe,', Legales. ',NEW.aceptatyc,', Reg en Mycitroen: ',NEW.registro) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_comentario` BEFORE UPDATE ON `forms` FOR EACH ROW SET NEW.comentario = CONCAT('Evento: ',NEW.evento,', DNI: ',NEW.dni,', Cant hijos: ',NEW.canthijos,', Ocupacion: ',NEW.ocupacion
									,', Deportes: ',NEW.deportes,', Tiene auto: ',NEW.auto,', Marca: ',NEW.marca,', Modelo: ',NEW.modelo,
									', Cambia el auto: ',NEW.cambiaauto,', Nueva marca: ',NEW.cmarca,', Nuevo Modelo: ',NEW.cmodelo, ', Mas Info: ',NEW.masinfo,
									', Newsletter: ',NEW.suscribe,', Legales. ',NEW.aceptatyc,', Reg en Mycitroen: ',NEW.registro) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `formscrm`
--

DROP TABLE IF EXISTS `formscrm`;
/*!50001 DROP VIEW IF EXISTS `formscrm`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `formscrm` (
  `id` tinyint NOT NULL,
  `evento` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `apellido` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `localidad` tinyint NOT NULL,
  `codpostal` tinyint NOT NULL,
  `telefono` tinyint NOT NULL,
  `dni` tinyint NOT NULL,
  `fechanac` tinyint NOT NULL,
  `estadocivil` tinyint NOT NULL,
  `canthijos` tinyint NOT NULL,
  `ocupacion` tinyint NOT NULL,
  `deportes` tinyint NOT NULL,
  `auto` tinyint NOT NULL,
  `marca` tinyint NOT NULL,
  `modelo` tinyint NOT NULL,
  `patente` tinyint NOT NULL,
  `cambiaauto` tinyint NOT NULL,
  `cmarca` tinyint NOT NULL,
  `cmodelo` tinyint NOT NULL,
  `masinfo` tinyint NOT NULL,
  `suscribe` tinyint NOT NULL,
  `aceptatyc` tinyint NOT NULL,
  `registro` tinyint NOT NULL,
  `timest` tinyint NOT NULL,
  `comentario` tinyint NOT NULL,
  `filial` tinyint NOT NULL,
  `idcliente` tinyint NOT NULL,
  `aplicacionsrc` tinyint NOT NULL,
  `tipoidcliente` tinyint NOT NULL,
  `tipocliente` tinyint NOT NULL,
  `apellido2` tinyint NOT NULL,
  `c10` tinyint NOT NULL,
  `c11` tinyint NOT NULL,
  `c13` tinyint NOT NULL,
  `c14` tinyint NOT NULL,
  `c17` tinyint NOT NULL,
  `c18` tinyint NOT NULL,
  `c20` tinyint NOT NULL,
  `c21` tinyint NOT NULL,
  `c23` tinyint NOT NULL,
  `c24` tinyint NOT NULL,
  `c25` tinyint NOT NULL,
  `c26` tinyint NOT NULL,
  `c27` tinyint NOT NULL,
  `c28` tinyint NOT NULL,
  `c29` tinyint NOT NULL,
  `c30` tinyint NOT NULL,
  `c31` tinyint NOT NULL,
  `c32` tinyint NOT NULL,
  `c33` tinyint NOT NULL,
  `c34` tinyint NOT NULL,
  `c35` tinyint NOT NULL,
  `c36` tinyint NOT NULL,
  `c38` tinyint NOT NULL,
  `c39` tinyint NOT NULL,
  `c40` tinyint NOT NULL,
  `c41` tinyint NOT NULL,
  `c42` tinyint NOT NULL,
  `c43` tinyint NOT NULL,
  `c44` tinyint NOT NULL,
  `c45` tinyint NOT NULL,
  `c46` tinyint NOT NULL,
  `c47` tinyint NOT NULL,
  `c48` tinyint NOT NULL,
  `c49` tinyint NOT NULL,
  `c50` tinyint NOT NULL,
  `c51` tinyint NOT NULL,
  `c52` tinyint NOT NULL,
  `c53` tinyint NOT NULL,
  `c54` tinyint NOT NULL,
  `c55` tinyint NOT NULL,
  `c56` tinyint NOT NULL,
  `c57` tinyint NOT NULL,
  `c58` tinyint NOT NULL,
  `c59` tinyint NOT NULL,
  `c60` tinyint NOT NULL,
  `c61` tinyint NOT NULL,
  `c62` tinyint NOT NULL,
  `c63` tinyint NOT NULL,
  `c64` tinyint NOT NULL,
  `c66` tinyint NOT NULL,
  `c67` tinyint NOT NULL,
  `c68` tinyint NOT NULL,
  `c69` tinyint NOT NULL,
  `c70` tinyint NOT NULL,
  `c71` tinyint NOT NULL,
  `c72` tinyint NOT NULL,
  `c73` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '',
  `data` text,
  `ip` varchar(40) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `stamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios_bo`
--

DROP TABLE IF EXISTS `usuarios_bo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_bo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `id_perfil` double DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estado` smallint(1) DEFAULT NULL,
  `fecha_ult_acceso` datetime DEFAULT NULL,
  `fecha_ult_modificacion` datetime DEFAULT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xforms`
--

DROP TABLE IF EXISTS `xforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xforms` (
  `filial` varchar(255) NOT NULL,
  `idcliente` varchar(255) NOT NULL,
  `aplicacionsrc` varchar(255) NOT NULL,
  `tipoidcliente` varchar(255) NOT NULL,
  `tipocliente` varchar(255) NOT NULL,
  `apellido2` varchar(255) NOT NULL,
  `c10` varchar(255) NOT NULL,
  `c11` varchar(255) NOT NULL,
  `c13` varchar(255) NOT NULL,
  `c14` varchar(255) NOT NULL,
  `c17` varchar(255) NOT NULL,
  `c18` varchar(255) NOT NULL,
  `c20` varchar(255) NOT NULL,
  `c21` varchar(255) NOT NULL,
  `c23` varchar(255) NOT NULL,
  `c24` varchar(255) NOT NULL,
  `c25` varchar(255) NOT NULL,
  `c26` varchar(255) NOT NULL,
  `c27` varchar(255) NOT NULL,
  `c28` varchar(255) NOT NULL,
  `c29` varchar(255) NOT NULL,
  `c30` varchar(255) NOT NULL,
  `c31` varchar(255) NOT NULL,
  `c32` varchar(255) NOT NULL,
  `c33` varchar(255) NOT NULL,
  `c34` varchar(255) NOT NULL,
  `c35` varchar(255) NOT NULL,
  `c36` varchar(255) NOT NULL,
  `c38` varchar(255) NOT NULL,
  `c39` varchar(255) NOT NULL,
  `c40` varchar(255) NOT NULL,
  `c41` varchar(255) NOT NULL,
  `c42` varchar(255) NOT NULL,
  `c43` varchar(255) NOT NULL,
  `c44` varchar(255) NOT NULL,
  `c45` varchar(255) NOT NULL,
  `c46` varchar(255) NOT NULL,
  `c47` varchar(255) NOT NULL,
  `c48` varchar(255) NOT NULL,
  `c49` varchar(255) NOT NULL,
  `c50` varchar(255) NOT NULL,
  `c51` varchar(255) NOT NULL,
  `c52` varchar(255) NOT NULL,
  `c53` varchar(255) NOT NULL,
  `c54` varchar(255) NOT NULL,
  `c55` varchar(255) NOT NULL,
  `c56` varchar(255) NOT NULL,
  `c57` varchar(255) NOT NULL,
  `c58` varchar(255) NOT NULL,
  `c59` varchar(255) NOT NULL,
  `c60` varchar(255) NOT NULL,
  `c61` varchar(255) NOT NULL,
  `c62` varchar(255) NOT NULL,
  `c63` varchar(255) NOT NULL,
  `c64` varchar(255) NOT NULL,
  `c66` varchar(255) NOT NULL,
  `c67` varchar(255) NOT NULL,
  `c68` varchar(255) NOT NULL,
  `c69` varchar(255) NOT NULL,
  `c70` varchar(255) NOT NULL,
  `c71` varchar(255) NOT NULL,
  `c72` varchar(255) NOT NULL,
  `c73` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `formscrm`
--

/*!50001 DROP TABLE IF EXISTS `formscrm`*/;
/*!50001 DROP VIEW IF EXISTS `formscrm`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `formscrm` AS select `forms`.`id` AS `id`,`forms`.`evento` AS `evento`,`forms`.`nombre` AS `nombre`,`forms`.`apellido` AS `apellido`,`forms`.`email` AS `email`,`forms`.`localidad` AS `localidad`,`forms`.`codpostal` AS `codpostal`,`forms`.`telefono` AS `telefono`,`forms`.`dni` AS `dni`,`forms`.`fechanac` AS `fechanac`,`forms`.`estadocivil` AS `estadocivil`,`forms`.`canthijos` AS `canthijos`,`forms`.`ocupacion` AS `ocupacion`,`forms`.`deportes` AS `deportes`,`forms`.`auto` AS `auto`,`forms`.`marca` AS `marca`,`forms`.`modelo` AS `modelo`,`forms`.`patente` AS `patente`,`forms`.`cambiaauto` AS `cambiaauto`,`forms`.`cmarca` AS `cmarca`,`forms`.`cmodelo` AS `cmodelo`,`forms`.`masinfo` AS `masinfo`,`forms`.`suscribe` AS `suscribe`,`forms`.`aceptatyc` AS `aceptatyc`,`forms`.`registro` AS `registro`,`forms`.`timest` AS `timest`,`forms`.`comentario` AS `comentario`,`xforms`.`filial` AS `filial`,`xforms`.`idcliente` AS `idcliente`,`xforms`.`aplicacionsrc` AS `aplicacionsrc`,`xforms`.`tipoidcliente` AS `tipoidcliente`,`xforms`.`tipocliente` AS `tipocliente`,`xforms`.`apellido2` AS `apellido2`,`xforms`.`c10` AS `c10`,`xforms`.`c11` AS `c11`,`xforms`.`c13` AS `c13`,`xforms`.`c14` AS `c14`,`xforms`.`c17` AS `c17`,`xforms`.`c18` AS `c18`,`xforms`.`c20` AS `c20`,`xforms`.`c21` AS `c21`,`xforms`.`c23` AS `c23`,`xforms`.`c24` AS `c24`,`xforms`.`c25` AS `c25`,`xforms`.`c26` AS `c26`,`xforms`.`c27` AS `c27`,`xforms`.`c28` AS `c28`,`xforms`.`c29` AS `c29`,`xforms`.`c30` AS `c30`,`xforms`.`c31` AS `c31`,`xforms`.`c32` AS `c32`,`xforms`.`c33` AS `c33`,`xforms`.`c34` AS `c34`,`xforms`.`c35` AS `c35`,`xforms`.`c36` AS `c36`,`xforms`.`c38` AS `c38`,`xforms`.`c39` AS `c39`,`xforms`.`c40` AS `c40`,`xforms`.`c41` AS `c41`,`xforms`.`c42` AS `c42`,`xforms`.`c43` AS `c43`,`xforms`.`c44` AS `c44`,`xforms`.`c45` AS `c45`,`xforms`.`c46` AS `c46`,`xforms`.`c47` AS `c47`,`xforms`.`c48` AS `c48`,`xforms`.`c49` AS `c49`,`xforms`.`c50` AS `c50`,`xforms`.`c51` AS `c51`,`xforms`.`c52` AS `c52`,`xforms`.`c53` AS `c53`,`xforms`.`c54` AS `c54`,`xforms`.`c55` AS `c55`,`xforms`.`c56` AS `c56`,`xforms`.`c57` AS `c57`,`xforms`.`c58` AS `c58`,`xforms`.`c59` AS `c59`,`xforms`.`c60` AS `c60`,`xforms`.`c61` AS `c61`,`xforms`.`c62` AS `c62`,`xforms`.`c63` AS `c63`,`xforms`.`c64` AS `c64`,`xforms`.`c66` AS `c66`,`xforms`.`c67` AS `c67`,`xforms`.`c68` AS `c68`,`xforms`.`c69` AS `c69`,`xforms`.`c70` AS `c70`,`xforms`.`c71` AS `c71`,`xforms`.`c72` AS `c72`,`xforms`.`c73` AS `c73` from (`forms` join `xforms`) where ((`forms`.`cambiaauto` = 'Si') and (ucase(`forms`.`cmarca`) = 'CITROEN')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-19 22:35:39
