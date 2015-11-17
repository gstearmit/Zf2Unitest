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
  `avatar` text,
  `datetime` datetime DEFAULT NULL,
  `recover` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `login_attempts`, `login_attempt_time`, `first_name`, `last_name`, `status`, `last_signed_in`, `avatar`, `datetime`, `recover`) VALUES
	(1, 'gstearmit@gmail.com', 'ccfc43f716fb8c8078a2c4a0c5a8ee09aa59f0a8', 0, 0, 'Manger', 'Gsteam', 'Active', NULL, NULL, '0000-00-00 00:00:00', ''),
	(2, 'mohit.singh@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Mohit', 'Kumar', 'Active', NULL, NULL, '0000-00-00 00:00:00', ''),
	(3, 'arvind.singh@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Arvind', 'Singh', 'Active', NULL, NULL, '0000-00-00 00:00:00', ''),
	(4, 'tarun.singhal@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Tarun', 'Singhal', 'Active', NULL, NULL, '0000-00-00 00:00:00', ''),
	(5, 'phuca4@gmail.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Hoang Phuc', 'Cong', 'Active', NULL, NULL, '0000-00-00 00:00:00', ''),
	(6, 'moneypolodigital@gmail.com', 'ccfc43f716fb8c8078a2c4a0c5a8ee09aa59f0a8', 0, 0, 'Supper', 'Hoang', 'Active', NULL, NULL, '0000-00-00 00:00:00', '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
