/*
Navicat MySQL Data Transfer

Source Server         : wamp
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : pcms

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2016-01-16 21:38:34
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
  `color` int(1) NOT NULL DEFAULT '0' COMMENT '突显状态/颜色',
  `photo` tinytext COMMENT '相关图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='信息表';

-- ----------------------------
-- Records of pcms_article
-- ----------------------------
INSERT INTO `pcms_article` VALUES ('1', '18', '0', '1', '1', '0', '0', null, 'MOBA 新作《典范》（Paragon）曝光新影片 介绍新增添功能', '', '  ', '', '<p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwjfafvb5j20im0ahgll.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwjfafvb5j20im0ahgll.jpg\"/></a></p><p>Epic Games 研发的 PC/PS4 MOBA 新作《典范（暂译，Paragon）》今日释出针对 Alpha 测试新公开一波解说影片，介绍新增添的功能。</p><p>&lt;iframe src=\"http://player.youku.com/embed/XMTQ0MjgzNjE4NA==\"&gt;&lt;/iframe><p></p><p>《典范》此次在测试更新中加入了游戏内文字聊天、合作退抗 AI 等内容，研发团队希望藉此影片来让玩家快速的了解此次线上测试所增添的新功能。</p><p>《典范》是款第三人称视点的战斗竞技游戏，玩家将以塔防玩法来分队对抗。</p><p>PC/PS4《典范》正在进行 Alpha 测试，而官网也开放玩家申请 Beta 测试资格中，游戏预定 2016 年问世。</p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwjfdeg1vj21hc0u04ax.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwjfdeg1vj21hc0u04ax.jpg\"/></a></p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwjfjjkkkj21hc0u0nff.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwjfjjkkkj21hc0u0nff.jpg\"/></a></p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwjfnao1uj21hc0u0150.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwjfnao1uj21hc0u0150.jpg\"/></a></p><p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezwjfv1bxuj21hc0u07se.jpg\"><img alt=\"\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezwjfv1bxuj21hc0u07se.jpg\"/></a></p><p></p><p></p><p></p></p>', '1452828878', null, '1', null, null, null, null, '5', '0', '0', '0', '356', '2016/01/16/thumbnail/145293867712404ymr.jpg', null);
INSERT INTO `pcms_article` VALUES ('2', '18', '0', '2', '1', '0', '0', null, '俯视角度动作射击《Alienation》发售日确定', '', '  ', '', '<p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezxscr4og4j21hc0u0494.jpg\"><img alt=\"\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezxscr4og4j21hc0u0494.jpg\"/></a></p><p>Housemarque制作的PS 4独佔游戏《Alienation》到底什么时候发售，想必是很多玩家最想知道的答案。不久前，Housemarque为我们带来了确切的答案，那就是该作将于3月24日与大家见面。</p><p>&lt;iframe src=&quot;http://player.youku.com/embed/XMTQ0NDAxNTA0NA==&quot;&gt;&lt;/iframe&gt;<p></p><p>此前《Alienation》的发售日期一直被标注为3月2日，而根据Housemarque最新的推特消息，这个日期已经被推迟到3月24日了。虽然略微跳票，但好在时间并不算长，而且Housemarque也总算是给了大家一个淮信。对《Alienation》感兴趣的玩家大可以放心地期待。</p><p>《Alienation》是一款俯视角的动作射击游戏，多人联机部分将佔据很大一部分的比重。游戏中的元素极为丰富，玩家还需要收集资源，解锁能力，製作更多的强力武器。同时，团队协作也非常重要。最后一提，这款游戏为PS4独占。</p><p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezxse6igmjj218g0p0ai1.jpg\"><img alt=\"\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezxse6igmjj218g0p0ai1.jpg\"/></a></p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsdu0pk3j218g0p0ws9.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsdu0pk3j218g0p0ws9.jpg\"/></a></p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsdcony2j218g0p0amc.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsdcony2j218g0p0amc.jpg\"/></a></p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxscx78mjj218g0p0tjx.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxscx78mjj218g0p0tjx.jpg\"/></a></p><p></p><p></p><p></p><p></p></p>', '1452829677', null, '1', null, null, null, null, '24', '0', '0', '0', '355', '2016/01/16/thumbnail/14529386279288pebed.jpg', null);
INSERT INTO `pcms_article` VALUES ('3', '19', '0', '2', '1', '0', '0', null, '《国土防线2：革命》对抗北韩高科技军事力量', '', '  ', null, '<p>Deep Silver和Dambuster Studio为我们公佈了未来战争题材FPS《国土防线2：革命》的具体发售日期，该作将于5月17日发售。</p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezyyd14dqyj21hc0u0nc2.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezyyd14dqyj21hc0u0nc2.jpg\"/></a></p><p>该作将会登陆北美的PS 4，Xbox One，PC，Linux和Mac系统，欧洲等其他地区是5月20日。值得一提的是，这个发售日就是之前美国零售商Target洩露的发售日。</p><p>&lt;iframe src=\"http://player.youku.com/embed/XMTQ0NTA1NDc1Ng==\"&gt;&lt;/iframe><p></p><p>《国土防线 2》将于2月份在Xbox One独家展开封闭测试。为了参加测试，玩家需要有一个Xbox One Beta赠券。Deep Silver和Xbox在接下来的几週内会分发这些赠券。另外玩家也可以去官网注册，当分发赠券活动开始时会通知你。</p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezyychenmtj21kw10tnmg.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezyychenmtj21kw10tnmg.jpg\"/></a></p><p>《国土防线2: 革命》故事发生在2029年，是2011年1代游戏《国土防线》结束后2年。主角Ethan Brady回归，领导一个抵抗军反抗北韩对美国费城的入侵。玩家将利用游击战形式对抗北韩高科技军事力量。除了 单人剧情外，游戏还支持4人在线合作模式。尽管《国土防线》在故事上和1代有牵连，但是开发商Dambuster表示新作所有一切都是新的，这也是为什么名字中没有加入2。</p><p>《国土防线》原本2015年发售，但后来被推迟到了2016年。THQ破产后，《Crysis》开发商Crytek花了54.4万美金买下了游戏版权，不过后来Crytek由于财政危机又把游戏转手卖给了Deep Silver。在转手的过程中，游戏的开发团队也换成了新的工作室Dambuster。</p><p></p><p></p><p></p></p>', '1452925978', null, '1', null, null, null, null, '13', '0', '0', '0', '350', '2016/01/16/thumbnail/145292603836968s5n4.jpg', null);
INSERT INTO `pcms_article` VALUES ('4', '19', '0', '1', '1', '0', '0', null, '《毁灭战士 4》开场剧情与《毁灭战士3》联系', '', '  ', null, '<p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxswol7baj21040j5agc.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxswol7baj21040j5agc.jpg\"/></a></p><p>《毁灭战士 4》的最新截图，同时有消息表明游戏将在6月30日发售。现在Gameinformer为我们带来了本作的更多的新情报，让我们一起了解下吧。</p><p>BFG非常规武器，需特别按键</p><p>武器可加入Mod组合，比如将火箭筒加入遥控引爆装置</p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsx9phs1j20zk0l9tfz.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsx9phs1j20zk0l9tfz.jpg\"/></a></p><p>开场剧情与《毁灭战士&nbsp;3》联系，一位Olivia Pierce博士通过视频信息称其放出恶魔</p><p>同屏敌人提升</p><p>带色钥匙卡可解锁隐藏秘密</p><p>角色升级包括换枪速度，HP，弹夹容量</p><p>符文系统，一些符文技能比如近战之后角色加速</p><p>怪物包含弱点，比如粉色恶魔前面全副武装，后面为弱点</p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxswth39kj20zk0l3thr.jpg\"><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxswth39kj20zk0l3thr.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxswth39kj20zk0l3thr.jpg\"/></a></a></p><p>一个被描述为召唤者的恶魔种类</p><p>新作采用id Tech 6引擎同5代相同，但包含全新的物理基础渲染系统</p><p>“敌对”多人模式，统治风格模式，包括随意漂浮的控制地带</p><p>团队竞技场模式，经典大乱斗模式，各自为战</p><p>多人模式比单人模式的枪械更多，比如“闪电枪”</p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxsx2a0omj20zk0l9jz1.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxsx2a0omj20zk0l9jz1.jpg\"/></a></p><p>通过自定义工具SnapMap打造众多模式，比如塔防，模组化单机任务，VIP护卫任务</p><p>可Mod敌人AI系统</p><p>SnapMap工具的素材将通过名为SmartHub系统发布</p><p>所有SnapMap创造的内容均为小型的指令文件</p><p>《毁灭战士&nbsp;4》将登陆Xbox One，PS 4，PC平台，敬请期待。</p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsx6fnvej20zk0l77bf.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsx6fnvej20zk0l77bf.jpg\"/></a></p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsx4oaydj20zk0l4gr8.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxsx4oaydj20zk0l4gr8.jpg\"/></a></p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxswy4ogfj20zk0l80zk.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezxswy4ogfj20zk0l80zk.jpg\"/></a></p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxswvtmwsj20zk0l9475.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxswvtmwsj20zk0l9475.jpg\"/></a></p><p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezxswr1imgj20zk0l4tgp.jpg\"><img alt=\"\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezxswr1imgj20zk0l4tgp.jpg\"/></a></p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxswth39kj20zk0l3thr.jpg\"><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxswth39kj20zk0l3thr.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezxswth39kj20zk0l3thr.jpg\"/></a></a></p><p></p>', '1452926125', null, '1', null, null, null, null, '21', '0', '0', '0', '352', '2016/01/16/thumbnail/14529261856319ki2l6.jpg', null);
INSERT INTO `pcms_article` VALUES ('5', '20', '0', '3', '1', '0', '0', null, '《最终幻想 15》有两种战斗模式可选择', '', '  ', null, '<p><a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezxrrzzo8nj20zk0k0ahf.jpg\"><img width=\"765\" height=\"430\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezxrrzzo8nj20zk0k0ahf.jpg\"/></a></p><p>《最终幻想 15》Altissia城的相关消息，并称该作将拥有两种战斗模式。好了，下面一起来看看吧。</p><p>“Altissia城内拥有不少区域，连咖啡馆，市场或者公园都有好几家。城市的规模也相当大，大到我们这些製作人有时都会迷路，”製作人Ishikawa Tomonori介绍道，“玩家可以自由在城中游览，逛逛街，体验一下这座城市的不同区域。如果你愿意的话，还可以去餐厅裡面发掘一下新乐子。此外，在游览这座城市的时候玩家还可以遇到一些相当独特的角色。”</p><p>说完了Altissia城还有战斗模式方面的新消息。“《最终幻想 15》拥有两种战斗模式，之所以这么做也是希望这款游戏能满足不同玩家的需求，毕竟有些人喜欢动作感，有的玩家则更偏爱慢节奏的战斗。这种战斗模式调整机制也是我们根据玩家反馈对游戏做出的调整。在不久后我们也会对这些内容发佈更多的细节。”</p><p>另一位製作人还为我们介绍了《最终幻想&nbsp;15》中的扭曲能力。“扭曲能力可以让玩家瞬间传送到极高的位置上，而这一功能对于《最终幻想 15》的战斗系统来说也是相当重要的。在城市区域巧妙利用多个扭曲点来进行传送对于一场战斗来说也格外重要。但适合使用扭曲能力的并非只有城市，我们专门为玩家打造了飞行的敌人甚至是大Boss，玩家还可以期待一下《最终幻想&nbsp;15》中的空中战斗。”</p><p></p>', '1452926806', null, '1', null, null, null, null, '15', '0', '0', '0', '353', '2016/01/16/thumbnail/14529268229936zmf3y.jpg', null);
INSERT INTO `pcms_article` VALUES ('6', '20', '0', '4', '1', '0', '0', null, 'KONAMI 宣布美国时间 12 日展开《合金装备 Online》PC 版本 Beta 测试', '', '  ', null, '<p>KONAMI 宣布，《合金装备 5：幻痛（METAL GEAR SOLID V: THE PHANTOM PAIN）》的网路多人游玩模式《合金装备 Online（METAL GEAR ONLINE）》PC 版本 Beta 测试将于美国太平洋时间 1 月 12 日晚间 10 时起展开。</p><p>KONAMI 去年推出家用主机版本的《合金装备 Online》，但当时宣布 PC 版本将延迟到 2016 年 1 月推出，今日 KONAMI 透过《合金装备 5：幻痛》Steam 网页上，宣布了 PC 版本 Beta 测试的时程。</p><p><strong>以下为 KONAMI 去年东京电玩展公开的《合金装备 Online》介绍影片：</strong></p><p></p>', '1452926827', null, '1', null, null, null, null, '15', '0', '0', '0', '354', '2016/01/16/thumbnail/145292686107711354r.jpg', null);
INSERT INTO `pcms_article` VALUES ('7', '19', '0', '5', '1', '0', '0', null, '德雷克可能以死来完结《神秘海域 4》的故事', '', '  ', null, '<p><a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezxrnz6t1oj21hc0u0te6.jpg\"><img width=\"765\" height=\"430\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezxrnz6t1oj21hc0u0te6.jpg\"/></a></p><p>在Naughty Dog开发人员Druckmann在接受《太阳报》的採访时表示，《神秘海域 4》作为《神秘海域》系列最后一部压轴之作，也意味著德雷克时代的终结，顽皮狗将以最高的标淮完成他的故事。</p><p>他说：“随著故事的结束，要继续以他为主角推出续作实在太难了。可能会有一个前传，也有可能将来会换人。我不知道。但是《神秘海域&nbsp;4》将是德雷克的终结。对于这个角色我们已经开发了很长时间，他在游戏界的人气也是相当高，所以说我们的决定从商业角度看并不好。但是我认为尊敬他最好的方式就是继续以最高的标淮完成他的故事。”</p><p>《神秘海域&nbsp;4》除了单人模式外，还支持多人模式，加入了许多新的特性，包括AI队友，对抗敌人的神秘元素。多人模式支持900P/60 FPS，单人模式是1080P/30F PS。</p><p>《神秘海域&nbsp;4》德雷克是否会死，现在谁也不知道，毕竟游戏没发售，以上只是PSU的猜测。如果Naughty Dog这么安排，粉丝们能接受吗？</p><p>除了 《神秘海域》外，顽皮狗在本世代至少还会开发2个PS4独佔游戏，其中一个是《最后生还者 2》。</p><p></p>', '1452938760', null, '1', null, null, null, null, '2', '0', '0', '0', '357', '2016/01/16/thumbnail/14529387854411bc6kz.jpg', null);
INSERT INTO `pcms_article` VALUES ('8', '19', '0', '6', '1', '0', '0', null, '来下载《GTA 5》MOD玩《看门狗', '', '  ', null, '<p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwkcsu0hwj20gi08mjsu.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezwkcsu0hwj20gi08mjsu.jpg\"/></a></p><p>如果说之前有什么《GTA 5》MOD被称为过“神级MOD”的话，那它摆在这款MOD前面一定会黯然失色。因为这才是一个里程碑式的MOD，它让你真的感觉在玩另一款游戏。</p><p>一个名为“JulioNIB”的MOD的製作人将《看门狗》的黑客元素完全的移植到了《GTA 5》当中。</p><p><strong>&lt;---相关视频上传中</strong></p><p>你能够像在《看门狗》一样，黑进汽车防盗系统进行盗车、让ATM机不停吐钱、控制街边的摄像头和街上的路障，你甚至还可以让整座城市停电。这些让你相信它压根就是用《GTA 5》引擎做的一款《看门狗》！</p><p>如果你是PC版玩家的话，你也可以下载并亲身体验一下这款mod再聊聊你的感受。</p><p><strong>安装方法</strong></p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezwo8m6lluj215o1smtrk.jpg\"><img width=\"1105\" height=\"1713\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezwo8m6lluj215o1smtrk.jpg\"/></a></p><p></p>', '1452938802', null, '1', null, null, null, null, '2', '0', '0', '0', '359', '2016/01/16/thumbnail/14529388299734d7ue7.jpg', null);
INSERT INTO `pcms_article` VALUES ('9', '19', '0', '7', '1', '0', '0', null, '《战争机器 4》今秋发售 依然有分屏功能', '', '  ', null, '<p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezwjzcq6daj21kw0w0gp5.jpg\"><img alt=\"\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezwjzcq6daj21kw0w0gp5.jpg\"/></a></p><p>《光环 5》已于去年正式推出，这一Xbox招牌射击游戏不负众望带来了精彩的表现。而除了这款游戏，相信Xbox玩家们最期待的便是《战争机器 4》了。而在昨天进行的直播中，《战争机器 4》的製作人Rod Fergusson就确认，本作要比预期时间更早发售，将在2016年秋季上市。</p><p>在2015年的E3会展上，微软公佈《战争机器 4》将于2016年假期推出，当时许多人都认为这一时间应该是指2016年的圣诞节。不过现在看来玩家们至少不用再等到年底才能玩到这款次世代的射击游戏了。</p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezwjzfjt2rj21hc0u07af.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezwjzfjt2rj21hc0u07af.jpg\"/></a></p><p>《战争机器 4》游戏首次採用全新形象的主角，主角不再是马库斯以及多姆，而是一个奶油帅哥一个妹子，而这一改动引发了许多争议。相较于前作，《战争机器 4》更加具有恐怖的气氛，甚至令人感觉有些类似《Dead Space》。此外，不久前官方确认《战争机器 4》将会继续加入分屏游戏功能，这一消息对于喜爱老游戏的玩家们来说这个消息简直不能再好了。</p><p>《战争机器 4》由The Coalition工作室开发，微软发行，预计将于2016年秋季正式推出，独占Xbox One平台，敬请期待。</p><p></p>', '1452938842', null, '1', null, null, null, null, '3', '0', '0', '0', '360', '2016/01/16/thumbnail/14529388595102kgnbu.jpg', null);
INSERT INTO `pcms_article` VALUES ('10', '19', '0', '8', '1', '0', '0', null, 'CAPCOM 公司将公布两部《生化危机》作品', '', '  ', null, '<p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezvgu6kazpj21hc0u0gwi.jpg\"><img width=\"765\" height=\"430\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezvgu6kazpj21hc0u0gwi.jpg\"/></a></p><p>源引middleofnowheregaming的消息，根据一名自称是开发者的说法，CAPCOM公司将会公佈两部新作品，其一就是基本得到确认的《生化危机 6》次世代版，其二就是《生化危机：Outbreak》HD！</p><p>据这位不愿意透露姓名的开发者介绍，他本人在加拿大的一家独立工作室任职，而在签署相关文件时，他偶然间看到了《生化危机6》的登陆次世代主机的条款。此外他本人也参与了游戏的製作，所以他非常确信这就是《生化危机 6》</p><p>而另一款游戏《生化危机：Outbreak》HD则更显戏剧性。据曝光者透露，当时他所在的工作室正在开发一款类似《生化危机：爆发》姊妹篇的独立游戏，随后他们在2015年3月份将其寄给了CAPCOM。而CAPCOM在收到游戏后非常感动，不过这款游戏最后并没有登陆Steam青睐之光。</p><p>而到了6月份，CAPCOM正式邀请曝光者所在的工作室接下开发《生化危机：Outbreak》HD的工作，这便是事情的来龙去脉。</p><p>此外，曝光者还透露，合同中要求的最晚製作完成日期为2016年5月，所以预计《生化危机：Outbreak》HD会在2016年的E3上公佈。</p><p>虽然目前只有曝光者口述的情报，但考虑到卡普空的开发政策和不久前已经曝光的次世代版《生化危机6》，这一切还是值得一信的。而如果这些信息都属实，那么实在是为卡普空在炒冷饭道路上又添砖加瓦了一次，让我们拭目以待。</p><p>《生化危机：爆发》是一款《生化危机》系列外传性质作品，与正传各种大英雄冒险的剧情不同，本作描写了一群普通人逃离浣熊市的恐怖经历，所以对比起来《Outbreak》更加具有生存的压迫力。而这款游戏除了单机游戏外还支持在线联机游戏，与大家熟知的《Left 4 Dead》有些类似。</p><p></p>', '1452938873', null, '1', null, null, null, null, '2', '0', '0', '0', '361', '2016/01/16/thumbnail/14529389038349nbb52.jpg', null);
INSERT INTO `pcms_article` VALUES ('11', '19', '0', '9', '1', '0', '0', null, '《苏菲的炼金工房～不可思议书的炼金术士～》中文版预定 2 月 2 日推出', '', '  ', null, '<p>光荣特库摩日前宣布，《炼金术士》系列最新作 PS4 / PS Vita 角色扮演游戏《苏菲的炼金工房 ～不可思议书的炼金术士～》中文版将于 2 月 2 日推出，同时公布了中文游戏画面。</p><p><a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezuh0wlkb4j20rh0brjvz.jpg\"><img alt=\"\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezuh0wlkb4j20rh0brjvz.jpg\"/></a></p><h3>游戏介绍</h3><p>&lt;iframe src=\"http://player.youku.com/embed/XMTM3OTgwNzI2MA==\"&gt;&lt;/iframe><p></p><p>《苏菲的炼金工房 ～不可思议书的炼金术士～》是诞生许多《炼金术士》系列名作的 GUST 不断思考著要如何突破及创新「要怎么做，才能变得更有趣呢？」的答案。</p><p>那就是「回归炼金术的初衷」。炼金术是仔细听取物质的真实心声，实现物质心愿，替它们创造塑型的技术。</p><p>本作的目的在于，苏菲藉由发挥强大的炼金术力量，帮助失去大半记忆的普拉芙妲。利用炼金术，不断将新配方写入普拉芙妲当中，逐渐解开炼金术的记忆与普拉芙妲的记忆。初出茅庐的炼金术士新手－苏菲恢复炼金术记忆的旅程就此揭开序幕。</p><p>以最新《炼金术士》标淮为目标，全心打造回归初衷的《苏菲的炼金工房》起用 2 位插画巨匠－NOCO 与 Yuugen，随时间流逝瞬息万变的世界表现、以炼金术为中心发展的系统等等，至今未曾出现于游戏内的新设定、未曾挑战过的新尝试，这次都大胆导入游戏内。崭新的冒险，在此启程。</p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezuh0vk0r1j21hc0u07mn.jpg\"><img width=\"48%\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezuh0vk0r1j21hc0u07mn.jpg\"/></a>&nbsp;&nbsp;<a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezuh0s0ddxj21hc0u07os.jpg\"><img width=\"48%\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezuh0s0ddxj21hc0u07os.jpg\"/></a></p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezuh0nsfsbj21hc0u0dxn.jpg\"><img width=\"48%\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezuh0nsfsbj21hc0u0dxn.jpg\"/></a>&nbsp;&nbsp;<a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezuh0jq08dj21hc0u0h2l.jpg\"><img width=\"48%\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezuh0jq08dj21hc0u0h2l.jpg\"/></a></p><p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezuh0gi3mnj21hc0u0h65.jpg\"><img width=\"48%\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezuh0gi3mnj21hc0u0h65.jpg\"/></a>&nbsp;&nbsp;<a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezuh0cxna7j21hc0u0tmc.jpg\"><img width=\"48%\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezuh0cxna7j21hc0u0tmc.jpg\"/></a></p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezuh09qpqmj21hc0u0aun.jpg\"><img width=\"48%\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezuh09qpqmj21hc0u0aun.jpg\"/></a>&nbsp;&nbsp;<a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezuh05pdjmj21hc0u0tvw.jpg\"><img width=\"48%\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezuh05pdjmj21hc0u0tvw.jpg\"/></a></p><p>中文版预定同步推出一般版、附有 5 项特典的「特典版」以及超豪华组合的「典藏版」。其中「典藏版」为「特典版」内容物加上特大水晶纸镇与特制水晶钥匙圈的超豪华组合。</p><h3>一般版 产品内容</h3><p>产品名称：《苏菲的炼金工房 ～不可思议书的炼金术士～》中文版</p><p>对应主机：PlayStation 4／PlayStation Vita</p><p>游戏类型：錬金术重生 RPG</p><p>发售日期：2016 年 2 月 2 日发售预定</p><p>建议售价：PS4 版 1680 元 &nbsp;/ &nbsp;PS Vita 版 1380 元</p><p>游戏分级：辅 12 级</p><p><strong>首批特典</strong></p><p>苏菲的炼金工房 下载序号 珍藏包内容</p><p>普拉芙妲人偶炼成服装下载序号（※）</p><p>特别 BGM 包 下载序号</p><p>「炼金工房」系列历代錬金术士主题下载序号</p><h6>※ 开放可藉由人偶炼成用的普拉芙妲的服装。</h6><p>官方网站：<a href=\"http://www.gamecity.com.tw/sophie/\">http://www.gamecity.com.tw/sophie/</a></p><p>版权标示：© 2015-2016 KOEI TECMO GAMES CO., LTD. All rights reserved.</p><h3>特典版 产品内容</h3><p>产品名称：《苏菲的炼金工房 ～不可思议书的炼金术士～》中文版 特典版</p><p>发售日期：2016 年 2 月 2 日发售预定</p><p>建议售价：PS4 特典版 2380 元 &nbsp;/ &nbsp;PS Vita 特典版 2180 元</p><p><strong>产品内容</strong></p><p>游戏软体</p><p>苏菲的炼金工房美术资料集</p><p>苏菲的炼金工房典藏音乐</p><p>特制 B3 布制海报</p><p>透明人物书籤组</p><p>游戏内道具 5 种组合下载序号（DLC）（※）</p><h6>※ 1 个下载序号可以于 PS4 版 / PS Vita 版用 3 项道具的 5 种组合。各道具的 5 种组合之内容物各异。</h6><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezuh0x8oiqj20ku0bqjuo.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezuh0x8oiqj20ku0bqjuo.jpg\"/></a></p><p>特典版</p><h3>典藏版 产品内容</h3><p>产品名称:《苏菲的炼金工房 ～不可思议书的炼金术士～》中文版 典藏版</p><p>发售日期：2016 年 2 月 2 日发售预定</p><p>建议售价：PS4 典藏版 3880 元 &nbsp;/ &nbsp;PS Vita 典藏版 3680 元</p><p><strong>产品内容</strong></p><p>游戏软体</p><p>特大水晶纸镇</p><p>特制水晶钥匙圈</p><p>苏菲的炼金工房美术资料集</p><p>苏菲的炼金工房典藏音乐</p><p>特制 B3 布制海报</p><p>透明人物书籤组</p><p>游戏内道具 5 种组合下载序号（DLC）（※）</p><p>※ 1 个下载序号可以于 PS4 版 / PS Vita 版用 3 项道具的 5 种组合。各道具的 5 种组合之内容物各异。</p><p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1exs9n8u1d7j20ci071mxi.jpg\"><img width=\"48%\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1exs9n8u1d7j20ci071mxi.jpg\"/></a>&nbsp;&nbsp;<a href=\"http://ww2.sinaimg.cn/large/c8363850gw1exs9n9esonj20ci071gmc.jpg\"><img width=\"48%\" style=\"color: rgb(34, 34, 34);\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1exs9n9esonj20ci071gmc.jpg\"/></a></p><p>特大水晶纸镇/特制水晶钥匙圈</p><p></p><p></p><p></p></p>', '1452938908', null, '1', null, null, null, null, '1', '0', '0', '0', '363', '2016/01/16/thumbnail/1452938968487325uur.jpg', null);
INSERT INTO `pcms_article` VALUES ('12', '19', '0', '10', '1', '0', '0', null, '《地狱之刃》确认年内发售', '', '  ', null, '<p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezryqw44ihj20zk0k03zj.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezryqw44ihj20zk0k03zj.jpg\"/></a></p><p>《DmC:鬼泣》和《奴役:西游记》背后的工作室Ninja Theory今日在Twitter上确认，他们的新作《地狱之刃》将于2016年内发售。此外他们还提到PC和PS4版会同步上市，而不是PS4限时独占。</p><p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezryqv3vx5j21kw0zkguo.jpg\"><img alt=\"\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezryqv3vx5j21kw0zkguo.jpg\"/></a></p><p>这家坐落在英国剑桥的著名动作游戏工作室，完成了Capcom的《DmC:&nbsp;鬼泣》之后带来了新的动作游戏《地狱之刃》。本作采用Unreal Engine 4开发，Ninja Theory强调这是一个独立3A游戏游戏。</p><p><a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezryqtocfij21kw0x0gtc.jpg\"><img alt=\"\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezryqtocfij21kw0x0gtc.jpg\"/></a></p><p>本作的主角，Senua在“地狱般”的世界中开启了一段个人旅程，所谓地狱般的世界其实是Senua精神错乱的一个表现，本作的核心主题将聚焦精神病人的精神折磨和苦痛，Ninja Theory使用游戏方式来表现现实世界中一个比较严肃的话题。</p><p>当然由于Ninja Theory动作游戏起家，新作《地狱之刃》毫无疑问将少不了大量动作战斗。</p><p></p><p></p><p></p>', '1452939001', null, '1', null, null, null, null, '1', '0', '0', '0', '364', '2016/01/16/thumbnail/14529390358004wxcns.jpg', null);
INSERT INTO `pcms_article` VALUES ('13', '19', '0', '11', '1', '0', '0', null, '《逃生2》（OutLast ）内比前作更大更多', '', '  ', null, '<p>曾经吓坏了无数玩家的《逃生》续集将会在2016年秋季再次掀起恐怖狂潮，游戏在2015年10月底公布后，也许久没有新消息了，近日开发商Red Barrels Games终于披露了《逃生 2 》的最新的截图，即将再度吓到你汗毛直立。</p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezqwr3j4toj20zk0k00tk.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezqwr3j4toj20zk0k00tk.jpg\"/></a></p><p>《逃生2》以逆之十字架的“神之信仰”为主题，在Polygon的“2016年恐怖游戏一览”中曝光了这张新的截图，目前游戏细节尚未公布，不过已经可以从这张首先曝光的截图中看到，一位手持十字架武器的神秘人和一位酷似农夫的角色，相信《逃生 2》的更多情报也会在不日公佈。</p><p><a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezqwr2rs6jj20rs0gogq9.jpg\"><img alt=\"\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezqwr2rs6jj20rs0gogq9.jpg\"/></a></p><p>《逃生 2》预计2016年秋季登录PS 4、Xbox One以及PC平台。</p><p></p>', '1452939045', null, '1', null, null, null, null, '1', '0', '0', '0', '365', '2016/01/16/thumbnail/14529390839886so0qs.jpg', null);
INSERT INTO `pcms_article` VALUES ('14', '19', '0', '12', '1', '0', '0', null, '《孤岛惊魂:原始杀戮》原始人所讲的语言将是几千年前的语言', '', '  ', null, '<p>《孤岛惊魂:原始杀戮》被ESRB评为了M级18禁，而这是由于游戏包含很多诸如血腥暴力和裸体等元素。从这方面可以看出，育碧希望给《原始杀戮》带来更加真实的体验。</p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezpp91uq3xj21hc0u011g.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezpp91uq3xj21hc0u011g.jpg\"/></a></p><p>而实际上，除了大家能看到的真实细节外，你所“听到”的东西也会无比真实，近日育碧就透露：《原始杀戮》中原始人所讲的语言将真实还原几千年前的语言环境。</p><p><a href=\"http://ww2.sinaimg.cn/large/c8363850gw1ezpp8zxalaj20zk0k0n55.jpg\"><img alt=\"\" src=\"http://ww2.sinaimg.cn/large/c8363850gw1ezpp8zxalaj20zk0k0n55.jpg\"/></a></p><p>在开发的早期阶段，育碧考虑到《原始杀戮》发生的年代是在石器时代，而如果在游戏中让所有人都讲英语的话，违和感必然非常强烈，所以为了尽可能还原原始社会的真实生活，就必须研究出当时人类所讲的语言。</p><p>为此育碧专门邀请了人类学家和语言学家参与游戏的开发，创造出了“原始欧罗巴语”的设定，然而育碧觉得这还是不够，因为游戏中的原始社会的语言结构比这个还要更加简单而原始。</p><p><a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezpp8xkadbj215o0ngqk2.jpg\"><img alt=\"\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezpp8xkadbj215o0ngqk2.jpg\"/></a></p><p>最终，语言学家与育碧继续进行努力，对游戏中的语言进行更多的简化。最后就创造了wenja语（wenja是游戏中的主要部落），而wenja语在游戏中还拥有三个变种，以适应不同的部落。</p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezpp8ylt8wj20zk0k0jv2.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezpp8ylt8wj20zk0k0jv2.jpg\"/></a></p><p>创意总监Jean-Christophe Guyot表示：“与语言学家们合作的过程非常愉快。他们对于这项工程感到非常激动，因为这是头一次复活一种几千年前的人类语言，对他们来说这具有非凡的科学意义，也是他们所嚮往的。”</p><p><a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezpp8ulvapj20xc0jgtim.jpg\"><img alt=\"\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezpp8ulvapj20xc0jgtim.jpg\"/></a></p><p>《孤岛惊魂:原始杀戮》将于今年3月份推出，登陆PC/PS4/Xbox One 平台。</p><p></p>', '1452939416', null, '1', null, null, null, null, '1', '0', '0', '0', '366', '2016/01/16/thumbnail/14529394605445kh9iw.jpg', null);
INSERT INTO `pcms_article` VALUES ('15', '19', '0', '13', '1', '0', '0', null, '白金工作室表示 Xbox One 独占全新动作游戏《龙鳞化身》将延期至 2017 年上市', '', '  ', null, '<p>根据白金工作室官方BLOG的发言，同公司开发的 Xbox One《龙鳞化身（Scalebound）》将延期至 2017 年发售。</p><p><a href=\"http://ww1.sinaimg.cn/large/c8363850gw1ezpmu9hgjej20zk0jgn8q.jpg\"><img alt=\"\" src=\"http://ww1.sinaimg.cn/large/c8363850gw1ezpmu9hgjej20zk0jgn8q.jpg\"/></a></p><p>《龙鳞化身》是一款于 Xbox One 独佔推出的全新动作游戏，在 2014 年的美国 E3 电玩展首度曝光。游戏中将登场形状和类型都各异的各种巨型怪兽，玩家所扮演的主角将要和身为伙伴的飞龙搭档战斗，在壮阔的场景中打倒敌对的巨大魔兽。</p><p><a href=\"http://ww4.sinaimg.cn/large/c8363850gw1ezpmuca8ufj20zk0m8ah7.jpg\"><img alt=\"\" src=\"http://ww4.sinaimg.cn/large/c8363850gw1ezpmuca8ufj20zk0m8ah7.jpg\"/></a></p><p>白金工作室同时在部落格表示《龙鳞化身》将是他们至今以来最大规模的游戏，他们将打造融合壮大美丽的幻想世界、自由的探险、崭新的多人游玩模式和充满动作性的战斗。</p><p><a href=\"http://ww3.sinaimg.cn/large/c8363850gw1ezpmuavdfdj20zk0m8jyc.jpg\"><img alt=\"\" src=\"http://ww3.sinaimg.cn/large/c8363850gw1ezpmuavdfdj20zk0m8jyc.jpg\"/></a></p><p>而对于要呈现上述内容的游戏完成度，他们需要更多的时间来满足这个充满野心的企划，所以决定将延期至 2017 年上市。目前开发状况渐入佳境，白金工作室也认为这款游戏为他们带来很多的新刺激和体验。未来他们将会持续释出本作的情报，有兴趣的玩家不妨持续追踪《龙鳞化身》的动向。</p><p></p>', '1452939465', null, '1', null, null, null, null, '13', '0', '0', '0', '367', '2016/01/16/thumbnail/145293954080793fonv.jpg', null);

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
-- Table structure for pcms_cases
-- ----------------------------
DROP TABLE IF EXISTS `pcms_cases`;
CREATE TABLE `pcms_cases` (
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
  `color` int(1) NOT NULL DEFAULT '0' COMMENT '突显状态/颜色',
  `photo` tinytext COMMENT '相关图片',
  `thumb` tinytext COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='信息表';

-- ----------------------------
-- Records of pcms_cases
-- ----------------------------
INSERT INTO `pcms_cases` VALUES ('1', '21', '0', '1', '1', '0', '21', null, '灰色与薄荷色公寓', '', '  ', '', '<p>这间位于波兰的公寓将灰色与薄荷色搭配</p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103814_26482.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103814_15303.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103814_27814.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_42231.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_55285.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_48507.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_63791.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_50553.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_22057.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_92183.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_22236.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_66565.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_96539.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_96616.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_43565.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160111/20160111103815_57573.jpg\"/></p><p></p>', '1452948842', null, '1', null, null, null, null, '0', '0', '0', '0', '368', '2016/01/16/thumbnail/14529488775218lpk32.jpg', null);
INSERT INTO `pcms_cases` VALUES ('2', '21', '0', '2', '1', '0', '22', null, '柏林田园风格小公寓', '', '  ', '', '<p>位于柏林的小公寓，自然元素、田园风格是公寓的亮点。</p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103520_66431.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103520_69059.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103520_94602.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103520_47661.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103520_89378.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103520_76470.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103521_15432.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103521_42733.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103521_37012.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103521_36564.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103522_59699.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20160107/20160107103522_36575.jpg\"/></p><p></p>', '1452949668', null, '1', null, null, null, null, '0', '0', '0', '0', '370', '2016/01/16/thumbnail/145294983441451ll7s.jpg', null);
INSERT INTO `pcms_cases` VALUES ('3', '22', '0', '3', '1', '0', '27', null, '复古工业风格阁楼设计', '', '  ', null, '<p>伦敦1200平方英尺的空间，混凝土天花板营造出工业风格。厨房的复古蓝白瓷砖和浴室的黄白图案瓷砖、加上古典气息的雕塑和吊灯，让工业风格的简洁中又增加了古典的内涵。</p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144525_24051.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144526_54706.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144526_96146.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144527_38591.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144527_78098.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144528_63863.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144529_72608.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144547_59064.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144547_91496.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144547_50783.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20151117/20151117144633_44205.jpg\"/></p><p></p>', '1452949920', null, '1', null, null, null, null, '0', '0', '0', '0', '372', '2016/01/16/thumbnail/14529499479518c6ryg.jpg', null);
INSERT INTO `pcms_cases` VALUES ('4', '23', '0', '4', '1', '0', '21', null, '专业铲屎官的家', '', '  ', null, '<p>装修新居时考虑过你家猫的感受吗？考虑过它们随时监督铲屎官的需求吗？考虑过客人到访时它们对隐蔽又安全的观测位置的需求吗？…… 看看别人家的铲屎官是怎么做的——一套暗藏玄机的北欧风格公寓。</p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150728/20150728131946_95553.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150728/20150728131947_76851.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150728/20150728131947_47183.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150728/20150728131948_11128.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150728/20150728131948_57628.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150728/20150728131949_27731.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150728/20150728131949_30879.jpg\"/></p><p></p>', '1452950050', null, '1', null, null, null, null, '0', '0', '0', '0', '373', '2016/01/16/thumbnail/14529501375177kad71.jpg', null);
INSERT INTO `pcms_cases` VALUES ('5', '24', '0', '5', '1', '0', '25', null, '低调奢华的男性公寓', '', '  ', null, '<p>简约风格低调奢华的男性公寓，非常合适都市中的成功男性</p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085849_41797.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085849_42294.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085849_65892.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085849_56799.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085849_86549.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085849_27655.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085849_98011.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085850_83929.jpg\"/></p><p></p><p><img alt=\"\" src=\"http://www.yisheji.com/admin/plugin/kindeditor/attached/image/20150423/20150423085850_80282.jpg\"/></p><p></p>', '1452950145', null, '1', null, null, null, null, '0', '0', '0', '0', '374', '2016/01/16/thumbnail/14529501719361kf4df.jpg', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcms_coltypes
-- ----------------------------
INSERT INTO `pcms_coltypes` VALUES ('20', '1', '0', '0', '4', 'ctype', '设计风格', '', '', '', '1', '');
INSERT INTO `pcms_coltypes` VALUES ('21', '2', '20', '1', '4', 'ctype', '北欧', '', '', '', '1', '');
INSERT INTO `pcms_coltypes` VALUES ('22', '3', '20', '1', '4', 'ctype', '田园', '', '', '', '1', '');
INSERT INTO `pcms_coltypes` VALUES ('23', '4', '20', '1', '4', 'ctype', '法式', '', '', '', '1', '');
INSERT INTO `pcms_coltypes` VALUES ('24', '5', '20', '1', '4', 'ctype', '混搭', '', '', '', '1', '');
INSERT INTO `pcms_coltypes` VALUES ('25', '6', '20', '1', '4', 'ctype', '现代', '', '', '', '1', '');
INSERT INTO `pcms_coltypes` VALUES ('26', '7', '20', '1', '4', 'ctype', '新古典', '', '', '', '1', '');
INSERT INTO `pcms_coltypes` VALUES ('27', '8', '20', '1', '4', 'ctype', '其他', '', '', '', '1', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='栏目';

-- ----------------------------
-- Records of pcms_columns
-- ----------------------------
INSERT INTO `pcms_columns` VALUES ('1', '1', '0', '0', 'home', '/home', '站点首页', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('2', '5', '0', '0', 'company', '/company', '公司简介', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('3', '11', '0', '0', 'decoration', '/decoration', '装修知识', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('4', '12', '0', '0', 'cases', '/cases', '案例展示', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('5', '13', '0', '0', 'service', '/service', '公司服务', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('6', '14', '0', '0', 'guarantee', '/guarantee', '环保保障', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('7', '15', '0', '0', 'design', '/design', '设计理念', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('8', '16', '0', '0', 'recruit', '/recruit', '招贤纳士', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('9', '17', '0', '0', 'contact', '/contact', '联系我们', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('10', '2', '1', '1', 'banner', 'home/banner', 'banner', '', '', '', '5', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('11', '3', '1', '1', 'sidebar', 'home/sidebar', '联系方式', '', '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('12', '4', '1', '1', 'links', 'home/links', '友情链接', '', '', '', '4', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('13', '6', '2', '1', 'company', 'company/company', '公司简介', null, '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('14', '8', '2', '1', 'management', 'company/management', '经营理念', null, '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('15', '9', '2', '1', 'edge', 'company/edge', '企业锋芒', null, '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('16', '10', '2', '1', 'culture', 'company/culture', '公司文化', null, '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('17', '7', '2', '1', 'aboutus', 'company/aboutus', '关于我们', null, '', '', '1', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('18', '18', '3', '1', 'decoration', 'decoration/decoration', '装修知识', '', '', '', '2', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('19', '19', '3', '1', 'designguide', 'decoration/designguide', '设计指南', '', '', '', '2', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('20', '20', '3', '1', 'terrainguide', 'decoration/terrainguide', '风水指南', '', '', '', '2', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('21', '21', '4', '1', 'cases', 'cases/case', '案例展示', '', '', '', '8', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('22', '22', '4', '1', 'homecase', 'cases/homecase', '家装案例', '', '', '', '8', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('23', '23', '4', '1', 'workcase', 'cases/workcase', '办公案例', '', '', '', '8', '', '', '1', '1');
INSERT INTO `pcms_columns` VALUES ('24', '24', '4', '1', 'exclusivecase', 'cases/exclusivecase', '专卖店案例', '', '', '', '8', '', '', '1', '1');

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
INSERT INTO `pcms_configs` VALUES ('5', '5', 'site', 'title_seo', 'xx公司', '首页标题[Title]', '网站首页优化标题');
INSERT INTO `pcms_configs` VALUES ('6', '6', 'site', 'tags', '关键词', '关键词[Keywords]', '网站首页关键词设定，使用`,`来间隔标签.');
INSERT INTO `pcms_configs` VALUES ('7', '7', 'site', 'intro', '站点描述', '站点描述[Description]', '网站首页描述');
INSERT INTO `pcms_configs` VALUES ('8', '10', 'site', 'icp', 'ICP', 'ICP编号', '');
INSERT INTO `pcms_configs` VALUES ('9', '9', 'adminer', 'rember_hours', '72', '记住登录', '记住登录的时间，默认单位为小时。');
INSERT INTO `pcms_configs` VALUES ('15', '10', 'adminer', 'nopurview', 'login,welcome,manager,ajax', '权限过滤', '');
INSERT INTO `pcms_configs` VALUES ('10', '11', 'adminer', 'forbidden_hours', '1', '登录禁用', '账户登录错误超过6次时的禁用时间[小时]。');
INSERT INTO `pcms_configs` VALUES ('11', '12', 'email', 'stmp', 'smtp.163.com', 'STMP服务器', '');
INSERT INTO `pcms_configs` VALUES ('12', '13', 'email', 'account', '123@abc.com', '帐号', '发送帐号,请修改帐号为自己的发送账号。');
INSERT INTO `pcms_configs` VALUES ('13', '14', 'email', 'pwd', '', '密码', '');
INSERT INTO `pcms_configs` VALUES ('14', '15', 'email', 'port', '25', '端口', 'STMP端口[25]');
INSERT INTO `pcms_configs` VALUES ('22', '12', 'email', 'name', '有限公司', '电邮名称', '邮件地址显示的名称');
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='画廊';

-- ----------------------------
-- Records of pcms_gallery
-- ----------------------------
INSERT INTO `pcms_gallery` VALUES ('17', '10', '0', '1', '1', '0', '0', 'ban1', '', '', '', '337', '2016/01/12/thumbnail/14526031875067l1xy1.jpg', '1452603189', null);
INSERT INTO `pcms_gallery` VALUES ('18', '10', '0', '3', '1', '0', '0', 'ban3', '', '', '', '342', '2016/01/12/thumbnail/14526032733806cuah5.jpg', '1452603275', null);
INSERT INTO `pcms_gallery` VALUES ('19', '10', '0', '2', '1', '0', '0', 'ban2', '', '', '', '343', '2016/01/12/thumbnail/14526033095307rw1sw.jpg', '1452603312', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of pcms_links
-- ----------------------------
INSERT INTO `pcms_links` VALUES ('11', '12', '0', '1', '0', '0', '0', '百度链接', null, null, 'http://www.baidu.com', null, null, '1', '1452673606');

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
) ENGINE=MyISAM AUTO_INCREMENT=1940 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of pcms_log
-- ----------------------------
INSERT INTO `pcms_log` VALUES ('1833', 'login', '/admin/index.php/login?url=http://localhost:85/admin/index.php?', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452598430');
INSERT INTO `pcms_log` VALUES ('1834', 'gallery', '/admin/index.php/gallery/create?c=10', 'create', '添加数据id:17', '1', '0.0.0.0', '1452603189');
INSERT INTO `pcms_log` VALUES ('1835', 'gallery', '/admin/index.php/gallery/create?c=10', 'create', '添加数据id:18', '1', '0.0.0.0', '1452603275');
INSERT INTO `pcms_log` VALUES ('1836', 'upload', '/admin/index.php/upload/delete', 'delete', '删除文件ID:344', '1', '0.0.0.0', '1452603311');
INSERT INTO `pcms_log` VALUES ('1837', 'gallery', '/admin/index.php/gallery/create?c=10', 'create', '添加数据id:19', '1', '0.0.0.0', '1452603312');
INSERT INTO `pcms_log` VALUES ('1838', 'gallery', '/admin/index.php/gallery/sortid?c=10&ids=18%2C19%2C17&sort=2%2C3%2C1&sortby=desc', 'sort', '对数据排序:ID: [18,19,17]顺序改为[3,2,1]', '1', '0.0.0.0', '1452603321');
INSERT INTO `pcms_log` VALUES ('1839', 'columns', '/admin/index.php/columns/edit/1', 'update', '更新数据id:1', '1', '0.0.0.0', '1452603582');
INSERT INTO `pcms_log` VALUES ('1840', 'login', '/admin/index.php/login?url=http://localhost:85/admin/index.php?', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452645593');
INSERT INTO `pcms_log` VALUES ('1841', 'gallery', '/admin/index.php/gallery/audit?c=10', 'audit', '审核数据ID：18为1', '1', '0.0.0.0', '1452667902');
INSERT INTO `pcms_log` VALUES ('1842', 'gallery', '/admin/index.php/gallery/audit?c=10', 'audit', '审核数据ID：19为1', '1', '0.0.0.0', '1452667903');
INSERT INTO `pcms_log` VALUES ('1843', 'gallery', '/admin/index.php/gallery/audit?c=10', 'audit', '审核数据ID：17为1', '1', '0.0.0.0', '1452667904');
INSERT INTO `pcms_log` VALUES ('1844', 'configs', '/admin/index.php/configs/set', 'edit', '修改配置site.title_seo:xx', '1', '0.0.0.0', '1452670117');
INSERT INTO `pcms_log` VALUES ('1845', 'configs', '/admin/index.php/configs/set', 'edit', '修改配置site.title_seo:xx公司', '1', '0.0.0.0', '1452670118');
INSERT INTO `pcms_log` VALUES ('1846', 'configs', '/admin/index.php/configs/set', 'edit', '修改配置site.tags:关键词', '1', '0.0.0.0', '1452670122');
INSERT INTO `pcms_log` VALUES ('1847', 'configs', '/admin/index.php/configs/set', 'edit', '修改配置site.intro:站点描述', '1', '0.0.0.0', '1452670133');
INSERT INTO `pcms_log` VALUES ('1848', 'page', '/admin/index.php/page/edit?c=11', 'update', '更新数据id:20', '1', '0.0.0.0', '1452672727');
INSERT INTO `pcms_log` VALUES ('1849', 'page', '/admin/index.php/page/edit?c=11', 'update', '更新数据id:20', '1', '0.0.0.0', '1452672739');
INSERT INTO `pcms_log` VALUES ('1850', 'page', '/admin/index.php/page/edit?c=2', 'update', '更新数据id:13', '1', '0.0.0.0', '1452672756');
INSERT INTO `pcms_log` VALUES ('1851', 'page', '/admin/index.php/page/edit?c=11', 'update', '更新数据id:20', '1', '0.0.0.0', '1452673489');
INSERT INTO `pcms_log` VALUES ('1852', 'links', '/admin/index.php/links/create?c=12', 'create', '添加数据id:11', '1', '0.0.0.0', '1452673606');
INSERT INTO `pcms_log` VALUES ('1853', 'login', '/admin/index.php/login?url=http://localhost:85/admin/index.php?', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452744039');
INSERT INTO `pcms_log` VALUES ('1854', 'login', '/admin/index.php/login?url=http://localhost:85/admin/index.php?', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452751799');
INSERT INTO `pcms_log` VALUES ('1855', 'columns', '/admin/index.php/columns/sortid?ids=1%2C10%2C11%2C12%2C2%2C13%2C17%2C14%2C15%2C16%2C3%2C4%2C5%2C6%2C7%2C8%2C9&sort=1%2C10%2C11%2C12%2C2%2C13%2C17%2C14%2C15%2C16%2C3%2C4%2C5%2C6%2C7%2C8%2C9&sortby=asc', 'sort', '对数据排序:ID: [1,10,11,12,2,13,17,14,15,16,3,4,5,6,7,8,9]顺序改为[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]', '1', '0.0.0.0', '1452752880');
INSERT INTO `pcms_log` VALUES ('1856', 'columns', '/admin/index.php/columns/sortid?ids=1%2C10%2C11%2C12%2C2%2C17%2C13%2C14%2C15%2C16%2C3%2C4%2C5%2C6%2C7%2C8%2C9&sort=1%2C10%2C11%2C12%2C2%2C17%2C13%2C14%2C15%2C16%2C3%2C4%2C5%2C6%2C7%2C8%2C9&sortby=asc', 'sort', '对数据排序:ID: [1,10,11,12,2,17,13,14,15,16,3,4,5,6,7,8,9]顺序改为[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]', '1', '0.0.0.0', '1452752883');
INSERT INTO `pcms_log` VALUES ('1857', 'columns', '/admin/index.php/columns/sortid?ids=1%2C10%2C11%2C12%2C2%2C13%2C17%2C14%2C15%2C16%2C3%2C4%2C5%2C6%2C7%2C8%2C9&sort=1%2C2%2C3%2C4%2C5%2C7%2C6%2C8%2C9%2C10%2C11%2C12%2C13%2C14%2C15%2C16%2C17&sortby=asc', 'sort', '对数据排序:ID: [1,10,11,12,2,13,17,14,15,16,3,4,5,6,7,8,9]顺序改为[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]', '1', '0.0.0.0', '1452755424');
INSERT INTO `pcms_log` VALUES ('1858', 'login', '/admin/index.php/login?url=http://localhost:85/admin/index.php?', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452757029');
INSERT INTO `pcms_log` VALUES ('1859', 'page', '/admin/index.php/page/edit?c=17', 'update', '更新数据id:25', '1', '0.0.0.0', '1452757329');
INSERT INTO `pcms_log` VALUES ('1860', 'page', '/admin/index.php/page/edit?c=14', 'update', '更新数据id:22', '1', '0.0.0.0', '1452775111');
INSERT INTO `pcms_log` VALUES ('1861', 'page', '/admin/index.php/page/edit?c=15', 'update', '更新数据id:23', '1', '0.0.0.0', '1452775121');
INSERT INTO `pcms_log` VALUES ('1862', 'page', '/admin/index.php/page/edit?c=16', 'update', '更新数据id:24', '1', '0.0.0.0', '1452775130');
INSERT INTO `pcms_log` VALUES ('1863', 'article', '/admin/index.php/article/create?c=18', 'create', '添加数据id:1', '1', '0.0.0.0', '1452829674');
INSERT INTO `pcms_log` VALUES ('1864', 'article', '/admin/index.php/article/create/?c=18', 'create', '添加数据id:2', '1', '0.0.0.0', '1452829714');
INSERT INTO `pcms_log` VALUES ('1865', 'article', '/admin/index.php/article/audit?c=18', 'audit', '审核数据ID：2为1', '1', '0.0.0.0', '1452829953');
INSERT INTO `pcms_log` VALUES ('1866', 'article', '/admin/index.php/article/audit?c=18', 'audit', '审核数据ID：1为1', '1', '0.0.0.0', '1452829955');
INSERT INTO `pcms_log` VALUES ('1867', 'upload', '/admin/index.php/upload/delete', 'delete', '删除文件ID:347', '1', '0.0.0.0', '1452925520');
INSERT INTO `pcms_log` VALUES ('1868', 'article', '/admin/index.php/article/edit/1?c=18', 'update', '更新数据id:1', '1', '0.0.0.0', '1452925587');
INSERT INTO `pcms_log` VALUES ('1869', 'article', '/admin/index.php/article/edit/2?c=18', 'update', '更新数据id:2', '1', '0.0.0.0', '1452925616');
INSERT INTO `pcms_log` VALUES ('1870', 'article', '/admin/index.php/article/create?c=19', 'create', '添加数据id:3', '1', '0.0.0.0', '1452926060');
INSERT INTO `pcms_log` VALUES ('1871', 'upload', '/admin/index.php/upload/delete', 'delete', '删除文件ID:351', '1', '0.0.0.0', '1452926185');
INSERT INTO `pcms_log` VALUES ('1872', 'article', '/admin/index.php/article/create?c=19', 'create', '添加数据id:4', '1', '0.0.0.0', '1452926194');
INSERT INTO `pcms_log` VALUES ('1873', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：4为1', '1', '0.0.0.0', '1452926356');
INSERT INTO `pcms_log` VALUES ('1874', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：3为1', '1', '0.0.0.0', '1452926357');
INSERT INTO `pcms_log` VALUES ('1875', 'article', '/admin/index.php/article/create?c=20', 'create', '添加数据id:5', '1', '0.0.0.0', '1452926825');
INSERT INTO `pcms_log` VALUES ('1876', 'article', '/admin/index.php/article/create/?c=20', 'create', '添加数据id:6', '1', '0.0.0.0', '1452926864');
INSERT INTO `pcms_log` VALUES ('1877', 'article', '/admin/index.php/article/audit?c=20', 'audit', '审核数据ID：6为1', '1', '0.0.0.0', '1452926873');
INSERT INTO `pcms_log` VALUES ('1878', 'article', '/admin/index.php/article/audit?c=20', 'audit', '审核数据ID：5为1', '1', '0.0.0.0', '1452926874');
INSERT INTO `pcms_log` VALUES ('1879', 'article', '/admin/index.php/article/edit/2?c=18', 'update', '更新数据id:2', '1', '0.0.0.0', '1452938595');
INSERT INTO `pcms_log` VALUES ('1880', 'upload', '/admin/index.php/upload/delete', 'delete', '删除文件ID:349', '1', '0.0.0.0', '1452938623');
INSERT INTO `pcms_log` VALUES ('1881', 'article', '/admin/index.php/article/edit/2?c=18', 'update', '更新数据id:2', '1', '0.0.0.0', '1452938653');
INSERT INTO `pcms_log` VALUES ('1882', 'upload', '/admin/index.php/upload/delete', 'delete', '删除文件ID:348', '1', '0.0.0.0', '1452938672');
INSERT INTO `pcms_log` VALUES ('1883', 'article', '/admin/index.php/article/edit/1?c=18', 'update', '更新数据id:1', '1', '0.0.0.0', '1452938696');
INSERT INTO `pcms_log` VALUES ('1884', 'article', '/admin/index.php/article/create?c=19', 'create', '添加数据id:7', '1', '0.0.0.0', '1452938800');
INSERT INTO `pcms_log` VALUES ('1885', 'upload', '/admin/index.php/upload/delete', 'delete', '删除文件ID:358', '1', '0.0.0.0', '1452938830');
INSERT INTO `pcms_log` VALUES ('1886', 'article', '/admin/index.php/article/create/?c=19', 'create', '添加数据id:8', '1', '0.0.0.0', '1452938841');
INSERT INTO `pcms_log` VALUES ('1887', 'article', '/admin/index.php/article/create/?c=19', 'create', '添加数据id:9', '1', '0.0.0.0', '1452938871');
INSERT INTO `pcms_log` VALUES ('1888', 'article', '/admin/index.php/article/create/?c=19', 'create', '添加数据id:10', '1', '0.0.0.0', '1452938906');
INSERT INTO `pcms_log` VALUES ('1889', 'upload', '/admin/index.php/upload/delete', 'delete', '删除文件ID:362', '1', '0.0.0.0', '1452938968');
INSERT INTO `pcms_log` VALUES ('1890', 'article', '/admin/index.php/article/create/?c=19', 'create', '添加数据id:11', '1', '0.0.0.0', '1452938972');
INSERT INTO `pcms_log` VALUES ('1891', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：11为1', '1', '0.0.0.0', '1452938992');
INSERT INTO `pcms_log` VALUES ('1892', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：10为1', '1', '0.0.0.0', '1452938993');
INSERT INTO `pcms_log` VALUES ('1893', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：9为1', '1', '0.0.0.0', '1452938993');
INSERT INTO `pcms_log` VALUES ('1894', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：8为1', '1', '0.0.0.0', '1452938994');
INSERT INTO `pcms_log` VALUES ('1895', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：7为1', '1', '0.0.0.0', '1452938995');
INSERT INTO `pcms_log` VALUES ('1896', 'article', '/admin/index.php/article/create?c=19', 'create', '添加数据id:12', '1', '0.0.0.0', '1452939043');
INSERT INTO `pcms_log` VALUES ('1897', 'article', '/admin/index.php/article/create/?c=19', 'create', '添加数据id:13', '1', '0.0.0.0', '1452939086');
INSERT INTO `pcms_log` VALUES ('1898', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：13为1', '1', '0.0.0.0', '1452939102');
INSERT INTO `pcms_log` VALUES ('1899', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：12为1', '1', '0.0.0.0', '1452939103');
INSERT INTO `pcms_log` VALUES ('1900', 'article', '/admin/index.php/article/create?c=19', 'create', '添加数据id:14', '1', '0.0.0.0', '1452939463');
INSERT INTO `pcms_log` VALUES ('1901', 'article', '/admin/index.php/article/create/?c=19', 'create', '添加数据id:15', '1', '0.0.0.0', '1452939545');
INSERT INTO `pcms_log` VALUES ('1902', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：15为1', '1', '0.0.0.0', '1452939567');
INSERT INTO `pcms_log` VALUES ('1903', 'article', '/admin/index.php/article/audit?c=19', 'audit', '审核数据ID：14为1', '1', '0.0.0.0', '1452939568');
INSERT INTO `pcms_log` VALUES ('1904', 'modules', '/admin/index.php/modules/edit/3', 'update', '更新数据id:3', '1', '0.0.0.0', '1452943184');
INSERT INTO `pcms_log` VALUES ('1905', 'modules', '/admin/index.php/modules/edit/3', 'update', '更新数据id:3', '1', '0.0.0.0', '1452943240');
INSERT INTO `pcms_log` VALUES ('1906', 'modules', '/admin/index.php/modules/create', 'create', '添加数据id:8', '1', '0.0.0.0', '1452943324');
INSERT INTO `pcms_log` VALUES ('1907', 'columns', '/admin/index.php/columns/edit/21', 'update', '更新数据id:21', '1', '0.0.0.0', '1452943338');
INSERT INTO `pcms_log` VALUES ('1908', 'columns', '/admin/index.php/columns/edit/22', 'update', '更新数据id:22', '1', '0.0.0.0', '1452943348');
INSERT INTO `pcms_log` VALUES ('1909', 'columns', '/admin/index.php/columns/edit/23', 'update', '更新数据id:23', '1', '0.0.0.0', '1452943356');
INSERT INTO `pcms_log` VALUES ('1910', 'columns', '/admin/index.php/columns/edit/24', 'update', '更新数据id:24', '1', '0.0.0.0', '1452943366');
INSERT INTO `pcms_log` VALUES ('1911', 'modules', '/admin/index.php/modules/sortid?ids=1%2C2%2C8%2C3%2C4%2C5%2C6%2C7&sort=1%2C2%2C8%2C3%2C4%2C5%2C6%2C7&sortby=desc', 'sort', '对数据排序:ID: [1,2,8,3,4,5,6,7]顺序改为[8,7,6,5,4,3,2,1]', '1', '0.0.0.0', '1452943382');
INSERT INTO `pcms_log` VALUES ('1912', 'modules', '/admin/index.php/modules/edit/8', 'update', '更新数据id:8', '1', '0.0.0.0', '1452944298');
INSERT INTO `pcms_log` VALUES ('1913', 'coltypes', '/admin/index.php/coltypes/create?cid=4&field=ctype&rc=page', 'create', '添加数据id:20', '1', '0.0.0.0', '1452945363');
INSERT INTO `pcms_log` VALUES ('1914', 'coltypes', '/admin/index.php/coltypes/create?cid=4&field=ctype&rc=page', 'create', '添加数据id:21', '1', '0.0.0.0', '1452945440');
INSERT INTO `pcms_log` VALUES ('1915', 'coltypes', '/admin/index.php/coltypes/create/?cid=4&field=ctype&rc=page', 'create', '添加数据id:22', '1', '0.0.0.0', '1452945454');
INSERT INTO `pcms_log` VALUES ('1916', 'coltypes', '/admin/index.php/coltypes/create?cid=4&field=ctype&rc=page', 'create', '添加数据id:23', '1', '0.0.0.0', '1452946141');
INSERT INTO `pcms_log` VALUES ('1917', 'coltypes', '/admin/index.php/coltypes/create/?cid=4&field=ctype&rc=page', 'create', '添加数据id:24', '1', '0.0.0.0', '1452946153');
INSERT INTO `pcms_log` VALUES ('1918', 'coltypes', '/admin/index.php/coltypes/create/?cid=4&field=ctype&rc=page', 'create', '添加数据id:25', '1', '0.0.0.0', '1452946166');
INSERT INTO `pcms_log` VALUES ('1919', 'coltypes', '/admin/index.php/coltypes/create/?cid=4&field=ctype&rc=page', 'create', '添加数据id:26', '1', '0.0.0.0', '1452946174');
INSERT INTO `pcms_log` VALUES ('1920', 'coltypes', '/admin/index.php/coltypes/create?cid=4&field=ctype&rc=page', 'create', '添加数据id:27', '1', '0.0.0.0', '1452947416');
INSERT INTO `pcms_log` VALUES ('1921', 'cases', '/admin/index.php/cases/create?c=21', 'create', '添加数据id:1', '1', '0.0.0.0', '1452948934');
INSERT INTO `pcms_log` VALUES ('1922', 'cases', '/admin/index.php/cases/audit?c=21', 'audit', '审核数据ID：1为1', '1', '0.0.0.0', '1452949571');
INSERT INTO `pcms_log` VALUES ('1923', 'cases', '/admin/index.php/cases/flag?c=21', 'flag', '推荐数据ID：1为1', '1', '0.0.0.0', '1452949606');
INSERT INTO `pcms_log` VALUES ('1924', 'cases', '/admin/index.php/cases/flag?c=21', 'flag', '推荐数据ID：1为0', '1', '0.0.0.0', '1452949608');
INSERT INTO `pcms_log` VALUES ('1925', 'cases', '/admin/index.php/cases/edit/1?c=21', 'update', '更新数据id:1', '1', '0.0.0.0', '1452949634');
INSERT INTO `pcms_log` VALUES ('1926', 'cases', '/admin/index.php/cases/edit/1?c=21', 'update', '更新数据id:1', '1', '0.0.0.0', '1452949645');
INSERT INTO `pcms_log` VALUES ('1927', 'cases', '/admin/index.php/cases/create?c=21', 'create', '添加数据id:2', '1', '0.0.0.0', '1452949804');
INSERT INTO `pcms_log` VALUES ('1928', 'cases', '/admin/index.php/cases/audit?c=21', 'audit', '审核数据ID：2为1', '1', '0.0.0.0', '1452949808');
INSERT INTO `pcms_log` VALUES ('1929', 'upload', '/admin/index.php/upload/delete', 'delete', '删除文件ID:369', '1', '0.0.0.0', '1452949823');
INSERT INTO `pcms_log` VALUES ('1930', 'cases', '/admin/index.php/cases/edit/2?c=21', 'update', '更新数据id:2', '1', '0.0.0.0', '1452949846');
INSERT INTO `pcms_log` VALUES ('1931', 'login', '/admin/index.php/login?url=http://localhost:85/admin/index.php/cases/create?c=22', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1452949911');
INSERT INTO `pcms_log` VALUES ('1932', 'cases', '/admin/index.php/cases/create?c=22', 'create', '添加数据id:3', '1', '0.0.0.0', '1452949954');
INSERT INTO `pcms_log` VALUES ('1933', 'cases', '/admin/index.php/cases/create?c=23', 'create', '添加数据id:4', '1', '0.0.0.0', '1452950140');
INSERT INTO `pcms_log` VALUES ('1934', 'cases', '/admin/index.php/cases/create?c=24', 'create', '添加数据id:5', '1', '0.0.0.0', '1452950187');
INSERT INTO `pcms_log` VALUES ('1935', 'columns', '/admin/index.php/columns/edit/4', 'update', '更新数据id:4', '1', '0.0.0.0', '1452950409');
INSERT INTO `pcms_log` VALUES ('1936', 'columns', '/admin/index.php/columns/edit/21', 'update', '更新数据id:21', '1', '0.0.0.0', '1452950662');
INSERT INTO `pcms_log` VALUES ('1937', 'cases', '/admin/index.php/cases/audit?c=22', 'audit', '审核数据ID：3为1', '1', '0.0.0.0', '1452951433');
INSERT INTO `pcms_log` VALUES ('1938', 'cases', '/admin/index.php/cases/audit?c=23', 'audit', '审核数据ID：4为1', '1', '0.0.0.0', '1452951436');
INSERT INTO `pcms_log` VALUES ('1939', 'cases', '/admin/index.php/cases/audit?c=24', 'audit', '审核数据ID：5为1', '1', '0.0.0.0', '1452951439');

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
INSERT INTO `pcms_manager` VALUES ('1', 'admin', '超级用户', 'ed01a71f99b2d1bb54201d0be5d01889', '1', '123@abc.com', '', '', '', '1', '0', '0', '0.0.0.0', '1376471117', '1452949911', '1', '1389317880');

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
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='用户组权限';

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
INSERT INTO `pcms_manager_purview` VALUES ('20', 'page', 'index', '30', 'e0fd975319c874c5f02f802b3201949b', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('21', 'page', 'create', '30', '29d0934ab8155adbbd6b94df4bac3ea5', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('22', 'page', 'edit', '30', '7c6f9430eb960f52be2eb420645bdcc1', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('23', 'page', 'delete', '30', '16bacb294eeaa66b0e326abd2fdb7910', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('24', 'page', 'audit', '30', 'a6ee4e3e7f6e8f858b3ad8b34071bbb8', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('25', 'page', 'index', '31', '42addba1d5649b3bc02dfebfe5833622', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('26', 'page', 'create', '31', '6370b2e913e91163efa997f10fed6b0c', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('27', 'page', 'edit', '31', 'f96f8e3599fd3be147af77f0f638d166', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('28', 'page', 'delete', '31', '5a8c2356ee4f7cf22b9d8a94458dbce0', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('29', 'page', 'audit', '31', '615e298980da384bea6e6d7aac0f8131', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('30', 'page', 'index', '3', '55acb12787c11520dec043dae8c8f43f', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('31', 'page', 'create', '3', '490514ccb844f6e19cf1e39ec45afcaa', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('32', 'page', 'edit', '3', '5daec0d7a291ab828abfa1d9b882f815', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('33', 'page', 'delete', '3', '6a82e24b3151695d12859f8705b6648b', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('34', 'page', 'audit', '3', 'e446e83c5ae6a000babf73abeab863e2', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('35', 'page', 'index', '4', 'b5f7325d8050bc6a843cecf9099cd041', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('36', 'page', 'create', '4', '4a5167b65c95a4941958db1e6a19d8e8', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('37', 'page', 'edit', '4', '5dbd86b675208156fd7b4b2af4034e7c', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('38', 'page', 'delete', '4', '52049a819f5d87313473f26dc923bf4d', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('39', 'page', 'audit', '4', '8cd304eb9ffad25bc1d48ef771af0572', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('40', 'page', 'index', '5', 'de1e78874b11fd301c52907f65716491', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('41', 'page', 'create', '5', 'f6b8687e6ce63122b566f9fa3f6ac159', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('42', 'page', 'edit', '5', 'f03bed106b7b007eeb8ccbbf23626600', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('43', 'page', 'delete', '5', '8e2a937ecea85f468bc7821b3b5c2fd9', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('44', 'page', 'audit', '5', '6dbebe685fc6a70124bbc26955aaa587', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('45', 'page', 'index', '6', '33181661fd48e7188312c970742778f9', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('46', 'page', 'create', '6', 'd2982454f3a7346378e68debfd418fa1', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('47', 'page', 'edit', '6', 'ad74701ba151e59e2268082429c4b25d', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('48', 'page', 'delete', '6', 'a540d6c5b3011ecb8560b81cee19f6c9', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('49', 'page', 'audit', '6', 'b83f163a799c04800e0a8d19f320fe02', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('50', 'page', 'index', '7', '7882e0b46d58b78d70bee525b2404cb8', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('51', 'page', 'create', '7', '6f767735a4bb03e2dde41f2f81984b18', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('52', 'page', 'edit', '7', '9041544f46b0f9e0c861c986e5eb563f', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('53', 'page', 'delete', '7', '2383aecac653eb271fca9de8637fc7f5', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('54', 'page', 'audit', '7', '58b7e1346b741399a048d3a032a72002', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('55', 'page', 'index', '8', '0eb080f0966334408324a472c86a15a8', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('56', 'page', 'create', '8', '3c80b5b566591947b0d98eb8899acfd1', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('57', 'page', 'edit', '8', '1c1bcb503d17b64f64b4f657b54ca771', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('58', 'page', 'delete', '8', '12b11a534786b5bb62cf981590568161', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('59', 'page', 'audit', '8', '9ab71ef74279d9ff78d6742479fbe4bc', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('60', 'page', 'index', '9', '990e41112666107e73a78d12837a0784', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('61', 'page', 'create', '9', 'e9bb9f5f467c9c6cad391d01846816b6', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('62', 'page', 'edit', '9', '943b4eeee1342f15ba8b248cba2107a9', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('63', 'page', 'delete', '9', 'cc36a50d311c388686523c2241b1dcc3', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('64', 'page', 'audit', '9', '61263b76b3524fc43f743f2213ef7c1a', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('65', 'gallery', 'index', '10', '7f2d378deee1fabfdb0f2ebd97bab081', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('66', 'gallery', 'create', '10', '1a4252dcef8369844e83f91d68f20425', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('67', 'gallery', 'edit', '10', 'cda1aa87d717d411e263b8e3cb4e35de', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('68', 'gallery', 'delete', '10', 'd1f055cea5f91266ad6d7a5fbfaadc2f', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('69', 'gallery', 'audit', '10', '813d700088d0ad25ee4d4913cec3eb2b', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('70', 'page', 'index', '11', '212bba667fed2abe55879b401c5dbe71', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('71', 'page', 'create', '11', 'f9bdfa2ff193158875878e109eb0348f', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('72', 'page', 'edit', '11', 'baa7b2832654509184731a3ee4213538', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('73', 'page', 'delete', '11', '4971a6412a40e0245486754a89772848', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('74', 'page', 'audit', '11', 'e293c90412dd18174755bdbe24659408', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('75', 'links', 'index', '12', '47403e5600a782bca793c7ed2e088cdc', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('76', 'links', 'create', '12', '46abef163a89d173c91a6f541fe7da11', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('77', 'links', 'edit', '12', 'f866443ba073a8e6c1389b7f0fc8d8bd', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('78', 'links', 'delete', '12', '3f1ae82ea3049ebd146fe83c74732b9a', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('79', 'links', 'audit', '12', 'c17650e5017646ad8d61f6e2ed539634', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('80', 'page', 'index', '13', 'ea5190e00daaf150cee6e60fd42d091a', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('81', 'page', 'create', '13', 'fc51ee3f845d7a86a0b010d3335ee599', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('82', 'page', 'edit', '13', '3a3b07340003e746fd5f55b2b53ea2f7', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('83', 'page', 'delete', '13', '96d3fcec7b02d1fb50672a898cb0893a', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('84', 'page', 'audit', '13', 'ffe3207424bd264caae11b2635345d2f', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('85', 'page', 'index', '14', 'ca4ceaa95f32895416376c542b53da4b', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('86', 'page', 'create', '14', 'dbe0112a3196932179c1029e62b86181', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('87', 'page', 'edit', '14', 'c92fa4280ebaaf17dbf97f006ae9c6cf', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('88', 'page', 'delete', '14', '563f9e7659be19c40e4696fe82806db0', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('89', 'page', 'audit', '14', 'cc080f52fef2112da7cdae00c0e2c7a9', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('90', 'page', 'index', '15', '67adcdc9ecc0c7e2fad25e987e81d558', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('91', 'page', 'create', '15', 'ac22efd6ba8f2d66cb8990ad41fdacf4', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('92', 'page', 'edit', '15', '7ce524190dbb655344469d9d1abd9675', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('93', 'page', 'delete', '15', 'd7fcfe13c101843bc1dc6327627cad9a', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('94', 'page', 'audit', '15', 'dcddf4f770879571e9a9dddeef238eb8', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('95', 'page', 'index', '16', 'bb33396496707b6764bc6a2e8bc129b6', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('96', 'page', 'create', '16', '442faf8b2c624250d04ba973e9b75448', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('97', 'page', 'edit', '16', '276c1d14a55341e78ce4446029417eac', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('98', 'page', 'delete', '16', '4446d8754242262c0bc260b36e4f3dc8', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('99', 'page', 'audit', '16', 'a2e6ff8d1742da77c14e5710e0bba897', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('100', 'page', 'index', '17', 'b313940ce4a99f0e84f170aec00a8212', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('101', 'page', 'create', '17', 'a0868c5b6851e063578dff5e29dfe18b', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('102', 'page', 'edit', '17', '636cf9faf1efae8e61b6ccec214b2ba3', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('103', 'page', 'delete', '17', '08deb3c2d5874bb143d259f63c4a4678', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('104', 'page', 'audit', '17', '63afda6fb8aa2b34849528b5481aecc9', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('105', 'article', 'index', '18', '6f4edb2397be1237d707a6cd2b27bffc', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('106', 'article', 'create', '18', '227e49a702128aae361daba83ce78bc3', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('107', 'article', 'edit', '18', '26df256ae9aa43f8cbd6b1fd6ff084ba', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('108', 'article', 'delete', '18', 'b67cc1bddbd1f379779ddc90c99f973d', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('109', 'article', 'audit', '18', '95e6adc33259afa7483d55e72467356c', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('110', 'article', 'index', '19', 'f078393dd779410658fbe0f7844929cd', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('111', 'article', 'create', '19', '4e4e93f51c4b8c4d3070057490b3dde0', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('112', 'article', 'edit', '19', '42fdd119e8a5c4e5cc66ba859410bb37', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('113', 'article', 'delete', '19', '40f9b06450a031de06b3945588de81a1', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('114', 'article', 'audit', '19', 'a855d52379405cd22ae1fa58a2af9419', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('115', 'article', 'index', '20', 'feebd09276ffe68595d6bd5ef9721e78', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('116', 'article', 'create', '20', '734ea6d32c4be3faae40c610afb72a35', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('117', 'article', 'edit', '20', '7e2fafc5f016e76bdeabf5015b8f0085', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('118', 'article', 'delete', '20', '67aed65a0546f4d8adc1cd59def43363', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('119', 'article', 'audit', '20', 'f284672f16eb9c4630eef3f95b71bc01', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('120', 'lists', 'index', '21', '9c84a5a5e6393e3c27e30ef0729f6faf', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('121', 'lists', 'create', '21', '70a4348190f36f53982598845d9576f0', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('122', 'lists', 'edit', '21', '67a547ce07bf55a3d58e9c3e275fbae1', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('123', 'lists', 'delete', '21', '6fca9d791d148d376346036707d60161', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('124', 'lists', 'audit', '21', 'f05a4893be5f694af13463bf360eb275', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('125', 'lists', 'index', '22', 'a62418f6513b900c6a7c892d68df8651', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('126', 'lists', 'create', '22', '380b7a39aaa2626b64bd8389365774f4', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('127', 'lists', 'edit', '22', '0d7427572445df38353637294176b9e0', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('128', 'lists', 'delete', '22', '610afa0281f3c09140cc4e972c44bb43', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('129', 'lists', 'audit', '22', 'c76883bcc67d2723de1a74b8dc11de43', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('130', 'lists', 'index', '23', '0afcd03a20b8835aa6110822f5d22ce5', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('131', 'lists', 'create', '23', '604dfaa2332b5a2934e2eb5fac71e169', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('132', 'lists', 'edit', '23', 'a51199dc3e64370ca761576739325821', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('133', 'lists', 'delete', '23', 'f59c8813db844fa0635fc4c28b86dd3f', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('134', 'lists', 'audit', '23', 'b8afcdef65c89087a8cdaba4f6a21c3b', '审核', '1');
INSERT INTO `pcms_manager_purview` VALUES ('135', 'lists', 'index', '24', 'ae57e27447efdc78de3f0ab250b1d8eb', '查看', '0');
INSERT INTO `pcms_manager_purview` VALUES ('136', 'lists', 'create', '24', '8b5ccf176006b1a87dfd2dbd8ab943dd', '创建', '1');
INSERT INTO `pcms_manager_purview` VALUES ('137', 'lists', 'edit', '24', '4f2a23337d9901cf13d62a6cfe26244b', '编辑', '1');
INSERT INTO `pcms_manager_purview` VALUES ('138', 'lists', 'delete', '24', '1ee79269747d41295a4559af0326ee63', '删除', '1');
INSERT INTO `pcms_manager_purview` VALUES ('139', 'lists', 'audit', '24', 'fa6964fbeb838d5b34ed0770de382eff', '审核', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='栏目模型';

-- ----------------------------
-- Records of pcms_modules
-- ----------------------------
INSERT INTO `pcms_modules` VALUES ('4', '4', '链接', 'links');
INSERT INTO `pcms_modules` VALUES ('2', '7', '文章', 'article');
INSERT INTO `pcms_modules` VALUES ('3', '5', '清单', 'lists');
INSERT INTO `pcms_modules` VALUES ('5', '3', '期刊', 'gallery');
INSERT INTO `pcms_modules` VALUES ('1', '8', '单页', 'page');
INSERT INTO `pcms_modules` VALUES ('6', '2', '招聘', 'recruit');
INSERT INTO `pcms_modules` VALUES ('7', '1', '联系我们', 'store');
INSERT INTO `pcms_modules` VALUES ('8', '6', '案例', 'cases');

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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of pcms_page
-- ----------------------------
INSERT INTO `pcms_page` VALUES ('11', '8', '0', '1', '0', null, null, null, null, null, null, null, null, '1452599841', null);
INSERT INTO `pcms_page` VALUES ('12', '1', '0', '2', '0', null, null, null, null, null, null, null, null, '1452599843', null);
INSERT INTO `pcms_page` VALUES ('13', '2', '0', '3', '0', null, '', '', '', null, '', '', null, '1452599844', null);
INSERT INTO `pcms_page` VALUES ('14', '3', '0', '4', '0', null, null, null, null, null, null, null, null, '1452599845', null);
INSERT INTO `pcms_page` VALUES ('15', '4', '0', '5', '0', null, null, null, null, null, null, null, null, '1452599847', null);
INSERT INTO `pcms_page` VALUES ('16', '9', '0', '6', '0', null, null, null, null, null, null, null, null, '1452599849', null);
INSERT INTO `pcms_page` VALUES ('17', '5', '0', '7', '0', null, null, null, null, null, null, null, null, '1452602854', null);
INSERT INTO `pcms_page` VALUES ('18', '6', '0', '8', '0', null, null, null, null, null, null, null, null, '1452602855', null);
INSERT INTO `pcms_page` VALUES ('19', '7', '0', '9', '0', null, null, null, null, null, null, null, null, '1452602856', null);
INSERT INTO `pcms_page` VALUES ('20', '11', '0', '10', '0', '联系方式', '', '', '', '<p>地址：时代广场1号楼A座1008室<br/></p><p></p><p>电话：0871-55667788<br/></p><p>联系人：冯先生 13833338888<br/></p><p>邮箱：mail@163.com</p>', '', '', null, '1452672703', null);
INSERT INTO `pcms_page` VALUES ('25', '17', '0', '15', '0', '关于我们', '', '', '', '<p>关于我们</p>', null, null, null, '1452752889', null);
INSERT INTO `pcms_page` VALUES ('21', '13', '0', '11', '0', '公司简介', null, null, null, '<p>装饰工程有限公司成立于2006年，于2011年增加注册资本金为600万元，是一家专业从事公共空间设计与施工的企业，本企业系国家建设部颁发的建筑装饰装修工程设计与施工一体化贰级资质；河南省建设厅建筑装饰协会理事单位；ISO9001质量、环境、职业健康安全管理体系认证通过企业。</p><p><br/></p><p> 装饰为您提供企业整体解决方案，包括工程设计，装修施工、消防设计申报及工程、弱电安防空调机电工程、价值分析及成本估算、工程施工管理、企业VI标识系统设计及制作、产品推广及工业设计、人员招聘及岗前培训、办公家具及产品展柜定做、软装配饰等，致力于成为中国企业办公服务行业领导者。</p><p><br/></p><p> 企业目前拥有高级职称3人、中级职称6人、管理人员15人、各类工程技术人员20余人、各类中高级设计人员18人。目前，企业机构健全、机制灵活、设施齐全、内抓管理外树形象，能在较短的时间内完成一流的室内外装饰装修工程。</p><p><br/></p><p> 工程质量优良率占工程量的85%以上，工程质量合格率100%，各项技术指标都达到了合格以上标准，无发现一例质量安全及伤亡事故，多次获得省市级优质工程奖，连续3年获得河南省装饰装修行业先进企业称号，受到了上级主管部门和建设单位的一致好评，这些装修装饰工程的完成不仅取得良好的社会信誉，树立了企业形象，而且提高了企业的知名度，为企业发展奠定了更坚实的基础。</p><p><br/></p><p> 企业理念：培养一流企业团队，形成稳健企业作风，为客户提供专业、专人、专职的服务与支持，随时准备解决任何有关工程与设计服务的各种问题，与客户建立一种亲密的战略合作关系，公司以“以诚为本、以信立业”的经营理念，实现与客户朋友共同成长的目标。</p><p><br/></p><p> 只有客户的成功，我们才能成功。我们将以专业的精神、专业的技能、优质的服务为客户打造高品质的作品，努力争创一个令行业竞争对手尊敬的公司，客户青睐和首选的公司，员工值得依托、能够实现自我价值，为之而奋斗的家园。</p><p><br/></p><p> 企业目标：为客户提供一站式服务解决方案！全力打造中国公共空间设计与施工第一品牌！</p><p></p>', null, null, null, '1452752641', null);
INSERT INTO `pcms_page` VALUES ('22', '14', '0', '12', '0', '经营理念', '', '', '', '<p>经营理念经营理念经营理念经营理念经营理念经营理念经营理念经营理念经营理念经营理念经营理念经营理念经营理念</p>', '', '', null, '1452752647', null);
INSERT INTO `pcms_page` VALUES ('23', '15', '0', '13', '0', '企业锋芒', '', '', '', '<p>企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒企业锋芒</p>', '', '', null, '1452752649', null);
INSERT INTO `pcms_page` VALUES ('24', '16', '0', '14', '0', '公司文化', '', '', '', '<p>公司文化公司文化公司文化公司文化公司文化公司文化公司文化公司文化公司文化公司文化公司文化公司文化公司文化公司文化公司文化</p>', '', '', null, '1452752651', null);

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
INSERT INTO `pcms_sessions_adminer` VALUES ('cc00e37f7cbe1287d4395a15f2e28574', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; Trident/7.0; rv:11.0) like Gecko', '1452949899', 'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:5:\"admin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:7:\"0.0.0.0\";s:3:\"gid\";s:1:\"1\";}');
INSERT INTO `pcms_sessions_adminer` VALUES ('733fe3565928e43a17dbd65511d3d281', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; Trident/7.0; rv:11.0) like Gecko', '1452951427', 'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:5:\"admin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:7:\"0.0.0.0\";s:3:\"gid\";s:1:\"1\";}');

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
) ENGINE=MyISAM AUTO_INCREMENT=375 DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of pcms_upload
-- ----------------------------
INSERT INTO `pcms_upload` VALUES ('337', '14526031875067l1xy1.jpg', '473884', 'image/jpeg', '2016/01/12/14526031875067l1xy1.jpg', '2016/01/12/thumbnail/14526031875067l1xy1.jpg', '?file=14526031875067l1xy1.jpg&dt=2016/01/12', null, null, null, '1452603187');
INSERT INTO `pcms_upload` VALUES ('338', '14526032022408o5tec.jpg', '214408', 'image/jpeg', '2016/01/12/14526032022408o5tec.jpg', '2016/01/12/thumbnail/14526032022408o5tec.jpg', '?file=14526032022408o5tec.jpg&dt=2016/01/12', null, null, null, '1452603202');
INSERT INTO `pcms_upload` VALUES ('339', '1452603220451epokq.jpg', '214408', 'image/jpeg', '2016/01/12/1452603220451epokq.jpg', '2016/01/12/thumbnail/1452603220451epokq.jpg', '?file=1452603220451epokq.jpg&dt=2016/01/12', null, null, null, '1452603220');
INSERT INTO `pcms_upload` VALUES ('340', '1452603241851qnjf5.jpg', '214408', 'image/jpeg', '2016/01/12/1452603241851qnjf5.jpg', '2016/01/12/thumbnail/1452603241851qnjf5.jpg', '?file=1452603241851qnjf5.jpg&dt=2016/01/12', null, null, null, '1452603241');
INSERT INTO `pcms_upload` VALUES ('341', '14526032551314mafbs.jpg', '214408', 'image/jpeg', '2016/01/12/14526032551314mafbs.jpg', '2016/01/12/thumbnail/14526032551314mafbs.jpg', '?file=14526032551314mafbs.jpg&dt=2016/01/12', null, null, null, '1452603255');
INSERT INTO `pcms_upload` VALUES ('342', '14526032733806cuah5.jpg', '149445', 'image/jpeg', '2016/01/12/14526032733806cuah5.jpg', '2016/01/12/thumbnail/14526032733806cuah5.jpg', '?file=14526032733806cuah5.jpg&dt=2016/01/12', null, null, null, '1452603273');
INSERT INTO `pcms_upload` VALUES ('343', '14526033095307rw1sw.jpg', '214408', 'image/jpeg', '2016/01/12/14526033095307rw1sw.jpg', '2016/01/12/thumbnail/14526033095307rw1sw.jpg', '?file=14526033095307rw1sw.jpg&dt=2016/01/12', null, null, null, '1452603309');
INSERT INTO `pcms_upload` VALUES ('345', '1452925400711l7sln.jpg', '27831', 'image/jpeg', '2016/01/16/1452925400711l7sln.jpg', '2016/01/16/thumbnail/1452925400711l7sln.jpg', '?file=1452925400711l7sln.jpg&dt=2016/01/16', null, null, null, '1452925400');
INSERT INTO `pcms_upload` VALUES ('346', '145292541372399dpxl.jpg', '27831', 'image/jpeg', '2016/01/16/145292541372399dpxl.jpg', '2016/01/16/thumbnail/145292541372399dpxl.jpg', '?file=145292541372399dpxl.jpg&dt=2016/01/16', null, null, null, '1452925413');
INSERT INTO `pcms_upload` VALUES ('356', '145293867712404ymr.jpg', '9754', 'image/jpeg', '2016/01/16/145293867712404ymr.jpg', '2016/01/16/thumbnail/145293867712404ymr.jpg', '?file=145293867712404ymr.jpg&dt=2016/01/16', null, null, null, '1452938677');
INSERT INTO `pcms_upload` VALUES ('355', '14529386279288pebed.jpg', '401549', 'image/jpeg', '2016/01/16/14529386279288pebed.jpg', '2016/01/16/thumbnail/14529386279288pebed.jpg', '?file=14529386279288pebed.jpg&dt=2016/01/16', null, null, null, '1452938628');
INSERT INTO `pcms_upload` VALUES ('350', '145292603836968s5n4.jpg', '559806', 'image/jpeg', '2016/01/16/145292603836968s5n4.jpg', '2016/01/16/thumbnail/145292603836968s5n4.jpg', '?file=145292603836968s5n4.jpg&dt=2016/01/16', null, null, null, '1452926038');
INSERT INTO `pcms_upload` VALUES ('353', '14529268229936zmf3y.jpg', '281939', 'image/jpeg', '2016/01/16/14529268229936zmf3y.jpg', '2016/01/16/thumbnail/14529268229936zmf3y.jpg', '?file=14529268229936zmf3y.jpg&dt=2016/01/16', null, null, null, '1452926823');
INSERT INTO `pcms_upload` VALUES ('352', '14529261856319ki2l6.jpg', '241959', 'image/jpeg', '2016/01/16/14529261856319ki2l6.jpg', '2016/01/16/thumbnail/14529261856319ki2l6.jpg', '?file=14529261856319ki2l6.jpg&dt=2016/01/16', null, null, null, '1452926185');
INSERT INTO `pcms_upload` VALUES ('354', '145292686107711354r.jpg', '121443', 'image/jpeg', '2016/01/16/145292686107711354r.jpg', '2016/01/16/thumbnail/145292686107711354r.jpg', '?file=145292686107711354r.jpg&dt=2016/01/16', null, null, null, '1452926861');
INSERT INTO `pcms_upload` VALUES ('357', '14529387854411bc6kz.jpg', '211842', 'image/jpeg', '2016/01/16/14529387854411bc6kz.jpg', '2016/01/16/thumbnail/14529387854411bc6kz.jpg', '?file=14529387854411bc6kz.jpg&dt=2016/01/16', null, null, null, '1452938785');
INSERT INTO `pcms_upload` VALUES ('360', '14529388595102kgnbu.jpg', '140786', 'image/jpeg', '2016/01/16/14529388595102kgnbu.jpg', '2016/01/16/thumbnail/14529388595102kgnbu.jpg', '?file=14529388595102kgnbu.jpg&dt=2016/01/16', null, null, null, '1452938859');
INSERT INTO `pcms_upload` VALUES ('359', '14529388299734d7ue7.jpg', '64062', 'image/jpeg', '2016/01/16/14529388299734d7ue7.jpg', '2016/01/16/thumbnail/14529388299734d7ue7.jpg', '?file=14529388299734d7ue7.jpg&dt=2016/01/16', null, null, null, '1452938830');
INSERT INTO `pcms_upload` VALUES ('361', '14529389038349nbb52.jpg', '412184', 'image/jpeg', '2016/01/16/14529389038349nbb52.jpg', '2016/01/16/thumbnail/14529389038349nbb52.jpg', '?file=14529389038349nbb52.jpg&dt=2016/01/16', null, null, null, '1452938904');
INSERT INTO `pcms_upload` VALUES ('364', '14529390358004wxcns.jpg', '48235', 'image/jpeg', '2016/01/16/14529390358004wxcns.jpg', '2016/01/16/thumbnail/14529390358004wxcns.jpg', '?file=14529390358004wxcns.jpg&dt=2016/01/16', null, null, null, '1452939035');
INSERT INTO `pcms_upload` VALUES ('363', '1452938968487325uur.jpg', '179847', 'image/jpeg', '2016/01/16/1452938968487325uur.jpg', '2016/01/16/thumbnail/1452938968487325uur.jpg', '?file=1452938968487325uur.jpg&dt=2016/01/16', null, null, null, '1452938968');
INSERT INTO `pcms_upload` VALUES ('365', '14529390839886so0qs.jpg', '40987', 'image/jpeg', '2016/01/16/14529390839886so0qs.jpg', '2016/01/16/thumbnail/14529390839886so0qs.jpg', '?file=14529390839886so0qs.jpg&dt=2016/01/16', null, null, null, '1452939084');
INSERT INTO `pcms_upload` VALUES ('366', '14529394605445kh9iw.jpg', '331828', 'image/jpeg', '2016/01/16/14529394605445kh9iw.jpg', '2016/01/16/thumbnail/14529394605445kh9iw.jpg', '?file=14529394605445kh9iw.jpg&dt=2016/01/16', null, null, null, '1452939460');
INSERT INTO `pcms_upload` VALUES ('367', '145293954080793fonv.jpg', '436924', 'image/jpeg', '2016/01/16/145293954080793fonv.jpg', '2016/01/16/thumbnail/145293954080793fonv.jpg', '?file=145293954080793fonv.jpg&dt=2016/01/16', null, null, null, '1452939540');
INSERT INTO `pcms_upload` VALUES ('368', '14529488775218lpk32.jpg', '79661', 'image/jpeg', '2016/01/16/14529488775218lpk32.jpg', '2016/01/16/thumbnail/14529488775218lpk32.jpg', '?file=14529488775218lpk32.jpg&dt=2016/01/16', null, null, null, '1452948877');
INSERT INTO `pcms_upload` VALUES ('370', '145294983441451ll7s.jpg', '78056', 'image/jpeg', '2016/01/16/145294983441451ll7s.jpg', '2016/01/16/thumbnail/145294983441451ll7s.jpg', '?file=145294983441451ll7s.jpg&dt=2016/01/16', null, null, null, '1452949834');
INSERT INTO `pcms_upload` VALUES ('371', '14529498808113je95f.jpg', '57026', 'image/jpeg', '2016/01/16/14529498808113je95f.jpg', '2016/01/16/thumbnail/14529498808113je95f.jpg', '?file=14529498808113je95f.jpg&dt=2016/01/16', null, null, null, '1452949880');
INSERT INTO `pcms_upload` VALUES ('372', '14529499479518c6ryg.jpg', '57026', 'image/jpeg', '2016/01/16/14529499479518c6ryg.jpg', '2016/01/16/thumbnail/14529499479518c6ryg.jpg', '?file=14529499479518c6ryg.jpg&dt=2016/01/16', null, null, null, '1452949947');
INSERT INTO `pcms_upload` VALUES ('373', '14529501375177kad71.jpg', '39868', 'image/jpeg', '2016/01/16/14529501375177kad71.jpg', '2016/01/16/thumbnail/14529501375177kad71.jpg', '?file=14529501375177kad71.jpg&dt=2016/01/16', null, null, null, '1452950137');
INSERT INTO `pcms_upload` VALUES ('374', '14529501719361kf4df.jpg', '36348', 'image/jpeg', '2016/01/16/14529501719361kf4df.jpg', '2016/01/16/thumbnail/14529501719361kf4df.jpg', '?file=14529501719361kf4df.jpg&dt=2016/01/16', null, null, null, '1452950171');

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
