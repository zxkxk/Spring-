/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : recruitdb

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 18/10/2021 22:31:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `aid` int(20) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tele` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cvurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (17, '马化腾', '15215648521', '博士', 'JAVA高级开发 ', '简历.docx', '已邀约(待面试)');
INSERT INTO `apply` VALUES (18, 'C罗', '15245697841', '硕士', '运维工程师 ', '简历.docx', '未邀约');
INSERT INTO `apply` VALUES (19, '克罗斯', '18785264512', '本科', '技术服务经理 ', '简历.docx', '通过');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tele` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (7, '克罗斯', '技术服务经理 ', '18785264512');

-- ----------------------------
-- Table structure for recruitinfo
-- ----------------------------
DROP TABLE IF EXISTS `recruitinfo`;
CREATE TABLE `recruitinfo`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  `request` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recruitinfo
-- ----------------------------
INSERT INTO `recruitinfo` VALUES (2, '周小康', 'JAVA高级开发', 3, '1、具有JAVA软件开发项目经验2年以上，具有银行业务或同业业务系统开发经验者优先。\r\n2、 具有良好的开发习惯及沟通能力，能独立的进行概要设计、实施开发测试工作，编写相关技术文档；');
INSERT INTO `recruitinfo` VALUES (7, '梅西', 'Java高级工程师', 2, '1、具有JAVA软件开发项目经验2年以上，具有银行业务或同业业务系统开发经验者优先。\r\n2、 具有良好的开发习惯及沟通能力，能独立的进行概要设计、实施开发测试工作，编写相关技术文档；');
INSERT INTO `recruitinfo` VALUES (8, '周小康', 'C++高级工程师', 5, '1、有1年以上的C/C++开发设计经验；有1个以上的项目经验；\r\n2、熟悉C/C++语言；熟悉开发过程中常见的问题及对应措施。\r\n3、熟悉C++在Linux环境下的编译');
INSERT INTO `recruitinfo` VALUES (9, '小梅西', '运维工程师', 3, '1、至少熟悉java，python一种语言；\r\n2、熟练掌握linux操作系统知识，能够编写shell脚本；\r\n3、对常用网络协议（ssh，http，ntp，snmp等），网络故障分析有所了解；');
INSERT INTO `recruitinfo` VALUES (10, '内马尔', '技术服务经理', 5, '1. 作为阿里云智能在客户侧的技术服务界面，全流程深入了解大型企业业务场景，与企业的IT、应用架构、人员合作，针对客户现有IT架构进行梳理与分析\r\n2. 基于阿里云的产品线、技术体系，帮助企业级客户制定IT架构和业务流程，包括定制的最佳实践、异常处理机制和问题应急预案等。');

SET FOREIGN_KEY_CHECKS = 1;
