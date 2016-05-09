/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : my_db

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-05-09 22:57:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for my_blog
-- ----------------------------
DROP TABLE IF EXISTS `my_blog`;
CREATE TABLE `my_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` text,
  `description` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `upt_time` datetime DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `categories` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_blog
-- ----------------------------
INSERT INTO `my_blog` VALUES ('1', '第一篇日志', '/images/blog/01.jpg', null, '第一篇日志简介', '2016-05-07 10:54:59', '2016-05-07 10:55:05', '北京', '10', '100', '随笔');
INSERT INTO `my_blog` VALUES ('2', '第二篇日志', '/images/blog/01.jpg', null, '第二篇日志简介', '2016-05-05 10:57:19', '2016-05-05 10:57:19', '北京', '1', '3', '随笔');
INSERT INTO `my_blog` VALUES ('3', '第三篇日志', '/images/blog/01.jpg', '', '第三篇日志简介', '2016-05-03 10:57:19', '2016-05-03 10:57:19', '北京', '200', '4', '随笔');
INSERT INTO `my_blog` VALUES ('4', '第四篇日志', '/images/blog/01.jpg', '', '第四篇日志简介', '2016-05-03 10:57:19', '2016-05-03 10:57:19', '北京', '200', '4', '随笔');
INSERT INTO `my_blog` VALUES ('5', '第五篇日志', '/images/blog/01.jpg', '', '第五篇日志简介', '2016-05-03 10:57:19', '2016-05-03 10:57:19', '北京', '200', '4', '哈哈');
INSERT INTO `my_blog` VALUES ('6', '第六篇日志', '/images/blog/01.jpg', '', '第六篇日志简介', '2016-05-03 10:57:19', '2016-05-03 10:57:19', '北京', '200', '4', '哈哈');
INSERT INTO `my_blog` VALUES ('7', '第七篇日志', '/images/blog/01.jpg', '', '第七篇日志简介', '2016-05-03 10:57:19', '2016-05-03 10:57:19', '北京', '200', '4', '哈哈');

-- ----------------------------
-- Table structure for my_categories
-- ----------------------------
DROP TABLE IF EXISTS `my_categories`;
CREATE TABLE `my_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_categories
-- ----------------------------
INSERT INTO `my_categories` VALUES ('1', '技术');
INSERT INTO `my_categories` VALUES ('2', '家庭');
INSERT INTO `my_categories` VALUES ('3', '趣闻');
INSERT INTO `my_categories` VALUES ('4', '随笔');

-- ----------------------------
-- Table structure for my_comment
-- ----------------------------
DROP TABLE IF EXISTS `my_comment`;
CREATE TABLE `my_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_comment
-- ----------------------------

-- ----------------------------
-- Table structure for my_photo
-- ----------------------------
DROP TABLE IF EXISTS `my_photo`;
CREATE TABLE `my_photo` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group` varchar(20) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `upt_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_photo
-- ----------------------------

-- ----------------------------
-- Table structure for truth_or_dare
-- ----------------------------
DROP TABLE IF EXISTS `truth_or_dare`;
CREATE TABLE `truth_or_dare` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `upt_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truth_or_dare
-- ----------------------------
INSERT INTO `truth_or_dare` VALUES ('1', '1', '你是处吗', '5', '1', '2016-05-07 16:16:58', '2016-05-07 16:17:03', null);
INSERT INTO `truth_or_dare` VALUES ('2', '0', '模仿叫床', '3', '1', '2016-05-07 16:17:36', '2016-05-07 16:17:39', null);
INSERT INTO `truth_or_dare` VALUES ('3', '1', '你第一次是什么时候', '2', '1', '2016-05-07 16:56:28', '2016-05-07 16:56:31', null);

-- ----------------------------
-- Table structure for truth_or_dare_for_user
-- ----------------------------
DROP TABLE IF EXISTS `truth_or_dare_for_user`;
CREATE TABLE `truth_or_dare_for_user` (
  `id` bigint(20) NOT NULL COMMENT '与总表相同',
  `user_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `upt_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of truth_or_dare_for_user
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '登陆类型',
  `add_time` datetime DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '测试', 'sfasgfaf', null, null, null, null, null);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL COMMENT '与user表id同',
  `sex` varchar(4) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `location` varchar(40) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `upt_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
