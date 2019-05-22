/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : moyin

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-05-22 13:51:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chanpinclass
-- ----------------------------
DROP TABLE IF EXISTS `chanpinclass`;
CREATE TABLE `chanpinclass` (
  `ChanPinClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ChanPinClass` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ChanPinClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chanpinclass
-- ----------------------------
INSERT INTO `chanpinclass` VALUES ('1', '入耳式耳机');
INSERT INTO `chanpinclass` VALUES ('2', '头戴式耳机');
INSERT INTO `chanpinclass` VALUES ('3', '音响');
INSERT INTO `chanpinclass` VALUES ('4', '在');

-- ----------------------------
-- Table structure for chanpinmulubiao
-- ----------------------------
DROP TABLE IF EXISTS `chanpinmulubiao`;
CREATE TABLE `chanpinmulubiao` (
  `ChanPinID` int(11) NOT NULL AUTO_INCREMENT,
  `ChanPinName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ChanPinXiangQing` varchar(999) COLLATE utf8_bin DEFAULT NULL,
  `ChanPinClassID` int(11) DEFAULT NULL,
  `ChanPinJiaGe` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ShiFouXianKong` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ChanPinYanSe` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `JianRongPingTai` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ChanPinID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of chanpinmulubiao
-- ----------------------------
INSERT INTO `chanpinmulubiao` VALUES ('1', 'Studio', 'Beats studio 又名 Beats studio by dr.dre， [1]  中文也称录音师。录音师是beats\r\n推出的一款高素质的耳机。Beats Studio?头戴式耳机更轻盈、更美观，更坚固、更舒适，拥\r\n有精准的音质效果，自适应消噪功能、20小时续航能力的可充电锂电池以及RemoteTalk?无\r\n线通话等强大功能，呈现更为强劲的重塑后音色音效。\r\n录音师是beats推出的一款高素质的耳机，其利用先进的扬声器设计和动力隔离技术，使Beats\r\n能更好地利用功率能量，进一步提高低频的力量感。同时，即使面对在音速方面有极高要求的\r\nRock、Hip-Hop以及R&B，录音室 都能通过自身出色的结构，提供110dB的灵敏度，可以尽\r\n量将细节完整地表现出来。另外，特别设计的耳筒为更高水平的舒适度和听觉提供额外的空间，\r\n舒适透气的软垫能进一步减少出汗。', '1', '1499', '是（1.3米）', '黑色', 'iPod耳机');

-- ----------------------------
-- Table structure for guanliyuanbiao
-- ----------------------------
DROP TABLE IF EXISTS `guanliyuanbiao`;
CREATE TABLE `guanliyuanbiao` (
  `GuanLiYuanID` int(11) NOT NULL AUTO_INCREMENT,
  `GuanLiYuanUser` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `GuanLiYuanPwd` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`GuanLiYuanID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of guanliyuanbiao
-- ----------------------------
INSERT INTO `guanliyuanbiao` VALUES ('1', '张', '123');

-- ----------------------------
-- Table structure for jianjiebiao
-- ----------------------------
DROP TABLE IF EXISTS `jianjiebiao`;
CREATE TABLE `jianjiebiao` (
  `JianJieID` int(12) NOT NULL,
  `QiYeName` varchar(45) DEFAULT NULL,
  `QiYeFengMao` varchar(999) DEFAULT NULL,
  `ZuZhiGouJia` varchar(45) DEFAULT NULL,
  `JingYingFanWEi` varchar(999) DEFAULT NULL,
  `QiYeShiJi` varchar(999) DEFAULT NULL,
  `ZiZhiZhengShu` varchar(50) DEFAULT NULL,
  `YingXiaoWangLuo` varchar(999) DEFAULT NULL,
  `RenCaiZhaoPin` varchar(50) DEFAULT NULL,
  `WangZhanDiTu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`JianJieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jianjiebiao
-- ----------------------------
INSERT INTO `jianjiebiao` VALUES ('1', 'Apple Beats', 'Beats By Dr. Dre是一家美国声乐设备品牌，主要产品有耳机和扬声器，由说唱歌手Dr. Dre\r\n及环球唱片下属的Interscope唱片公司董事长Jimmy Iovine联合创建于2008年，独家授权由\r\n魔声（Monster Cable）制造和销售。2012年两公司宣布停止合作。作为营销策略的一部分，\r\n其耳机经常出现在电影、MV和其他媒体。', '无', '头戴式耳机\r\n\r\nStudio\r\nStudio Wireless\r\nPro\r\nSolo HD\r\nSolo2 Wireless [3] \r\nSolo2\r\nMixr\r\n入耳式耳机\r\n\r\nPowerBeats\r\nPowerBeats2wireless\r\ntour\r\nurbeats\r\nbeats x\r\n扬声器\r\n\r\nBeats Pill', 'Beats与惠普公司合作推出“Beats Audio”系列台式电脑和笔记本电脑。\r\n与克莱斯勒汽车公司合作推出的克莱斯勒300s型限量版车型。\r\n2011年8月，HTC策略联盟及斥资3.09亿美元收购Beats多数股权，收购后Beats仍将保持独立运作。\r\n2012年1月，Beats与魔声公司宣布将不再继续合作，现有的生产协议将持续到2012年底。\r\n2013年9月27日凯雷集团斥资5亿美元入股Beats Electronics，同时Beats将以2.65亿美元回购HTC所持其剩余股份24.84%股权。\r\n2014年5月28日，苹果公司花费了30亿美元完成对Beats的收购。', '无', '请前往 Apple Store 零售店、Apple Store 在线商店或下列任何授权经销商处，购买正品 \r\nBeats by Dr. Dre 产品\r\n\r\n授权经销商出售正品 Beats 产品。', '无', '无');

-- ----------------------------
-- Table structure for liuyanbanbiao
-- ----------------------------
DROP TABLE IF EXISTS `liuyanbanbiao`;
CREATE TABLE `liuyanbanbiao` (
  `LiuYanBanID` int(11) NOT NULL AUTO_INCREMENT,
  `LiuYanName` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LiuYanXinXi` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HuiFuZhuanTai` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LiuYanShiJian` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`LiuYanBanID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyanbanbiao
-- ----------------------------
INSERT INTO `liuyanbanbiao` VALUES ('1', '一楼', '无', '沙发', '未回复', null);

-- ----------------------------
-- Table structure for shejishibiao
-- ----------------------------
DROP TABLE IF EXISTS `shejishibiao`;
CREATE TABLE `shejishibiao` (
  `SheJiShiID` int(11) NOT NULL AUTO_INCREMENT,
  `SheJiShiName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`SheJiShiID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of shejishibiao
-- ----------------------------
INSERT INTO `shejishibiao` VALUES ('1', '杰克', '无');

-- ----------------------------
-- Table structure for xinwenbiao
-- ----------------------------
DROP TABLE IF EXISTS `xinwenbiao`;
CREATE TABLE `xinwenbiao` (
  `XinWenID` int(11) NOT NULL AUTO_INCREMENT,
  `XinWenShiJian` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `XinWenBiaoTi` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `XinWenNeiRong` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `XinWenClass` int(11) DEFAULT NULL,
  PRIMARY KEY (`XinWenID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xinwenbiao
-- ----------------------------
INSERT INTO `xinwenbiao` VALUES ('1', '2019/5/20', '表白520', '凡5月20日购买本公司产品都能领取一束玫瑰花', null);

-- ----------------------------
-- Table structure for xinwenclass
-- ----------------------------
DROP TABLE IF EXISTS `xinwenclass`;
CREATE TABLE `xinwenclass` (
  `XinWenClassID` int(11) NOT NULL AUTO_INCREMENT,
  `XinWenClass` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`XinWenClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xinwenclass
-- ----------------------------
INSERT INTO `xinwenclass` VALUES ('1', '新闻');
INSERT INTO `xinwenclass` VALUES ('2', '活动');
