/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : learner

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-08 21:08:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about_us_table
-- ----------------------------
DROP TABLE IF EXISTS `about_us_table`;
CREATE TABLE `about_us_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `pic_src` varchar(300) NOT NULL,
  `href` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_us_table
-- ----------------------------

-- ----------------------------
-- Table structure for banner_table
-- ----------------------------
DROP TABLE IF EXISTS `banner_table`;
CREATE TABLE `banner_table` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '大标题',
  `description` varchar(300) NOT NULL COMMENT '描述',
  `href` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner_table
-- ----------------------------

-- ----------------------------
-- Table structure for blog_table
-- ----------------------------
DROP TABLE IF EXISTS `blog_table`;
CREATE TABLE `blog_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pic_src` varchar(300) NOT NULL,
  `pic_big_src` varchar(300) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `post_time` int(11) NOT NULL COMMENT '时间戳',
  `author` varchar(32) NOT NULL,
  `n_view` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_table
-- ----------------------------

-- ----------------------------
-- Table structure for contact_table
-- ----------------------------
DROP TABLE IF EXISTS `contact_table`;
CREATE TABLE `contact_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `weibo` varchar(50) NOT NULL,
  `wx` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_table
-- ----------------------------

-- ----------------------------
-- Table structure for custom_evaluation_table
-- ----------------------------
DROP TABLE IF EXISTS `custom_evaluation_table`;
CREATE TABLE `custom_evaluation_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(300) NOT NULL,
  `src` varchar(300) NOT NULL,
  `icon_src` varchar(300) NOT NULL,
  `big_pic_src` varchar(300) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_evaluation_table
-- ----------------------------

-- ----------------------------
-- Table structure for intro_table
-- ----------------------------
DROP TABLE IF EXISTS `intro_table`;
CREATE TABLE `intro_table` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL COMMENT '描述文字',
  `href` varchar(300) DEFAULT NULL COMMENT '链接',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intro_table
-- ----------------------------

-- ----------------------------
-- Table structure for msg_table
-- ----------------------------
DROP TABLE IF EXISTS `msg_table`;
CREATE TABLE `msg_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `subject` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_table
-- ----------------------------

-- ----------------------------
-- Table structure for news_table
-- ----------------------------
DROP TABLE IF EXISTS `news_table`;
CREATE TABLE `news_table` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `href` varchar(300) NOT NULL,
  `icon_src` varchar(300) NOT NULL,
  `big_pic_src` varchar(300) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_table
-- ----------------------------
