/*
 Navicat Premium Data Transfer

 Source Server         : Mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 26/08/2018 11:33:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_nodeblog_aboutus
-- ----------------------------
DROP TABLE IF EXISTS `tb_nodeblog_aboutus`;
CREATE TABLE `tb_nodeblog_aboutus`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic_src` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `href` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_nodeblog_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_nodeblog_banner`;
CREATE TABLE `tb_nodeblog_banner`  (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大标题',
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述文字',
  `href` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '点击链接',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '焦点图表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_nodeblog_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_nodeblog_blog`;
CREATE TABLE `tb_nodeblog_blog`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic_src` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic_big_src` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `summary` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_time` int(11) NOT NULL,
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n_view` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博文表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_nodeblog_contact
-- ----------------------------
DROP TABLE IF EXISTS `tb_nodeblog_contact`;
CREATE TABLE `tb_nodeblog_contact`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `street` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weibo` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wx` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_nodeblog_custom_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `tb_nodeblog_custom_evaluation`;
CREATE TABLE `tb_nodeblog_custom_evaluation`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价详情',
  `src` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户头像',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户评价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_nodeblog_intro
-- ----------------------------
DROP TABLE IF EXISTS `tb_nodeblog_intro`;
CREATE TABLE `tb_nodeblog_intro`  (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大标题',
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述文字',
  `href` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '点击链接',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品介绍表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_nodeblog_msg
-- ----------------------------
DROP TABLE IF EXISTS `tb_nodeblog_msg`;
CREATE TABLE `tb_nodeblog_msg`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发送信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_nodeblog_news
-- ----------------------------
DROP TABLE IF EXISTS `tb_nodeblog_news`;
CREATE TABLE `tb_nodeblog_news`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `summary` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `ico_src` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品小图标',
  `big_pic_src` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详情大图',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
