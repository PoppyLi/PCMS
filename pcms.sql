/*
Navicat MySQL Data Transfer

Source Server         : wamp
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : pcms

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2016-01-12 19:12:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pcms_acount
-- ----------------------------
DROP TABLE IF EXISTS `pcms_acount`;
CREATE TABLE `pcms_acount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `type_id` int(11) DEFAULT NULL COMMENT '类型',
  `recruit_id` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '应聘标题',
  `intro` varchar(1000) DEFAULT NULL COMMENT '简介',
  `content` mediumtext COMMENT '内容',
  `answer` mediumtext,
  `timeline_answer` int(11) DEFAULT NULL,
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expire` int(11) DEFAULT NULL COMMENT '公告过期时间',
  `solve` int(1) DEFAULT '0',
  `click` int(11) DEFAULT '0' COMMENT '浏览次数',
  `show` tinyint(4) DEFAULT '1' COMMENT '显隐状态',
  `recommend` tinyint(4) DEFAULT '0' COMMENT '推荐到分类门户的页面显示',
  `color` tinyint(4) DEFAULT '0' COMMENT '突显状态/颜色',
  `audit` int(1) DEFAULT '0' COMMENT '审核状态',
  `photo` varchar(255) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '图片缩略图',
  `file` varchar(255) DEFAULT NULL COMMENT '相关文件',
  `ip` varchar(100) NOT NULL,
  `ex1` varchar(255) DEFAULT '' COMMENT '其他标签（预留）',
  `ex2` varchar(255) DEFAULT '',
  `ex3` varchar(255) DEFAULT '',
  `ex4` varchar(255) DEFAULT '',
  `x` varchar(255) DEFAULT '',
  `y` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL COMMENT '部门',
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `marriage` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `wangwang` varchar(100) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL COMMENT '民族',
  `birthday` varchar(20) DEFAULT NULL,
  `politic` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `school` varchar(100) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL COMMENT '专业',
  `graduation` varchar(20) DEFAULT NULL COMMENT '毕业时间',
  `language` varchar(50) DEFAULT NULL COMMENT '外语水平',
  `position` varchar(100) DEFAULT NULL COMMENT '应聘职位',
  `age` smallint(6) DEFAULT NULL,
  `edu` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `pwd2` varchar(50) DEFAULT NULL,
  `pwd_errors` varchar(5) DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `login_time` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `cslist` varchar(100) DEFAULT NULL,
  `readlist` varchar(100) DEFAULT NULL COMMENT '大事记录',
  `readlist2` varchar(100) DEFAULT NULL COMMENT '通知',
  PRIMARY KEY (`id`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线应聘';

-- ----------------------------
-- Records of pcms_acount
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_article
-- ----------------------------
DROP TABLE IF EXISTS `pcms_article`;
CREATE TABLE `pcms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `author` varchar(50) DEFAULT NULL COMMENT '消息作者',
  `author_url` tinytext COMMENT '作者链接',
  `source` varchar(50) DEFAULT NULL COMMENT '消息来源',
  `source_url` tinytext COMMENT '来源链接',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `recommend` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐到分类门户的页面显示',
  `homepage` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐到首页显示',
  `recommend_photo` int(1) NOT NULL DEFAULT '0' COMMENT '0:1作为分类栏目的跑马灯图片新闻',
  `homepage_photo` int(1) NOT NULL DEFAULT '0' COMMENT '0:1作为首页的跑马灯图片新闻',
  `color` int(1) NOT NULL DEFAULT '0' COMMENT '突显状态/颜色',
  `photo` tinytext COMMENT '相关图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  `job` varchar(50) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL,
  `money` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `money_qy` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `money_rg` varchar(50) DEFAULT NULL,
  `money_bl` varchar(50) DEFAULT NULL,
  `money_yj` varchar(50) DEFAULT NULL,
  `money_wj` varchar(50) DEFAULT NULL,
  `money_mq` varchar(50) DEFAULT NULL,
  `money_fh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='信息表';

-- ----------------------------
-- Records of pcms_article
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `pcms_article_tag`;
CREATE TABLE `pcms_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(30) NOT NULL COMMENT '标签',
  `record` int(11) DEFAULT NULL COMMENT '使用的 article id',
  `count` int(11) DEFAULT NULL COMMENT '计数',
  PRIMARY KEY (`id`),
  KEY `record_index` (`id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of pcms_article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_coltypes
-- ----------------------------
DROP TABLE IF EXISTS `pcms_coltypes`;
CREATE TABLE `pcms_coltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `sort_id` int(11) NOT NULL COMMENT '排序id',
  `fid` int(11) NOT NULL COMMENT '父类型',
  `depth` int(3) NOT NULL COMMENT '深度',
  `cid` int(4) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `name` varchar(30) NOT NULL DEFAULT 'ctype' COMMENT '表单名称，分类标志，单个栏目多个类型时',
  `title` varchar(30) NOT NULL COMMENT '标题类型',
  `identify` varchar(30) NOT NULL COMMENT '标记',
  `photo` varchar(30) NOT NULL COMMENT '图片',
  `thumb` varchar(200) NOT NULL COMMENT '缩略图',
  `show` int(1) NOT NULL DEFAULT '1' COMMENT '显示',
  `title_en` varchar(30) NOT NULL COMMENT '标题类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcms_coltypes
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_columns
-- ----------------------------
DROP TABLE IF EXISTS `pcms_columns`;
CREATE TABLE `pcms_columns` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `sort_id` int(4) DEFAULT NULL COMMENT '排序',
  `parent_id` int(4) NOT NULL DEFAULT '0' COMMENT '父标识(col id)',
  `depth` int(4) NOT NULL DEFAULT '1' COMMENT '深度',
  `identify` tinytext NOT NULL COMMENT 'url唯一标记(word or link)',
  `path` tinytext NOT NULL COMMENT 'urlpath',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext COMMENT '优化标题',
  `tags` tinytext COMMENT '标签',
  `intro` text COMMENT '简介',
  `mid` int(2) NOT NULL COMMENT '模型标识(Model id)',
  `temp_index` varchar(50) DEFAULT NULL COMMENT '前台模板栏目index',
  `temp_show` varchar(50) DEFAULT NULL COMMENT '内容展示模板show',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0删除 1正常',
  `show` int(1) NOT NULL DEFAULT '1' COMMENT '0隐藏 1正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='栏目';

-- ----------------------------
-- Records of pcms_columns
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_configs
-- ----------------------------
DROP TABLE IF EXISTS `pcms_configs`;
CREATE TABLE `pcms_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL COMMENT '分类',
  `key` varchar(30) NOT NULL COMMENT '键值',
  `value` tinytext NOT NULL COMMENT '值',
  `label` varchar(100) NOT NULL COMMENT '标题',
  `intor` tinytext COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='配置';

-- ----------------------------
-- Records of pcms_configs
-- ----------------------------
INSERT INTO `pcms_configs` VALUES ('1', '1', 'adminer', 'title_suffix', '有限公司', '标题后缀', '后端标题栏显示内容的后缀.');
INSERT INTO `pcms_configs` VALUES ('2', '9', 'site', 'copyright', 'Copyright ', 'CopyRight', '站点版权内容!');
INSERT INTO `pcms_configs` VALUES ('3', '8', 'site', 'email', 'mail@mail.com', '联系邮箱', '网站联系人');
INSERT INTO `pcms_configs` VALUES ('4', '4', 'site', 'title_suffix', '有限公司', '公司名称|品牌名称', '前台站点标题的后缀优化');
INSERT INTO `pcms_configs` VALUES ('5', '5', 'site', 'title_seo', '', '首页标题[Title]', '网站首页优化标题');
INSERT INTO `pcms_configs` VALUES ('6', '6', 'site', 'tags', '', '关键词[Keywords]', '网站首页关键词设定，使用`,`来间隔标签.');
INSERT INTO `pcms_configs` VALUES ('7', '7', 'site', 'intro', '', '站点描述[Description]', '网站首页描述');
INSERT INTO `pcms_configs` VALUES ('8', '10', 'site', 'icp', 'ICP', 'ICP编号', '');
INSERT INTO `pcms_configs` VALUES ('9', '9', 'adminer', 'rember_hours', '72', '记住登录', '记住登录的时间，默认单位为小时。');
INSERT INTO `pcms_configs` VALUES ('15', '10', 'adminer', 'nopurview', 'login,welcome,manager,ajax', '权限过滤', '');
INSERT INTO `pcms_configs` VALUES ('10', '11', 'adminer', 'forbidden_hours', '1', '登录禁用', '账户登录错误超过6次时的禁用时间[小时]。');
INSERT INTO `pcms_configs` VALUES ('11', '12', 'email', 'stmp', 'smtp.163.com', 'STMP服务器', '');
INSERT INTO `pcms_configs` VALUES ('12', '13', 'email', 'account', '123@abc.com', '帐号', '发送帐号,请修改帐号为自己的发送账号。');
INSERT INTO `pcms_configs` VALUES ('13', '14', 'email', 'pwd', '', '密码', '');
INSERT INTO `pcms_configs` VALUES ('14', '15', 'email', 'port', '25', '端口', 'STMP端口[25]');
INSERT INTO `pcms_configs` VALUES ('22', '12', 'email', 'name', '有限公司', '电邮名称', '邮件地址显示的名称');
INSERT INTO `pcms_configs` VALUES ('16', '3', 'site', 'title', '前端标题 ', '网站标题', '用于保存前台站点的默认首页标题');
INSERT INTO `pcms_configs` VALUES ('17', '0', 'upload', 'upload_size', '120m', '上传大小限制', '默认上传权限大小');
INSERT INTO `pcms_configs` VALUES ('18', '0', 'upload', 'inline_file_types', 'gif|jpe?g|png|doc?|mp?|zip|pdf|pptx|ppt|docx', '上传后缀过滤', '文件类型的上传');
INSERT INTO `pcms_configs` VALUES ('19', '0', 'upload', 'memory_limit', '120m', '内存限制', '');
INSERT INTO `pcms_configs` VALUES ('20', '0', 'upload', 'max_file_uploads', '10', '上传文件个数', '个数限制');
INSERT INTO `pcms_configs` VALUES ('21', '0', 'upload', 'scale', '6x9', '图片比例', '默认剪切图片比例');
INSERT INTO `pcms_configs` VALUES ('23', '0', 'upload', 'watermark', '0', '图片水印', '图片使用背景为透明的PNG格式');
INSERT INTO `pcms_configs` VALUES ('24', '0', 'html', 'html', '0', '开启静态', '是否使用静态生成');
INSERT INTO `pcms_configs` VALUES ('25', '0', 'html', 'token', '', '验证密码', '对生成页面操作进行验证,用于第三方触发');
INSERT INTO `pcms_configs` VALUES ('26', '0', 'html', 'urlmodel', '0', '路由模式', '0:ID;1:标题,2:拼音');

-- ----------------------------
-- Table structure for pcms_feedback
-- ----------------------------
DROP TABLE IF EXISTS `pcms_feedback`;
CREATE TABLE `pcms_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) DEFAULT NULL COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `type_id` int(11) DEFAULT NULL COMMENT '分类',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '详细内容',
  `answer` text COMMENT '回答问题',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL COMMENT '传真',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `solve` int(1) DEFAULT '0' COMMENT '解决',
  `show` int(1) DEFAULT NULL COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  `timeline_answer` int(11) DEFAULT NULL COMMENT '回复时间',
  `file` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='反馈';

-- ----------------------------
-- Records of pcms_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_gallery
-- ----------------------------
DROP TABLE IF EXISTS `pcms_gallery`;
CREATE TABLE `pcms_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `cid` int(4) NOT NULL COMMENT '栏目标识',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) NOT NULL COMMENT '排序',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` tinytext COMMENT '标题',
  `title_seo` tinytext COMMENT '优化标题',
  `tags` tinytext COMMENT '标签',
  `intro` varbinary(500) DEFAULT NULL COMMENT '简介',
  `photo` text COMMENT '图片列表',
  `thumb` text COMMENT '对应压缩图',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  `words` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='画廊';

-- ----------------------------
-- Records of pcms_gallery
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_links
-- ----------------------------
DROP TABLE IF EXISTS `pcms_links`;
CREATE TABLE `pcms_links` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cid` int(4) NOT NULL COMMENT '栏目 id',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT NULL COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` tinytext NOT NULL COMMENT '标题',
  `content` text COMMENT '详细内容',
  `tip` tinytext COMMENT '鼠标悬停提示',
  `link` tinytext COMMENT 'URL地址',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '缩略图',
  `show` int(1) DEFAULT '1' COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of pcms_links
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_lists
-- ----------------------------
DROP TABLE IF EXISTS `pcms_lists`;
CREATE TABLE `pcms_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `cid` int(4) NOT NULL COMMENT '栏目 id',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) NOT NULL COMMENT '排序',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` tinytext COMMENT '小标题',
  `content` text COMMENT '内容',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小列表';

-- ----------------------------
-- Records of pcms_lists
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_log
-- ----------------------------
DROP TABLE IF EXISTS `pcms_log`;
CREATE TABLE `pcms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(50) NOT NULL,
  `url` mediumtext NOT NULL COMMENT '控制器',
  `category` varchar(50) NOT NULL DEFAULT '' COMMENT '级别: 1 view,2update,add,3,del',
  `message` tinytext NOT NULL COMMENT '备注',
  `mid` int(6) NOT NULL COMMENT '操作人',
  `ip` varchar(20) NOT NULL COMMENT 'IP地址',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1828 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of pcms_log
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_manager
-- ----------------------------
DROP TABLE IF EXISTS `pcms_manager`;
CREATE TABLE `pcms_manager` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `gid` varchar(64) NOT NULL DEFAULT '2' COMMENT '用户组ID',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话',
  `phone` varchar(30) DEFAULT NULL COMMENT '手机',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态，0 禁用',
  `login_today` int(11) DEFAULT NULL COMMENT '今日登录次数',
  `pwd_errors` int(1) NOT NULL DEFAULT '0' COMMENT '密码错误次数',
  `login_ip` varchar(25) DEFAULT NULL COMMENT '最后登录的IP',
  `reg_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `login_time` int(11) DEFAULT NULL COMMENT '最后一次登录时间',
  `ga` int(1) DEFAULT '0' COMMENT 'GA 两部验证密钥 开启与否',
  `getpass` int(11) DEFAULT NULL COMMENT '获取密码时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后端管理帐号';

-- ----------------------------
-- Records of pcms_manager
-- ----------------------------
INSERT INTO `pcms_manager` VALUES ('1', 'admin', '超级用户', 'ed01a71f99b2d1bb54201d0be5d01889', '1', '123@abc.com', '', '', '', '1', '0', '0', '0.0.0.0', '1376471117', '1452596842', '1', '1389317880');

-- ----------------------------
-- Table structure for pcms_manager_group
-- ----------------------------
DROP TABLE IF EXISTS `pcms_manager_group`;
CREATE TABLE `pcms_manager_group` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `purview` text NOT NULL COMMENT '权限id序列',
  `title` varchar(50) NOT NULL COMMENT '用户组名称',
  `title_en` varchar(50) NOT NULL COMMENT '用户组名称en',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限组';

-- ----------------------------
-- Records of pcms_manager_group
-- ----------------------------
INSERT INTO `pcms_manager_group` VALUES ('2', 'ff2fa0336fe8fbc6a51c4707aa47c3e3,a155574e57e9a8a0d0c6ecb1c511da68,fddc215a132fa97ca3c193f1cae5cf9f,c54e594684ebf2862c75ba29d83f71be', '用户', 'users');
INSERT INTO `pcms_manager_group` VALUES ('3', 'bfc0ef3829e8d84dfc8d31e5edc26d0f,fddc215a132fa97ca3c193f1cae5cf9f', '访客', 'guest');
INSERT INTO `pcms_manager_group` VALUES ('1', 'a634cc19664a4f86577556784da60940,7afb566e83d3dca2d8a47c8cc29e7e36,ff2fa0336fe8fbc6a51c4707aa47c3e3,bfc0ef3829e8d84dfc8d31e5edc26d0f,a155574e57e9a8a0d0c6ecb1c511da68,fddc215a132fa97ca3c193f1cae5cf9f,52b7869014f743535798ba509432feb1,a2756c433a39a2319e61bcd68a758265,5341fd0c5de128ab7979a7414b2e586a,e537f9c0308cbfeb6ee40b4e4c344947,c2bc4d65c38311ab74b9dc39680d82df,efdb91a0f150375b423d8361d254241f,a3c8c3d444880bda2a553b8f3eb6695b,4141c0f8e6a977cd7048cd9d751af350,3045880458ee8b8734bf6b3307acd0d5,dbc10e6bbc54c0ea6f49e604839f5526,048c50d364a23dfcec0a87aa49e19eb8,c54e594684ebf2862c75ba29d83f71be,3345e3e48188396dc21242fb119ba6b1,2ebbbd65b4e2fc52a3ce44de2160e8d2,12fb6543af2e5541b0fc4f8fdd950be0,8d2159c1e0cf70473e66866eb026e80f,c166381208e23d3f4d65dec1231ccf76,3025704bb00b809798194964bccb8d3d,60decd16ccd83e013261697b7cc93bc6,7847598074d20e5abc220cb05a606213,afef320193ab13431e6b085c847b8094,9b4b25e0ea18183e9b085cc116246220,2e0115348725a3f383d8daa4354c7c3a,524c66aa98b226bd78bc7e7ad0423de7,66bfe11515e892dbf8bb4a5a92792e8b,50b03d671787f35800682c10c90a75bf,a1873764d0aa66fa9c6d34e16dcc86c2,0e69c6f28f25c24fe241da13093f9b12,6d119f7ae0c3c090ed51e672203c000f,7ff25ae6e8120b5ae5b5fb7b86a11641,53a396649c27c4e0dbd96fe57c2377e9,f59d0f67b7223a083e4449d583e90307,a41e16b61dd21e98c8143409d807890b,e44bd2f89f2820521a93c981c8af920d,f729102b0a0a547d20a4322e2d12cf71,7cf04cb70fa2f26d449acfb7974fd417,a7cd680c1676df4fdb93e7bdd83d6b3c,5f667ab7322f039e4e7e0ba8b04edf2f,6470d2304686b20640688c6d9dc44b46,df53f98d0b09ef3173cc8d594671fa6f,051071e245077a8126a4607e2148f327,224a58fde770d8718f7c06ac852fd9ae,0309718bf1a4785dcbf1e34461213c3e,d174c0a461db66945abcd861216dd94a,494b71b75af1e63c628544872f3c54d4,454f6e4ce4e57bd58eefda7d3fea1fa5,a87d77b65f6d1e8380b3d05290a994d0,430f99bc176c67ec705091d6a5da07d4,d230f6a24270b02237beb82a23e2742f,e5ba15d009798276692f84b4e0c9c1e9,026e09db119a340d72c2d5a611dfedb1,33a3ca4433131ad797eb4a7ff8bdb40b,87f64ed3bd52c1d6396fcb9908cb7fdf', '管理员', 'root');

-- ----------------------------
-- Table structure for pcms_manager_purview
-- ----------------------------
DROP TABLE IF EXISTS `pcms_manager_purview`;
CREATE TABLE `pcms_manager_purview` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `model` varchar(30) NOT NULL COMMENT '控制模型',
  `method` varchar(30) NOT NULL COMMENT '控制函数',
  `cid` varchar(30) DEFAULT NULL COMMENT 'column id 参数',
  `uri` varchar(64) NOT NULL COMMENT '权限地址md5(model/method)',
  `title` varchar(50) NOT NULL COMMENT '权限名称',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '是否使用权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户组权限';

-- ----------------------------
-- Records of pcms_manager_purview
-- ----------------------------
INSERT INTO `pcms_manager_purview` VALUES ('1', 'configs', 'index', '', 'fddc215a132fa97ca3c193f1cae5cf9f', '配置查看', '1');
INSERT INTO `pcms_manager_purview` VALUES ('2', 'configs', 'set', '', 'a155574e57e9a8a0d0c6ecb1c511da68', '配置修改', '1');
INSERT INTO `pcms_manager_purview` VALUES ('3', 'columns', 'index', '', 'bfc0ef3829e8d84dfc8d31e5edc26d0f', '栏目列表', '1');
INSERT INTO `pcms_manager_purview` VALUES ('4', 'columns', 'create', '', 'ff2fa0336fe8fbc6a51c4707aa47c3e3', '栏目添加', '1');
INSERT INTO `pcms_manager_purview` VALUES ('5', 'columns', 'edit', '', '7afb566e83d3dca2d8a47c8cc29e7e36', '栏目修改', '1');
INSERT INTO `pcms_manager_purview` VALUES ('6', 'columns', 'delete', '', '4115dd2b6affc9e3626c695e398f335a', '栏目删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('7', 'modules', 'index', '', 'c54e594684ebf2862c75ba29d83f71be', '模型查看', '1');
INSERT INTO `pcms_manager_purview` VALUES ('8', 'modules', 'create', '', '048c50d364a23dfcec0a87aa49e19eb8', '模型添加', '1');
INSERT INTO `pcms_manager_purview` VALUES ('9', 'modules', 'edit', '', 'dbc10e6bbc54c0ea6f49e604839f5526', '模型修改', '1');
INSERT INTO `pcms_manager_purview` VALUES ('10', 'modules', 'delete', '', 'bbff3957029793ef5163df61fbe018a5', '删除模型', '1');
INSERT INTO `pcms_manager_purview` VALUES ('11', 'manager_purview', 'index', '', '4141c0f8e6a977cd7048cd9d751af350', '权限管理', '1');
INSERT INTO `pcms_manager_purview` VALUES ('12', 'manager_purview', 'create', '', 'a3c8c3d444880bda2a553b8f3eb6695b', '权限添加', '1');
INSERT INTO `pcms_manager_purview` VALUES ('13', 'manager_purview', 'edit', '', 'efdb91a0f150375b423d8361d254241f', '权限修改', '1');
INSERT INTO `pcms_manager_purview` VALUES ('14', 'manager_purview', 'delete', '', '35845fea21044129353364ba21f144a0', '权限删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('15', 'manager_group', 'index', '', 'e537f9c0308cbfeb6ee40b4e4c344947', '用户组查看', '1');
INSERT INTO `pcms_manager_purview` VALUES ('16', 'manager_group', 'create', '', '5341fd0c5de128ab7979a7414b2e586a', '用户组添加', '1');
INSERT INTO `pcms_manager_purview` VALUES ('17', 'manager_group', 'edit', '', 'a2756c433a39a2319e61bcd68a758265', '用户组修改', '1');
INSERT INTO `pcms_manager_purview` VALUES ('18', 'manager_group', 'delete', '', '7d5101dc315695e13463ffdf708b5865', '用户组删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('19', 'upload', 'uploado', '', '3345e3e48188396dc21242fb119ba6b1', '上传', '1');

-- ----------------------------
-- Table structure for pcms_modules
-- ----------------------------
DROP TABLE IF EXISTS `pcms_modules`;
CREATE TABLE `pcms_modules` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '模型标识',
  `sort_id` int(2) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '显示名称',
  `controller` varchar(50) NOT NULL COMMENT '控制器名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='栏目模型';

-- ----------------------------
-- Records of pcms_modules
-- ----------------------------
INSERT INTO `pcms_modules` VALUES ('1', '0', '链接', 'links');
INSERT INTO `pcms_modules` VALUES ('3', '0', '文章', 'article');
INSERT INTO `pcms_modules` VALUES ('6', '0', '清单', 'lists');
INSERT INTO `pcms_modules` VALUES ('7', '3', '期刊', 'gallery');
INSERT INTO `pcms_modules` VALUES ('8', '1', '单页', 'page');
INSERT INTO `pcms_modules` VALUES ('9', '4', '产品', 'product');
INSERT INTO `pcms_modules` VALUES ('10', '0', '招聘', 'recruit');
INSERT INTO `pcms_modules` VALUES ('11', '5', '联系我们', 'store');
INSERT INTO `pcms_modules` VALUES ('12', '6', '管理团队', 'team');

-- ----------------------------
-- Table structure for pcms_msgs
-- ----------------------------
DROP TABLE IF EXISTS `pcms_msgs`;
CREATE TABLE `pcms_msgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `msg` tinytext COMMENT '提示消息',
  `level` int(1) DEFAULT '1' COMMENT '类型: 1notie 2info 3 success 4error',
  `timeline` int(11) NOT NULL COMMENT '时间',
  `markread` int(1) NOT NULL COMMENT '是否阅读',
  `notify` int(1) DEFAULT '0' COMMENT '是否提示过',
  `byer` int(6) NOT NULL DEFAULT '0' COMMENT '发送者 mid system is 0',
  `toer` int(6) NOT NULL COMMENT '接受者 mid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='消息提示';

-- ----------------------------
-- Records of pcms_msgs
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_page
-- ----------------------------
DROP TABLE IF EXISTS `pcms_page`;
CREATE TABLE `pcms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(4) DEFAULT NULL COMMENT '栏目id',
  `ccid` int(11) DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) DEFAULT '0' COMMENT '审核',
  `title` tinytext COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片组',
  `thumb` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `template` varchar(200) DEFAULT NULL COMMENT '模板',
  `timeline` int(10) DEFAULT NULL COMMENT '发布/修改时间',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of pcms_page
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_province
-- ----------------------------
DROP TABLE IF EXISTS `pcms_province`;
CREATE TABLE `pcms_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `entitle` varchar(50) DEFAULT NULL COMMENT '英文标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='省级列表';

-- ----------------------------
-- Records of pcms_province
-- ----------------------------
INSERT INTO `pcms_province` VALUES ('1', '北京市', 'BeiJing');
INSERT INTO `pcms_province` VALUES ('2', '天津市', 'Tianjin');
INSERT INTO `pcms_province` VALUES ('3', '河北省', 'Hebei');
INSERT INTO `pcms_province` VALUES ('4', '山西省', 'Shanxi');
INSERT INTO `pcms_province` VALUES ('5', '辽宁省', 'Liaoning');
INSERT INTO `pcms_province` VALUES ('6', '吉林省', 'Jilin');
INSERT INTO `pcms_province` VALUES ('7', '上海市', 'Shanghai');
INSERT INTO `pcms_province` VALUES ('8', '江苏省', 'Jiangsu');
INSERT INTO `pcms_province` VALUES ('9', '浙江省', 'Zhejiang');
INSERT INTO `pcms_province` VALUES ('10', '安徽省', 'Anhui');
INSERT INTO `pcms_province` VALUES ('11', '福建省', 'Fujian');
INSERT INTO `pcms_province` VALUES ('12', '江西省', 'Jiangxi');
INSERT INTO `pcms_province` VALUES ('13', '山东省', 'Shandong');
INSERT INTO `pcms_province` VALUES ('14', '河南省', 'Henan');
INSERT INTO `pcms_province` VALUES ('15', '内蒙古', 'Neimenggu');
INSERT INTO `pcms_province` VALUES ('16', '黑龙江省', 'Heilongjiang');
INSERT INTO `pcms_province` VALUES ('17', '湖北省', 'Hubei');
INSERT INTO `pcms_province` VALUES ('18', '湖南省', 'Hunan');
INSERT INTO `pcms_province` VALUES ('19', '广东省', 'Guangdong');
INSERT INTO `pcms_province` VALUES ('20', '广西省', 'Guangxi');
INSERT INTO `pcms_province` VALUES ('21', '海南省', 'Hainan');
INSERT INTO `pcms_province` VALUES ('22', '四川省', 'Sichuan');
INSERT INTO `pcms_province` VALUES ('23', '重庆市', 'Chongqing');
INSERT INTO `pcms_province` VALUES ('24', '台湾省', 'Taiwan');
INSERT INTO `pcms_province` VALUES ('25', '贵州省', 'Guizhou');
INSERT INTO `pcms_province` VALUES ('26', '云南省', 'Yunnan');
INSERT INTO `pcms_province` VALUES ('27', '西藏', 'Xizang');
INSERT INTO `pcms_province` VALUES ('28', '陕西省', 'Shanxi');
INSERT INTO `pcms_province` VALUES ('29', '甘肃省', 'Gansu');
INSERT INTO `pcms_province` VALUES ('30', '青海省', 'Qinghai');
INSERT INTO `pcms_province` VALUES ('31', '宁夏', 'Ningxia');
INSERT INTO `pcms_province` VALUES ('32', '新疆', 'Xinjiang');
INSERT INTO `pcms_province` VALUES ('33', '香港', 'xianggang');
INSERT INTO `pcms_province` VALUES ('34', '澳门', 'aomen');
INSERT INTO `pcms_province` VALUES ('35', '钓鱼岛', 'Diaoyudao');

-- ----------------------------
-- Table structure for pcms_province_city
-- ----------------------------
DROP TABLE IF EXISTS `pcms_province_city`;
CREATE TABLE `pcms_province_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL DEFAULT '0' COMMENT '省级id',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `entitle` varchar(50) DEFAULT NULL COMMENT '英文标题',
  `weather` varchar(11) DEFAULT NULL COMMENT '国家天气ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=384 DEFAULT CHARSET=utf8 COMMENT='城市列表';

-- ----------------------------
-- Records of pcms_province_city
-- ----------------------------
INSERT INTO `pcms_province_city` VALUES ('1', '1', '北京', null, '101010100');
INSERT INTO `pcms_province_city` VALUES ('2', '2', '天津', null, '101030100');
INSERT INTO `pcms_province_city` VALUES ('3', '3', '石家庄', null, '101090101');
INSERT INTO `pcms_province_city` VALUES ('4', '3', '保定', null, '101090201');
INSERT INTO `pcms_province_city` VALUES ('5', '3', '沧州', null, '101090701');
INSERT INTO `pcms_province_city` VALUES ('6', '3', '承德', null, '101090402');
INSERT INTO `pcms_province_city` VALUES ('7', '3', '邯郸', null, '101091001');
INSERT INTO `pcms_province_city` VALUES ('8', '3', '衡水', null, '101090801');
INSERT INTO `pcms_province_city` VALUES ('9', '3', '廊坊', null, '101090601');
INSERT INTO `pcms_province_city` VALUES ('10', '3', '秦皇岛', null, '101091101');
INSERT INTO `pcms_province_city` VALUES ('11', '3', '唐山', null, '101090501');
INSERT INTO `pcms_province_city` VALUES ('12', '3', '邢台', null, '101090901');
INSERT INTO `pcms_province_city` VALUES ('13', '3', '张家口', null, '101090301');
INSERT INTO `pcms_province_city` VALUES ('14', '4', '太原', null, '101100101');
INSERT INTO `pcms_province_city` VALUES ('15', '4', '长治', null, '101100501');
INSERT INTO `pcms_province_city` VALUES ('16', '4', '大同', null, '101100201');
INSERT INTO `pcms_province_city` VALUES ('17', '4', '晋城', null, '101100601');
INSERT INTO `pcms_province_city` VALUES ('18', '4', '晋中', null, '101100401');
INSERT INTO `pcms_province_city` VALUES ('19', '4', '临汾', null, '101100701');
INSERT INTO `pcms_province_city` VALUES ('20', '4', '吕梁', null, '101101101');
INSERT INTO `pcms_province_city` VALUES ('21', '4', '朔州', null, '101100901');
INSERT INTO `pcms_province_city` VALUES ('22', '4', '忻州', null, '101101001');
INSERT INTO `pcms_province_city` VALUES ('23', '4', '阳泉', null, '101100301');
INSERT INTO `pcms_province_city` VALUES ('24', '4', '运城', null, '101100801');
INSERT INTO `pcms_province_city` VALUES ('25', '5', '沈阳', null, '101070101');
INSERT INTO `pcms_province_city` VALUES ('26', '5', '大连', null, '101070201');
INSERT INTO `pcms_province_city` VALUES ('27', '5', '鞍山', null, '101070301');
INSERT INTO `pcms_province_city` VALUES ('28', '5', '本溪', null, '101070501');
INSERT INTO `pcms_province_city` VALUES ('29', '5', '朝阳', null, '101071201');
INSERT INTO `pcms_province_city` VALUES ('30', '5', '丹东', null, '101070601');
INSERT INTO `pcms_province_city` VALUES ('31', '5', '抚顺', null, '101070401');
INSERT INTO `pcms_province_city` VALUES ('32', '5', '阜新', null, '101070901');
INSERT INTO `pcms_province_city` VALUES ('33', '5', '葫芦岛', null, '101071401');
INSERT INTO `pcms_province_city` VALUES ('34', '5', '锦州', null, '101070701');
INSERT INTO `pcms_province_city` VALUES ('35', '5', '辽阳', null, '101071001');
INSERT INTO `pcms_province_city` VALUES ('36', '5', '盘锦', null, '101071301');
INSERT INTO `pcms_province_city` VALUES ('37', '5', '铁岭', null, '101071101');
INSERT INTO `pcms_province_city` VALUES ('38', '5', '营口', null, '101070801');
INSERT INTO `pcms_province_city` VALUES ('39', '6', '长春', null, '101060101');
INSERT INTO `pcms_province_city` VALUES ('40', '6', '吉林', null, '101060201');
INSERT INTO `pcms_province_city` VALUES ('41', '6', '白城', null, '101060601');
INSERT INTO `pcms_province_city` VALUES ('42', '6', '白山', null, '101060901');
INSERT INTO `pcms_province_city` VALUES ('43', '6', '辽源', null, '101060701');
INSERT INTO `pcms_province_city` VALUES ('44', '6', '四平', null, '101060401');
INSERT INTO `pcms_province_city` VALUES ('45', '6', '松原', null, '101060801');
INSERT INTO `pcms_province_city` VALUES ('46', '6', '通化', null, '101060501');
INSERT INTO `pcms_province_city` VALUES ('47', '6', '延边朝鲜族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('48', '7', '上海', null, '101020100');
INSERT INTO `pcms_province_city` VALUES ('49', '8', '南京', null, '101190101');
INSERT INTO `pcms_province_city` VALUES ('50', '8', '常州', null, '101191101');
INSERT INTO `pcms_province_city` VALUES ('51', '8', '淮安', null, '101190901');
INSERT INTO `pcms_province_city` VALUES ('52', '8', '连云港', null, '101191001');
INSERT INTO `pcms_province_city` VALUES ('53', '8', '南通', null, '101190501');
INSERT INTO `pcms_province_city` VALUES ('54', '8', '苏州', null, '101190401');
INSERT INTO `pcms_province_city` VALUES ('55', '8', '宿迁', null, '101191301');
INSERT INTO `pcms_province_city` VALUES ('56', '8', '泰州', null, '101191201');
INSERT INTO `pcms_province_city` VALUES ('57', '8', '无锡', null, '101190201');
INSERT INTO `pcms_province_city` VALUES ('58', '8', '徐州', null, '101190801');
INSERT INTO `pcms_province_city` VALUES ('59', '8', '盐城', null, '101190701');
INSERT INTO `pcms_province_city` VALUES ('60', '8', '扬州', null, '101190601');
INSERT INTO `pcms_province_city` VALUES ('61', '8', '镇江', null, '101190301');
INSERT INTO `pcms_province_city` VALUES ('62', '9', '杭州', null, '101210101');
INSERT INTO `pcms_province_city` VALUES ('63', '9', '湖州', null, '101210201');
INSERT INTO `pcms_province_city` VALUES ('64', '9', '嘉兴', null, '101210301');
INSERT INTO `pcms_province_city` VALUES ('65', '9', '金华', null, '101210901');
INSERT INTO `pcms_province_city` VALUES ('66', '9', '丽水', null, '101210801');
INSERT INTO `pcms_province_city` VALUES ('67', '9', '宁波', null, '101210401');
INSERT INTO `pcms_province_city` VALUES ('68', '9', '绍兴', null, '101210501');
INSERT INTO `pcms_province_city` VALUES ('69', '9', '台州', null, '101210601');
INSERT INTO `pcms_province_city` VALUES ('70', '9', '温州', null, '101210701');
INSERT INTO `pcms_province_city` VALUES ('71', '9', '舟山', null, '101211101');
INSERT INTO `pcms_province_city` VALUES ('72', '9', '衢州', null, '101211001');
INSERT INTO `pcms_province_city` VALUES ('73', '10', '合肥', null, '101220101');
INSERT INTO `pcms_province_city` VALUES ('74', '10', '安庆', null, '101220601');
INSERT INTO `pcms_province_city` VALUES ('75', '10', '蚌埠', null, '101220201');
INSERT INTO `pcms_province_city` VALUES ('76', '10', '巢湖', null, '101221601');
INSERT INTO `pcms_province_city` VALUES ('77', '10', '池州', null, '101221701');
INSERT INTO `pcms_province_city` VALUES ('78', '10', '滁州', null, '101221101');
INSERT INTO `pcms_province_city` VALUES ('79', '10', '阜阳', null, '101220801');
INSERT INTO `pcms_province_city` VALUES ('80', '10', '淮北', null, '101221201');
INSERT INTO `pcms_province_city` VALUES ('81', '10', '淮南', null, '101220401');
INSERT INTO `pcms_province_city` VALUES ('82', '10', '黄山', null, null);
INSERT INTO `pcms_province_city` VALUES ('83', '10', '六安', null, '101221501');
INSERT INTO `pcms_province_city` VALUES ('84', '10', '马鞍山', null, '101220501');
INSERT INTO `pcms_province_city` VALUES ('85', '10', '宿州', null, '101220701');
INSERT INTO `pcms_province_city` VALUES ('86', '10', '铜陵', null, '101221301');
INSERT INTO `pcms_province_city` VALUES ('87', '10', '芜湖', null, '101220301');
INSERT INTO `pcms_province_city` VALUES ('88', '10', '宣城', null, '101221401');
INSERT INTO `pcms_province_city` VALUES ('89', '10', '亳州', null, null);
INSERT INTO `pcms_province_city` VALUES ('90', '11', '福州', null, '101230101');
INSERT INTO `pcms_province_city` VALUES ('91', '11', '厦门', null, '101230201');
INSERT INTO `pcms_province_city` VALUES ('92', '11', '龙岩', null, '101230701');
INSERT INTO `pcms_province_city` VALUES ('93', '11', '南平', null, '101230901');
INSERT INTO `pcms_province_city` VALUES ('94', '11', '宁德', null, '101230301');
INSERT INTO `pcms_province_city` VALUES ('95', '11', '莆田', null, '101230401');
INSERT INTO `pcms_province_city` VALUES ('96', '11', '泉州', null, '101230501');
INSERT INTO `pcms_province_city` VALUES ('97', '11', '三明', null, '101230801');
INSERT INTO `pcms_province_city` VALUES ('98', '11', '漳州', null, '101230601');
INSERT INTO `pcms_province_city` VALUES ('99', '12', '南昌', null, '101240101');
INSERT INTO `pcms_province_city` VALUES ('100', '12', '抚州', null, '101240401');
INSERT INTO `pcms_province_city` VALUES ('101', '12', '赣州', null, '101240701');
INSERT INTO `pcms_province_city` VALUES ('102', '12', '吉安', null, '101240601');
INSERT INTO `pcms_province_city` VALUES ('103', '12', '景德镇', null, '101240801');
INSERT INTO `pcms_province_city` VALUES ('104', '12', '九江', null, '101240201');
INSERT INTO `pcms_province_city` VALUES ('105', '12', '萍乡', null, '101240901');
INSERT INTO `pcms_province_city` VALUES ('106', '12', '上饶', null, '101240301');
INSERT INTO `pcms_province_city` VALUES ('107', '12', '新余', null, '101241001');
INSERT INTO `pcms_province_city` VALUES ('108', '12', '宜春', null, '101240501');
INSERT INTO `pcms_province_city` VALUES ('109', '12', '鹰潭', null, '101241101');
INSERT INTO `pcms_province_city` VALUES ('110', '13', '济南', null, '101120101');
INSERT INTO `pcms_province_city` VALUES ('111', '13', '青岛', null, '101120201');
INSERT INTO `pcms_province_city` VALUES ('112', '13', '烟台', null, '101120501');
INSERT INTO `pcms_province_city` VALUES ('113', '13', '滨州', null, '101121101');
INSERT INTO `pcms_province_city` VALUES ('114', '13', '德州', null, '101120401');
INSERT INTO `pcms_province_city` VALUES ('115', '13', '东营', null, '101121201');
INSERT INTO `pcms_province_city` VALUES ('116', '13', '菏泽', null, '101121001');
INSERT INTO `pcms_province_city` VALUES ('117', '13', '济宁', null, '101120701');
INSERT INTO `pcms_province_city` VALUES ('118', '13', '莱芜', null, '101121601');
INSERT INTO `pcms_province_city` VALUES ('119', '13', '聊城', null, '101121701');
INSERT INTO `pcms_province_city` VALUES ('120', '13', '临沂', null, '101120901');
INSERT INTO `pcms_province_city` VALUES ('121', '13', '日照', null, '101121501');
INSERT INTO `pcms_province_city` VALUES ('122', '13', '泰安', null, '101120801');
INSERT INTO `pcms_province_city` VALUES ('123', '13', '威海', null, '101121301');
INSERT INTO `pcms_province_city` VALUES ('124', '13', '潍坊', null, '101120601');
INSERT INTO `pcms_province_city` VALUES ('125', '13', '枣庄', null, '101121401');
INSERT INTO `pcms_province_city` VALUES ('126', '13', '淄博', null, '101120301');
INSERT INTO `pcms_province_city` VALUES ('127', '14', '郑州', null, '101180101');
INSERT INTO `pcms_province_city` VALUES ('128', '14', '洛阳', null, '101180901');
INSERT INTO `pcms_province_city` VALUES ('129', '14', '开封', null, '101180801');
INSERT INTO `pcms_province_city` VALUES ('130', '14', '安阳', null, '101180201');
INSERT INTO `pcms_province_city` VALUES ('131', '14', '鹤壁', null, '101181201');
INSERT INTO `pcms_province_city` VALUES ('132', '14', '济源', null, null);
INSERT INTO `pcms_province_city` VALUES ('133', '14', '焦作', null, '101181101');
INSERT INTO `pcms_province_city` VALUES ('134', '14', '南阳', null, '101180701');
INSERT INTO `pcms_province_city` VALUES ('135', '14', '平顶山', null, '101180501');
INSERT INTO `pcms_province_city` VALUES ('136', '14', '三门峡', null, '101181701');
INSERT INTO `pcms_province_city` VALUES ('137', '14', '商丘', null, '101181001');
INSERT INTO `pcms_province_city` VALUES ('138', '14', '新乡', null, '101180301');
INSERT INTO `pcms_province_city` VALUES ('139', '14', '信阳', null, '101180601');
INSERT INTO `pcms_province_city` VALUES ('140', '14', '许昌', null, '101180401');
INSERT INTO `pcms_province_city` VALUES ('141', '14', '周口', null, '101181401');
INSERT INTO `pcms_province_city` VALUES ('142', '14', '驻马店', null, '101181601');
INSERT INTO `pcms_province_city` VALUES ('143', '14', '漯河', null, '101181501');
INSERT INTO `pcms_province_city` VALUES ('144', '14', '濮阳', null, '101181301');
INSERT INTO `pcms_province_city` VALUES ('145', '15', '呼和浩特', null, '101080101');
INSERT INTO `pcms_province_city` VALUES ('146', '15', '包头', null, '101080201');
INSERT INTO `pcms_province_city` VALUES ('147', '15', '赤峰', null, '101080601');
INSERT INTO `pcms_province_city` VALUES ('148', '15', '鄂尔多斯', null, '101080701');
INSERT INTO `pcms_province_city` VALUES ('149', '15', '呼伦贝尔', null, '101081001');
INSERT INTO `pcms_province_city` VALUES ('150', '15', '阿拉善盟', null, null);
INSERT INTO `pcms_province_city` VALUES ('151', '15', '巴彦淖尔盟', null, null);
INSERT INTO `pcms_province_city` VALUES ('152', '15', '通辽', null, '101080501');
INSERT INTO `pcms_province_city` VALUES ('153', '15', '乌海', null, '101080301');
INSERT INTO `pcms_province_city` VALUES ('154', '15', '乌兰察布盟', null, null);
INSERT INTO `pcms_province_city` VALUES ('155', '15', '锡林郭勒盟', null, null);
INSERT INTO `pcms_province_city` VALUES ('156', '15', '兴安盟', null, null);
INSERT INTO `pcms_province_city` VALUES ('157', '16', '哈尔滨', null, '101050101');
INSERT INTO `pcms_province_city` VALUES ('158', '16', '大庆', null, '101050901');
INSERT INTO `pcms_province_city` VALUES ('159', '16', '大兴安岭', null, '101050701');
INSERT INTO `pcms_province_city` VALUES ('160', '16', '鹤岗', null, '101051201');
INSERT INTO `pcms_province_city` VALUES ('161', '16', '黑河', null, '101050601');
INSERT INTO `pcms_province_city` VALUES ('162', '16', '鸡西', null, '101051101');
INSERT INTO `pcms_province_city` VALUES ('163', '16', '佳木斯', null, '101050401');
INSERT INTO `pcms_province_city` VALUES ('164', '16', '牡丹江', null, '101050301');
INSERT INTO `pcms_province_city` VALUES ('165', '16', '七台河', null, '101051002');
INSERT INTO `pcms_province_city` VALUES ('166', '16', '齐齐哈尔', null, '101050201');
INSERT INTO `pcms_province_city` VALUES ('167', '16', '双鸭山', null, '101051301');
INSERT INTO `pcms_province_city` VALUES ('168', '16', '绥化', null, '101050501');
INSERT INTO `pcms_province_city` VALUES ('169', '16', '伊春', null, '101050801');
INSERT INTO `pcms_province_city` VALUES ('170', '17', '武汉', null, '101200101');
INSERT INTO `pcms_province_city` VALUES ('171', '17', '鄂州', null, '101200301');
INSERT INTO `pcms_province_city` VALUES ('172', '17', '黄冈', null, '101200501');
INSERT INTO `pcms_province_city` VALUES ('173', '17', '黄石', null, '101200601');
INSERT INTO `pcms_province_city` VALUES ('174', '17', '荆门', null, '101201401');
INSERT INTO `pcms_province_city` VALUES ('175', '17', '荆州', null, '101200801');
INSERT INTO `pcms_province_city` VALUES ('176', '17', '潜江', null, null);
INSERT INTO `pcms_province_city` VALUES ('177', '17', '十堰', null, '101201101');
INSERT INTO `pcms_province_city` VALUES ('178', '17', '随州', null, '101201301');
INSERT INTO `pcms_province_city` VALUES ('179', '17', '天门', null, null);
INSERT INTO `pcms_province_city` VALUES ('180', '17', '仙桃', null, null);
INSERT INTO `pcms_province_city` VALUES ('181', '17', '咸宁', null, '101200701');
INSERT INTO `pcms_province_city` VALUES ('182', '17', '襄樊', null, null);
INSERT INTO `pcms_province_city` VALUES ('183', '17', '孝感', null, '101200401');
INSERT INTO `pcms_province_city` VALUES ('184', '17', '宜昌', null, '101200901');
INSERT INTO `pcms_province_city` VALUES ('185', '17', '恩施土家族苗族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('186', '17', '神农架林区', null, null);
INSERT INTO `pcms_province_city` VALUES ('187', '18', '长沙', null, '101250101');
INSERT INTO `pcms_province_city` VALUES ('188', '18', '益阳', null, '101250701');
INSERT INTO `pcms_province_city` VALUES ('189', '18', '湘潭', null, '101250201');
INSERT INTO `pcms_province_city` VALUES ('190', '18', '常德', null, '101250601');
INSERT INTO `pcms_province_city` VALUES ('191', '18', '郴州', null, '101250501');
INSERT INTO `pcms_province_city` VALUES ('192', '18', '衡阳', null, '101250401');
INSERT INTO `pcms_province_city` VALUES ('193', '18', '怀化', null, '101251201');
INSERT INTO `pcms_province_city` VALUES ('194', '18', '娄底', null, '101250801');
INSERT INTO `pcms_province_city` VALUES ('195', '18', '邵阳', null, '101250901');
INSERT INTO `pcms_province_city` VALUES ('196', '18', '永州', null, '101251401');
INSERT INTO `pcms_province_city` VALUES ('197', '18', '岳阳', null, '101251001');
INSERT INTO `pcms_province_city` VALUES ('198', '18', '张家界', null, '101251101');
INSERT INTO `pcms_province_city` VALUES ('199', '18', '株洲', null, '101250301');
INSERT INTO `pcms_province_city` VALUES ('200', '18', '湘西土家族苗族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('201', '19', '广州', null, '101280101');
INSERT INTO `pcms_province_city` VALUES ('202', '19', '深圳', null, '101280601');
INSERT INTO `pcms_province_city` VALUES ('203', '19', '珠海', null, '101280701');
INSERT INTO `pcms_province_city` VALUES ('204', '19', '湛江', null, '101281001');
INSERT INTO `pcms_province_city` VALUES ('205', '19', '惠州', null, '101280301');
INSERT INTO `pcms_province_city` VALUES ('206', '19', '江门', null, '101281101');
INSERT INTO `pcms_province_city` VALUES ('207', '19', '潮州', null, '101281501');
INSERT INTO `pcms_province_city` VALUES ('208', '19', '汕头', null, '101280501');
INSERT INTO `pcms_province_city` VALUES ('209', '19', '东莞', null, '101281601');
INSERT INTO `pcms_province_city` VALUES ('210', '19', '佛山', null, '101280800');
INSERT INTO `pcms_province_city` VALUES ('211', '19', '河源', null, '101281201');
INSERT INTO `pcms_province_city` VALUES ('212', '19', '揭阳', null, '101281901');
INSERT INTO `pcms_province_city` VALUES ('213', '19', '茂名', null, '101282001');
INSERT INTO `pcms_province_city` VALUES ('214', '19', '梅州', null, '101280401');
INSERT INTO `pcms_province_city` VALUES ('215', '19', '清远', null, '101281301');
INSERT INTO `pcms_province_city` VALUES ('216', '19', '汕尾', null, '101282101');
INSERT INTO `pcms_province_city` VALUES ('217', '19', '韶关', null, '101280201');
INSERT INTO `pcms_province_city` VALUES ('218', '19', '阳江', null, '101281801');
INSERT INTO `pcms_province_city` VALUES ('219', '19', '云浮', null, '101281401');
INSERT INTO `pcms_province_city` VALUES ('220', '19', '肇庆', null, '101280901');
INSERT INTO `pcms_province_city` VALUES ('221', '19', '中山', null, '101281701');
INSERT INTO `pcms_province_city` VALUES ('222', '20', '南宁', null, '101300101');
INSERT INTO `pcms_province_city` VALUES ('223', '20', '桂林', null, '101300501');
INSERT INTO `pcms_province_city` VALUES ('224', '20', '北海', null, '101301301');
INSERT INTO `pcms_province_city` VALUES ('225', '20', '百色', null, '101301001');
INSERT INTO `pcms_province_city` VALUES ('226', '20', '崇左', null, '101300201');
INSERT INTO `pcms_province_city` VALUES ('227', '20', '防城港', null, '101301401');
INSERT INTO `pcms_province_city` VALUES ('228', '20', '贵港', null, '101300801');
INSERT INTO `pcms_province_city` VALUES ('229', '20', '河池', null, '101301201');
INSERT INTO `pcms_province_city` VALUES ('230', '20', '贺州', null, '101300701');
INSERT INTO `pcms_province_city` VALUES ('231', '20', '来宾', null, '101300401');
INSERT INTO `pcms_province_city` VALUES ('232', '20', '柳州', null, '101300301');
INSERT INTO `pcms_province_city` VALUES ('233', '20', '钦州', null, '101301101');
INSERT INTO `pcms_province_city` VALUES ('234', '20', '梧州', null, '101300601');
INSERT INTO `pcms_province_city` VALUES ('235', '20', '玉林', null, '101300901');
INSERT INTO `pcms_province_city` VALUES ('236', '21', '海口', null, '101310101');
INSERT INTO `pcms_province_city` VALUES ('237', '21', '三亚', null, '101310201');
INSERT INTO `pcms_province_city` VALUES ('238', '21', '白沙黎族自治县', null, null);
INSERT INTO `pcms_province_city` VALUES ('239', '21', '保亭黎族苗族自治县', null, null);
INSERT INTO `pcms_province_city` VALUES ('240', '21', '昌江黎族自治县', null, null);
INSERT INTO `pcms_province_city` VALUES ('241', '21', '澄迈县', null, null);
INSERT INTO `pcms_province_city` VALUES ('242', '21', '定安县', null, null);
INSERT INTO `pcms_province_city` VALUES ('243', '21', '东方', null, null);
INSERT INTO `pcms_province_city` VALUES ('244', '21', '乐东黎族自治县', null, null);
INSERT INTO `pcms_province_city` VALUES ('245', '21', '临高县', null, null);
INSERT INTO `pcms_province_city` VALUES ('246', '21', '陵水黎族自治县', null, null);
INSERT INTO `pcms_province_city` VALUES ('247', '21', '琼海', null, null);
INSERT INTO `pcms_province_city` VALUES ('248', '21', '琼中黎族苗族自治县', null, null);
INSERT INTO `pcms_province_city` VALUES ('249', '21', '屯昌县', null, null);
INSERT INTO `pcms_province_city` VALUES ('250', '21', '万宁', null, null);
INSERT INTO `pcms_province_city` VALUES ('251', '21', '文昌', null, '101310212');
INSERT INTO `pcms_province_city` VALUES ('252', '21', '五指山', null, null);
INSERT INTO `pcms_province_city` VALUES ('253', '21', '儋州', null, '101310205');
INSERT INTO `pcms_province_city` VALUES ('254', '22', '成都', null, '101270101');
INSERT INTO `pcms_province_city` VALUES ('255', '22', '绵阳', null, '101270401');
INSERT INTO `pcms_province_city` VALUES ('256', '22', '巴中', null, '101270901');
INSERT INTO `pcms_province_city` VALUES ('257', '22', '达州', null, '101270601');
INSERT INTO `pcms_province_city` VALUES ('258', '22', '德阳', null, '101272001');
INSERT INTO `pcms_province_city` VALUES ('259', '22', '广安', null, '101270801');
INSERT INTO `pcms_province_city` VALUES ('260', '22', '广元', null, '101272101');
INSERT INTO `pcms_province_city` VALUES ('261', '22', '乐山', null, '101271401');
INSERT INTO `pcms_province_city` VALUES ('262', '22', '眉山', null, '101271501');
INSERT INTO `pcms_province_city` VALUES ('263', '22', '南充', null, '101270501');
INSERT INTO `pcms_province_city` VALUES ('264', '22', '内江', null, '101271201');
INSERT INTO `pcms_province_city` VALUES ('265', '22', '攀枝花', null, '101270201');
INSERT INTO `pcms_province_city` VALUES ('266', '22', '遂宁', null, '101270701');
INSERT INTO `pcms_province_city` VALUES ('267', '22', '雅安', null, '101271701');
INSERT INTO `pcms_province_city` VALUES ('268', '22', '宜宾', null, '101271101');
INSERT INTO `pcms_province_city` VALUES ('269', '22', '资阳', null, '101271301');
INSERT INTO `pcms_province_city` VALUES ('270', '22', '自贡', null, '101270301');
INSERT INTO `pcms_province_city` VALUES ('271', '22', '泸州', null, '101271001');
INSERT INTO `pcms_province_city` VALUES ('272', '22', '甘孜藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('273', '22', '阿坝藏族羌族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('274', '22', '凉山彝族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('275', '23', '重庆', null, '101040100');
INSERT INTO `pcms_province_city` VALUES ('276', '24', '台北', null, '101340102');
INSERT INTO `pcms_province_city` VALUES ('277', '24', '高雄', null, '101340201');
INSERT INTO `pcms_province_city` VALUES ('278', '24', '台中', null, null);
INSERT INTO `pcms_province_city` VALUES ('279', '24', '台南', null, null);
INSERT INTO `pcms_province_city` VALUES ('280', '24', '新北', null, null);
INSERT INTO `pcms_province_city` VALUES ('281', '24', '基隆', null, null);
INSERT INTO `pcms_province_city` VALUES ('282', '24', '新竹', null, null);
INSERT INTO `pcms_province_city` VALUES ('283', '24', '嘉义', null, null);
INSERT INTO `pcms_province_city` VALUES ('284', '24', '桃园县', null, null);
INSERT INTO `pcms_province_city` VALUES ('285', '24', '新竹县', null, null);
INSERT INTO `pcms_province_city` VALUES ('286', '24', '苗栗县', null, null);
INSERT INTO `pcms_province_city` VALUES ('287', '24', '彰化县', null, null);
INSERT INTO `pcms_province_city` VALUES ('288', '24', '南投县', null, null);
INSERT INTO `pcms_province_city` VALUES ('289', '24', '云林县', null, null);
INSERT INTO `pcms_province_city` VALUES ('290', '24', '嘉义县', null, null);
INSERT INTO `pcms_province_city` VALUES ('291', '24', '屏东县', null, null);
INSERT INTO `pcms_province_city` VALUES ('292', '24', '宜兰县', null, null);
INSERT INTO `pcms_province_city` VALUES ('293', '24', '花莲县', null, null);
INSERT INTO `pcms_province_city` VALUES ('294', '24', '台东县', null, null);
INSERT INTO `pcms_province_city` VALUES ('295', '24', '澎湖县', null, null);
INSERT INTO `pcms_province_city` VALUES ('296', '24', '金门县', null, null);
INSERT INTO `pcms_province_city` VALUES ('297', '24', '连江县', null, null);
INSERT INTO `pcms_province_city` VALUES ('298', '25', '贵阳', null, '101260101');
INSERT INTO `pcms_province_city` VALUES ('299', '25', '六盘水', null, '101260801');
INSERT INTO `pcms_province_city` VALUES ('300', '25', '遵义', null, '101260201');
INSERT INTO `pcms_province_city` VALUES ('301', '25', '安顺', null, '101260301');
INSERT INTO `pcms_province_city` VALUES ('302', '25', '毕节', null, '101260701');
INSERT INTO `pcms_province_city` VALUES ('303', '25', '铜仁', null, '101260601');
INSERT INTO `pcms_province_city` VALUES ('304', '25', '黔东南苗族侗族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('305', '25', '黔南布依族苗族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('306', '25', '黔西南布依族苗族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('307', '26', '昆明', null, '101290101');
INSERT INTO `pcms_province_city` VALUES ('308', '26', '丽江', null, '101291401');
INSERT INTO `pcms_province_city` VALUES ('309', '26', '保山', null, '101290501');
INSERT INTO `pcms_province_city` VALUES ('310', '26', '楚雄彝族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('311', '26', '大理白族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('312', '26', '德宏傣族景颇族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('313', '26', '迪庆藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('314', '26', '红河哈尼族彝族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('315', '26', '临沧', null, '101291101');
INSERT INTO `pcms_province_city` VALUES ('316', '26', '怒江傈傈族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('317', '26', '曲靖', null, '101290401');
INSERT INTO `pcms_province_city` VALUES ('318', '26', '思茅', null, '101290901');
INSERT INTO `pcms_province_city` VALUES ('319', '26', '文山壮族苗族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('320', '26', '西双版纳傣族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('321', '26', '玉溪', null, '101290701');
INSERT INTO `pcms_province_city` VALUES ('322', '26', '昭通', null, '101291001');
INSERT INTO `pcms_province_city` VALUES ('323', '27', '拉萨', null, '101140101');
INSERT INTO `pcms_province_city` VALUES ('324', '27', '日喀则', null, '101140201');
INSERT INTO `pcms_province_city` VALUES ('325', '27', '阿里', null, '101140701');
INSERT INTO `pcms_province_city` VALUES ('326', '27', '昌都', null, '101140501');
INSERT INTO `pcms_province_city` VALUES ('327', '27', '林芝', null, '101140401');
INSERT INTO `pcms_province_city` VALUES ('328', '27', '那曲', null, '101140601');
INSERT INTO `pcms_province_city` VALUES ('329', '27', '山南', null, '101140301');
INSERT INTO `pcms_province_city` VALUES ('330', '28', '西安', null, '101110101');
INSERT INTO `pcms_province_city` VALUES ('331', '28', '宝鸡', null, '101110901');
INSERT INTO `pcms_province_city` VALUES ('332', '28', '咸阳', null, '101110200');
INSERT INTO `pcms_province_city` VALUES ('333', '28', '延安', null, '101110300');
INSERT INTO `pcms_province_city` VALUES ('334', '28', '榆林', null, '101110401');
INSERT INTO `pcms_province_city` VALUES ('335', '28', '安康', null, '101110701');
INSERT INTO `pcms_province_city` VALUES ('336', '28', '汉中', null, '101110801');
INSERT INTO `pcms_province_city` VALUES ('337', '28', '商洛', null, '101110601');
INSERT INTO `pcms_province_city` VALUES ('338', '28', '铜川', null, '101111001');
INSERT INTO `pcms_province_city` VALUES ('339', '28', '渭南', null, '101110501');
INSERT INTO `pcms_province_city` VALUES ('340', '29', '兰州', null, '101160101');
INSERT INTO `pcms_province_city` VALUES ('341', '29', '白银', null, '101161301');
INSERT INTO `pcms_province_city` VALUES ('342', '29', '定西', null, '101160201');
INSERT INTO `pcms_province_city` VALUES ('343', '29', '嘉峪关', null, null);
INSERT INTO `pcms_province_city` VALUES ('344', '29', '金昌', null, '101160601');
INSERT INTO `pcms_province_city` VALUES ('345', '29', '酒泉', null, '101160801');
INSERT INTO `pcms_province_city` VALUES ('346', '29', '陇南', null, null);
INSERT INTO `pcms_province_city` VALUES ('347', '29', '平凉', null, '101160301');
INSERT INTO `pcms_province_city` VALUES ('348', '29', '庆阳', null, '101160401');
INSERT INTO `pcms_province_city` VALUES ('349', '29', '天水', null, '101160901');
INSERT INTO `pcms_province_city` VALUES ('350', '29', '武威', null, '101160501');
INSERT INTO `pcms_province_city` VALUES ('351', '29', '张掖', null, '101160701');
INSERT INTO `pcms_province_city` VALUES ('352', '29', '临夏回族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('353', '29', '甘南藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('354', '30', '西宁', null, '101150101');
INSERT INTO `pcms_province_city` VALUES ('355', '30', '果洛藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('356', '30', '海北藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('357', '30', '海东', null, '101150201');
INSERT INTO `pcms_province_city` VALUES ('358', '30', '海南藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('359', '30', '海西蒙古族藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('360', '30', '黄南藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('361', '30', '玉树藏族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('362', '31', '银川', null, '101170101');
INSERT INTO `pcms_province_city` VALUES ('363', '31', '固原', null, '101170401');
INSERT INTO `pcms_province_city` VALUES ('364', '31', '石嘴山', null, '101170201');
INSERT INTO `pcms_province_city` VALUES ('365', '31', '吴忠', null, '101170301');
INSERT INTO `pcms_province_city` VALUES ('366', '32', '乌鲁木齐', null, '101130101');
INSERT INTO `pcms_province_city` VALUES ('367', '32', '吐鲁番', null, '101130501');
INSERT INTO `pcms_province_city` VALUES ('368', '32', '阿克苏', null, '101130801');
INSERT INTO `pcms_province_city` VALUES ('369', '32', '阿拉尔', null, null);
INSERT INTO `pcms_province_city` VALUES ('370', '32', '巴音郭楞蒙古自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('371', '32', '博尔塔拉蒙古自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('372', '32', '昌吉回族自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('373', '32', '哈密', null, '101131201');
INSERT INTO `pcms_province_city` VALUES ('374', '32', '和田', null, '101131301');
INSERT INTO `pcms_province_city` VALUES ('375', '32', '喀什', null, '101130901');
INSERT INTO `pcms_province_city` VALUES ('376', '32', '克拉玛依', null, '101130201');
INSERT INTO `pcms_province_city` VALUES ('377', '32', '克孜勒苏柯尔克孜自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('378', '32', '石河子', null, '101130301');
INSERT INTO `pcms_province_city` VALUES ('379', '32', '图木舒克', null, null);
INSERT INTO `pcms_province_city` VALUES ('380', '32', '五家渠', null, null);
INSERT INTO `pcms_province_city` VALUES ('381', '32', '伊犁哈萨克自治州', null, null);
INSERT INTO `pcms_province_city` VALUES ('382', '33', '香港', null, '101320101');
INSERT INTO `pcms_province_city` VALUES ('383', '34', '澳门', null, '101330101');

-- ----------------------------
-- Table structure for pcms_recruit
-- ----------------------------
DROP TABLE IF EXISTS `pcms_recruit`;
CREATE TABLE `pcms_recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `cid` int(11) DEFAULT NULL COMMENT '类型',
  `ccid` int(11) DEFAULT '0',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` tinytext COMMENT '简介',
  `tags` tinytext,
  `content` mediumtext COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(11) DEFAULT NULL COMMENT '公告过期时间',
  `click` int(11) DEFAULT '0' COMMENT '浏览次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显隐状态',
  `flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐到分类门户的页面显示',
  `audit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '突显状态/颜色',
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(255) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '图片缩略图',
  `attachment` varchar(255) DEFAULT NULL COMMENT '相关文件',
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `require` varchar(50) DEFAULT NULL COMMENT '职称要求',
  `amount` int(11) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `age` smallint(6) DEFAULT NULL,
  `age_max` smallint(6) DEFAULT NULL,
  `edu` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `requirement` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人才招聘';

-- ----------------------------
-- Records of pcms_recruit
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_recruit_apply
-- ----------------------------
DROP TABLE IF EXISTS `pcms_recruit_apply`;
CREATE TABLE `pcms_recruit_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `type_id` int(11) DEFAULT NULL COMMENT '类型',
  `recruit_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '应聘标题',
  `intro` varchar(1000) DEFAULT NULL COMMENT '简介',
  `content` mediumtext COMMENT '内容',
  `answer` mediumtext,
  `timeline_answer` int(11) DEFAULT NULL,
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expire` int(11) DEFAULT NULL COMMENT '公告过期时间',
  `solve` int(1) DEFAULT '0',
  `click` int(11) DEFAULT '0' COMMENT '浏览次数',
  `show` tinyint(4) DEFAULT '1' COMMENT '显隐状态',
  `recommend` tinyint(4) DEFAULT '0' COMMENT '推荐到分类门户的页面显示',
  `color` tinyint(4) DEFAULT '0' COMMENT '突显状态/颜色',
  `audit` tinyint(1) DEFAULT '0' COMMENT '审核状态',
  `photo` varchar(255) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '图片缩略图',
  `file` varchar(255) DEFAULT NULL COMMENT '相关文件',
  `ip` varchar(100) DEFAULT NULL,
  `ex1` varchar(255) DEFAULT '' COMMENT '其他标签（预留）',
  `ex2` varchar(255) DEFAULT '',
  `ex3` varchar(255) DEFAULT '',
  `ex4` varchar(255) DEFAULT '',
  `x` varchar(255) DEFAULT '',
  `y` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL COMMENT '部门',
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `marriage` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `wangwang` varchar(100) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL COMMENT '民族',
  `birthday` varchar(20) DEFAULT NULL,
  `politic` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `school` varchar(100) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL COMMENT '专业',
  `graduation` varchar(20) DEFAULT NULL COMMENT '毕业时间',
  `language` varchar(50) DEFAULT NULL COMMENT '外语水平',
  `position` varchar(100) DEFAULT NULL COMMENT '应聘职位',
  `age` smallint(6) DEFAULT NULL,
  `edu` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `sourcename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COMMENT='在线应聘';

-- ----------------------------
-- Records of pcms_recruit_apply
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_sessions_adminer
-- ----------------------------
DROP TABLE IF EXISTS `pcms_sessions_adminer`;
CREATE TABLE `pcms_sessions_adminer` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

-- ----------------------------
-- Records of pcms_sessions_adminer
-- ----------------------------
INSERT INTO `pcms_sessions_adminer` VALUES ('11b490af5f5628584936ea2509208921', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; Trident/7.0; rv:11.0) like Gecko', '1452596686', 'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:8:\"bocadmin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:7:\"0.0.0.0\";s:3:\"gid\";s:1:\"1\";}');
INSERT INTO `pcms_sessions_adminer` VALUES ('f8fd7fe79926327d0eab52b92acefd6d', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; Trident/7.0; rv:11.0) like Gecko', '1452596819', 'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:5:\"admin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:7:\"0.0.0.0\";s:3:\"gid\";s:1:\"1\";}');

-- ----------------------------
-- Table structure for pcms_sessions_site
-- ----------------------------
DROP TABLE IF EXISTS `pcms_sessions_site`;
CREATE TABLE `pcms_sessions_site` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

-- ----------------------------
-- Records of pcms_sessions_site
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_store
-- ----------------------------
DROP TABLE IF EXISTS `pcms_store`;
CREATE TABLE `pcms_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) DEFAULT NULL COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `cid` int(11) NOT NULL COMMENT '所属栏目 columns.id',
  `ccid` int(11) NOT NULL COMMENT '附属栏目id',
  `title` tinytext NOT NULL COMMENT '标题',
  `content` text COMMENT '详细内容',
  `url` tinytext COMMENT 'URL地址',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '缩略图',
  `show` int(1) DEFAULT '1' COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '发布日期',
  `title_seo` varchar(250) DEFAULT NULL,
  `tags` varchar(250) DEFAULT NULL,
  `intro` text,
  `addr` varchar(255) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `fox` varchar(50) DEFAULT NULL COMMENT '营业时间',
  `pointlong` varchar(50) DEFAULT NULL COMMENT '经度',
  `pointlat` varchar(50) DEFAULT NULL COMMENT '纬度',
  `maptitle` varchar(50) DEFAULT NULL COMMENT '地图标题',
  `postcode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='荣耀';

-- ----------------------------
-- Records of pcms_store
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_tags
-- ----------------------------
DROP TABLE IF EXISTS `pcms_tags`;
CREATE TABLE `pcms_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(30) NOT NULL COMMENT '标签',
  `en` varchar(60) DEFAULT NULL COMMENT '拼音|英语',
  `len` int(3) DEFAULT '0' COMMENT '长度',
  `count` int(11) DEFAULT '0' COMMENT '计数',
  `type` int(1) DEFAULT '0' COMMENT '分类,0:tags,1:title,2:intro,3:content',
  PRIMARY KEY (`id`),
  KEY `record_index` (`id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of pcms_tags
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_tags_list
-- ----------------------------
DROP TABLE IF EXISTS `pcms_tags_list`;
CREATE TABLE `pcms_tags_list` (
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT 'tag id',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT 'col id',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT 'col''s aritcle id',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '分类,0:tags,1:title,2:intro,3:content',
  `timeline` int(11) NOT NULL COMMENT '时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签使用表';

-- ----------------------------
-- Records of pcms_tags_list
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_upload
-- ----------------------------
DROP TABLE IF EXISTS `pcms_upload`;
CREATE TABLE `pcms_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `size` int(11) DEFAULT NULL COMMENT '大小',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `url` varchar(100) DEFAULT NULL COMMENT '地址',
  `thumb` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `deleteUrl` varchar(150) DEFAULT NULL COMMENT '删除',
  `alt` varbinary(30) DEFAULT NULL COMMENT '提示',
  `title` varbinary(100) DEFAULT NULL COMMENT '标题',
  `text` tinytext COMMENT '简介内容',
  `timeline` int(11) DEFAULT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=337 DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of pcms_upload
-- ----------------------------

-- ----------------------------
-- Table structure for pcms_video
-- ----------------------------
DROP TABLE IF EXISTS `pcms_video`;
CREATE TABLE `pcms_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(4) DEFAULT NULL COMMENT '栏目id',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序',
  `audit` int(1) DEFAULT '0' COMMENT '0/1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `title` tinytext COMMENT '标题',
  `title_seo` tinytext COMMENT 'seo标题',
  `intro` varchar(500) DEFAULT NULL COMMENT '简介',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `url` tinytext COMMENT '外链',
  `video` tinytext COMMENT '视频地址',
  `photo` tinytext COMMENT '封面',
  `thumb` tinytext COMMENT '封面缩略图',
  `show` int(1) DEFAULT '1' COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='视频';

-- ----------------------------
-- Records of pcms_video
-- ----------------------------
