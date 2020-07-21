/*
 Navicat MySQL Data Transfer

 Source Server         : 腾讯基础版
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : mysql-1.ennn.cn:10130
 Source Schema         : admin_ennn_cn

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 01/03/2020 20:56:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hq_ad
-- ----------------------------
DROP TABLE IF EXISTS `hq_ad`;
CREATE TABLE `hq_ad`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` smallint(8) NULL DEFAULT NULL COMMENT '用户ID',
  `category` smallint(5) NOT NULL DEFAULT 0 COMMENT '分类',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '链接',
  `target` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `sort_order` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_ad
-- ----------------------------
INSERT INTO `hq_ad` VALUES (1, NULL, 4, '12132', '111', '111', '_self', 'http://better.ennn.cn/uploads/20200229/35c501cd6c1b503e27f17347081dde12.jpg', 1212, 1, 0, 1582973504, 0);
INSERT INTO `hq_ad` VALUES (2, NULL, 5, 'sfasdfas', '', '', '_self', 'http://better.ennn.cn/uploads/20200229/83e85acea8a300a2f44f0749795da4c3.jpg', 12, 1, 0, 1582970703, 0);
INSERT INTO `hq_ad` VALUES (3, NULL, 0, '', '', '', '_self', '', 0, 1, 1574679225, 1577339294, 1577339294);

-- ----------------------------
-- Table structure for hq_ad_model
-- ----------------------------
DROP TABLE IF EXISTS `hq_ad_model`;
CREATE TABLE `hq_ad_model`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(10) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_ad_model
-- ----------------------------
INSERT INTO `hq_ad_model` VALUES (4, '首页', 1574394319, 1574394319, 0);
INSERT INTO `hq_ad_model` VALUES (5, '列表banner', 1574394336, 1574396950, 0);

-- ----------------------------
-- Table structure for hq_admin
-- ----------------------------
DROP TABLE IF EXISTS `hq_admin`;
CREATE TABLE `hq_admin`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员密码',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0禁用/1启动',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上次登录时间',
  `last_login_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `login_count` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录次数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_admin
-- ----------------------------
INSERT INTO `hq_admin` VALUES (1, 'hqs316', 'e10adc3949ba59abbe56e057f20f883e', 1, 1583066841, '221.198.239.26', 1281, 1555249039, 1583066841);
INSERT INTO `hq_admin` VALUES (30, 'assss', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '', 0, 1578575156, 1578575156);
INSERT INTO `hq_admin` VALUES (31, 'ssss', '16fcb1091f8a0cc70c96e2ff97fdd213', 1, 0, '', 0, 1578576543, 1578576543);
INSERT INTO `hq_admin` VALUES (32, 'adimin', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '', 0, 1579163506, 1579163506);
INSERT INTO `hq_admin` VALUES (33, 'admin66356', '0ba7bc92fcd57e337ebb9e74308c811f', 1, 0, '', 0, 1580217699, 1580217699);
INSERT INTO `hq_admin` VALUES (34, 'pppp333', '77963b7a931377ad4ab5ad6a9cd718aa', 1, 0, '', 0, 1580218870, 1580218870);
INSERT INTO `hq_admin` VALUES (35, 'fff', 'd08f331ddcf3bac5649dde9bd25ba12f', 1, 0, '', 0, 1580218925, 1580218925);
INSERT INTO `hq_admin` VALUES (36, 'aaaa333', '310dcbbf4cce62f762a2aaa148d556bd', 1, 0, '', 0, 1580222802, 1580222802);
INSERT INTO `hq_admin` VALUES (37, '333lllll', '2be9bd7a3434f7038ca27d1918de58bd', 1, 0, '', 0, 1580539401, 1580539401);

-- ----------------------------
-- Table structure for hq_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `hq_admin_log`;
CREATE TABLE `hq_admin_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员id',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `useragent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'ip地址',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求链接',
  `method` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求类型',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '资源类型',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求参数',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志备注',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2796 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hq_article
-- ----------------------------
DROP TABLE IF EXISTS `hq_article`;
CREATE TABLE `hq_article`  (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(8) NULL DEFAULT NULL COMMENT '用户ID',
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '图片',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '作者',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `photo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '相册',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `view` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击量',
  `is_top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶',
  `is_hot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `sort_order` int(11) NOT NULL DEFAULT 100 COMMENT '排序',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模板',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL',
  `jdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '自定义字段',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_article
-- ----------------------------
INSERT INTO `hq_article` VALUES (1, 1, 2, '黄青', '', '', '', 'a:3:{i:0;s:53:\"http://img.ccpr.com.cn/2019/1122/103457_612832_60.jpg\";i:1;s:54:\"http://img.ccpr.com.cn/2019/1122/103457_612714_384.jpg\";i:2;s:54:\"http://img.ccpr.com.cn/2019/1122/103457_612785_936.jpg\";}', '<p>沙发发是打发沙发上发</p>', 17, 0, 0, 1, 12, '', '', 'show_2.phtml', '/show/1.html', NULL, 1574387469, 1582973458, 0);
INSERT INTO `hq_article` VALUES (2, 1, 2, '啊的沙发都是发  ', '', '', '', 'a:1:{i:0;s:74:\"http://admin.ennn.cn/uploads/20191125/248286c3a87aedc2b9cb25dfef1acef2.jpg\";}', '<p>啊<img src=\"/uploads/image/20191125/1574687568617575.jpg\" title=\"1574687568617575.jpg\" alt=\"menu_bg.jpg\"/></p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/2.html', NULL, 1574388507, 1582966253, 0);
INSERT INTO `hq_article` VALUES (5, 1, 2, '123123', '213213', '456453', '123123123', 'a:3:{i:0;s:74:\"http://admin.ennn.cn/uploads/20191130/9bb0b57c5f7a1d06baee1f89e620031c.jpg\";i:1;s:74:\"http://admin.ennn.cn/uploads/20191130/7036ad27e8c0158d3e6aa39519475690.jpg\";i:2;s:74:\"http://admin.ennn.cn/uploads/20191130/2c09a00b1130e956a80b407c4696b501.jpg\";}', '<p>12312345312312</p>', 40, 0, 0, 1, 100, '345312', '345312312', 'show.phtml', '/show/5.html', NULL, 1575087584, 1582964842, 0);
INSERT INTO `hq_article` VALUES (6, 1, 6, 'dddd', '', 'dd', 'ddd', 's:0:\"\";', '<p>请输入详情内ddddd容</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/6.html', NULL, 1578192314, 1582964840, 0);
INSERT INTO `hq_article` VALUES (7, 1, 2, '4444444444444444', 'http://admin.ennn.cn/uploads/20200126/3c5bc3a561d2bc3a620c41ce16f7f4db.jpg', '', '', 'a:1:{i:0;s:75:\"http://admin.ennn.cn/uploads/20200205/1f60e5624d39b51c6d3a1def85e2038a.jpeg\";}', '<p><img src=\"/uploads/image/20200204/1580823786825661.gif\" title=\"1580823786825661.gif\" alt=\"79a00895jw1djmd9334ung.gif\"/><video class=\"edui-upload-video  vjs-default-skin   video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src data-setup=\"{}\"></video>请输入详情内容</p>', 26, 0, 0, 1, 100, '', '', 'show.phtml', '/show/7.html', NULL, 1579974161, 1582551707, 0);
INSERT INTO `hq_article` VALUES (8, 1, 2, '黄青', '', '', '', 'a:3:{i:0;s:53:\"http://img.ccpr.com.cn/2019/1122/103457_612832_60.jpg\";i:1;s:54:\"http://img.ccpr.com.cn/2019/1122/103457_612714_384.jpg\";i:2;s:54:\"http://img.ccpr.com.cn/2019/1122/103457_612785_936.jpg\";}', '<p>沙发发是打发沙发上发</p>', 17, 0, 0, 1, 100, '', '', 'show_2.phtml', '/show/8.html', NULL, 1574387469, 1582966262, 0);
INSERT INTO `hq_article` VALUES (9, 1, 9, '是打发沙发爱迪生发沙发阿什顿发第三方', '', '', '', 's:0:\"\";', '<p>是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方是打发沙发爱迪生发沙发阿什顿发第三方</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/9.html', NULL, 1582976320, 1582976320, 0);
INSERT INTO `hq_article` VALUES (10, 1, 9, '啊的沙发都是发', 'http://better.ennn.cn/uploads/20200229/6f8f8dbf4ffd8176d7e5bf291005ad58.jpg', '', '', 's:0:\"\";', '<p>啊的沙发都是发啊的沙发都是发啊的沙发都是发</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/10.html', NULL, 1582982922, 1582982922, 0);
INSERT INTO `hq_article` VALUES (11, 1, 9, '啊是打发', '/static/img/300x130.jpg', '', '', '', '<p>沙发</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/11.html', '{\"sort_order\":\"100\",\"_verify\":\"0\"}', 0, 1583067269, 0);
INSERT INTO `hq_article` VALUES (12, 1, 9, '大沙发是打发', '/static/img/300x130.jpg', '', '', '', '<p>爱上放大是打发啊</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/12.html', '{\"sort_order\":\"100\",\"_verify\":\"0\"}', 0, 1583067267, 0);
INSERT INTO `hq_article` VALUES (13, 1, 9, '大所发生的发大所发生的发发送', '/static/img/300x130.jpg', '', '', '', '<p>火华</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', NULL, NULL, 0, 0, 0);
INSERT INTO `hq_article` VALUES (14, 1, 9, '大所发生的发大所发生的发发送', '/static/img/300x130.jpg', '', '', 's:0:\"\";', '<p>火华</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/14.html', NULL, 0, 1582987978, 0);
INSERT INTO `hq_article` VALUES (15, 1, 9, '阿萨德法师打发是', '/static/img/300x130.jpg', '', '', 's:0:\"\";', '<p>爱上发沙发沙发上艾弗森发送</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/15.html', NULL, 1582987965, 1582987965, 0);
INSERT INTO `hq_article` VALUES (16, 1, 9, '大事发生大丰收的发顺丰', '/static/img/300x130.jpg', '', '', 's:0:\"\";', '<p>大事发生大丰收的发顺丰大事发生大丰收的发顺丰大事发生大丰收的发顺丰大事发生大丰收的发顺丰大事发生大丰收的发顺丰</p>', 0, 0, 0, 1, 100, '', '', 'show.phtml', '/show/16.html', NULL, 1583027277, 1583027277, 0);

-- ----------------------------
-- Table structure for hq_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `hq_auth_group`;
CREATE TABLE `hq_auth_group`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_auth_group
-- ----------------------------
INSERT INTO `hq_auth_group` VALUES (1, '超级管理员', '', 1, '6,44,43,2,84,89,102,101,90,1,94,95,97,96,11,25,26,27,56,57,58,59,98,99,4,12,92,45,68,69,70,103,5,16,37,38,39,17,40,41,42,15,22,23,24,18,53');

-- ----------------------------
-- Table structure for hq_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `hq_auth_group_access`;
CREATE TABLE `hq_auth_group_access`  (
  `uid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限授权' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_auth_group_access
-- ----------------------------
INSERT INTO `hq_auth_group_access` VALUES (1, 1);
INSERT INTO `hq_auth_group_access` VALUES (30, 1);
INSERT INTO `hq_auth_group_access` VALUES (31, 1);
INSERT INTO `hq_auth_group_access` VALUES (32, 1);
INSERT INTO `hq_auth_group_access` VALUES (33, 1);
INSERT INTO `hq_auth_group_access` VALUES (34, 1);
INSERT INTO `hq_auth_group_access` VALUES (35, 1);
INSERT INTO `hq_auth_group_access` VALUES (36, 1);
INSERT INTO `hq_auth_group_access` VALUES (37, 1);

-- ----------------------------
-- Table structure for hq_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `hq_auth_rule`;
CREATE TABLE `hq_auth_rule`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `icon` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `type` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'nav,auth',
  `index` tinyint(1) NOT NULL DEFAULT 0 COMMENT '快捷导航',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限规则' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_auth_rule
-- ----------------------------
INSERT INTO `hq_auth_rule` VALUES (1, 0, '文章管理', '', 'layui-icon-list', 3, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (2, 0, '会员管理', '', 'layui-icon-username', 2, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (4, 0, '系统设置', '', 'layui-icon-set', 5, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (5, 0, '管理员', '', 'layui-icon-auz', 6, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (6, 0, '控制台', 'admin/index/index', '', 1, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (11, 1, '广告管理', 'admin/ad/index', 'fa fa-image', 80, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (12, 4, '网站设置', 'admin/config/setting', 'fa fa-cog', 1, 'nav', 1, 1);
INSERT INTO `hq_auth_rule` VALUES (15, 5, '权限规则', 'admin/auth/rule', 'fa fa-th-list', 3, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (16, 5, '管理员', 'admin/admin/index', 'fa fa-user', 0, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (17, 5, '权限组', 'admin/auth/group', 'fa fa-users', 1, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (18, 5, '管理员日志', 'admin/admin/log', 'fa fa-clock-o', 5, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (22, 15, '添加', 'admin/auth/addRule', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (23, 15, '编辑', 'admin/auth/editRule', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (24, 15, '删除', 'admin/auth/delRule', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (25, 11, '添加', 'admin/ad/add', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (26, 11, '编辑', 'admin/ad/edit', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (27, 11, '删除', 'admin/ad/del', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (37, 16, '添加', 'admin/admin/add', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (38, 16, '编辑', 'admin/admin/edit', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (39, 16, '删除', 'admin/admin/del', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (40, 17, '添加', 'admin/auth/addGroup', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (41, 17, '编辑', 'admin/auth/editGroup', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (42, 17, '删除', 'admin/auth/delGroup', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (43, 6, '修改密码', 'admin/index/editPassword', '', 2, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (44, 6, '清除缓存', 'admin/index/clear', '', 1, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (45, 4, '上传设置', 'admin/config/upload', 'fa fa-upload', 4, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (53, 18, '一键清空', 'admin/admin/truncate', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (56, 1, '友情链接', 'admin/link/index', 'fa fa-address-book-o', 99, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (57, 56, '添加', 'admin/link/add', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (58, 56, '编辑', 'admin/link/edit', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (59, 56, '删除', 'admin/link/del', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (68, 45, '上传图片', 'admin/index/uploadimage', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (69, 45, '上传文件', 'admin/index/uploadfile', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (70, 45, '上传视频', 'admin/index/uploadvideo', '', 0, 'auth', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (84, 2, '用户管理', 'admin/user/index', '', 0, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (90, 2, '权限规则', 'admin/user_auth/rule', '', 10, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (92, 4, '参数设置', 'admin/config/param', '', 3, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (94, 1, '栏目管理', 'admin/category/index', '', 0, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (95, 1, '文章管理', 'admin/article/index', '', 0, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (96, 1, '模型管理', 'admin/category/models', '', 10, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (98, 0, '微信管理', 'admin/wechat/index', 'layui-icon-login-wechat', 4, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (99, 98, '微信用户', 'admin/wechat/index', '', 0, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (101, 2, '权限组', 'admin/user_auth/group', '', 9, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (102, 2, '操作日志', 'admin/user/log', '', 0, 'nav', 0, 1);
INSERT INTO `hq_auth_rule` VALUES (103, 4, '上传管理', 'admin/uploads/index', '', 10, 'nav', 0, 1);

-- ----------------------------
-- Table structure for hq_category
-- ----------------------------
DROP TABLE IF EXISTS `hq_category`;
CREATE TABLE `hq_category`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userid` int(8) NULL DEFAULT NULL COMMENT '用户ID',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级分类ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `catdir` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录名称',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '默认头图',
  `sort_order` int(11) NOT NULL DEFAULT 100 COMMENT '排序',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模型',
  `list_template` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列表页模板',
  `show_template` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容页模板',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '栏目URL',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_category
-- ----------------------------
INSERT INTO `hq_category` VALUES (1, 1, 0, '关于我们', 'asdfasf', '', 100, '', '', 'page', 'list_111_3.phtml', 'show_2.phtml', 'http://admin.ennn.cn/lists/1.html', 0, 1575428897, 1575428897);
INSERT INTO `hq_category` VALUES (2, NULL, 0, '我们的服务', 'asdfasdf', '', 99, 'asdfadsfa', 'dsadfadsfasdfasdf', 'article', 'list_111.phtml', 'show.phtml', '/lists/2.html', 0, 1582967775, 0);
INSERT INTO `hq_category` VALUES (4, NULL, 0, '国际新闻', '', '', 100, '', '', 'article', 'list_111.phtml', 'show.phtml', '/lists/4.html', 0, 1582961795, 0);
INSERT INTO `hq_category` VALUES (5, NULL, 10, '1', '1', '', 100, '', '1', 'article', 'list_111.phtml', 'show.phtml', 'http://admin.ennn.cn/lists/5.html', 1574731952, 1574731952, 0);
INSERT INTO `hq_category` VALUES (6, NULL, 2, 'ceshu', '', 'http://admin.ennn.cn/uploads/20200104/61554dbfa60c0e7bec0067da22390416.jpg', 100, '', '', 'article', 'list_111.phtml', 'show.phtml', 'http://admin.ennn.cn/lists/6.html', 1576028871, 1578644454, 1578644454);
INSERT INTO `hq_category` VALUES (7, NULL, 0, '1', '', '', 100, '', '', 'article', 'list_111.phtml', 'show.phtml', 'http://admin.ennn.cn/lists/7.html', 1576460368, 1577933217, 1577933217);
INSERT INTO `hq_category` VALUES (8, NULL, 4, '美国新闻', '', '', 120, '', '112', 'article', 'list_111.phtml', 'show_2.phtml', '/lists/8.html', 1576502324, 1582961806, 0);
INSERT INTO `hq_category` VALUES (9, NULL, 8, '华盛顿', '', '', 100, '', '', 'article', 'list_111.phtml', 'show.phtml', '/lists/9.html', 1582378570, 1582961819, 0);
INSERT INTO `hq_category` VALUES (10, NULL, 0, '关于我们', '', '', 100, '', '', 'article', 'list_111.phtml', 'show.phtml', '/lists/10.html', 1582967692, 1582967692, 0);
INSERT INTO `hq_category` VALUES (11, NULL, 0, '产品', '', '', 100, '', '', 'article', 'list_111.phtml', 'show.phtml', '/lists/11.html', 1582967709, 1582967709, 0);

-- ----------------------------
-- Table structure for hq_category_model
-- ----------------------------
DROP TABLE IF EXISTS `hq_category_model`;
CREATE TABLE `hq_category_model`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模型',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板',
  `status` smallint(5) NULL DEFAULT 1 COMMENT '状态',
  `is_sys` smallint(5) NULL DEFAULT 0 COMMENT '是否系统',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(10) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_category_model
-- ----------------------------
INSERT INTO `hq_category_model` VALUES (1, 'article', '文章模型', 1, 1, 1574347230, 1574347367, 0);
INSERT INTO `hq_category_model` VALUES (3, 'page', '单页模型', 1, 1, 1574347626, 1574351129, 0);
INSERT INTO `hq_category_model` VALUES (5, 'prodcuts', '产品模型', 1, 0, 1576502284, 1579335846, 0);

-- ----------------------------
-- Table structure for hq_category_model_field
-- ----------------------------
DROP TABLE IF EXISTS `hq_category_model_field`;
CREATE TABLE `hq_category_model_field`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置分组',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置标识',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置类型',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '默认值',
  `options` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项值',
  `sort_order` int(11) NOT NULL DEFAULT 100 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `is_sys` int(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否系统',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 390 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_category_model_field
-- ----------------------------
INSERT INTO `hq_category_model_field` VALUES (378, 'article', '简介', 'summary', 'textarea', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (379, 'article', '相册', 'photo', 'photo', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (380, 'article', '关键字', 'keywords', 'input', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (381, 'article', '描述', 'description', 'textarea', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (382, 'page', '简介', 'summary', 'textarea', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (383, 'page', '相册', 'photo', 'photo', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (384, 'page', '关键字', 'keywords', 'input', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (385, 'page', '描述', 'description', 'textarea', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (386, 'prodcuts', '简介', 'summary', 'textarea', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (387, 'prodcuts', '相册', 'photo', 'photo', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (388, 'prodcuts', '关键字', 'keywords', 'input', '', '', 100, 1, 1);
INSERT INTO `hq_category_model_field` VALUES (389, 'prodcuts', '描述', 'description', 'textarea', '', '', 100, 1, 1);

-- ----------------------------
-- Table structure for hq_link
-- ----------------------------
DROP TABLE IF EXISTS `hq_link`;
CREATE TABLE `hq_link`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` smallint(8) NULL DEFAULT NULL COMMENT '用户ID',
  `category` smallint(5) NOT NULL DEFAULT 0 COMMENT '分类',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '链接',
  `target` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `sort_order` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_link
-- ----------------------------
INSERT INTO `hq_link` VALUES (1, NULL, 4, '12132', '111', '111', '_self', 'https://vip.chunabao.cn/uploads/20191122/609b85504372c224ef5a337dfaa7941c.jpg', 0, 1, 0, 1582874041, 0);
INSERT INTO `hq_link` VALUES (2, NULL, 5, 'sfasdfas', '', '', '_self', '', 12, 1, 0, 1582874039, 0);
INSERT INTO `hq_link` VALUES (3, NULL, 0, '', '', '', '_self', '', 0, 1, 1577337116, 1577337121, 1577337121);

-- ----------------------------
-- Table structure for hq_link_model
-- ----------------------------
DROP TABLE IF EXISTS `hq_link_model`;
CREATE TABLE `hq_link_model`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(10) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_link_model
-- ----------------------------
INSERT INTO `hq_link_model` VALUES (4, '其他', 1574394319, 1582974187, 0);
INSERT INTO `hq_link_model` VALUES (5, '合作伙伴', 1574394336, 1582974182, 0);

-- ----------------------------
-- Table structure for hq_page
-- ----------------------------
DROP TABLE IF EXISTS `hq_page`;
CREATE TABLE `hq_page`  (
  `cid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '图片',
  `photo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '相册',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `view` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击量',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态',
  `sort_order` int(11) NOT NULL DEFAULT 100 COMMENT '排序',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL',
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模板',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单页' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_page
-- ----------------------------
INSERT INTO `hq_page` VALUES (10, '打算', '/static/img/300x130.jpg', NULL, '<p>是打发</p>', 0, 1, 100, '', '', 1582983679, 1582984903, '/page/10.html', 'show.phtml');

-- ----------------------------
-- Table structure for hq_uploads
-- ----------------------------
DROP TABLE IF EXISTS `hq_uploads`;
CREATE TABLE `hq_uploads`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `shop_id` int(5) NULL DEFAULT 0 COMMENT '商户ID',
  `user_id` int(5) UNSIGNED NULL DEFAULT 0 COMMENT '用户ID',
  `storage` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储位置',
  `file_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储域名',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `file_size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `mine` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(3) NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_uploads
-- ----------------------------
INSERT INTO `hq_uploads` VALUES (78, NULL, 1, 'local', NULL, NULL, NULL, 'image/jpeg', 1, 1582709441, 1582712201, 1582712201);
INSERT INTO `hq_uploads` VALUES (79, 0, 1, 'local', '', 'uploads/20200226/08fbf003cdc02e56dec541cc94a58898.jpg', '60982', 'image/jpeg', 1, 1582709753, 1582712194, 1582712194);
INSERT INTO `hq_uploads` VALUES (80, 8, 1, 'local', '', 'uploads/shop_1/20200226/3f044e60b66ff28880c7e2a7cb423c49.jpg', '60982', 'image/jpeg', 1, 1582710063, 1582710063, 0);
INSERT INTO `hq_uploads` VALUES (81, 0, 1, 'local', '', 'uploads/20200228/566d62db70c11d04264d846a846e06c9.jpg', '14911', 'image/jpeg', 1, 1582873458, 1582873458, 0);
INSERT INTO `hq_uploads` VALUES (82, 0, 1, 'local', '', 'uploads/20200228/ff336e6c0442b494baae9a957e35ecb9.jpg', '14911', 'image/jpeg', 1, 1582874022, 1582874022, 0);
INSERT INTO `hq_uploads` VALUES (83, 0, 1, 'local', '', 'uploads/20200228/92917eb471b07ae6731f8877110d4a1b.jpg', '276405', 'image/jpeg', 1, 1582874022, 1582874022, 0);
INSERT INTO `hq_uploads` VALUES (84, 0, 1, 'local', '', 'uploads/20200228/8501a626102a76c1e5bfbc8fd9d14331.png', '352386', 'image/png', 1, 1582874022, 1582874022, 0);
INSERT INTO `hq_uploads` VALUES (85, 0, 1, 'local', '', 'uploads/20200229/83e85acea8a300a2f44f0749795da4c3.jpg', '95295', 'image/jpeg', 1, 1582970699, 1582970699, 0);
INSERT INTO `hq_uploads` VALUES (86, 0, 1, 'local', '', 'uploads/20200229/35c501cd6c1b503e27f17347081dde12.jpg', '93078', 'image/jpeg', 1, 1582970712, 1582970712, 0);
INSERT INTO `hq_uploads` VALUES (87, 0, 1, 'local', '', 'uploads/20200229/6f8f8dbf4ffd8176d7e5bf291005ad58.jpg', '93078', 'image/jpeg', 1, 1582982911, 1583058438, 1583058438);
INSERT INTO `hq_uploads` VALUES (88, 0, 1, 'local', '', 'uploads/20200301/6cf7b13948fb281de5f31e0e878026f2.jpg', '12767', 'image/jpeg', 1, 1583027338, 1583027338, 0);

-- ----------------------------
-- Table structure for hq_user
-- ----------------------------
DROP TABLE IF EXISTS `hq_user`;
CREATE TABLE `hq_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `shop_id` smallint(8) NULL DEFAULT NULL COMMENT '商户ID',
  `mobile` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatarurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0禁用/1启动',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上次登录时间',
  `last_login_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `login_count` int(11) NOT NULL DEFAULT 0 COMMENT '登录次数',
  `sort_order` smallint(5) NULL DEFAULT 0 COMMENT '排序',
  `group_id` int(3) NULL DEFAULT NULL COMMENT '所属组',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10074 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_user
-- ----------------------------
INSERT INTO `hq_user` VALUES (10064, 4, '13459401111', NULL, '黄氏集团', NULL, 1, 0, '', 0, 0, 0, 1574424598, 1574735804, 1574735804);
INSERT INTO `hq_user` VALUES (10065, 5, '13455555555', NULL, '22222', NULL, 1, 0, '', 0, 0, 5, 1574424878, 1574679184, 1574679184);
INSERT INTO `hq_user` VALUES (10066, 0, '13865656565', NULL, '1', NULL, 1, 0, '', 0, 0, 0, 1575466745, 1576034067, 1576034067);
INSERT INTO `hq_user` VALUES (10067, 0, '18851052525', '5d489144deeb1a3562f09738291be6d6', '18851052525', NULL, 1, 1576071756, '180.109.177.34', 1, 0, 0, 1576071744, 1576120814, 1576120814);
INSERT INTO `hq_user` VALUES (10068, 0, '18789475201', 'e10adc3949ba59abbe56e057f20f883e', '老王', NULL, 1, 0, '', 0, 0, 0, 1576120749, 1578260549, 1578260549);
INSERT INTO `hq_user` VALUES (10069, 0, '18899999999', 'e10adc3949ba59abbe56e057f20f883e', 'ceshi', NULL, 1, 0, '', 0, 0, 0, 1576411788, 1578659798, 1578659798);
INSERT INTO `hq_user` VALUES (10070, 6, '13800138000', 'a8ecbabae151abacba7dbde04f761c37', '888888', NULL, 1, 0, '', 0, 0, 10, 1576488928, 1576926497, 1576926497);
INSERT INTO `hq_user` VALUES (10071, 7, '13055555555', 'abecffaa52f529a2b83b6612a7964b02', 'dfad', NULL, 1, 0, '', 0, 0, 16, 1579004998, 1579159107, 1579159107);
INSERT INTO `hq_user` VALUES (10072, 0, '17733336666', 'abb1695e0e8981d76b4f997739a58f2d', '123123', NULL, 1, 0, '', 0, 0, 0, 1579159144, 1581996075, 1581996075);
INSERT INTO `hq_user` VALUES (10073, 0, '13111111111', '96e79218965eb72c92a549dd5a330112', '后服务', NULL, 1, 1583062085, '223.88.94.206', 1, 0, 0, 1583062073, 1583062085, 0);

-- ----------------------------
-- Table structure for hq_user_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `hq_user_auth_group`;
CREATE TABLE `hq_user_auth_group`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shop_id` smallint(5) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_user_auth_group
-- ----------------------------
INSERT INTO `hq_user_auth_group` VALUES (1, NULL, '超级管理员1', 'asdasdasd', 1, '1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,19', 0, 1582630394, 0);
INSERT INTO `hq_user_auth_group` VALUES (4, 4, '总经理', '', 0, '124,125,128,132,133,141,127,140,142,126,129,130,131,77,78,81,82,83,79,84,85,86,137,138,139,80,87,1,2,3', 0, 1574754607, 1574754607);
INSERT INTO `hq_user_auth_group` VALUES (5, 5, '总经理', '', 1, '1,2,3,4', 0, 1574754602, 1574754602);
INSERT INTO `hq_user_auth_group` VALUES (6, NULL, 'aa', '111', 1, '1,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', 1575703822, 1580579105, 1580579105);
INSERT INTO `hq_user_auth_group` VALUES (7, NULL, 'bb', '', 1, '', 1575703830, 1575995296, 1575995296);
INSERT INTO `hq_user_auth_group` VALUES (8, 4, '', '', 1, '1,2,3,4,5', 1575813090, 1575995292, 1575995292);
INSERT INTO `hq_user_auth_group` VALUES (9, 4, 'dshdf', 'dsfh', 1, '1,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', 1576071823, 1580579082, 0);
INSERT INTO `hq_user_auth_group` VALUES (10, 6, '总经理', '', 0, '124,125,128,132,133,141,127,140,142,126,129,130,131,77,78,81,82,83,79,84,85,86,137,138,139,80,87,1,2,3', 1576488928, 1582118208, 0);
INSERT INTO `hq_user_auth_group` VALUES (11, NULL, '213', '213213', 0, '6,7', 1576669747, 1579591524, 0);
INSERT INTO `hq_user_auth_group` VALUES (12, NULL, '子管理员', '阿', 0, '1,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18', 1576926532, 1579591531, 0);
INSERT INTO `hq_user_auth_group` VALUES (13, 6, '', '', 0, '', 1577066358, 1579591520, 0);
INSERT INTO `hq_user_auth_group` VALUES (14, 6, '', '', 0, '', 1577066362, 1578846242, 1578846242);
INSERT INTO `hq_user_auth_group` VALUES (15, 4, '', '', 0, '1,2,4,5,8,9,10,11,12,23,13,14,15,16,17,18', 1577860157, 1579591519, 0);
INSERT INTO `hq_user_auth_group` VALUES (16, 7, '总经理', '', 0, '124,125,128,132,133,141,127,140,142,126,129,130,131,77,78,81,82,83,79,84,85,86,137,138,139,80,87,1,2,3', 1579004998, 1579591523, 0);
INSERT INTO `hq_user_auth_group` VALUES (17, NULL, 'A', '', 1, '1,2,4,5', 1580541045, 1580541055, 0);
INSERT INTO `hq_user_auth_group` VALUES (18, 6, '44', '44', 1, '1,2,4,5,8,9,10,11,12,23,13,14,15,16,17,18,24', 1582373665, 1582373665, 0);
INSERT INTO `hq_user_auth_group` VALUES (19, 6, '', '', 1, '', 1582630342, 1582630342, 0);

-- ----------------------------
-- Table structure for hq_user_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `hq_user_auth_rule`;
CREATE TABLE `hq_user_auth_rule`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `icon` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `type` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'nav,auth',
  `index` tinyint(1) NOT NULL DEFAULT 0 COMMENT '快捷导航',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限规则' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hq_user_auth_rule
-- ----------------------------
INSERT INTO `hq_user_auth_rule` VALUES (1, 0, '记账管理', '', '', 0, 'nav', 1, 1);
INSERT INTO `hq_user_auth_rule` VALUES (2, 1, '记账明细', 'user/finance/index', '', 0, 'nav', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (4, 1, '修改记账', 'user/finance/edit', '', 0, 'nav', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (5, 1, '删除记账', 'user/finance/del', '', 0, 'nav', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (8, 0, '用户设置', '', '', 0, 'nav', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (9, 8, '账号管理', 'user/staff/index', '', 0, 'nav', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (10, 9, '添加账号', 'user/staff/add', '', 0, 'auth', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (11, 9, '修改账号', 'user/staff/edit', '', 0, 'auth', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (12, 9, '删除账号', 'user/staff/del', '', 0, 'auth', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (13, 8, '参数设置', 'user/config/index', '', 0, 'nav', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (14, 13, '添加参数', 'user/config/add', '', 0, 'auth', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (15, 13, '修改参数', 'user/config/edit', '', 0, 'auth', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (16, 13, '删除参数', 'user/config/del', '', 0, 'auth', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (17, 8, '操作日志', 'user/log/index', '', 0, 'nav', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (18, 17, '清空日志', 'user/log/clear', '', 0, 'auth', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (23, 9, '测试', '', '', 0, 'nav', 0, 1);
INSERT INTO `hq_user_auth_rule` VALUES (24, 8, '', '', '', 0, 'nav', 1, 1);

-- ----------------------------
-- Table structure for hq_user_log
-- ----------------------------
DROP TABLE IF EXISTS `hq_user_log`;
CREATE TABLE `hq_user_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员id',
  `ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'ip地址',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求链接',
  `method` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求类型',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '资源类型',
  `param` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求参数',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志备注',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(10) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hq_wechat
-- ----------------------------
DROP TABLE IF EXISTS `hq_wechat`;
CREATE TABLE `hq_wechat`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '昵称',
  `gender` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '性别',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国家',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `avatarurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `unionid` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'UNIONID',
  `openid` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OPENID',
  `sort_order` smallint(5) NULL DEFAULT 0 COMMENT '排序',
  `subscribe` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关注与否',
  `subscribe_time` int(10) NULL DEFAULT NULL COMMENT '关注时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11837 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
