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

-- Dumping data for table zf2unitest.album: ~4 rows (approximately)
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


-- Dumping structure for table zf2unitest.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(45) NOT NULL,
  `resource_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table zf2unitest.permission: ~6 rows (approximately)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` (`id`, `permission_name`, `resource_id`) VALUES
	(1, 'index', 1),
	(5, 'view', 1),
	(6, 'manager', 1),
	(7, 'employee', 1),
	(8, 'customer', 1),
	(9, 'guest', 1);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;


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


-- Dumping structure for table zf2unitest.resource
CREATE TABLE IF NOT EXISTS `resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table zf2unitest.resource: ~3 rows (approximately)
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` (`id`, `resource_name`) VALUES
	(1, 'Application\\Controller\\Index'),
	(2, 'Album\\Cotroller\\Album '),
	(3, 'Users\\Controller\\Index');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.role
CREATE TABLE IF NOT EXISTS `role` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.role: ~4 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`rid`, `role_name`, `status`) VALUES
	(1, 'Manager', 'Active'),
	(2, 'Employee', 'Active'),
	(3, 'Customer', 'Active'),
	(4, 'Guest', 'Active');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.role_permission
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table zf2unitest.role_permission: ~7 rows (approximately)
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
	(1, 1, 1),
	(9, 1, 5),
	(10, 1, 6),
	(11, 2, 7),
	(12, 3, 8),
	(13, 4, 9),
	(14, 1, 7);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(101) NOT NULL,
  `password` varchar(45) NOT NULL,
  `login_attempts` int(11) NOT NULL DEFAULT '0',
  `login_attempt_time` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_signed_in` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `login_attempts`, `login_attempt_time`, `first_name`, `last_name`, `status`, `last_signed_in`) VALUES
	(1, 'gstearmit@gmail.com', 'ccfc43f716fb8c8078a2c4a0c5a8ee09aa59f0a8', 0, 0, 'Supper', 'Admin', 'Active', NULL),
	(2, 'mohit.singh@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Mohit', 'Kumar', 'Active', NULL),
	(3, 'arvind.singh@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Arvind', 'Singh', 'Active', NULL),
	(4, 'tarun.singhal@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Tarun', 'Singhal', 'Active', NULL),
	(5, 'phuca4@gmail.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Hoang Phuc', 'Cong', 'Active', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.user_role: ~4 rows (approximately)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`id`, `user_id`, `role_id`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
