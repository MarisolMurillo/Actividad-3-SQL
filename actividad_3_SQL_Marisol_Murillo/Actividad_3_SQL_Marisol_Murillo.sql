-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tienda_deportiva_el_podio
DROP DATABASE IF EXISTS `tienda_deportiva_el_podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el_podio`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '"0"',
  `phone` varchar(45) NOT NULL DEFAULT '"0054534211"',
  `premium_customer` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='En este campo contiene toda la informacion de los clientes de la empresa';

-- Volcando datos para la tabla tienda_deportiva_el_podio.customers: ~3 rows (aproximadamente)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `phone`, `premium_customer`) VALUES
	(1, 'patricia gomez perea', '"0054534211"', b'1'),
	(2, 'camilo hernandez ', '3214235136', b'0'),
	(3, 'martha murillo', '"0054534211"', b'1');

-- Volcando estructura para tabla tienda_deportiva_el_podio.invoices
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `worth` float(12,3) NOT NULL,
  `products_id` smallint(5) NOT NULL,
  `customers_id` smallint(5) NOT NULL,
  `paymentmethods_id` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Este campo tiene la informacion acerca de las facturas de compras de la empresa';

-- Volcando datos para la tabla tienda_deportiva_el_podio.invoices: ~3 rows (aproximadamente)
DELETE FROM `invoices`;
INSERT INTO `invoices` (`id`, `date`, `worth`, `products_id`, `customers_id`, `paymentmethods_id`) VALUES
	(1, '2022-06-13', 32000.000, 1, 2, 2),
	(2, '2022-03-12', 65000.000, 2, 1, 2),
	(3, '2022-06-30', 100000.000, 3, 3, 1);

-- Volcando estructura para tabla tienda_deportiva_el_podio.payment_methods
DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla contieene la informacion de los metodos de pagos que utilizo el cliente para finalizar su compra';

-- Volcando datos para la tabla tienda_deportiva_el_podio.payment_methods: ~3 rows (aproximadamente)
DELETE FROM `payment_methods`;
INSERT INTO `payment_methods` (`id`, `payment`) VALUES
	(1, 'tdc amex'),
	(2, 'efectivo'),
	(3, 'cheque');

-- Volcando estructura para tabla tienda_deportiva_el_podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '0',
  `measure` varchar(45) NOT NULL DEFAULT '0',
  `imported_product` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Este campo contiene la informacion de los productos de la empresa';

-- Volcando datos para la tabla tienda_deportiva_el_podio.products: ~3 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `measure`, `imported_product`) VALUES
	(1, 'racket', '65', b'1'),
	(2, 'bate beisbol', '87.1', b'1'),
	(3, 'balon futbol', '32', b'0');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
