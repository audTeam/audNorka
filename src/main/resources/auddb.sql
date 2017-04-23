/*
Navicat MySQL Data Transfer

Source Server         : obcis
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : auddb

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-04-23 21:33:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `banner_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cooperations
-- ----------------------------
DROP TABLE IF EXISTS `cooperations`;
CREATE TABLE `cooperations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `logo_url` varchar(500) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for demos
-- ----------------------------
DROP TABLE IF EXISTS `demos`;
CREATE TABLE `demos` (
  `nage` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for history_introduces
-- ----------------------------
DROP TABLE IF EXISTS `history_introduces`;
CREATE TABLE `history_introduces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_history` varchar(6000) DEFAULT NULL,
  `cooperation_company` varchar(6000) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `service_head_img` varchar(255) DEFAULT NULL,
  `service_content` varchar(6000) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `job_head_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `content` text,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text,
  `location_detail` varchar(255) DEFAULT NULL,
  `job_number` int(11) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for job_categories
-- ----------------------------
DROP TABLE IF EXISTS `job_categories`;
CREATE TABLE `job_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `content` text,
  `lang` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for leave_messages
-- ----------------------------
DROP TABLE IF EXISTS `leave_messages`;
CREATE TABLE `leave_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `is_read` varchar(1) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `execute_time` int(11) DEFAULT NULL,
  `parameters` text,
  `method_name` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1086 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for navmenus
-- ----------------------------
DROP TABLE IF EXISTS `navmenus`;
CREATE TABLE `navmenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `parent_nav` int(1) DEFAULT NULL,
  `nav_menu_desc` varchar(5000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `publish_at` date DEFAULT NULL,
  `head_img` varchar(500) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `navmenue_id` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT '0',
  `active` varchar(1) DEFAULT '',
  `lang` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `content` text,
  `lang` varchar(255) DEFAULT '',
  `nav_menu_id` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `service` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for team_members
-- ----------------------------
DROP TABLE IF EXISTS `team_members`;
CREATE TABLE `team_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `education_background` varchar(255) DEFAULT NULL,
  `work_experience` varchar(255) DEFAULT NULL,
  `membership` varchar(255) DEFAULT NULL,
  `key_project` text,
  `brief` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for team_member_projects
-- ----------------------------
DROP TABLE IF EXISTS `team_member_projects`;
CREATE TABLE `team_member_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_member_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `root` varchar(1) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Procedure structure for Proc
-- ----------------------------
DROP PROCEDURE IF EXISTS `Proc`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc`()
BEGIN
  SELECT * FROM banners;
END
;;
DELIMITER ;
