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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.album: ~153 rows (approximately)
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`id`, `artist`, `title`) VALUES
	(2, 'Adele', '21'),
	(4, 'Lana  Del  Rey', 'Born  To  Die'),
	(5, 'Gotye', 'Making  Mirrors'),
	(16, 'David Bowie', 'The Next Day (Deluxe Version)'),
	(17, 'Bastille', 'Bad Blood'),
	(18, 'Bruno Mars', 'Unorthodox Jukebox'),
	(19, 'Emeli Sandé', 'Our Version of Events (Special Edition)'),
	(20, 'Bon Jovi', 'What About Now (Deluxe Version)'),
	(21, 'Justin Timberlake', 'The 20/20 Experience (Deluxe Version)'),
	(22, 'Bastille', 'Bad Blood (The Extended Cut)'),
	(23, 'P!nk', 'The Truth About Love'),
	(24, 'Sound City - Real to Reel', 'Sound City - Real to Reel'),
	(25, 'Jake Bugg', 'Jake Bugg'),
	(26, 'Various Artists', 'The Trevor Nelson Collection'),
	(27, 'David Bowie', 'The Next Day'),
	(28, 'Mumford & Sons', 'Babel'),
	(29, 'The Lumineers', 'The Lumineers'),
	(30, 'Various Artists', 'Get Ur Freak On - R&B Anthems'),
	(31, 'The 1975', 'Music For Cars EP'),
	(32, 'Various Artists', 'Saturday Night Club Classics - Ministry of Sound'),
	(33, 'Hurts', 'Exile (Deluxe)'),
	(34, 'Various Artists', 'Mixmag - The Greatest Dance Tracks of All Time'),
	(35, 'Ben Howard', 'Every Kingdom'),
	(36, 'Stereophonics', 'Graffiti On the Train'),
	(37, 'The Script', '#3'),
	(38, 'Stornoway', 'Tales from Terra Firma'),
	(39, 'David Bowie', 'Hunky Dory (Remastered)'),
	(40, 'Worship Central', 'Let It Be Known (Live)'),
	(41, 'Ellie Goulding', 'Halcyon'),
	(42, 'Various Artists', 'Dermot O\'Leary Presents the Saturday Sessions 2013'),
	(43, 'Stereophonics', 'Graffiti On the Train (Deluxe Version)'),
	(44, 'Dido', 'Girl Who Got Away (Deluxe)'),
	(45, 'Hurts', 'Exile'),
	(46, 'Bruno Mars', 'Doo-Wops & Hooligans'),
	(47, 'Calvin Harris', '18 Months'),
	(48, 'Olly Murs', 'Right Place Right Time'),
	(49, 'Alt-J (?)', 'An Awesome Wave'),
	(50, 'One Direction', 'Take Me Home'),
	(51, 'Various Artists', 'Pop Stars'),
	(52, 'Various Artists', 'Now That\'s What I Call Music! 83'),
	(53, 'John Grant', 'Pale Green Ghosts'),
	(54, 'Paloma Faith', 'Fall to Grace'),
	(55, 'Laura Mvula', 'Sing To the Moon (Deluxe)'),
	(56, 'Duke Dumont', 'Need U (100%) [feat. A*M*E] - EP'),
	(57, 'Watsky', 'Cardboard Castles'),
	(58, 'Blondie', 'Blondie: Greatest Hits'),
	(59, 'Foals', 'Holy Fire'),
	(60, 'Maroon 5', 'Overexposed'),
	(61, 'Bastille', 'Pompeii (Remixes) - EP'),
	(62, 'Imagine Dragons', 'Hear Me - EP'),
	(63, 'Various Artists', '100 Hits: 80s Classics'),
	(64, 'Various Artists', 'Les Misérables (Highlights From the Motion Picture Soundtrack)'),
	(65, 'Mumford & Sons', 'Sigh No More'),
	(66, 'Frank Ocean', 'Channel ORANGE'),
	(67, 'Bon Jovi', 'What About Now'),
	(68, 'Various Artists', 'BRIT Awards 2013'),
	(69, 'Taylor Swift', 'Red'),
	(70, 'Fleetwood Mac', 'Fleetwood Mac: Greatest Hits'),
	(71, 'David Guetta', 'Nothing But the Beat Ultimate'),
	(72, 'Various Artists', 'Clubbers Guide 2013 (Mixed By Danny Howard) - Ministry of Sound'),
	(73, 'David Bowie', 'Best of Bowie'),
	(74, 'Laura Mvula', 'Sing To the Moon'),
	(75, 'ADELE', '21'),
	(76, 'Of Monsters and Men', 'My Head Is an Animal'),
	(77, 'Rihanna', 'Unapologetic'),
	(78, 'Various Artists', 'BBC Radio 1\'s Live Lounge - 2012'),
	(79, 'Avicii & Nicky Romero', 'I Could Be the One (Avicii vs. Nicky Romero)'),
	(80, 'The Streets', 'A Grand Don\'t Come for Free'),
	(81, 'Tim McGraw', 'Two Lanes of Freedom'),
	(82, 'Foo Fighters', 'Foo Fighters: Greatest Hits'),
	(83, 'Various Artists', 'Now That\'s What I Call Running!'),
	(84, 'Swedish House Mafia', 'Until Now'),
	(85, 'The xx', 'Coexist'),
	(86, 'Five', 'Five: Greatest Hits'),
	(87, 'Jimi Hendrix', 'People, Hell & Angels'),
	(88, 'Biffy Clyro', 'Opposites (Deluxe)'),
	(89, 'The Smiths', 'The Sound of the Smiths'),
	(90, 'The Saturdays', 'What About Us - EP'),
	(91, 'Fleetwood Mac', 'Rumours'),
	(92, 'Various Artists', 'The Big Reunion'),
	(93, 'Various Artists', 'Anthems 90s - Ministry of Sound'),
	(94, 'The Vaccines', 'Come of Age'),
	(95, 'Nicole Scherzinger', 'Boomerang (Remixes) - EP'),
	(96, 'Bob Marley', 'Legend (Bonus Track Version)'),
	(97, 'Josh Groban', 'All That Echoes'),
	(98, 'Blue', 'Best of Blue'),
	(99, 'Ed Sheeran', '+'),
	(100, 'Olly Murs', 'In Case You Didn\'t Know (Deluxe Edition)'),
	(101, 'Macklemore & Ryan Lewis', 'The Heist (Deluxe Edition)'),
	(102, 'Various Artists', 'Defected Presents Most Rated Miami 2013'),
	(103, 'Gorgon City', 'Real EP'),
	(104, 'Mumford & Sons', 'Babel (Deluxe Version)'),
	(105, 'Various Artists', 'The Music of Nashville: Season 1, Vol. 1 (Original Soundtrack)'),
	(106, 'Various Artists', 'The Twilight Saga: Breaking Dawn, Pt. 2 (Original Motion Picture Soundtrack)'),
	(107, 'Various Artists', 'Mum - The Ultimate Mothers Day Collection'),
	(108, 'One Direction', 'Up All Night'),
	(109, 'Bon Jovi', 'Bon Jovi Greatest Hits'),
	(110, 'Agnetha Fältskog', 'A'),
	(111, 'Fun.', 'Some Nights'),
	(112, 'Justin Bieber', 'Believe Acoustic'),
	(113, 'Atoms for Peace', 'Amok'),
	(114, 'Justin Timberlake', 'Justified'),
	(115, 'Passenger', 'All the Little Lights'),
	(116, 'Kodaline', 'The High Hopes EP'),
	(117, 'Lana Del Rey', 'Born to Die'),
	(118, 'JAY Z & Kanye West', 'Watch the Throne (Deluxe Version)'),
	(119, 'Biffy Clyro', 'Opposites'),
	(120, 'Various Artists', 'Return of the 90s'),
	(121, 'Gabrielle Aplin', 'Please Don\'t Say You Love Me - EP'),
	(122, 'Various Artists', '100 Hits - Driving Rock'),
	(123, 'Jimi Hendrix', 'Experience Hendrix - The Best of Jimi Hendrix'),
	(124, 'Various Artists', 'The Workout Mix 2013'),
	(125, 'The 1975', 'Sex'),
	(126, 'Chase & Status', 'No More Idols'),
	(127, 'Rihanna', 'Unapologetic (Deluxe Version)'),
	(128, 'The Killers', 'Battle Born'),
	(129, 'Olly Murs', 'Right Place Right Time (Deluxe Edition)'),
	(130, 'A$AP Rocky', 'LONG.LIVE.A$AP (Deluxe Version)'),
	(131, 'Various Artists', 'Cooking Songs'),
	(132, 'Haim', 'Forever - EP'),
	(133, 'Lianne La Havas', 'Is Your Love Big Enough?'),
	(134, 'Michael Bublé', 'To Be Loved'),
	(135, 'Daughter', 'If You Leave'),
	(136, 'The xx', 'xx'),
	(137, 'Eminem', 'Curtain Call'),
	(138, 'Kendrick Lamar', 'good kid, m.A.A.d city (Deluxe)'),
	(139, 'Disclosure', 'The Face - EP'),
	(140, 'Palma Violets', '180'),
	(141, 'Cody Simpson', 'Paradise'),
	(142, 'Ed Sheeran', '+ (Deluxe Version)'),
	(143, 'Michael Bublé', 'Crazy Love (Hollywood Edition)'),
	(144, 'Bon Jovi', 'Bon Jovi Greatest Hits - The Ultimate Collection'),
	(145, 'Rita Ora', 'Ora'),
	(146, 'g33k', 'Spabby'),
	(147, 'Various Artists', 'Annie Mac Presents 2012'),
	(148, 'David Bowie', 'The Platinum Collection'),
	(149, 'Bridgit Mendler', 'Ready or Not (Remixes) - EP'),
	(150, 'Dido', 'Girl Who Got Away'),
	(151, 'Various Artists', 'Now That\'s What I Call Disney'),
	(152, 'The 1975', 'Facedown - EP'),
	(153, 'Kodaline', 'The Kodaline - EP'),
	(154, 'Various Artists', '100 Hits: Super 70s'),
	(155, 'Fred V & Grafix', 'Goggles - EP'),
	(156, 'Biffy Clyro', 'Only Revolutions (Deluxe Version)'),
	(157, 'Train', 'California 37'),
	(158, 'Ben Howard', 'Every Kingdom (Deluxe Edition)'),
	(159, 'Various Artists', 'Motown Anthems'),
	(160, 'Courteeners', 'ANNA'),
	(161, 'Johnny Marr', 'The Messenger'),
	(162, 'Rodriguez', 'Searching for Sugar Man'),
	(163, 'Jessie Ware', 'Devotion'),
	(164, 'Bruno Mars', 'Unorthodox Jukebox'),
	(165, 'Various Artists', 'Call the Midwife (Music From the TV Series)');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table zf2unitest.permission: ~6 rows (approximately)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` (`id`, `permission_name`, `resource_id`) VALUES
	(1, 'index', 1),
	(5, 'view', 1),
	(6, 'manager', 1),
	(7, 'employee', 1),
	(8, 'customer', 1),
	(9, 'guest', 1),
	(12, 'dashboardUser', 3);
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
	(3, 'Users\\Controller\\User');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.role
CREATE TABLE IF NOT EXISTS `role` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.role: ~6 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`rid`, `role_name`, `status`) VALUES
	(1, 'Manager', 'Active'),
	(2, 'Employee', 'Active'),
	(3, 'Customer', 'Active'),
	(4, 'Guest', 'Active'),
	(5, 'MoneyPoint', 'Active');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.role_permission
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table zf2unitest.role_permission: ~7 rows (approximately)
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
	(1, 1, 1),
	(9, 1, 5),
	(10, 1, 6),
	(11, 2, 7),
	(12, 3, 8),
	(13, 4, 9),
	(14, 1, 7),
	(15, 1, 12);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.sampletable
CREATE TABLE IF NOT EXISTS `sampletable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` smallint(6) DEFAULT '2',
  `email` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` text,
  `direction` smallint(6) DEFAULT '1',
  `hobby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.sampletable: ~0 rows (approximately)
/*!40000 ALTER TABLE `sampletable` DISABLE KEYS */;
INSERT INTO `sampletable` (`id`, `name`, `gender`, `email`, `birth`, `address`, `direction`, `hobby`) VALUES
	(1, 'Hoang Phuc', 2, 'phuca4@gmail.com', '2015-11-17', 'Ha Noi', 1, NULL);
/*!40000 ALTER TABLE `sampletable` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `login_attempts`, `login_attempt_time`, `first_name`, `last_name`, `status`, `last_signed_in`) VALUES
	(1, 'gstearmit@gmail.com', 'ccfc43f716fb8c8078a2c4a0c5a8ee09aa59f0a8', 0, 0, 'Manger', 'Gsteam', 'Active', NULL),
	(2, 'mohit.singh@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Mohit', 'Kumar', 'Active', NULL),
	(3, 'arvind.singh@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Arvind', 'Singh', 'Active', NULL),
	(4, 'tarun.singhal@osscube.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Tarun', 'Singhal', 'Active', NULL),
	(5, 'phuca4@gmail.com', 'd4cb903787695a544172af6f0af88fef583a81c8', 0, 0, 'Hoang Phuc', 'Cong', 'Active', NULL),
	(6, 'moneypolodigital@gmail.com', 'ccfc43f716fb8c8078a2c4a0c5a8ee09aa59f0a8', 0, 0, 'Supper', 'Hoang', 'Active', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table zf2unitest.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table zf2unitest.user_role: ~6 rows (approximately)
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
