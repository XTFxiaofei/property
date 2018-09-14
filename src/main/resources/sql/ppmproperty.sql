/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : ppmproperty

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-09-12 12:06:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `email` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `userName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '17328336863@163.com', '12345678', 'admin');

-- ----------------------------
-- Table structure for maintenance
-- ----------------------------
DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `repairId` int(11) NOT NULL COMMENT '该维修记录对应的报修单编号',
  `technicianId` int(11) NOT NULL COMMENT '维修人员的编号',
  `startTime` datetime NOT NULL COMMENT '维修开始的时间',
  PRIMARY KEY (`id`),
  KEY `idx_repairId` (`repairId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='维修记录表';

-- ----------------------------
-- Records of maintenance
-- ----------------------------
INSERT INTO `maintenance` VALUES ('1', '1', '123', '1970-01-01 08:00:02');
INSERT INTO `maintenance` VALUES ('2', '2', '123', '1970-01-01 08:00:02');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '报修单状态：0为被学生删除，1为未安排检修，2为已安排检修，3为待同意取消，\r\n  4为已同意取消，5为待验收，6为已验收，默认为被学生删除',
  `detail` varchar(10240) NOT NULL COMMENT '问题详情',
  `place` varchar(256) NOT NULL COMMENT '发生故障的物业的地点',
  `picMD5` varchar(256) DEFAULT NULL COMMENT '现场照片',
  `submitTime` datetime NOT NULL COMMENT '提交报修单的时间',
  `studentId` int(11) NOT NULL COMMENT '提交该报修单的学生的编号',
  PRIMARY KEY (`id`),
  KEY `idx_studentId` (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='报修单表';

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('1', '0', 'sdfsd', 'sdfewf', 'sdfew', '1970-01-01 08:00:02', '1');
INSERT INTO `repair` VALUES ('2', '0', 'wewgageawfgfa', 'sdfewf', 'sdfew', '1970-01-01 08:00:02', '1');
INSERT INTO `repair` VALUES ('3', '0', 'sdfsd', 'sdfewf', 'sdfew', '1970-01-01 08:00:02', '1');
INSERT INTO `repair` VALUES ('4', '0', '更新的结果', 'sdfewf', 'sdfew', '1970-01-01 08:00:02', '1');
INSERT INTO `repair` VALUES ('5', '0', 'sdfsd', 'sdfewf', 'sdfew', '1970-01-01 08:00:02', '1');
INSERT INTO `repair` VALUES ('6', '0', 'wewgageawfgfa', 'sdfewf', 'sdfew', '1970-01-01 08:00:02', '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `name` varchar(50) NOT NULL COMMENT '学生姓名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `sexual` int(11) DEFAULT '0' COMMENT '性别：0为男1为女，默认为男',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '邱永臣', '12345678', '0', '1182741213@qq.com', '234234234');
INSERT INTO `student` VALUES ('3', '邱永臣3', 'hsieofj', '0', '23rw@aof.com', '234234234');
INSERT INTO `student` VALUES ('7', '12345678@qq.com', '12345678', '0', '12345678@qq.com', '13800');

-- ----------------------------
-- Table structure for technician
-- ----------------------------
DROP TABLE IF EXISTS `technician`;
CREATE TABLE `technician` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='维修人员表';

-- ----------------------------
-- Records of technician
-- ----------------------------
INSERT INTO `technician` VALUES ('1', 'xiaofei');

-- ----------------------------
-- Table structure for urgentrepair
-- ----------------------------
DROP TABLE IF EXISTS `urgentrepair`;
CREATE TABLE `urgentrepair` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态：0为待查看，1为已查看，2为被学生取消，默认为待查看',
  `repairId` int(11) NOT NULL COMMENT '该催单对应的报修单编号',
  `studentId` int(11) NOT NULL COMMENT '发起该催单的学生的编号',
  `createTime` datetime NOT NULL COMMENT '催单的创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_studentId` (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='催单表';

-- ----------------------------
-- Records of urgentrepair
-- ----------------------------
INSERT INTO `urgentrepair` VALUES ('1', '0', '2', '2', '1970-01-01 08:00:02');
INSERT INTO `urgentrepair` VALUES ('2', '0', '1', '1', '1970-01-01 08:00:02');
INSERT INTO `urgentrepair` VALUES ('3', '0', '2', '2', '1970-01-01 08:00:02');
INSERT INTO `urgentrepair` VALUES ('5', '0', '1', '1', '1970-01-01 08:00:02');
