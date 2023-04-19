-- MySqlBackup.NET 2.3.7.0
-- Dump Time: 2023-04-04 13:13:09
-- --------------------------------------
-- Server version 8.0.17 MySQL Community Server - GPL


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of about_us
-- 

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `about_us_id` int(2) NOT NULL AUTO_INCREMENT,
  `about_header` varchar(150) NOT NULL,
  `about_paragraph` varchar(500) NOT NULL,
  `card1_count` int(10) NOT NULL DEFAULT '0',
  `card2_count` int(10) NOT NULL DEFAULT '0',
  `card3_count` int(10) NOT NULL DEFAULT '0',
  `card4_count` int(10) NOT NULL DEFAULT '0',
  `office_adress` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`about_us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table about_us
-- 

/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us`(`about_us_id`,`about_header`,`about_paragraph`,`card1_count`,`card2_count`,`card3_count`,`card4_count`,`office_adress`,`email`) VALUES(1,'lorem','Lorem ipsum dolor sit, amet consectetur adipisicing elit. Animi aspernatur adipisci totam expedita? Aperiam debitis sunt rem voluptatibus. Dolorum alias, quia debitis totam impedit consectetur voluptatibus! Sit incidunt consequuntur molestias? Earum hic officia officiis voluptatibus cupiditate perspiciatis veniam dignissimos aliquid, cum assumenda ipsam quibusdam provident ducimus nobis voluptatum, eaque pariatur commodi. Natus consequuntur voluptas repellendus sint illo deleniti dolorum volupta',65,432,87,23,'Lorem ipsum dolor sit, amet consectetur ','gs@gmail.com');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;

-- 
-- Definition of admins
-- 

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table admins
-- 

/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins`(`id`,`name`,`email`,`password`,`role`) VALUES(5,'admin','admin','21232f297a57a5a743894a0e4a801fc3',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- 
-- Definition of all_user
-- 

DROP TABLE IF EXISTS `all_user`;
CREATE TABLE IF NOT EXISTS `all_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table all_user
-- 

/*!40000 ALTER TABLE `all_user` DISABLE KEYS */;

/*!40000 ALTER TABLE `all_user` ENABLE KEYS */;

-- 
-- Definition of bin
-- 

DROP TABLE IF EXISTS `bin`;
CREATE TABLE IF NOT EXISTS `bin` (
  `announcement_id` int(10) NOT NULL AUTO_INCREMENT,
  `add_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users_id` int(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sail_type` int(1) NOT NULL,
  `image1` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image2` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image3` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image4` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image5` varchar(255) NOT NULL,
  `image6` varchar(255) NOT NULL,
  `image7` varchar(255) NOT NULL,
  `image8` varchar(255) NOT NULL,
  `image9` varchar(255) NOT NULL,
  `image10` varchar(255) NOT NULL,
  `image11` varchar(255) NOT NULL,
  `image12` varchar(255) NOT NULL,
  `cost` int(10) NOT NULL DEFAULT '0',
  `region` varchar(50) NOT NULL,
  `kend` varchar(50) DEFAULT NULL,
  `baku_region` varchar(50) DEFAULT NULL,
  `person_type` int(1) NOT NULL,
  `area_type` int(1) NOT NULL,
  `flat_type` int(1) NOT NULL,
  `sot` int(10) DEFAULT NULL,
  `flat_area` int(10) NOT NULL,
  `room_count` int(3) NOT NULL,
  `fix_type` int(1) NOT NULL,
  `adress` varchar(500) NOT NULL,
  `info` varchar(1000) NOT NULL,
  `dayly_monthly` int(1) DEFAULT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100010 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table bin
-- 

/*!40000 ALTER TABLE `bin` DISABLE KEYS */;

/*!40000 ALTER TABLE `bin` ENABLE KEYS */;

-- 
-- Definition of changed_passwords
-- 

DROP TABLE IF EXISTS `changed_passwords`;
CREATE TABLE IF NOT EXISTS `changed_passwords` (
  `changed_passwords_id` int(2) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `change_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `forget_code` int(6) NOT NULL,
  `ex_password` varchar(255) NOT NULL,
  `new_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`changed_passwords_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table changed_passwords
-- 

/*!40000 ALTER TABLE `changed_passwords` DISABLE KEYS */;

/*!40000 ALTER TABLE `changed_passwords` ENABLE KEYS */;

-- 
-- Definition of ex_register_code
-- 

DROP TABLE IF EXISTS `ex_register_code`;
CREATE TABLE IF NOT EXISTS `ex_register_code` (
  `ex_register_code_id` int(2) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ex_register_code_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `register_code` int(6) NOT NULL,
  PRIMARY KEY (`ex_register_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table ex_register_code
-- 

/*!40000 ALTER TABLE `ex_register_code` DISABLE KEYS */;

/*!40000 ALTER TABLE `ex_register_code` ENABLE KEYS */;

-- 
-- Definition of footer
-- 

DROP TABLE IF EXISTS `footer`;
CREATE TABLE IF NOT EXISTS `footer` (
  `footer_id` int(2) NOT NULL AUTO_INCREMENT,
  `footer_title` varchar(50) NOT NULL,
  `footer_paragraph` varchar(500) NOT NULL,
  `site_name` varchar(10) NOT NULL,
  `footer_adress` varchar(255) NOT NULL,
  `footer_phone` varchar(16) NOT NULL,
  `footer_email` varchar(255) NOT NULL,
  PRIMARY KEY (`footer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table footer
-- 

/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
INSERT INTO `footer`(`footer_id`,`footer_title`,`footer_paragraph`,`site_name`,`footer_adress`,`footer_phone`,`footer_email`) VALUES(1,'sedfgh','asdfgn','sdfgh','sdfgh','sdfghj','serghjlkjhgtfdegrthjuklkjhgfd');
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;

-- 
-- Definition of forget_password
-- 

DROP TABLE IF EXISTS `forget_password`;
CREATE TABLE IF NOT EXISTS `forget_password` (
  `forget_password_id` int(2) NOT NULL AUTO_INCREMENT,
  `forget_code` int(6) NOT NULL,
  `forget_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`forget_password_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table forget_password
-- 

/*!40000 ALTER TABLE `forget_password` DISABLE KEYS */;

/*!40000 ALTER TABLE `forget_password` ENABLE KEYS */;

-- 
-- Definition of register_user
-- 

DROP TABLE IF EXISTS `register_user`;
CREATE TABLE IF NOT EXISTS `register_user` (
  `register_user_id` int(2) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `register_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `random_code` int(6) NOT NULL,
  PRIMARY KEY (`register_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table register_user
-- 

/*!40000 ALTER TABLE `register_user` DISABLE KEYS */;

/*!40000 ALTER TABLE `register_user` ENABLE KEYS */;

-- 
-- Definition of rent
-- 

DROP TABLE IF EXISTS `rent`;
CREATE TABLE IF NOT EXISTS `rent` (
  `announcement_id` int(10) NOT NULL,
  `add_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users_id` int(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image2` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image3` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image4` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image5` varchar(255) NOT NULL,
  `image6` varchar(255) NOT NULL,
  `image7` varchar(255) NOT NULL,
  `image8` varchar(255) NOT NULL,
  `image9` varchar(255) NOT NULL,
  `image10` varchar(255) NOT NULL,
  `image11` varchar(255) NOT NULL,
  `image12` varchar(255) NOT NULL,
  `cost` int(10) NOT NULL DEFAULT '0',
  `region` varchar(50) NOT NULL,
  `kend` varchar(50) DEFAULT NULL,
  `baku_region` varchar(50) DEFAULT NULL,
  `person_type` int(1) NOT NULL,
  `area_type` int(1) NOT NULL,
  `flat_type` int(1) NOT NULL,
  `sot` int(10) DEFAULT NULL,
  `flat_area` int(10) NOT NULL,
  `room_count` int(3) NOT NULL,
  `fix_type` int(1) NOT NULL,
  `adress` varchar(500) NOT NULL,
  `info` varchar(1000) NOT NULL,
  `rent_status` int(1) NOT NULL DEFAULT '1',
  `dayly_monthly` int(1) DEFAULT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table rent
-- 

/*!40000 ALTER TABLE `rent` DISABLE KEYS */;

/*!40000 ALTER TABLE `rent` ENABLE KEYS */;

-- 
-- Definition of rules
-- 

DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `rules_id` int(2) NOT NULL AUTO_INCREMENT,
  `rules1` varchar(300) NOT NULL,
  `rules2` varchar(300) NOT NULL,
  `rules3` varchar(300) DEFAULT NULL,
  `rules4` varchar(300) DEFAULT NULL,
  `rules5` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`rules_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table rules
-- 

/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules`(`rules_id`,`rules1`,`rules2`,`rules3`,`rules4`,`rules5`) VALUES(1,'Lorem ipsum, dolor sit amet consectetur adipisicing elit','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quibusdam, provident quos. Dolorem  adipisicing elit. Quibusdam, provident quos. Dolorem, ','Lorem ipsum, dolor sit ','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quibusdam, provident quos. Dolorem, ','Lorem ipsum, dolor. Quibusdam, provident quos. Dolorem, ');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;

-- 
-- Definition of sail
-- 

DROP TABLE IF EXISTS `sail`;
CREATE TABLE IF NOT EXISTS `sail` (
  `announcement_id` int(10) NOT NULL,
  `add_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users_id` int(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image2` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image3` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image4` varchar(255) NOT NULL DEFAULT 'elan_image_default.jpg',
  `image5` varchar(255) NOT NULL,
  `image6` varchar(255) NOT NULL,
  `image7` varchar(255) NOT NULL,
  `image8` varchar(255) NOT NULL,
  `image9` varchar(255) NOT NULL,
  `image10` varchar(255) NOT NULL,
  `image11` varchar(255) NOT NULL,
  `image12` varchar(255) NOT NULL,
  `cost` int(10) NOT NULL DEFAULT '0',
  `region` varchar(50) NOT NULL,
  `kend` varchar(50) DEFAULT NULL,
  `baku_region` varchar(50) DEFAULT NULL,
  `person_type` int(1) NOT NULL,
  `area_type` int(1) NOT NULL,
  `flat_type` int(1) NOT NULL,
  `sail_status` int(1) NOT NULL DEFAULT '1',
  `sot` int(10) DEFAULT NULL,
  `flat_area` int(10) NOT NULL,
  `room_count` int(3) NOT NULL,
  `fix_type` int(1) NOT NULL,
  `adress` varchar(500) NOT NULL,
  `info` varchar(1000) NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table sail
-- 

/*!40000 ALTER TABLE `sail` DISABLE KEYS */;

/*!40000 ALTER TABLE `sail` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2023-04-04 13:13:09
-- Total time: 0:0:0:0:168 (d:h:m:s:ms)
-- Database Controller v1.3.8 / b234
