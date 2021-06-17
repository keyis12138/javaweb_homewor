/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50734
Source Host           : localhost:3306
Source Database       : housesale

Target Server Type    : MYSQL
Target Server Version : 50734
File Encoding         : 65001

Date: 2021-06-17 23:51:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for houseinfo
-- ----------------------------
DROP TABLE IF EXISTS `houseinfo`;
CREATE TABLE `houseinfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `wysort` varchar(255) DEFAULT NULL,
  `jzsort` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `developer` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zxstate` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houseinfo
-- ----------------------------
INSERT INTO `houseinfo` VALUES ('1', '津西美墅馆', '6500', '普通住宅,住宅底商', '板楼', '普通住宅:70年住宅底商:40年', '防城港津西博运房地产开发有限公司', '防城港市防城区金花茶大道与站前路交汇处', '在售', '毛坯', 'image/meishuguan.jpg');
INSERT INTO `houseinfo` VALUES ('2', '天宁白鹭湾', '5900', '普通住宅,住宅底商', '塔楼', '普通住宅:70年住宅底商:40年', '防城港天润房地产开发有限公司', '防城港市港口区珍珠路与拥军路交汇处', '在售', '毛坯', 'image/bailuwan.jpg');
INSERT INTO `houseinfo` VALUES ('3', '晨华公园府', '7000', '普通住宅,住宅底商', '塔楼', '普通住宅:70年住宅底商:40年', '广西银都房地产开发有限公司', '金花茶大道与凌霄路交汇处', '在售', '带装修', 'image/gongyuanfu.jpg');
INSERT INTO `houseinfo` VALUES ('4', '防城港凤景湾', '6500', '普通住宅,住宅底商', '塔楼', '普通住宅:70年住宅底商:40年', '广西北投地产集团有限公司', '北部湾大道', '在售', '毛坯', 'image/fengjingwan.jpg');
INSERT INTO `houseinfo` VALUES ('5', '恒力海悦城', '7000', '普通住宅,住宅底商', '板塔结合', '普通住宅:70年住宅底商:40年', '广西泛宇房地产开发有限公司', '防城港市港口区拥军路南侧', '在售', '毛坯', 'image/haiyuecheng.jpg');
INSERT INTO `houseinfo` VALUES ('6', '龙光阳光海岸', '5800', '普通住宅,洋房,标准写字楼,住宅底商,商业,综合体', '板楼', '普通住宅:70年标准写字楼:40年住宅底商:40年洋房:70年商业:40年综合体:40年', '广西金凯利置业有限公司 ', '广西防城港市港口区北部湾大道中段168号', '在售', '毛坯', 'image/yangguanghaian.jpg');

-- ----------------------------
-- Table structure for t_house
-- ----------------------------
DROP TABLE IF EXISTS `t_house`;
CREATE TABLE `t_house` (
  `hid` int(100) NOT NULL AUTO_INCREMENT,
  `himg` varchar(255) NOT NULL,
  `hname` varchar(255) NOT NULL,
  `hsize` varchar(255) NOT NULL,
  `hlocation` varchar(255) NOT NULL,
  `hprice` int(20) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house
-- ----------------------------
INSERT INTO `t_house` VALUES ('1', 'houseImg/1.jpg', '顺鑫·颐和天璟', '3居 － 108~307平米', '[顺义] 新城右堤路与昌金路交汇处向北200米', '31000');
INSERT INTO `t_house` VALUES ('2', 'houseImg/2.jpg', '恒大上和府', '3居/ 4居 － 89~270平米', '[顺义] 龙苑路西100米', '38800');
INSERT INTO `t_house` VALUES ('3', 'houseImg/3.jpg', '123', '3居/ 4居 － 89~270平米', '1', '11');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `oid` int(20) NOT NULL AUTO_INCREMENT,
  `oname` varchar(255) NOT NULL,
  `uid` int(20) NOT NULL,
  `hid` int(20) NOT NULL,
  `price` int(20) NOT NULL,
  `otime` datetime NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `id` (`uid`),
  KEY `hid` (`hid`),
  CONSTRAINT `hid` FOREIGN KEY (`hid`) REFERENCES `t_house` (`hid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id` FOREIGN KEY (`uid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('3', 'aa', '1', '1', '32000', '2021-06-16 18:17:22');
INSERT INTO `t_order` VALUES ('4', '顺鑫·颐和天璟', '4', '1', '31000', '2021-06-16 19:40:28');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', '0000', 'admin');
INSERT INTO `t_user` VALUES ('2', 'user', '123456', '111111', 'user');
INSERT INTO `t_user` VALUES ('3', 'user1', '123456', '981952632@qq.com', 'user');
INSERT INTO `t_user` VALUES ('4', 'aaa', '123456', '981952632@qq.com', 'user');
