/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-05-16 23:04:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_01
-- ----------------------------
DROP TABLE IF EXISTS `user_01`;
CREATE TABLE `user_01` (
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `age` varchar(30) DEFAULT NULL,
  `number` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user_01
-- ----------------------------
INSERT INTO `user_01` VALUES ('tom', 'tom', '男', '18', '12345678911');
INSERT INTO `user_01` VALUES ('tom1', 'tom1', '男', '19', '98745612301');
