-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for zf2unitest
CREATE DATABASE IF NOT EXISTS `zf2unitest` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zf2unitest`;


-- Dumping structure for table zf2unitest.album
CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.album: ~5 rows (approximately)
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`id`, `artist`, `title`) VALUES
	(2, 'Adele', '21'),
	(3, 'Bruce  Springsteen', 'Wrecking Ball (Deluxe)'),
	(4, 'Lana  Del  Rey', 'Born  To  Die'),
	(5, 'Gotye', 'Making  Mirrors');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.deal
CREATE TABLE IF NOT EXISTS `deal` (
  `dealId` int(10) NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `product` varchar(255) NOT NULL,
  PRIMARY KEY (`dealId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.deal: ~0 rows (approximately)
/*!40000 ALTER TABLE `deal` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.ordering
CREATE TABLE IF NOT EXISTS `ordering` (
  `orderId` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `deal` int(10) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.ordering: ~0 rows (approximately)
/*!40000 ALTER TABLE `ordering` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordering` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.product
CREATE TABLE IF NOT EXISTS `product` (
  `productId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(10) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.product: ~0 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`productId`, `name`, `stock`) VALUES
	('1234', 'shop', 123);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
