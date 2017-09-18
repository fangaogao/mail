/*
Navicat MySQL Data Transfer

Source Server         : 115.159.151.91 
Source Server Version : 50717
Source Host           : 115.159.151.91 :3306
Source Database       : jf3q_ssh

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-09-18 10:28:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cityId` int(11) NOT NULL,
  `cityName` varchar(255) DEFAULT NULL,
  `provinceId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cityId`),
  KEY `FK_m9spqiilw14u34vwu84m0myrb` (`provinceId`),
  CONSTRAINT `FK_m9spqiilw14u34vwu84m0myrb` FOREIGN KEY (`provinceId`) REFERENCES `province` (`provinceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '东城区', '1');
INSERT INTO `city` VALUES ('2', '西城区', '1');
INSERT INTO `city` VALUES ('3', '崇文区', '1');
INSERT INTO `city` VALUES ('4', '宣武区', '1');
INSERT INTO `city` VALUES ('5', '朝阳区', '1');
INSERT INTO `city` VALUES ('6', '丰台区', '1');
INSERT INTO `city` VALUES ('7', '石景山区', '1');
INSERT INTO `city` VALUES ('8', '海淀区', '1');
INSERT INTO `city` VALUES ('9', '门头沟区', '1');
INSERT INTO `city` VALUES ('10', '房山区', '1');
INSERT INTO `city` VALUES ('11', '通州区', '1');
INSERT INTO `city` VALUES ('12', '顺义区', '1');
INSERT INTO `city` VALUES ('13', '昌平区', '1');
INSERT INTO `city` VALUES ('14', '大兴区', '1');
INSERT INTO `city` VALUES ('15', '怀柔区', '1');
INSERT INTO `city` VALUES ('16', '平谷区', '1');
INSERT INTO `city` VALUES ('17', '密云县', '1');
INSERT INTO `city` VALUES ('18', '延庆县', '1');

-- ----------------------------
-- Table structure for `cmgLog`
-- ----------------------------
DROP TABLE IF EXISTS `cmgLog`;
CREATE TABLE `cmgLog` (
  `cmid` int(11) NOT NULL,
  `cmts` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmgLog
-- ----------------------------
INSERT INTO `cmgLog` VALUES ('1', '2017-08-08 10:03:37', 'aadmin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('2', '2017-08-08 10:20:42', 'aadmin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('3', '2017-08-08 10:22:14', 'aadmin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('4', '2017-08-08 11:10:48', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('5', '2017-08-08 11:12:56', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('6', '2017-08-08 11:20:08', 'admin 添加角色：BOSS', '0');
INSERT INTO `cmgLog` VALUES ('7', '2017-08-08 11:22:42', 'admin 修改角色：客服1 rid:2', '1');
INSERT INTO `cmgLog` VALUES ('8', '2017-08-08 11:23:02', 'admin 修改角色：客服小白 rid:2', '1');
INSERT INTO `cmgLog` VALUES ('9', '2017-08-08 11:28:06', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('10', '2017-08-08 11:46:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('11', '2017-08-08 11:47:51', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('12', '2017-08-08 11:49:08', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('13', '2017-08-08 11:58:22', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('14', '2017-08-08 16:07:58', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('15', '2017-08-08 16:30:07', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('16', '2017-08-08 16:30:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('17', '2017-08-08 16:44:41', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('18', '2017-08-08 17:00:41', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('19', '2017-08-08 17:04:04', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('20', '2017-08-08 17:07:02', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('21', '2017-08-08 17:08:50', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('22', '2017-08-08 17:09:19', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('23', '2017-08-08 17:11:33', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('24', '2017-08-08 17:13:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('25', '2017-08-08 17:52:05', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('26', '2017-08-08 17:56:54', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('27', '2017-08-08 18:02:40', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('28', '2017-08-08 22:15:07', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('29', '2017-08-08 22:27:09', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('30', '2017-08-08 22:42:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('31', '2017-08-08 22:47:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('32', '2017-08-09 01:05:04', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('33', '2017-08-09 01:07:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('34', '2017-08-09 01:11:56', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('35', '2017-08-09 01:17:33', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('36', '2017-08-09 01:22:48', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('37', '2017-08-09 09:58:43', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('38', '2017-08-09 10:03:23', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('39', '2017-08-09 10:04:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('40', '2017-08-09 11:42:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('41', '2017-08-09 11:50:03', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('42', '2017-08-09 12:58:31', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('43', '2017-08-09 13:00:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('44', '2017-08-09 13:03:05', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('45', '2017-08-09 13:09:45', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('46', '2017-08-09 14:34:22', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('47', '2017-08-09 16:16:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('48', '2017-08-09 16:25:41', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('49', '2017-08-09 16:28:05', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('50', '2017-08-09 16:50:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('51', '2017-08-09 16:55:09', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('52', '2017-08-09 16:57:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('53', '2017-08-09 16:58:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('54', '2017-08-09 16:59:05', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('55', '2017-08-09 17:00:07', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('56', '2017-08-09 17:01:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('57', '2017-08-09 17:05:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('58', '2017-08-09 17:09:12', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('59', '2017-08-09 17:10:38', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('60', '2017-08-09 17:12:12', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('61', '2017-08-09 17:14:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('62', '2017-08-09 17:24:28', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('63', '2017-08-09 17:26:43', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('64', '2017-08-09 17:29:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('65', '2017-08-09 17:31:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('66', '2017-08-09 17:34:33', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('67', '2017-08-09 17:35:55', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('68', '2017-08-09 17:39:47', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('69', '2017-08-09 17:39:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('70', '2017-08-09 17:40:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('71', '2017-08-09 17:52:24', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('72', '2017-08-09 17:53:47', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('73', '2017-08-09 17:55:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('74', '2017-08-09 19:51:11', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('75', '2017-08-09 20:02:04', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('76', '2017-08-09 20:03:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('77', '2017-08-09 20:15:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('78', '2017-08-09 20:20:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('79', '2017-08-09 20:28:57', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('80', '2017-08-09 20:33:43', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('81', '2017-08-09 20:47:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('82', '2017-08-11 12:50:13', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('83', '2017-08-11 16:09:43', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('84', '2017-08-11 16:10:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('85', '2017-08-11 16:11:05', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('86', '2017-08-11 16:11:57', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('87', '2017-08-11 16:12:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('88', '2017-08-11 17:16:26', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('89', '2017-08-11 18:39:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('90', '2017-08-11 18:40:05', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('91', '2017-08-11 18:41:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('92', '2017-08-11 18:42:31', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('93', '2017-08-11 18:42:44', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('94', '2017-08-11 18:43:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('95', '2017-08-11 18:44:11', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('96', '2017-08-11 18:44:29', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('97', '2017-08-11 18:46:48', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('98', '2017-08-11 18:47:33', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('99', '2017-08-11 18:47:51', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('100', '2017-08-11 19:09:30', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('101', '2017-08-11 19:11:28', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('102', '2017-08-11 19:12:43', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('103', '2017-08-11 19:15:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('104', '2017-08-11 19:16:19', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('105', '2017-08-11 19:17:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('106', '2017-08-11 19:19:54', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('107', '2017-08-11 19:21:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('108', '2017-08-11 19:24:47', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('109', '2017-08-11 19:28:45', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('110', '2017-08-11 19:30:17', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('111', '2017-08-11 19:31:06', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('112', '2017-08-11 19:34:46', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('113', '2017-08-11 19:36:25', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('114', '2017-08-11 19:37:16', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('115', '2017-08-11 19:39:19', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('116', '2017-08-11 19:40:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('117', '2017-08-11 19:49:35', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('118', '2017-08-11 19:53:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('119', '2017-08-11 19:55:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('120', '2017-08-11 19:55:44', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('121', '2017-08-12 13:58:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('122', '2017-08-12 14:02:19', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('123', '2017-08-12 14:03:54', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('124', '2017-08-12 14:04:25', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('125', '2017-08-12 14:06:54', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('126', '2017-08-12 14:07:01', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('127', '2017-08-12 14:10:02', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('128', '2017-08-12 14:39:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('129', '2017-08-12 14:40:43', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('130', '2017-08-12 14:40:58', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('131', '2017-08-12 14:48:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('132', '2017-08-12 14:49:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('133', '2017-08-13 14:36:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('134', '2017-08-13 14:41:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('135', '2017-08-13 15:01:48', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('136', '2017-08-13 15:02:51', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('137', '2017-08-13 15:10:11', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('138', '2017-08-13 15:11:25', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('139', '2017-08-13 15:14:55', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('140', '2017-08-13 15:19:21', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('141', '2017-08-13 15:41:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('142', '2017-08-13 15:43:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('143', '2017-08-13 15:44:30', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('144', '2017-08-13 15:46:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('145', '2017-08-13 15:46:55', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('146', '2017-08-13 15:47:56', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('147', '2017-08-13 15:53:17', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('148', '2017-08-13 15:54:04', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('149', '2017-08-13 15:54:39', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('150', '2017-08-13 15:55:21', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('151', '2017-08-13 16:00:09', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('152', '2017-08-13 16:00:56', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('153', '2017-08-13 16:01:39', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('154', '2017-08-13 16:16:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('155', '2017-08-13 16:18:13', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('156', '2017-08-13 16:20:13', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('157', '2017-08-13 16:21:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('158', '2017-08-15 16:04:30', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('159', '2017-08-15 23:41:02', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('160', '2017-08-15 23:46:12', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('161', '2017-08-15 23:49:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('162', '2017-08-15 23:52:45', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('163', '2017-08-16 00:11:07', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('164', '2017-08-16 00:11:56', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('165', '2017-08-16 00:14:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('166', '2017-08-16 10:27:06', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('167', '2017-08-16 10:42:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('168', '2017-08-16 10:58:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('169', '2017-08-16 10:59:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('170', '2017-08-16 11:03:50', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('171', '2017-08-16 11:11:33', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('172', '2017-08-16 11:11:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('173', '2017-08-16 11:14:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('174', '2017-08-16 12:24:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('175', '2017-08-16 15:00:40', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('176', '2017-08-17 15:15:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('177', '2017-08-17 15:40:02', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('178', '2017-08-17 15:41:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('179', '2017-08-17 15:42:44', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('180', '2017-08-17 15:43:01', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('181', '2017-08-17 15:43:21', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('182', '2017-08-17 16:32:39', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('183', '2017-08-17 16:34:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('184', '2017-08-17 16:35:24', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('185', '2017-08-17 16:36:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('186', '2017-08-17 19:50:06', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('187', '2017-08-17 19:51:37', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('188', '2017-08-17 19:55:01', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('189', '2017-08-17 22:05:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('190', '2017-08-17 22:20:55', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('191', '2017-08-17 22:39:35', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('192', '2017-08-17 22:43:17', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('193', '2017-08-17 23:06:38', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('194', '2017-08-17 23:08:46', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('195', '2017-08-17 23:17:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('196', '2017-08-18 09:10:19', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('197', '2017-08-18 09:30:17', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('198', '2017-08-18 09:32:54', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('199', '2017-08-18 09:34:03', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('200', '2017-08-18 09:37:30', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('201', '2017-08-18 09:38:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('202', '2017-08-18 09:42:58', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('203', '2017-08-18 09:43:51', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('204', '2017-08-18 09:44:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('205', '2017-08-18 09:45:24', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('206', '2017-08-18 09:45:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('207', '2017-08-18 09:47:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('208', '2017-08-18 09:47:42', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('209', '2017-08-18 09:48:13', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('210', '2017-08-18 09:52:01', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('211', '2017-08-18 09:52:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('212', '2017-08-18 09:54:42', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('213', '2017-08-18 09:55:13', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('214', '2017-08-18 10:01:38', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('215', '2017-08-18 10:02:10', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('216', '2017-08-18 10:02:42', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('217', '2017-08-18 10:58:04', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('218', '2017-08-18 11:02:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('219', '2017-08-18 11:04:17', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('220', '2017-08-18 11:07:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('221', '2017-08-18 11:11:08', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('222', '2017-08-18 11:14:41', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('223', '2017-08-18 11:18:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('224', '2017-08-18 11:28:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('225', '2017-08-18 11:30:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('226', '2017-08-18 11:36:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('227', '2017-08-18 11:44:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('228', '2017-08-18 11:48:28', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('229', '2017-08-18 11:52:03', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('230', '2017-08-18 11:55:22', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('231', '2017-08-19 08:58:04', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('232', '2017-08-19 09:46:44', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('233', '2017-08-19 14:13:09', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('234', '2017-08-19 14:16:46', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('235', '2017-08-19 14:19:41', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('236', '2017-08-19 15:03:23', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('237', '2017-08-19 15:30:11', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('238', '2017-08-19 15:33:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('239', '2017-08-19 15:38:31', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('240', '2017-08-19 15:44:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('241', '2017-08-19 15:59:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('242', '2017-08-19 16:09:26', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('243', '2017-08-19 16:13:50', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('244', '2017-08-19 16:23:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('245', '2017-08-19 16:31:41', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('246', '2017-08-19 16:36:16', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('247', '2017-08-19 16:42:22', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('248', '2017-08-19 16:45:41', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('249', '2017-08-19 16:48:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('250', '2017-08-19 16:54:53', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('251', '2017-08-19 16:55:35', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('252', '2017-08-19 17:06:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('253', '2017-08-19 17:14:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('254', '2017-08-19 17:15:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('255', '2017-08-19 17:17:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('256', '2017-08-19 17:19:42', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('257', '2017-08-19 18:21:25', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('258', '2017-08-19 18:23:47', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('259', '2017-08-19 18:31:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('260', '2017-08-19 18:36:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('261', '2017-08-19 18:42:50', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('262', '2017-08-19 18:45:11', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('263', '2017-08-19 18:57:23', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('264', '2017-08-19 19:24:45', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('265', '2017-08-19 20:02:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('266', '2017-08-19 22:26:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('267', '2017-08-19 22:28:35', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('268', '2017-08-19 22:37:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('269', '2017-08-19 22:41:56', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('270', '2017-08-19 22:43:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('271', '2017-08-19 22:45:21', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('272', '2017-08-19 23:11:12', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('273', '2017-08-19 23:28:02', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('274', '2017-08-19 23:30:04', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('275', '2017-08-19 23:44:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('276', '2017-08-20 09:54:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('277', '2017-08-20 09:58:56', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('278', '2017-08-20 10:14:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('279', '2017-08-20 10:18:51', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('280', '2017-08-20 10:21:10', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('281', '2017-08-20 10:27:56', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('282', '2017-08-20 10:31:26', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('283', '2017-08-20 11:09:05', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('284', '2017-08-20 11:14:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('285', '2017-08-20 11:16:17', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('286', '2017-08-20 11:17:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('287', '2017-08-20 11:32:21', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('288', '2017-08-20 13:15:40', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('289', '2017-08-20 13:15:57', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('290', '2017-08-20 13:20:00', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('291', '2017-08-20 13:25:07', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('292', '2017-08-20 13:26:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('293', '2017-08-20 13:27:38', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('294', '2017-08-20 13:30:54', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('295', '2017-08-20 13:34:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('296', '2017-08-20 13:38:31', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('297', '2017-08-20 13:39:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('298', '2017-08-20 13:44:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('299', '2017-08-20 13:55:42', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('300', '2017-08-20 13:57:48', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('301', '2017-08-20 14:00:42', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('302', '2017-08-20 14:04:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('303', '2017-08-20 14:05:53', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('304', '2017-08-20 14:06:47', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('305', '2017-08-20 14:08:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('306', '2017-08-20 14:26:08', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('307', '2017-08-20 20:58:38', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('308', '2017-08-20 20:59:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('309', '2017-08-20 21:02:02', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('310', '2017-08-20 21:02:47', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('311', '2017-08-20 21:03:29', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('312', '2017-08-20 21:05:09', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('313', '2017-08-20 21:08:53', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('314', '2017-08-20 21:10:08', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('315', '2017-08-20 21:10:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('316', '2017-08-20 21:11:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('317', '2017-08-20 21:11:20', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('318', '2017-08-20 21:13:21', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('319', '2017-08-20 21:15:05', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('320', '2017-08-20 21:22:04', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('321', '2017-08-20 21:22:51', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('322', '2017-08-20 21:24:06', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('323', '2017-08-20 21:25:50', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('324', '2017-08-20 21:29:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('325', '2017-08-20 21:32:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('326', '2017-08-20 21:45:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('327', '2017-08-20 21:47:26', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('328', '2017-08-21 13:17:09', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('329', '2017-08-21 13:24:25', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('330', '2017-08-21 13:30:22', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('331', '2017-08-21 14:04:12', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('332', '2017-08-21 14:06:43', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('333', '2017-08-21 14:09:23', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('334', '2017-08-21 14:24:29', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('335', '2017-08-21 14:26:12', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('336', '2017-08-21 14:34:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('337', '2017-08-21 14:40:18', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('338', '2017-08-21 14:40:39', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('339', '2017-08-21 14:41:06', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('340', '2017-08-21 14:42:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('341', '2017-08-21 14:45:19', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('342', '2017-08-21 14:47:40', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('343', '2017-08-21 14:48:41', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('344', '2017-08-21 14:49:28', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('345', '2017-08-21 14:50:23', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('346', '2017-08-21 14:51:02', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('347', '2017-08-21 15:00:37', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('348', '2017-08-21 15:04:35', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('349', '2017-08-21 15:04:54', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('350', '2017-08-21 15:08:31', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('351', '2017-08-21 15:09:16', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('352', '2017-08-21 15:11:50', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('353', '2017-08-21 23:33:57', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('354', '2017-08-21 23:36:25', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('355', '2017-08-21 23:46:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('356', '2017-08-23 09:54:06', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('357', '2017-08-23 10:06:53', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('358', '2017-08-23 10:09:23', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('359', '2017-08-23 10:13:14', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('360', '2017-08-23 10:13:59', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('361', '2017-08-23 10:19:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('362', '2017-08-23 10:22:53', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('363', '2017-08-23 10:25:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('364', '2017-08-23 11:03:49', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('365', '2017-08-23 13:22:03', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('366', '2017-08-23 13:24:53', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('367', '2017-08-23 13:27:16', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('368', '2017-08-23 13:28:17', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('369', '2017-08-23 13:33:40', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('370', '2017-08-23 13:35:23', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('371', '2017-08-23 13:45:55', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('372', '2017-08-23 13:47:52', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('373', '2017-08-23 13:50:32', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('374', '2017-08-23 13:52:40', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('375', '2017-08-23 13:54:09', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('376', '2017-08-23 13:55:21', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('377', '2017-08-23 13:58:06', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('378', '2017-08-23 13:59:38', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('379', '2017-08-23 14:01:48', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('380', '2017-08-23 14:03:10', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('381', '2017-08-23 14:03:58', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('382', '2017-08-23 14:08:09', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('383', '2017-08-23 14:34:43', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('384', '2017-08-23 14:37:46', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('385', '2017-08-23 14:39:24', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('386', '2017-08-23 14:39:25', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('387', '2017-08-23 14:40:16', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('388', '2017-08-23 14:43:57', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('389', '2017-08-23 14:45:28', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('390', '2017-08-23 14:48:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('391', '2017-08-23 14:51:44', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('392', '2017-08-23 14:59:15', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('393', '2017-08-23 15:01:02', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('394', '2017-08-23 15:02:34', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('395', '2017-08-23 15:11:01', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('396', '2017-08-23 15:12:12', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('397', '2017-08-23 15:16:50', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('398', '2017-08-23 15:19:47', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('399', '2017-08-23 16:24:13', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('400', '2017-08-23 16:36:27', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('401', '2017-08-24 17:41:33', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('402', '2017-09-09 11:30:38', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('403', '2017-09-09 22:57:36', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('404', '2017-09-10 10:22:48', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('405', '2017-09-11 10:39:50', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('406', '2017-09-11 10:54:24', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('407', '2017-09-13 13:10:40', 'admin 登录系统', '3');
INSERT INTO `cmgLog` VALUES ('408', '2017-09-13 13:14:58', 'admin 登录系统', '3');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `countryId` int(11) NOT NULL,
  `countryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', '北京市');
INSERT INTO `country` VALUES ('2', '天津市');
INSERT INTO `country` VALUES ('3', '河北省');
INSERT INTO `country` VALUES ('4', '山西省');
INSERT INTO `country` VALUES ('5', '内蒙古自治区');
INSERT INTO `country` VALUES ('6', '辽宁省');
INSERT INTO `country` VALUES ('7', '吉林省');
INSERT INTO `country` VALUES ('8', '黑龙江省');
INSERT INTO `country` VALUES ('9', '上海市');
INSERT INTO `country` VALUES ('10', '江苏省');
INSERT INTO `country` VALUES ('11', '浙江省');
INSERT INTO `country` VALUES ('12', '安徽省');
INSERT INTO `country` VALUES ('13', '福建省');
INSERT INTO `country` VALUES ('14', '江西省');
INSERT INTO `country` VALUES ('15', '山东省');
INSERT INTO `country` VALUES ('16', '河南省');
INSERT INTO `country` VALUES ('17', '湖北省');
INSERT INTO `country` VALUES ('18', '湖南省');
INSERT INTO `country` VALUES ('19', '广东省');
INSERT INTO `country` VALUES ('20', '广西壮族自治区');
INSERT INTO `country` VALUES ('21', '海南省');
INSERT INTO `country` VALUES ('22', '重庆市');
INSERT INTO `country` VALUES ('23', '四川省');
INSERT INTO `country` VALUES ('24', '贵州省');
INSERT INTO `country` VALUES ('25', '云南省');
INSERT INTO `country` VALUES ('26', '西藏自治区');
INSERT INTO `country` VALUES ('27', '陕西省');
INSERT INTO `country` VALUES ('28', '甘肃省');
INSERT INTO `country` VALUES ('29', '青海省');
INSERT INTO `country` VALUES ('30', '宁夏回族自治区');
INSERT INTO `country` VALUES ('31', '新疆维吾尔自治区');

-- ----------------------------
-- Table structure for `CUSTOMERS`
-- ----------------------------
DROP TABLE IF EXISTS `CUSTOMERS`;
CREATE TABLE `CUSTOMERS` (
  `id` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of CUSTOMERS
-- ----------------------------

-- ----------------------------
-- Table structure for `directory`
-- ----------------------------
DROP TABLE IF EXISTS `directory`;
CREATE TABLE `directory` (
  `did` int(11) NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `cts` varchar(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `imgPath` varchar(255) DEFAULT NULL,
  `linkUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of directory
-- ----------------------------
INSERT INTO `directory` VALUES ('1', '纸杯系列', '2017-08-09', '1', '1', '/upImgs/face_1bae7eff64f3.jpg', 'https://www.baidu.com/');
INSERT INTO `directory` VALUES ('2', 'PET系列', '2017-08-09', '1', '2', '/upImgs/face_b845a24d34ad.jpg', 'https://www.sogou.com/');
INSERT INTO `directory` VALUES ('3', '饮品杯配套系列', '2017-08-09', '1', '3', '/upImgs/face_817584b904b0.jpg', 'http://www.sohu.com/');
INSERT INTO `directory` VALUES ('4', '纸浆环保餐具系列', '2017-08-09', '1', '4', '/upImgs/face_78fcb389345f.jpg', 'https://www.baidu.com/');
INSERT INTO `directory` VALUES ('5', '纸餐盒系列', '2017-08-09', '1', '6', '/upImgs/face_65ed8eaad4ef.jpg', 'https://www.baidu.com/');
INSERT INTO `directory` VALUES ('6', '刀叉勺餐具系列', '2017-08-09', '1', '3', '/upImgs/face_3d0587dc241f.jpg', 'https://www.baidu.com/');
INSERT INTO `directory` VALUES ('7', '生活用纸', '2017-08-12', '1', '8', '/upImgs/face_5fdfbd16f48b.jpg', 'http://www.baidu.com/');
INSERT INTO `directory` VALUES ('8', '纸袋/环保打包纸', '2017-08-12', '1', '5', '/upImgs/face_85f2ca2b74ad.jpg', 'http://www.baidu.com/');

-- ----------------------------
-- Table structure for `directory2`
-- ----------------------------
DROP TABLE IF EXISTS `directory2`;
CREATE TABLE `directory2` (
  `ddid` int(11) NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `cts` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  PRIMARY KEY (`ddid`),
  KEY `FK_eb2pg8mny6iubpfqke159vhtm` (`did`),
  CONSTRAINT `FK_eb2pg8mny6iubpfqke159vhtm` FOREIGN KEY (`did`) REFERENCES `directory` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of directory2
-- ----------------------------
INSERT INTO `directory2` VALUES ('1', '单层热饮杯', '4', '1', '2', '1');
INSERT INTO `directory2` VALUES ('2', '双层中空杯', '4', '1', '6', '1');
INSERT INTO `directory2` VALUES ('4', 'PET透明杯', '4', '1', '5', '2');
INSERT INTO `directory2` VALUES ('5', 'PET透明盖', '4', '0', '4', '2');
INSERT INTO `directory2` VALUES ('6', 'PET透明沙拉盒', '5', '1', '2', '2');
INSERT INTO `directory2` VALUES ('7', '吸管', null, null, '10', '3');
INSERT INTO `directory2` VALUES ('8', '杯盖', null, null, null, '3');
INSERT INTO `directory2` VALUES ('9', '搅拌棒', null, null, null, '3');
INSERT INTO `directory2` VALUES ('10', '纸碟', null, null, null, '4');
INSERT INTO `directory2` VALUES ('11', '纸碗', null, null, null, '4');
INSERT INTO `directory2` VALUES ('12', '纸托盘', null, null, null, '4');
INSERT INTO `directory2` VALUES ('13', '圆底纸餐盒', null, null, null, '5');
INSERT INTO `directory2` VALUES ('14', '方底纸餐盒', null, null, null, '5');
INSERT INTO `directory2` VALUES ('15', '蛋糕盒', null, null, null, '5');
INSERT INTO `directory2` VALUES ('16', 'PS刀叉勺系列', null, null, null, '6');
INSERT INTO `directory2` VALUES ('17', 'PLA刀叉勺系列', null, null, null, '6');
INSERT INTO `directory2` VALUES ('18', '淀粉刀叉勺系列', null, null, null, '6');
INSERT INTO `directory2` VALUES ('19', '餐巾纸', null, null, null, '7');
INSERT INTO `directory2` VALUES ('20', '抽纸', null, null, null, '7');
INSERT INTO `directory2` VALUES ('21', '卫生纸', null, null, null, '7');
INSERT INTO `directory2` VALUES ('22', '纸袋', null, null, null, '8');
INSERT INTO `directory2` VALUES ('23', '饰品袋', null, null, null, '8');
INSERT INTO `directory2` VALUES ('24', 'PLA塑料袋', null, null, null, '8');
INSERT INTO `directory2` VALUES ('25', '其他纸类', null, null, '6', '7');
INSERT INTO `directory2` VALUES ('26', '环保淀粉塑料袋', null, null, '10', '8');

-- ----------------------------
-- Table structure for `EMP`
-- ----------------------------
DROP TABLE IF EXISTS `EMP`;
CREATE TABLE `EMP` (
  `EMPNO` int(11) NOT NULL,
  `ENAME` varchar(10) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `MGR` int(11) DEFAULT NULL,
  `HIREDATE` date DEFAULT NULL,
  `SAL` double DEFAULT NULL,
  `COMM` double DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMPNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of EMP
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `ddid` int(11) DEFAULT NULL,
  `special` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `cts` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `norms` varchar(255) DEFAULT NULL,
  `vipPrice` double DEFAULT NULL,
  `specialPrice` double DEFAULT NULL,
  `store` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gparam` varchar(255) DEFAULT NULL,
  `isPost` int(11) DEFAULT NULL,
  `postMoney` double DEFAULT NULL,
  `putawayTs` varchar(255) DEFAULT NULL,
  `soldoutTs` varchar(255) DEFAULT NULL,
  `soldNum` int(11) DEFAULT NULL,
  `lessMoney` double DEFAULT NULL,
  `associated` int(11) DEFAULT NULL,
  `postDesc` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `priceValue` double DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `FK_go788vmpqrk953eblwy63ptv8` (`ddid`),
  KEY `FK_11g8akci7qm5ipar7tdi79ati` (`pid`),
  CONSTRAINT `FK_11g8akci7qm5ipar7tdi79ati` FOREIGN KEY (`pid`) REFERENCES `price` (`pid`),
  CONSTRAINT `FK_go788vmpqrk953eblwy63ptv8` FOREIGN KEY (`ddid`) REFERENCES `directory2` (`ddid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('4', '商品X', '5', null, null, null, null, '8', '', null, null, null, null, null, null, null, null, null, null, null, '0', null, '1', '8.8');
INSERT INTO `goods` VALUES ('5', '请求', '4', '0', null, null, '/upImgs/face_be0b1c664439.jpg/', '1', '', null, null, null, null, null, null, null, null, null, null, null, '0', null, '5', '7.7');
INSERT INTO `goods` VALUES ('6', ' 四大参数的', '5', '0', null, null, null, '4', '', null, null, null, null, null, null, null, null, null, null, null, '0', null, '7', '4.4');
INSERT INTO `goods` VALUES ('7', 'c哇', '10', '0', null, null, null, '1', '', null, null, null, null, null, null, null, null, null, null, null, '0', null, '5', '6.6');
INSERT INTO `goods` VALUES ('8', '下午去', '5', '0', null, null, 'null/upImgs/face_0e30a8bc541e.jpg//upImgs/face_cdbd27295434.jpg//upImgs/face_fd4f881404bc.jpg', '1', '', null, null, null, null, null, null, null, null, null, null, null, '0', null, '7', '1.1');
INSERT INTO `goods` VALUES ('9', '我去', '5', '0', null, null, '/upImgs/face_49d519d6a4d8.jpg//upImgs/face_bd22423a84d6.jpg//upImgs/face_5ed9050e84d7.jpg', '1', '', null, null, null, null, null, null, null, null, null, null, null, '0', null, '7', '3.3');
INSERT INTO `goods` VALUES ('10', '农夫山泉', '5', '0', null, null, '/upImgs/face_5091eb202407.jpg//upImgs/face_b1268fc0c434.jpg', '8', 'NongFu Spring', '1', null, '888', '留和路', 'APur', '0', '1', null, null, null, null, '0', '秒到', '16', '2.2');
INSERT INTO `goods` VALUES ('11', '农夫山泉2', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('12', '农夫山泉3', '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('13', '农夫山泉4', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('14', '农夫山泉5', '9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('15', '农夫山泉6', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('16', '农夫山泉7', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('17', '农夫山泉8', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('18', '农夫山泉9', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('19', '农夫山泉10', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('20', '山的那边', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('21', '  asd ds ds ds da', '4', '0', null, null, null, '1', '', null, null, '1', ' da d', '', '0', '10', null, null, null, null, '0', '天天快递，一般三天到，，，', '1', null);
INSERT INTO `goods` VALUES ('22', 'csa', '5', '0', null, null, null, '1', '', null, null, null, 'dca', '', '0', '10', null, null, null, null, '0', '天天快递，一般三天到，，，', '1', null);

-- ----------------------------
-- Table structure for `merchant`
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `mid` int(11) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `faceimg` varchar(255) DEFAULT NULL,
  `cts` varchar(255) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `FK_gn7lrx5w30fmd7t4we7pcktpf` (`rid`),
  CONSTRAINT `FK_gn7lrx5w30fmd7t4we7pcktpf` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('1', 'admin', 'admin', 'admin', '1', null, '2017-08-08 10:20:10', '2');
INSERT INTO `merchant` VALUES ('2', '20170202102', null, '张飞', '1', null, '2017-08-08 10:21:04', '1');
INSERT INTO `merchant` VALUES ('3', '20140808104', null, '关羽', '1', null, '2017-08-08 10:55:03', '3');
INSERT INTO `merchant` VALUES ('4', '20170808106', null, '陈胜', '1', null, '2017-08-08 11:06:30', '3');
INSERT INTO `merchant` VALUES ('5', '20170808111', null, '越王勾践', '1', null, '2017-08-08 11:11:11', '4');
INSERT INTO `merchant` VALUES ('6', '20170808113', null, '保罗', '1', null, '2017-08-08 11:13:22', '5');
INSERT INTO `merchant` VALUES ('7', '20170808114', null, '郑和', '1', null, '2017-08-08 11:13:36', '2');
INSERT INTO `merchant` VALUES ('8', '20170808115', null, '高太祖', '1', null, '2017-08-08 11:13:57', '4');
INSERT INTO `merchant` VALUES ('9', '20170808117', null, '孔子1号', '1', null, '2017-08-08 11:14:19', '2');
INSERT INTO `merchant` VALUES ('10', '20170808119', null, '007号', '1', null, '2017-08-08 11:15:46', '1');
INSERT INTO `merchant` VALUES ('11', '20170808120', null, '孔子2号', '1', null, '2017-08-08 11:15:58', '1');
INSERT INTO `merchant` VALUES ('12', '20170808121', null, '孔子3号', '1', null, '2017-08-08 11:16:10', '4');
INSERT INTO `merchant` VALUES ('13', '20170808122', null, '孔子4号', '1', null, '2017-08-08 11:16:19', '5');
INSERT INTO `merchant` VALUES ('14', '20170808124', null, '孔子5号', '1', null, '2017-08-08 11:16:31', '2');
INSERT INTO `merchant` VALUES ('15', '20170808126', null, '孔子6号', '1', null, '2017-08-08 11:16:44', '1');
INSERT INTO `merchant` VALUES ('16', '2017813516', null, '周武王', '1', null, '2017-08-13 15:17:01', '1');

-- ----------------------------
-- Table structure for `ORDERS`
-- ----------------------------
DROP TABLE IF EXISTS `ORDERS`;
CREATE TABLE `ORDERS` (
  `id` int(11) NOT NULL,
  `ORDERNUMBER` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_57wwsm6wqqkcr1amp4dtsk5bs` (`CUSTOMER_ID`),
  CONSTRAINT `FK_57wwsm6wqqkcr1amp4dtsk5bs` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `CUSTOMERS` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ORDERS
-- ----------------------------

-- ----------------------------
-- Table structure for `price`
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `pid` int(11) NOT NULL,
  `priceUnit` double(16,2) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES ('1', '11.00', '杯');
INSERT INTO `price` VALUES ('5', '76.00', '盒');
INSERT INTO `price` VALUES ('7', '56.00', '个');
INSERT INTO `price` VALUES ('10', '24.00', '套');
INSERT INTO `price` VALUES ('11', '35.00', '件');
INSERT INTO `price` VALUES ('13', '13.00', '箱');
INSERT INTO `price` VALUES ('14', '25.00', '桶');
INSERT INTO `price` VALUES ('15', '30.00', '只');
INSERT INTO `price` VALUES ('16', '50.00', '瓶');
INSERT INTO `price` VALUES ('17', '42.00', '双');

-- ----------------------------
-- Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `provinceId` int(11) NOT NULL,
  `provinceName` varchar(255) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`provinceId`),
  KEY `FK_r2qpp7kuwrj1194r0j34vfmvh` (`countryId`),
  CONSTRAINT `FK_r2qpp7kuwrj1194r0j34vfmvh` FOREIGN KEY (`countryId`) REFERENCES `country` (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '北京市', '1');
INSERT INTO `province` VALUES ('2', '北京下属县', '1');
INSERT INTO `province` VALUES ('3', '天津市', '2');
INSERT INTO `province` VALUES ('4', '天津下属县', '2');
INSERT INTO `province` VALUES ('5', '石家庄市', '3');
INSERT INTO `province` VALUES ('6', '唐山市', '3');
INSERT INTO `province` VALUES ('7', '秦皇岛市', '3');
INSERT INTO `province` VALUES ('9', '邢台市', '3');
INSERT INTO `province` VALUES ('10', '保定市', '3');
INSERT INTO `province` VALUES ('11', '张家口市', '3');
INSERT INTO `province` VALUES ('12', '承德市', '3');
INSERT INTO `province` VALUES ('13', '沧州市', '3');
INSERT INTO `province` VALUES ('14', '廊坊市', '3');
INSERT INTO `province` VALUES ('15', '衡水市', '3');
INSERT INTO `province` VALUES ('16', '太原市', '4');
INSERT INTO `province` VALUES ('17', '大同市', '4');
INSERT INTO `province` VALUES ('18', '阳泉市', '4');
INSERT INTO `province` VALUES ('19', '长治市', '4');
INSERT INTO `province` VALUES ('20', '晋城市', '4');
INSERT INTO `province` VALUES ('21', '朔州市', '4');
INSERT INTO `province` VALUES ('22', '晋中市', '4');
INSERT INTO `province` VALUES ('23', '运城市', '4');
INSERT INTO `province` VALUES ('24', '忻州市', '4');
INSERT INTO `province` VALUES ('25', '临汾市', '4');
INSERT INTO `province` VALUES ('26', '吕梁市', '4');
INSERT INTO `province` VALUES ('27', '呼和浩特市', '5');
INSERT INTO `province` VALUES ('28', '包头市', '5');
INSERT INTO `province` VALUES ('29', '乌海市', '5');
INSERT INTO `province` VALUES ('30', '赤峰市', '5');
INSERT INTO `province` VALUES ('31', '通辽市', '5');
INSERT INTO `province` VALUES ('32', '鄂尔多斯市', '5');
INSERT INTO `province` VALUES ('33', '呼伦贝尔市', '5');
INSERT INTO `province` VALUES ('34', '巴彦淖尔市', '5');
INSERT INTO `province` VALUES ('35', '乌兰察布市', '5');
INSERT INTO `province` VALUES ('36', '兴安盟', '5');
INSERT INTO `province` VALUES ('37', '锡林郭勒盟', '5');
INSERT INTO `province` VALUES ('38', '阿拉善盟', '5');
INSERT INTO `province` VALUES ('39', '沈阳市', '6');
INSERT INTO `province` VALUES ('40', '大连市', '6');
INSERT INTO `province` VALUES ('41', '鞍山市', '6');
INSERT INTO `province` VALUES ('42', '抚顺市', '6');
INSERT INTO `province` VALUES ('43', '本溪市', '6');
INSERT INTO `province` VALUES ('44', '丹东市', '6');
INSERT INTO `province` VALUES ('45', '锦州市', '6');
INSERT INTO `province` VALUES ('46', '营口市', '6');
INSERT INTO `province` VALUES ('47', '阜新市', '6');
INSERT INTO `province` VALUES ('48', '辽阳市', '6');
INSERT INTO `province` VALUES ('49', '盘锦市', '6');
INSERT INTO `province` VALUES ('50', '铁岭市', '6');
INSERT INTO `province` VALUES ('51', '朝阳市', '6');
INSERT INTO `province` VALUES ('52', '葫芦岛市', '6');
INSERT INTO `province` VALUES ('53', '长春市', '7');
INSERT INTO `province` VALUES ('54', '吉林市', '7');
INSERT INTO `province` VALUES ('55', '四平市', '7');
INSERT INTO `province` VALUES ('56', '辽源市', '7');
INSERT INTO `province` VALUES ('57', '通化市', '7');
INSERT INTO `province` VALUES ('58', '白山市', '7');
INSERT INTO `province` VALUES ('59', '松原市', '7');
INSERT INTO `province` VALUES ('60', '白城市', '7');
INSERT INTO `province` VALUES ('61', '延边朝鲜族自治州', '7');
INSERT INTO `province` VALUES ('62', '哈尔滨市', '8');
INSERT INTO `province` VALUES ('63', '齐齐哈尔市', '8');
INSERT INTO `province` VALUES ('64', '鸡西市', '8');
INSERT INTO `province` VALUES ('65', '鹤岗市', '8');
INSERT INTO `province` VALUES ('66', '双鸭山市', '8');
INSERT INTO `province` VALUES ('67', '大庆市', '8');
INSERT INTO `province` VALUES ('68', '伊春市', '8');
INSERT INTO `province` VALUES ('69', '佳木斯市', '8');
INSERT INTO `province` VALUES ('70', '七台河市', '8');
INSERT INTO `province` VALUES ('71', '牡丹江市', '8');
INSERT INTO `province` VALUES ('72', '黑河市', '8');
INSERT INTO `province` VALUES ('73', '绥化市', '8');
INSERT INTO `province` VALUES ('74', '大兴安岭地区', '8');
INSERT INTO `province` VALUES ('75', '上海市', '9');
INSERT INTO `province` VALUES ('76', '上海下属县', '9');
INSERT INTO `province` VALUES ('77', '南京市', '10');
INSERT INTO `province` VALUES ('78', '无锡市', '10');
INSERT INTO `province` VALUES ('79', '徐州市', '10');
INSERT INTO `province` VALUES ('80', '常州市', '10');
INSERT INTO `province` VALUES ('81', '苏州市', '10');
INSERT INTO `province` VALUES ('82', '南通市', '10');
INSERT INTO `province` VALUES ('83', '连云港市', '10');
INSERT INTO `province` VALUES ('84', '淮安市', '10');
INSERT INTO `province` VALUES ('85', '盐城市', '10');
INSERT INTO `province` VALUES ('86', '扬州市', '10');
INSERT INTO `province` VALUES ('87', '镇江市', '10');
INSERT INTO `province` VALUES ('88', '泰州市', '10');
INSERT INTO `province` VALUES ('89', '宿迁市', '10');
INSERT INTO `province` VALUES ('90', '杭州市', '11');
INSERT INTO `province` VALUES ('91', '宁波市', '11');
INSERT INTO `province` VALUES ('92', '温州市', '11');
INSERT INTO `province` VALUES ('93', '嘉兴市', '11');
INSERT INTO `province` VALUES ('94', '湖州市', '11');
INSERT INTO `province` VALUES ('95', '绍兴市', '11');
INSERT INTO `province` VALUES ('96', '金华市', '11');
INSERT INTO `province` VALUES ('97', '衢州市', '11');
INSERT INTO `province` VALUES ('98', '舟山市', '11');
INSERT INTO `province` VALUES ('99', '台州市', '11');
INSERT INTO `province` VALUES ('100', '丽水市', '11');
INSERT INTO `province` VALUES ('101', '合肥市', '12');
INSERT INTO `province` VALUES ('102', '芜湖市', '12');
INSERT INTO `province` VALUES ('103', '蚌埠市', '12');
INSERT INTO `province` VALUES ('104', '淮南市', '12');
INSERT INTO `province` VALUES ('105', '马鞍山市', '12');
INSERT INTO `province` VALUES ('106', '淮北市', '12');
INSERT INTO `province` VALUES ('107', '铜陵市', '12');
INSERT INTO `province` VALUES ('108', '安庆市', '12');
INSERT INTO `province` VALUES ('109', '黄山市', '12');
INSERT INTO `province` VALUES ('110', '滁州市', '12');
INSERT INTO `province` VALUES ('111', '阜阳市', '12');
INSERT INTO `province` VALUES ('112', '宿州市', '12');
INSERT INTO `province` VALUES ('113', '巢湖市', '12');
INSERT INTO `province` VALUES ('114', '六安市', '12');
INSERT INTO `province` VALUES ('115', '亳州市', '12');
INSERT INTO `province` VALUES ('116', '池州市', '12');
INSERT INTO `province` VALUES ('117', '宣城市', '12');
INSERT INTO `province` VALUES ('118', '福州市', '13');
INSERT INTO `province` VALUES ('119', '厦门市', '13');
INSERT INTO `province` VALUES ('120', '莆田市', '13');
INSERT INTO `province` VALUES ('121', '三明市', '13');
INSERT INTO `province` VALUES ('122', '泉州市', '13');
INSERT INTO `province` VALUES ('123', '漳州市', '13');
INSERT INTO `province` VALUES ('124', '南平市', '13');
INSERT INTO `province` VALUES ('125', '龙岩市', '13');
INSERT INTO `province` VALUES ('126', '宁德市', '13');
INSERT INTO `province` VALUES ('127', '南昌市', '14');
INSERT INTO `province` VALUES ('128', '景德镇市', '14');
INSERT INTO `province` VALUES ('129', '萍乡市', '14');
INSERT INTO `province` VALUES ('130', '九江市', '14');
INSERT INTO `province` VALUES ('131', '新余市', '14');
INSERT INTO `province` VALUES ('132', '鹰潭市', '14');
INSERT INTO `province` VALUES ('133', '赣州市', '14');
INSERT INTO `province` VALUES ('134', '吉安市', '14');
INSERT INTO `province` VALUES ('135', '宜春市', '14');
INSERT INTO `province` VALUES ('136', '抚州市', '14');
INSERT INTO `province` VALUES ('137', '上饶市', '14');
INSERT INTO `province` VALUES ('138', '济南市', '15');
INSERT INTO `province` VALUES ('139', '青岛市', '15');
INSERT INTO `province` VALUES ('140', '淄博市', '15');
INSERT INTO `province` VALUES ('141', '枣庄市', '15');
INSERT INTO `province` VALUES ('142', '东营市', '15');
INSERT INTO `province` VALUES ('143', '烟台市', '15');
INSERT INTO `province` VALUES ('144', '潍坊市', '15');
INSERT INTO `province` VALUES ('145', '济宁市', '15');
INSERT INTO `province` VALUES ('146', '泰安市', '15');
INSERT INTO `province` VALUES ('147', '威海市', '15');
INSERT INTO `province` VALUES ('148', '日照市', '15');
INSERT INTO `province` VALUES ('149', '莱芜市', '15');
INSERT INTO `province` VALUES ('150', '临沂市', '15');
INSERT INTO `province` VALUES ('151', '德州市', '15');
INSERT INTO `province` VALUES ('152', '聊城市', '15');
INSERT INTO `province` VALUES ('153', '滨州市', '15');
INSERT INTO `province` VALUES ('154', '荷泽市', '15');
INSERT INTO `province` VALUES ('155', '郑州市', '16');
INSERT INTO `province` VALUES ('156', '开封市', '16');
INSERT INTO `province` VALUES ('157', '洛阳市', '16');
INSERT INTO `province` VALUES ('158', '平顶山市', '16');
INSERT INTO `province` VALUES ('159', '安阳市', '16');
INSERT INTO `province` VALUES ('160', '鹤壁市', '16');
INSERT INTO `province` VALUES ('161', '新乡市', '16');
INSERT INTO `province` VALUES ('162', '焦作市', '16');
INSERT INTO `province` VALUES ('163', '濮阳市', '16');
INSERT INTO `province` VALUES ('164', '许昌市', '16');
INSERT INTO `province` VALUES ('165', '漯河市', '16');
INSERT INTO `province` VALUES ('166', '三门峡市', '16');
INSERT INTO `province` VALUES ('167', '南阳市', '16');
INSERT INTO `province` VALUES ('168', '商丘市', '16');
INSERT INTO `province` VALUES ('169', '信阳市', '16');
INSERT INTO `province` VALUES ('170', '周口市', '16');
INSERT INTO `province` VALUES ('171', '驻马店市', '16');
INSERT INTO `province` VALUES ('172', '武汉市', '17');
INSERT INTO `province` VALUES ('173', '黄石市', '17');
INSERT INTO `province` VALUES ('174', '十堰市', '17');
INSERT INTO `province` VALUES ('175', '宜昌市', '17');
INSERT INTO `province` VALUES ('176', '襄樊市', '17');
INSERT INTO `province` VALUES ('177', '鄂州市', '17');
INSERT INTO `province` VALUES ('178', '荆门市', '17');
INSERT INTO `province` VALUES ('179', '孝感市', '17');
INSERT INTO `province` VALUES ('180', '荆州市', '17');
INSERT INTO `province` VALUES ('181', '黄冈市', '17');
INSERT INTO `province` VALUES ('182', '咸宁市', '17');
INSERT INTO `province` VALUES ('183', '随州市', '17');
INSERT INTO `province` VALUES ('184', '恩施土家族苗族自治州', '17');
INSERT INTO `province` VALUES ('185', '省直辖行政单位', '17');
INSERT INTO `province` VALUES ('186', '长沙市', '18');
INSERT INTO `province` VALUES ('187', '株洲市', '18');
INSERT INTO `province` VALUES ('188', '湘潭市', '18');
INSERT INTO `province` VALUES ('189', '衡阳市', '18');
INSERT INTO `province` VALUES ('190', '邵阳市', '18');
INSERT INTO `province` VALUES ('191', '岳阳市', '18');
INSERT INTO `province` VALUES ('192', '常德市', '18');
INSERT INTO `province` VALUES ('193', '张家界市', '18');
INSERT INTO `province` VALUES ('194', '益阳市', '18');
INSERT INTO `province` VALUES ('195', '郴州市', '18');
INSERT INTO `province` VALUES ('196', '永州市', '18');
INSERT INTO `province` VALUES ('197', '怀化市', '18');
INSERT INTO `province` VALUES ('198', '娄底市', '18');
INSERT INTO `province` VALUES ('199', '湘西土家族苗族自治州', '18');
INSERT INTO `province` VALUES ('200', '广州市', '19');
INSERT INTO `province` VALUES ('201', '韶关市', '19');
INSERT INTO `province` VALUES ('202', '深圳市', '19');
INSERT INTO `province` VALUES ('203', '珠海市', '19');
INSERT INTO `province` VALUES ('204', '汕头市', '19');
INSERT INTO `province` VALUES ('205', '佛山市', '19');
INSERT INTO `province` VALUES ('206', '江门市', '19');
INSERT INTO `province` VALUES ('207', '湛江市', '19');
INSERT INTO `province` VALUES ('208', '茂名市', '19');
INSERT INTO `province` VALUES ('209', '肇庆市', '19');
INSERT INTO `province` VALUES ('210', '惠州市', '19');
INSERT INTO `province` VALUES ('211', '梅州市', '19');
INSERT INTO `province` VALUES ('212', '汕尾市', '19');
INSERT INTO `province` VALUES ('213', '河源市', '19');
INSERT INTO `province` VALUES ('214', '阳江市', '19');
INSERT INTO `province` VALUES ('215', '清远市', '19');
INSERT INTO `province` VALUES ('216', '东莞市', '19');
INSERT INTO `province` VALUES ('217', '中山市', '19');
INSERT INTO `province` VALUES ('218', '潮州市', '19');
INSERT INTO `province` VALUES ('219', '揭阳市', '19');
INSERT INTO `province` VALUES ('220', '云浮市', '19');
INSERT INTO `province` VALUES ('221', '南宁市', '20');
INSERT INTO `province` VALUES ('222', '柳州市', '20');
INSERT INTO `province` VALUES ('223', '桂林市', '20');
INSERT INTO `province` VALUES ('224', '梧州市', '20');
INSERT INTO `province` VALUES ('225', '北海市', '20');
INSERT INTO `province` VALUES ('226', '防城港市', '20');
INSERT INTO `province` VALUES ('227', '钦州市', '20');
INSERT INTO `province` VALUES ('228', '贵港市', '20');
INSERT INTO `province` VALUES ('229', '玉林市', '20');
INSERT INTO `province` VALUES ('230', '百色市', '20');
INSERT INTO `province` VALUES ('231', '贺州市', '20');
INSERT INTO `province` VALUES ('232', '河池市', '20');
INSERT INTO `province` VALUES ('233', '来宾市', '20');
INSERT INTO `province` VALUES ('234', '崇左市', '20');
INSERT INTO `province` VALUES ('235', '海口市', '21');
INSERT INTO `province` VALUES ('236', '三亚市', '21');
INSERT INTO `province` VALUES ('237', '省直辖县级行政单位', '21');
INSERT INTO `province` VALUES ('238', '重庆市', '22');
INSERT INTO `province` VALUES ('239', '重庆下属县', '22');
INSERT INTO `province` VALUES ('240', '重庆下属市', '22');
INSERT INTO `province` VALUES ('241', '成都市', '23');
INSERT INTO `province` VALUES ('242', '自贡市', '23');
INSERT INTO `province` VALUES ('243', '攀枝花市', '23');
INSERT INTO `province` VALUES ('244', '泸州市', '23');
INSERT INTO `province` VALUES ('245', '德阳市', '23');
INSERT INTO `province` VALUES ('246', '绵阳市', '23');
INSERT INTO `province` VALUES ('247', '广元市', '23');
INSERT INTO `province` VALUES ('248', '遂宁市', '23');
INSERT INTO `province` VALUES ('249', '内江市', '23');
INSERT INTO `province` VALUES ('250', '乐山市', '23');
INSERT INTO `province` VALUES ('251', '南充市', '23');
INSERT INTO `province` VALUES ('252', '眉山市', '23');
INSERT INTO `province` VALUES ('253', '宜宾市', '23');
INSERT INTO `province` VALUES ('254', '广安市', '23');
INSERT INTO `province` VALUES ('255', '达州市', '23');
INSERT INTO `province` VALUES ('256', '雅安市', '23');
INSERT INTO `province` VALUES ('257', '巴中市', '23');
INSERT INTO `province` VALUES ('258', '资阳市', '23');
INSERT INTO `province` VALUES ('259', '阿坝藏族羌族自治州', '23');
INSERT INTO `province` VALUES ('260', '甘孜藏族自治州', '23');
INSERT INTO `province` VALUES ('261', '凉山彝族自治州', '23');
INSERT INTO `province` VALUES ('262', '贵阳市', '24');
INSERT INTO `province` VALUES ('263', '六盘水市', '24');
INSERT INTO `province` VALUES ('264', '遵义市', '24');
INSERT INTO `province` VALUES ('265', '安顺市', '24');
INSERT INTO `province` VALUES ('266', '铜仁地区', '24');
INSERT INTO `province` VALUES ('267', '黔西南布依族苗族自治州', '24');
INSERT INTO `province` VALUES ('268', '毕节地区', '24');
INSERT INTO `province` VALUES ('269', '黔东南苗族侗族自治州', '24');
INSERT INTO `province` VALUES ('270', '黔南布依族苗族自治州', '24');
INSERT INTO `province` VALUES ('271', '昆明市', '25');
INSERT INTO `province` VALUES ('272', '曲靖市', '25');
INSERT INTO `province` VALUES ('273', '玉溪市', '25');
INSERT INTO `province` VALUES ('274', '保山市', '25');
INSERT INTO `province` VALUES ('275', '昭通市', '25');
INSERT INTO `province` VALUES ('276', '丽江市', '25');
INSERT INTO `province` VALUES ('277', '思茅市', '25');
INSERT INTO `province` VALUES ('278', '临沧市', '25');
INSERT INTO `province` VALUES ('279', '楚雄彝族自治州', '25');
INSERT INTO `province` VALUES ('280', '红河哈尼族彝族自治州', '25');
INSERT INTO `province` VALUES ('281', '文山壮族苗族自治州', '25');
INSERT INTO `province` VALUES ('282', '西双版纳傣族自治州', '25');
INSERT INTO `province` VALUES ('283', '大理白族自治州', '25');
INSERT INTO `province` VALUES ('284', '德宏傣族景颇族自治州', '25');
INSERT INTO `province` VALUES ('285', '怒江傈僳族自治州', '25');
INSERT INTO `province` VALUES ('286', '迪庆藏族自治州', '25');
INSERT INTO `province` VALUES ('287', '拉萨市', '26');
INSERT INTO `province` VALUES ('288', '昌都地区', '26');
INSERT INTO `province` VALUES ('289', '山南地区', '26');
INSERT INTO `province` VALUES ('290', '日喀则地区', '26');
INSERT INTO `province` VALUES ('291', '那曲地区', '26');
INSERT INTO `province` VALUES ('292', '阿里地区', '26');
INSERT INTO `province` VALUES ('293', '林芝地区', '26');
INSERT INTO `province` VALUES ('294', '西安市', '27');
INSERT INTO `province` VALUES ('295', '铜川市', '27');
INSERT INTO `province` VALUES ('296', '宝鸡市', '27');
INSERT INTO `province` VALUES ('297', '咸阳市', '27');
INSERT INTO `province` VALUES ('298', '渭南市', '27');
INSERT INTO `province` VALUES ('299', '延安市', '27');
INSERT INTO `province` VALUES ('300', '汉中市', '27');
INSERT INTO `province` VALUES ('301', '榆林市', '27');
INSERT INTO `province` VALUES ('302', '安康市', '27');
INSERT INTO `province` VALUES ('303', '商洛市', '27');
INSERT INTO `province` VALUES ('304', '兰州市', '28');
INSERT INTO `province` VALUES ('305', '嘉峪关市', '28');
INSERT INTO `province` VALUES ('306', '金昌市', '28');
INSERT INTO `province` VALUES ('307', '白银市', '28');
INSERT INTO `province` VALUES ('308', '天水市', '28');
INSERT INTO `province` VALUES ('309', '武威市', '28');
INSERT INTO `province` VALUES ('310', '张掖市', '28');
INSERT INTO `province` VALUES ('311', '平凉市', '28');
INSERT INTO `province` VALUES ('312', '酒泉市', '28');
INSERT INTO `province` VALUES ('313', '庆阳市', '28');
INSERT INTO `province` VALUES ('314', '定西市', '28');
INSERT INTO `province` VALUES ('315', '陇南市', '28');
INSERT INTO `province` VALUES ('316', '临夏回族自治州', '28');
INSERT INTO `province` VALUES ('317', '甘南藏族自治州', '28');
INSERT INTO `province` VALUES ('318', '西宁市', '29');
INSERT INTO `province` VALUES ('319', '海东地区', '29');
INSERT INTO `province` VALUES ('320', '海北藏族自治州', '29');
INSERT INTO `province` VALUES ('321', '黄南藏族自治州', '29');
INSERT INTO `province` VALUES ('322', '海南藏族自治州', '29');
INSERT INTO `province` VALUES ('323', '果洛藏族自治州', '29');
INSERT INTO `province` VALUES ('324', '玉树藏族自治州', '29');
INSERT INTO `province` VALUES ('325', '海西蒙古族藏族自治州', '29');
INSERT INTO `province` VALUES ('326', '银川市', '30');
INSERT INTO `province` VALUES ('327', '石嘴山市', '30');
INSERT INTO `province` VALUES ('328', '吴忠市', '30');
INSERT INTO `province` VALUES ('329', '固原市', '30');
INSERT INTO `province` VALUES ('330', '中卫市', '30');
INSERT INTO `province` VALUES ('331', '乌鲁木齐市', '31');
INSERT INTO `province` VALUES ('332', '克拉玛依市', '31');
INSERT INTO `province` VALUES ('333', '吐鲁番地区', '31');
INSERT INTO `province` VALUES ('334', '哈密地区', '31');
INSERT INTO `province` VALUES ('335', '昌吉回族自治州', '31');
INSERT INTO `province` VALUES ('336', '博尔塔拉蒙古自治州', '31');
INSERT INTO `province` VALUES ('337', '巴音郭楞蒙古自治州', '31');
INSERT INTO `province` VALUES ('338', '阿克苏地区', '31');
INSERT INTO `province` VALUES ('339', '克孜勒苏柯尔克孜自治州', '31');
INSERT INTO `province` VALUES ('340', '喀什地区', '31');
INSERT INTO `province` VALUES ('341', '和田地区', '31');
INSERT INTO `province` VALUES ('342', '伊犁哈萨克自治州', '31');
INSERT INTO `province` VALUES ('343', '塔城地区', '31');
INSERT INTO `province` VALUES ('344', '阿勒泰地区', '31');
INSERT INTO `province` VALUES ('345', '省直辖行政单位', '31');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(11) NOT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `cts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '系统管理员', '2017-08-08 10:20:10');
INSERT INTO `role` VALUES ('2', '客服小白', '2017-08-08 10:20:10');
INSERT INTO `role` VALUES ('3', '售货员', '2017-08-08 10:20:10');
INSERT INTO `role` VALUES ('4', '快递小哥', '2017-08-08 10:20:10');
INSERT INTO `role` VALUES ('5', '产品经理', '2017-08-08 10:20:10');
INSERT INTO `role` VALUES ('6', 'BOSS', '2017-08-08 11:20:08');
