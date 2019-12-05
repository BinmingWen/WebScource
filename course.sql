/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : course

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-12-05 17:58:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryId` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `postId` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `postDate` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `resourceId` int(20) NOT NULL AUTO_INCREMENT,
  `categoryId` int(20) DEFAULT NULL,
  `uploader` int(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `level` enum('') DEFAULT NULL,
  PRIMARY KEY (`resourceId`),
  KEY `PK_res_cat` (`categoryId`),
  KEY `pk_up_stu` (`uploader`),
  CONSTRAINT `PK_res_cat` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`),
  CONSTRAINT `pk_up_stu` FOREIGN KEY (`uploader`) REFERENCES `students` (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `studentId` int(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `class` int(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `majorOrEle` bit(1) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `selfDescn` varchar(255) NOT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', '123456', '170802', 'admin', '\0', '刘佳', '帅气侧漏');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(30) NOT NULL AUTO_INCREMENT,
  `userNo` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `isStu` int(10) DEFAULT NULL,
  `isAdmin` int(10) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '3117003556', 'Tony', '123456', '170802', '0', '0');
INSERT INTO `users` VALUES ('2', '3117003559', 'Admin', 'root', null, null, '1');
