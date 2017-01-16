/*
Navicat MySQL Data Transfer

Source Server         : obcis
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : auddb

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-01-13 17:46:34
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` mediumblob NOT NULL,
  `published_at` datetime(6) NOT NULL,
  `head_img` varchar(500) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `navmenue_id` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT '0',
  `active` varchar(1) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zh_name` varchar(500) DEFAULT NULL,
  `cn_name` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `lang` varchar(255) DEFAULT '',
  `img_urls` text,
  `nav_menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for team_members
-- ----------------------------
DROP TABLE IF EXISTS `team_members`;
CREATE TABLE `team_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `zh_address` varchar(255) DEFAULT NULL,
  `cn_address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `brief` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `nav_menu_id` int(11) DEFAULT NULL,
  `honor` varchar(500) DEFAULT NULL,
  `good_at` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
