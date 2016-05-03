/*
Navicat MySQL Data Transfer

Source Server         : ddpress
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : my_db

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-05-03 16:41:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_t
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES ('1', '测试', 'sfasgfaf', '24');
