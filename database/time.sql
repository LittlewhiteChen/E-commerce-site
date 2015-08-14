/*
MySQL Data Transfer
Source Host: localhost
Source Database: time
Target Host: localhost
Target Database: time
Date: 2015/6/30 22:06:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for search
-- ----------------------------
CREATE TABLE `search` (
  `id` int(12) unsigned NOT NULL,
  `number` char(255) NOT NULL,
  `price` float(255,0) DEFAULT NULL,
  `name` char(255) NOT NULL COMMENT '用于搜索提取数据',
  `picture` char(255) NOT NULL,
  `decription` char(255) DEFAULT NULL,
  `made` char(255) DEFAULT NULL,
  PRIMARY KEY (`number`,`picture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sec-class
-- ----------------------------
CREATE TABLE `sec-class` (
  `top-ID` varchar(7) NOT NULL,
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '分类楼层号',
  `name` char(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
CREATE TABLE `shopcar` (
  `logname` char(255) NOT NULL COMMENT '用于存储用户的商品，并进行计算',
  `id` int(12) NOT NULL,
  `name` char(255) NOT NULL COMMENT '储存用户的购物车商品，计算价格',
  `description` char(255) NOT NULL,
  `sum` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for top-class
-- ----------------------------
CREATE TABLE `top-class` (
  `ID` varchar(7) NOT NULL,
  `Name` char(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `llogname` char(255) NOT NULL,
  `password` char(255) NOT NULL,
  `phone` char(255) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `realname` char(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '注册和登陆公用一个页面，采集注册信息，并且进行验证',
  PRIMARY KEY (`llogname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `search` VALUES ('2', 'a002', '12', 'HTML基础', 'image/pic1.png', '这是一本讲述前端基础的入门书籍，帮助一些零基础的童鞋，学习基础的HTML部分', '人民邮电出版社');
INSERT INTO `search` VALUES ('3', 'b003', '89', 'CSS基础', 'image/pic2.jpg', 'CSS基础是根据最新的W3C规范写成的指导没有CSS基础的设计人员', '人民邮电出版社');
INSERT INTO `sec-class` VALUES ('A类', '1', 'Web标准');
INSERT INTO `sec-class` VALUES ('A类', '2', 'HTML基础');
INSERT INTO `sec-class` VALUES ('A类', '3', 'CSS基础');
INSERT INTO `shopcar` VALUES ('kay', '1', 'Web标准', 'Web前端标准是根据W3C官方制定的指导Web开发设计人员来开发符合Web规范的页面。', null);
INSERT INTO `top-class` VALUES ('A类', '前端科技');
INSERT INTO `top-class` VALUES ('B类', '文学艺术');
INSERT INTO `top-class` VALUES ('C类', '自然科学');
INSERT INTO `top-class` VALUES ('D类', '影视音乐');
INSERT INTO `user` VALUES ('kay', '123456', '15671592309', '武汉科技大学黄家湖校区南十一105', '陈凯');
INSERT INTO `user` VALUES ('小明', '123789', '15671592301', '武汉大学信息学部', '张明');
