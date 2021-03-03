/*
 Navicat Premium Data Transfer

 Source Server         : bms
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : bms_dev

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 03/03/2021 17:50:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ums_admin_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_rel`;
CREATE TABLE `ums_admin_role_rel`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_admin_role_rel
-- ----------------------------
INSERT INTO `ums_admin_role_rel` VALUES ('5b623d497739483ab6811aeb8af7e1b7', '82649f731d554d70ace20d8e7d8b4172', '38eddcd9819c490d87e718a1ec0d3207');

-- ----------------------------
-- Table structure for ums_login_record
-- ----------------------------
DROP TABLE IF EXISTS `ums_login_record`;
CREATE TABLE `ums_login_record`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `terminal` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登录终端',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登录ip',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登录地址',
  `login_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '后台用户登录记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '父菜单id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单名称',
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '前端路由',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单图标',
  `show` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '显示菜单',
  `level` int(11) NULL DEFAULT NULL COMMENT '菜单级别',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '后台菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ums_resource
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource`;
CREATE TABLE `ums_resource`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `category_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资源分类id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资源名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资源url',
  `descript` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '后台资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ums_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource_category`;
CREATE TABLE `ums_resource_category`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资源分类名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '资源分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色名称',
  `descript` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色描述',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '后台角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES ('38eddcd9819c490d87e718a1ec0d3207', '超级管理员', '系统超级管理员，拥有所有权限', 'normal', 1, 'system', '2021-03-01 20:18:30', 'system', '2021-03-02 08:42:22', '0');

-- ----------------------------
-- Table structure for ums_role_menu_rel
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_rel`;
CREATE TABLE `ums_role_menu_rel`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ums_role_resource_rel
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resource_rel`;
CREATE TABLE `ums_role_resource_rel`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色id',
  `resource_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资源id',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ums_user
-- ----------------------------
DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE `ums_user`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户类型',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '状态',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电子邮箱',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '昵称',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证号',
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生日',
  `web_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '个人网站地址',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像url',
  `self_intro` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '个人介绍',
  `login_time` datetime NULL DEFAULT NULL COMMENT '上次登录时间',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '后台管理用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_user
-- ----------------------------
INSERT INTO `ums_user` VALUES ('82649f731d554d70ace20d8e7d8b4172', 'administrator', '$2a$10$6UX5c8E/aLZ2/di3DIAMVOpbZsDJw3xH5AdElw8o8zFAWiBiSxSZK', 'administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'system', '2021-03-01 10:48:00', 'system', '2021-03-01 10:48:00', '0');

-- ----------------------------
-- Table structure for yms_api_exc
-- ----------------------------
DROP TABLE IF EXISTS `yms_api_exc`;
CREATE TABLE `yms_api_exc`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '异常编码',
  `descript` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '异常描述',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '异常原因',
  `solution` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '处理方法',
  `print` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '前端显示',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '异常信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_api_exc
-- ----------------------------
INSERT INTO `yms_api_exc` VALUES ('2679bed66efe487992c0abdc763b5e29', 'B020101001', '新增数据字典[编码{}]失败', '数据字典编码已存在，不能重复使用', '请重写填写其他数据字典编码', '数据字典编码已存在，请重新填写数据字典编码', '数据字典编码重复，无法添加数据字典', 'system', '2021-02-28 14:54:43', 'system', '2021-02-28 14:54:43', '0');
INSERT INTO `yms_api_exc` VALUES ('2a97c1f08e864e0b994150dc375c7292', 'B020201001', '新增系统参数[编码{}]失败', '系统参数编码已存在，不能重复使用', '请重新填写其他系统参数编码', '系统参数编码已存在，请重新填写系统参数编码', '系统参数编码重复，无法添加系统参数', 'system', '2021-02-28 17:01:54', 'system', '2021-02-28 17:01:54', '0');
INSERT INTO `yms_api_exc` VALUES ('8c8878e255b64cefbc2abe2c56c68020', 'B020101002', '数据字典[编码{}]不存在', '数据字典不存在或未刷新到缓存', '请确认数据字典已经录入并且已更新到缓存', '未找到该数据字典', '根据编码未找到数据字典', 'system', '2021-02-28 14:57:18', 'system', '2021-02-28 14:57:18', '0');
INSERT INTO `yms_api_exc` VALUES ('9b24f6defb22496aa4127dcb28cc9247', 'B010201002', '密码格式不正确，密码正确格式为{}', '用户输入的密码格式不正确', '请用正确的密码格式输入密码', '密码格式不正确', '用户设置密码格式不符合要求', 'system', '2021-02-28 17:19:40', 'system', '2021-02-28 17:19:40', '0');
INSERT INTO `yms_api_exc` VALUES ('aab10af5f68a411c8d85a2bcdb002424', 'B010201001', '用户名{}已存在', '系统已存在该用户名，用户名不能重复', '更换其他用户名', '用户名已存在，请更换其他用户名', '系统无法添加重复用户名的用户', 'system', '2021-02-28 17:08:47', 'system', '2021-02-28 17:08:47', '0');
INSERT INTO `yms_api_exc` VALUES ('e365f072c0834b2abe50becc52bec65e', 'B020301001', '新增接口异常信息[编码{}]失败', '接口异常编码已存在，不能重复使用', '请重写填写其他异常编码', '接口异常信息编码已存在，请重新填写异常编码', '接口异常编码重复，无法添加接口异常信息', 'system', '2021-02-25 14:01:13', 'system', '2021-02-25 14:01:13', '0');

-- ----------------------------
-- Table structure for yms_data_dict
-- ----------------------------
DROP TABLE IF EXISTS `yms_data_dict`;
CREATE TABLE `yms_data_dict`  (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '字典名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '字典编码',
  `value` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '字典值',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注说明',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '数据字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_data_dict
-- ----------------------------
INSERT INTO `yms_data_dict` VALUES ('39b6fe8a6e9243e395c30d33d4985384', '角色状态', 'roleStatus', '[{\"itemName\":\"正常\",\"itemValue\":\"normal\",\"chooseable\":\"true\"},{\"itemName\":\"禁用\",\"itemValue\":\"disable\",\"chooseable\":\"true\"}]', 'valid', '定义的角色状态', 'system', '2021-03-01 20:17:26', 'system', '2021-03-01 20:17:26', '0');
INSERT INTO `yms_data_dict` VALUES ('dfc2c654cc7d4608bb5d3bff2c2dbd22', '性别', 'gender', '[{\"itemName\":\"男\",\"itemValue\":\"male\",\"chooseable\":\"true\"},{\"itemName\":\"女\",\"itemValue\":\"female\",\"chooseable\":\"true\"},{\"itemName\":\"未知\",\"itemValue\":\"unknown\",\"chooseable\":\"true\"}]', 'valid', '用户可选性别', 'system', '2021-02-28 15:00:56', 'system', '2021-02-28 15:00:56', '0');

-- ----------------------------
-- Table structure for yms_system_setting
-- ----------------------------
DROP TABLE IF EXISTS `yms_system_setting`;
CREATE TABLE `yms_system_setting`  (
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '编码',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '值',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注说明',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '系统参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yms_system_setting
-- ----------------------------
INSERT INTO `yms_system_setting` VALUES ('1b1b7eefb33c4c7d8b269c5e81c88693', '管理员密码正则表达式', 'adminPwdRegex', '^[a-zA-Z\\d_]{6,20}$', '管理员密码正则表达式', 'system', '2021-02-28 17:42:02', 'system', '2021-03-01 10:44:07', '0');

SET FOREIGN_KEY_CHECKS = 1;
