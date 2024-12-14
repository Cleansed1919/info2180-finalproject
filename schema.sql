-- INFO2180 Group Project
-- 620165572 - Shaedane White
-- 620165751 - Justine Lewis
-- 620139234 - Javaur Gassop
-- 620162866 - Gabriel Smith

-- Database dolphin_crm

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

DROP DATABASE IF EXISTS dolphin_crm;
CREATE DATABASE dolphin_crm;
USE dolphin_crm;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
  `id` int(11) NOT NULL auto_increment,
  `firstname` char(50) NOT NULL default '',
  `lastname` char(50) NOT NULL default '',
  `password` char(50) NOT NULL default '',
  `email` char(50) NOT NULL default '',
  `role` char(30) NOT NULL default '',
  `created_at` DATETIME NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) 
ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`
(
  `id` int(11) NOT NULL auto_increment,
  `title` char(5) NOT NULL default '',
  `firstname` char(50) NOT NULL default '',
  `lastname` char(50) NOT NULL default '',
  `email` char(50) NOT NULL default '',
  `telephone` char(50) NOT NULL default '',
  `company` char(50) NOT NULL default '',
  `type` char(50) NOT NULL default '',
  `assigned_to` int(11) NOT NULL default 0,
  `created_by` int(11) NOT NULL default 0,
  `created_at` DATETIME NOT NULL default CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
)
ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes`
(
  `id` int(11) NOT NULL auto_increment,
  `contact_id` int(11) NOT NULL default 0,
  `comment` TEXT NOT NULL,
  `created_by` int(11) NOT NULL default 0,
  `created_at` DATETIME NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
)
ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- Dump completed on xxxx-xx-xx xx:xx:xx