/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : hkweng

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-01-19 17:25:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ax_ad
-- ----------------------------
DROP TABLE IF EXISTS `ax_ad`;
CREATE TABLE `ax_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL,
  `ad_content` text,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_ad
-- ----------------------------

-- ----------------------------
-- Table structure for ax_asset
-- ----------------------------
DROP TABLE IF EXISTS `ax_asset`;
CREATE TABLE `ax_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) NOT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filepath` varchar(200) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `meta` text,
  `suffix` varchar(50) DEFAULT NULL,
  `download_times` int(6) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_asset
-- ----------------------------

-- ----------------------------
-- Table structure for ax_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `ax_auth_access`;
CREATE TABLE `ax_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for ax_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ax_auth_rule`;
CREATE TABLE `ax_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='权限规则表';

-- ----------------------------
-- Records of ax_auth_rule
-- ----------------------------
INSERT INTO `ax_auth_rule` VALUES ('1', 'Admin', 'admin_url', 'admin/content/default', null, '内容管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('2', 'Api', 'admin_url', 'api/guestbookadmin/index', null, '所有留言', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('3', 'Api', 'admin_url', 'api/guestbookadmin/delete', null, '删除网站留言', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('4', 'Comment', 'admin_url', 'comment/commentadmin/index', null, '评论管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('5', 'Comment', 'admin_url', 'comment/commentadmin/delete', null, '删除评论', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('6', 'Comment', 'admin_url', 'comment/commentadmin/check', null, '评论审核', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('7', 'Portal', 'admin_url', 'portal/adminpost/index', null, '文章管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('8', 'Portal', 'admin_url', 'portal/adminpost/listorders', null, '文章排序', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('9', 'Portal', 'admin_url', 'portal/adminpost/top', null, '文章置顶', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('10', 'Portal', 'admin_url', 'portal/adminpost/recommend', null, '文章推荐', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('11', 'Portal', 'admin_url', 'portal/adminpost/move', null, '批量移动', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('12', 'Portal', 'admin_url', 'portal/adminpost/check', null, '文章审核', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('13', 'Portal', 'admin_url', 'portal/adminpost/delete', null, '删除文章', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('14', 'Portal', 'admin_url', 'portal/adminpost/edit', null, '编辑文章', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('15', 'Portal', 'admin_url', 'portal/adminpost/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('16', 'Portal', 'admin_url', 'portal/adminpost/add', null, '添加文章', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('17', 'Portal', 'admin_url', 'portal/adminpost/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('18', 'Portal', 'admin_url', 'portal/adminterm/index', null, '分类管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('19', 'Portal', 'admin_url', 'portal/adminterm/listorders', null, '文章分类排序', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('20', 'Portal', 'admin_url', 'portal/adminterm/delete', null, '删除分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('21', 'Portal', 'admin_url', 'portal/adminterm/edit', null, '编辑分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('22', 'Portal', 'admin_url', 'portal/adminterm/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('23', 'Portal', 'admin_url', 'portal/adminterm/add', null, '添加分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('24', 'Portal', 'admin_url', 'portal/adminterm/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('25', 'Portal', 'admin_url', 'portal/adminpage/index', null, '页面管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('26', 'Portal', 'admin_url', 'portal/adminpage/listorders', null, '页面排序', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('27', 'Portal', 'admin_url', 'portal/adminpage/delete', null, '删除页面', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('28', 'Portal', 'admin_url', 'portal/adminpage/edit', null, '编辑页面', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('29', 'Portal', 'admin_url', 'portal/adminpage/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('30', 'Portal', 'admin_url', 'portal/adminpage/add', null, '添加页面', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('31', 'Portal', 'admin_url', 'portal/adminpage/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('32', 'Admin', 'admin_url', 'admin/recycle/default', null, '回收站', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('33', 'Portal', 'admin_url', 'portal/adminpost/recyclebin', null, '文章回收', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('34', 'Portal', 'admin_url', 'portal/adminpost/restore', null, '文章还原', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('35', 'Portal', 'admin_url', 'portal/adminpost/clean', null, '彻底删除', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('36', 'Portal', 'admin_url', 'portal/adminpage/recyclebin', null, '页面回收', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('37', 'Portal', 'admin_url', 'portal/adminpage/clean', null, '彻底删除', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('38', 'Portal', 'admin_url', 'portal/adminpage/restore', null, '页面还原', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('39', 'Admin', 'admin_url', 'admin/extension/default', null, '扩展工具', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('40', 'Admin', 'admin_url', 'admin/backup/default', null, '备份管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('41', 'Admin', 'admin_url', 'admin/backup/restore', null, '数据还原', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('42', 'Admin', 'admin_url', 'admin/backup/index', null, '数据备份', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('43', 'Admin', 'admin_url', 'admin/backup/index_post', null, '提交数据备份', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('44', 'Admin', 'admin_url', 'admin/backup/download', null, '下载备份', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('45', 'Admin', 'admin_url', 'admin/backup/del_backup', null, '删除备份', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('46', 'Admin', 'admin_url', 'admin/backup/import', null, '数据备份导入', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('47', 'Admin', 'admin_url', 'admin/plugin/index', null, '插件管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('48', 'Admin', 'admin_url', 'admin/plugin/toggle', null, '插件启用切换', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('49', 'Admin', 'admin_url', 'admin/plugin/setting', null, '插件设置', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('50', 'Admin', 'admin_url', 'admin/plugin/setting_post', null, '插件设置提交', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('51', 'Admin', 'admin_url', 'admin/plugin/install', null, '插件安装', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('52', 'Admin', 'admin_url', 'admin/plugin/uninstall', null, '插件卸载', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('53', 'Admin', 'admin_url', 'admin/slide/default', null, '幻灯片', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('54', 'Admin', 'admin_url', 'admin/slide/index', null, '幻灯片管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('55', 'Admin', 'admin_url', 'admin/slide/listorders', null, '幻灯片排序', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('56', 'Admin', 'admin_url', 'admin/slide/toggle', null, '幻灯片显示切换', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('57', 'Admin', 'admin_url', 'admin/slide/delete', null, '删除幻灯片', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('58', 'Admin', 'admin_url', 'admin/slide/edit', null, '编辑幻灯片', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('59', 'Admin', 'admin_url', 'admin/slide/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('60', 'Admin', 'admin_url', 'admin/slide/add', null, '添加幻灯片', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('61', 'Admin', 'admin_url', 'admin/slide/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('62', 'Admin', 'admin_url', 'admin/slidecat/index', null, '幻灯片分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('63', 'Admin', 'admin_url', 'admin/slidecat/delete', null, '删除分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('64', 'Admin', 'admin_url', 'admin/slidecat/edit', null, '编辑分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('65', 'Admin', 'admin_url', 'admin/slidecat/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('66', 'Admin', 'admin_url', 'admin/slidecat/add', null, '添加分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('67', 'Admin', 'admin_url', 'admin/slidecat/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('68', 'Admin', 'admin_url', 'admin/ad/index', null, '网站广告', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('69', 'Admin', 'admin_url', 'admin/ad/toggle', null, '广告显示切换', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('70', 'Admin', 'admin_url', 'admin/ad/delete', null, '删除广告', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('71', 'Admin', 'admin_url', 'admin/ad/edit', null, '编辑广告', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('72', 'Admin', 'admin_url', 'admin/ad/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('73', 'Admin', 'admin_url', 'admin/ad/add', null, '添加广告', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('74', 'Admin', 'admin_url', 'admin/ad/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('75', 'Admin', 'admin_url', 'admin/link/index', null, '友情链接', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('76', 'Admin', 'admin_url', 'admin/link/listorders', null, '友情链接排序', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('77', 'Admin', 'admin_url', 'admin/link/toggle', null, '友链显示切换', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('78', 'Admin', 'admin_url', 'admin/link/delete', null, '删除友情链接', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('79', 'Admin', 'admin_url', 'admin/link/edit', null, '编辑友情链接', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('80', 'Admin', 'admin_url', 'admin/link/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('81', 'Admin', 'admin_url', 'admin/link/add', null, '添加友情链接', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('82', 'Admin', 'admin_url', 'admin/link/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('83', 'Api', 'admin_url', 'api/oauthadmin/setting', null, '第三方登陆', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('84', 'Api', 'admin_url', 'api/oauthadmin/setting_post', null, '提交设置', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('85', 'Admin', 'admin_url', 'admin/menu/default', null, '菜单管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('86', 'Admin', 'admin_url', 'admin/navcat/default1', null, '前台菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('87', 'Admin', 'admin_url', 'admin/nav/index', null, '菜单管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('88', 'Admin', 'admin_url', 'admin/nav/listorders', null, '前台导航排序', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('89', 'Admin', 'admin_url', 'admin/nav/delete', null, '删除菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('90', 'Admin', 'admin_url', 'admin/nav/edit', null, '编辑菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('91', 'Admin', 'admin_url', 'admin/nav/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('92', 'Admin', 'admin_url', 'admin/nav/add', null, '添加菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('93', 'Admin', 'admin_url', 'admin/nav/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('94', 'Admin', 'admin_url', 'admin/navcat/index', null, '菜单分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('95', 'Admin', 'admin_url', 'admin/navcat/delete', null, '删除分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('96', 'Admin', 'admin_url', 'admin/navcat/edit', null, '编辑分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('97', 'Admin', 'admin_url', 'admin/navcat/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('98', 'Admin', 'admin_url', 'admin/navcat/add', null, '添加分类', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('99', 'Admin', 'admin_url', 'admin/navcat/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('100', 'Admin', 'admin_url', 'admin/menu/index', null, '后台菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('101', 'Admin', 'admin_url', 'admin/menu/add', null, '添加菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('102', 'Admin', 'admin_url', 'admin/menu/add_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('103', 'Admin', 'admin_url', 'admin/menu/listorders', null, '后台菜单排序', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('104', 'Admin', 'admin_url', 'admin/menu/export_menu', null, '菜单备份', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('105', 'Admin', 'admin_url', 'admin/menu/edit', null, '编辑菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('106', 'Admin', 'admin_url', 'admin/menu/edit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('107', 'Admin', 'admin_url', 'admin/menu/delete', null, '删除菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('108', 'Admin', 'admin_url', 'admin/menu/lists', null, '所有菜单', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('109', 'Admin', 'admin_url', 'admin/setting/default', null, '设置', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('110', 'Admin', 'admin_url', 'admin/setting/userdefault', null, '个人信息', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('111', 'Admin', 'admin_url', 'admin/user/userinfo', null, '修改信息', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('112', 'Admin', 'admin_url', 'admin/user/userinfo_post', null, '修改信息提交', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('113', 'Admin', 'admin_url', 'admin/setting/password', null, '修改密码', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('114', 'Admin', 'admin_url', 'admin/setting/password_post', null, '提交修改', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('115', 'Admin', 'admin_url', 'admin/setting/site', null, '网站信息', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('116', 'Admin', 'admin_url', 'admin/setting/site_post', null, '提交修改', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('117', 'Admin', 'admin_url', 'admin/route/index', null, '路由列表', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('118', 'Admin', 'admin_url', 'admin/route/add', null, '路由添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('119', 'Admin', 'admin_url', 'admin/route/add_post', null, '路由添加提交', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('120', 'Admin', 'admin_url', 'admin/route/edit', null, '路由编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('121', 'Admin', 'admin_url', 'admin/route/edit_post', null, '路由编辑提交', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('122', 'Admin', 'admin_url', 'admin/route/delete', null, '路由删除', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('123', 'Admin', 'admin_url', 'admin/route/ban', null, '路由禁止', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('124', 'Admin', 'admin_url', 'admin/route/open', null, '路由启用', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('125', 'Admin', 'admin_url', 'admin/route/listorders', null, '路由排序', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('126', 'Admin', 'admin_url', 'admin/mailer/default', null, '邮箱配置', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('127', 'Admin', 'admin_url', 'admin/mailer/index', null, 'SMTP配置', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('128', 'Admin', 'admin_url', 'admin/mailer/index_post', null, '提交配置', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('129', 'Admin', 'admin_url', 'admin/mailer/active', null, '邮件模板', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('130', 'Admin', 'admin_url', 'admin/mailer/active_post', null, '提交模板', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('131', 'Admin', 'admin_url', 'admin/setting/clearcache', null, '清除缓存', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('132', 'User', 'admin_url', 'user/indexadmin/default', null, '用户管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('133', 'User', 'admin_url', 'user/indexadmin/default1', null, '用户组', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('134', 'User', 'admin_url', 'user/indexadmin/index', null, '本站用户', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('135', 'User', 'admin_url', 'user/indexadmin/ban', null, '拉黑会员', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('136', 'User', 'admin_url', 'user/indexadmin/cancelban', null, '启用会员', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('137', 'User', 'admin_url', 'user/oauthadmin/index', null, '第三方用户', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('138', 'User', 'admin_url', 'user/oauthadmin/delete', null, '第三方用户解绑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('139', 'User', 'admin_url', 'user/indexadmin/default3', null, '管理组', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('140', 'Admin', 'admin_url', 'admin/rbac/index', null, '角色管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('141', 'Admin', 'admin_url', 'admin/rbac/member', null, '成员管理', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('142', 'Admin', 'admin_url', 'admin/rbac/authorize', null, '权限设置', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('143', 'Admin', 'admin_url', 'admin/rbac/authorize_post', null, '提交设置', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('144', 'Admin', 'admin_url', 'admin/rbac/roleedit', null, '编辑角色', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('145', 'Admin', 'admin_url', 'admin/rbac/roleedit_post', null, '提交编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('146', 'Admin', 'admin_url', 'admin/rbac/roledelete', null, '删除角色', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('147', 'Admin', 'admin_url', 'admin/rbac/roleadd', null, '添加角色', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('148', 'Admin', 'admin_url', 'admin/rbac/roleadd_post', null, '提交添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('149', 'Admin', 'admin_url', 'admin/user/index', null, '管理员', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('150', 'Admin', 'admin_url', 'admin/user/delete', null, '删除管理员', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('151', 'Admin', 'admin_url', 'admin/user/edit', null, '管理员编辑', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('152', 'Admin', 'admin_url', 'admin/user/edit_post', null, '编辑提交', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('153', 'Admin', 'admin_url', 'admin/user/add', null, '管理员添加', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('154', 'Admin', 'admin_url', 'admin/user/add_post', null, '添加提交', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('155', 'Admin', 'admin_url', 'admin/plugin/update', null, '插件更新', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('156', 'Admin', 'admin_url', 'admin/storage/index', null, '文件存储', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('157', 'Admin', 'admin_url', 'admin/storage/setting_post', null, '文件存储设置提交', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('158', 'Admin', 'admin_url', 'admin/slide/ban', null, '禁用幻灯片', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('159', 'Admin', 'admin_url', 'admin/slide/cancelban', null, '启用幻灯片', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('160', 'Admin', 'admin_url', 'admin/user/ban', null, '禁用管理员', '1', '');
INSERT INTO `ax_auth_rule` VALUES ('161', 'Admin', 'admin_url', 'admin/user/cancelban', null, '启用管理员', '1', '');

-- ----------------------------
-- Table structure for ax_comments
-- ----------------------------
DROP TABLE IF EXISTS `ax_comments`;
CREATE TABLE `ax_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_comments
-- ----------------------------

-- ----------------------------
-- Table structure for ax_common_action_log
-- ----------------------------
DROP TABLE IF EXISTS `ax_common_action_log`;
CREATE TABLE `ax_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_common_action_log
-- ----------------------------
INSERT INTO `ax_common_action_log` VALUES ('1', '0', 'posts17', 'Portal-Article-index', '21', '1453191116', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('2', '0', 'posts16', 'Portal-Article-index', '2', '1453190426', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('3', '0', 'posts12', 'Portal-Article-index', '1', '1453181846', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('4', '0', 'posts30', 'Portal-Article-index', '40', '1453191574', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('5', '0', 'posts14', 'Portal-Article-index', '10', '1453191385', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('6', '0', 'posts28', 'Portal-Article-index', '8', '1453188647', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('7', '0', 'posts29', 'Portal-Article-index', '12', '1453191576', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('8', '0', 'posts23', 'Portal-Article-index', '1', '1453191218', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('9', '0', 'posts26', 'Portal-Article-index', '1', '1453191390', '127.0.0.1');
INSERT INTO `ax_common_action_log` VALUES ('10', '0', 'posts27', 'Portal-Article-index', '1', '1453191588', '127.0.0.1');

-- ----------------------------
-- Table structure for ax_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ax_guestbook`;
CREATE TABLE `ax_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL,
  `status` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_guestbook
-- ----------------------------
INSERT INTO `ax_guestbook` VALUES ('1', '熊熊', '117655@qq.com', null, '1212121212', '2016-01-18 21:34:01', '1');
INSERT INTO `ax_guestbook` VALUES ('2', '笨小熊', '1178433@qq.com', null, '我是测试内容', '2016-01-18 21:37:40', '1');

-- ----------------------------
-- Table structure for ax_links
-- ----------------------------
DROP TABLE IF EXISTS `ax_links`;
CREATE TABLE `ax_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT '',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_links
-- ----------------------------
INSERT INTO `ax_links` VALUES ('1', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '', '1', '0', '', '0');

-- ----------------------------
-- Table structure for ax_menu
-- ----------------------------
DROP TABLE IF EXISTS `ax_menu`;
CREATE TABLE `ax_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_menu
-- ----------------------------
INSERT INTO `ax_menu` VALUES ('1', '0', 'Admin', 'Content', 'default', '', '0', '1', '内容管理', 'th', '', '30');
INSERT INTO `ax_menu` VALUES ('2', '1', 'Api', 'Guestbookadmin', 'index', '', '1', '1', '所有留言', '', '', '0');
INSERT INTO `ax_menu` VALUES ('3', '2', 'Api', 'Guestbookadmin', 'delete', '', '1', '0', '删除网站留言', '', '', '0');
INSERT INTO `ax_menu` VALUES ('4', '1', 'Comment', 'Commentadmin', 'index', '', '1', '1', '评论管理', '', '', '0');
INSERT INTO `ax_menu` VALUES ('5', '4', 'Comment', 'Commentadmin', 'delete', '', '1', '0', '删除评论', '', '', '0');
INSERT INTO `ax_menu` VALUES ('6', '4', 'Comment', 'Commentadmin', 'check', '', '1', '0', '评论审核', '', '', '0');
INSERT INTO `ax_menu` VALUES ('7', '1', 'Portal', 'AdminPost', 'index', '', '1', '1', '文章管理', '', '', '1');
INSERT INTO `ax_menu` VALUES ('8', '7', 'Portal', 'AdminPost', 'listorders', '', '1', '0', '文章排序', '', '', '0');
INSERT INTO `ax_menu` VALUES ('9', '7', 'Portal', 'AdminPost', 'top', '', '1', '0', '文章置顶', '', '', '0');
INSERT INTO `ax_menu` VALUES ('10', '7', 'Portal', 'AdminPost', 'recommend', '', '1', '0', '文章推荐', '', '', '0');
INSERT INTO `ax_menu` VALUES ('11', '7', 'Portal', 'AdminPost', 'move', '', '1', '0', '批量移动', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('12', '7', 'Portal', 'AdminPost', 'check', '', '1', '0', '文章审核', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('13', '7', 'Portal', 'AdminPost', 'delete', '', '1', '0', '删除文章', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('14', '7', 'Portal', 'AdminPost', 'edit', '', '1', '0', '编辑文章', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('15', '14', 'Portal', 'AdminPost', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('16', '7', 'Portal', 'AdminPost', 'add', '', '1', '0', '添加文章', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('17', '16', 'Portal', 'AdminPost', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('18', '1', 'Portal', 'AdminTerm', 'index', '', '0', '1', '分类管理', '', '', '2');
INSERT INTO `ax_menu` VALUES ('19', '18', 'Portal', 'AdminTerm', 'listorders', '', '1', '0', '文章分类排序', '', '', '0');
INSERT INTO `ax_menu` VALUES ('20', '18', 'Portal', 'AdminTerm', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('21', '18', 'Portal', 'AdminTerm', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('22', '21', 'Portal', 'AdminTerm', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('23', '18', 'Portal', 'AdminTerm', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('24', '23', 'Portal', 'AdminTerm', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('25', '1', 'Portal', 'AdminPage', 'index', '', '1', '1', '页面管理', '', '', '3');
INSERT INTO `ax_menu` VALUES ('26', '25', 'Portal', 'AdminPage', 'listorders', '', '1', '0', '页面排序', '', '', '0');
INSERT INTO `ax_menu` VALUES ('27', '25', 'Portal', 'AdminPage', 'delete', '', '1', '0', '删除页面', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('28', '25', 'Portal', 'AdminPage', 'edit', '', '1', '0', '编辑页面', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('29', '28', 'Portal', 'AdminPage', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('30', '25', 'Portal', 'AdminPage', 'add', '', '1', '0', '添加页面', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('31', '30', 'Portal', 'AdminPage', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('32', '1', 'Admin', 'Recycle', 'default', '', '1', '1', '回收站', '', '', '4');
INSERT INTO `ax_menu` VALUES ('33', '32', 'Portal', 'AdminPost', 'recyclebin', '', '1', '1', '文章回收', '', '', '0');
INSERT INTO `ax_menu` VALUES ('34', '33', 'Portal', 'AdminPost', 'restore', '', '1', '0', '文章还原', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('35', '33', 'Portal', 'AdminPost', 'clean', '', '1', '0', '彻底删除', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('36', '32', 'Portal', 'AdminPage', 'recyclebin', '', '1', '1', '页面回收', '', '', '1');
INSERT INTO `ax_menu` VALUES ('37', '36', 'Portal', 'AdminPage', 'clean', '', '1', '0', '彻底删除', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('38', '36', 'Portal', 'AdminPage', 'restore', '', '1', '0', '页面还原', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('39', '0', 'Admin', 'Extension', 'default', '', '0', '1', '扩展工具', 'cloud', '', '40');
INSERT INTO `ax_menu` VALUES ('40', '39', 'Admin', 'Backup', 'default', '', '1', '1', '备份管理', '', '', '0');
INSERT INTO `ax_menu` VALUES ('41', '40', 'Admin', 'Backup', 'restore', '', '1', '1', '数据还原', '', '', '0');
INSERT INTO `ax_menu` VALUES ('42', '40', 'Admin', 'Backup', 'index', '', '1', '1', '数据备份', '', '', '0');
INSERT INTO `ax_menu` VALUES ('43', '42', 'Admin', 'Backup', 'index_post', '', '1', '0', '提交数据备份', '', '', '0');
INSERT INTO `ax_menu` VALUES ('44', '40', 'Admin', 'Backup', 'download', '', '1', '0', '下载备份', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('45', '40', 'Admin', 'Backup', 'del_backup', '', '1', '0', '删除备份', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('46', '40', 'Admin', 'Backup', 'import', '', '1', '0', '数据备份导入', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('47', '39', 'Admin', 'Plugin', 'index', '', '1', '1', '插件管理', '', '', '0');
INSERT INTO `ax_menu` VALUES ('48', '47', 'Admin', 'Plugin', 'toggle', '', '1', '0', '插件启用切换', '', '', '0');
INSERT INTO `ax_menu` VALUES ('49', '47', 'Admin', 'Plugin', 'setting', '', '1', '0', '插件设置', '', '', '0');
INSERT INTO `ax_menu` VALUES ('50', '49', 'Admin', 'Plugin', 'setting_post', '', '1', '0', '插件设置提交', '', '', '0');
INSERT INTO `ax_menu` VALUES ('51', '47', 'Admin', 'Plugin', 'install', '', '1', '0', '插件安装', '', '', '0');
INSERT INTO `ax_menu` VALUES ('52', '47', 'Admin', 'Plugin', 'uninstall', '', '1', '0', '插件卸载', '', '', '0');
INSERT INTO `ax_menu` VALUES ('53', '39', 'Admin', 'Slide', 'default', '', '1', '1', '幻灯片', '', '', '1');
INSERT INTO `ax_menu` VALUES ('54', '53', 'Admin', 'Slide', 'index', '', '1', '1', '幻灯片管理', '', '', '0');
INSERT INTO `ax_menu` VALUES ('55', '54', 'Admin', 'Slide', 'listorders', '', '1', '0', '幻灯片排序', '', '', '0');
INSERT INTO `ax_menu` VALUES ('56', '54', 'Admin', 'Slide', 'toggle', '', '1', '0', '幻灯片显示切换', '', '', '0');
INSERT INTO `ax_menu` VALUES ('57', '54', 'Admin', 'Slide', 'delete', '', '1', '0', '删除幻灯片', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('58', '54', 'Admin', 'Slide', 'edit', '', '1', '0', '编辑幻灯片', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('59', '58', 'Admin', 'Slide', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('60', '54', 'Admin', 'Slide', 'add', '', '1', '0', '添加幻灯片', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('61', '60', 'Admin', 'Slide', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('62', '53', 'Admin', 'Slidecat', 'index', '', '1', '1', '幻灯片分类', '', '', '0');
INSERT INTO `ax_menu` VALUES ('63', '62', 'Admin', 'Slidecat', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('64', '62', 'Admin', 'Slidecat', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('65', '64', 'Admin', 'Slidecat', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('66', '62', 'Admin', 'Slidecat', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('67', '66', 'Admin', 'Slidecat', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('68', '39', 'Admin', 'Ad', 'index', '', '1', '1', '网站广告', '', '', '2');
INSERT INTO `ax_menu` VALUES ('69', '68', 'Admin', 'Ad', 'toggle', '', '1', '0', '广告显示切换', '', '', '0');
INSERT INTO `ax_menu` VALUES ('70', '68', 'Admin', 'Ad', 'delete', '', '1', '0', '删除广告', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('71', '68', 'Admin', 'Ad', 'edit', '', '1', '0', '编辑广告', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('72', '71', 'Admin', 'Ad', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('73', '68', 'Admin', 'Ad', 'add', '', '1', '0', '添加广告', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('74', '73', 'Admin', 'Ad', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('75', '39', 'Admin', 'Link', 'index', '', '0', '1', '友情链接', '', '', '3');
INSERT INTO `ax_menu` VALUES ('76', '75', 'Admin', 'Link', 'listorders', '', '1', '0', '友情链接排序', '', '', '0');
INSERT INTO `ax_menu` VALUES ('77', '75', 'Admin', 'Link', 'toggle', '', '1', '0', '友链显示切换', '', '', '0');
INSERT INTO `ax_menu` VALUES ('78', '75', 'Admin', 'Link', 'delete', '', '1', '0', '删除友情链接', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('79', '75', 'Admin', 'Link', 'edit', '', '1', '0', '编辑友情链接', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('80', '79', 'Admin', 'Link', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('81', '75', 'Admin', 'Link', 'add', '', '1', '0', '添加友情链接', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('82', '81', 'Admin', 'Link', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('83', '39', 'Api', 'Oauthadmin', 'setting', '', '1', '1', '第三方登陆', 'leaf', '', '4');
INSERT INTO `ax_menu` VALUES ('84', '83', 'Api', 'Oauthadmin', 'setting_post', '', '1', '0', '提交设置', '', '', '0');
INSERT INTO `ax_menu` VALUES ('85', '0', 'Admin', 'Menu', 'default', '', '1', '1', '菜单管理', 'list', '', '20');
INSERT INTO `ax_menu` VALUES ('86', '85', 'Admin', 'Navcat', 'default1', '', '1', '1', '前台菜单', '', '', '0');
INSERT INTO `ax_menu` VALUES ('87', '86', 'Admin', 'Nav', 'index', '', '1', '1', '菜单管理', '', '', '0');
INSERT INTO `ax_menu` VALUES ('88', '87', 'Admin', 'Nav', 'listorders', '', '1', '0', '前台导航排序', '', '', '0');
INSERT INTO `ax_menu` VALUES ('89', '87', 'Admin', 'Nav', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('90', '87', 'Admin', 'Nav', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('91', '90', 'Admin', 'Nav', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('92', '87', 'Admin', 'Nav', 'add', '', '1', '0', '添加菜单', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('93', '92', 'Admin', 'Nav', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('94', '86', 'Admin', 'Navcat', 'index', '', '1', '1', '菜单分类', '', '', '0');
INSERT INTO `ax_menu` VALUES ('95', '94', 'Admin', 'Navcat', 'delete', '', '1', '0', '删除分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('96', '94', 'Admin', 'Navcat', 'edit', '', '1', '0', '编辑分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('97', '96', 'Admin', 'Navcat', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('98', '94', 'Admin', 'Navcat', 'add', '', '1', '0', '添加分类', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('99', '98', 'Admin', 'Navcat', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('100', '85', 'Admin', 'Menu', 'index', '', '1', '1', '后台菜单', '', '', '0');
INSERT INTO `ax_menu` VALUES ('101', '100', 'Admin', 'Menu', 'add', '', '1', '0', '添加菜单', '', '', '0');
INSERT INTO `ax_menu` VALUES ('102', '101', 'Admin', 'Menu', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('103', '100', 'Admin', 'Menu', 'listorders', '', '1', '0', '后台菜单排序', '', '', '0');
INSERT INTO `ax_menu` VALUES ('104', '100', 'Admin', 'Menu', 'export_menu', '', '1', '0', '菜单备份', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('105', '100', 'Admin', 'Menu', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('106', '105', 'Admin', 'Menu', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('107', '100', 'Admin', 'Menu', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('108', '100', 'Admin', 'Menu', 'lists', '', '1', '0', '所有菜单', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('109', '0', 'Admin', 'Setting', 'default', '', '0', '1', '设置', 'cogs', '', '0');
INSERT INTO `ax_menu` VALUES ('110', '109', 'Admin', 'Setting', 'userdefault', '', '0', '1', '个人信息', '', '', '0');
INSERT INTO `ax_menu` VALUES ('111', '110', 'Admin', 'User', 'userinfo', '', '1', '1', '修改信息', '', '', '0');
INSERT INTO `ax_menu` VALUES ('112', '111', 'Admin', 'User', 'userinfo_post', '', '1', '0', '修改信息提交', '', '', '0');
INSERT INTO `ax_menu` VALUES ('113', '110', 'Admin', 'Setting', 'password', '', '1', '1', '修改密码', '', '', '0');
INSERT INTO `ax_menu` VALUES ('114', '113', 'Admin', 'Setting', 'password_post', '', '1', '0', '提交修改', '', '', '0');
INSERT INTO `ax_menu` VALUES ('115', '109', 'Admin', 'Setting', 'site', '', '1', '1', '网站信息', '', '', '0');
INSERT INTO `ax_menu` VALUES ('116', '115', 'Admin', 'Setting', 'site_post', '', '1', '0', '提交修改', '', '', '0');
INSERT INTO `ax_menu` VALUES ('117', '115', 'Admin', 'Route', 'index', '', '1', '0', '路由列表', '', '', '0');
INSERT INTO `ax_menu` VALUES ('118', '115', 'Admin', 'Route', 'add', '', '1', '0', '路由添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('119', '118', 'Admin', 'Route', 'add_post', '', '1', '0', '路由添加提交', '', '', '0');
INSERT INTO `ax_menu` VALUES ('120', '115', 'Admin', 'Route', 'edit', '', '1', '0', '路由编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('121', '120', 'Admin', 'Route', 'edit_post', '', '1', '0', '路由编辑提交', '', '', '0');
INSERT INTO `ax_menu` VALUES ('122', '115', 'Admin', 'Route', 'delete', '', '1', '0', '路由删除', '', '', '0');
INSERT INTO `ax_menu` VALUES ('123', '115', 'Admin', 'Route', 'ban', '', '1', '0', '路由禁止', '', '', '0');
INSERT INTO `ax_menu` VALUES ('124', '115', 'Admin', 'Route', 'open', '', '1', '0', '路由启用', '', '', '0');
INSERT INTO `ax_menu` VALUES ('125', '115', 'Admin', 'Route', 'listorders', '', '1', '0', '路由排序', '', '', '0');
INSERT INTO `ax_menu` VALUES ('126', '109', 'Admin', 'Mailer', 'default', '', '1', '1', '邮箱配置', '', '', '0');
INSERT INTO `ax_menu` VALUES ('127', '126', 'Admin', 'Mailer', 'index', '', '1', '1', 'SMTP配置', '', '', '0');
INSERT INTO `ax_menu` VALUES ('128', '127', 'Admin', 'Mailer', 'index_post', '', '1', '0', '提交配置', '', '', '0');
INSERT INTO `ax_menu` VALUES ('129', '126', 'Admin', 'Mailer', 'active', '', '1', '1', '邮件模板', '', '', '0');
INSERT INTO `ax_menu` VALUES ('130', '129', 'Admin', 'Mailer', 'active_post', '', '1', '0', '提交模板', '', '', '0');
INSERT INTO `ax_menu` VALUES ('131', '109', 'Admin', 'Setting', 'clearcache', '', '1', '1', '清除缓存', '', '', '1');
INSERT INTO `ax_menu` VALUES ('132', '0', 'User', 'Indexadmin', 'default', '', '1', '1', '用户管理', 'group', '', '10');
INSERT INTO `ax_menu` VALUES ('133', '132', 'User', 'Indexadmin', 'default1', '', '1', '1', '用户组', '', '', '0');
INSERT INTO `ax_menu` VALUES ('134', '133', 'User', 'Indexadmin', 'index', '', '1', '1', '本站用户', 'leaf', '', '0');
INSERT INTO `ax_menu` VALUES ('135', '134', 'User', 'Indexadmin', 'ban', '', '1', '0', '拉黑会员', '', '', '0');
INSERT INTO `ax_menu` VALUES ('136', '134', 'User', 'Indexadmin', 'cancelban', '', '1', '0', '启用会员', '', '', '0');
INSERT INTO `ax_menu` VALUES ('137', '133', 'User', 'Oauthadmin', 'index', '', '1', '1', '第三方用户', 'leaf', '', '0');
INSERT INTO `ax_menu` VALUES ('138', '137', 'User', 'Oauthadmin', 'delete', '', '1', '0', '第三方用户解绑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('139', '132', 'User', 'Indexadmin', 'default3', '', '1', '1', '管理组', '', '', '0');
INSERT INTO `ax_menu` VALUES ('140', '139', 'Admin', 'Rbac', 'index', '', '1', '1', '角色管理', '', '', '0');
INSERT INTO `ax_menu` VALUES ('141', '140', 'Admin', 'Rbac', 'member', '', '1', '0', '成员管理', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('142', '140', 'Admin', 'Rbac', 'authorize', '', '1', '0', '权限设置', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('143', '142', 'Admin', 'Rbac', 'authorize_post', '', '1', '0', '提交设置', '', '', '0');
INSERT INTO `ax_menu` VALUES ('144', '140', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '编辑角色', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('145', '144', 'Admin', 'Rbac', 'roleedit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `ax_menu` VALUES ('146', '140', 'Admin', 'Rbac', 'roledelete', '', '1', '1', '删除角色', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('147', '140', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '添加角色', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('148', '147', 'Admin', 'Rbac', 'roleadd_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `ax_menu` VALUES ('149', '139', 'Admin', 'User', 'index', '', '1', '1', '管理员', '', '', '0');
INSERT INTO `ax_menu` VALUES ('150', '149', 'Admin', 'User', 'delete', '', '1', '0', '删除管理员', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('151', '149', 'Admin', 'User', 'edit', '', '1', '0', '管理员编辑', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('152', '151', 'Admin', 'User', 'edit_post', '', '1', '0', '编辑提交', '', '', '0');
INSERT INTO `ax_menu` VALUES ('153', '149', 'Admin', 'User', 'add', '', '1', '0', '管理员添加', '', '', '1000');
INSERT INTO `ax_menu` VALUES ('154', '153', 'Admin', 'User', 'add_post', '', '1', '0', '添加提交', '', '', '0');
INSERT INTO `ax_menu` VALUES ('155', '47', 'Admin', 'Plugin', 'update', '', '1', '0', '插件更新', '', '', '0');
INSERT INTO `ax_menu` VALUES ('156', '39', 'Admin', 'Storage', 'index', '', '1', '1', '文件存储', '', '', '0');
INSERT INTO `ax_menu` VALUES ('157', '156', 'Admin', 'Storage', 'setting_post', '', '1', '0', '文件存储设置提交', '', '', '0');
INSERT INTO `ax_menu` VALUES ('158', '54', 'Admin', 'Slide', 'ban', '', '1', '0', '禁用幻灯片', '', '', '0');
INSERT INTO `ax_menu` VALUES ('159', '54', 'Admin', 'Slide', 'cancelban', '', '1', '0', '启用幻灯片', '', '', '0');
INSERT INTO `ax_menu` VALUES ('160', '149', 'Admin', 'User', 'ban', '', '1', '0', '禁用管理员', '', '', '0');
INSERT INTO `ax_menu` VALUES ('161', '149', 'Admin', 'User', 'cancelban', '', '1', '0', '启用管理员', '', '', '0');

-- ----------------------------
-- Table structure for ax_nav
-- ----------------------------
DROP TABLE IF EXISTS `ax_nav`;
CREATE TABLE `ax_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `href` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(6) DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_nav
-- ----------------------------
INSERT INTO `ax_nav` VALUES ('1', '1', '0', '首页', '', 'home', '', '1', '0', '0-1');
INSERT INTO `ax_nav` VALUES ('2', '1', '0', '列表演示', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}', '', '1', '0', '0-2');
INSERT INTO `ax_nav` VALUES ('3', '1', '0', '瀑布流', '', 'a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}', '', '1', '0', '0-3');

-- ----------------------------
-- Table structure for ax_nav_cat
-- ----------------------------
DROP TABLE IF EXISTS `ax_nav_cat`;
CREATE TABLE `ax_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_nav_cat
-- ----------------------------
INSERT INTO `ax_nav_cat` VALUES ('1', '主导航', '1', '主导航');

-- ----------------------------
-- Table structure for ax_oauth_user
-- ----------------------------
DROP TABLE IF EXISTS `ax_oauth_user`;
CREATE TABLE `ax_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(60) NOT NULL,
  `expires_date` int(12) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_oauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for ax_options
-- ----------------------------
DROP TABLE IF EXISTS `ax_options`;
CREATE TABLE `ax_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_options
-- ----------------------------
INSERT INTO `ax_options` VALUES ('1', 'member_email_active', '{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}', '1');
INSERT INTO `ax_options` VALUES ('2', 'site_options', '{\"site_name\":\"\\u540c\\u521b\\u5b8f\\u5f00\\u517b\\u751f\\u7fc1\",\"site_host\":\"http:\\/\\/www.bendibase.com\\/\",\"site_tpl\":\"YS\",\"site_adminstyle\":\"bluesky\",\"site_icp\":\"\",\"site_admin_email\":\"860003286@qq.com\",\"site_tongji\":\"\",\"site_copyright\":\"\",\"site_seo_title\":\"\\u57fa\\u7840\\u63a7\\u5236\\u5305\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"urlmode\":\"0\",\"html_suffix\":\"\",\"comment_time_interval\":60}', '1');
INSERT INTO `ax_options` VALUES ('3', 'cmf_settings', '{\"banned_usernames\":\"\"}', '1');

-- ----------------------------
-- Table structure for ax_plugins
-- ----------------------------
DROP TABLE IF EXISTS `ax_plugins`;
CREATE TABLE `ax_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of ax_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for ax_posts
-- ----------------------------
DROP TABLE IF EXISTS `ax_posts`;
CREATE TABLE `ax_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_posts
-- ----------------------------
INSERT INTO `ax_posts` VALUES ('1', '1', '关于我们', null, '2015-12-11 11:23:25', '<p>关于我们的内容</p>', '关于我们', '关于我们', '1', '1', '2015-12-11 11:23:11', null, '0', '2', '', '0', '{\"thumb\":\"\",\"template\":\"page\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('2', '1', '服务内容关键词', null, '2015-12-11 11:23:48', '<p>服务内容内容</p>', '服务内容', '服务内容摘要', '1', '1', '2015-12-11 11:23:27', null, '0', '2', '', '0', '{\"thumb\":\"\",\"template\":\"page\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('3', '1', '联系我们关键词', null, '2015-12-11 11:24:10', '<p>联系我们内容</p>', '联系我们', '联系我们摘要', '1', '1', '2015-12-11 11:23:49', null, '0', '2', '', '0', '{\"thumb\":\"\",\"template\":\"Contact_Us\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('4', '1', '', null, '2016-01-15 09:16:50', '<p>品牌故事内容</p>', '品牌故事', '品牌故事摘要', '1', '1', '2016-01-15 09:16:06', null, '0', '2', '', '0', '{\"thumb\":\"\",\"template\":\"story\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('5', '1', '', null, '2016-01-15 09:18:02', '<p style=\"margin-top: 15px; margin-bottom: 0px; padding: 0px; font-family: &#39;Microsoft YaHei&#39;; font-size: 13.3333px; color: rgb(84, 84, 84); line-height: 20px; text-indent: 2em; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; color: black; font-family: 宋体; font-size: 17px; font-weight: bold;\">江西宏开养生翁</span>&nbsp;是以负离子养生瓮为主打产品的养生健康管理公司， 是一家致力于能量、太极能量源、生物、健康、自然、营养美容科研开发的健康管理有限公司；是中国正在崛起的科技型健康企业之星。 公司集产品研发、生产、销售策划于一体， 结合现代科技能量之丰富含量，植根五千年之传统经典，研发出独具匠心的养生神器——负离子养生瓮。不仅结实、耐用、经久不裂、有效释放及锁住巨大的能量且对于亚健康状态的改善有着十明显的作用；尤其对亚健康具有高效的调理改善作用，开辟了现代养生的崭新视野，必将为亚健康人群开辟一条新的途径，从而创造出传统与现代、文化与科学、中与西有机结合的仪器，标志着我国中医养生美容革命及蒸疗美容领域取得的高新科研成果。</p><h4 style=\"margin: 10px 0px 0px; padding: 0px; text-indent: 2em; color: rgb(84, 84, 84); line-height: 20px; font-family: &#39;Microsoft YaHei&#39;; font-size: 13.3333px; white-space: normal;\">一、负离子养生瓮特征： 1、养生缸中国（世界）美容界； 2、特有岩宝石产生纯天然负离子； 3、特有岩宝石产生与人体频率相近似的远红外线；</h4><h4 style=\"margin: 10px 0px 0px; padding: 0px; text-indent: 2em; color: rgb(84, 84, 84); line-height: 20px; font-family: &#39;Microsoft YaHei&#39;; font-size: 13.3333px; white-space: normal;\">二、养生缸优势： 1、养生缸形成负压核磁共振作用； 2、养生缸的特定“缸”型构造，使负离子不逃逸；高新区格林燚犒陶瓷厂耗费高成本， 集合台湾和大陆专业人士，集体研发，将数量有限的活瓷纳宝石以纯手工打造方式制成养生瓮， 并经过国家多个权威部门检验，申请国家专利证书，有双利标志的负离子养生瓮。 它的面世引起众多养生者的追捧， 这也招致一批商家仿照生产出“有其型而无其质&quot;，甚至对人体有害的产品，以低价抢占市场，坑害消费者，引来争议是非不断。 因为涉及商业机密以及全国一些成熟经营店家的不同意公开， 仅提供一些经同意授权可以公开同时体验的店家名册，欢迎就近实体考察，围观亲临体验。</h4><h4 style=\"margin: 10px 0px 0px; padding: 0px; text-indent: 2em; color: rgb(84, 84, 84); line-height: 20px; font-family: &#39;Microsoft YaHei&#39;; font-size: 13.3333px; white-space: normal;\">全国各地成熟运作实体考察店家名册： 请拨打预留内线，并留下您的地址和号码。 经公司内部审核后，将委派当地就近人员或将就近战略合作店家地址与您， 敬请前往围观亲临体验。</h4><p><br/></p>', '公司简介', '江西宏开养生翁 是以负离子养生瓮为主打产品的养生健康管理公司， 是一家致力于能量、太极能量源、生物、健康、自然、营养美容科研开发的健康管理有限公司；是中国正在崛起的科技型健康企业之星。 公司集产品研发、生产、销售策划于一体， 结合现代科技能量之丰富含量，植根五千年之传统经典，研发出独具匠心的养生神器——负离子养生瓮。', '1', '1', '2016-01-15 09:16:53', null, '0', '2', '', '0', '{\"thumb\":\"\",\"template\":\"Company_Profile\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('6', '1', '中医养生', '中医养生', '2016-01-15 14:07:01', '<p>中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1中医养生1</p>', '中医养生1', '中医养生1中医养生1中医养生1中医养生1', '1', '1', '2016-01-15 14:06:27', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('7', '1', '中医养生2', '中医养生2中医养生2中医养生2中医养生2', '2016-01-15 14:07:29', '<p>中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2</p>', '中医养生2', '中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2中医养生2', '1', '1', '2016-01-15 14:07:03', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('8', '1', '中医养生3', '中医养生3', '2016-01-15 14:07:57', '<p>中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3中医养生3</p>', '中医养生3', '中医养生3中医养生3中医养生3中医养生3中医养生3', '1', '1', '2016-01-15 14:07:31', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('9', '1', '中医养生4', '中医养生4', '2016-01-15 14:08:20', '<p>中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4</p>', '中医养生4', '中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4中医养生4', '1', '1', '2016-01-15 14:07:58', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('10', '1', '中医养生5', '中医养生5', '2016-01-15 14:10:51', '<p>中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5中医养生5</p>', '中医养生5', '中医养生5中医养生5中医养生5中医养生5中医养生5', '1', '1', '2016-01-15 14:08:21', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('11', '1', '中医养生6', '中医养生6', '2016-01-15 14:11:16', '<p>中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6中医养生6</p>', '中医养生6', '中医养生6中医养生6中医养生6', '1', '1', '2016-01-15 14:10:52', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('12', '1', '养生保健1', '养生保健1', '2016-01-15 14:12:08', '<p>养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1养生保健1</p>', '养生保健1', '养生保健1养生保健1养生保健1养生保健1', '1', '1', '2016-01-15 14:11:44', null, '0', null, '', '0', '{\"thumb\":\"\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('13', '1', '养生保健2', '养生保健2', '2016-01-15 14:12:29', '<p>养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2养生保健2</p>', '养生保健2', '养生保健2养生保健2养生保健2养生保健2', '1', '1', '2016-01-15 14:12:10', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('14', '1', '养生保健3', '养生保健3', '2016-01-15 14:12:56', '<p>养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3</p>', '养生保健3', '养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3养生保健3', '1', '1', '2016-01-15 14:12:30', null, '0', null, '', '0', '{\"thumb\":\"\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('15', '1', '养生保健4', '养生保健4', '2016-01-15 14:13:23', '<p>养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4</p>', '养生保健4', '养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4养生保健4', '1', '1', '2016-01-15 14:12:58', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('16', '1', '养生保健5', '养生保健5', '2016-01-15 14:14:13', '<p>养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5</p>', '养生保健5', '养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5养生保健5', '1', '1', '2016-01-15 14:13:51', null, '0', null, '', '0', '{\"thumb\":\"\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('17', '1', '养生保健6', '养生保健6养生保健6养生保健6养生保健6', '2016-01-15 14:14:34', '<p>养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6</p>', '养生保健6', '养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6养生保健6', '1', '1', '2016-01-15 14:14:14', null, '0', null, '', '0', '{\"thumb\":\"\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('18', '1', '产品分类1-测试1', '产品分类1-测试1', '2016-01-19 11:29:34', '<p>产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试<img title=\"product_1.png\" alt=\"product_1.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569dad9ba61c5.png\"/></p>', '产品分类1-测试1', '产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试产品分类1-测试', '1', '1', '2016-01-19 11:28:21', null, '0', null, '', '0', '{\"thumb\":\"\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('19', '1', '产品分类1-测试2', '产品分类1-测试2', '2016-01-19 11:30:19', '<p>产品分类1-测试2<img title=\"product_2.png\" alt=\"product_2.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569dadba0c553.png\"/></p>', '产品分类1-测试2', '产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2产品分类1-测试2', '1', '1', '2016-01-19 11:29:35', null, '0', null, '', '0', '{\"thumb\":\"569dadc5e1b71.png\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('20', '1', '产品分类1-测试3', '产品分类1-测试3', '2016-01-19 11:31:05', '<p>产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3<img title=\"product_3.png\" alt=\"product_3.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569dade94a253.png\"/></p>', '产品分类1-测试3', '产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3产品分类1-测试3', '1', '1', '2016-01-19 11:30:20', null, '0', null, '', '0', '{\"thumb\":\"569dadf5cb51f.png\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('21', '1', '产品分类1-测试4', '产品分类1-测试4', '2016-01-19 11:32:22', '<p>产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4产品分类1-测试4<img title=\"product_1.png\" alt=\"product_1.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569dae2672d65.png\"/></p>', '产品分类1-测试4', '产品分类1-测试4产品分类1-测试4产品分类1-测试4', '1', '1', '2016-01-19 11:31:06', null, '0', null, '', '0', '{\"thumb\":\"569dae336ac7e.png\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('22', '1', '产品分类1-测试5', '产品分类1-测试5产品分类1-测试5', '2016-01-19 11:33:02', '<p>产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5<img title=\"product_2.png\" alt=\"product_2.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569dae6306692.png\"/></p>', '产品分类1-测试5', '产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5产品分类1-测试5', '1', '1', '2016-01-19 11:32:24', null, '0', null, '', '0', '{\"thumb\":\"569dae6b19020.png\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('23', '1', '产品分类1-测试6产品分类1-测试6产品分类1-测试6', '产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6', '2016-01-19 11:33:39', '<p>产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6<img title=\"product_3.png\" alt=\"product_3.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569dae8953fca.png\"/></p>', '产品分类1-测试6', '产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6产品分类1-测试6', '1', '1', '2016-01-19 11:33:04', null, '0', null, '', '0', '{\"thumb\":\"569dae9093bd9.png\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('24', '1', '产品分类2-测试1', '产品分类2-测试1', '2016-01-19 11:34:20', '<p><img title=\"product_1.png\" alt=\"product_1.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569daeb0876f0.png\"/>产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1</p>', '产品分类2-测试1', '产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1产品分类2-测试1', '1', '1', '2016-01-19 11:33:40', null, '0', null, '', '0', '{\"thumb\":\"569daeb9c5818.png\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('25', '1', '产品分类2-测试2', '产品分类2-测试2', '2016-01-19 11:35:00', '<p>产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2<img title=\"product_2.png\" alt=\"product_2.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569daed98731b.png\"/></p>', '产品分类2-测试2', '产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2产品分类2-测试2', '1', '1', '2016-01-19 11:34:22', null, '0', null, '', '0', '{\"thumb\":\"569daee121646.png\"}', '0', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('26', '1', '产品分类2-测试3', '产品分类2-测试3', '2016-01-19 11:35:38', '<p>产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3<img title=\"product_3.png\" alt=\"product_3.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569daf0003fb9.png\"/></p>', '产品分类2-测试3', '产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3产品分类2-测试3', '1', '1', '2016-01-19 11:35:02', null, '0', null, '', '0', '{\"thumb\":\"569daf078e0a9.png\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('27', '1', '产品分类2-测试4', '产品分类2-测试4', '2016-01-19 11:36:21', '<p><img title=\"product_3.png\" alt=\"product_3.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569daf22bc216.png\"/>产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4</p>', '产品分类2-测试4', '产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4产品分类2-测试4', '1', '1', '2016-01-19 11:35:39', null, '0', null, '', '0', '{\"thumb\":\"569daf3236f07.png\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('28', '1', '产品分类3-测试1', '产品分类3-测试1', '2016-01-19 11:36:59', '<p>产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1</p>', '产品分类3-测试1', '产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1产品分类3-测试1', '1', '1', '2016-01-19 11:36:22', null, '0', null, '', '0', '{\"thumb\":\"569daf57735fa.png\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('29', '1', '产品分类3-测试2', '产品分类3-测试2', '2016-01-19 11:37:29', '<p>产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2<img title=\"product_2.png\" alt=\"product_2.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569daf777749f.png\"/></p>', '产品分类3-测试2', '产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2产品分类3-测试2', '1', '1', '2016-01-19 11:37:00', null, '0', null, '', '0', '{\"thumb\":\"569daf70079ca.png\"}', '1', '0', '0', '0');
INSERT INTO `ax_posts` VALUES ('30', '1', '产品分类3-测试3', '产品分类3-测试3', '2016-01-19 11:38:02', '<p>产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3<img title=\"logo.png\" alt=\"logo.png\" src=\"http://www.hkweng.com/data/upload/ueditor/20160119/569de6138537b.png\"/></p>', '产品分类3-测试3', '产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3产品分类3-测试3', '1', '1', '2016-01-19 11:37:30', null, '0', null, '', '0', '{\"thumb\":\"569daf972b0c7.png\"}', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for ax_role
-- ----------------------------
DROP TABLE IF EXISTS `ax_role`;
CREATE TABLE `ax_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_role
-- ----------------------------
INSERT INTO `ax_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');

-- ----------------------------
-- Table structure for ax_role_user
-- ----------------------------
DROP TABLE IF EXISTS `ax_role_user`;
CREATE TABLE `ax_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for ax_route
-- ----------------------------
DROP TABLE IF EXISTS `ax_route`;
CREATE TABLE `ax_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_route
-- ----------------------------

-- ----------------------------
-- Table structure for ax_slide
-- ----------------------------
DROP TABLE IF EXISTS `ax_slide`;
CREATE TABLE `ax_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` bigint(20) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_pic` varchar(255) DEFAULT NULL,
  `slide_url` varchar(255) DEFAULT NULL,
  `slide_des` varchar(255) DEFAULT NULL,
  `slide_content` text,
  `slide_status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(10) DEFAULT '0',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ax_slide_cat
-- ----------------------------
DROP TABLE IF EXISTS `ax_slide_cat`;
CREATE TABLE `ax_slide_cat` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_idname` varchar(255) NOT NULL,
  `cat_remark` text,
  `cat_status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_slide_cat
-- ----------------------------

-- ----------------------------
-- Table structure for ax_terms
-- ----------------------------
DROP TABLE IF EXISTS `ax_terms`;
CREATE TABLE `ax_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_terms
-- ----------------------------
INSERT INTO `ax_terms` VALUES ('11', '产品中心', '', 'article', '', '0', '0', '0-11', '', '', '', 'Product_Center2', 'Article', '0', '1');
INSERT INTO `ax_terms` VALUES ('10', '养生学堂', '', 'article', '', '0', '0', '0-10', '', '', '', 'Health_School', 'Article', '0', '1');
INSERT INTO `ax_terms` VALUES ('14', '中医养生', '', 'article', '', '10', '0', '0-10-14', '', '', '', 'Health_School', 'Article', '0', '1');
INSERT INTO `ax_terms` VALUES ('15', '养生保健', '', 'article', '', '10', '0', '0-10-15', '', '', '', 'Health_School', 'Article', '0', '1');
INSERT INTO `ax_terms` VALUES ('16', '产品分类1', '', 'article', '', '11', '0', '0-11-16', '', '', '', 'Product_Center2', 'Article', '0', '1');
INSERT INTO `ax_terms` VALUES ('17', '产品分类2', '', 'article', '', '11', '0', '0-11-17', '', '', '', 'Product_Center2', 'Article', '0', '1');
INSERT INTO `ax_terms` VALUES ('18', '产品分类3', '', 'article', '', '11', '0', '0-11-18', '', '', '', 'Product_Center2', 'Article', '0', '1');

-- ----------------------------
-- Table structure for ax_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `ax_term_relationships`;
CREATE TABLE `ax_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_term_relationships
-- ----------------------------
INSERT INTO `ax_term_relationships` VALUES ('1', '6', '14', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('2', '7', '14', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('3', '8', '14', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('4', '9', '14', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('5', '10', '14', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('6', '11', '14', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('7', '12', '15', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('8', '13', '15', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('9', '14', '15', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('10', '15', '15', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('11', '16', '15', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('12', '17', '15', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('13', '18', '16', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('14', '19', '16', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('15', '20', '16', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('16', '21', '16', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('17', '22', '16', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('18', '23', '16', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('19', '24', '17', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('20', '25', '17', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('21', '26', '17', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('22', '27', '17', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('23', '28', '18', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('24', '29', '18', '0', '1');
INSERT INTO `ax_term_relationships` VALUES ('25', '30', '18', '0', '1');

-- ----------------------------
-- Table structure for ax_users
-- ----------------------------
DROP TABLE IF EXISTS `ax_users`;
CREATE TABLE `ax_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；ax_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_users
-- ----------------------------
INSERT INTO `ax_users` VALUES ('1', 'admin', '63b2d68a277321232f297a57a5a743894a0e4a801fc39a32', 'admin', '860003286@qq.com', '', null, '0', null, null, '127.0.0.1', '2016-01-19 11:45:22', '2015-10-30 02:04:48', '', '1', '0', '1');

-- ----------------------------
-- Table structure for ax_user_favorites
-- ----------------------------
DROP TABLE IF EXISTS `ax_user_favorites`;
CREATE TABLE `ax_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ax_user_favorites
-- ----------------------------
