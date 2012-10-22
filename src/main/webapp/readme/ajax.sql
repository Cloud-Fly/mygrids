/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50150
Source Host           : localhost:3306
Source Database       : sigma

Target Server Type    : MYSQL
Target Server Version : 50150
File Encoding         : 65001

Date: 2011-07-26 15:41:17
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ajax`
-- ----------------------------
DROP TABLE IF EXISTS `ajax`;
CREATE TABLE `ajax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `engine` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '内核引擎',
  `browser` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '浏览器',
  `platform` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '平台',
  `version` float NOT NULL DEFAULT '0' COMMENT '版本',
  `grade` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'CSS评级',
  `datetime` datetime NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='测试表';

-- ----------------------------
-- Records of ajax
-- ----------------------------
INSERT INTO ajax VALUES ('1', 'Trident', 'Internet Explorer 4.0', 'Win 95+', '4', 'X', '2001-07-26 15:35:00');
INSERT INTO ajax VALUES ('2', 'Trident', 'Internet Explorer 5.0', 'Win 95+', '5', 'C', '2001-07-27 15:35:00');
INSERT INTO ajax VALUES ('3', 'Trident', 'Internet Explorer 5.5', 'Win 95+', '5.5', 'A', '2001-07-28 15:35:00');
INSERT INTO ajax VALUES ('4', 'Trident', 'Internet Explorer 6', 'Win 98+', '6', 'A', '2001-07-29 15:35:00');
INSERT INTO ajax VALUES ('5', 'Trident', 'Internet Explorer 7', 'Win XP SP2+', '7', 'A', '2001-07-30 15:35:00');
INSERT INTO ajax VALUES ('6', 'Trident', 'AOL browser (AOL desktop)', 'Win XP', '6', 'A', '2001-07-31 15:35:00');
INSERT INTO ajax VALUES ('7', 'Gecko', 'Firefox 1.0', 'Win 98+ / OSX.2+', '1.7', 'A', '2001-08-01 15:35:00');
INSERT INTO ajax VALUES ('8', 'Gecko', 'Firefox 1.5', 'Win 98+ / OSX.2+', '1.8', 'A', '2001-01-02 15:35:00');
INSERT INTO ajax VALUES ('9', 'Gecko', 'Firefox 2.0', 'Win 98+ / OSX.2+', '1.8', 'A', '2001-01-03 15:35:00');
INSERT INTO ajax VALUES ('10', 'Gecko', 'Firefox 3.0', 'Win 2k+ / OSX.3+', '1.9', 'A', '2001-01-04 15:35:00');
INSERT INTO ajax VALUES ('11', 'Gecko', 'Camino 1.0', 'OSX.2+', '1.8', 'A', '2001-01-05 15:35:00');
INSERT INTO ajax VALUES ('12', 'Gecko', 'Camino 1.5', 'OSX.3+', '1.8', 'A', '2001-01-06 15:35:00');
INSERT INTO ajax VALUES ('13', 'Gecko', 'Netscape 7.2', 'Win 95+ / Mac OS 8.6-9.2', '1.7', 'A', '2005-11-17 15:35:00');
INSERT INTO ajax VALUES ('14', 'Gecko', 'Netscape Browser 8', 'Win 98SE+', '1.7', 'A', '2005-11-18 15:35:00');
INSERT INTO ajax VALUES ('15', 'Gecko', 'Netscape Navigator 9', 'Win 98+ / OSX.2+', '1.8', 'A', '2005-11-19 15:35:00');
INSERT INTO ajax VALUES ('16', 'Gecko', 'Mozilla 1.0', 'Win 95+ / OSX.1+', '1', 'A', '2005-11-20 15:35:00');
INSERT INTO ajax VALUES ('17', 'Gecko', 'Mozilla 1.1', 'Win 95+ / OSX.1+', '1.1', 'A', '2005-11-21 15:35:00');
INSERT INTO ajax VALUES ('18', 'Gecko', 'Mozilla 1.2', 'Win 95+ / OSX.1+', '1.2', 'A', '2005-11-22 15:35:00');
INSERT INTO ajax VALUES ('19', 'Gecko', 'Mozilla 1.3', 'Win 95+ / OSX.1+', '1.3', 'A', '2005-11-23 15:35:00');
INSERT INTO ajax VALUES ('20', 'Gecko', 'Mozilla 1.4', 'Win 95+ / OSX.1+', '1.4', 'A', '2005-04-14 15:35:00');
INSERT INTO ajax VALUES ('21', 'Gecko', 'Mozilla 1.5', 'Win 95+ / OSX.1+', '1.5', 'A', '2005-04-15 15:35:00');
INSERT INTO ajax VALUES ('22', 'Gecko', 'Mozilla 1.6', 'Win 95+ / OSX.1+', '1.6', 'A', '2005-04-16 15:35:00');
INSERT INTO ajax VALUES ('23', 'Gecko', 'Mozilla 1.7', 'Win 98+ / OSX.1+', '1.7', 'A', '2005-04-17 15:35:00');
INSERT INTO ajax VALUES ('24', 'Gecko', 'Mozilla 1.8', 'Win 98+ / OSX.1+', '1.8', 'A', '2005-04-18 15:35:00');
INSERT INTO ajax VALUES ('25', 'Gecko', 'Seamonkey 1.1', 'Win 98+ / OSX.2+', '1.8', 'A', '2005-04-19 15:35:00');
INSERT INTO ajax VALUES ('26', 'Gecko', 'Epiphany 2.20', 'Gnome', '1.8', 'A', '2005-04-20 15:35:00');
INSERT INTO ajax VALUES ('27', 'Webkit', 'Safari 1.2', 'OSX.3', '125.5', 'A', '2005-04-21 15:35:00');
INSERT INTO ajax VALUES ('28', 'Webkit', 'Safari 1.3', 'OSX.3', '312.8', 'A', '1999-05-14 15:35:00');
INSERT INTO ajax VALUES ('29', 'Webkit', 'Safari 2.0', 'OSX.4+', '419.3', 'A', '1999-05-15 15:35:00');
INSERT INTO ajax VALUES ('30', 'Webkit', 'Safari 3.0', 'OSX.4+', '522.1', 'A', '1999-05-16 15:35:00');
INSERT INTO ajax VALUES ('31', 'Webkit', 'OmniWeb 5.5', 'OSX.4+', '420', 'A', '1999-05-17 14:35:00');
INSERT INTO ajax VALUES ('32', 'Webkit', 'iPod Touch / iPhone', 'iPod', '420.1', 'A', '1999-05-18 14:35:00');
INSERT INTO ajax VALUES ('33', 'Webkit', 'S60', 'S60', '413', 'A', '1999-05-19 14:35:00');
INSERT INTO ajax VALUES ('34', 'Presto', 'Opera 7.0', 'Win 95+ / OSX.1+', '-0', 'A', '1999-05-20 14:35:00');
INSERT INTO ajax VALUES ('35', 'Presto', 'Opera 7.5', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-21 14:35:00');
INSERT INTO ajax VALUES ('36', 'Presto', 'Opera 8.0', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-22 14:35:00');
INSERT INTO ajax VALUES ('37', 'Presto', 'Opera 8.5', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-23 14:35:00');
INSERT INTO ajax VALUES ('38', 'Presto', 'Opera 9.0', 'Win 95+ / OSX.3+', '-0', 'A', '2015-08-14 12:35:00');
INSERT INTO ajax VALUES ('39', 'Presto', 'Opera 9.2', 'Win 88+ / OSX.3+', '-0', 'A', '2015-08-15 12:35:00');
INSERT INTO ajax VALUES ('40', 'Presto', 'Opera 9.5', 'Win 88+ / OSX.3+', '-0', 'A', '2015-08-16 12:35:00');
INSERT INTO ajax VALUES ('41', 'Presto', 'Opera for Wii', 'Wii', '-0', 'A', '2015-08-17 12:35:00');
INSERT INTO ajax VALUES ('42', 'Presto', 'Nokia N800', 'N800', '-0', 'A', '2015-08-18 12:35:00');
INSERT INTO ajax VALUES ('43', 'Presto', 'Nintendo DS browser', 'Nintendo DS', '8.5', 'C/A<sup>1</sup>', '2015-08-19 12:35:00');
INSERT INTO ajax VALUES ('44', 'KHTML', 'Konqureror 3.1', 'KDE 3.1', '3.1', 'C', '2015-08-20 12:35:00');
INSERT INTO ajax VALUES ('45', 'KHTML', 'Konqureror 3.3', 'KDE 3.3', '3.3', 'A', '2015-08-21 12:35:00');
INSERT INTO ajax VALUES ('46', 'KHTML', 'Konqureror 3.5', 'KDE 3.5', '3.5', 'A', '2015-08-22 12:35:00');
INSERT INTO ajax VALUES ('47', 'Tasman', 'Internet Explorer 4.5', 'Mac OS 8-9', '-0', 'X', '2005-08-14 11:35:00');
INSERT INTO ajax VALUES ('48', 'Tasman', 'Internet Explorer 5.1', 'Mac OS 7.6-9', '1', 'C', '2005-08-15 11:35:00');
INSERT INTO ajax VALUES ('49', 'Tasman', 'Internet Explorer 5.2', 'Mac OS 8-X', '1', 'C', '2005-08-16 11:35:00');
INSERT INTO ajax VALUES ('50', 'Misc', 'NetFront 3.1', 'Embedded devices', '-0', 'C', '2005-08-17 11:35:00');
INSERT INTO ajax VALUES ('51', 'Misc', 'NetFront 3.4', 'Embedded devices', '-0', 'A', '2005-08-18 11:35:00');
INSERT INTO ajax VALUES ('52', 'Misc', 'Dillo 0.8', 'Embedded devices', '-0', 'X', '2005-08-19 11:35:00');
INSERT INTO ajax VALUES ('53', 'Misc', 'Links', 'Text only', '-0', 'X', '2005-08-20 11:35:00');
INSERT INTO ajax VALUES ('54', 'Misc', 'Lynx', 'Text only', '-0', 'X', '2005-08-21 11:35:00');
INSERT INTO ajax VALUES ('55', 'Misc', 'IE Mobile', 'Windows Mobile 6', '-0', 'C', '2005-08-22 11:35:00');
INSERT INTO ajax VALUES ('56', 'Misc', 'PSP browser', 'PSP', '-0', 'C', '2005-08-23 11:35:00');
INSERT INTO ajax VALUES ('57', 'Other browsers', 'All others', '-', '-0', 'U', '2005-08-24 11:35:00');
INSERT INTO ajax VALUES ('60', 'Gecko', 'Mozilla 1.4', 'Win 95+ / OSX.1+', '1.4', 'A', '2005-04-14 15:35:00');
INSERT INTO ajax VALUES ('61', 'Gecko', 'Mozilla 1.5', 'Win 95+ / OSX.1+', '1.5', 'A', '2005-04-15 15:35:00');
INSERT INTO ajax VALUES ('62', 'Gecko', 'Mozilla 1.6', 'Win 95+ / OSX.1+', '1.6', 'A', '2005-04-16 15:35:00');
INSERT INTO ajax VALUES ('63', 'Gecko', 'Mozilla 1.7', 'Win 98+ / OSX.1+', '1.7', 'A', '2005-04-17 15:35:00');
INSERT INTO ajax VALUES ('64', 'Gecko', 'Mozilla 1.8', 'Win 98+ / OSX.1+', '1.8', 'A', '2005-04-18 15:35:00');
INSERT INTO ajax VALUES ('65', 'Gecko', 'Seamonkey 1.1', 'Win 98+ / OSX.2+', '1.8', 'A', '2005-04-19 15:35:00');
INSERT INTO ajax VALUES ('66', 'Gecko', 'Epiphany 2.20', 'Gnome', '1.8', 'A', '2005-04-20 15:35:00');
INSERT INTO ajax VALUES ('67', 'Webkit', 'Safari 1.2', 'OSX.3', '125.5', 'A', '2005-04-21 15:35:00');
INSERT INTO ajax VALUES ('68', 'Webkit', 'Safari 1.3', 'OSX.3', '312.8', 'A', '1999-05-14 15:35:00');
INSERT INTO ajax VALUES ('69', 'Webkit', 'Safari 2.0', 'OSX.4+', '419.3', 'A', '1999-05-15 15:35:00');
INSERT INTO ajax VALUES ('70', 'Webkit', 'Safari 3.0', 'OSX.4+', '522.1', 'A', '1999-05-16 15:35:00');
INSERT INTO ajax VALUES ('71', 'Webkit', 'OmniWeb 5.5', 'OSX.4+', '420', 'A', '1999-05-17 14:35:00');
INSERT INTO ajax VALUES ('72', 'Webkit', 'iPod Touch / iPhone', 'iPod', '420.1', 'A', '1999-05-18 14:35:00');
INSERT INTO ajax VALUES ('73', 'Webkit', 'S60', 'S60', '413', 'A', '1999-05-19 14:35:00');
INSERT INTO ajax VALUES ('74', 'Presto', 'Opera 7.0', 'Win 95+ / OSX.1+', '-0', 'A', '1999-05-20 14:35:00');
INSERT INTO ajax VALUES ('75', 'Presto', 'Opera 7.5', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-21 14:35:00');
INSERT INTO ajax VALUES ('76', 'Presto', 'Opera 8.0', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-22 14:35:00');
INSERT INTO ajax VALUES ('77', 'Presto', 'Opera 8.5', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-23 14:35:00');
INSERT INTO ajax VALUES ('78', 'Presto', 'Opera 9.0', 'Win 95+ / OSX.3+', '-0', 'A', '2015-08-14 12:35:00');
INSERT INTO ajax VALUES ('79', 'Presto', 'Opera 9.2', 'Win 88+ / OSX.3+', '-0', 'A', '2015-08-15 12:35:00');
INSERT INTO ajax VALUES ('80', 'Presto', 'Opera 9.5', 'Win 88+ / OSX.3+', '-0', 'A', '2015-08-16 12:35:00');
INSERT INTO ajax VALUES ('81', 'Presto', 'Opera for Wii', 'Wii', '-0', 'A', '2015-08-17 12:35:00');
INSERT INTO ajax VALUES ('82', 'Presto', 'Nokia N800', 'N800', '-0', 'A', '2015-08-18 12:35:00');
INSERT INTO ajax VALUES ('83', 'Presto', 'Nintendo DS browser', 'Nintendo DS', '8.5', 'C/A<sup>1</sup>', '2015-08-19 12:35:00');
INSERT INTO ajax VALUES ('84', 'KHTML', 'Konqureror 3.1', 'KDE 3.1', '3.1', 'C', '2015-08-20 12:35:00');
INSERT INTO ajax VALUES ('85', 'KHTML', 'Konqureror 3.3', 'KDE 3.3', '3.3', 'A', '2015-08-21 12:35:00');
INSERT INTO ajax VALUES ('86', 'KHTML', 'Konqureror 3.5', 'KDE 3.5', '3.5', 'A', '2015-08-22 12:35:00');
INSERT INTO ajax VALUES ('87', 'Tasman', 'Internet Explorer 4.5', 'Mac OS 8-9', '-0', 'X', '2005-08-14 11:35:00');
INSERT INTO ajax VALUES ('88', 'Tasman', 'Internet Explorer 5.1', 'Mac OS 7.6-9', '1', 'C', '2005-08-15 11:35:00');
INSERT INTO ajax VALUES ('89', 'Tasman', 'Internet Explorer 5.2', 'Mac OS 8-X', '1', 'C', '2005-08-16 11:35:00');
INSERT INTO ajax VALUES ('90', 'Misc', 'NetFront 3.1', 'Embedded devices', '-0', 'C', '2005-08-17 11:35:00');
INSERT INTO ajax VALUES ('91', 'Misc', 'NetFront 3.4', 'Embedded devices', '-0', 'A', '2005-08-18 11:35:00');
INSERT INTO ajax VALUES ('92', 'Misc', 'Dillo 0.8', 'Embedded devices', '-0', 'X', '2005-08-19 11:35:00');
INSERT INTO ajax VALUES ('93', 'Misc', 'Links', 'Text only', '-0', 'X', '2005-08-20 11:35:00');
INSERT INTO ajax VALUES ('94', 'Misc', 'Lynx', 'Text only', '-0', 'X', '2005-08-21 11:35:00');
INSERT INTO ajax VALUES ('95', 'Misc', 'IE Mobile', 'Windows Mobile 6', '-0', 'C', '2005-08-22 11:35:00');
INSERT INTO ajax VALUES ('96', 'Misc', 'PSP browser', 'PSP', '-0', 'C', '2005-08-23 11:35:00');
INSERT INTO ajax VALUES ('97', 'Other browsers', 'All others', '-', '-0', 'U', '2005-08-24 11:35:00');
INSERT INTO ajax VALUES ('110', 'Gecko', 'Firefox 3.0', 'Win 2k+ / OSX.3+', '1.9', 'A', '2001-01-04 15:35:00');
INSERT INTO ajax VALUES ('111', 'Gecko', 'Camino 1.0', 'OSX.2+', '1.8', 'A', '2001-01-05 15:35:00');
INSERT INTO ajax VALUES ('112', 'Gecko', 'Camino 1.5', 'OSX.3+', '1.8', 'A', '2001-01-06 15:35:00');
INSERT INTO ajax VALUES ('113', 'Gecko', 'Netscape 7.2', 'Win 95+ / Mac OS 8.6-9.2', '1.7', 'A', '2005-11-17 15:35:00');
INSERT INTO ajax VALUES ('114', 'Gecko', 'Netscape Browser 8', 'Win 98SE+', '1.7', 'A', '2005-11-18 15:35:00');
INSERT INTO ajax VALUES ('115', 'Gecko', 'Netscape Navigator 9', 'Win 98+ / OSX.2+', '1.8', 'A', '2005-11-19 15:35:00');
INSERT INTO ajax VALUES ('116', 'Gecko', 'Mozilla 1.0', 'Win 95+ / OSX.1+', '1', 'A', '2005-11-20 15:35:00');
INSERT INTO ajax VALUES ('117', 'Gecko', 'Mozilla 1.1', 'Win 95+ / OSX.1+', '1.1', 'A', '2005-11-21 15:35:00');
INSERT INTO ajax VALUES ('118', 'Gecko', 'Mozilla 1.2', 'Win 95+ / OSX.1+', '1.2', 'A', '2005-11-22 15:35:00');
INSERT INTO ajax VALUES ('119', 'Gecko', 'Mozilla 1.3', 'Win 95+ / OSX.1+', '1.3', 'A', '2005-11-23 15:35:00');
INSERT INTO ajax VALUES ('160', 'Gecko', 'Mozilla 1.4', 'Win 95+ / OSX.1+', '1.4', 'A', '2005-04-14 15:35:00');
INSERT INTO ajax VALUES ('161', 'Gecko', 'Mozilla 1.5', 'Win 95+ / OSX.1+', '1.5', 'A', '2005-04-15 15:35:00');
INSERT INTO ajax VALUES ('162', 'Gecko', 'Mozilla 1.6', 'Win 95+ / OSX.1+', '1.6', 'A', '2005-04-16 15:35:00');
INSERT INTO ajax VALUES ('163', 'Gecko', 'Mozilla 1.7', 'Win 98+ / OSX.1+', '1.7', 'A', '2005-04-17 15:35:00');
INSERT INTO ajax VALUES ('164', 'Gecko', 'Mozilla 1.8', 'Win 98+ / OSX.1+', '1.8', 'A', '2005-04-18 15:35:00');
INSERT INTO ajax VALUES ('165', 'Gecko', 'Seamonkey 1.1', 'Win 98+ / OSX.2+', '1.8', 'A', '2005-04-19 15:35:00');
INSERT INTO ajax VALUES ('166', 'Gecko', 'Epiphany 2.20', 'Gnome', '1.8', 'A', '2005-04-20 15:35:00');
INSERT INTO ajax VALUES ('167', 'Webkit', 'Safari 1.2', 'OSX.3', '125.5', 'A', '2005-04-21 15:35:00');
INSERT INTO ajax VALUES ('168', 'Webkit', 'Safari 1.3', 'OSX.3', '312.8', 'A', '1999-05-14 15:35:00');
INSERT INTO ajax VALUES ('169', 'Webkit', 'Safari 2.0', 'OSX.4+', '419.3', 'A', '1999-05-15 15:35:00');
INSERT INTO ajax VALUES ('170', 'Webkit', 'Safari 3.0', 'OSX.4+', '522.1', 'A', '1999-05-16 15:35:00');
INSERT INTO ajax VALUES ('171', 'Webkit', 'OmniWeb 5.5', 'OSX.4+', '420', 'A', '1999-05-17 14:35:00');
INSERT INTO ajax VALUES ('172', 'Webkit', 'iPod Touch / iPhone', 'iPod', '420.1', 'A', '1999-05-18 14:35:00');
INSERT INTO ajax VALUES ('173', 'Webkit', 'S60', 'S60', '413', 'A', '1999-05-19 14:35:00');
INSERT INTO ajax VALUES ('174', 'Presto', 'Opera 7.0', 'Win 95+ / OSX.1+', '-0', 'A', '1999-05-20 14:35:00');
INSERT INTO ajax VALUES ('175', 'Presto', 'Opera 7.5', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-21 14:35:00');
INSERT INTO ajax VALUES ('176', 'Presto', 'Opera 8.0', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-22 14:35:00');
INSERT INTO ajax VALUES ('177', 'Presto', 'Opera 8.5', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-23 14:35:00');
INSERT INTO ajax VALUES ('178', 'Presto', 'Opera 9.0', 'Win 95+ / OSX.3+', '-0', 'A', '2015-08-14 12:35:00');
INSERT INTO ajax VALUES ('179', 'Presto', 'Opera 9.2', 'Win 88+ / OSX.3+', '-0', 'A', '2015-08-15 12:35:00');
INSERT INTO ajax VALUES ('180', 'Presto', 'Opera 9.5', 'Win 88+ / OSX.3+', '-0', 'A', '2015-08-16 12:35:00');
INSERT INTO ajax VALUES ('181', 'Presto', 'Opera for Wii', 'Wii', '-0', 'A', '2015-08-17 12:35:00');
INSERT INTO ajax VALUES ('182', 'Presto', 'Nokia N800', 'N800', '-0', 'A', '2015-08-18 12:35:00');
INSERT INTO ajax VALUES ('183', 'Presto', 'Nintendo DS browser', 'Nintendo DS', '8.5', 'C/A<sup>1</sup>', '2015-08-19 12:35:00');
INSERT INTO ajax VALUES ('184', 'KHTML', 'Konqureror 3.1', 'KDE 3.1', '3.1', 'C', '2015-08-20 12:35:00');
INSERT INTO ajax VALUES ('185', 'KHTML', 'Konqureror 3.3', 'KDE 3.3', '3.3', 'A', '2015-08-21 12:35:00');
INSERT INTO ajax VALUES ('186', 'KHTML', 'Konqureror 3.5', 'KDE 3.5', '3.5', 'A', '2015-08-22 12:35:00');
INSERT INTO ajax VALUES ('187', 'Tasman', 'Internet Explorer 4.5', 'Mac OS 8-9', '-0', 'X', '2005-08-14 11:35:00');
INSERT INTO ajax VALUES ('188', 'Tasman', 'Internet Explorer 5.1', 'Mac OS 7.6-9', '1', 'C', '2005-08-15 11:35:00');
INSERT INTO ajax VALUES ('189', 'Tasman', 'Internet Explorer 5.2', 'Mac OS 8-X', '1', 'C', '2005-08-16 11:35:00');
INSERT INTO ajax VALUES ('190', 'Misc', 'NetFront 3.1', 'Embedded devices', '-0', 'C', '2005-08-17 11:35:00');
INSERT INTO ajax VALUES ('191', 'Misc', 'NetFront 3.4', 'Embedded devices', '-0', 'A', '2005-08-18 11:35:00');
INSERT INTO ajax VALUES ('192', 'Misc', 'Dillo 0.8', 'Embedded devices', '-0', 'X', '2005-08-19 11:35:00');
INSERT INTO ajax VALUES ('193', 'Misc', 'Links', 'Text only', '-0', 'X', '2005-08-20 11:35:00');
INSERT INTO ajax VALUES ('194', 'Misc', 'Lynx', 'Text only', '-0', 'X', '2005-08-21 11:35:00');
INSERT INTO ajax VALUES ('195', 'Misc', 'IE Mobile', 'Windows Mobile 6', '-0', 'C', '2005-08-22 11:35:00');
INSERT INTO ajax VALUES ('196', 'Misc', 'PSP browser', 'PSP', '-0', 'C', '2005-08-23 11:35:00');
INSERT INTO ajax VALUES ('197', 'Other browsers', 'All others', '-', '-0', 'U', '2005-08-24 11:35:00');
INSERT INTO ajax VALUES ('210', 'Gecko', 'Firefox 3.0', 'Win 2k+ / OSX.3+', '1.9', 'A', '2001-01-04 15:35:00');
INSERT INTO ajax VALUES ('211', 'Gecko', 'Camino 1.0', 'OSX.2+', '1.8', 'A', '2001-01-05 15:35:00');
INSERT INTO ajax VALUES ('212', 'Gecko', 'Camino 1.5', 'OSX.3+', '1.8', 'A', '2001-01-06 15:35:00');
INSERT INTO ajax VALUES ('213', 'Gecko', 'Netscape 7.2', 'Win 95+ / Mac OS 8.6-9.2', '1.7', 'A', '2005-11-17 15:35:00');
INSERT INTO ajax VALUES ('214', 'Gecko', 'Netscape Browser 8', 'Win 98SE+', '1.7', 'A', '2005-11-18 15:35:00');
INSERT INTO ajax VALUES ('215', 'Gecko', 'Netscape Navigator 9', 'Win 98+ / OSX.2+', '1.8', 'A', '2005-11-19 15:35:00');
INSERT INTO ajax VALUES ('216', 'Gecko', 'Mozilla 1.0', 'Win 95+ / OSX.1+', '1', 'A', '2005-11-20 15:35:00');
INSERT INTO ajax VALUES ('217', 'Gecko', 'Mozilla 1.1', 'Win 95+ / OSX.1+', '1.1', 'A', '2005-11-21 15:35:00');
INSERT INTO ajax VALUES ('218', 'Gecko', 'Mozilla 1.2', 'Win 95+ / OSX.1+', '1.2', 'A', '2005-11-22 15:35:00');
INSERT INTO ajax VALUES ('219', 'Gecko', 'Mozilla 1.3', 'Win 95+ / OSX.1+', '1.3', 'A', '2005-11-23 15:35:00');
INSERT INTO ajax VALUES ('260', 'Gecko', 'Mozilla 1.4', 'Win 95+ / OSX.1+', '1.4', 'A', '2005-04-14 15:35:00');
INSERT INTO ajax VALUES ('261', 'Gecko', 'Mozilla 1.5', 'Win 95+ / OSX.1+', '1.5', 'A', '2005-04-15 15:35:00');
INSERT INTO ajax VALUES ('262', 'Gecko', 'Mozilla 1.6', 'Win 95+ / OSX.1+', '1.6', 'A', '2005-04-16 15:35:00');
INSERT INTO ajax VALUES ('263', 'Gecko', 'Mozilla 1.7', 'Win 98+ / OSX.1+', '1.7', 'A', '2005-04-17 15:35:00');
INSERT INTO ajax VALUES ('264', 'Gecko', 'Mozilla 1.8', 'Win 98+ / OSX.1+', '1.8', 'A', '2005-04-18 15:35:00');
INSERT INTO ajax VALUES ('265', 'Gecko', 'Seamonkey 1.1', 'Win 98+ / OSX.2+', '1.8', 'A', '2005-04-19 15:35:00');
INSERT INTO ajax VALUES ('266', 'Gecko', 'Epiphany 2.20', 'Gnome', '1.8', 'A', '2005-04-20 15:35:00');
INSERT INTO ajax VALUES ('267', 'Webkit', 'Safari 1.2', 'OSX.3', '125.5', 'A', '2005-04-21 15:35:00');
INSERT INTO ajax VALUES ('268', 'Webkit', 'Safari 1.3', 'OSX.3', '312.8', 'A', '1999-05-14 15:35:00');
INSERT INTO ajax VALUES ('269', 'Webkit', 'Safari 2.0', 'OSX.4+', '419.3', 'A', '1999-05-15 15:35:00');
INSERT INTO ajax VALUES ('270', 'Webkit', 'Safari 3.0', 'OSX.4+', '522.1', 'A', '1999-05-16 15:35:00');
INSERT INTO ajax VALUES ('271', 'Webkit', 'OmniWeb 5.5', 'OSX.4+', '420', 'A', '1999-05-17 14:35:00');
INSERT INTO ajax VALUES ('272', 'Webkit', 'iPod Touch / iPhone', 'iPod', '420.1', 'A', '1999-05-18 14:35:00');
INSERT INTO ajax VALUES ('273', 'Webkit', 's60', 'S60', '413', 'A', '1999-05-19 14:35:00');
INSERT INTO ajax VALUES ('274', 'Presto', 'Opera 7.0', 'Win 95+ / OSX.1+', '-0', 'A', '1999-05-20 14:35:00');
INSERT INTO ajax VALUES ('275', 'Presto', 'Opera 7.5', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-21 14:35:00');
INSERT INTO ajax VALUES ('276', 'Presto', 'Opera 8.0', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-22 14:35:00');
INSERT INTO ajax VALUES ('277', 'Presto', 'Opera 8.5', 'Win 95+ / OSX.2+', '-0', 'A', '1999-05-23 14:35:00');
INSERT INTO ajax VALUES ('278', 'Presto', 'Opera 9.0', 'Win 95+ / OSX.3+', '-0', 'A', '2015-08-14 12:35:00');
INSERT INTO ajax VALUES ('279', 'Presto', 'Opera 9.2', 'Win 88+ / OSX.3+', '-0', 'A', '2015-08-15 12:35:00');
