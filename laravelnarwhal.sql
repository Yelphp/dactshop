/*
 Navicat Premium Data Transfer

 Source Server         : baselive
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : laravelnarwhal

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 26/08/2020 18:09:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'feather icon-settings', '', '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', '', 'auth/users', '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', '', 'auth/roles', '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', '', 'auth/permissions', '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', '', 'auth/menu', '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', '', 'auth/logs', '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 8, '用户管理', 'fa-users', NULL, '2020-08-26 02:10:23', '2020-08-26 02:10:23');
INSERT INTO `admin_menu` VALUES (9, 8, 9, '用户列表', 'fa-user-md', 'users', '2020-08-26 02:10:52', '2020-08-26 02:11:11');
INSERT INTO `admin_menu` VALUES (10, 8, 10, '等级设置', 'fa-level-up', 'user/levels', '2020-08-26 02:16:33', '2020-08-26 02:16:33');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 663 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-08-26 01:54:17', '2020-08-26 01:54:17');
INSERT INTO `admin_operation_log` VALUES (2, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"ewpEvzG0OQK0mriPFBfDDnS3Ij73RvHLtgkncqt9\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-08-26 01:54:19', '2020-08-26 01:54:19');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 01:54:20', '2020-08-26 01:54:20');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 01:54:41', '2020-08-26 01:54:41');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 01:54:41', '2020-08-26 01:54:41');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 01:54:42', '2020-08-26 01:54:42');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 01:54:43', '2020-08-26 01:54:43');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 01:54:44', '2020-08-26 01:54:44');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 01:54:44', '2020-08-26 01:54:44');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 01:54:48', '2020-08-26 01:54:48');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 01:54:50', '2020-08-26 01:54:50');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"laravelnarwhal\",\"tb\":\"users\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 01:55:00', '2020-08-26 01:55:00');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-08-26 01:55:00', '2020-08-26 01:55:00');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user\"}', '2020-08-26 01:55:27', '2020-08-26 01:55:27');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user\"}', '2020-08-26 01:55:32', '2020-08-26 01:55:32');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-08-26 01:55:34', '2020-08-26 01:55:34');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"users\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\User\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"uniacid\",\"translation\":\"Uniacid\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":null},{\"name\":\"openid\",\"translation\":\"Openid\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"Openid\"},{\"name\":\"name\",\"translation\":\"\\u59d3\\u540d\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u59d3\\u540d\"},{\"name\":\"nickname\",\"translation\":\"\\u6635\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u6635\\u79f0\"},{\"name\":\"password\",\"translation\":\"\\u5bc6\\u7801\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5bc6\\u7801\"},{\"name\":\"avatar\",\"translation\":\"\\u5934\\u50cf\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5934\\u50cf\"},{\"name\":\"phone\",\"translation\":\"\\u7535\\u8bdd\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7535\\u8bdd\"},{\"name\":\"cardnum\",\"translation\":\"\\u8eab\\u4efd\\u8bc1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8eab\\u4efd\\u8bc1\"},{\"name\":\"birthday\",\"translation\":\"\\u751f\\u65e5\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u751f\\u65e5\"},{\"name\":\"pid\",\"translation\":\"\\u7236\\u7ea7id\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u7236\\u7ea7id\"},{\"name\":\"fids\",\"translation\":\"\\u5173\\u7cfb\\u94fe\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5173\\u7cfb\\u94fe\"},{\"name\":\"level\",\"translation\":\"\\u7b49\\u7ea7\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7b49\\u7ea7\"},{\"name\":\"consume\",\"translation\":\"\\u6d88\\u8d39\",\"type\":\"decimal\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u6d88\\u8d39\"},{\"name\":\"money\",\"translation\":\"\\u91d1\\u989d\",\"type\":\"decimal\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u91d1\\u989d\"},{\"name\":\"integral\",\"translation\":\"\\u79ef\\u5206\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u79ef\\u5206\"},{\"name\":\"province\",\"translation\":\"\\u7701\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u7701\"},{\"name\":\"city\",\"translation\":\"\\u5e02\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u5e02\"},{\"name\":\"country\",\"translation\":\"\\u533a\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u533a\"},{\"name\":\"area\",\"translation\":\"\\u9547\\u3001\\u8857\\u9053\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u9547\\u3001\\u8857\\u9053\"},{\"name\":\"address\",\"translation\":\"\\u8be6\\u7ec6\\u5730\\u5740\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u8be6\\u7ec6\\u5730\\u5740\"},{\"name\":\"bindtime\",\"translation\":null,\"type\":\"timestamp\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7ed1\\u5b9a\\u65f6\\u95f4\"},{\"name\":\"commission\",\"translation\":\"\\u4f63\\u91d1\",\"type\":\"decimal\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u4f63\\u91d1\"},{\"name\":\"sumcommission\",\"translation\":\"\\u7d2f\\u8ba1\\u4f63\\u91d1\",\"type\":\"decimal\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u7d2f\\u8ba1\\u4f63\\u91d1\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:04:42', '2020-08-26 02:04:42');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-08-26 02:04:42', '2020-08-26 02:04:42');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-08-26 02:05:57', '2020-08-26 02:05:57');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-08-26 02:08:51', '2020-08-26 02:08:51');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-08-26 02:09:51', '2020-08-26 02:09:51');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:09:53', '2020-08-26 02:09:53');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:09:54', '2020-08-26 02:09:54');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:10:23', '2020-08-26 02:10:23');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-26 02:10:25', '2020-08-26 02:10:25');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-08-26 02:10:29', '2020-08-26 02:10:29');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":null,\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:10:52', '2020-08-26 02:10:52');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-26 02:10:54', '2020-08-26 02:10:54');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-08-26 02:10:59', '2020-08-26 02:10:59');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-user-md\",\"uri\":\"users\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/auth\\/menu\"}', '2020-08-26 02:11:11', '2020-08-26 02:11:11');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:11', '2020-08-26 02:11:11');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-26 02:11:13', '2020-08-26 02:11:13');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:15', '2020-08-26 02:11:15');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:17', '2020-08-26 02:11:17');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:18', '2020-08-26 02:11:18');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:19', '2020-08-26 02:11:19');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:21', '2020-08-26 02:11:21');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-26 02:11:22', '2020-08-26 02:11:22');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:25', '2020-08-26 02:11:25');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-08-26 02:11:28', '2020-08-26 02:11:28');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 02:11:28', '2020-08-26 02:11:28');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:33', '2020-08-26 02:11:33');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:35', '2020-08-26 02:11:35');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:38', '2020-08-26 02:11:38');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:11:39', '2020-08-26 02:11:39');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:12:11', '2020-08-26 02:12:11');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user\"}', '2020-08-26 02:12:15', '2020-08-26 02:12:15');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"userlevel\"}', '2020-08-26 02:12:16', '2020-08-26 02:12:16');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"level\"}', '2020-08-26 02:12:20', '2020-08-26 02:12:20');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"level\"}', '2020-08-26 02:12:23', '2020-08-26 02:12:23');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"userlevel\"}', '2020-08-26 02:12:24', '2020-08-26 02:12:24');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user_level\"}', '2020-08-26 02:12:26', '2020-08-26 02:12:26');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"user_level\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\User\\\\UserLevel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\User\\\\UserLevelController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\User\\\\UserLevel\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"title\",\"translation\":\"\\u540d\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u540d\\u79f0\"},{\"name\":\"level\",\"translation\":\"\\u7b49\\u7ea7\",\"type\":\"integer\",\"key\":\"unique\",\"default\":\"0\",\"comment\":\"\\u7b49\\u7ea7\"},{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"tinyInteger\",\"key\":null,\"default\":\"1\",\"comment\":\"\\u72b6\\u6001 1\\u6b63\\u5e38  2\\u7981\\u7528\"},{\"name\":\"discount\",\"translation\":\"\\u6298\\u6263\",\"type\":\"integer\",\"key\":null,\"default\":\"100\",\"comment\":\"\\u6298\\u6263\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:15:05', '2020-08-26 02:15:05');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-08-26 02:15:05', '2020-08-26 02:15:05');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:01', '2020-08-26 02:16:01');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7b49\\u7ea7\\u8bbe\\u7f6e\",\"icon\":\"fa-level-up\",\"uri\":\"user\\/levels\",\"roles\":[null],\"permissions\":null,\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:16:33', '2020-08-26 02:16:33');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-26 02:16:34', '2020-08-26 02:16:34');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:37', '2020-08-26 02:16:37');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:40', '2020-08-26 02:16:40');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:41', '2020-08-26 02:16:41');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:41', '2020-08-26 02:16:41');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:42', '2020-08-26 02:16:42');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:42', '2020-08-26 02:16:42');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:43', '2020-08-26 02:16:43');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:43', '2020-08-26 02:16:43');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:44', '2020-08-26 02:16:44');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:44', '2020-08-26 02:16:44');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:44', '2020-08-26 02:16:44');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:45', '2020-08-26 02:16:45');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:16:46', '2020-08-26 02:16:46');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:17:40', '2020-08-26 02:17:40');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:17:41', '2020-08-26 02:17:41');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 02:17:54', '2020-08-26 02:17:54');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 02:18:19', '2020-08-26 02:18:19');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:18:20', '2020-08-26 02:18:20');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:18:21', '2020-08-26 02:18:21');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:18:22', '2020-08-26 02:18:22');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:18:23', '2020-08-26 02:18:23');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 02:18:48', '2020-08-26 02:18:48');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:19:14', '2020-08-26 02:19:14');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-08-26 02:19:17', '2020-08-26 02:19:17');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 02:19:17', '2020-08-26 02:19:17');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:19:42', '2020-08-26 02:19:42');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:20:14', '2020-08-26 02:20:14');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:20:27', '2020-08-26 02:20:27');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:22:31', '2020-08-26 02:22:31');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:22:55', '2020-08-26 02:22:55');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:24:01', '2020-08-26 02:24:01');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:26:15', '2020-08-26 02:26:15');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"asssssssssssssssssssssssssassssssssssssssssssssssasdasdsss\",\"status\":\"1\",\"discount\":\"0\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:26:31', '2020-08-26 02:26:31');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:26:49', '2020-08-26 02:26:49');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:27:24', '2020-08-26 02:27:24');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:28:45', '2020-08-26 02:28:45');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"0\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:29:11', '2020-08-26 02:29:11');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"0\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:29:14', '2020-08-26 02:29:14');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:29:16', '2020-08-26 02:29:16');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:29:26', '2020-08-26 02:29:26');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:29:28', '2020-08-26 02:29:28');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:29:29', '2020-08-26 02:29:29');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:29:29', '2020-08-26 02:29:29');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:29:34', '2020-08-26 02:29:34');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:30:51', '2020-08-26 02:30:51');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"234\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:30:54', '2020-08-26 02:30:54');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:31:16', '2020-08-26 02:31:16');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:31:19', '2020-08-26 02:31:19');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:31:43', '2020-08-26 02:31:43');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:32:40', '2020-08-26 02:32:40');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:32:46', '2020-08-26 02:32:46');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:33:23', '2020-08-26 02:33:23');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 02:33:25', '2020-08-26 02:33:25');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:33:27', '2020-08-26 02:33:27');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"1\",\"title\":\"\\u4f1a\\u5458\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels?_sort%5Bcolumn%5D=updated_at&_sort%5Btype%5D=asc\"}', '2020-08-26 02:33:33', '2020-08-26 02:33:33');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:33:34', '2020-08-26 02:33:34');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:33:38', '2020-08-26 02:33:38');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels?_sort%5Bcolumn%5D=updated_at&_sort%5Btype%5D=asc\"}', '2020-08-26 02:33:40', '2020-08-26 02:33:40');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 02:34:00', '2020-08-26 02:34:00');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels?_sort%5Bcolumn%5D=updated_at&_sort%5Btype%5D=asc\"}', '2020-08-26 02:34:02', '2020-08-26 02:34:02');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:34:02', '2020-08-26 02:34:02');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/user/levels/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:34:05', '2020-08-26 02:34:05');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/user/levels/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:34:06', '2020-08-26 02:34:06');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/user/levels/2', 'PUT', '127.0.0.1', '{\"level\":\"1\",\"title\":\"\\u4f1a\\u5458\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\\/2\"}', '2020-08-26 02:34:08', '2020-08-26 02:34:08');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/user/levels/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:34:08', '2020-08-26 02:34:08');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/user/levels/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:34:10', '2020-08-26 02:34:10');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/user/levels/2/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 02:35:43', '2020-08-26 02:35:43');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/user/levels/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:35:45', '2020-08-26 02:35:45');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:35:46', '2020-08-26 02:35:46');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:35:47', '2020-08-26 02:35:47');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\"}', '2020-08-26 02:35:51', '2020-08-26 02:35:51');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\"}', '2020-08-26 02:35:52', '2020-08-26 02:35:52');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:36:16', '2020-08-26 02:36:16');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\\/2\\/edit\"}', '2020-08-26 02:36:19', '2020-08-26 02:36:19');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:37:00', '2020-08-26 02:37:00');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:37:03', '2020-08-26 02:37:03');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:37:09', '2020-08-26 02:37:09');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"234\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:37:11', '2020-08-26 02:37:11');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"23423333333333333\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:37:49', '2020-08-26 02:37:49');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"234233333333333332333333333333333333333333333333\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:37:53', '2020-08-26 02:37:53');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:38:18', '2020-08-26 02:38:18');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:39:29', '2020-08-26 02:39:29');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:39:32', '2020-08-26 02:39:32');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:39:55', '2020-08-26 02:39:55');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:40:13', '2020-08-26 02:40:13');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:40:27', '2020-08-26 02:40:27');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"1\",\"title\":\"12\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:40:32', '2020-08-26 02:40:32');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:40:42', '2020-08-26 02:40:42');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:40:46', '2020-08-26 02:40:46');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"1\",\"title\":\"234\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:41:00', '2020-08-26 02:41:00');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:41:10', '2020-08-26 02:41:10');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"1\",\"title\":\"123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:41:15', '2020-08-26 02:41:15');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 02:41:43', '2020-08-26 02:41:43');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"12\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 02:41:46', '2020-08-26 02:41:46');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:42:01', '2020-08-26 02:42:01');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:42:03', '2020-08-26 02:42:03');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:42:04', '2020-08-26 02:42:04');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\\/1\"}', '2020-08-26 02:42:06', '2020-08-26 02:42:06');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 02:43:03', '2020-08-26 02:43:03');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\\/create\"}', '2020-08-26 02:43:04', '2020-08-26 02:43:04');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:04', '2020-08-26 02:43:04');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:08', '2020-08-26 02:43:08');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:09', '2020-08-26 02:43:09');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:09', '2020-08-26 02:43:09');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:12', '2020-08-26 02:43:12');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\"}', '2020-08-26 02:43:13', '2020-08-26 02:43:13');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:13', '2020-08-26 02:43:13');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:16', '2020-08-26 02:43:16');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:17', '2020-08-26 02:43:17');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"123123\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\\/1\"}', '2020-08-26 02:43:18', '2020-08-26 02:43:18');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:18', '2020-08-26 02:43:18');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:19', '2020-08-26 02:43:19');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:22', '2020-08-26 02:43:22');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:24', '2020-08-26 02:43:24');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/user/levels/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:28', '2020-08-26 02:43:28');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/user/levels/2/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 02:43:52', '2020-08-26 02:43:52');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:43:54', '2020-08-26 02:43:54');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:43:57', '2020-08-26 02:43:57');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:44:03', '2020-08-26 02:44:03');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:44:11', '2020-08-26 02:44:11');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:44:22', '2020-08-26 02:44:22');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:44:23', '2020-08-26 02:44:23');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '[]', '2020-08-26 02:44:57', '2020-08-26 02:44:57');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '[]', '2020-08-26 02:45:30', '2020-08-26 02:45:30');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:45:33', '2020-08-26 02:45:33');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 02:45:47', '2020-08-26 02:45:47');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:45:49', '2020-08-26 02:45:49');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:45:49', '2020-08-26 02:45:49');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:08', '2020-08-26 02:46:08');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:18', '2020-08-26 02:46:18');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:21', '2020-08-26 02:46:21');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:22', '2020-08-26 02:46:22');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:23', '2020-08-26 02:46:23');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:25', '2020-08-26 02:46:25');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:34', '2020-08-26 02:46:34');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:41', '2020-08-26 02:46:41');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:43', '2020-08-26 02:46:43');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:44', '2020-08-26 02:46:44');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:53', '2020-08-26 02:46:53');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:55', '2020-08-26 02:46:55');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:46:57', '2020-08-26 02:46:57');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:47:02', '2020-08-26 02:47:02');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:47:04', '2020-08-26 02:47:04');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:47:07', '2020-08-26 02:47:07');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:47:10', '2020-08-26 02:47:10');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:48:01', '2020-08-26 02:48:01');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:48:13', '2020-08-26 02:48:13');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:48:14', '2020-08-26 02:48:14');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:49:06', '2020-08-26 02:49:06');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:49:09', '2020-08-26 02:49:09');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:49:45', '2020-08-26 02:49:45');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:50:17', '2020-08-26 02:50:17');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:50:28', '2020-08-26 02:50:28');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"level\":\"1\",\"title\":null}', '2020-08-26 02:50:32', '2020-08-26 02:50:32');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"level\":\"2\",\"title\":null}', '2020-08-26 02:50:34', '2020-08-26 02:50:34');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"level\":\"1\",\"title\":null}', '2020-08-26 02:50:37', '2020-08-26 02:50:37');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"id\":null,\"level\":\"1\",\"title\":null,\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:50:43', '2020-08-26 02:50:43');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:50:45', '2020-08-26 02:50:45');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:51:12', '2020-08-26 02:51:12');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:52:18', '2020-08-26 02:52:18');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 02:53:27', '2020-08-26 02:53:27');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:53:36', '2020-08-26 02:53:36');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:53:37', '2020-08-26 02:53:37');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-08-26 02:54:51', '2020-08-26 02:54:51');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-08-26 02:55:19', '2020-08-26 02:55:19');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-08-26 02:55:35', '2020-08-26 02:55:35');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2020-08-26 02:56:47', '2020-08-26 02:56:47');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":\"123\",\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:56:51', '2020-08-26 02:56:51');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:56:56', '2020-08-26 02:56:56');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels?_search_=123&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2020-08-26 02:57:05', '2020-08-26 02:57:05');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_search_\":\"123\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:57:05', '2020-08-26 02:57:05');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":null,\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:57:10', '2020-08-26 02:57:10');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":null}', '2020-08-26 02:57:51', '2020-08-26 02:57:51');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":\"123\",\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:57:56', '2020-08-26 02:57:56');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":\"\\u4f1a\\u5458\",\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:58:01', '2020-08-26 02:58:01');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":\"\\u6e38\\u5ba2\",\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:58:04', '2020-08-26 02:58:04');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":\"\\u6e38\\u5ba2\"}', '2020-08-26 02:59:37', '2020-08-26 02:59:37');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"title\":\"\\u6e38123\\u5ba2\"}', '2020-08-26 02:59:41', '2020-08-26 02:59:41');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":\"\\u6e38\\u5ba2\"}', '2020-08-26 02:59:47', '2020-08-26 02:59:47');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":null,\"_pjax\":\"#pjax-container\"}', '2020-08-26 02:59:54', '2020-08-26 02:59:54');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"title\":\"123\\u6e38123\\u5ba2\"}', '2020-08-26 02:59:57', '2020-08-26 02:59:57');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"title\":null}', '2020-08-26 03:00:00', '2020-08-26 03:00:00');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"title\":\"\\u6e38123\\u5ba2\"}', '2020-08-26 03:00:01', '2020-08-26 03:00:01');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"title\":\"\\u6e38123\\u5ba2\"}', '2020-08-26 03:00:03', '2020-08-26 03:00:03');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"title\":\"\\u6e38123\\u5ba2\"}', '2020-08-26 03:00:05', '2020-08-26 03:00:05');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"title\":null}', '2020-08-26 03:00:12', '2020-08-26 03:00:12');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":null}', '2020-08-26 03:00:32', '2020-08-26 03:00:32');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"title\":null}', '2020-08-26 03:00:39', '2020-08-26 03:00:39');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_search_\":null}', '2020-08-26 03:00:47', '2020-08-26 03:00:47');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:00:51', '2020-08-26 03:00:51');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:00:53', '2020-08-26 03:00:53');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:00:54', '2020-08-26 03:00:54');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:00:55', '2020-08-26 03:00:55');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:00:56', '2020-08-26 03:00:56');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:00:56', '2020-08-26 03:00:56');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:00:59', '2020-08-26 03:00:59');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:00', '2020-08-26 03:01:00');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:02', '2020-08-26 03:01:02');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:02', '2020-08-26 03:01:02');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:09', '2020-08-26 03:01:09');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:12', '2020-08-26 03:01:12');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:17', '2020-08-26 03:01:17');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:18', '2020-08-26 03:01:18');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:22', '2020-08-26 03:01:22');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:23', '2020-08-26 03:01:23');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:01:24', '2020-08-26 03:01:24');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:20', '2020-08-26 03:02:20');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:23', '2020-08-26 03:02:23');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:23', '2020-08-26 03:02:23');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:25', '2020-08-26 03:02:25');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:26', '2020-08-26 03:02:26');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:26', '2020-08-26 03:02:26');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:27', '2020-08-26 03:02:27');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:45', '2020-08-26 03:02:45');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:46', '2020-08-26 03:02:46');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:47', '2020-08-26 03:02:47');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:48', '2020-08-26 03:02:48');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:02:52', '2020-08-26 03:02:52');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:04:25', '2020-08-26 03:04:25');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:04:34', '2020-08-26 03:04:34');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:04:35', '2020-08-26 03:04:35');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-08-26 03:04:36', '2020-08-26 03:04:36');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:04:39', '2020-08-26 03:04:39');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-08-26 03:05:32', '2020-08-26 03:05:32');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-08-26 03:07:13', '2020-08-26 03:07:13');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:07:15', '2020-08-26 03:07:15');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:07:15', '2020-08-26 03:07:15');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:07:18', '2020-08-26 03:07:18');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\"}', '2020-08-26 03:07:24', '2020-08-26 03:07:24');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\"}', '2020-08-26 03:07:28', '2020-08-26 03:07:28');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:07:34', '2020-08-26 03:07:34');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\"}', '2020-08-26 03:07:40', '2020-08-26 03:07:40');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '[]', '2020-08-26 03:08:33', '2020-08-26 03:08:33');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\"}', '2020-08-26 03:08:39', '2020-08-26 03:08:39');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:08:39', '2020-08-26 03:08:39');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:08:53', '2020-08-26 03:08:53');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/user/levels', 'POST', '127.0.0.1', '{\"level\":\"1\",\"title\":\"\\u4f1a\\u5458\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\"}', '2020-08-26 03:08:58', '2020-08-26 03:08:58');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:08:59', '2020-08-26 03:08:59');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:09:02', '2020-08-26 03:09:02');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:09:06', '2020-08-26 03:09:06');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:09:09', '2020-08-26 03:09:09');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:09:22', '2020-08-26 03:09:22');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"laravelnarwhal\",\"tb\":\"user_level\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 03:09:25', '2020-08-26 03:09:25');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user_level\"}', '2020-08-26 03:09:26', '2020-08-26 03:09:26');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"laravelnarwhal\",\"tb\":\"users\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 03:09:56', '2020-08-26 03:09:56');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-08-26 03:09:58', '2020-08-26 03:09:58');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"users\",\"exist-table\":\"laravelnarwhal|users\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\User\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"uniacid\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":null},{\"name\":\"openid\",\"translation\":\"Openid\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"Openid\"},{\"name\":\"name\",\"translation\":\"\\u59d3\\u540d\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u59d3\\u540d\"},{\"name\":\"nickname\",\"translation\":\"\\u6635\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u6635\\u79f0\"},{\"name\":\"password\",\"translation\":\"\\u5bc6\\u7801\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5bc6\\u7801\"},{\"name\":\"avatar\",\"translation\":\"\\u5934\\u50cf\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5934\\u50cf\"},{\"name\":\"phone\",\"translation\":\"\\u7535\\u8bdd\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7535\\u8bdd\"},{\"name\":\"cardnum\",\"translation\":\"\\u8eab\\u4efd\\u8bc1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8eab\\u4efd\\u8bc1\"},{\"name\":\"birthday\",\"translation\":\"\\u751f\\u65e5\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u751f\\u65e5\"},{\"name\":\"pid\",\"translation\":\"\\u7236\\u7ea7id\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u7236\\u7ea7id\"},{\"name\":\"fids\",\"translation\":\"\\u5173\\u7cfb\\u94fe\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5173\\u7cfb\\u94fe\"},{\"name\":\"level\",\"translation\":\"\\u7b49\\u7ea7\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7b49\\u7ea7\"},{\"name\":\"consume\",\"translation\":\"\\u6d88\\u8d39\",\"type\":\"decimal\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u6d88\\u8d39\"},{\"name\":\"money\",\"translation\":\"\\u91d1\\u989d\",\"type\":\"decimal\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u91d1\\u989d\"},{\"name\":\"integral\",\"translation\":\"\\u79ef\\u5206\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u79ef\\u5206\"},{\"name\":\"province\",\"translation\":\"\\u7701\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7701\"},{\"name\":\"city\",\"translation\":\"\\u5e02\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e02\"},{\"name\":\"country\",\"translation\":\"\\u533a\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u533a\"},{\"name\":\"area\",\"translation\":\"\\u9547\\u3001\\u8857\\u9053\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u9547\\u3001\\u8857\\u9053\"},{\"name\":\"address\",\"translation\":\"\\u8be6\\u7ec6\\u5730\\u5740\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8be6\\u7ec6\\u5730\\u5740\"},{\"name\":\"bindtime\",\"translation\":\"\\u7ed1\\u5b9a\\u65f6\\u95f4\",\"type\":\"timestamp\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7ed1\\u5b9a\\u65f6\\u95f4\"},{\"name\":\"commission\",\"translation\":\"\\u4f63\\u91d1\",\"type\":\"decimal\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u4f63\\u91d1\"},{\"name\":\"sumcommission\",\"translation\":\"\\u7d2f\\u8ba1\\u4f63\\u91d1\",\"type\":\"decimal\",\"key\":null,\"default\":\"0.00\",\"comment\":\"\\u7d2f\\u8ba1\\u4f63\\u91d1\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\"}', '2020-08-26 03:10:22', '2020-08-26 03:10:22');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-08-26 03:10:23', '2020-08-26 03:10:23');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:10:45', '2020-08-26 03:10:45');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-08-26 03:11:45', '2020-08-26 03:11:45');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:11:47', '2020-08-26 03:11:47');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:11:50', '2020-08-26 03:11:50');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/users', 'POST', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":null,\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":null,\"fids\":null,\"level\":null,\"consume\":null,\"money\":null,\"integral\":null,\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":null,\"sumcommission\":null,\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\"}', '2020-08-26 03:12:28', '2020-08-26 03:12:28');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/users', 'POST', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":null,\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":null,\"fids\":null,\"level\":null,\"consume\":null,\"money\":null,\"integral\":null,\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":null,\"sumcommission\":null,\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\"}', '2020-08-26 03:12:36', '2020-08-26 03:12:36');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/users', 'POST', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":null,\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":null,\"consume\":null,\"money\":null,\"integral\":null,\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":null,\"sumcommission\":null,\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\"}', '2020-08-26 03:12:48', '2020-08-26 03:12:48');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/users', 'POST', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":null,\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":\"0\",\"consume\":null,\"money\":null,\"integral\":null,\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":null,\"sumcommission\":null,\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\"}', '2020-08-26 03:12:55', '2020-08-26 03:12:55');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/users', 'POST', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":null,\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":\"0\",\"consume\":\"0\",\"money\":\"0\",\"integral\":\"0\",\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":\"0\",\"sumcommission\":\"0\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\"}', '2020-08-26 03:13:10', '2020-08-26 03:13:10');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:13:10', '2020-08-26 03:13:10');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:13:30', '2020-08-26 03:13:30');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:13:43', '2020-08-26 03:13:43');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:13:49', '2020-08-26 03:13:49');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:13:50', '2020-08-26 03:13:50');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:14:03', '2020-08-26 03:14:03');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:14:05', '2020-08-26 03:14:05');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:14:06', '2020-08-26 03:14:06');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:14:06', '2020-08-26 03:14:06');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:14:25', '2020-08-26 03:14:25');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:14:38', '2020-08-26 03:14:38');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:14:55', '2020-08-26 03:14:55');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:15:22', '2020-08-26 03:15:22');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:15:50', '2020-08-26 03:15:50');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:17:35', '2020-08-26 03:17:35');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/user/levels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:17:37', '2020-08-26 03:17:37');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:17:38', '2020-08-26 03:17:38');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:18:13', '2020-08-26 03:18:13');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:18:17', '2020-08-26 03:18:17');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:18:19', '2020-08-26 03:18:19');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 03:18:43', '2020-08-26 03:18:43');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"0\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\"}', '2020-08-26 03:18:45', '2020-08-26 03:18:45');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:18:45', '2020-08-26 03:18:45');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:18:57', '2020-08-26 03:18:57');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:19:01', '2020-08-26 03:19:01');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '[]', '2020-08-26 03:19:15', '2020-08-26 03:19:15');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '[]', '2020-08-26 03:19:33', '2020-08-26 03:19:33');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:19:41', '2020-08-26 03:19:41');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:19:42', '2020-08-26 03:19:42');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:19:49', '2020-08-26 03:19:49');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/user/levels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:19:50', '2020-08-26 03:19:50');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/user/levels/1', 'PUT', '127.0.0.1', '{\"level\":\"0\",\"title\":\"\\u6e38\\u5ba2\",\"status\":\"1\",\"discount\":\"100\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/user\\/levels\\/1\"}', '2020-08-26 03:19:53', '2020-08-26 03:19:53');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/user/levels/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:19:53', '2020-08-26 03:19:53');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:19:54', '2020-08-26 03:19:54');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:19:59', '2020-08-26 03:19:59');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:21:56', '2020-08-26 03:21:56');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:21:58', '2020-08-26 03:21:58');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 03:22:05', '2020-08-26 03:22:05');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:22:08', '2020-08-26 03:22:08');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:22:09', '2020-08-26 03:22:09');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:22:11', '2020-08-26 03:22:11');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:22:13', '2020-08-26 03:22:13');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:22:18', '2020-08-26 03:22:18');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:22:19', '2020-08-26 03:22:19');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":null,\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":\"0\",\"consume\":\"0.00\",\"money\":\"0.00\",\"integral\":\"0\",\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":\"0.00\",\"sumcommission\":\"0.00\",\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\\/1\"}', '2020-08-26 03:22:24', '2020-08-26 03:22:24');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:22:24', '2020-08-26 03:22:24');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:22:27', '2020-08-26 03:22:27');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:27:37', '2020-08-26 03:27:37');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:27:41', '2020-08-26 03:27:41');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/users', 'POST', '127.0.0.1', '{\"openid\":null,\"name\":null,\"nickname\":null,\"password\":null,\"avatar\":null,\"_file_\":null,\"phone\":null,\"cardnum\":null,\"birthday\":null,\"pid\":null,\"fids\":null,\"level\":null,\"consume\":null,\"money\":null,\"integral\":null,\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":null,\"sumcommission\":null,\"_token\":\"FXlzYPtosWw80NNMnN6uhQqoe8SjeSWOGohUdZx2\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\"}', '2020-08-26 03:27:58', '2020-08-26 03:27:58');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:28:02', '2020-08-26 03:28:02');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:28:10', '2020-08-26 03:28:10');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:28:23', '2020-08-26 03:28:23');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:28:26', '2020-08-26 03:28:26');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 03:28:34', '2020-08-26 03:28:34');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:28:58', '2020-08-26 03:28:58');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:29:17', '2020-08-26 03:29:17');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 03:29:23', '2020-08-26 03:29:23');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-08-26 03:29:27', '2020-08-26 03:29:27');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"20\"}', '2020-08-26 03:35:31', '2020-08-26 03:35:31');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"200\"}', '2020-08-26 03:35:33', '2020-08-26 03:35:33');
INSERT INTO `admin_operation_log` VALUES (376, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-08-26 06:58:34', '2020-08-26 06:58:34');
INSERT INTO `admin_operation_log` VALUES (377, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"dT6fmtwLFCtqFtswjc71a9IuAlNTbnHz3tDdbzGR\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-08-26 06:58:38', '2020-08-26 06:58:38');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"per_page\":\"200\"}', '2020-08-26 06:58:39', '2020-08-26 06:58:39');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:58:41', '2020-08-26 06:58:41');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:58:42', '2020-08-26 06:58:42');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:58:43', '2020-08-26 06:58:43');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:58:44', '2020-08-26 06:58:44');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:58:45', '2020-08-26 06:58:45');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:58:46', '2020-08-26 06:58:46');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:58:52', '2020-08-26 06:58:52');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:58:53', '2020-08-26 06:58:53');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 06:59:31', '2020-08-26 06:59:31');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:00:53', '2020-08-26 07:00:53');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:00:55', '2020-08-26 07:00:55');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"_id\":\"tPse3GVYGlrnQhKY\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"upload_column\":\"avatar\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"u=58991355,1691566822&fm=26&gp=0.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Aug 07 2020 10:31:31 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"58397\"}', '2020-08-26 07:01:03', '2020-08-26 07:01:03');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"_id\":\"tPse3GVYGlrnQhKY\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"avatar\":\"images\\/0b0246354149daade5d957002724e807.jpg\"}', '2020-08-26 07:01:04', '2020-08-26 07:01:04');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":\"images\\/0b0246354149daade5d957002724e807.jpg\",\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":\"0\",\"consume\":\"0.00\",\"money\":\"0.00\",\"integral\":\"0\",\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":\"0.00\",\"sumcommission\":\"0.00\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\"}', '2020-08-26 07:01:06', '2020-08-26 07:01:06');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":\"images\\/0b0246354149daade5d957002724e807.jpg\",\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":\"0\",\"consume\":\"0.00\",\"money\":\"0.00\",\"integral\":\"0\",\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":\"0.00\",\"sumcommission\":\"0.00\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\"}', '2020-08-26 07:01:12', '2020-08-26 07:01:12');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 07:01:25', '2020-08-26 07:01:25');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:01:30', '2020-08-26 07:01:30');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:01:30', '2020-08-26 07:01:30');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:01:35', '2020-08-26 07:01:35');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:01:48', '2020-08-26 07:01:48');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:01:52', '2020-08-26 07:01:52');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-08-26 07:01:53', '2020-08-26 07:01:53');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-08-26 07:02:01', '2020-08-26 07:02:01');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:02:03', '2020-08-26 07:02:03');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 07:02:23', '2020-08-26 07:02:23');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 07:05:11', '2020-08-26 07:05:11');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"_file_del_\":null,\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"key\":\"images\\/0b0246354149daade5d957002724e807.jpg\",\"_column\":\"avatar\"}', '2020-08-26 07:05:17', '2020-08-26 07:05:17');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"_id\":\"MFQ9QKVt44LJKLjO\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"upload_column\":\"avatar\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"u=58991355,1691566822&fm=26&gp=0.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Aug 07 2020 10:31:31 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"58397\"}', '2020-08-26 07:05:22', '2020-08-26 07:05:22');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"_id\":\"MFQ9QKVt44LJKLjO\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"avatar\":\"images\\/cfb2dcc6ed1f01e791359d01305c3bce.jpg\"}', '2020-08-26 07:05:23', '2020-08-26 07:05:23');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":\"images\\/cfb2dcc6ed1f01e791359d01305c3bce.jpg\",\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":\"0\",\"consume\":\"0.00\",\"money\":\"0.00\",\"integral\":\"0\",\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":\"0.00\",\"sumcommission\":\"0.00\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\"}', '2020-08-26 07:05:24', '2020-08-26 07:05:24');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:05:24', '2020-08-26 07:05:24');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:05:29', '2020-08-26 07:05:29');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:05:32', '2020-08-26 07:05:32');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 07:05:54', '2020-08-26 07:05:54');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"_file_del_\":null,\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"key\":\"images\\/cfb2dcc6ed1f01e791359d01305c3bce.jpg\",\"_column\":\"avatar\"}', '2020-08-26 07:05:57', '2020-08-26 07:05:57');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"_id\":\"8tLPPvaqIN5yIw28\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"upload_column\":\"avatar\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"1.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Aug 07 2020 10:32:10 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"58397\"}', '2020-08-26 07:06:00', '2020-08-26 07:06:00');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"_id\":\"8tLPPvaqIN5yIw28\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"avatar\":\"images\\/dd1e1fe8c02b1d58aed111dce1bc412d.jpg\"}', '2020-08-26 07:06:00', '2020-08-26 07:06:00');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":\"images\\/dd1e1fe8c02b1d58aed111dce1bc412d.jpg\",\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":\"0\",\"consume\":\"0.00\",\"money\":\"0.00\",\"integral\":\"0\",\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":\"0.00\",\"sumcommission\":\"0.00\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\"}', '2020-08-26 07:06:03', '2020-08-26 07:06:03');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:06:04', '2020-08-26 07:06:04');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:06:07', '2020-08-26 07:06:07');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:06:09', '2020-08-26 07:06:09');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-08-26 07:07:45', '2020-08-26 07:07:45');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:07:47', '2020-08-26 07:07:47');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:08:13', '2020-08-26 07:08:13');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:08:21', '2020-08-26 07:08:21');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:08:56', '2020-08-26 07:08:56');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:09:09', '2020-08-26 07:09:09');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:09:42', '2020-08-26 07:09:42');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:09:50', '2020-08-26 07:09:50');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:09:53', '2020-08-26 07:09:53');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:09:54', '2020-08-26 07:09:54');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:34:52', '2020-08-26 07:34:52');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:35:15', '2020-08-26 07:35:15');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:35:43', '2020-08-26 07:35:43');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:35:57', '2020-08-26 07:35:57');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:36:12', '2020-08-26 07:36:12');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:36:43', '2020-08-26 07:36:43');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:36:55', '2020-08-26 07:36:55');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:37:17', '2020-08-26 07:37:17');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:38:14', '2020-08-26 07:38:14');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:38:21', '2020-08-26 07:38:21');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:38:44', '2020-08-26 07:38:44');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"asc\"}}', '2020-08-26 07:41:10', '2020-08-26 07:41:10');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:41:21', '2020-08-26 07:41:21');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/user/levels/1,2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\"}', '2020-08-26 07:41:24', '2020-08-26 07:41:24');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:41:25', '2020-08-26 07:41:25');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 07:41:26', '2020-08-26 07:41:26');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:41:28', '2020-08-26 07:41:28');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:41:29', '2020-08-26 07:41:29');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:42:24', '2020-08-26 07:42:24');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:45:05', '2020-08-26 07:45:05');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:45:13', '2020-08-26 07:45:13');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:46:46', '2020-08-26 07:46:46');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:46:48', '2020-08-26 07:46:48');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/user/levels/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\"}', '2020-08-26 07:46:51', '2020-08-26 07:46:51');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:46:52', '2020-08-26 07:46:52');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 07:46:54', '2020-08-26 07:46:54');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:46:56', '2020-08-26 07:46:56');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:46:58', '2020-08-26 07:46:58');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:47:00', '2020-08-26 07:47:00');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:47:33', '2020-08-26 07:47:33');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:47:39', '2020-08-26 07:47:39');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:47:42', '2020-08-26 07:47:42');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:47:43', '2020-08-26 07:47:43');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:47:43', '2020-08-26 07:47:43');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:47:44', '2020-08-26 07:47:44');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 07:49:55', '2020-08-26 07:49:55');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:49:57', '2020-08-26 07:49:57');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:49:57', '2020-08-26 07:49:57');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:53:51', '2020-08-26 07:53:51');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:54:02', '2020-08-26 07:54:02');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:54:34', '2020-08-26 07:54:34');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:54:42', '2020-08-26 07:54:42');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:54:47', '2020-08-26 07:54:47');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/user/levels/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\"}', '2020-08-26 07:54:50', '2020-08-26 07:54:50');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:54:50', '2020-08-26 07:54:50');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 07:54:52', '2020-08-26 07:54:52');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:54:54', '2020-08-26 07:54:54');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:55:08', '2020-08-26 07:55:08');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:56:33', '2020-08-26 07:56:33');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:57:16', '2020-08-26 07:57:16');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:57:40', '2020-08-26 07:57:40');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:57:45', '2020-08-26 07:57:45');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-08-26 07:57:45', '2020-08-26 07:57:45');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-08-26 07:57:53', '2020-08-26 07:57:53');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:57:55', '2020-08-26 07:57:55');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-26 07:58:39', '2020-08-26 07:58:39');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"openid\":\"openid\",\"name\":\"Yel\",\"nickname\":\"yel\",\"password\":\"123******\",\"avatar\":\"images\\/dd1e1fe8c02b1d58aed111dce1bc412d.jpg\",\"_file_\":null,\"phone\":\"1311236169\",\"cardnum\":\"123\",\"birthday\":\"123\",\"pid\":\"0\",\"fids\":null,\"level\":\"5\",\"consume\":\"0.00\",\"money\":\"0.00\",\"integral\":\"0\",\"province\":null,\"city\":null,\"country\":null,\"area\":null,\"address\":null,\"bindtime\":null,\"commission\":\"0.00\",\"sumcommission\":\"0.00\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\"}', '2020-08-26 07:58:46', '2020-08-26 07:58:46');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:58:47', '2020-08-26 07:58:47');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:58:52', '2020-08-26 07:58:52');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:58:56', '2020-08-26 07:58:56');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 07:59:22', '2020-08-26 07:59:22');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:59:23', '2020-08-26 07:59:23');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"level\":\"5\"}', '2020-08-26 07:59:32', '2020-08-26 07:59:32');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"level\":\"5\"}', '2020-08-26 07:59:35', '2020-08-26 07:59:35');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"level\":\"5\"}', '2020-08-26 07:59:36', '2020-08-26 07:59:36');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/users', 'GET', '127.0.0.1', '{\"id\":null,\"level\":\"5\"}', '2020-08-26 07:59:48', '2020-08-26 07:59:48');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 07:59:59', '2020-08-26 07:59:59');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:00:41', '2020-08-26 08:00:41');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:02:04', '2020-08-26 08:02:04');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:02:30', '2020-08-26 08:02:30');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:02:35', '2020-08-26 08:02:35');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_search_\":\"openid\",\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:02:41', '2020-08-26 08:02:41');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_search_\":\"openids\",\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:02:44', '2020-08-26 08:02:44');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_search_\":null,\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:02:47', '2020-08-26 08:02:47');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_search_\":null}', '2020-08-26 08:04:34', '2020-08-26 08:04:34');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:09:13', '2020-08-26 08:09:13');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-08-26 08:09:50', '2020-08-26 08:09:50');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/users', 'POST', '127.0.0.1', '{\"openid\":\"openid2\",\"name\":\"\\u5c0f\\u65f6\",\"nickname\":\"\\u5c0f\\u65f6\",\"password\":\"ada******\",\"avatar\":null,\"_file_\":null,\"phone\":\"13112361569\",\"cardnum\":\"123123\",\"birthday\":\"123\",\"level\":\"5\",\"province\":\"123\",\"city\":\"123\",\"country\":\"123\",\"area\":\"123\",\"address\":\"123\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\"}', '2020-08-26 08:10:37', '2020-08-26 08:10:37');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:10:37', '2020-08-26 08:10:37');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:10:43', '2020-08-26 08:10:43');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:10:44', '2020-08-26 08:10:44');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"_id\":\"cvXx1SGFPz09D6Ey\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"upload_column\":\"avatar\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"u=1028809076,1938626553&fm=15&gp=0.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Fri Aug 07 2020 10:32:02 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"79725\"}', '2020-08-26 08:10:48', '2020-08-26 08:10:48');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"_id\":\"cvXx1SGFPz09D6Ey\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"avatar\":\"images\\/ccd95f01832353ac62d39713ce6681d7.jpg\"}', '2020-08-26 08:10:48', '2020-08-26 08:10:48');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"openid\":\"openid2\",\"name\":\"\\u5c0f\\u65f6\",\"nickname\":\"\\u5c0f\\u65f6\",\"password\":\"ada******\",\"avatar\":\"images\\/ccd95f01832353ac62d39713ce6681d7.jpg\",\"_file_\":null,\"phone\":\"13112361569\",\"cardnum\":\"123123\",\"birthday\":\"123\",\"level\":\"5\",\"province\":\"123\",\"city\":\"123\",\"country\":\"123\",\"area\":\"123\",\"address\":\"123\",\"_token\":\"phNLEp1g0aV3pEpJbSQSCuMnQRZKZSRPvikPF886\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.narwhal.com\\/admin\\/users\\/2\"}', '2020-08-26 08:10:49', '2020-08-26 08:10:49');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:10:50', '2020-08-26 08:10:50');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2020-08-26 08:11:25', '2020-08-26 08:11:25');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:11:28', '2020-08-26 08:11:28');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:11:35', '2020-08-26 08:11:35');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:11:36', '2020-08-26 08:11:36');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:14:28', '2020-08-26 08:14:28');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:14:29', '2020-08-26 08:14:29');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:14:35', '2020-08-26 08:14:35');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:15:10', '2020-08-26 08:15:10');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:15:13', '2020-08-26 08:15:13');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:15:16', '2020-08-26 08:15:16');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:15:42', '2020-08-26 08:15:42');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"level\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:15:45', '2020-08-26 08:15:45');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"level\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:15:46', '2020-08-26 08:15:46');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:16:01', '2020-08-26 08:16:01');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:16:02', '2020-08-26 08:16:02');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:16:03', '2020-08-26 08:16:03');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:16:34', '2020-08-26 08:16:34');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_export_\":\"page:1\"}', '2020-08-26 08:16:39', '2020-08-26 08:16:39');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2020-08-26 08:17:09', '2020-08-26 08:17:09');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:20:34', '2020-08-26 08:20:34');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_export_\":\"selected:1\"}', '2020-08-26 08:20:40', '2020-08-26 08:20:40');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:21:49', '2020-08-26 08:21:49');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:23:18', '2020-08-26 08:23:18');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_export_\":\"selected:1\"}', '2020-08-26 08:23:25', '2020-08-26 08:23:25');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:25:01', '2020-08-26 08:25:01');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:25:13', '2020-08-26 08:25:13');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:25:54', '2020-08-26 08:25:54');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:26:18', '2020-08-26 08:26:18');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:26:23', '2020-08-26 08:26:23');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:26:25', '2020-08-26 08:26:25');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:26:39', '2020-08-26 08:26:39');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:26:40', '2020-08-26 08:26:40');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:26:42', '2020-08-26 08:26:42');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:26:56', '2020-08-26 08:26:56');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:27:18', '2020-08-26 08:27:18');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"level\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:27:21', '2020-08-26 08:27:21');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"level\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:27:21', '2020-08-26 08:27:21');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:27:22', '2020-08-26 08:27:22');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"level\",\"type\":\"desc\"}}', '2020-08-26 08:27:23', '2020-08-26 08:27:23');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:27:33', '2020-08-26 08:27:33');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-08-26 08:27:40', '2020-08-26 08:27:40');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:28:01', '2020-08-26 08:28:01');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:28:03', '2020-08-26 08:28:03');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:28:04', '2020-08-26 08:28:04');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:28:06', '2020-08-26 08:28:06');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:28:06', '2020-08-26 08:28:06');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:29:56', '2020-08-26 08:29:56');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:30:32', '2020-08-26 08:30:32');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:37', '2020-08-26 08:30:37');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:37', '2020-08-26 08:30:37');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:38', '2020-08-26 08:30:38');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:38', '2020-08-26 08:30:38');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:39', '2020-08-26 08:30:39');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:39', '2020-08-26 08:30:39');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:40', '2020-08-26 08:30:40');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:40', '2020-08-26 08:30:40');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:41', '2020-08-26 08:30:41');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:43', '2020-08-26 08:30:43');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:44', '2020-08-26 08:30:44');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:45', '2020-08-26 08:30:45');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:45', '2020-08-26 08:30:45');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:46', '2020-08-26 08:30:46');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:47', '2020-08-26 08:30:47');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:30:48', '2020-08-26 08:30:48');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:31:39', '2020-08-26 08:31:39');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 08:31:51', '2020-08-26 08:31:51');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:32:09', '2020-08-26 08:32:09');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:32:12', '2020-08-26 08:32:12');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:32:14', '2020-08-26 08:32:14');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 08:34:15', '2020-08-26 08:34:15');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 08:34:17', '2020-08-26 08:34:17');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:34:21', '2020-08-26 08:34:21');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:34:21', '2020-08-26 08:34:21');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:34:22', '2020-08-26 08:34:22');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:34:28', '2020-08-26 08:34:28');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 08:34:28', '2020-08-26 08:34:28');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 09:41:20', '2020-08-26 09:41:20');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:41:23', '2020-08-26 09:41:23');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:41:25', '2020-08-26 09:41:25');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:41:26', '2020-08-26 09:41:26');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:41:26', '2020-08-26 09:41:26');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:42:03', '2020-08-26 09:42:03');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:42:06', '2020-08-26 09:42:06');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:42:20', '2020-08-26 09:42:20');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:42:33', '2020-08-26 09:42:33');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:42:35', '2020-08-26 09:42:35');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:42:37', '2020-08-26 09:42:37');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:43:11', '2020-08-26 09:43:11');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:43:47', '2020-08-26 09:43:47');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:45:41', '2020-08-26 09:45:41');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:46:10', '2020-08-26 09:46:10');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:46:12', '2020-08-26 09:46:12');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:46:30', '2020-08-26 09:46:30');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:46:34', '2020-08-26 09:46:34');
INSERT INTO `admin_operation_log` VALUES (609, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:47:06', '2020-08-26 09:47:06');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:47:14', '2020-08-26 09:47:14');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:47:20', '2020-08-26 09:47:20');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:47:25', '2020-08-26 09:47:25');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:47:26', '2020-08-26 09:47:26');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:47:29', '2020-08-26 09:47:29');
INSERT INTO `admin_operation_log` VALUES (615, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:47:29', '2020-08-26 09:47:29');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:47:31', '2020-08-26 09:47:31');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:47:43', '2020-08-26 09:47:43');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:58:51', '2020-08-26 09:58:51');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 09:59:50', '2020-08-26 09:59:50');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:52', '2020-08-26 09:59:52');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:53', '2020-08-26 09:59:53');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:53', '2020-08-26 09:59:53');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:53', '2020-08-26 09:59:53');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:54', '2020-08-26 09:59:54');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:55', '2020-08-26 09:59:55');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:56', '2020-08-26 09:59:56');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:57', '2020-08-26 09:59:57');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:57', '2020-08-26 09:59:57');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:58', '2020-08-26 09:59:58');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:58', '2020-08-26 09:59:58');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 09:59:59', '2020-08-26 09:59:59');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:00:05', '2020-08-26 10:00:05');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:00:06', '2020-08-26 10:00:06');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:00:07', '2020-08-26 10:00:07');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"level\",\"type\":\"desc\"}}', '2020-08-26 10:00:09', '2020-08-26 10:00:09');
INSERT INTO `admin_operation_log` VALUES (636, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"level\",\"type\":\"asc\"}}', '2020-08-26 10:00:10', '2020-08-26 10:00:10');
INSERT INTO `admin_operation_log` VALUES (637, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"consume\",\"type\":\"desc\"}}', '2020-08-26 10:00:11', '2020-08-26 10:00:11');
INSERT INTO `admin_operation_log` VALUES (638, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:00:18', '2020-08-26 10:00:18');
INSERT INTO `admin_operation_log` VALUES (639, 1, 'admin/user/levels', 'GET', '127.0.0.1', '[]', '2020-08-26 10:02:01', '2020-08-26 10:02:01');
INSERT INTO `admin_operation_log` VALUES (640, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:07', '2020-08-26 10:02:07');
INSERT INTO `admin_operation_log` VALUES (641, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:08', '2020-08-26 10:02:08');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:08', '2020-08-26 10:02:08');
INSERT INTO `admin_operation_log` VALUES (643, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:10', '2020-08-26 10:02:10');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:11', '2020-08-26 10:02:11');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:19', '2020-08-26 10:02:19');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:20', '2020-08-26 10:02:20');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:20', '2020-08-26 10:02:20');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:02:46', '2020-08-26 10:02:46');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:03:11', '2020-08-26 10:03:11');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:03:34', '2020-08-26 10:03:34');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:04:16', '2020-08-26 10:04:16');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:04:31', '2020-08-26 10:04:31');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'admin/user/levels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:04:32', '2020-08-26 10:04:32');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:04:33', '2020-08-26 10:04:33');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 10:05:32', '2020-08-26 10:05:32');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 10:05:49', '2020-08-26 10:05:49');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 10:05:53', '2020-08-26 10:05:53');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 10:05:57', '2020-08-26 10:05:57');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 10:06:21', '2020-08-26 10:06:21');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-08-26 10:06:27', '2020-08-26 10:06:27');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:06:30', '2020-08-26 10:06:30');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:06:32', '2020-08-26 10:06:32');

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu`  (
  `permission_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_permission_menu_permission_id_menu_id_unique`(`permission_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_permissions` VALUES (4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-08-26 01:53:18', NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-08-26 01:53:18', NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_menu_role_id_menu_id_unique`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_permissions_role_id_permission_id_unique`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_users_role_id_user_id_unique`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-08-26 01:53:18', '2020-08-26 01:53:18');

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$.78.mpsXgX8sYuSfjZbViu9knTse3r0H/VlAf02FCnnS4oQhN0weC', 'Administrator', NULL, NULL, '2020-08-26 01:53:18', '2020-08-26 01:53:18');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (8, '2020_08_26_020442_create_users_table', 4);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_08_26_021505_create_user_level_table', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `level` int(11) NOT NULL DEFAULT 0 COMMENT '等级',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态 1正常  2禁用',
  `discount` int(11) NOT NULL DEFAULT 100 COMMENT '折扣',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_level_level_unique`(`level`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES (5, 0, '游客', 0, 1, 100, '2020-08-26 07:54:54', '2020-08-26 07:54:54');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'Openid',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `nickname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `cardnum` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
  `birthday` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父级id',
  `fids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '关系链',
  `level` int(11) NOT NULL COMMENT '等级',
  `consume` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '消费',
  `money` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `integral` int(11) NOT NULL DEFAULT 0 COMMENT '积分',
  `province` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '省',
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '市',
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '区',
  `area` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '镇、街道',
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '详细地址',
  `bindtime` timestamp(0) NULL DEFAULT NULL COMMENT '绑定时间',
  `commission` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '佣金',
  `sumcommission` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '累计佣金',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 0, 'openid', 'Yel', 'yel', '123123', 'images/dd1e1fe8c02b1d58aed111dce1bc412d.jpg', '1311236169', '123', '123', 0, NULL, 5, 0.00, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, '2020-08-26 03:13:10', '2020-08-26 07:58:46');
INSERT INTO `users` VALUES (2, 0, 'openid2', '小时', '小时', 'adadasd', 'images/ccd95f01832353ac62d39713ce6681d7.jpg', '13112361569', '123123', '123', 0, NULL, 5, 0.00, 0.00, 0, '123', '123', '123', '123', '123', NULL, 0.00, 0.00, '2020-08-26 08:10:37', '2020-08-26 08:10:48');

SET FOREIGN_KEY_CHECKS = 1;
