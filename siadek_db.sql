/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : siadek_db

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/06/2020 00:09:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aauth_group_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_group_to_group`;
CREATE TABLE `aauth_group_to_group` (
  `group_id` int(11) unsigned NOT NULL,
  `subgroup_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`subgroup_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for aauth_groups
-- ----------------------------
DROP TABLE IF EXISTS `aauth_groups`;
CREATE TABLE `aauth_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `definition` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of aauth_groups
-- ----------------------------
BEGIN;
INSERT INTO `aauth_groups` VALUES (1, 'Admin', 'Superadmin Group');
INSERT INTO `aauth_groups` VALUES (2, 'Admin wilayah', 'ADMIN WILAYAH');
INSERT INTO `aauth_groups` VALUES (3, 'User', 'User Access Group');
COMMIT;

-- ----------------------------
-- Table structure for aauth_login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `aauth_login_attempts`;
CREATE TABLE `aauth_login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(39) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `login_attempts` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=776 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of aauth_login_attempts
-- ----------------------------
BEGIN;
INSERT INTO `aauth_login_attempts` VALUES (127, '::1', '2019-08-11 22:36:54', 3);
INSERT INTO `aauth_login_attempts` VALUES (129, '::1', '2019-10-08 19:56:50', 1);
INSERT INTO `aauth_login_attempts` VALUES (138, '::1', '2019-11-01 00:18:54', 1);
INSERT INTO `aauth_login_attempts` VALUES (140, '::1', '2019-11-01 00:40:46', 3);
INSERT INTO `aauth_login_attempts` VALUES (151, '182.1.209.86', '2019-11-05 22:26:24', 2);
INSERT INTO `aauth_login_attempts` VALUES (152, '173.3.2.184', '2019-11-05 22:44:05', 3);
INSERT INTO `aauth_login_attempts` VALUES (156, '182.1.195.67', '2019-11-09 11:34:33', 1);
INSERT INTO `aauth_login_attempts` VALUES (157, '182.1.209.43', '2019-11-09 11:35:58', 1);
INSERT INTO `aauth_login_attempts` VALUES (158, '182.1.195.85', '2019-11-09 11:37:50', 1);
INSERT INTO `aauth_login_attempts` VALUES (159, '182.1.192.91', '2019-11-09 11:37:59', 1);
INSERT INTO `aauth_login_attempts` VALUES (160, '182.1.209.43', '2019-11-09 11:41:59', 1);
INSERT INTO `aauth_login_attempts` VALUES (171, '173.3.1.49', '2019-11-14 07:17:58', 1);
INSERT INTO `aauth_login_attempts` VALUES (172, '180.244.34.48', '2019-11-14 07:29:30', 2);
INSERT INTO `aauth_login_attempts` VALUES (173, '114.125.185.137', '2019-11-14 07:29:52', 1);
INSERT INTO `aauth_login_attempts` VALUES (174, '202.67.36.219', '2019-11-14 07:37:58', 4);
INSERT INTO `aauth_login_attempts` VALUES (177, '114.125.169.240', '2019-11-14 08:04:15', 2);
INSERT INTO `aauth_login_attempts` VALUES (178, '114.125.169.200', '2019-11-14 08:02:05', 1);
INSERT INTO `aauth_login_attempts` VALUES (180, '114.125.169.152', '2019-11-14 08:03:13', 1);
INSERT INTO `aauth_login_attempts` VALUES (182, '180.249.172.111', '2019-11-14 09:05:48', 13);
INSERT INTO `aauth_login_attempts` VALUES (183, '110.136.241.182', '2019-11-14 10:51:49', 1);
INSERT INTO `aauth_login_attempts` VALUES (185, '114.124.213.191', '2019-11-14 22:04:27', 1);
INSERT INTO `aauth_login_attempts` VALUES (186, '114.124.244.47', '2019-11-14 22:09:47', 3);
INSERT INTO `aauth_login_attempts` VALUES (191, '114.125.167.63', '2019-11-15 03:42:01', 4);
INSERT INTO `aauth_login_attempts` VALUES (192, '172.2.30.150', '2019-11-15 03:52:52', 3);
INSERT INTO `aauth_login_attempts` VALUES (193, '114.125.184.211', '2019-11-15 03:54:11', 1);
INSERT INTO `aauth_login_attempts` VALUES (194, '114.125.184.12', '2019-11-15 03:54:29', 2);
INSERT INTO `aauth_login_attempts` VALUES (200, '182.1.199.255', '2019-11-15 23:15:11', 1);
INSERT INTO `aauth_login_attempts` VALUES (212, '114.125.207.59', '2019-11-16 12:35:39', 5);
INSERT INTO `aauth_login_attempts` VALUES (220, '36.75.142.94', '2019-11-21 10:19:29', 1);
INSERT INTO `aauth_login_attempts` VALUES (226, '36.79.135.88', '2019-11-27 03:13:16', 3);
INSERT INTO `aauth_login_attempts` VALUES (231, '174.3.2.202', '2019-11-28 22:30:04', 4);
INSERT INTO `aauth_login_attempts` VALUES (235, '172.2.22.200', '2019-11-29 01:04:29', 7);
INSERT INTO `aauth_login_attempts` VALUES (242, '173.3.0.33', '2019-12-10 02:14:15', 4);
INSERT INTO `aauth_login_attempts` VALUES (243, '173.3.0.33', '2019-12-10 02:41:48', 1);
INSERT INTO `aauth_login_attempts` VALUES (244, '36.75.140.223', '2019-12-12 10:08:54', 5);
INSERT INTO `aauth_login_attempts` VALUES (245, '168.235.205.140', '2019-12-12 18:18:48', 1);
INSERT INTO `aauth_login_attempts` VALUES (248, '36.83.103.116', '2019-12-13 06:40:06', 2);
INSERT INTO `aauth_login_attempts` VALUES (255, '180.245.174.171', '2019-12-13 08:02:35', 2);
INSERT INTO `aauth_login_attempts` VALUES (258, '110.136.243.179', '2019-12-13 08:42:10', 1);
INSERT INTO `aauth_login_attempts` VALUES (267, '182.1.177.113', '2019-12-13 09:46:34', 1);
INSERT INTO `aauth_login_attempts` VALUES (268, '182.1.178.224', '2019-12-13 09:46:53', 1);
INSERT INTO `aauth_login_attempts` VALUES (276, '182.1.193.4', '2019-12-13 18:00:11', 1);
INSERT INTO `aauth_login_attempts` VALUES (282, '103.3.221.96', '2019-12-16 06:04:27', 2);
INSERT INTO `aauth_login_attempts` VALUES (283, '114.79.38.74', '2019-12-16 15:10:30', 18);
INSERT INTO `aauth_login_attempts` VALUES (292, '180.249.0.230', '2019-12-21 02:05:48', 1);
INSERT INTO `aauth_login_attempts` VALUES (293, '180.249.0.230', '2019-12-21 02:19:29', 11);
INSERT INTO `aauth_login_attempts` VALUES (294, '182.1.162.118', '2019-12-21 22:20:19', 1);
INSERT INTO `aauth_login_attempts` VALUES (296, '36.80.13.240', '2019-12-24 00:01:58', 1);
INSERT INTO `aauth_login_attempts` VALUES (297, '173.3.0.136', '2019-12-24 00:19:59', 17);
INSERT INTO `aauth_login_attempts` VALUES (298, '120.188.79.4', '2019-12-24 00:20:39', 4);
INSERT INTO `aauth_login_attempts` VALUES (301, '173.3.0.136', '2019-12-24 06:01:25', 1);
INSERT INTO `aauth_login_attempts` VALUES (302, '114.125.199.64', '2019-12-25 06:30:21', 3);
INSERT INTO `aauth_login_attempts` VALUES (304, '180.254.189.234', '2019-12-27 00:29:40', 1);
INSERT INTO `aauth_login_attempts` VALUES (305, '180.254.189.234', '2019-12-27 00:40:09', 3);
INSERT INTO `aauth_login_attempts` VALUES (307, '120.188.82.251', '2019-12-27 02:57:13', 2);
INSERT INTO `aauth_login_attempts` VALUES (321, '114.125.186.181', '2019-12-27 07:42:06', 1);
INSERT INTO `aauth_login_attempts` VALUES (322, '114.125.165.170', '2019-12-27 07:44:06', 2);
INSERT INTO `aauth_login_attempts` VALUES (323, '114.125.187.180', '2019-12-27 07:46:14', 3);
INSERT INTO `aauth_login_attempts` VALUES (330, '114.4.220.230', '2019-12-27 08:08:31', 30);
INSERT INTO `aauth_login_attempts` VALUES (333, '36.79.132.26', '2019-12-27 08:01:32', 1);
INSERT INTO `aauth_login_attempts` VALUES (334, '180.249.1.165', '2019-12-27 08:01:40', 1);
INSERT INTO `aauth_login_attempts` VALUES (343, '182.1.211.44', '2019-12-27 08:06:38', 2);
INSERT INTO `aauth_login_attempts` VALUES (346, '182.1.213.214', '2019-12-27 08:17:39', 2);
INSERT INTO `aauth_login_attempts` VALUES (350, '182.1.198.144', '2019-12-27 08:18:16', 1);
INSERT INTO `aauth_login_attempts` VALUES (351, '173.3.0.94', '2019-12-27 08:21:37', 3);
INSERT INTO `aauth_login_attempts` VALUES (356, '114.79.38.11', '2019-12-27 08:26:08', 3);
INSERT INTO `aauth_login_attempts` VALUES (357, '114.125.205.40', '2019-12-27 08:24:00', 1);
INSERT INTO `aauth_login_attempts` VALUES (359, '114.125.220.109', '2019-12-27 08:25:02', 1);
INSERT INTO `aauth_login_attempts` VALUES (361, '180.249.1.165', '2019-12-27 08:30:22', 3);
INSERT INTO `aauth_login_attempts` VALUES (368, '114.125.164.4', '2019-12-27 08:37:07', 1);
INSERT INTO `aauth_login_attempts` VALUES (369, '114.125.223.18', '2019-12-27 08:38:52', 5);
INSERT INTO `aauth_login_attempts` VALUES (373, '173.3.2.155', '2019-12-27 08:47:49', 8);
INSERT INTO `aauth_login_attempts` VALUES (377, '114.125.223.231', '2019-12-27 09:10:55', 1);
INSERT INTO `aauth_login_attempts` VALUES (379, '173.3.2.124', '2019-12-27 09:21:41', 1);
INSERT INTO `aauth_login_attempts` VALUES (388, '182.1.198.117', '2019-12-27 10:05:14', 4);
INSERT INTO `aauth_login_attempts` VALUES (389, '114.125.168.253', '2019-12-27 10:16:50', 1);
INSERT INTO `aauth_login_attempts` VALUES (399, '182.1.179.32', '2019-12-27 16:18:56', 1);
INSERT INTO `aauth_login_attempts` VALUES (408, '173.3.2.108', '2020-01-01 06:57:17', 3);
INSERT INTO `aauth_login_attempts` VALUES (409, '114.125.204.161', '2020-01-02 13:36:06', 1);
INSERT INTO `aauth_login_attempts` VALUES (424, '36.83.102.102', '2020-01-03 05:20:29', 2);
INSERT INTO `aauth_login_attempts` VALUES (425, '36.83.102.102', '2020-01-03 05:28:16', 1);
INSERT INTO `aauth_login_attempts` VALUES (426, '114.5.243.110', '2020-01-03 05:42:43', 7);
INSERT INTO `aauth_login_attempts` VALUES (427, '174.3.2.202', '2020-01-03 05:44:35', 2);
INSERT INTO `aauth_login_attempts` VALUES (438, '114.125.206.53', '2020-01-03 07:30:35', 1);
INSERT INTO `aauth_login_attempts` VALUES (440, '182.1.161.70', '2020-01-03 09:05:50', 4);
INSERT INTO `aauth_login_attempts` VALUES (442, '172.2.15.3', '2020-01-14 22:13:31', 1);
INSERT INTO `aauth_login_attempts` VALUES (457, '114.125.221.217', '2020-01-15 01:39:31', 3);
INSERT INTO `aauth_login_attempts` VALUES (459, '114.125.223.97', '2020-01-15 01:40:10', 1);
INSERT INTO `aauth_login_attempts` VALUES (463, '182.1.209.80', '2020-01-15 02:04:48', 1);
INSERT INTO `aauth_login_attempts` VALUES (464, '182.1.195.209', '2020-01-15 02:05:40', 1);
INSERT INTO `aauth_login_attempts` VALUES (466, '174.3.2.202', '2020-01-15 02:44:02', 1);
INSERT INTO `aauth_login_attempts` VALUES (470, '182.1.208.244', '2020-01-15 04:33:23', 1);
INSERT INTO `aauth_login_attempts` VALUES (472, '182.1.192.101', '2020-01-15 04:40:24', 1);
INSERT INTO `aauth_login_attempts` VALUES (473, '182.1.208.79', '2020-01-15 04:41:45', 1);
INSERT INTO `aauth_login_attempts` VALUES (474, '114.125.199.37', '2020-01-15 04:41:50', 1);
INSERT INTO `aauth_login_attempts` VALUES (477, '182.1.176.179', '2020-01-15 04:55:47', 1);
INSERT INTO `aauth_login_attempts` VALUES (480, '182.1.163.248', '2020-01-15 04:58:29', 1);
INSERT INTO `aauth_login_attempts` VALUES (487, '182.1.178.100', '2020-01-15 05:45:26', 1);
INSERT INTO `aauth_login_attempts` VALUES (488, '182.1.163.95', '2020-01-15 05:48:12', 4);
INSERT INTO `aauth_login_attempts` VALUES (498, '182.1.209.222', '2020-01-15 06:36:59', 2);
INSERT INTO `aauth_login_attempts` VALUES (505, '180.254.186.45', '2020-01-15 07:08:28', 1);
INSERT INTO `aauth_login_attempts` VALUES (515, '202.67.36.10', '2020-01-15 07:45:53', 2);
INSERT INTO `aauth_login_attempts` VALUES (524, '182.1.192.89', '2020-01-15 08:09:14', 1);
INSERT INTO `aauth_login_attempts` VALUES (532, '114.125.184.120', '2020-01-14 16:39:38', 1);
INSERT INTO `aauth_login_attempts` VALUES (534, '36.83.108.25', '2020-01-15 09:11:29', 2);
INSERT INTO `aauth_login_attempts` VALUES (541, '36.75.143.234', '2020-01-15 10:40:00', 1);
INSERT INTO `aauth_login_attempts` VALUES (553, '180.254.191.186', '2020-01-15 12:37:04', 1);
INSERT INTO `aauth_login_attempts` VALUES (574, '173.3.1.114', '2020-01-15 22:57:21', 5);
INSERT INTO `aauth_login_attempts` VALUES (595, '114.125.164.26', '2020-01-16 01:40:18', 1);
INSERT INTO `aauth_login_attempts` VALUES (596, '114.125.164.34', '2020-01-16 01:40:43', 1);
INSERT INTO `aauth_login_attempts` VALUES (597, '114.125.164.21', '2020-01-16 01:40:53', 1);
INSERT INTO `aauth_login_attempts` VALUES (598, '114.125.164.32', '2020-01-16 01:41:06', 1);
INSERT INTO `aauth_login_attempts` VALUES (599, '114.125.164.25', '2020-01-16 01:41:40', 1);
INSERT INTO `aauth_login_attempts` VALUES (710, '173.3.1.114', '2020-01-17 00:23:53', 5);
INSERT INTO `aauth_login_attempts` VALUES (742, '182.1.211.129', '2020-01-17 03:30:44', 1);
INSERT INTO `aauth_login_attempts` VALUES (753, '114.5.102.225', '2020-01-17 04:59:02', 5);
INSERT INTO `aauth_login_attempts` VALUES (755, '114.5.102.225', '2020-01-17 05:05:12', 2);
INSERT INTO `aauth_login_attempts` VALUES (768, '114.125.215.90', '2020-01-17 06:38:11', 1);
INSERT INTO `aauth_login_attempts` VALUES (769, '114.125.199.147', '2020-01-17 06:38:39', 1);
INSERT INTO `aauth_login_attempts` VALUES (773, '114.79.38.137', '2020-01-17 07:51:51', 1);
INSERT INTO `aauth_login_attempts` VALUES (775, '::1', '2020-01-20 13:03:20', 1);
COMMIT;

-- ----------------------------
-- Table structure for aauth_perm_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perm_to_group`;
CREATE TABLE `aauth_perm_to_group` (
  `perm_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of aauth_perm_to_group
-- ----------------------------
BEGIN;
INSERT INTO `aauth_perm_to_group` VALUES (239, 0);
INSERT INTO `aauth_perm_to_group` VALUES (99, 1);
INSERT INTO `aauth_perm_to_group` VALUES (120, 1);
INSERT INTO `aauth_perm_to_group` VALUES (121, 1);
INSERT INTO `aauth_perm_to_group` VALUES (122, 1);
INSERT INTO `aauth_perm_to_group` VALUES (553, 1);
INSERT INTO `aauth_perm_to_group` VALUES (561, 1);
INSERT INTO `aauth_perm_to_group` VALUES (567, 1);
INSERT INTO `aauth_perm_to_group` VALUES (598, 1);
INSERT INTO `aauth_perm_to_group` VALUES (604, 1);
INSERT INTO `aauth_perm_to_group` VALUES (615, 1);
INSERT INTO `aauth_perm_to_group` VALUES (616, 1);
INSERT INTO `aauth_perm_to_group` VALUES (622, 1);
INSERT INTO `aauth_perm_to_group` VALUES (633, 1);
INSERT INTO `aauth_perm_to_group` VALUES (644, 1);
INSERT INTO `aauth_perm_to_group` VALUES (650, 1);
INSERT INTO `aauth_perm_to_group` VALUES (656, 1);
INSERT INTO `aauth_perm_to_group` VALUES (657, 1);
INSERT INTO `aauth_perm_to_group` VALUES (658, 1);
INSERT INTO `aauth_perm_to_group` VALUES (659, 1);
INSERT INTO `aauth_perm_to_group` VALUES (660, 1);
INSERT INTO `aauth_perm_to_group` VALUES (85, 1);
INSERT INTO `aauth_perm_to_group` VALUES (1, 1);
INSERT INTO `aauth_perm_to_group` VALUES (661, 1);
INSERT INTO `aauth_perm_to_group` VALUES (713, 1);
INSERT INTO `aauth_perm_to_group` VALUES (719, 1);
INSERT INTO `aauth_perm_to_group` VALUES (743, 1);
INSERT INTO `aauth_perm_to_group` VALUES (749, 1);
INSERT INTO `aauth_perm_to_group` VALUES (753, 1);
INSERT INTO `aauth_perm_to_group` VALUES (743, 1);
INSERT INTO `aauth_perm_to_group` VALUES (120, 4);
INSERT INTO `aauth_perm_to_group` VALUES (121, 4);
INSERT INTO `aauth_perm_to_group` VALUES (122, 4);
INSERT INTO `aauth_perm_to_group` VALUES (553, 4);
INSERT INTO `aauth_perm_to_group` VALUES (561, 4);
INSERT INTO `aauth_perm_to_group` VALUES (567, 4);
INSERT INTO `aauth_perm_to_group` VALUES (598, 4);
INSERT INTO `aauth_perm_to_group` VALUES (604, 4);
INSERT INTO `aauth_perm_to_group` VALUES (615, 4);
INSERT INTO `aauth_perm_to_group` VALUES (616, 4);
INSERT INTO `aauth_perm_to_group` VALUES (622, 4);
INSERT INTO `aauth_perm_to_group` VALUES (633, 4);
INSERT INTO `aauth_perm_to_group` VALUES (644, 4);
INSERT INTO `aauth_perm_to_group` VALUES (650, 4);
INSERT INTO `aauth_perm_to_group` VALUES (656, 4);
INSERT INTO `aauth_perm_to_group` VALUES (709, 4);
INSERT INTO `aauth_perm_to_group` VALUES (728, 4);
INSERT INTO `aauth_perm_to_group` VALUES (732, 4);
INSERT INTO `aauth_perm_to_group` VALUES (743, 4);
INSERT INTO `aauth_perm_to_group` VALUES (749, 4);
INSERT INTO `aauth_perm_to_group` VALUES (753, 4);
INSERT INTO `aauth_perm_to_group` VALUES (20, 4);
INSERT INTO `aauth_perm_to_group` VALUES (21, 4);
INSERT INTO `aauth_perm_to_group` VALUES (22, 4);
INSERT INTO `aauth_perm_to_group` VALUES (537, 4);
INSERT INTO `aauth_perm_to_group` VALUES (538, 4);
INSERT INTO `aauth_perm_to_group` VALUES (540, 4);
INSERT INTO `aauth_perm_to_group` VALUES (556, 4);
INSERT INTO `aauth_perm_to_group` VALUES (557, 4);
INSERT INTO `aauth_perm_to_group` VALUES (559, 4);
INSERT INTO `aauth_perm_to_group` VALUES (599, 4);
INSERT INTO `aauth_perm_to_group` VALUES (600, 4);
INSERT INTO `aauth_perm_to_group` VALUES (601, 4);
INSERT INTO `aauth_perm_to_group` VALUES (602, 4);
INSERT INTO `aauth_perm_to_group` VALUES (603, 4);
INSERT INTO `aauth_perm_to_group` VALUES (605, 4);
INSERT INTO `aauth_perm_to_group` VALUES (606, 4);
INSERT INTO `aauth_perm_to_group` VALUES (607, 4);
INSERT INTO `aauth_perm_to_group` VALUES (608, 4);
INSERT INTO `aauth_perm_to_group` VALUES (609, 4);
INSERT INTO `aauth_perm_to_group` VALUES (610, 4);
INSERT INTO `aauth_perm_to_group` VALUES (611, 4);
INSERT INTO `aauth_perm_to_group` VALUES (612, 4);
INSERT INTO `aauth_perm_to_group` VALUES (613, 4);
INSERT INTO `aauth_perm_to_group` VALUES (614, 4);
INSERT INTO `aauth_perm_to_group` VALUES (623, 4);
INSERT INTO `aauth_perm_to_group` VALUES (624, 4);
INSERT INTO `aauth_perm_to_group` VALUES (625, 4);
INSERT INTO `aauth_perm_to_group` VALUES (626, 4);
INSERT INTO `aauth_perm_to_group` VALUES (627, 4);
INSERT INTO `aauth_perm_to_group` VALUES (628, 4);
INSERT INTO `aauth_perm_to_group` VALUES (629, 4);
INSERT INTO `aauth_perm_to_group` VALUES (630, 4);
INSERT INTO `aauth_perm_to_group` VALUES (631, 4);
INSERT INTO `aauth_perm_to_group` VALUES (632, 4);
INSERT INTO `aauth_perm_to_group` VALUES (639, 4);
INSERT INTO `aauth_perm_to_group` VALUES (640, 4);
INSERT INTO `aauth_perm_to_group` VALUES (641, 4);
INSERT INTO `aauth_perm_to_group` VALUES (642, 4);
INSERT INTO `aauth_perm_to_group` VALUES (643, 4);
INSERT INTO `aauth_perm_to_group` VALUES (645, 4);
INSERT INTO `aauth_perm_to_group` VALUES (646, 4);
INSERT INTO `aauth_perm_to_group` VALUES (647, 4);
INSERT INTO `aauth_perm_to_group` VALUES (648, 4);
INSERT INTO `aauth_perm_to_group` VALUES (649, 4);
INSERT INTO `aauth_perm_to_group` VALUES (651, 4);
INSERT INTO `aauth_perm_to_group` VALUES (652, 4);
INSERT INTO `aauth_perm_to_group` VALUES (653, 4);
INSERT INTO `aauth_perm_to_group` VALUES (654, 4);
INSERT INTO `aauth_perm_to_group` VALUES (655, 4);
INSERT INTO `aauth_perm_to_group` VALUES (706, 4);
INSERT INTO `aauth_perm_to_group` VALUES (708, 4);
INSERT INTO `aauth_perm_to_group` VALUES (710, 4);
INSERT INTO `aauth_perm_to_group` VALUES (712, 4);
INSERT INTO `aauth_perm_to_group` VALUES (725, 4);
INSERT INTO `aauth_perm_to_group` VALUES (727, 4);
INSERT INTO `aauth_perm_to_group` VALUES (729, 4);
INSERT INTO `aauth_perm_to_group` VALUES (731, 4);
INSERT INTO `aauth_perm_to_group` VALUES (738, 4);
INSERT INTO `aauth_perm_to_group` VALUES (739, 4);
INSERT INTO `aauth_perm_to_group` VALUES (740, 4);
INSERT INTO `aauth_perm_to_group` VALUES (741, 4);
INSERT INTO `aauth_perm_to_group` VALUES (742, 4);
INSERT INTO `aauth_perm_to_group` VALUES (744, 4);
INSERT INTO `aauth_perm_to_group` VALUES (745, 4);
INSERT INTO `aauth_perm_to_group` VALUES (746, 4);
INSERT INTO `aauth_perm_to_group` VALUES (747, 4);
INSERT INTO `aauth_perm_to_group` VALUES (748, 4);
INSERT INTO `aauth_perm_to_group` VALUES (750, 4);
INSERT INTO `aauth_perm_to_group` VALUES (751, 4);
INSERT INTO `aauth_perm_to_group` VALUES (752, 4);
INSERT INTO `aauth_perm_to_group` VALUES (604, 3);
INSERT INTO `aauth_perm_to_group` VALUES (709, 3);
INSERT INTO `aauth_perm_to_group` VALUES (728, 3);
INSERT INTO `aauth_perm_to_group` VALUES (732, 3);
INSERT INTO `aauth_perm_to_group` VALUES (743, 3);
INSERT INTO `aauth_perm_to_group` VALUES (20, 3);
INSERT INTO `aauth_perm_to_group` VALUES (21, 3);
INSERT INTO `aauth_perm_to_group` VALUES (22, 3);
INSERT INTO `aauth_perm_to_group` VALUES (609, 3);
INSERT INTO `aauth_perm_to_group` VALUES (614, 3);
INSERT INTO `aauth_perm_to_group` VALUES (625, 3);
INSERT INTO `aauth_perm_to_group` VALUES (627, 3);
INSERT INTO `aauth_perm_to_group` VALUES (632, 3);
INSERT INTO `aauth_perm_to_group` VALUES (710, 3);
INSERT INTO `aauth_perm_to_group` VALUES (712, 3);
INSERT INTO `aauth_perm_to_group` VALUES (725, 3);
INSERT INTO `aauth_perm_to_group` VALUES (727, 3);
INSERT INTO `aauth_perm_to_group` VALUES (738, 3);
INSERT INTO `aauth_perm_to_group` VALUES (739, 3);
INSERT INTO `aauth_perm_to_group` VALUES (740, 3);
INSERT INTO `aauth_perm_to_group` VALUES (741, 3);
INSERT INTO `aauth_perm_to_group` VALUES (742, 3);
INSERT INTO `aauth_perm_to_group` VALUES (750, 3);
INSERT INTO `aauth_perm_to_group` VALUES (752, 3);
INSERT INTO `aauth_perm_to_group` VALUES (120, 2);
INSERT INTO `aauth_perm_to_group` VALUES (121, 2);
INSERT INTO `aauth_perm_to_group` VALUES (122, 2);
INSERT INTO `aauth_perm_to_group` VALUES (553, 2);
INSERT INTO `aauth_perm_to_group` VALUES (561, 2);
INSERT INTO `aauth_perm_to_group` VALUES (567, 2);
INSERT INTO `aauth_perm_to_group` VALUES (598, 2);
INSERT INTO `aauth_perm_to_group` VALUES (604, 2);
INSERT INTO `aauth_perm_to_group` VALUES (615, 2);
INSERT INTO `aauth_perm_to_group` VALUES (616, 2);
INSERT INTO `aauth_perm_to_group` VALUES (622, 2);
INSERT INTO `aauth_perm_to_group` VALUES (633, 2);
INSERT INTO `aauth_perm_to_group` VALUES (644, 2);
INSERT INTO `aauth_perm_to_group` VALUES (650, 2);
INSERT INTO `aauth_perm_to_group` VALUES (656, 2);
INSERT INTO `aauth_perm_to_group` VALUES (657, 2);
INSERT INTO `aauth_perm_to_group` VALUES (658, 2);
INSERT INTO `aauth_perm_to_group` VALUES (659, 2);
INSERT INTO `aauth_perm_to_group` VALUES (660, 2);
INSERT INTO `aauth_perm_to_group` VALUES (661, 2);
INSERT INTO `aauth_perm_to_group` VALUES (709, 2);
INSERT INTO `aauth_perm_to_group` VALUES (728, 2);
INSERT INTO `aauth_perm_to_group` VALUES (732, 2);
INSERT INTO `aauth_perm_to_group` VALUES (743, 2);
INSERT INTO `aauth_perm_to_group` VALUES (749, 2);
INSERT INTO `aauth_perm_to_group` VALUES (753, 2);
INSERT INTO `aauth_perm_to_group` VALUES (22, 2);
INSERT INTO `aauth_perm_to_group` VALUES (538, 2);
INSERT INTO `aauth_perm_to_group` VALUES (540, 2);
INSERT INTO `aauth_perm_to_group` VALUES (557, 2);
INSERT INTO `aauth_perm_to_group` VALUES (559, 2);
INSERT INTO `aauth_perm_to_group` VALUES (599, 2);
INSERT INTO `aauth_perm_to_group` VALUES (600, 2);
INSERT INTO `aauth_perm_to_group` VALUES (601, 2);
INSERT INTO `aauth_perm_to_group` VALUES (602, 2);
INSERT INTO `aauth_perm_to_group` VALUES (603, 2);
INSERT INTO `aauth_perm_to_group` VALUES (605, 2);
INSERT INTO `aauth_perm_to_group` VALUES (606, 2);
INSERT INTO `aauth_perm_to_group` VALUES (607, 2);
INSERT INTO `aauth_perm_to_group` VALUES (608, 2);
INSERT INTO `aauth_perm_to_group` VALUES (609, 2);
INSERT INTO `aauth_perm_to_group` VALUES (610, 2);
INSERT INTO `aauth_perm_to_group` VALUES (611, 2);
INSERT INTO `aauth_perm_to_group` VALUES (612, 2);
INSERT INTO `aauth_perm_to_group` VALUES (613, 2);
INSERT INTO `aauth_perm_to_group` VALUES (614, 2);
INSERT INTO `aauth_perm_to_group` VALUES (623, 2);
INSERT INTO `aauth_perm_to_group` VALUES (624, 2);
INSERT INTO `aauth_perm_to_group` VALUES (625, 2);
INSERT INTO `aauth_perm_to_group` VALUES (626, 2);
INSERT INTO `aauth_perm_to_group` VALUES (627, 2);
INSERT INTO `aauth_perm_to_group` VALUES (628, 2);
INSERT INTO `aauth_perm_to_group` VALUES (629, 2);
INSERT INTO `aauth_perm_to_group` VALUES (630, 2);
INSERT INTO `aauth_perm_to_group` VALUES (631, 2);
INSERT INTO `aauth_perm_to_group` VALUES (632, 2);
INSERT INTO `aauth_perm_to_group` VALUES (639, 2);
INSERT INTO `aauth_perm_to_group` VALUES (640, 2);
INSERT INTO `aauth_perm_to_group` VALUES (641, 2);
INSERT INTO `aauth_perm_to_group` VALUES (642, 2);
INSERT INTO `aauth_perm_to_group` VALUES (643, 2);
INSERT INTO `aauth_perm_to_group` VALUES (645, 2);
INSERT INTO `aauth_perm_to_group` VALUES (646, 2);
INSERT INTO `aauth_perm_to_group` VALUES (647, 2);
INSERT INTO `aauth_perm_to_group` VALUES (648, 2);
INSERT INTO `aauth_perm_to_group` VALUES (649, 2);
INSERT INTO `aauth_perm_to_group` VALUES (651, 2);
INSERT INTO `aauth_perm_to_group` VALUES (652, 2);
INSERT INTO `aauth_perm_to_group` VALUES (653, 2);
INSERT INTO `aauth_perm_to_group` VALUES (654, 2);
INSERT INTO `aauth_perm_to_group` VALUES (655, 2);
INSERT INTO `aauth_perm_to_group` VALUES (668, 2);
INSERT INTO `aauth_perm_to_group` VALUES (669, 2);
INSERT INTO `aauth_perm_to_group` VALUES (670, 2);
INSERT INTO `aauth_perm_to_group` VALUES (671, 2);
INSERT INTO `aauth_perm_to_group` VALUES (672, 2);
INSERT INTO `aauth_perm_to_group` VALUES (678, 2);
INSERT INTO `aauth_perm_to_group` VALUES (679, 2);
INSERT INTO `aauth_perm_to_group` VALUES (680, 2);
INSERT INTO `aauth_perm_to_group` VALUES (681, 2);
INSERT INTO `aauth_perm_to_group` VALUES (682, 2);
INSERT INTO `aauth_perm_to_group` VALUES (683, 2);
INSERT INTO `aauth_perm_to_group` VALUES (684, 2);
INSERT INTO `aauth_perm_to_group` VALUES (685, 2);
INSERT INTO `aauth_perm_to_group` VALUES (686, 2);
INSERT INTO `aauth_perm_to_group` VALUES (687, 2);
INSERT INTO `aauth_perm_to_group` VALUES (706, 2);
INSERT INTO `aauth_perm_to_group` VALUES (708, 2);
INSERT INTO `aauth_perm_to_group` VALUES (710, 2);
INSERT INTO `aauth_perm_to_group` VALUES (712, 2);
INSERT INTO `aauth_perm_to_group` VALUES (718, 2);
INSERT INTO `aauth_perm_to_group` VALUES (725, 2);
INSERT INTO `aauth_perm_to_group` VALUES (727, 2);
INSERT INTO `aauth_perm_to_group` VALUES (729, 2);
INSERT INTO `aauth_perm_to_group` VALUES (731, 2);
INSERT INTO `aauth_perm_to_group` VALUES (738, 2);
INSERT INTO `aauth_perm_to_group` VALUES (739, 2);
INSERT INTO `aauth_perm_to_group` VALUES (740, 2);
INSERT INTO `aauth_perm_to_group` VALUES (741, 2);
INSERT INTO `aauth_perm_to_group` VALUES (742, 2);
INSERT INTO `aauth_perm_to_group` VALUES (746, 2);
INSERT INTO `aauth_perm_to_group` VALUES (748, 2);
INSERT INTO `aauth_perm_to_group` VALUES (750, 2);
INSERT INTO `aauth_perm_to_group` VALUES (752, 2);
INSERT INTO `aauth_perm_to_group` VALUES (754, 1);
INSERT INTO `aauth_perm_to_group` VALUES (754, 2);
INSERT INTO `aauth_perm_to_group` VALUES (754, 3);
INSERT INTO `aauth_perm_to_group` VALUES (754, 4);
INSERT INTO `aauth_perm_to_group` VALUES (776, 1);
INSERT INTO `aauth_perm_to_group` VALUES (782, 1);
COMMIT;

-- ----------------------------
-- Table structure for aauth_perm_to_user
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perm_to_user`;
CREATE TABLE `aauth_perm_to_user` (
  `perm_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`perm_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for aauth_perms
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perms`;
CREATE TABLE `aauth_perms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `definition` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=796 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of aauth_perms
-- ----------------------------
BEGIN;
INSERT INTO `aauth_perms` VALUES (1, 'menu_dashboard', NULL);
INSERT INTO `aauth_perms` VALUES (2, 'menu_crud_builder', NULL);
INSERT INTO `aauth_perms` VALUES (3, 'menu_api_builder', NULL);
INSERT INTO `aauth_perms` VALUES (4, 'menu_page_builder', NULL);
INSERT INTO `aauth_perms` VALUES (5, 'menu_form_builder', NULL);
INSERT INTO `aauth_perms` VALUES (6, 'menu_menu', NULL);
INSERT INTO `aauth_perms` VALUES (7, 'menu_auth', NULL);
INSERT INTO `aauth_perms` VALUES (8, 'menu_user', NULL);
INSERT INTO `aauth_perms` VALUES (9, 'menu_group', NULL);
INSERT INTO `aauth_perms` VALUES (10, 'menu_access', NULL);
INSERT INTO `aauth_perms` VALUES (11, 'menu_permission', NULL);
INSERT INTO `aauth_perms` VALUES (12, 'menu_api_documentation', NULL);
INSERT INTO `aauth_perms` VALUES (13, 'menu_web_documentation', NULL);
INSERT INTO `aauth_perms` VALUES (14, 'menu_settings', NULL);
INSERT INTO `aauth_perms` VALUES (15, 'user_list', NULL);
INSERT INTO `aauth_perms` VALUES (16, 'user_update_status', NULL);
INSERT INTO `aauth_perms` VALUES (17, 'user_export', NULL);
INSERT INTO `aauth_perms` VALUES (18, 'user_add', NULL);
INSERT INTO `aauth_perms` VALUES (19, 'user_update', NULL);
INSERT INTO `aauth_perms` VALUES (20, 'user_update_profile', NULL);
INSERT INTO `aauth_perms` VALUES (21, 'user_update_password', NULL);
INSERT INTO `aauth_perms` VALUES (22, 'user_profile', NULL);
INSERT INTO `aauth_perms` VALUES (23, 'user_view', NULL);
INSERT INTO `aauth_perms` VALUES (24, 'user_delete', NULL);
INSERT INTO `aauth_perms` VALUES (25, 'blog_list', NULL);
INSERT INTO `aauth_perms` VALUES (26, 'blog_export', NULL);
INSERT INTO `aauth_perms` VALUES (27, 'blog_add', NULL);
INSERT INTO `aauth_perms` VALUES (28, 'blog_update', NULL);
INSERT INTO `aauth_perms` VALUES (29, 'blog_view', NULL);
INSERT INTO `aauth_perms` VALUES (30, 'blog_delete', NULL);
INSERT INTO `aauth_perms` VALUES (31, 'form_list', NULL);
INSERT INTO `aauth_perms` VALUES (32, 'form_export', NULL);
INSERT INTO `aauth_perms` VALUES (33, 'form_add', NULL);
INSERT INTO `aauth_perms` VALUES (34, 'form_update', NULL);
INSERT INTO `aauth_perms` VALUES (35, 'form_view', NULL);
INSERT INTO `aauth_perms` VALUES (36, 'form_manage', NULL);
INSERT INTO `aauth_perms` VALUES (37, 'form_delete', NULL);
INSERT INTO `aauth_perms` VALUES (38, 'crud_list', NULL);
INSERT INTO `aauth_perms` VALUES (39, 'crud_export', NULL);
INSERT INTO `aauth_perms` VALUES (40, 'crud_add', NULL);
INSERT INTO `aauth_perms` VALUES (41, 'crud_update', NULL);
INSERT INTO `aauth_perms` VALUES (42, 'crud_view', NULL);
INSERT INTO `aauth_perms` VALUES (43, 'crud_delete', NULL);
INSERT INTO `aauth_perms` VALUES (44, 'rest_list', NULL);
INSERT INTO `aauth_perms` VALUES (45, 'rest_export', NULL);
INSERT INTO `aauth_perms` VALUES (46, 'rest_add', NULL);
INSERT INTO `aauth_perms` VALUES (47, 'rest_update', NULL);
INSERT INTO `aauth_perms` VALUES (48, 'rest_view', NULL);
INSERT INTO `aauth_perms` VALUES (49, 'rest_delete', NULL);
INSERT INTO `aauth_perms` VALUES (50, 'group_list', NULL);
INSERT INTO `aauth_perms` VALUES (51, 'group_export', NULL);
INSERT INTO `aauth_perms` VALUES (52, 'group_add', NULL);
INSERT INTO `aauth_perms` VALUES (53, 'group_update', NULL);
INSERT INTO `aauth_perms` VALUES (54, 'group_view', NULL);
INSERT INTO `aauth_perms` VALUES (55, 'group_delete', NULL);
INSERT INTO `aauth_perms` VALUES (56, 'permission_list', NULL);
INSERT INTO `aauth_perms` VALUES (57, 'permission_export', NULL);
INSERT INTO `aauth_perms` VALUES (58, 'permission_add', NULL);
INSERT INTO `aauth_perms` VALUES (59, 'permission_update', NULL);
INSERT INTO `aauth_perms` VALUES (60, 'permission_view', NULL);
INSERT INTO `aauth_perms` VALUES (61, 'permission_delete', NULL);
INSERT INTO `aauth_perms` VALUES (62, 'access_list', NULL);
INSERT INTO `aauth_perms` VALUES (63, 'access_add', NULL);
INSERT INTO `aauth_perms` VALUES (64, 'access_update', NULL);
INSERT INTO `aauth_perms` VALUES (65, 'menu_list', NULL);
INSERT INTO `aauth_perms` VALUES (66, 'menu_add', NULL);
INSERT INTO `aauth_perms` VALUES (67, 'menu_update', NULL);
INSERT INTO `aauth_perms` VALUES (68, 'menu_delete', NULL);
INSERT INTO `aauth_perms` VALUES (69, 'menu_save_ordering', NULL);
INSERT INTO `aauth_perms` VALUES (70, 'menu_type_add', NULL);
INSERT INTO `aauth_perms` VALUES (71, 'page_list', NULL);
INSERT INTO `aauth_perms` VALUES (72, 'page_export', NULL);
INSERT INTO `aauth_perms` VALUES (73, 'page_add', NULL);
INSERT INTO `aauth_perms` VALUES (74, 'page_update', NULL);
INSERT INTO `aauth_perms` VALUES (75, 'page_view', NULL);
INSERT INTO `aauth_perms` VALUES (76, 'page_delete', NULL);
INSERT INTO `aauth_perms` VALUES (77, 'blog_list', NULL);
INSERT INTO `aauth_perms` VALUES (78, 'blog_export', NULL);
INSERT INTO `aauth_perms` VALUES (79, 'blog_add', NULL);
INSERT INTO `aauth_perms` VALUES (80, 'blog_update', NULL);
INSERT INTO `aauth_perms` VALUES (81, 'blog_view', NULL);
INSERT INTO `aauth_perms` VALUES (82, 'blog_delete', NULL);
INSERT INTO `aauth_perms` VALUES (83, 'setting', NULL);
INSERT INTO `aauth_perms` VALUES (84, 'setting_update', NULL);
INSERT INTO `aauth_perms` VALUES (85, 'dashboard', NULL);
INSERT INTO `aauth_perms` VALUES (86, 'extension_list', NULL);
INSERT INTO `aauth_perms` VALUES (87, 'extension_activate', NULL);
INSERT INTO `aauth_perms` VALUES (88, 'extension_deactivate', NULL);
INSERT INTO `aauth_perms` VALUES (99, 'menu_administrator', '');
INSERT INTO `aauth_perms` VALUES (120, 'menu_master_data', '');
INSERT INTO `aauth_perms` VALUES (121, 'menu_skpd', '');
INSERT INTO `aauth_perms` VALUES (122, 'menu_profil', '');
INSERT INTO `aauth_perms` VALUES (128, 'menu_tmc_crud', '');
INSERT INTO `aauth_perms` VALUES (129, 'menu_tmc_api_create', '');
INSERT INTO `aauth_perms` VALUES (553, 'menu_setup_ekin', '');
INSERT INTO `aauth_perms` VALUES (560, 'menu_e-kinerja', '');
INSERT INTO `aauth_perms` VALUES (561, 'menu_golongan', '');
INSERT INTO `aauth_perms` VALUES (567, 'menu_jabatan', '');
INSERT INTO `aauth_perms` VALUES (598, 'menu_tupoksi', '');
INSERT INTO `aauth_perms` VALUES (604, 'menu_absensi', '');
INSERT INTO `aauth_perms` VALUES (615, 'menu_uraian_tupoksi', '');
INSERT INTO `aauth_perms` VALUES (616, 'menu_kepegawaian', '');
INSERT INTO `aauth_perms` VALUES (622, 'menu_pegawai', '');
INSERT INTO `aauth_perms` VALUES (633, 'menu_riwayat_pendidikan', '');
INSERT INTO `aauth_perms` VALUES (644, 'menu_riwayat_kepangkatan', '');
INSERT INTO `aauth_perms` VALUES (650, 'menu_riwayat_jabatan', '');
INSERT INTO `aauth_perms` VALUES (656, 'menu_riwayat_penghargaan', '');
INSERT INTO `aauth_perms` VALUES (657, 'menu_skp_dan_rencana_aksi', '');
INSERT INTO `aauth_perms` VALUES (658, 'menu_sasaran_kerja_pegawai_(skp)', '');
INSERT INTO `aauth_perms` VALUES (659, 'menu_rencana_aksi_tahunan', '');
INSERT INTO `aauth_perms` VALUES (660, 'menu_rencana_aksi_bulanan', '');
INSERT INTO `aauth_perms` VALUES (661, 'menu_realisasi', '');
INSERT INTO `aauth_perms` VALUES (667, 'menu_user_management', '');
INSERT INTO `aauth_perms` VALUES (673, 'api_rkpd_skpd_kgtn_all', '');
INSERT INTO `aauth_perms` VALUES (674, 'api_rkpd_skpd_kgtn_detail', '');
INSERT INTO `aauth_perms` VALUES (675, 'api_rkpd_skpd_kgtn_add', '');
INSERT INTO `aauth_perms` VALUES (676, 'api_rkpd_skpd_kgtn_update', '');
INSERT INTO `aauth_perms` VALUES (677, 'api_rkpd_skpd_kgtn_delete', '');
INSERT INTO `aauth_perms` VALUES (709, 'menu_absensi_rekap', '');
INSERT INTO `aauth_perms` VALUES (713, 'menu_absensi_scanlog', '');
INSERT INTO `aauth_perms` VALUES (719, 'menu_apel_scanlog', '');
INSERT INTO `aauth_perms` VALUES (728, 'menu_apel', '');
INSERT INTO `aauth_perms` VALUES (732, 'menu_apel_rekap', '');
INSERT INTO `aauth_perms` VALUES (743, 'menu_permohonan_izin', '');
INSERT INTO `aauth_perms` VALUES (749, 'menu_eselon', '');
INSERT INTO `aauth_perms` VALUES (753, 'menu_apel_rekap_skpd', '');
INSERT INTO `aauth_perms` VALUES (754, 'menu_reka_&_tpp', '');
INSERT INTO `aauth_perms` VALUES (755, 'menu_rekap_&_tpp', '');
INSERT INTO `aauth_perms` VALUES (756, 'wilayah_add', '');
INSERT INTO `aauth_perms` VALUES (757, 'wilayah_update', '');
INSERT INTO `aauth_perms` VALUES (758, 'wilayah_view', '');
INSERT INTO `aauth_perms` VALUES (759, 'wilayah_delete', '');
INSERT INTO `aauth_perms` VALUES (760, 'wilayah_list', '');
INSERT INTO `aauth_perms` VALUES (761, 'penduduk_add', '');
INSERT INTO `aauth_perms` VALUES (762, 'penduduk_update', '');
INSERT INTO `aauth_perms` VALUES (763, 'penduduk_view', '');
INSERT INTO `aauth_perms` VALUES (764, 'penduduk_delete', '');
INSERT INTO `aauth_perms` VALUES (765, 'penduduk_list', '');
INSERT INTO `aauth_perms` VALUES (766, 'wilayah_profil_add', '');
INSERT INTO `aauth_perms` VALUES (767, 'wilayah_profil_update', '');
INSERT INTO `aauth_perms` VALUES (768, 'wilayah_profil_view', '');
INSERT INTO `aauth_perms` VALUES (769, 'wilayah_profil_delete', '');
INSERT INTO `aauth_perms` VALUES (770, 'wilayah_profil_list', '');
INSERT INTO `aauth_perms` VALUES (771, 'wilayah_kepala_add', '');
INSERT INTO `aauth_perms` VALUES (772, 'wilayah_kepala_update', '');
INSERT INTO `aauth_perms` VALUES (773, 'wilayah_kepala_view', '');
INSERT INTO `aauth_perms` VALUES (774, 'wilayah_kepala_delete', '');
INSERT INTO `aauth_perms` VALUES (775, 'wilayah_kepala_list', '');
INSERT INTO `aauth_perms` VALUES (776, 'suket_domisili_add', '');
INSERT INTO `aauth_perms` VALUES (777, 'suket_domisili_update', '');
INSERT INTO `aauth_perms` VALUES (778, 'suket_domisili_view', '');
INSERT INTO `aauth_perms` VALUES (779, 'suket_domisili_delete', '');
INSERT INTO `aauth_perms` VALUES (780, 'suket_domisili_list', '');
INSERT INTO `aauth_perms` VALUES (781, 'menu_data_wilayah', '');
INSERT INTO `aauth_perms` VALUES (782, 'menu_wilayah', '');
INSERT INTO `aauth_perms` VALUES (783, 'menu_profil_wilayah', '');
INSERT INTO `aauth_perms` VALUES (784, 'menu_kepala_wilayah', '');
INSERT INTO `aauth_perms` VALUES (785, 'menu_data_penduduk', '');
INSERT INTO `aauth_perms` VALUES (786, 'menu_kependudukan', '');
INSERT INTO `aauth_perms` VALUES (787, 'menu_persuratan', '');
INSERT INTO `aauth_perms` VALUES (788, 'menu_surat_keterangan', '');
INSERT INTO `aauth_perms` VALUES (789, 'menu_domisili', '');
INSERT INTO `aauth_perms` VALUES (790, 'wilayah_perangkat_add', '');
INSERT INTO `aauth_perms` VALUES (791, 'wilayah_perangkat_update', '');
INSERT INTO `aauth_perms` VALUES (792, 'wilayah_perangkat_view', '');
INSERT INTO `aauth_perms` VALUES (793, 'wilayah_perangkat_delete', '');
INSERT INTO `aauth_perms` VALUES (794, 'wilayah_perangkat_list', '');
INSERT INTO `aauth_perms` VALUES (795, 'menu_perangkat_wilayah', '');
COMMIT;

-- ----------------------------
-- Table structure for aauth_pms
-- ----------------------------
DROP TABLE IF EXISTS `aauth_pms`;
CREATE TABLE `aauth_pms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) unsigned NOT NULL,
  `receiver_id` int(11) unsigned NOT NULL,
  `title` varchar(225) NOT NULL,
  `message` text,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `pm_deleted_sender` int(1) DEFAULT NULL,
  `pm_deleted_receiver` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for aauth_user
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user`;
CREATE TABLE `aauth_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `definition` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for aauth_user_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user_to_group`;
CREATE TABLE `aauth_user_to_group` (
  `user_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of aauth_user_to_group
-- ----------------------------
BEGIN;
INSERT INTO `aauth_user_to_group` VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for aauth_user_variables
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user_variables`;
CREATE TABLE `aauth_user_variables` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for aauth_users
-- ----------------------------
DROP TABLE IF EXISTS `aauth_users`;
CREATE TABLE `aauth_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `oauth_uid` text,
  `oauth_provider` varchar(100) DEFAULT NULL,
  `pass` varchar(64) NOT NULL,
  `username` varchar(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `avatar` text,
  `banned` tinyint(1) DEFAULT '0',
  `kd_wilayah` varchar(30) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `forgot_exp` text,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text,
  `verification_code` text,
  `top_secret` varchar(16) DEFAULT NULL,
  `ip_address` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aauth_users
-- ----------------------------
BEGIN;
INSERT INTO `aauth_users` VALUES (1, 'dev@gmail.com', NULL, NULL, '3783a5063e48003fd64eb62d2f06125430b4d63e62aeda455564932654079c80', 'admin', 'dev', '', 0, '73', '2020-05-18 19:19:33', '2020-05-18 19:19:33', '2019-08-03 01:11:23', NULL, '2020-02-07 00:00:00', 'k5YICT7oXOQ39WeS', NULL, NULL, '::1');
COMMIT;

-- ----------------------------
-- Table structure for captcha
-- ----------------------------
DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
  `captcha_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of captcha
-- ----------------------------
BEGIN;
INSERT INTO `captcha` VALUES (4, 1570428877, '::1', 'YJE8');
COMMIT;

-- ----------------------------
-- Table structure for cc_options
-- ----------------------------
DROP TABLE IF EXISTS `cc_options`;
CREATE TABLE `cc_options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) NOT NULL,
  `option_value` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cc_options
-- ----------------------------
BEGIN;
INSERT INTO `cc_options` VALUES (1, 'active_theme', 'cicool');
INSERT INTO `cc_options` VALUES (2, 'favicon', 'default.png');
INSERT INTO `cc_options` VALUES (3, 'site_name', 'SIADeK');
INSERT INTO `cc_options` VALUES (4, 'enable_disqus', NULL);
INSERT INTO `cc_options` VALUES (5, 'disqus_id', '');
INSERT INTO `cc_options` VALUES (6, 'email', 'tmc@gmail.com');
INSERT INTO `cc_options` VALUES (7, 'author', '');
INSERT INTO `cc_options` VALUES (8, 'site_description', 'Sistem Informasi Administrasi Desa dan Kelurahan');
INSERT INTO `cc_options` VALUES (9, 'keywords', '');
INSERT INTO `cc_options` VALUES (10, 'landing_page_id', 'default');
INSERT INTO `cc_options` VALUES (11, 'timezone', 'Asia/Jakarta');
INSERT INTO `cc_options` VALUES (12, 'google_id', '');
INSERT INTO `cc_options` VALUES (13, 'google_secret', '');
COMMIT;

-- ----------------------------
-- Table structure for cc_session
-- ----------------------------
DROP TABLE IF EXISTS `cc_session`;
CREATE TABLE `cc_session` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for crud
-- ----------------------------
DROP TABLE IF EXISTS `crud`;
CREATE TABLE `crud` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL,
  `primary_key` varchar(200) NOT NULL,
  `page_read` varchar(20) DEFAULT NULL,
  `page_create` varchar(20) DEFAULT NULL,
  `page_update` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of crud
-- ----------------------------
BEGIN;
INSERT INTO `crud` VALUES (125, 'Wilayah', 'Master Wilayah', 'wilayah', 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (126, 'Penduduk', 'Penduduk', 'penduduk', 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (127, 'Wilayah Profil', 'Wilayah Profil', 'wilayah_profil', 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (128, 'Kepala Desa', 'Kepala Desa', 'wilayah_kepala', 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (129, 'Suket Domisili', 'Suket Domisili', 'suket_domisili', 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (130, 'Wilayah Perangkat', 'Wilayah Perangkat', 'wilayah_perangkat', 'id', 'yes', 'yes', 'yes');
COMMIT;

-- ----------------------------
-- Table structure for crud_custom_option
-- ----------------------------
DROP TABLE IF EXISTS `crud_custom_option`;
CREATE TABLE `crud_custom_option` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `option_label` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of crud_custom_option
-- ----------------------------
BEGIN;
INSERT INTO `crud_custom_option` VALUES (73, 1263, 84, 'Aset Daerah', 'Aset Daerah');
INSERT INTO `crud_custom_option` VALUES (74, 1263, 84, 'Pihak Ketiga', 'Pihak Ketiga');
INSERT INTO `crud_custom_option` VALUES (75, 1263, 84, 'Sewa', 'Sewa');
INSERT INTO `crud_custom_option` VALUES (76, 1263, 84, 'Pinjam Pakai', 'Pinjam Pakai');
INSERT INTO `crud_custom_option` VALUES (77, 1276, 85, 'Aset Daerah', 'Aset Daerah');
INSERT INTO `crud_custom_option` VALUES (78, 1276, 85, 'Pihak Ketiga', 'Pihak Ketiga');
INSERT INTO `crud_custom_option` VALUES (79, 1276, 85, 'Sewa', 'Sewa');
INSERT INTO `crud_custom_option` VALUES (80, 1276, 85, 'Pinjam Pakai', 'Pinjam Pakai');
INSERT INTO `crud_custom_option` VALUES (85, 1313, 87, 'Aset Daerah', 'Aset Daerah');
INSERT INTO `crud_custom_option` VALUES (86, 1313, 87, 'Pihak Ketiga', 'Pihak Ketiga');
INSERT INTO `crud_custom_option` VALUES (87, 1313, 87, 'Sewa', 'Sewa');
INSERT INTO `crud_custom_option` VALUES (88, 1313, 87, 'Pinjam Pakai', 'Pinjam Pakai');
INSERT INTO `crud_custom_option` VALUES (89, 1574, 99, 'Pokok', 'Pokok');
INSERT INTO `crud_custom_option` VALUES (90, 1574, 99, 'Tambahan', 'Tambahan');
INSERT INTO `crud_custom_option` VALUES (91, 1574, 99, 'Kreatifitas', 'Kreatifitas');
INSERT INTO `crud_custom_option` VALUES (129, 1667, 100, 'L', 'Laki-Laki');
INSERT INTO `crud_custom_option` VALUES (130, 1667, 100, 'P', 'Perempuan');
INSERT INTO `crud_custom_option` VALUES (131, 1669, 100, 'Islam', 'Islam');
INSERT INTO `crud_custom_option` VALUES (132, 1669, 100, 'Katolik', 'Katolik');
INSERT INTO `crud_custom_option` VALUES (133, 1669, 100, 'Protestan', 'Protestan');
INSERT INTO `crud_custom_option` VALUES (134, 1669, 100, 'Hindu', 'Hindu');
INSERT INTO `crud_custom_option` VALUES (135, 1669, 100, 'Budha', 'Budha');
INSERT INTO `crud_custom_option` VALUES (136, 1669, 100, 'Sinto', 'Sinto');
INSERT INTO `crud_custom_option` VALUES (137, 1669, 100, 'Konghucu', 'Konghucu');
INSERT INTO `crud_custom_option` VALUES (138, 1669, 100, 'Lain-Lain', 'Lain-Lain');
INSERT INTO `crud_custom_option` VALUES (139, 1673, 100, 'Lajang', 'Lajang');
INSERT INTO `crud_custom_option` VALUES (140, 1673, 100, 'Nikah', 'Nikah');
INSERT INTO `crud_custom_option` VALUES (141, 1673, 100, 'Cerai', 'Cerai');
INSERT INTO `crud_custom_option` VALUES (242, 2031, 101, 'L', 'Laki-Laki');
INSERT INTO `crud_custom_option` VALUES (243, 2031, 101, 'P', 'Perempuan');
INSERT INTO `crud_custom_option` VALUES (244, 2033, 101, 'Islam', 'Islam');
INSERT INTO `crud_custom_option` VALUES (245, 2033, 101, 'Katolik', 'Katolik');
INSERT INTO `crud_custom_option` VALUES (246, 2033, 101, 'Protestan', 'Protestan');
INSERT INTO `crud_custom_option` VALUES (247, 2033, 101, 'Hindu', 'Hindu');
INSERT INTO `crud_custom_option` VALUES (248, 2033, 101, 'Budha', 'Budha');
INSERT INTO `crud_custom_option` VALUES (249, 2033, 101, 'Sinto', 'Sinto');
INSERT INTO `crud_custom_option` VALUES (250, 2033, 101, 'Konghucu', 'Konghucu');
INSERT INTO `crud_custom_option` VALUES (251, 2033, 101, 'Lain-Lain', 'Lain-Lain');
INSERT INTO `crud_custom_option` VALUES (252, 2037, 101, 'Lajang', 'Lajang');
INSERT INTO `crud_custom_option` VALUES (253, 2037, 101, 'Nikah', 'Nikah');
INSERT INTO `crud_custom_option` VALUES (254, 2037, 101, 'Cerai', 'Cerai');
INSERT INTO `crud_custom_option` VALUES (257, 2154, 105, 'Fungsional', 'Fungsional');
INSERT INTO `crud_custom_option` VALUES (258, 2154, 105, 'Struktural', 'Struktural');
INSERT INTO `crud_custom_option` VALUES (259, 2937, 128, 'Kepala Desa', 'Kepala Desa');
INSERT INTO `crud_custom_option` VALUES (260, 2937, 128, 'Lurah', 'Lurah');
INSERT INTO `crud_custom_option` VALUES (261, 2938, 128, 'Laki - Laki', 'Laki - Laki');
INSERT INTO `crud_custom_option` VALUES (262, 2938, 128, 'Perempuan', 'Perempuan');
INSERT INTO `crud_custom_option` VALUES (263, 2940, 128, 'Islam', 'Islam');
INSERT INTO `crud_custom_option` VALUES (264, 2940, 128, 'Kristen Protestan', 'Kristen Protestan');
INSERT INTO `crud_custom_option` VALUES (265, 2940, 128, 'Kristen Katolik', 'Kristen Katolik');
INSERT INTO `crud_custom_option` VALUES (266, 2940, 128, 'Hindu', 'Hindu');
INSERT INTO `crud_custom_option` VALUES (267, 2940, 128, 'Buddha', 'Buddha');
INSERT INTO `crud_custom_option` VALUES (268, 2940, 128, 'Kong Hu Cu', 'Kong Hu Cu');
INSERT INTO `crud_custom_option` VALUES (269, 2941, 128, 'SD/Sederajat', 'SD/Sederajat');
INSERT INTO `crud_custom_option` VALUES (270, 2941, 128, 'SMP/Sederajat', 'SMP/Sederajat');
INSERT INTO `crud_custom_option` VALUES (271, 2941, 128, 'SMA/Sederajat', 'SMA/Sederajat');
INSERT INTO `crud_custom_option` VALUES (272, 2941, 128, 'D1/D2/D3', 'D1/D2/D3');
INSERT INTO `crud_custom_option` VALUES (273, 2941, 128, 'D4/S1', 'D4/S1');
INSERT INTO `crud_custom_option` VALUES (274, 2941, 128, 'S2', 'S2');
INSERT INTO `crud_custom_option` VALUES (275, 2941, 128, 'S3', 'S3');
INSERT INTO `crud_custom_option` VALUES (294, 3042, 129, 'ijazah', 'Ijazah');
INSERT INTO `crud_custom_option` VALUES (295, 3042, 129, 'akte_kelahiran', 'Akte Kelahiran');
INSERT INTO `crud_custom_option` VALUES (296, 3042, 129, 'kartu_keluarga', 'Kartu Keluarga');
INSERT INTO `crud_custom_option` VALUES (317, 3071, 130, 'Unsur Staf', 'Unsur Staf');
INSERT INTO `crud_custom_option` VALUES (318, 3071, 130, 'Unsur Pelaksana', 'Unsur Pelaksana');
INSERT INTO `crud_custom_option` VALUES (319, 3071, 130, 'Unsur Wilayah', 'Unsur Wilayah');
INSERT INTO `crud_custom_option` VALUES (320, 3073, 130, 'Sekretaris', 'Sekretaris');
INSERT INTO `crud_custom_option` VALUES (321, 3073, 130, 'Kepala Urusan Pemerintah', 'Kepala Urusan Pemerintah');
INSERT INTO `crud_custom_option` VALUES (322, 3073, 130, 'Kepala Urusan Pembangunan', 'Kepala Urusan Pembangunan');
INSERT INTO `crud_custom_option` VALUES (323, 3073, 130, 'Kepala Urusan Kesejahteraan Rakyat', 'Kepala Urusan Kesejahteraan Rakyat');
INSERT INTO `crud_custom_option` VALUES (324, 3073, 130, 'Kepala Urusan Keuangan', 'Kepala Urusan Keuangan');
INSERT INTO `crud_custom_option` VALUES (325, 3073, 130, 'Kepala Urusan Umum', 'Kepala Urusan Umum');
INSERT INTO `crud_custom_option` VALUES (326, 3073, 130, 'Kepala Dusun', 'Kepala Dusun');
INSERT INTO `crud_custom_option` VALUES (327, 3073, 130, 'Staf', 'Staf');
INSERT INTO `crud_custom_option` VALUES (328, 3074, 130, 'Laki - Laki', 'Laki - Laki');
INSERT INTO `crud_custom_option` VALUES (329, 3074, 130, 'Perempuan', 'Perempuan');
INSERT INTO `crud_custom_option` VALUES (330, 3077, 130, 'SD/Sederajat', 'SD/Sederajat');
INSERT INTO `crud_custom_option` VALUES (331, 3077, 130, 'SMP/Sederajat', 'SMP/Sederajat');
INSERT INTO `crud_custom_option` VALUES (332, 3077, 130, 'SMA/Sederajat', 'SMA/Sederajat');
INSERT INTO `crud_custom_option` VALUES (333, 3077, 130, 'D1/D2/D3', 'D1/D2/D3');
INSERT INTO `crud_custom_option` VALUES (334, 3077, 130, 'D4/S1', 'D4/S1');
INSERT INTO `crud_custom_option` VALUES (335, 3077, 130, 'S2', 'S2');
INSERT INTO `crud_custom_option` VALUES (336, 3077, 130, 'S3', 'S3');
COMMIT;

-- ----------------------------
-- Table structure for crud_field
-- ----------------------------
DROP TABLE IF EXISTS `crud_field`;
CREATE TABLE `crud_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crud_id` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `input_type` varchar(200) NOT NULL,
  `show_column` varchar(10) DEFAULT NULL,
  `show_add_form` varchar(10) DEFAULT NULL,
  `show_update_form` varchar(10) DEFAULT NULL,
  `show_detail_page` varchar(10) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `relation_table` varchar(200) DEFAULT NULL,
  `relation_value` varchar(200) DEFAULT NULL,
  `relation_label` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3116 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of crud_field
-- ----------------------------
BEGIN;
INSERT INTO `crud_field` VALUES (1281, 86, 'id_skpd', 'id_skpd', 'input', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1282, 86, 'kode', 'KODE', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (1283, 86, 'nama', 'NAMA SKPD', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1284, 86, 'singkatan', 'SINGKATAN', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1285, 86, 'nip_ka_satker', 'NIP PIMPINAN', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1286, 86, 'nm_ka_satker', 'NAMA PIMPINAN', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1287, 86, 'jab_ka_satker', 'JABATAN PIMPINAN', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1288, 86, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1289, 86, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1290, 86, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (1291, 86, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (1305, 87, 'id_aplikasi', 'id_aplikasi', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1306, 87, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (1307, 87, 'nm_aplikasi', 'NAMA APLIKASI', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1308, 87, 'url', 'URL / ALAMAT', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1309, 87, 'spesifikasi', 'SPESIFIKASI / FITUR', 'textarea', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1310, 87, 'nm_pengelola', 'NAMA PENGELOLA', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1311, 87, 'hp_pegelola', 'TLP PENGELOLA', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1312, 87, 'image', 'SREENSHOOT', 'file_multiple', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1313, 87, 'status', 'STATUS KEPEMILIKAN', 'custom_select', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1314, 87, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (1315, 87, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (1316, 87, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (1317, 87, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (1326, 88, 'id_bank_data', 'id_bank_data', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1327, 88, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (1328, 88, 'keterangan_data', 'KETERANGAN DATA', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1329, 88, 'file', 'FILE', 'file_multiple', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1330, 88, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1331, 88, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1332, 88, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1333, 88, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1343, 89, 'id_golongan', 'id_golongan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1344, 89, 'golongan', 'GOLONGAN', 'number', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (1345, 89, 'ruang', 'RUANG', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1346, 89, 'nm_golongan', 'NAMA GOLONGAN', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1347, 89, 'pangkat', 'PANGKAT', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1348, 89, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1349, 89, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1350, 89, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1351, 89, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1397, 90, 'id_jabatn', 'id_jabatn', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1398, 90, 'skpd_id', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'id_skpd', 'nama');
INSERT INTO `crud_field` VALUES (1399, 90, 'nm_jabatan', 'NAMA JABATAN', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1400, 90, 'atasan_jabatan_id', 'ATASAN JABATAN', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1401, 90, 'unit_krj_dlm_sat_krj', 'UNIT KERJA', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1402, 90, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1403, 90, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1404, 90, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1405, 90, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1406, 91, 'id_jabatan', 'id_jabatan', 'input', '', 'yes', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1407, 91, 'sikd_satker_id', 'sikd_satker_id', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (1408, 91, 'no_seq', 'no_seq', 'number', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1409, 91, 'nm_jabatan', 'nm_jabatan', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1410, 91, 'atasan_jabatan_id', 'atasan_jabatan_id', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1411, 91, 'unit_krj_dlm_sat_krj', 'unit_krj_dlm_sat_krj', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1412, 91, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1413, 91, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1414, 91, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1415, 91, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (1416, 92, 'id_a', 'id_a', 'input', '', 'yes', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1417, 92, 'isi', 'isi', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (1418, 93, 'id_a', 'id_a', 'current_user_id', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1419, 93, 'isi', 'isi', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (1420, 94, 'id_a', 'id_a', 'input', '', 'yes', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1421, 94, 'isi', 'isi', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (1482, 95, 'id_jabatan', 'id_jabatan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1483, 95, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (1484, 95, 'no_seq', 'NO URUT', 'number', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1485, 95, 'nm_jabatan', 'JABATAN', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1486, 95, 'atasan_jabatan_id', 'ATASAN JABATAN', 'select', 'yes', 'yes', 'yes', 'yes', 5, 'atasan_jabatan', 'id_jabatan_atasan', 'nm_jabatan_atasan');
INSERT INTO `crud_field` VALUES (1487, 95, 'unit_krj_dlm_sat_krj', 'UNIT KERJA', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1488, 95, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1489, 95, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1490, 95, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1491, 95, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (1492, 96, 'id_tupoksi', 'id_tupoksi', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1493, 96, 'jabatan_id', 'JABATAN', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_bkd_jabatan', 'id_jabatan', 'nm_jabatan');
INSERT INTO `crud_field` VALUES (1494, 96, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (1495, 96, 'no_seq', 'NO URUT', 'number', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1496, 96, 'nm_tupoksi', 'TUPOKSI', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1497, 96, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1498, 96, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1499, 96, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1500, 96, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1511, 97, 'id_jabatan', 'id_jabatan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1512, 97, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (1513, 97, 'no_seq', 'NO URUT', 'number', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1514, 97, 'nm_jabatan', 'JABATAN', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1515, 97, 'atasan_jabatan_id', 'atasan_jabatan_id', 'select', 'yes', 'yes', 'yes', 'yes', 5, 'atasan_jabatan', 'id_jabatan_atasan', 'nm_jabatan_atasan');
INSERT INTO `crud_field` VALUES (1516, 97, 'unit_krj_dlm_sat_krj', 'UNIT KERJA', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1517, 97, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1518, 97, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1519, 97, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1520, 97, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (1530, 98, 'id_tupoksi', 'id_tupoksi', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1531, 98, 'jabatan_id', 'JABATAN', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_bkd_jabatan', 'id_jabatan', 'nm_jabatan');
INSERT INTO `crud_field` VALUES (1532, 98, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (1533, 98, 'no_seq', 'NO URUT', 'number', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1534, 98, 'nm_tupoksi', 'TUPOKSI', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1535, 98, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1536, 98, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1537, 98, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1538, 98, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1569, 99, 'id_tupoksi_uraian', 'id_tupoksi_uraian', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1570, 99, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (1571, 99, 'tupoksi_id', 'TUPOKSI', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_bkd_tupoksi', 'id_tupoksi', 'nm_tupoksi');
INSERT INTO `crud_field` VALUES (1572, 99, 'no_seq', 'NO URUT', 'number', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1573, 99, 'nm_tupoksi_uraian', 'URAIAN TUPOKSI', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (1574, 99, 'jenis_tupoksi', 'JENIS TUPOKSI', 'custom_select', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1575, 99, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1576, 99, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1577, 99, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1578, 99, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (1657, 100, 'id_pegawai', 'id_pegawai', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (1658, 100, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (1659, 100, 'nm_pegawai', 'NAMA PEGAWAI', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (1660, 100, 'nip_pegawai', 'NIP PENGAWAI', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (1661, 100, 'jabatan_id', 'JABATAN', 'select', 'yes', 'yes', 'yes', 'yes', 5, 'sisma_bkd_jabatan', 'id_jabatan', 'nm_jabatan');
INSERT INTO `crud_field` VALUES (1662, 100, 'gelar_depan', 'GELAR DEPAN', 'input', '', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (1663, 100, 'gelar_belakang', 'GELAR BELAKANG', 'input', '', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (1664, 100, 'no_telp', 'NO TLP', 'input', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (1665, 100, 'tempat_lahir', 'TEMPAT LAHIR', 'input', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (1666, 100, 'tgl_lahir', 'TGL LAHIR', 'date', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (1667, 100, 'kelamin', 'L/P', 'custom_select', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (1668, 100, 'email', 'EMAIL', 'email', '', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (1669, 100, 'agama', 'AGAMA', 'custom_select', 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (1670, 100, 'alamat', 'ALAMAT', 'textarea', 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (1671, 100, 'kode_pos', 'KODE POS', 'input', '', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (1672, 100, 'gol_pegawai', 'GOL PEGAWAI', 'select', 'yes', 'yes', 'yes', 'yes', 16, 'sisma_bkd_gol', 'golongan', 'nm_golongan');
INSERT INTO `crud_field` VALUES (1673, 100, 'status', 'STATUS', 'custom_select', '', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (1674, 100, 'no_kartu_pegawai', 'NO KRTU PEGAWAI', 'input', '', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (1675, 100, 'no_askes', 'NO ASKES', 'input', '', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (1676, 100, 'no_taspen', 'NO TASPEN', 'input', '', 'yes', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (1677, 100, 'no_kartu_keluarga', 'NO KK', 'input', '', 'yes', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (1678, 100, 'npwp', 'NPWP', 'input', '', 'yes', 'yes', 'yes', 22, '', '', '');
INSERT INTO `crud_field` VALUES (1679, 100, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 23, '', '', '');
INSERT INTO `crud_field` VALUES (1680, 100, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 24, '', '', '');
INSERT INTO `crud_field` VALUES (1681, 100, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 25, '', '', '');
INSERT INTO `crud_field` VALUES (1682, 100, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 26, '', '', '');
INSERT INTO `crud_field` VALUES (2021, 101, 'id_pegawai', 'id_pegawai', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2022, 101, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2023, 101, 'nm_pegawai', 'NAMA', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2024, 101, 'nip_pegawai', 'NIP', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2025, 101, 'jabatan_id', 'JABATAN', 'select', 'yes', 'yes', 'yes', 'yes', 5, 'sisma_bkd_jabatan', 'id_jabatan', 'nm_jabatan');
INSERT INTO `crud_field` VALUES (2026, 101, 'gelar_depan', 'GELAR DEPAN', 'input', '', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2027, 101, 'gelar_belakang', 'GELAR BELAKANG', 'input', '', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2028, 101, 'no_telp', 'NO TLP', 'input', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2029, 101, 'tempat_lahir', 'TEMPAT LAHIR', 'input', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2030, 101, 'tgl_lahir', 'TGL LAHIR', 'date', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2031, 101, 'kelamin', 'L/P', 'custom_select', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2032, 101, 'email', 'Email', 'email', '', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2033, 101, 'agama', 'Agama', 'custom_select', 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2034, 101, 'alamat', 'ALAMAT', 'textarea', 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (2035, 101, 'kode_pos', 'KODE POS', 'input', '', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (2036, 101, 'gol_pegawai', 'GOL', 'select', 'yes', 'yes', 'yes', 'yes', 16, 'sisma_bkd_gol', 'id_golongan', 'nm_golongan');
INSERT INTO `crud_field` VALUES (2037, 101, 'status', 'STATUS', 'custom_select', 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (2038, 101, 'no_kartu_pegawai', 'NO KARPEG', 'input', '', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (2039, 101, 'no_askes', 'NO ASKES', 'input', '', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (2040, 101, 'no_taspen', 'NO TASPEN', 'input', '', 'yes', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (2041, 101, 'no_kartu_keluarga', 'NO KK', 'input', '', 'yes', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (2042, 101, 'npwp', 'NPWP', 'input', '', 'yes', 'yes', 'yes', 22, '', '', '');
INSERT INTO `crud_field` VALUES (2043, 101, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 23, '', '', '');
INSERT INTO `crud_field` VALUES (2044, 101, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 24, '', '', '');
INSERT INTO `crud_field` VALUES (2045, 101, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 25, '', '', '');
INSERT INTO `crud_field` VALUES (2046, 101, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 26, '', '', '');
INSERT INTO `crud_field` VALUES (2060, 102, 'id_riwayat_pend', 'id_riwayat_pend', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2061, 102, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2062, 102, 'pegawai_id', 'PEGAWAI', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2063, 102, 'jenis_pendidikan', 'JENIS PENDIDIKAN', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2064, 102, 'jurusan', 'JURUSAN', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2065, 102, 'nm_sekolah', 'NAMA SEKOLAH', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2066, 102, 'ka_sekolah', 'KA SEKOLAH', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2067, 102, 'no_ijazah', 'NO IJAZAH', 'input', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2068, 102, 'thn_ijazah', 'THN IJAZAH', 'year', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2069, 102, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2070, 102, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2071, 102, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2072, 102, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2073, 103, 'id_riwayat_pangkat', 'id_riwayat_pangkat', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2074, 103, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2075, 103, 'pegawai_id', 'PEGAWAI', 'select', 'yes', 'yes', 'yes', 'yes', 3, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2076, 103, 'no_sk', 'NO SK', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2077, 103, 'tgl_sk', 'TGL SK', 'date', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2078, 103, 'ms_krj_thn', 'MASA KERJA THN', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2079, 103, 'ms_krj_bln', 'MASA KERJA BLN', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2080, 103, 'gol_pegawai', 'GOL', 'select', 'yes', 'yes', 'yes', 'yes', 8, 'sisma_bkd_gol', 'golongan', 'nm_golongan');
INSERT INTO `crud_field` VALUES (2081, 103, 'tgl_ditetapkan', 'TGL DITETAPKAN', 'date', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2082, 103, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2083, 103, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2084, 103, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2085, 103, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2112, 104, 'id_riwayat_pangkat', 'id_riwayat_pangkat', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2113, 104, 'pegawai_id', 'PEGAWAI', 'select', 'yes', 'yes', 'yes', 'yes', 2, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2114, 104, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2115, 104, 'no_sk', 'NO SK', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2116, 104, 'tgl_sk', 'TGL SK', 'date', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2117, 104, 'ms_krj_thn', 'MASA KRJA THN', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2118, 104, 'ms_krj_bln', 'MASA KRJA BLN', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2119, 104, 'gol_pegawai', 'GOL', 'input', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2120, 104, 'tgl_ditetapkan', 'TGL DITETAPKAN', 'date', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2121, 104, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2122, 104, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2123, 104, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2124, 104, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2151, 105, 'id_riwayat_jabatan', 'id_riwayat_jabatan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2152, 105, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2153, 105, 'pegawai_id', 'PEGAWAI', 'select', 'yes', 'yes', 'yes', 'yes', 3, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2154, 105, 'jenis_jabatan', 'JENIS JABATAN', 'custom_select', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2155, 105, 'jabatan', 'JABATAN', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2156, 105, 'eselon', 'ESELON', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2157, 105, 'no_sk', 'NO SK', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2158, 105, 'tgl_sk', 'TGL SK', 'date', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2159, 105, 'tgl_ditetapkan', 'TGL DITETAPKAN', 'date', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2160, 105, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2161, 105, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2162, 105, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2163, 105, 'last_updated_date', 'last_updated_date', 'timestamp', '', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2274, 106, 'id_riwayat_penghargaan', 'id_riwayat_penghargaan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2275, 106, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2276, 106, 'pegawai_id', 'PEGAWAI', 'select', 'yes', 'yes', 'yes', 'yes', 3, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2277, 106, 'nm_penghargaan', 'NAMA PENGHARGAAN', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2278, 106, 'thn_penghargaan', 'THN PENGHARGAAN', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2279, 106, 'no_sk', 'NO SK', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2280, 106, 'tgl_sk', 'TGL SK', 'date', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2281, 106, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2282, 106, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2283, 106, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2284, 106, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2317, 107, 'id_skp', 'id_skp', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2318, 107, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2319, 107, 'pegawai_id', 'PEGAWAI', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2320, 107, 'tupoksi_id', 'TUPOKSI', 'select', 'yes', 'yes', 'yes', 'yes', 4, 'sisma_bkd_tupoksi', 'id_tupoksi', 'nm_tupoksi');
INSERT INTO `crud_field` VALUES (2321, 107, 'ak', 'AK', 'number', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2322, 107, 'kuan', 'KUAN', 'number', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2323, 107, 'kuan_satuan', 'SATUAN', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2324, 107, 'kual', 'KUAL', 'number', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2325, 107, 'kual_satuan', 'SATUAN', 'input', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2326, 107, 'waktu', 'WAKTU', 'number', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2327, 107, 'waktu_satuan', 'SATUAN', 'input', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2328, 107, 'biaya', 'BIAYA', 'number', 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2329, 107, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2330, 107, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (2331, 107, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (2332, 107, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (2375, 108, 'id_rencana_aksi_tahunan', 'id_rencana_aksi_tahunan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2376, 108, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2377, 108, 'pegawai_id', 'PEGAWAI', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2378, 108, 'tupoksi_uraian_id', 'TUPOKSI', 'select', 'yes', 'yes', 'yes', 'yes', 4, 'sisma_bkd_tupoksi', 'id_tupoksi', 'id_tupoksi');
INSERT INTO `crud_field` VALUES (2379, 108, 'bln_1', '1', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2380, 108, 'bln_2', '2', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2381, 108, 'bln_3', '3', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2382, 108, 'bln_4', '4', 'input', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2383, 108, 'bln_5', '5', 'input', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2384, 108, 'bln_6', '6', 'input', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2385, 108, 'bln_7', '7', 'input', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2386, 108, 'bln_8', '8', 'input', 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2387, 108, 'bln_9', '9', 'input', 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2388, 108, 'bln_10', '10', 'input', 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (2389, 108, 'bln_11', '11', 'input', 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (2390, 108, 'bln_12', '12', 'input', 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (2391, 108, 'target_satuan', 'TARGET SATUAN', 'input', 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (2392, 108, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (2393, 108, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (2394, 108, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (2395, 108, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 21, '', '', '');
INSERT INTO `crud_field` VALUES (2432, 109, 'id_rencana_aksi_bulanan', 'id_rencana_aksi_bulanan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2433, 109, 'kd_skpd', 'SKPD', 'select', '', 'yes', 'yes', 'yes', 2, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2434, 109, 'pegawai_id', 'Pegawai', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2435, 109, 'bln', 'bulan', 'number', '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2436, 109, 'tupoksi_uraian_id', 'Uraian Tupoksi', 'select', 'yes', 'yes', 'yes', 'yes', 5, 'sisma_bkd_tupoksi_uraian', 'id_tupoksi_uraian', 'id_tupoksi_uraian');
INSERT INTO `crud_field` VALUES (2437, 109, 'target_bln', 'Target', 'number', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2438, 109, 'target_satuan_bln', 'Satuan', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2439, 109, 'bobot', 'bobot', 'number', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2440, 109, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2441, 109, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2442, 109, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2443, 109, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2444, 110, 'id_realisasi', 'id_realisasi', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2445, 110, 'bln', 'bln', 'number', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2446, 110, 'pegawai_id', 'pegawai_id', 'select', '', 'yes', 'yes', 'yes', 3, 'sisma_bkd_pegawai', 'id_pegawai', 'nm_pegawai');
INSERT INTO `crud_field` VALUES (2447, 110, 'kd_skpd', 'kd_skpd', 'select', '', 'yes', 'yes', 'yes', 4, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2448, 110, 'tupoksi_uraian_id', 'tupoksi_uraian_id', 'select', 'yes', 'yes', 'yes', 'yes', 5, 'sisma_bkd_tupoksi_uraian', 'id_tupoksi_uraian', 'nm_tupoksi_uraian');
INSERT INTO `crud_field` VALUES (2449, 110, 'target_realisasi', 'target_realisasi', 'number', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2450, 110, 'taget_realisasi_satuan', 'taget_realisasi_satuan', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2451, 110, 'bobot_realisasi', 'bobot_realisasi', 'number', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2452, 110, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2453, 110, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2454, 110, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2455, 110, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2491, 111, 'id_absensi', 'id_absensi', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2492, 111, 'nip', 'nip', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2493, 111, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2494, 111, 'tanggal', 'tanggal', 'date', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2495, 111, 'scan_1', 'scan_1', 'time', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2496, 111, 'scan_2', 'scan_2', 'time', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2497, 111, 'scan_3', 'scan_3', 'time', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2498, 111, 'scan_4', 'scan_4', 'time', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2499, 111, 'scan_5', 'scan_5', 'time', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2500, 111, 'scan_6', 'scan_6', 'time', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2501, 111, 'scan_7', 'scan_7', 'time', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2502, 112, 'bln', 'bln', 'number', 'yes', '', '', '', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2503, 112, 'kode', 'kode', 'input', 'yes', '', '', '', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2504, 112, 'nip', 'nip', 'input', 'yes', '', '', '', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2505, 112, 'nama', 'nama', 'input', 'yes', '', '', '', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2506, 112, 'pengurangan_terlambat', 'pengurangan_terlambat', 'time', 'yes', '', '', '', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2507, 112, 'pengurangan_pulang', 'pengurangan_pulang', 'time', 'yes', '', '', '', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2508, 112, 'total_time', 'total_time', 'time', 'yes', '', '', '', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2533, 113, 'id_scanlog', 'id_scanlog', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2534, 113, 'bln', 'bln', 'number', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2535, 113, 'kode', 'kode', 'select', 'yes', 'yes', 'yes', 'yes', 3, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2536, 113, 'nip', 'nip', 'true_false', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2537, 113, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2538, 113, 'pengurangan_terlambat', 'pengurangan_terlambat', 'time', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2539, 113, 'pengurangan_pulang', 'pengurangan_pulang', 'time', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2540, 113, 'total_time', 'total_time', 'time', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2559, 114, 'id_scanlog', 'id_scanlog', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2560, 114, 'bln_absen', 'bln_absen', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2561, 114, 'pin', 'pin', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2562, 114, 'nip_absen', 'nip_absen', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2563, 114, 'nama_pegawai_absen', 'nama_pegawai_absen', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2564, 114, 'skpd', 'skpd', 'select', 'yes', 'yes', 'yes', 'yes', 6, 'sisma_master_skpd', 'kode', 'nama');
INSERT INTO `crud_field` VALUES (2565, 114, 'tanggal', 'tanggal', 'date', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2566, 114, 'scan_1', 'scan_1', 'time', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2567, 114, 'scan_2', 'scan_2', 'time', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2568, 114, 'scan_3', 'scan_3', 'time', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2569, 114, 'scan_4', 'scan_4', 'time', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2570, 114, 'scan_5', 'scan_5', 'time', 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2571, 114, 'scan_6', 'scan_6', 'time', 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2572, 114, 'scan_7', 'scan_7', 'time', 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (2573, 114, 'scan_8', 'scan_8', 'time', 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (2574, 114, 'scan_9', 'scan_9', 'time', 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (2575, 114, 'scan_10', 'scan_10', 'time', 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (2576, 114, 'scan_11', 'scan_11', 'time', 'yes', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (2577, 115, 'id_scanlog', 'id_scanlog', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2578, 115, 'bln', 'bln', 'number', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2579, 115, 'kode', 'kode', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2580, 115, 'nip', 'nip', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2581, 115, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2582, 115, 'pengurangan_terlambat', 'pengurangan_terlambat', 'time', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2583, 115, 'pengurangan_pulang', 'pengurangan_pulang', 'time', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2584, 115, 'total_time', 'total_time', 'time', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2585, 116, 'id_scanlog', 'id_scanlog', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2586, 116, 'bln_absen', 'bln_absen', 'number', '', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2587, 116, 'id_absensi', 'id_absensi', 'number', '', 'yes', 'yes', '', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2588, 116, 'skpd', 'skpd', 'input', '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2589, 116, 'nip', 'nip', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2590, 116, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2591, 116, 'hari', 'hari', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2592, 116, 'tgl', 'tgl', 'date', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2593, 116, 'jam_masuk', 'jam_masuk', 'time', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2594, 116, 'jam_pulang', 'jam_pulang', 'time', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2595, 116, 'status_masuk_versi_lama', 'status_masuk_versi_lama', 'input', '', 'yes', 'yes', '', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2596, 116, 'status_pulang_versi_lama', 'status_pulang_versi_lama', 'input', '', 'yes', 'yes', '', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2597, 116, 'status_masuk', 'status_masuk', 'input', 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2598, 116, 'pengurangan_terlambat', 'pengurangan_terlambat', 'time', 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (2599, 116, 'status_pulang', 'status_pulang', 'input', 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (2600, 116, 'pengurangan_pulang', 'pengurangan_pulang', 'time', 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (2601, 116, 'waktu_kerja_versi_lama', 'waktu_kerja_versi_lama', 'time', '', 'yes', 'yes', '', 17, '', '', '');
INSERT INTO `crud_field` VALUES (2602, 116, 'waktu_kerja_versi_lama2', 'waktu_kerja_versi_lama2', 'time', '', 'yes', 'yes', '', 18, '', '', '');
INSERT INTO `crud_field` VALUES (2603, 116, 'waktu_kerja', 'waktu_kerja', 'time', 'yes', 'yes', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (2604, 117, 'id_scanlog', 'id_scanlog', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2605, 117, 'bln', 'bln', 'number', '', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2606, 117, 'pin', 'pin', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2607, 117, 'nip', 'nip', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2608, 117, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2609, 117, 'skpd', 'skpd', 'input', '', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2610, 117, 'tanggal', 'tanggal', 'date', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2611, 117, 'scan_1', 'scan_1', 'time', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2612, 117, 'scan_2', 'scan_2', 'time', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2613, 117, 'scan_3', 'scan_3', 'time', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2614, 117, 'scan_4', 'scan_4', 'time', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2615, 117, 'scan_5', 'scan_5', 'time', 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2616, 117, 'scan_6', 'scan_6', 'time', 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2617, 117, 'scan_7', 'scan_7', 'time', 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (2618, 117, 'scan_8', 'scan_8', 'time', 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (2619, 117, 'scan_9', 'scan_9', 'time', 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (2620, 117, 'scan_10', 'scan_10', 'time', 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (2621, 117, 'scan_11', 'scan_11', 'time', 'yes', 'yes', 'yes', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (2632, 118, 'id_scanlog', 'id_scanlog', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2633, 118, 'bln', 'bln', 'number', '', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2634, 118, 'id_absensi', 'id_absensi', 'number', '', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2635, 118, 'kode', 'kode', 'input', '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2636, 118, 'nip', 'nip', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2637, 118, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2638, 118, 'tgl', 'tgl', 'date', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2639, 118, 'jam_masuk', 'jam_masuk', 'time', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2640, 118, 'status_masuk', 'status_masuk', 'input', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2641, 118, 'hari', 'hari', 'input', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2642, 119, 'id_scanlog', 'id_scanlog', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2643, 119, 'bln', 'bln', 'number', '', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2644, 119, 'id_absensi', 'id_absensi', 'number', '', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2645, 119, 'kode', 'kode', 'input', '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2646, 119, 'nip', 'nip', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2647, 119, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2648, 119, 'tgl', 'tgl', 'date', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2649, 119, 'jam_masuk', 'jam_masuk', 'time', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2650, 119, 'status_masuk', 'status_masuk', 'input', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2651, 119, 'hari', 'hari', 'input', 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2652, 120, 'id_absensi', 'id_absensi', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2653, 120, 'id_scanlog', 'id_scanlog', 'number', '', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2654, 120, 'bln', 'bln', 'number', '', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2655, 120, 'kode', 'kode', 'input', '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2656, 120, 'nip', 'nip', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2657, 120, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2658, 120, 'jumlah_kehadiran', 'jumlah_kehadiran', 'number', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2762, 121, 'id_permohonan', 'id_permohonan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2763, 121, 'pegawai_id', 'pegawai_id', 'input', '', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2764, 121, 'kd_skpd', 'kd_skpd', 'input', '', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2765, 121, 'jenis_permohonan', 'jenis_permohonan', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2766, 121, 'tgl_mulai', 'tgl_mulai', 'date', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2767, 121, 'tgl_selesai', 'tgl_selesai', 'date', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2768, 121, 'keterangan', 'keterangan', 'textarea', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2769, 121, 'acc', 'acc', 'number', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2770, 121, 'acc_ket', 'acc_ket', 'textarea', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2771, 121, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2772, 121, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2773, 121, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2774, 121, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2775, 122, 'id_permohonan', 'id_permohonan', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2776, 122, 'pegawai_id', 'pegawai_id', 'input', '', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2777, 122, 'kd_skpd', 'kd_skpd', 'input', '', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2778, 122, 'jenis_permohonan', 'jenis_permohonan', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2779, 122, 'tgl_mulai', 'tgl_mulai', 'date', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2780, 122, 'tgl_selesai', 'tgl_selesai', 'date', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2781, 122, 'keterangan', 'keterangan', 'editor_wysiwyg', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2782, 122, 'acc', 'acc', 'number', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2783, 122, 'acc_ket', 'acc_ket', 'editor_wysiwyg', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2784, 122, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2785, 122, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2786, 122, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2787, 122, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2788, 123, 'id_eselon', 'id_eselon', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2789, 123, 'eselon', 'eselon', 'number', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2790, 123, 'ruang', 'ruang', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2791, 123, 'nm_eselon', 'nm_eselon', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2792, 123, 'created_by', 'created_by', 'current_user_username', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2793, 123, 'creation_date', 'creation_date', 'timestamp', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2794, 123, 'last_updated_by', 'last_updated_by', 'current_user_username', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2795, 123, 'last_updated_date', 'last_updated_date', 'timestamp', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2796, 124, 'id_absensi', 'id_absensi', 'number', '', '', '', '', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2797, 124, 'tgl', 'tgl', 'date', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2798, 124, 'bln', 'bln', 'number', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2799, 124, 'kode', 'kode', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2800, 124, 'skpd', 'skpd', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2801, 124, 'hari', 'hari', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2802, 124, 'jumlah_pegawai', 'jumlah_pegawai', 'number', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2803, 124, 'jumlah_hadir', 'jumlah_hadir', 'number', 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2886, 126, 'id', 'id', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2887, 126, 'nik', 'nik', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2888, 126, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2889, 126, 'tempat_lahir', 'tempat_lahir', 'input', '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2890, 126, 'tgl_lahir', 'tgl_lahir', 'datetime', '', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2891, 126, 'jenis_kelamin', 'jenis_kelamin', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2892, 126, 'alamat', 'alamat', 'input', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2893, 126, 'status_hubungan', 'status_hubungan', 'input', '', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2894, 126, 'agama', 'agama', 'input', 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2895, 126, 'status_perkawinan', 'status_perkawinan', 'input', '', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2896, 126, 'kepemilikan_akte_perkawinan', 'kepemilikan_akte_perkawinan', 'input', '', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2897, 126, 'pendidikan_terakhir', 'pendidikan_terakhir', 'input', '', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2898, 126, 'jenis_pekerjaan', 'jenis_pekerjaan', 'input', '', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2899, 126, 'bidang_pekerjaan', 'bidang_pekerjaan', 'input', '', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (2900, 126, 'no_kk', 'no_kk', 'input', 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (2901, 126, 'kd_wilayah', 'kd_wilayah', 'select_multiple', '', 'yes', 'yes', 'yes', 16, 'wilayah', 'kd_wilayah', 'nama');
INSERT INTO `crud_field` VALUES (2934, 128, 'id', 'id', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2935, 128, 'kd_wilayah', 'kd_wilayah', 'input', '', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (2936, 128, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (2937, 128, 'jabatan', 'jabatan', 'custom_select_multiple', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (2938, 128, 'jenis_kelamin', 'jenis_kelamin', 'custom_select', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (2939, 128, 'usia', 'usia', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (2940, 128, 'agama', 'agama', 'custom_select_multiple', 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (2941, 128, 'pend_terakhir', 'pend_terakhir', 'custom_select_multiple', '', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (2942, 128, 'pekerjaan', 'pekerjaan', 'input', '', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (2943, 128, 'no_telp', 'no_telp', 'input', '', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (2944, 128, 'periode_mulai', 'periode_mulai', 'date', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (2945, 128, 'periode_selesai', 'periode_selesai', 'date', 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (2946, 128, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (2947, 128, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (2948, 128, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (2949, 128, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (3032, 129, 'id', 'id', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (3033, 129, 'kd_wilayah', 'Wilayah', 'select', '', 'yes', 'yes', 'yes', 2, 'wilayah', 'kd_wilayah', 'nama');
INSERT INTO `crud_field` VALUES (3034, 129, 'no', 'No.Surat', 'number', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (3035, 129, 'nik', 'NIK', 'input', '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (3036, 129, 'nama', 'Nama', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (3037, 129, 'tmpt_lahir', 'Tempat Lahir', 'input', '', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (3038, 129, 'tgl_lahir', 'Tanggal Lahir', 'date', '', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (3039, 129, 'agama', 'Agama', 'select', '', 'yes', 'yes', 'yes', 8, 'setup_agama', 'value', 'nama');
INSERT INTO `crud_field` VALUES (3040, 129, 'pekerjaan', 'Pekerjaan', 'input', '', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (3041, 129, 'alamat', 'Alamat', 'textarea', '', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (3042, 129, 'bukti_surat', 'Bukti Surat', 'custom_select', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (3043, 129, 'tanggal_surat', 'Tanggal Surat', 'date', 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (3044, 129, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (3045, 129, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (3046, 129, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (3047, 129, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (3068, 130, 'id', 'id', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (3069, 130, 'kd_wilayah', 'kd_wilayah', 'select', '', 'yes', 'yes', 'yes', 2, 'wilayah', 'kd_wilayah', 'nama');
INSERT INTO `crud_field` VALUES (3070, 130, 'nama', 'Nama', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (3071, 130, 'unsur_pem', 'Unsur Pemerintahan', 'custom_select', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (3072, 130, 'nip', 'NIP', 'input', '', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (3073, 130, 'jabatan', 'Jabatan', 'custom_select', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (3074, 130, 'jenis_kelamin', 'Jenis Kelamin', 'custom_select', '', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (3075, 130, 'tgl_lahir', 'Tanggal Lahir', 'date', '', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (3076, 130, 'agama', 'Agama', 'select', '', 'yes', 'yes', 'yes', 9, 'setup_agama', 'value', 'nama');
INSERT INTO `crud_field` VALUES (3077, 130, 'pend_terakhir', 'Pendidikan Terakhir', 'custom_select', '', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (3078, 130, 'pekerjaan', 'Pekerjaan', 'input', '', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (3079, 130, 'no_hp', 'Nomor HP', 'number', '', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (3080, 130, 'periode_mulai', 'Periode Mulai', 'date', '', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (3081, 130, 'periode_selesai', 'Periode Selesai', 'date', '', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (3082, 130, 'no_seq', 'No Urut', 'number', '', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (3083, 130, 'avatar', 'Foto', 'file', 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (3084, 130, 'created_by', 'created_by', 'current_user_username', '', 'yes', '', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (3085, 130, 'creation_date', 'creation_date', 'timestamp', '', 'yes', '', 'yes', 18, '', '', '');
INSERT INTO `crud_field` VALUES (3086, 130, 'last_updated_by', 'last_updated_by', 'current_user_username', '', '', 'yes', 'yes', 19, '', '', '');
INSERT INTO `crud_field` VALUES (3087, 130, 'last_updated_date', 'last_updated_date', 'timestamp', '', '', 'yes', 'yes', 20, '', '', '');
INSERT INTO `crud_field` VALUES (3094, 127, 'id', 'id', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (3095, 127, 'kd_wilayah', 'kd_wilayah', 'select_multiple', '', 'yes', 'yes', 'yes', 2, 'wilayah', 'kd_wilayah', 'nama');
INSERT INTO `crud_field` VALUES (3096, 127, 'alamat_kantor', 'alamat_kantor', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (3097, 127, 'latitude', 'latitude', 'input', '', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (3098, 127, 'longtitude', 'longtitude', 'input', '', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (3099, 127, 'luas', 'luas', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (3100, 127, 'utara', 'utara', 'input', '', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (3101, 127, 'timur', 'timur', 'input', '', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (3102, 127, 'selatan', 'selatan', 'input', '', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (3103, 127, 'barat', 'barat', 'input', '', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (3104, 127, 'sejarah', 'sejarah', 'editor_wysiwyg', 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (3105, 127, 'tahun_pembentukan', 'tahun_pembentukan', 'year', 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (3106, 127, 'dasar_hukum', 'dasar_hukum', 'editor_wysiwyg', '', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (3107, 127, 'kd_pos', 'kd_pos', 'input', 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (3108, 127, 'tipologi', 'tipologi', 'input', 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (3109, 127, 'foto', 'foto', 'file_multiple', '', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (3110, 125, 'id', 'id', 'number', '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (3111, 125, 'kd_wilayah', 'kd_wilayah', 'input', 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (3112, 125, 'nama', 'nama', 'input', 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (3113, 125, 'singkatan', 'singkatan', 'input', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (3114, 125, 'klasifikasi', 'klasifikasi', 'input', 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (3115, 125, 'kd_induk', 'kd_induk', 'input', 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for crud_field_validation
-- ----------------------------
DROP TABLE IF EXISTS `crud_field_validation`;
CREATE TABLE `crud_field_validation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4261 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of crud_field_validation
-- ----------------------------
BEGIN;
INSERT INTO `crud_field_validation` VALUES (1, 2, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2, 2, 1, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3, 3, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4, 3, 1, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (5, 4, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (6, 4, 1, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (7, 5, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (8, 5, 1, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (9, 6, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (10, 6, 1, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (11, 7, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (12, 7, 1, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (13, 8, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (14, 8, 1, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (15, 9, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (16, 9, 1, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (17, 10, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (18, 10, 1, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (19, 11, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (20, 12, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (21, 13, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (22, 13, 1, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (23, 14, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (24, 15, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (25, 15, 1, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (26, 16, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (27, 18, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (28, 18, 2, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (29, 19, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (30, 19, 2, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (31, 20, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (32, 20, 2, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (33, 21, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (34, 21, 2, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (35, 22, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (36, 22, 2, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (37, 23, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (38, 23, 2, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (39, 24, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (40, 24, 2, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (41, 25, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (42, 25, 2, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (43, 26, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (44, 26, 2, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (45, 27, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (46, 28, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (47, 29, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (48, 29, 2, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (49, 30, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (50, 31, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (51, 31, 2, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (52, 32, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (53, 34, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (54, 34, 3, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (55, 35, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (56, 35, 3, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (57, 36, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (58, 36, 3, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (59, 37, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (60, 37, 3, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (61, 38, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (62, 38, 3, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (63, 39, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (64, 39, 3, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (65, 40, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (66, 40, 3, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (67, 41, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (68, 41, 3, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (69, 42, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (70, 42, 3, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (71, 43, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (72, 44, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (73, 45, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (74, 45, 3, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (75, 46, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (76, 47, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (77, 47, 3, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (78, 48, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (79, 50, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (80, 50, 4, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (81, 51, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (82, 51, 4, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (83, 52, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (84, 52, 4, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (85, 53, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (86, 53, 4, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (87, 54, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (88, 54, 4, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (89, 55, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (90, 55, 4, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (91, 56, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (92, 56, 4, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (93, 57, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (94, 57, 4, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (95, 58, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (96, 58, 4, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (97, 59, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (98, 60, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (99, 61, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (100, 61, 4, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (101, 62, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (102, 63, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (103, 63, 4, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (104, 64, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (131, 82, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (132, 82, 5, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (133, 83, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (134, 83, 5, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (135, 84, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (136, 84, 5, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (137, 85, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (138, 85, 5, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (139, 86, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (140, 86, 5, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (141, 87, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (142, 87, 5, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (143, 88, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (144, 88, 5, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (145, 89, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (146, 89, 5, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (147, 90, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (148, 90, 5, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (149, 91, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (150, 92, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (151, 93, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (152, 93, 5, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (153, 94, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (154, 95, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (155, 95, 5, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (156, 96, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (267, 186, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (268, 186, 6, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (269, 187, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (270, 187, 6, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (271, 188, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (272, 188, 6, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (273, 189, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (274, 189, 6, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (275, 190, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (276, 190, 6, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (277, 191, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (278, 191, 6, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (279, 197, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (280, 197, 7, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (281, 198, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (282, 198, 7, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (283, 199, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (284, 199, 7, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (285, 200, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (286, 200, 7, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (287, 201, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (288, 201, 7, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (289, 202, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (290, 202, 7, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (291, 203, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (292, 203, 7, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (293, 204, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (294, 204, 7, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (295, 205, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (296, 206, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (297, 206, 7, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (298, 207, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (299, 209, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (300, 209, 8, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (301, 210, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (302, 210, 8, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (303, 211, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (304, 211, 8, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (305, 212, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (306, 212, 8, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (307, 213, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (308, 213, 8, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (309, 214, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (310, 214, 8, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (311, 215, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (312, 215, 8, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (313, 216, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (314, 216, 8, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (315, 217, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (316, 218, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (317, 218, 8, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (318, 219, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (319, 221, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (320, 221, 9, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (321, 222, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (322, 222, 9, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (323, 223, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (324, 223, 9, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (325, 224, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (326, 224, 9, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (327, 225, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (328, 225, 9, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (329, 226, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (330, 226, 9, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (331, 227, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (332, 227, 9, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (333, 228, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (334, 229, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (335, 229, 9, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (336, 230, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (337, 232, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (338, 232, 10, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (339, 233, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (340, 233, 10, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (341, 234, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (342, 234, 10, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (343, 235, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (344, 235, 10, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (345, 236, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (346, 236, 10, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (347, 237, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (348, 237, 10, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (349, 238, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (350, 238, 10, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (351, 239, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (352, 240, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (353, 240, 10, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (354, 241, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (355, 243, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (356, 243, 11, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (357, 244, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (358, 244, 11, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (359, 245, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (360, 245, 11, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (361, 246, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (362, 246, 11, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (363, 247, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (364, 247, 11, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (365, 248, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (366, 248, 11, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (367, 249, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (368, 249, 11, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (369, 250, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (370, 251, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (371, 251, 11, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (372, 252, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (373, 254, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (374, 254, 12, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (375, 255, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (376, 255, 12, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (377, 256, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (378, 256, 12, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (379, 257, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (380, 257, 12, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (381, 258, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (382, 258, 12, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (383, 259, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (384, 259, 12, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (385, 260, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (386, 260, 12, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (387, 261, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (388, 262, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (389, 262, 12, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (390, 263, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (391, 265, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (392, 265, 13, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (393, 266, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (394, 266, 13, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (395, 267, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (396, 267, 13, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (397, 268, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (398, 268, 13, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (399, 269, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (400, 269, 13, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (401, 270, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (402, 270, 13, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (403, 271, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (404, 271, 13, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (405, 272, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (406, 273, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (407, 273, 13, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (408, 274, 13, 'required', '');
INSERT INTO `crud_field_validation` VALUES (409, 276, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (410, 276, 14, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (411, 277, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (412, 277, 14, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (413, 278, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (414, 278, 14, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (415, 279, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (416, 279, 14, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (417, 280, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (418, 280, 14, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (419, 281, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (420, 281, 14, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (421, 282, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (422, 282, 14, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (423, 283, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (424, 284, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (425, 284, 14, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (426, 285, 14, 'required', '');
INSERT INTO `crud_field_validation` VALUES (427, 287, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (428, 287, 15, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (429, 288, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (430, 288, 15, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (431, 289, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (432, 289, 15, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (433, 290, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (434, 290, 15, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (435, 291, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (436, 291, 15, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (437, 292, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (438, 292, 15, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (439, 293, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (440, 293, 15, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (441, 294, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (442, 295, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (443, 295, 15, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (444, 296, 15, 'required', '');
INSERT INTO `crud_field_validation` VALUES (445, 298, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (446, 298, 16, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (447, 299, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (448, 299, 16, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (449, 300, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (450, 300, 16, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (451, 301, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (452, 301, 16, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (453, 302, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (454, 302, 16, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (455, 303, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (456, 303, 16, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (457, 304, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (458, 304, 16, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (459, 305, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (460, 306, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (461, 306, 16, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (462, 307, 16, 'required', '');
INSERT INTO `crud_field_validation` VALUES (463, 309, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (464, 309, 17, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (465, 310, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (466, 310, 17, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (467, 311, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (468, 311, 17, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (469, 312, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (470, 312, 17, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (471, 313, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (472, 313, 17, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (473, 314, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (474, 314, 17, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (475, 315, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (476, 315, 17, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (477, 316, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (478, 317, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (479, 317, 17, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (480, 318, 17, 'required', '');
INSERT INTO `crud_field_validation` VALUES (481, 320, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (482, 320, 18, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (483, 321, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (484, 321, 18, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (485, 322, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (486, 322, 18, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (487, 323, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (488, 323, 18, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (489, 324, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (490, 324, 18, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (491, 325, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (492, 325, 18, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (493, 326, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (494, 326, 18, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (495, 327, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (496, 328, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (497, 328, 18, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (498, 329, 18, 'required', '');
INSERT INTO `crud_field_validation` VALUES (499, 331, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (500, 331, 19, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (501, 332, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (502, 332, 19, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (503, 333, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (504, 333, 19, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (505, 334, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (506, 334, 19, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (507, 335, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (508, 335, 19, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (509, 336, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (510, 336, 19, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (511, 337, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (512, 337, 19, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (513, 338, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (514, 339, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (515, 339, 19, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (516, 340, 19, 'required', '');
INSERT INTO `crud_field_validation` VALUES (517, 342, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (518, 342, 20, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (519, 343, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (520, 343, 20, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (521, 344, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (522, 344, 20, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (523, 345, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (524, 345, 20, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (525, 346, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (526, 346, 20, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (527, 347, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (528, 347, 20, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (529, 348, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (530, 348, 20, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (531, 349, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (532, 350, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (533, 350, 20, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (534, 351, 20, 'required', '');
INSERT INTO `crud_field_validation` VALUES (535, 353, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (536, 353, 21, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (537, 354, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (538, 354, 21, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (539, 355, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (540, 355, 21, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (541, 356, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (542, 356, 21, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (543, 357, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (544, 357, 21, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (545, 358, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (546, 358, 21, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (547, 359, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (548, 359, 21, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (549, 360, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (550, 361, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (551, 361, 21, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (552, 362, 21, 'required', '');
INSERT INTO `crud_field_validation` VALUES (553, 364, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (554, 364, 22, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (555, 365, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (556, 365, 22, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (557, 366, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (558, 366, 22, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (559, 367, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (560, 367, 22, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (561, 368, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (562, 368, 22, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (563, 369, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (564, 369, 22, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (565, 370, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (566, 370, 22, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (567, 371, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (568, 372, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (569, 372, 22, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (570, 373, 22, 'required', '');
INSERT INTO `crud_field_validation` VALUES (589, 386, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (590, 386, 23, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (591, 387, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (592, 387, 23, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (593, 388, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (594, 388, 23, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (595, 389, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (596, 389, 23, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (597, 390, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (598, 390, 23, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (599, 391, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (600, 391, 23, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (601, 392, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (602, 392, 23, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (603, 393, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (604, 394, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (605, 394, 23, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (606, 395, 23, 'required', '');
INSERT INTO `crud_field_validation` VALUES (607, 397, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (608, 397, 24, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (609, 398, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (610, 398, 24, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (611, 399, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (612, 399, 24, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (613, 400, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (614, 400, 24, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (615, 401, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (616, 401, 24, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (617, 402, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (618, 402, 24, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (619, 403, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (620, 403, 24, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (621, 404, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (622, 405, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (623, 405, 24, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (624, 406, 24, 'required', '');
INSERT INTO `crud_field_validation` VALUES (625, 408, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (626, 408, 25, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (627, 409, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (628, 409, 25, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (629, 410, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (630, 410, 25, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (631, 411, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (632, 411, 25, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (633, 412, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (634, 412, 25, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (635, 413, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (636, 413, 25, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (637, 414, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (638, 414, 25, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (639, 415, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (640, 416, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (641, 416, 25, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (642, 417, 25, 'required', '');
INSERT INTO `crud_field_validation` VALUES (643, 419, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (644, 419, 26, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (645, 420, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (646, 421, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (647, 421, 26, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (648, 422, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (649, 422, 26, 'max_length', '64');
INSERT INTO `crud_field_validation` VALUES (650, 423, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (651, 423, 26, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (652, 424, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (653, 424, 26, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (654, 425, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (655, 426, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (656, 426, 26, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (657, 427, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (658, 427, 26, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (659, 428, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (660, 429, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (661, 430, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (662, 431, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (663, 432, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (664, 433, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (665, 434, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (666, 435, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (667, 435, 26, 'max_length', '16');
INSERT INTO `crud_field_validation` VALUES (668, 436, 26, 'required', '');
INSERT INTO `crud_field_validation` VALUES (727, 486, 27, 'required', '');
INSERT INTO `crud_field_validation` VALUES (728, 486, 27, 'max_length', '70');
INSERT INTO `crud_field_validation` VALUES (729, 487, 27, 'required', '');
INSERT INTO `crud_field_validation` VALUES (730, 487, 27, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (731, 488, 27, 'required', '');
INSERT INTO `crud_field_validation` VALUES (732, 488, 27, 'max_length', '500');
INSERT INTO `crud_field_validation` VALUES (733, 489, 27, 'required', '');
INSERT INTO `crud_field_validation` VALUES (734, 489, 27, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (735, 490, 27, 'required', '');
INSERT INTO `crud_field_validation` VALUES (736, 490, 27, 'max_length', '13');
INSERT INTO `crud_field_validation` VALUES (737, 491, 27, 'required', '');
INSERT INTO `crud_field_validation` VALUES (738, 491, 27, 'allowed_extension', 'jpg,png');
INSERT INTO `crud_field_validation` VALUES (739, 492, 27, 'required', '');
INSERT INTO `crud_field_validation` VALUES (740, 498, 28, 'required', '');
INSERT INTO `crud_field_validation` VALUES (741, 498, 28, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (742, 500, 29, 'required', '');
INSERT INTO `crud_field_validation` VALUES (743, 500, 29, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (744, 502, 30, 'required', '');
INSERT INTO `crud_field_validation` VALUES (745, 502, 30, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (746, 504, 31, 'required', '');
INSERT INTO `crud_field_validation` VALUES (747, 504, 31, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (748, 506, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (749, 506, 32, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (750, 507, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (751, 507, 32, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (752, 508, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (753, 508, 32, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (754, 509, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (755, 509, 32, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (756, 510, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (757, 510, 32, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (758, 511, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (759, 511, 32, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (760, 512, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (761, 512, 32, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (762, 513, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (763, 514, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (764, 514, 32, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (765, 515, 32, 'required', '');
INSERT INTO `crud_field_validation` VALUES (766, 517, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (767, 517, 33, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (768, 518, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (769, 518, 33, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (770, 519, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (771, 519, 33, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (772, 520, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (773, 520, 33, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (774, 521, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (775, 521, 33, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (776, 522, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (777, 522, 33, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (778, 523, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (779, 523, 33, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (780, 524, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (781, 525, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (782, 525, 33, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (783, 526, 33, 'required', '');
INSERT INTO `crud_field_validation` VALUES (784, 528, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (785, 528, 34, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (786, 529, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (787, 529, 34, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (788, 530, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (789, 530, 34, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (790, 531, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (791, 531, 34, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (792, 532, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (793, 532, 34, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (794, 533, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (795, 533, 34, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (796, 534, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (797, 534, 34, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (798, 535, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (799, 536, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (800, 536, 34, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (801, 537, 34, 'required', '');
INSERT INTO `crud_field_validation` VALUES (820, 550, 35, 'required', '');
INSERT INTO `crud_field_validation` VALUES (821, 550, 35, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (822, 551, 35, 'required', '');
INSERT INTO `crud_field_validation` VALUES (823, 551, 35, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (824, 552, 35, 'required', '');
INSERT INTO `crud_field_validation` VALUES (825, 552, 35, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (826, 553, 35, 'required', '');
INSERT INTO `crud_field_validation` VALUES (827, 553, 35, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (828, 554, 35, 'required', '');
INSERT INTO `crud_field_validation` VALUES (829, 554, 35, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (830, 555, 35, 'required', '');
INSERT INTO `crud_field_validation` VALUES (831, 555, 35, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (881, 597, 36, 'required', '');
INSERT INTO `crud_field_validation` VALUES (882, 597, 36, 'max_length', '70');
INSERT INTO `crud_field_validation` VALUES (883, 598, 36, 'required', '');
INSERT INTO `crud_field_validation` VALUES (884, 598, 36, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (885, 599, 36, 'required', '');
INSERT INTO `crud_field_validation` VALUES (886, 599, 36, 'max_length', '500');
INSERT INTO `crud_field_validation` VALUES (887, 600, 36, 'required', '');
INSERT INTO `crud_field_validation` VALUES (888, 600, 36, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (889, 601, 36, 'required', '');
INSERT INTO `crud_field_validation` VALUES (890, 601, 36, 'max_length', '13');
INSERT INTO `crud_field_validation` VALUES (891, 602, 36, 'required', '');
INSERT INTO `crud_field_validation` VALUES (892, 602, 36, 'allowed_extension', 'jpg,png,jpeg');
INSERT INTO `crud_field_validation` VALUES (893, 603, 36, 'required', '');
INSERT INTO `crud_field_validation` VALUES (894, 609, 37, 'required', '');
INSERT INTO `crud_field_validation` VALUES (895, 609, 37, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (896, 611, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (897, 611, 38, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (898, 612, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (899, 612, 38, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (900, 613, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (901, 613, 38, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (902, 614, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (903, 614, 38, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (904, 615, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (905, 615, 38, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (906, 616, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (907, 616, 38, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (908, 617, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (909, 617, 38, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (910, 618, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (911, 619, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (912, 619, 38, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (913, 620, 38, 'required', '');
INSERT INTO `crud_field_validation` VALUES (914, 622, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (915, 622, 39, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (916, 623, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (917, 623, 39, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (918, 624, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (919, 624, 39, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (920, 625, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (921, 625, 39, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (922, 626, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (923, 626, 39, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (924, 627, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (925, 627, 39, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (926, 628, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (927, 628, 39, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (928, 629, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (929, 630, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (930, 630, 39, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (931, 631, 39, 'required', '');
INSERT INTO `crud_field_validation` VALUES (932, 633, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (933, 633, 40, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (934, 634, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (935, 634, 40, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (936, 635, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (937, 635, 40, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (938, 636, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (939, 636, 40, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (940, 637, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (941, 637, 40, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (942, 638, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (943, 638, 40, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (944, 639, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (945, 639, 40, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (946, 640, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (947, 641, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (948, 641, 40, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (949, 642, 40, 'required', '');
INSERT INTO `crud_field_validation` VALUES (950, 644, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (951, 644, 41, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (952, 645, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (953, 645, 41, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (954, 646, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (955, 646, 41, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (956, 647, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (957, 647, 41, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (958, 648, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (959, 648, 41, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (960, 649, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (961, 649, 41, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (962, 650, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (963, 650, 41, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (964, 651, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (965, 652, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (966, 652, 41, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (967, 653, 41, 'required', '');
INSERT INTO `crud_field_validation` VALUES (968, 655, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (969, 655, 42, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (970, 656, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (971, 656, 42, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (972, 657, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (973, 657, 42, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (974, 658, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (975, 658, 42, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (976, 659, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (977, 659, 42, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (978, 660, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (979, 660, 42, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (980, 661, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (981, 661, 42, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (982, 662, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (983, 663, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (984, 663, 42, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (985, 664, 42, 'required', '');
INSERT INTO `crud_field_validation` VALUES (986, 666, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (987, 666, 43, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (988, 667, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (989, 667, 43, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (990, 668, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (991, 668, 43, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (992, 669, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (993, 669, 43, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (994, 670, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (995, 670, 43, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (996, 671, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (997, 671, 43, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (998, 672, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (999, 672, 43, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1000, 673, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1001, 674, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1002, 674, 43, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1003, 675, 43, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1004, 677, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1005, 677, 44, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1006, 678, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1007, 678, 44, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1008, 679, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1009, 679, 44, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1010, 680, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1011, 680, 44, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1012, 681, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1013, 681, 44, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1014, 682, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1015, 682, 44, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1016, 683, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1017, 683, 44, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1018, 684, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1019, 685, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1020, 685, 44, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1021, 686, 44, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1022, 688, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1023, 688, 45, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1024, 689, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1025, 689, 45, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1026, 690, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1027, 690, 45, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1028, 691, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1029, 691, 45, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1030, 692, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1031, 692, 45, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1032, 693, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1033, 693, 45, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1034, 694, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1035, 694, 45, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1036, 695, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1037, 696, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1038, 696, 45, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1039, 697, 45, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1040, 699, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1041, 699, 46, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1042, 700, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1043, 700, 46, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1044, 701, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1045, 701, 46, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1046, 702, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1047, 702, 46, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1048, 703, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1049, 703, 46, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1050, 704, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1051, 704, 46, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1052, 705, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1053, 705, 46, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1054, 706, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1055, 707, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1056, 707, 46, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1057, 708, 46, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1058, 710, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1059, 710, 47, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1060, 711, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1061, 711, 47, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1062, 712, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1063, 712, 47, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1064, 713, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1065, 713, 47, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1066, 714, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1067, 714, 47, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1068, 715, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1069, 715, 47, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1070, 716, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1071, 716, 47, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1072, 717, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1073, 718, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1074, 718, 47, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1075, 719, 47, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1076, 721, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1077, 721, 48, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1078, 722, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1079, 722, 48, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1080, 723, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1081, 723, 48, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1082, 724, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1083, 724, 48, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1084, 725, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1085, 725, 48, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1086, 726, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1087, 726, 48, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1088, 727, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1089, 727, 48, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1090, 728, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1091, 729, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1092, 729, 48, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1093, 730, 48, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1094, 732, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1095, 732, 49, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1096, 733, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1097, 733, 49, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1098, 734, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1099, 734, 49, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1100, 735, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1101, 735, 49, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1102, 736, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1103, 736, 49, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1104, 737, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1105, 737, 49, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1106, 738, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1107, 738, 49, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1108, 739, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1109, 740, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1110, 740, 49, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1111, 741, 49, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1112, 743, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1113, 743, 50, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1114, 744, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1115, 744, 50, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1116, 745, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1117, 745, 50, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1118, 746, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1119, 746, 50, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1120, 747, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1121, 747, 50, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1122, 748, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1123, 748, 50, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1124, 749, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1125, 749, 50, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1126, 750, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1127, 751, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1128, 751, 50, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1129, 752, 50, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1130, 754, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1131, 754, 51, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1132, 755, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1133, 755, 51, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1134, 756, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1135, 756, 51, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1136, 757, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1137, 757, 51, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1138, 758, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1139, 758, 51, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1140, 759, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1141, 759, 51, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1142, 760, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1143, 760, 51, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1144, 761, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1145, 762, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1146, 762, 51, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1147, 763, 51, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1148, 765, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1149, 765, 52, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1150, 766, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1151, 766, 52, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1152, 767, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1153, 767, 52, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1154, 768, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1155, 768, 52, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1156, 769, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1157, 769, 52, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1158, 770, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1159, 770, 52, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1160, 771, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1161, 771, 52, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1162, 772, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1163, 773, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1164, 773, 52, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1165, 774, 52, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1166, 776, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1167, 776, 53, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1168, 777, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1169, 777, 53, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1170, 778, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1171, 778, 53, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1172, 779, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1173, 779, 53, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1174, 780, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1175, 780, 53, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1176, 781, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1177, 781, 53, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1178, 782, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1179, 782, 53, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1180, 783, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1181, 784, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1182, 784, 53, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1183, 785, 53, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1184, 787, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1185, 787, 54, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1186, 788, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1187, 788, 54, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1188, 789, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1189, 789, 54, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1190, 790, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1191, 790, 54, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1192, 791, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1193, 791, 54, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1194, 792, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1195, 792, 54, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1196, 793, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1197, 793, 54, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1198, 794, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1199, 795, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1200, 795, 54, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1201, 796, 54, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1238, 820, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1239, 820, 55, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1240, 821, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1241, 821, 55, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1242, 822, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1243, 822, 55, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1244, 823, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1245, 823, 55, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1246, 824, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1247, 824, 55, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1248, 825, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1249, 825, 55, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1250, 826, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1251, 826, 55, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1252, 827, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1253, 828, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1254, 828, 55, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1255, 829, 55, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1256, 831, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1257, 831, 56, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1258, 832, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1259, 832, 56, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1260, 833, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1261, 833, 56, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1262, 834, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1263, 834, 56, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1264, 835, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1265, 835, 56, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1266, 836, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1267, 836, 56, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1268, 837, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1269, 837, 56, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1270, 838, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1271, 839, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1272, 839, 56, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1273, 840, 56, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1274, 842, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1275, 842, 57, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1276, 843, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1277, 843, 57, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1278, 844, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1279, 844, 57, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1280, 845, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1281, 845, 57, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1282, 846, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1283, 846, 57, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1284, 847, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1285, 847, 57, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1286, 848, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1287, 848, 57, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1288, 849, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1289, 850, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1290, 850, 57, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1291, 851, 57, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1292, 853, 58, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1293, 853, 58, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1294, 855, 59, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1295, 855, 59, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1296, 857, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1297, 857, 60, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1298, 858, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1299, 858, 60, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1300, 859, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1301, 859, 60, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1302, 860, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1303, 860, 60, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1304, 861, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1305, 861, 60, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1306, 862, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1307, 862, 60, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1308, 863, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1309, 863, 60, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1310, 864, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1311, 865, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1312, 865, 60, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1313, 866, 60, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1314, 868, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1315, 868, 61, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1316, 869, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1317, 869, 61, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1318, 870, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1319, 870, 61, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1320, 871, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1321, 871, 61, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1322, 872, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1323, 872, 61, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1324, 873, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1325, 873, 61, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1326, 874, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1327, 874, 61, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1328, 875, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1329, 876, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1330, 876, 61, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1331, 877, 61, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1332, 879, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1333, 879, 62, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1334, 880, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1335, 880, 62, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1336, 881, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1337, 881, 62, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1338, 882, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1339, 882, 62, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1340, 883, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1341, 883, 62, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1342, 884, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1343, 884, 62, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1344, 885, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1345, 885, 62, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1346, 886, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1347, 887, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1348, 887, 62, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1349, 888, 62, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1350, 890, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1351, 890, 63, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (1352, 891, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1353, 891, 63, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1354, 892, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1355, 892, 63, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1356, 893, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1357, 893, 63, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (1358, 894, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1359, 894, 63, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (1360, 895, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1361, 895, 63, 'max_length', '250');
INSERT INTO `crud_field_validation` VALUES (1362, 896, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1363, 896, 63, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1364, 897, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1365, 897, 63, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1366, 898, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1367, 898, 63, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1368, 899, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1369, 899, 63, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1370, 900, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1371, 900, 63, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1372, 901, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1373, 901, 63, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1374, 902, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1375, 902, 63, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1376, 903, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1377, 903, 63, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1378, 904, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1379, 904, 63, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1380, 905, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1381, 905, 63, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1382, 906, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1383, 906, 63, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1384, 907, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1385, 907, 63, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1386, 908, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1387, 908, 63, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1388, 909, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1389, 910, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1390, 910, 63, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1391, 911, 63, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1392, 913, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1393, 913, 64, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (1394, 914, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1395, 914, 64, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1396, 915, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1397, 915, 64, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1398, 916, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1399, 916, 64, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (1400, 917, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1401, 917, 64, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (1402, 918, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1403, 918, 64, 'max_length', '250');
INSERT INTO `crud_field_validation` VALUES (1404, 919, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1405, 919, 64, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1406, 920, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1407, 920, 64, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1408, 921, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1409, 921, 64, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1410, 922, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1411, 922, 64, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1412, 923, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1413, 923, 64, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1414, 924, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1415, 924, 64, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1416, 925, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1417, 925, 64, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1418, 926, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1419, 926, 64, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1420, 927, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1421, 927, 64, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1422, 928, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1423, 928, 64, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1424, 929, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1425, 929, 64, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1426, 930, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1427, 930, 64, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1428, 931, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1429, 931, 64, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1430, 932, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1431, 933, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1432, 933, 64, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1433, 934, 64, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1434, 936, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1435, 936, 65, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1436, 937, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1437, 937, 65, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1438, 938, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1439, 938, 65, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1440, 939, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1441, 939, 65, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1442, 940, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1443, 940, 65, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1444, 941, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1445, 941, 65, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1446, 942, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1447, 942, 65, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1448, 943, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1449, 944, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1450, 944, 65, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1451, 945, 65, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1452, 947, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1453, 947, 66, 'max_length', '70');
INSERT INTO `crud_field_validation` VALUES (1454, 948, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1455, 948, 66, 'max_length', '2083');
INSERT INTO `crud_field_validation` VALUES (1456, 948, 66, 'valid_url', '');
INSERT INTO `crud_field_validation` VALUES (1457, 949, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1458, 949, 66, 'max_length', '500');
INSERT INTO `crud_field_validation` VALUES (1459, 950, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1460, 950, 66, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (1461, 951, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1462, 951, 66, 'max_length', '13');
INSERT INTO `crud_field_validation` VALUES (1463, 952, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1464, 952, 66, 'allowed_extension', 'jpg,jpeg,png');
INSERT INTO `crud_field_validation` VALUES (1465, 953, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1466, 953, 66, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1467, 954, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1468, 954, 66, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1469, 955, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1470, 956, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1471, 956, 66, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1472, 957, 66, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1555, 1024, 67, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1556, 1024, 67, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (1557, 1025, 67, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1558, 1025, 67, 'max_length', '70');
INSERT INTO `crud_field_validation` VALUES (1559, 1026, 67, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1560, 1026, 67, 'max_length', '2083');
INSERT INTO `crud_field_validation` VALUES (1561, 1027, 67, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1562, 1027, 67, 'max_length', '500');
INSERT INTO `crud_field_validation` VALUES (1563, 1028, 67, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1564, 1028, 67, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (1565, 1029, 67, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1566, 1029, 67, 'max_length', '13');
INSERT INTO `crud_field_validation` VALUES (1567, 1030, 67, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1568, 1030, 67, 'allowed_extension', 'jpg,png,jpeg');
INSERT INTO `crud_field_validation` VALUES (1569, 1031, 67, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1570, 1037, 68, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1571, 1037, 68, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1572, 1038, 68, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1573, 1038, 68, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1574, 1039, 68, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1575, 1039, 68, 'allowed_extension', 'pdf,jpg,jpeg,png,zip,xlsx,xls,docx,doc');
INSERT INTO `crud_field_validation` VALUES (1576, 1040, 68, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1577, 1040, 68, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1578, 1041, 68, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1579, 1042, 68, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1580, 1042, 68, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1581, 1043, 68, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1594, 1053, 69, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1595, 1053, 69, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1596, 1054, 69, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1597, 1054, 69, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1598, 1055, 69, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1599, 1055, 69, 'allowed_extension', 'jpg,jpeg,png,xlsx,xls,docx,doc,pdf,zip,rar');
INSERT INTO `crud_field_validation` VALUES (1600, 1061, 70, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1601, 1061, 70, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1602, 1062, 70, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1603, 1062, 70, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1604, 1063, 70, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1605, 1064, 70, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1606, 1064, 70, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1607, 1065, 70, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1608, 1066, 70, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1609, 1066, 70, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1610, 1067, 70, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1611, 1069, 71, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1612, 1069, 71, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1613, 1070, 71, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1614, 1070, 71, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1615, 1071, 71, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1616, 1071, 71, 'allowed_extension', 'jpg,jpeg,png,xlsx,xls,docx,doc,pdf,zip,rar');
INSERT INTO `crud_field_validation` VALUES (1617, 1072, 71, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1618, 1072, 71, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1619, 1073, 71, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1620, 1074, 71, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1621, 1074, 71, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1622, 1075, 71, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1623, 1077, 72, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1624, 1077, 72, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1625, 1078, 72, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1626, 1078, 72, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1627, 1079, 72, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1628, 1080, 72, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1629, 1080, 72, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1630, 1081, 72, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1631, 1082, 72, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1632, 1082, 72, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1633, 1083, 72, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1634, 1085, 73, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1635, 1085, 73, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1636, 1086, 73, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1637, 1086, 73, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1638, 1087, 73, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1639, 1088, 73, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1640, 1088, 73, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1641, 1089, 73, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1642, 1090, 73, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1643, 1090, 73, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1644, 1091, 73, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1656, 1101, 74, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1657, 1101, 74, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1658, 1102, 74, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1659, 1102, 74, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1660, 1103, 74, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1661, 1109, 75, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1662, 1109, 75, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1663, 1110, 75, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1664, 1110, 75, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1665, 1111, 75, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1666, 1112, 75, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1667, 1112, 75, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1668, 1113, 75, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1669, 1114, 75, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1670, 1114, 75, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1671, 1115, 75, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1672, 1117, 76, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1673, 1117, 76, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1674, 1118, 76, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1675, 1118, 76, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1676, 1119, 76, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1677, 1120, 76, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1678, 1120, 76, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1679, 1121, 76, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1680, 1122, 76, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1681, 1122, 76, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1682, 1123, 76, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1701, 1141, 77, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1702, 1141, 77, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1703, 1142, 77, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1704, 1142, 77, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1705, 1143, 77, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1706, 1143, 77, 'allowed_extension', 'jpg,jpeg,png,xlsx,xls,docx,doc,pdf,zip,rar');
INSERT INTO `crud_field_validation` VALUES (1725, 1165, 78, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1726, 1165, 78, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1727, 1166, 78, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1728, 1166, 78, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1729, 1167, 78, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1730, 1167, 78, 'allowed_extension', 'jpg,jpeg,png,xlsx,xls,docx,doc,pdf,zip,rar');
INSERT INTO `crud_field_validation` VALUES (1731, 1173, 79, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1732, 1173, 79, 'max_length', '16');
INSERT INTO `crud_field_validation` VALUES (1733, 1174, 79, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1734, 1174, 79, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1735, 1175, 79, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1736, 1175, 79, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1737, 1176, 79, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1738, 1177, 79, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1739, 1177, 79, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1740, 1178, 79, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1741, 1179, 79, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1742, 1179, 79, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1743, 1180, 79, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1744, 1182, 80, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1745, 1182, 80, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1746, 1183, 80, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1747, 1183, 80, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1748, 1184, 80, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1749, 1184, 80, 'allowed_extension', 'jpg,jpeg,png,xlsx,xls,docx,doc,pdf,zip,rar');
INSERT INTO `crud_field_validation` VALUES (1750, 1185, 80, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1751, 1185, 80, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1752, 1186, 80, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1753, 1187, 80, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1754, 1187, 80, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1755, 1188, 80, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1756, 1190, 81, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1757, 1190, 81, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1758, 1191, 81, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1759, 1191, 81, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1760, 1192, 81, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1761, 1192, 81, 'allowed_extension', 'jpg,jpeg,png,xlsx,xls,docx,doc,pdf,zip,rar');
INSERT INTO `crud_field_validation` VALUES (1762, 1193, 81, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1763, 1193, 81, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1764, 1194, 81, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1765, 1195, 81, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1766, 1195, 81, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1767, 1196, 81, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1768, 1198, 82, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1769, 1198, 82, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1770, 1199, 82, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1771, 1199, 82, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1772, 1200, 82, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1773, 1200, 82, 'allowed_extension', 'jpg,jpeg,png,xlsx,xls,docx,doc,pdf,zip,rar');
INSERT INTO `crud_field_validation` VALUES (1774, 1201, 82, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1775, 1201, 82, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1776, 1202, 82, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1777, 1203, 82, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1778, 1203, 82, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1779, 1204, 82, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1780, 1206, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1781, 1206, 83, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1782, 1207, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1783, 1207, 83, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1784, 1208, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1785, 1208, 83, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1786, 1209, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1787, 1209, 83, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1788, 1210, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1789, 1210, 83, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1790, 1211, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1791, 1211, 83, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1792, 1212, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1793, 1212, 83, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1794, 1213, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1795, 1214, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1796, 1214, 83, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1797, 1215, 83, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1847, 1256, 84, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1848, 1256, 84, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1849, 1257, 84, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1850, 1257, 84, 'max_length', '70');
INSERT INTO `crud_field_validation` VALUES (1851, 1258, 84, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1852, 1258, 84, 'max_length', '2083');
INSERT INTO `crud_field_validation` VALUES (1853, 1259, 84, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1854, 1259, 84, 'max_length', '500');
INSERT INTO `crud_field_validation` VALUES (1855, 1260, 84, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1856, 1260, 84, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (1857, 1261, 84, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1858, 1261, 84, 'max_length', '13');
INSERT INTO `crud_field_validation` VALUES (1859, 1262, 84, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1860, 1263, 84, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1861, 1269, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1862, 1269, 85, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1863, 1270, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1864, 1270, 85, 'max_length', '70');
INSERT INTO `crud_field_validation` VALUES (1865, 1271, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1866, 1271, 85, 'max_length', '2083');
INSERT INTO `crud_field_validation` VALUES (1867, 1272, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1868, 1272, 85, 'max_length', '500');
INSERT INTO `crud_field_validation` VALUES (1869, 1273, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1870, 1273, 85, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (1871, 1274, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1872, 1274, 85, 'max_length', '13');
INSERT INTO `crud_field_validation` VALUES (1873, 1275, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1874, 1275, 85, 'allowed_extension', 'jpg,png,jpeg');
INSERT INTO `crud_field_validation` VALUES (1875, 1276, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1876, 1276, 85, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1877, 1277, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1878, 1277, 85, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1879, 1278, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1880, 1279, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1881, 1279, 85, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1882, 1280, 85, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1883, 1282, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1884, 1282, 86, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1885, 1283, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1886, 1283, 86, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1887, 1284, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1888, 1284, 86, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1889, 1285, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1890, 1285, 86, 'max_length', '19');
INSERT INTO `crud_field_validation` VALUES (1891, 1286, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1892, 1286, 86, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (1893, 1287, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1894, 1287, 86, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (1895, 1288, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1896, 1288, 86, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1897, 1289, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1898, 1290, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1899, 1290, 86, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (1900, 1291, 86, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1923, 1306, 87, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1924, 1306, 87, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1925, 1307, 87, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1926, 1307, 87, 'max_length', '70');
INSERT INTO `crud_field_validation` VALUES (1927, 1308, 87, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1928, 1308, 87, 'max_length', '2083');
INSERT INTO `crud_field_validation` VALUES (1929, 1309, 87, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1930, 1309, 87, 'max_length', '500');
INSERT INTO `crud_field_validation` VALUES (1931, 1310, 87, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1932, 1310, 87, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (1933, 1311, 87, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1934, 1311, 87, 'max_length', '13');
INSERT INTO `crud_field_validation` VALUES (1935, 1312, 87, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1936, 1312, 87, 'allowed_extension', 'jpg,png,jpeg');
INSERT INTO `crud_field_validation` VALUES (1937, 1313, 87, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1950, 1327, 88, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1951, 1327, 88, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (1952, 1328, 88, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1953, 1328, 88, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (1954, 1329, 88, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1955, 1329, 88, 'allowed_extension', 'jpg,jpeg,png,xlsx,xls,docx,doc,pdf,zip,rar');
INSERT INTO `crud_field_validation` VALUES (1970, 1344, 89, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1971, 1344, 89, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (1972, 1345, 89, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1973, 1345, 89, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (1974, 1346, 89, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1975, 1346, 89, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (1976, 1347, 89, 'required', '');
INSERT INTO `crud_field_validation` VALUES (1977, 1347, 89, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (2024, 1398, 90, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2025, 1398, 90, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2026, 1399, 90, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2027, 1399, 90, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (2028, 1400, 90, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2029, 1400, 90, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2030, 1401, 90, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2031, 1401, 90, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2032, 1407, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2033, 1407, 91, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2034, 1408, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2035, 1408, 91, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (2036, 1409, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2037, 1409, 91, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (2038, 1410, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2039, 1410, 91, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2040, 1411, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2041, 1411, 91, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2042, 1412, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2043, 1412, 91, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (2044, 1413, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2045, 1414, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2046, 1414, 91, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (2047, 1415, 91, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2048, 1417, 92, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2049, 1417, 92, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2050, 1419, 93, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2051, 1419, 93, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2052, 1421, 94, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2053, 1421, 94, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2116, 1483, 95, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2117, 1483, 95, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (2118, 1484, 95, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2119, 1484, 95, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (2120, 1485, 95, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2121, 1485, 95, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (2122, 1486, 95, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2123, 1487, 95, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2124, 1487, 95, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2125, 1493, 96, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2126, 1493, 96, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2127, 1494, 96, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2128, 1494, 96, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2129, 1495, 96, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2130, 1495, 96, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (2131, 1496, 96, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2132, 1496, 96, 'max_length', '2000');
INSERT INTO `crud_field_validation` VALUES (2133, 1497, 96, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2134, 1497, 96, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (2135, 1498, 96, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2136, 1499, 96, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2137, 1499, 96, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (2138, 1500, 96, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2155, 1512, 97, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2156, 1512, 97, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (2157, 1513, 97, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2158, 1513, 97, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (2159, 1514, 97, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2160, 1514, 97, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (2161, 1515, 97, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2162, 1515, 97, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2163, 1516, 97, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2164, 1516, 97, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2179, 1531, 98, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2180, 1531, 98, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2181, 1532, 98, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2182, 1532, 98, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2183, 1533, 98, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2184, 1533, 98, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (2185, 1534, 98, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2186, 1534, 98, 'max_length', '2000');
INSERT INTO `crud_field_validation` VALUES (2223, 1570, 99, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2224, 1570, 99, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2225, 1571, 99, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2226, 1571, 99, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2227, 1572, 99, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2228, 1572, 99, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (2229, 1573, 99, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2230, 1573, 99, 'max_length', '2000');
INSERT INTO `crud_field_validation` VALUES (2231, 1574, 99, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2325, 1658, 100, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2326, 1658, 100, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (2327, 1659, 100, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2328, 1659, 100, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (2329, 1660, 100, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2330, 1660, 100, 'max_length', '18');
INSERT INTO `crud_field_validation` VALUES (2331, 1661, 100, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (2332, 1662, 100, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (2333, 1663, 100, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (2334, 1664, 100, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2335, 1665, 100, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2336, 1667, 100, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2337, 1668, 100, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2338, 1669, 100, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2339, 1670, 100, 'max_length', '1000');
INSERT INTO `crud_field_validation` VALUES (2340, 1671, 100, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (2341, 1672, 100, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2342, 1673, 100, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2343, 1674, 100, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2344, 1675, 100, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2345, 1676, 100, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2346, 1677, 100, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2347, 1678, 100, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2864, 2022, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2865, 2022, 101, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (2866, 2023, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2867, 2023, 101, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (2868, 2024, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2869, 2024, 101, 'max_length', '18');
INSERT INTO `crud_field_validation` VALUES (2870, 2025, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2871, 2025, 101, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (2872, 2026, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2873, 2026, 101, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (2874, 2027, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2875, 2027, 101, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (2876, 2028, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2877, 2028, 101, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2878, 2029, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2879, 2029, 101, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2880, 2030, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2881, 2031, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2882, 2032, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2883, 2032, 101, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2884, 2033, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2885, 2034, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2886, 2034, 101, 'max_length', '1000');
INSERT INTO `crud_field_validation` VALUES (2887, 2035, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2888, 2035, 101, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (2889, 2036, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2890, 2036, 101, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2891, 2037, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2892, 2038, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2893, 2038, 101, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2894, 2039, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2895, 2039, 101, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2896, 2040, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2897, 2040, 101, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2898, 2041, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2899, 2041, 101, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2900, 2042, 101, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2901, 2042, 101, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2924, 2061, 102, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2925, 2061, 102, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2926, 2062, 102, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2927, 2062, 102, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2928, 2063, 102, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2929, 2063, 102, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (2930, 2064, 102, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (2931, 2065, 102, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (2932, 2066, 102, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (2933, 2067, 102, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2934, 2068, 102, 'max_length', '255');
INSERT INTO `crud_field_validation` VALUES (2935, 2074, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2936, 2074, 103, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (2937, 2075, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2938, 2075, 103, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2939, 2076, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2940, 2076, 103, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (2941, 2077, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2942, 2078, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2943, 2078, 103, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (2944, 2079, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2945, 2079, 103, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (2946, 2080, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2947, 2080, 103, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2948, 2081, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2949, 2082, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2950, 2082, 103, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (2951, 2083, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2952, 2084, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2953, 2084, 103, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (2954, 2085, 103, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2989, 2113, 104, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2990, 2113, 104, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (2991, 2114, 104, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2992, 2114, 104, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (2993, 2115, 104, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2994, 2115, 104, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (2995, 2116, 104, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2996, 2117, 104, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2997, 2117, 104, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (2998, 2118, 104, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2999, 2118, 104, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (3000, 2119, 104, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3001, 2119, 104, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3002, 2120, 104, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3036, 2152, 105, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3037, 2152, 105, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3038, 2153, 105, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3039, 2153, 105, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3040, 2154, 105, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3041, 2155, 105, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3042, 2155, 105, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (3043, 2156, 105, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3044, 2156, 105, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (3045, 2157, 105, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3046, 2157, 105, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (3047, 2158, 105, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3048, 2159, 105, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3219, 2275, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3220, 2275, 106, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3221, 2276, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3222, 2276, 106, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3223, 2277, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3224, 2277, 106, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3225, 2278, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3226, 2278, 106, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (3227, 2279, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3228, 2279, 106, 'max_length', '25');
INSERT INTO `crud_field_validation` VALUES (3229, 2280, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3230, 2281, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3231, 2281, 106, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3232, 2282, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3233, 2283, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3234, 2283, 106, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3235, 2284, 106, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3286, 2318, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3287, 2318, 107, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (3288, 2319, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3289, 2319, 107, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3290, 2320, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3291, 2320, 107, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3292, 2321, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3293, 2321, 107, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3294, 2322, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3295, 2322, 107, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3296, 2323, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3297, 2323, 107, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (3298, 2324, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3299, 2324, 107, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3300, 2325, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3301, 2325, 107, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (3302, 2326, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3303, 2326, 107, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3304, 2327, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3305, 2327, 107, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (3306, 2328, 107, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3307, 2328, 107, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3378, 2376, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3379, 2376, 108, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (3380, 2377, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3381, 2377, 108, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3382, 2378, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3383, 2378, 108, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3384, 2379, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3385, 2379, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3386, 2380, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3387, 2380, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3388, 2381, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3389, 2381, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3390, 2382, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3391, 2382, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3392, 2383, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3393, 2383, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3394, 2384, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3395, 2384, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3396, 2385, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3397, 2385, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3398, 2386, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3399, 2386, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3400, 2387, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3401, 2387, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3402, 2388, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3403, 2388, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3404, 2389, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3405, 2389, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3406, 2390, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3407, 2390, 108, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3408, 2391, 108, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3409, 2391, 108, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3465, 2433, 109, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3466, 2433, 109, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (3467, 2434, 109, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3468, 2434, 109, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3469, 2435, 109, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3470, 2435, 109, 'less_than_equal_to', '12');
INSERT INTO `crud_field_validation` VALUES (3471, 2435, 109, 'greater_than_equal_to', '1');
INSERT INTO `crud_field_validation` VALUES (3472, 2436, 109, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3473, 2436, 109, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3474, 2437, 109, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3475, 2437, 109, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3476, 2438, 109, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3477, 2438, 109, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3478, 2439, 109, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3479, 2439, 109, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3480, 2445, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3481, 2445, 110, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3482, 2446, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3483, 2446, 110, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3484, 2447, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3485, 2447, 110, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3486, 2448, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3487, 2448, 110, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3488, 2449, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3489, 2449, 110, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3490, 2450, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3491, 2450, 110, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3492, 2451, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3493, 2451, 110, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3494, 2452, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3495, 2452, 110, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3496, 2453, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3497, 2454, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3498, 2454, 110, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3499, 2455, 110, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3540, 2492, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3541, 2492, 111, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3542, 2493, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3543, 2493, 111, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3544, 2494, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3545, 2495, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3546, 2496, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3547, 2497, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3548, 2498, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3549, 2499, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3550, 2500, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3551, 2501, 111, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3552, 2502, 112, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3553, 2502, 112, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3554, 2504, 112, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3555, 2504, 112, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3556, 2505, 112, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3557, 2505, 112, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3558, 2506, 112, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3559, 2507, 112, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3560, 2508, 112, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3593, 2534, 113, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3594, 2534, 113, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3595, 2535, 113, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3596, 2535, 113, 'max_length', '17');
INSERT INTO `crud_field_validation` VALUES (3597, 2536, 113, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3598, 2537, 113, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3599, 2537, 113, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3600, 2538, 113, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3601, 2539, 113, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3602, 2540, 113, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3625, 2561, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3626, 2561, 114, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3627, 2564, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3628, 2564, 114, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3629, 2565, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3630, 2566, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3631, 2567, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3632, 2568, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3633, 2569, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3634, 2570, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3635, 2571, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3636, 2572, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3637, 2573, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3638, 2574, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3639, 2575, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3640, 2576, 114, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3641, 2578, 115, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3642, 2578, 115, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3643, 2579, 115, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3644, 2579, 115, 'max_length', '17');
INSERT INTO `crud_field_validation` VALUES (3645, 2580, 115, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3646, 2580, 115, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3647, 2581, 115, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3648, 2581, 115, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3649, 2582, 115, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3650, 2583, 115, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3651, 2584, 115, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3652, 2586, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3653, 2586, 116, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3654, 2587, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3655, 2587, 116, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3656, 2588, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3657, 2588, 116, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3658, 2589, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3659, 2589, 116, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3660, 2590, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3661, 2590, 116, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3662, 2591, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3663, 2591, 116, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3664, 2592, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3665, 2593, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3666, 2594, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3667, 2595, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3668, 2595, 116, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3669, 2596, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3670, 2596, 116, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3671, 2597, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3672, 2597, 116, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3673, 2598, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3674, 2599, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3675, 2599, 116, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3676, 2600, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3677, 2601, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3678, 2602, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3679, 2603, 116, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3680, 2605, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3681, 2605, 117, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (3682, 2606, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3683, 2606, 117, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3684, 2607, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3685, 2607, 117, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3686, 2608, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3687, 2608, 117, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3688, 2609, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3689, 2609, 117, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3690, 2610, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3691, 2611, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3692, 2612, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3693, 2613, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3694, 2614, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3695, 2615, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3696, 2616, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3697, 2617, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3698, 2618, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3699, 2619, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3700, 2620, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3701, 2621, 117, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3718, 2633, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3719, 2633, 118, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3720, 2634, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3721, 2634, 118, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3722, 2635, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3723, 2635, 118, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3724, 2636, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3725, 2636, 118, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3726, 2637, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3727, 2637, 118, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3728, 2638, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3729, 2639, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3730, 2640, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3731, 2640, 118, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3732, 2641, 118, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3733, 2641, 118, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3734, 2643, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3735, 2643, 119, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3736, 2644, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3737, 2644, 119, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3738, 2645, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3739, 2645, 119, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3740, 2646, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3741, 2646, 119, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3742, 2647, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3743, 2647, 119, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3744, 2648, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3745, 2649, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3746, 2650, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3747, 2650, 119, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3748, 2651, 119, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3749, 2651, 119, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3750, 2653, 120, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3751, 2653, 120, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3752, 2654, 120, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3753, 2654, 120, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3754, 2655, 120, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3755, 2655, 120, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3756, 2656, 120, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3757, 2656, 120, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3758, 2657, 120, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3759, 2657, 120, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3760, 2658, 120, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3761, 2658, 120, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3853, 2763, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3854, 2763, 121, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3855, 2764, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3856, 2764, 121, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (3857, 2765, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3858, 2765, 121, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3859, 2766, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3860, 2767, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3861, 2768, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3862, 2769, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3863, 2769, 121, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3864, 2770, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3865, 2771, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3866, 2771, 121, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3867, 2772, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3868, 2773, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3869, 2773, 121, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3870, 2774, 121, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3871, 2776, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3872, 2776, 122, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3873, 2777, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3874, 2777, 122, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (3875, 2778, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3876, 2778, 122, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (3877, 2779, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3878, 2780, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3879, 2782, 122, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3880, 2784, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3881, 2784, 122, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3882, 2785, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3883, 2786, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3884, 2786, 122, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3885, 2787, 122, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3886, 2789, 123, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3887, 2789, 123, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (3888, 2790, 123, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3889, 2790, 123, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (3890, 2791, 123, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3891, 2791, 123, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (3892, 2792, 123, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3893, 2792, 123, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3894, 2793, 123, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3895, 2794, 123, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3896, 2794, 123, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3897, 2795, 123, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3898, 2797, 124, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3899, 2798, 124, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3900, 2798, 124, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3901, 2799, 124, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3902, 2799, 124, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (3903, 2800, 124, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3904, 2800, 124, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3905, 2801, 124, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3906, 2801, 124, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (3907, 2802, 124, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3908, 2802, 124, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (3909, 2803, 124, 'required', '');
INSERT INTO `crud_field_validation` VALUES (3910, 2803, 124, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (4050, 2887, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4051, 2887, 126, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (4052, 2888, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4053, 2888, 126, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (4054, 2889, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4055, 2889, 126, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4056, 2890, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4057, 2891, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4058, 2891, 126, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (4059, 2892, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4060, 2892, 126, 'max_length', '200');
INSERT INTO `crud_field_validation` VALUES (4061, 2893, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4062, 2893, 126, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (4063, 2894, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4064, 2894, 126, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (4065, 2895, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4066, 2895, 126, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (4067, 2896, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4068, 2896, 126, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4069, 2897, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4070, 2897, 126, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (4071, 2898, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4072, 2898, 126, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4073, 2899, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4074, 2900, 126, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4075, 2900, 126, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4106, 2935, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4107, 2935, 128, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4108, 2936, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4109, 2936, 128, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4110, 2937, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4111, 2938, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4112, 2938, 128, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (4113, 2939, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4114, 2939, 128, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (4115, 2940, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4116, 2940, 128, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4117, 2941, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4118, 2941, 128, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4119, 2942, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4120, 2942, 128, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4121, 2943, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4122, 2943, 128, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (4123, 2944, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4124, 2945, 128, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4125, 2946, 128, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4126, 2948, 128, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4175, 3033, 129, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4176, 3033, 129, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4177, 3034, 129, 'valid_number', '');
INSERT INTO `crud_field_validation` VALUES (4178, 3035, 129, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4179, 3042, 129, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4180, 3043, 129, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4206, 3069, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4207, 3069, 130, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4208, 3070, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4209, 3070, 130, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4210, 3071, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4211, 3072, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4212, 3072, 130, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4213, 3073, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4214, 3074, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4215, 3075, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4216, 3076, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4217, 3077, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4218, 3078, 130, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4219, 3079, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4220, 3079, 130, 'max_length', '13');
INSERT INTO `crud_field_validation` VALUES (4221, 3080, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4222, 3081, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4223, 3082, 130, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4224, 3082, 130, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (4225, 3083, 130, 'allowed_extension', 'jpg,jpeg,png');
INSERT INTO `crud_field_validation` VALUES (4226, 3083, 130, 'max_size', '2000');
INSERT INTO `crud_field_validation` VALUES (4237, 3095, 127, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4238, 3095, 127, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4239, 3096, 127, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4240, 3096, 127, 'max_length', '100');
INSERT INTO `crud_field_validation` VALUES (4241, 3097, 127, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (4242, 3098, 127, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (4243, 3099, 127, 'max_length', '12');
INSERT INTO `crud_field_validation` VALUES (4244, 3100, 127, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4245, 3101, 127, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4246, 3102, 127, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4247, 3103, 127, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4248, 3105, 127, 'max_length', '4');
INSERT INTO `crud_field_validation` VALUES (4249, 3107, 127, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4250, 3107, 127, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (4251, 3108, 127, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4252, 3109, 127, 'allowed_extension', 'jpeg,jpg,png');
INSERT INTO `crud_field_validation` VALUES (4253, 3109, 127, 'max_size', '2000');
INSERT INTO `crud_field_validation` VALUES (4254, 3111, 125, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4255, 3111, 125, 'max_length', '50');
INSERT INTO `crud_field_validation` VALUES (4256, 3112, 125, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4257, 3112, 125, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4258, 3114, 125, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4259, 3114, 125, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (4260, 3115, 125, 'max_length', '50');
COMMIT;

-- ----------------------------
-- Table structure for crud_input_type
-- ----------------------------
DROP TABLE IF EXISTS `crud_input_type`;
CREATE TABLE `crud_input_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `custom_value` int(11) NOT NULL,
  `validation_group` varchar(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of crud_input_type
-- ----------------------------
BEGIN;
INSERT INTO `crud_input_type` VALUES (1, 'input', '0', 0, 'input');
INSERT INTO `crud_input_type` VALUES (2, 'textarea', '0', 0, 'text');
INSERT INTO `crud_input_type` VALUES (3, 'select', '1', 0, 'select');
INSERT INTO `crud_input_type` VALUES (4, 'editor_wysiwyg', '0', 0, 'editor');
INSERT INTO `crud_input_type` VALUES (5, 'password', '0', 0, 'password');
INSERT INTO `crud_input_type` VALUES (6, 'email', '0', 0, 'email');
INSERT INTO `crud_input_type` VALUES (7, 'address_map', '0', 0, 'address_map');
INSERT INTO `crud_input_type` VALUES (8, 'file', '0', 0, 'file');
INSERT INTO `crud_input_type` VALUES (9, 'file_multiple', '0', 0, 'file_multiple');
INSERT INTO `crud_input_type` VALUES (10, 'datetime', '0', 0, 'datetime');
INSERT INTO `crud_input_type` VALUES (11, 'date', '0', 0, 'date');
INSERT INTO `crud_input_type` VALUES (12, 'timestamp', '0', 0, 'timestamp');
INSERT INTO `crud_input_type` VALUES (13, 'number', '0', 0, 'number');
INSERT INTO `crud_input_type` VALUES (14, 'yes_no', '0', 0, 'yes_no');
INSERT INTO `crud_input_type` VALUES (15, 'time', '0', 0, 'time');
INSERT INTO `crud_input_type` VALUES (16, 'year', '0', 0, 'year');
INSERT INTO `crud_input_type` VALUES (17, 'select_multiple', '1', 0, 'select_multiple');
INSERT INTO `crud_input_type` VALUES (18, 'checkboxes', '1', 0, 'checkboxes');
INSERT INTO `crud_input_type` VALUES (19, 'options', '1', 0, 'options');
INSERT INTO `crud_input_type` VALUES (20, 'true_false', '0', 0, 'true_false');
INSERT INTO `crud_input_type` VALUES (21, 'current_user_username', '0', 0, 'user_username');
INSERT INTO `crud_input_type` VALUES (22, 'current_user_id', '0', 0, 'current_user_id');
INSERT INTO `crud_input_type` VALUES (23, 'custom_option', '0', 1, 'custom_option');
INSERT INTO `crud_input_type` VALUES (24, 'custom_checkbox', '0', 1, 'custom_checkbox');
INSERT INTO `crud_input_type` VALUES (25, 'custom_select_multiple', '0', 1, 'custom_select_multiple');
INSERT INTO `crud_input_type` VALUES (26, 'custom_select', '0', 1, 'custom_select');
COMMIT;

-- ----------------------------
-- Table structure for crud_input_validation
-- ----------------------------
DROP TABLE IF EXISTS `crud_input_validation`;
CREATE TABLE `crud_input_validation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `validation` varchar(200) NOT NULL,
  `input_able` varchar(20) NOT NULL,
  `group_input` text NOT NULL,
  `input_placeholder` text NOT NULL,
  `call_back` varchar(10) NOT NULL,
  `input_validation` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of crud_input_validation
-- ----------------------------
BEGIN;
INSERT INTO `crud_input_validation` VALUES (1, 'required', 'no', 'input, file, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes, true_false, address_map, custom_option, custom_checkbox, custom_select_multiple, custom_select, file_multiple', '', '', '');
INSERT INTO `crud_input_validation` VALUES (2, 'max_length', 'yes', 'input, number, text, select, password, email, editor, yes_no, time, year, select_multiple, options, checkboxes, address_map', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (3, 'min_length', 'yes', 'input, number, text, select, password, email, editor, time, year, select_multiple, address_map', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (4, 'valid_email', 'no', 'input, email', '', '', '');
INSERT INTO `crud_input_validation` VALUES (5, 'valid_emails', 'no', 'input, email', '', '', '');
INSERT INTO `crud_input_validation` VALUES (6, 'regex', 'yes', 'input, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes', '', 'yes', 'callback_valid_regex');
INSERT INTO `crud_input_validation` VALUES (7, 'decimal', 'no', 'input, number, text, select', '', '', '');
INSERT INTO `crud_input_validation` VALUES (8, 'allowed_extension', 'yes', 'file, file_multiple', 'ex : jpg,png,..', '', 'callback_valid_extension_list');
INSERT INTO `crud_input_validation` VALUES (9, 'max_width', 'yes', 'file, file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (10, 'max_height', 'yes', 'file, file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (11, 'max_size', 'yes', 'file, file_multiple', '... kb', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (12, 'max_item', 'yes', 'file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (13, 'valid_url', 'no', 'input, text', '', '', '');
INSERT INTO `crud_input_validation` VALUES (14, 'alpha', 'no', 'input, text, select, password, editor, yes_no', '', '', '');
INSERT INTO `crud_input_validation` VALUES (15, 'alpha_numeric', 'no', 'input, number, text, select, password, editor', '', '', '');
INSERT INTO `crud_input_validation` VALUES (16, 'alpha_numeric_spaces', 'no', 'input, number, text,select, password, editor', '', '', '');
INSERT INTO `crud_input_validation` VALUES (17, 'valid_number', 'no', 'input, number, text, password, editor, true_false', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (18, 'valid_datetime', 'no', 'input, datetime, text', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (19, 'valid_date', 'no', 'input, datetime, date, text', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (20, 'valid_max_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric');
INSERT INTO `crud_input_validation` VALUES (21, 'valid_min_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric');
INSERT INTO `crud_input_validation` VALUES (22, 'valid_alpha_numeric_spaces_underscores', 'no', 'input, text,select, password, editor', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (23, 'matches', 'yes', 'input, number, text, password, email', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores');
INSERT INTO `crud_input_validation` VALUES (24, 'valid_json', 'no', 'input, text, editor', '', 'yes', ' ');
INSERT INTO `crud_input_validation` VALUES (25, 'valid_url', 'no', 'input, text, editor', '', 'no', ' ');
INSERT INTO `crud_input_validation` VALUES (26, 'exact_length', 'yes', 'input, text, number', '0 - 99999*', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (27, 'alpha_dash', 'no', 'input, text', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (28, 'integer', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (29, 'differs', 'yes', 'input, text, number, email, password, editor, options, select', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores');
INSERT INTO `crud_input_validation` VALUES (30, 'is_natural', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (31, 'is_natural_no_zero', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (32, 'less_than', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (33, 'less_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (34, 'greater_than', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (35, 'greater_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (36, 'in_list', 'yes', 'input, text, number, select, options', '', 'no', 'callback_valid_multiple_value');
INSERT INTO `crud_input_validation` VALUES (37, 'valid_ip', 'no', 'input, text', '', 'no', '');
COMMIT;

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL,
  `is_private_key` tinyint(1) NOT NULL,
  `ip_addresses` text,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of keys
-- ----------------------------
BEGIN;
INSERT INTO `keys` VALUES (1, 0, 'E611F398D9D925F00053EF4D39FD94DE', 0, 0, 0, NULL, '2019-08-03 01:11:22');
COMMIT;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `icon_color` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `menu_type_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES (1, 'MAIN NAVIGATION', 'label', '', 'administrator/dashboard', 1, 0, '', 1, 1);
INSERT INTO `menu` VALUES (2, 'Dashboard', 'menu', 'default', 'administrator/dashboard', 3, 23, 'fa-dashboard', 1, 1);
INSERT INTO `menu` VALUES (3, 'TMC CRUD', 'menu', 'default', 'administrator/crud', 4, 23, 'fa-table', 1, 1);
INSERT INTO `menu` VALUES (4, 'TMC API Create', 'menu', 'default', 'administrator/rest', 5, 23, 'fa-code', 1, 1);
INSERT INTO `menu` VALUES (8, 'Menu', 'menu', '', 'administrator/menu', 6, 23, 'fa-bars', 1, 1);
INSERT INTO `menu` VALUES (9, 'User Management', 'menu', 'default', '#', 7, 23, 'fa-shield', 1, 1);
INSERT INTO `menu` VALUES (10, 'User', 'menu', '', 'administrator/user', 8, 9, '', 1, 1);
INSERT INTO `menu` VALUES (11, 'Groups', 'menu', '', 'administrator/group', 9, 9, '', 1, 1);
INSERT INTO `menu` VALUES (12, 'Access', 'menu', '', 'administrator/access', 10, 9, '', 1, 1);
INSERT INTO `menu` VALUES (13, 'Permission', 'menu', '', 'administrator/permission', 11, 9, '', 1, 1);
INSERT INTO `menu` VALUES (14, 'API Keys', 'menu', '', 'administrator/keys', 12, 9, '', 1, 1);
INSERT INTO `menu` VALUES (15, 'Extension', 'menu', '', 'administrator/extension', 13, 23, 'fa-puzzle-piece', 1, 1);
INSERT INTO `menu` VALUES (17, 'Settings', 'menu', 'text-red', 'administrator/setting', 14, 23, 'fa-circle-o', 1, 1);
INSERT INTO `menu` VALUES (20, 'Home', 'menu', '', '/', 1, 0, '', 2, 1);
INSERT INTO `menu` VALUES (21, 'Blog', 'menu', '', 'blog', 4, 0, '', 2, 1);
INSERT INTO `menu` VALUES (22, 'Dashboard', 'menu', '', 'administrator/dashboard', 5, 0, '', 2, 1);
INSERT INTO `menu` VALUES (23, 'ADMINISTRATOR', 'menu', 'default', '#', 2, 0, 'fa-amazon', 1, 1);
INSERT INTO `menu` VALUES (27, 'MASTER DATA', 'menu', 'text-red', '#', 15, 0, 'fa-get-pocket', 1, 1);
INSERT INTO `menu` VALUES (28, 'Profil', 'menu', 'default', 'profile', 16, 27, '', 1, 1);
INSERT INTO `menu` VALUES (29, 'DATA WILAYAH', 'menu', 'text-green', '#', 18, 0, 'fa-picture-o', 1, 1);
INSERT INTO `menu` VALUES (30, 'Wilayah', 'menu', 'default', 'wilayah', 17, 27, '', 1, 1);
INSERT INTO `menu` VALUES (31, 'Profil Wilayah', 'menu', 'default', 'wilayah_profil', 19, 29, '', 1, 1);
INSERT INTO `menu` VALUES (32, 'Kepala Wilayah', 'menu', 'default', 'wilayah_kepala', 20, 29, '', 1, 1);
INSERT INTO `menu` VALUES (33, 'DATA PENDUDUK', 'menu', 'text-light-blue', '#', 22, 0, 'fa-users', 1, 1);
INSERT INTO `menu` VALUES (34, 'Kependudukan', 'menu', 'default', 'penduduk', 23, 33, '', 1, 1);
INSERT INTO `menu` VALUES (35, 'PERSURATAN', 'menu', 'text-black', '#', 24, 0, 'fa-envelope-o', 1, 1);
INSERT INTO `menu` VALUES (36, 'Surat Keterangan', 'menu', 'default', '#', 25, 35, 'fa-bar-chart-o', 1, 1);
INSERT INTO `menu` VALUES (37, 'Domisili', 'menu', 'default', 'suket_domisili', 26, 36, '', 1, 1);
INSERT INTO `menu` VALUES (38, 'Perangkat Wilayah', 'menu', 'default', 'wilayah_perangkat', 21, 29, '', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for menu_type
-- ----------------------------
DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `definition` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu_type
-- ----------------------------
BEGIN;
INSERT INTO `menu_type` VALUES (1, 'side menu', NULL);
INSERT INTO `menu_type` VALUES (2, 'top menu', NULL);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `fresh_content` text NOT NULL,
  `keyword` text,
  `description` text,
  `link` varchar(200) DEFAULT NULL,
  `template` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for page_block_element
-- ----------------------------
DROP TABLE IF EXISTS `page_block_element`;
CREATE TABLE `page_block_element` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image_preview` varchar(200) NOT NULL,
  `block_name` varchar(200) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for penduduk
-- ----------------------------
DROP TABLE IF EXISTS `penduduk`;
CREATE TABLE `penduduk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` datetime DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `status_hubungan` varchar(20) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `status_perkawinan` varchar(20) DEFAULT NULL,
  `kepemilikan_akte_perkawinan` varchar(30) DEFAULT NULL,
  `pendidikan_terakhir` varchar(20) DEFAULT NULL,
  `jenis_pekerjaan` varchar(50) DEFAULT NULL,
  `bidang_pekerjaan` varchar(50) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `kd_wilayah` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rest
-- ----------------------------
DROP TABLE IF EXISTS `rest`;
CREATE TABLE `rest` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL,
  `primary_key` varchar(200) NOT NULL,
  `x_api_key` varchar(20) DEFAULT NULL,
  `x_token` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rest
-- ----------------------------
BEGIN;
INSERT INTO `rest` VALUES (1, 'Rkpd Skpd Kgtn', 'rkpd_skpd_kgtn', 'id_rkpd_skpd_kgtn', 'no', 'yes');
COMMIT;

-- ----------------------------
-- Table structure for rest_field
-- ----------------------------
DROP TABLE IF EXISTS `rest_field`;
CREATE TABLE `rest_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rest_id` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `input_type` varchar(200) NOT NULL,
  `show_column` varchar(10) DEFAULT NULL,
  `show_add_api` varchar(10) DEFAULT NULL,
  `show_update_api` varchar(10) DEFAULT NULL,
  `show_detail_api` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rest_field
-- ----------------------------
BEGIN;
INSERT INTO `rest_field` VALUES (1, 1, 'id_rkpd_skpd_kgtn', NULL, 'input', 'yes', '', '', 'yes');
INSERT INTO `rest_field` VALUES (2, 1, 'kd_kgtn', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (3, 1, 'nm_kgtn', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (4, 1, 'nm_subkgtn', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (5, 1, 'prioritas', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (6, 1, 'sifat_kgtn', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (7, 1, 'sasaran', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (8, 1, 'output', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (9, 1, 'outcome', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (10, 1, 'latar_belakang', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (11, 1, 'keterangan', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (12, 1, 'rkpd_rkpd_id', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (13, 1, 'sikd_skpd_id', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (14, 1, 'sikd_bidang_id', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (15, 1, 'sikd_kgtn_id', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (16, 1, 'musren_kgtn_kab_id', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (17, 1, 'sikd_program_daerah_id', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (18, 1, 'sikd_sasaran_program_daerah_id', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (19, 1, 'kemiskinan', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (20, 1, 'created_by', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (21, 1, 'creation_date', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (22, 1, 'last_updated_by', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
INSERT INTO `rest_field` VALUES (23, 1, 'last_updated_date', NULL, 'input', 'yes', 'yes', 'yes', 'yes');
COMMIT;

-- ----------------------------
-- Table structure for rest_field_validation
-- ----------------------------
DROP TABLE IF EXISTS `rest_field_validation`;
CREATE TABLE `rest_field_validation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rest_field_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rest_field_validation
-- ----------------------------
BEGIN;
INSERT INTO `rest_field_validation` VALUES (1, 2, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (2, 2, 1, 'max_length', '15');
INSERT INTO `rest_field_validation` VALUES (3, 3, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (4, 3, 1, 'max_length', '200');
INSERT INTO `rest_field_validation` VALUES (5, 4, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (6, 4, 1, 'max_length', '200');
INSERT INTO `rest_field_validation` VALUES (7, 5, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (8, 5, 1, 'max_length', '5');
INSERT INTO `rest_field_validation` VALUES (9, 6, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (10, 6, 1, 'max_length', '1');
INSERT INTO `rest_field_validation` VALUES (11, 7, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (12, 7, 1, 'max_length', '250');
INSERT INTO `rest_field_validation` VALUES (13, 8, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (14, 8, 1, 'max_length', '200');
INSERT INTO `rest_field_validation` VALUES (15, 9, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (16, 9, 1, 'max_length', '200');
INSERT INTO `rest_field_validation` VALUES (17, 10, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (18, 10, 1, 'max_length', '200');
INSERT INTO `rest_field_validation` VALUES (19, 11, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (20, 11, 1, 'max_length', '255');
INSERT INTO `rest_field_validation` VALUES (21, 12, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (22, 12, 1, 'max_length', '30');
INSERT INTO `rest_field_validation` VALUES (23, 13, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (24, 13, 1, 'max_length', '30');
INSERT INTO `rest_field_validation` VALUES (25, 14, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (26, 14, 1, 'max_length', '30');
INSERT INTO `rest_field_validation` VALUES (27, 15, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (28, 15, 1, 'max_length', '30');
INSERT INTO `rest_field_validation` VALUES (29, 16, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (30, 16, 1, 'max_length', '30');
INSERT INTO `rest_field_validation` VALUES (31, 17, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (32, 17, 1, 'max_length', '30');
INSERT INTO `rest_field_validation` VALUES (33, 18, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (34, 18, 1, 'max_length', '30');
INSERT INTO `rest_field_validation` VALUES (35, 19, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (36, 19, 1, 'max_length', '255');
INSERT INTO `rest_field_validation` VALUES (37, 20, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (38, 20, 1, 'max_length', '20');
INSERT INTO `rest_field_validation` VALUES (39, 21, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (40, 22, 1, 'required', '');
INSERT INTO `rest_field_validation` VALUES (41, 22, 1, 'max_length', '20');
INSERT INTO `rest_field_validation` VALUES (42, 23, 1, 'required', '');
COMMIT;

-- ----------------------------
-- Table structure for rest_input_type
-- ----------------------------
DROP TABLE IF EXISTS `rest_input_type`;
CREATE TABLE `rest_input_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `validation_group` varchar(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rest_input_type
-- ----------------------------
BEGIN;
INSERT INTO `rest_input_type` VALUES (1, 'input', '0', 'input');
INSERT INTO `rest_input_type` VALUES (2, 'timestamp', '0', 'timestamp');
INSERT INTO `rest_input_type` VALUES (3, 'file', '0', 'file');
COMMIT;

-- ----------------------------
-- Table structure for setup_agama
-- ----------------------------
DROP TABLE IF EXISTS `setup_agama`;
CREATE TABLE `setup_agama` (
  `nama` varchar(30) DEFAULT NULL,
  `value` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setup_agama
-- ----------------------------
BEGIN;
INSERT INTO `setup_agama` VALUES ('Islam', 'Islam');
INSERT INTO `setup_agama` VALUES ('Kristen Protestan', 'Kristen Protestan');
INSERT INTO `setup_agama` VALUES ('Kristen Katolik', 'Kristen Katolik');
INSERT INTO `setup_agama` VALUES ('Hindu', 'Hindu');
INSERT INTO `setup_agama` VALUES ('Buddha', 'Buddha');
INSERT INTO `setup_agama` VALUES ('Kong Hu Cu', 'Kong Hu Cu');
COMMIT;

-- ----------------------------
-- Table structure for suket_domisili
-- ----------------------------
DROP TABLE IF EXISTS `suket_domisili`;
CREATE TABLE `suket_domisili` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_wilayah` varchar(30) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `bukti_surat` varchar(50) DEFAULT NULL,
  `tanggal_surat` date DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `tmpt_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `alamat` text,
  `created_by` varchar(30) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(30) DEFAULT NULL,
  `last_updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suket_domisili
-- ----------------------------
BEGIN;
INSERT INTO `suket_domisili` VALUES (3, '7303011006', 234, 'Kartu Keluarga', '2020-04-06', NULL, '32424', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-04-25 12:35:06', 'admin', '2020-04-25 12:50:45');
COMMIT;

-- ----------------------------
-- Table structure for wilayah
-- ----------------------------
DROP TABLE IF EXISTS `wilayah`;
CREATE TABLE `wilayah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_wilayah` varchar(50) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `singkatan` varchar(20) DEFAULT NULL,
  `klasifikasi` varchar(30) DEFAULT NULL COMMENT 'prov/kab/kec/kel/desa',
  `kd_induk` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wilayah
-- ----------------------------
BEGIN;
INSERT INTO `wilayah` VALUES (1, '73', 'SULAWESI SELATAN', NULL, 'PROV', NULL);
INSERT INTO `wilayah` VALUES (3, '7303', 'BANTAENG', NULL, 'KAB', '73');
INSERT INTO `wilayah` VALUES (4, '730301', 'Bissappu', NULL, 'KEC', '7303');
INSERT INTO `wilayah` VALUES (5, '7303011001', 'Bonto Manai', NULL, 'KEL', '730301');
INSERT INTO `wilayah` VALUES (6, '7303011002', 'Bonto Lebang', NULL, 'KEL', '730301');
INSERT INTO `wilayah` VALUES (7, '7303011003', 'Bonto Sunggu', NULL, 'KEL', '730301');
INSERT INTO `wilayah` VALUES (8, '7303011004', 'Bonto Atu', NULL, 'KEL', '730301');
INSERT INTO `wilayah` VALUES (9, '7303011005', 'Bonto Rita', NULL, 'KEL', '730301');
INSERT INTO `wilayah` VALUES (10, '7303011006', 'Bonto Langkasa', NULL, 'KEL', '730301');
INSERT INTO `wilayah` VALUES (11, '7303011007', 'Bonto Jaya', NULL, 'KEL', '730301');
INSERT INTO `wilayah` VALUES (12, '7303012008', 'Bonto Jai', NULL, 'DESA', '730301');
INSERT INTO `wilayah` VALUES (13, '7303012009', 'Bonto Cinde', NULL, 'DESA', '730301');
INSERT INTO `wilayah` VALUES (14, '7303012010', 'Bonto Loe', NULL, 'DESA', '730301');
INSERT INTO `wilayah` VALUES (15, '7303012012', 'Bonto Salluang', NULL, 'DESA', '730301');
INSERT INTO `wilayah` VALUES (16, '730302', 'Bantaeng', NULL, 'KEC', '7303');
INSERT INTO `wilayah` VALUES (17, '7303021001', 'Tappanjeng', NULL, 'KEL', '730302');
INSERT INTO `wilayah` VALUES (18, '7303021002', 'Pallantikang', NULL, 'KEL', '730302');
INSERT INTO `wilayah` VALUES (19, '7303021003', 'Letta', NULL, 'KEL', '730302');
INSERT INTO `wilayah` VALUES (20, '7303021004', 'Mallilingi', NULL, 'KEL', '730302');
INSERT INTO `wilayah` VALUES (21, '7303021005', 'Lembang', NULL, 'KEL', '730302');
INSERT INTO `wilayah` VALUES (22, '7303021006', 'Lamalaka', NULL, 'KEL', '730302');
INSERT INTO `wilayah` VALUES (23, '7303021007', 'Karatuang', NULL, 'KEL', '730302');
INSERT INTO `wilayah` VALUES (24, '7303021008', 'Onto', NULL, 'KEL', '730302');
INSERT INTO `wilayah` VALUES (25, '7303022009', 'Kayu Loe', NULL, 'DESA', '730302');
INSERT INTO `wilayah` VALUES (26, '730303', 'Eremerasa', NULL, 'KEC', '7303');
INSERT INTO `wilayah` VALUES (27, '7303032001', 'Ulugalung', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (28, '7303032002', 'Lonrong', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (29, '7303032003', 'Barua', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (30, '7303032004', 'Kampala', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (31, '7303032005', 'Pabbentengang', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (32, '7303032006', 'Mappilawing', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (33, '7303032007', 'Pabumbungang', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (34, '7303032008', 'Mamampang', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (35, '7303032009', 'Parang Loe', NULL, 'DESA', '730303');
INSERT INTO `wilayah` VALUES (36, '730304', 'Tompobulu', NULL, 'KEC', '7303');
INSERT INTO `wilayah` VALUES (37, '7303041001', 'Lembang Gantarang Keke', NULL, 'KEL', '730304');
INSERT INTO `wilayah` VALUES (38, '7303041003', 'Banyorang', NULL, 'KEL', '730304');
INSERT INTO `wilayah` VALUES (39, '7303041004', 'Campaga', NULL, 'KEL', '730304');
INSERT INTO `wilayah` VALUES (40, '7303041005', 'Ereng-Ereng', NULL, 'KEL', '730304');
INSERT INTO `wilayah` VALUES (41, '7303042006', 'Labbo', NULL, 'DESA', '730304');
INSERT INTO `wilayah` VALUES (42, '7303042007', 'Pattaneteang', NULL, 'DESA', '730304');
INSERT INTO `wilayah` VALUES (43, '7303042008', 'Pattallassang', NULL, 'DESA', '730304');
INSERT INTO `wilayah` VALUES (44, '7303042009', 'Bonto Bontoa', NULL, 'DESA', '730304');
INSERT INTO `wilayah` VALUES (45, '7303042010', 'Bonto Tappalang', NULL, 'DESA', '730304');
INSERT INTO `wilayah` VALUES (46, '7303042011', 'Balumbung', NULL, 'DESA', '730304');
INSERT INTO `wilayah` VALUES (47, '730305', 'Pajukukang', NULL, 'KEC', '7303');
INSERT INTO `wilayah` VALUES (48, '7303052001', 'Biangkeke', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (49, '7303052002', 'Pajukukang', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (50, '7303052003', 'Biang Loe', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (51, '7303052004', 'Borong Loe', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (52, '7303052005', 'Baruga', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (53, '7303052006', 'Nipa-Nipa', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (54, '7303052007', 'Papan Loe', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (55, '7303052008', 'Rappoa', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (56, '7303052009', 'Lumpangan', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (57, '7303052010', 'Batu Karaeng', NULL, 'DESA', '730305');
INSERT INTO `wilayah` VALUES (58, '730306', 'Uluere', NULL, 'KEC', '7303');
INSERT INTO `wilayah` VALUES (59, '7303062001', 'Bonto Marannu', NULL, 'DESA', '730306');
INSERT INTO `wilayah` VALUES (60, '7303062002', 'Bonto Tangnga', NULL, 'DESA', '730306');
INSERT INTO `wilayah` VALUES (61, '7303062003', 'Bonto Tallasa', NULL, 'DESA', '730306');
INSERT INTO `wilayah` VALUES (62, '7303062004', 'Bonto Rannu', NULL, 'DESA', '730306');
INSERT INTO `wilayah` VALUES (63, '7303062005', 'Bonto Daeng', NULL, 'DESA', '730306');
INSERT INTO `wilayah` VALUES (64, '7303062006', 'Bonto Lojong', NULL, 'DESA', '730306');
INSERT INTO `wilayah` VALUES (65, '730307', 'Gantarangkeke', NULL, 'KEC', '7303');
INSERT INTO `wilayah` VALUES (66, '7303071001', 'Gantarang Keke', NULL, 'KEL', '730307');
INSERT INTO `wilayah` VALUES (67, '7303071002', 'Tanah Loe', NULL, 'KEL', '730307');
INSERT INTO `wilayah` VALUES (68, '7303072003', 'Layoa', NULL, 'DESA', '730307');
INSERT INTO `wilayah` VALUES (69, '7303072004', 'Bajiminasa', NULL, 'DESA', '730307');
INSERT INTO `wilayah` VALUES (70, '7303072005', 'Tombolo', NULL, 'DESA', '730307');
INSERT INTO `wilayah` VALUES (71, '7303072006', 'Kaloling', NULL, 'DESA', '730307');
INSERT INTO `wilayah` VALUES (72, '730308', 'Sinoa', NULL, 'KEC', '7303');
INSERT INTO `wilayah` VALUES (73, '7303082001', 'Bonto Tiro', NULL, 'DESA', '730308');
INSERT INTO `wilayah` VALUES (74, '7303082002', 'Bonto Karaeng', NULL, 'DESA', '730308');
INSERT INTO `wilayah` VALUES (75, '7303082003', 'Bonto Maccini', NULL, 'DESA', '730308');
INSERT INTO `wilayah` VALUES (76, '7303082004', 'Bonto Matene', NULL, 'DESA', '730308');
INSERT INTO `wilayah` VALUES (77, '7303082005', 'Bonto Majannang', NULL, 'DESA', '730308');
INSERT INTO `wilayah` VALUES (78, '7303082006', 'Bonto Bulaeng', NULL, 'DESA', '730308');
COMMIT;

-- ----------------------------
-- Table structure for wilayah_kepala
-- ----------------------------
DROP TABLE IF EXISTS `wilayah_kepala`;
CREATE TABLE `wilayah_kepala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_wilayah` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `usia` varchar(20) DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `pend_terakhir` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `periode_mulai` date DEFAULT NULL,
  `periode_selesai` date DEFAULT NULL,
  `avatar` text,
  `banned` tinyint(1) DEFAULT '1',
  `created_by` varchar(30) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(30) DEFAULT NULL,
  `last_updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wilayah_kepala
-- ----------------------------
BEGIN;
INSERT INTO `wilayah_kepala` VALUES (2, '7303011006', 'bacc', '1', 'Lurah', 'Laki - Laki', '32', 'Islam', 'D4/S1', 'wrwerwr', '324324', '2020-05-14', '2020-05-22', NULL, 0, 'admin', '2020-05-13 20:44:44', 'admin', '2020-05-15 22:59:54');
INSERT INTO `wilayah_kepala` VALUES (3, '730301', 'cama', '2', 'Camat', 'Laki - Laki', '5446', 'Islam', 'D4/S1', 'erwrwrwe', '3242', '2020-04-30', '2020-05-29', NULL, 0, 'admin', '2020-05-13 20:48:47', 'admin', '2020-05-15 23:16:25');
COMMIT;

-- ----------------------------
-- Table structure for wilayah_perangkat
-- ----------------------------
DROP TABLE IF EXISTS `wilayah_perangkat`;
CREATE TABLE `wilayah_perangkat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_wilayah` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `unsur_pem` varchar(30) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `jabatan` varchar(30) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `pend_terakhir` varchar(30) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `no_hp` varchar(30) DEFAULT NULL,
  `periode_mulai` date DEFAULT NULL,
  `periode_selesai` date DEFAULT NULL,
  `no_seq` int(2) DEFAULT NULL,
  `avatar` text,
  `created_by` varchar(30) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_updated_by` varchar(30) DEFAULT NULL,
  `last_updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wilayah_perangkat
-- ----------------------------
BEGIN;
INSERT INTO `wilayah_perangkat` VALUES (1, '7303011006', 'add', 'Unsur Staf', '234242', 'Staf', 'Laki - Laki', '2011-08-15', 'Islam', 'SMP/Sederajat', 'ewrw', '32424', '2020-05-12', '2021-06-15', 6, '20200515150853-2020-05-15wilayah_perangkat150719.png', 'admin', '2020-05-15 15:08:53', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for wilayah_profil
-- ----------------------------
DROP TABLE IF EXISTS `wilayah_profil`;
CREATE TABLE `wilayah_profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_wilayah` varchar(30) NOT NULL,
  `alamat_kantor` varchar(100) DEFAULT NULL,
  `latitude` double(10,7) DEFAULT NULL,
  `longtitude` double(10,7) DEFAULT NULL,
  `luas` double(12,2) DEFAULT NULL,
  `utara` varchar(50) DEFAULT NULL,
  `timur` varchar(50) DEFAULT NULL,
  `selatan` varchar(50) DEFAULT NULL,
  `barat` varchar(50) DEFAULT NULL,
  `sejarah` text,
  `tahun_pembentukan` year(4) DEFAULT NULL,
  `dasar_hukum` longtext,
  `kd_pos` varchar(15) DEFAULT NULL,
  `tipologi` varchar(50) DEFAULT NULL,
  `foto` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wilayah_profil
-- ----------------------------
BEGIN;
INSERT INTO `wilayah_profil` VALUES (2, '7303011006', 'JL.Langkasa No.6', 999.9999999, 342.0000000, 324.00, 'dsfs', 'fsf', 'dsf', 'fds', 'dsfsdfsdfsfsfsfsf', 2005, 'dfsfdsfsfsf', '43535', 'Dataran Rendah|Pertanian', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
