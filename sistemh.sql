-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.31-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para sistemh
CREATE DATABASE IF NOT EXISTS `sistemh` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sistemh`;

-- Volcando estructura para tabla sistemh.lectura
CREATE TABLE IF NOT EXISTS `lectura` (
  `id_lectura` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` int(11) DEFAULT NULL,
  `id_sensor` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `parametro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lectura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='0 por debajo promedio\r\n1 normal\r\n2 por encima promedio\r\n3 sin configurar';

-- Volcando datos para la tabla sistemh.lectura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lectura` DISABLE KEYS */;
/*!40000 ALTER TABLE `lectura` ENABLE KEYS */;

-- Volcando estructura para tabla sistemh.parametros
CREATE TABLE IF NOT EXISTS `parametros` (
  `id_parametro` int(11) NOT NULL AUTO_INCREMENT,
  `id_sensor` int(11) DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT 0,
  `id_ubicacion` int(11) NOT NULL DEFAULT 0,
  `pmin` double NOT NULL DEFAULT 0,
  `pmax` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_parametro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistemh.parametros: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;

-- Volcando estructura para tabla sistemh.sensores
CREATE TABLE IF NOT EXISTS `sensores` (
  `id_sensor` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` int(11) NOT NULL DEFAULT 0,
  `ubicacion` int(11) NOT NULL DEFAULT 0,
  `zona` int(11) NOT NULL DEFAULT 0,
  `sts` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sensor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='0 humedad y temperatura suelo\r\n1 humedad y temperatura ambiente';

-- Volcando datos para la tabla sistemh.sensores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sensores` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensores` ENABLE KEYS */;

-- Volcando estructura para tabla sistemh.tiposensor
CREATE TABLE IF NOT EXISTS `tiposensor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistemh.tiposensor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tiposensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiposensor` ENABLE KEYS */;

-- Volcando estructura para tabla sistemh.ubicacion
CREATE TABLE IF NOT EXISTS `ubicacion` (
  `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_zona` int(11) NOT NULL DEFAULT 0,
  `descripcion` int(11) NOT NULL DEFAULT 0,
  `lat` varchar(50) NOT NULL DEFAULT '0',
  `long` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistemh.ubicacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;

-- Volcando estructura para tabla sistemh.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `apellido` varchar(50) NOT NULL DEFAULT '0',
  `nombre_usuario` varchar(50) NOT NULL DEFAULT '0',
  `contraseña` varchar(50) NOT NULL DEFAULT '0',
  `nivel` int(11) NOT NULL DEFAULT 0,
  `sts` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistemh.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Volcando estructura para tabla sistemh.zona
CREATE TABLE IF NOT EXISTS `zona` (
  `id_zona` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_zona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistemh.zona: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `zona` DISABLE KEYS */;
/*!40000 ALTER TABLE `zona` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
