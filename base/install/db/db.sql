-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 05 月 29 日 08:44
-- 服务器版本: 5.0.90
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `q229`
--

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_duilian`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_duilian` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `src2` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  `url2` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pwn_advs_duilian`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_lb`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_lb` (
  `id` int(20) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '1',
  `title` char(100) NOT NULL default '',
  `src` char(100) NOT NULL default '',
  `src1` char(255) NOT NULL,
  `url` char(100) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `pwn_advs_lb`
--

INSERT INTO `pwn_advs_lb` (`id`, `groupid`, `title`, `src`, `src1`, `url`, `xuhao`) VALUES
(39, 1, '广告标题', 'advs/pics/20091117/1258428094.jpg', '', 'http://', 2),
(46, 1, '广告标题', 'advs/pics/20091116/1258337436.jpg', '', 'http://', 1),
(45, 1, '广告标题', 'advs/pics/20091117/1258428143.jpg', '', 'http://', 3),
(47, 1, '广告标题', 'advs/pics/20091117/1258427427.jpg', '', 'http://', 4);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_lbgroup`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_lbgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `pwn_advs_lbgroup`
--

INSERT INTO `pwn_advs_lbgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认轮播广告组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_link`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_link` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `src` varchar(100) NOT NULL default '',
  `cl` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- 转存表中的数据 `pwn_advs_link`
--

INSERT INTO `pwn_advs_link` (`id`, `groupid`, `name`, `url`, `xuhao`, `type`, `src`, `cl`) VALUES
(21, 1, '支付宝', 'http://www.alipai.com', 1, '', '', 0),
(22, 1, '淘宝网', 'http://www.taobao.com', 2, '', '', 0),
(33, 1, '网上商城', 'http://www.com', 3, '', '', 0),
(34, 1, '家电批发网', 'http://www.com', 8, '', '', 0),
(35, 1, '松下电器网站', 'http://www.com', 7, '', '', 0),
(36, 1, '都市生活网', 'http://www.com', 6, '', '', 0),
(37, 1, '网银支付', 'http://www.com', 5, '', '', 0),
(38, 1, '售后服务网', 'http://www.com', 10, '', '', 0),
(39, 1, '家电维修网', 'http://www.com', 12, '', '', 0),
(40, 1, '上海热线', 'http://www.com', 11, '', '', 0),
(41, 1, '中国万网', 'http://www.com', 13, '', '', 0),
(42, 1, '11', 'http://www.', 0, '', 'advs/pics/20091117/1258424299.jpg', 0),
(43, 1, '12', 'http://www.', 0, '', 'advs/pics/20091117/1258424486.jpg', 0),
(44, 1, '13', 'http://www', 0, '', 'advs/pics/20091117/1258424496.jpg', 0),
(45, 1, '14', 'http://www', 0, '', 'advs/pics/20091117/1258424504.jpg', 0),
(46, 1, '15', 'http://www', 0, '', 'advs/pics/20091117/1258424512.jpg', 0),
(47, 1, '16', 'http://www', 0, '', 'advs/pics/20091117/1258424520.jpg', 0),
(48, 1, '17', 'http://www', 0, '', 'advs/pics/20091117/1258424529.jpg', 0),
(49, 1, '18', 'http://www', 0, '', 'advs/pics/20091117/1258424536.jpg', 0),
(50, 1, '19', 'http://www', 0, '', 'advs/pics/20091117/1258424544.jpg', 0),
(51, 1, '20', 'http://www', 0, '', 'advs/pics/20091117/1258425556.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_linkgroup`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_linkgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pwn_advs_linkgroup`
--

INSERT INTO `pwn_advs_linkgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认友情链接组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_logo`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_logo` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_advs_logo`
--

INSERT INTO `pwn_advs_logo` (`id`, `groupname`, `src`, `url`) VALUES
(1, '网站标志一', 'advs/pics/20091116/1258357775.jpg', '#');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_movi`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_movi` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_advs_movi`
--

INSERT INTO `pwn_advs_movi` (`id`, `groupname`, `src`) VALUES
(1, '视频广告测试一', 'http://vhead.blog.sina.com.cn/player/outer_player.swf?auto=1&vid=16205152&uid=1504617052');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_pic`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_pic` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_advs_pic`
--

INSERT INTO `pwn_advs_pic` (`id`, `groupname`, `src`, `url`) VALUES
(1, '测试图片广告', 'advs/pics/20091116/1258339439.jpg', 'http://www'),
(2, '首页头部广告', 'advs/pics/20091117/1258439842.jpg', 'http://'),
(3, '广告3', 'advs/pics/20091116/1258338438.jpg', 'http://'),
(4, '订购流程', 'advs/pics/20091116/1258351813.jpg', 'http://');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_pop`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_pop` (
  `id` int(12) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `body` text,
  `ifpop` int(1) NOT NULL default '0',
  `popwidth` int(10) default NULL,
  `popheight` int(10) default NULL,
  `popleft` int(10) default NULL,
  `poptop` int(10) default NULL,
  `poptoolbar` int(1) default NULL,
  `popmenubar` int(1) default NULL,
  `popstatus` int(1) default NULL,
  `poplocation` int(1) default NULL,
  `popscrollbars` varchar(50) default NULL,
  `popresizable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_pop`
--

INSERT INTO `pwn_advs_pop` (`id`, `title`, `body`, `ifpop`, `popwidth`, `popheight`, `popleft`, `poptop`, `poptoolbar`, `popmenubar`, `popstatus`, `poplocation`, `popscrollbars`, `popresizable`) VALUES
(1, '弹出窗口', '窗口内容 ', 0, 400, 300, 0, 0, 0, 0, 0, 0, 'auto', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_text`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_text` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `text` char(200) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_advs_text`
--

INSERT INTO `pwn_advs_text` (`id`, `groupname`, `text`, `url`) VALUES
(1, '促销广告一', '本季特大优惠活动开始啦qq', 'http://www.com');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_admin`
--

CREATE TABLE IF NOT EXISTS `pwn_base_admin` (
  `id` int(6) NOT NULL auto_increment,
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `job` varchar(50) NOT NULL,
  `jobid` varchar(20) NOT NULL,
  `moveable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `pwn_base_admin`
--

INSERT INTO `pwn_base_admin` (`id`, `user`, `password`, `name`, `job`, `jobid`, `moveable`) VALUES
(3, 'admin', '202cb962ac59075b964b07152d234b70', '管理员', '管理员', 'A001', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminauth`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminauth` (
  `id` int(6) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `auth` int(5) NOT NULL default '0',
  `name` char(50) NOT NULL default '',
  `intro` char(255) NOT NULL default '',
  `xuhao` int(10) NOT NULL default '0',
  `pid` int(10) NOT NULL default '0',
  `pname` char(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

--
-- 转存表中的数据 `pwn_base_adminauth`
--

INSERT INTO `pwn_base_adminauth` (`id`, `coltype`, `auth`, `name`, `intro`, `xuhao`, `pid`, `pname`) VALUES
(69, 'advs', 91, '网站标志管理', '', 1, 2, ''),
(17, 'advs', 95, '网站广告管理', '', 5, 2, ''),
(30, 'advs', 96, '友情链接管理', '', 4, 7, ''),
(1, 'base', 1, '网站参数设置', '', 1, 0, ''),
(2, 'base', 2, '修改管理密码', '', 2, 0, ''),
(3, 'base', 3, '管理账户维护', '', 3, 0, ''),
(5, 'base', 5, '网站排版设置', '', 5, 0, ''),
(66, 'base', 6, '模块插件管理', '', 6, 0, ''),
(67, 'base', 7, '软件升级更新', '', 7, 0, ''),
(37, 'comment', 130, '点评模块参数设置', '', 0, 13, ''),
(11, 'comment', 131, '点评分类', '', 1, 13, ''),
(26, 'comment', 132, '点评管理', '', 2, 13, ''),
(120, 'shop', 325, '订单完成确认', '', 13, 31, ''),
(119, 'shop', 324, '订单配送确认', '', 12, 31, ''),
(118, 'shop', 323, '订单付款确认', '', 11, 31, ''),
(117, 'shop', 322, '订单调价权限', '', 9, 31, ''),
(4, 'member', 50, '会员类型设置', '', 1, 5, ''),
(42, 'member', 51, '会员模块参数设置', '', 11, 6, ''),
(19, 'member', 52, '会员查询管理', '', 2, 5, ''),
(20, 'member', 53, '会员资料查询', '', 3, 5, ''),
(21, 'member', 54, '会员资料修改', '', 4, 5, ''),
(22, 'member', 55, '会员邮件发送', '', 5, 5, ''),
(23, 'member', 56, '会员权限管理', '', 6, 5, ''),
(24, 'member', 57, '会员公告管理', '', 7, 5, ''),
(32, 'member', 58, '模拟会员登录', '', 8, 5, ''),
(33, 'member', 59, '会员实名认证', '', 9, 5, ''),
(34, 'member', 60, '会员删除权限', '', 10, 5, ''),
(63, 'member', 61, '会员区域设置', '', 11, 6, ''),
(64, 'member', 62, '会员行业分类', '', 12, 0, ''),
(65, 'member', 63, '积分规则设置', '', 13, 6, ''),
(35, 'member', 64, '会员转移类型', '', 11, 5, ''),
(36, 'member', 65, '重设会员密码', '', 12, 5, ''),
(68, 'member', 66, '积分录入权限', '', 16, 6, ''),
(6, 'menu', 11, '导航菜单设置', '', 1, 1, ''),
(38, 'news', 120, '文章模块参数设置', '', 0, 12, ''),
(39, 'news', 121, '文章分类', '', 1, 12, ''),
(13, 'news', 122, '文章管理', '', 2, 12, ''),
(12, 'news', 123, '文章专题设置', '', 3, 12, ''),
(40, 'news', 125, '文章发布', '', 5, 12, ''),
(41, 'news', 126, '文章修改', '', 6, 12, ''),
(43, 'page', 301, '网页分组和管理', '', 1, 30, ''),
(27, 'tools', 81, '访问统计系统', '', 1, 7, ''),
(29, 'tools', 82, '投票调查系统', '', 3, 7, ''),
(72, 'base', 8, '管理菜单设置', '', 8, 0, ''),
(116, 'shop', 321, '订单查询管理', '', 9, 31, ''),
(115, 'shop', 320, '商品修改', '', 8, 31, ''),
(114, 'shop', 319, '商品发布', '', 7, 31, ''),
(113, 'shop', 317, '商品管理', '', 5, 31, ''),
(112, 'shop', 316, '品牌管理', '', 4, 31, ''),
(109, 'shop', 310, '网店参数设置', '', 0, 31, ''),
(110, 'shop', 311, '配送方法设置', '', 1, 31, ''),
(111, 'shop', 313, '商品分类管理', '', 4, 31, ''),
(125, 'shop', 328, '订单退订确认', '', 15, 31, ''),
(124, 'shop', 331, '商品销售统计', '', 16, 31, ''),
(123, 'shop', 330, '订单查询统计', '', 16, 31, ''),
(122, 'shop', 327, '订单退货确认', '', 15, 31, ''),
(121, 'shop', 326, '订单退款确认', '', 14, 31, ''),
(87, 'base', 9, '模块安装卸载', '', 9, 0, ''),
(88, 'tools', 83, '图片投票系统', '', 3, 7, ''),
(89, 'tools', 84, 'QQ客服系统', '', 4, 7, ''),
(90, 'tools', 85, '51客服系统', '', 5, 7, ''),
(91, 'tools', 86, '51la统计系统', '', 6, 7, ''),
(92, 'tools', 87, '移动短信留言', '', 7, 7, ''),
(93, 'member', 67, '财务收款入账', '', 16, 6, ''),
(94, 'member', 68, '会员帐务查询', '', 16, 6, ''),
(95, 'member', 69, '支付方法设置', '', 16, 6, ''),
(96, 'member', 70, '帐务查询统计', '', 16, 6, ''),
(97, 'job', 221, '招聘职位发布', '', 1, 22, ''),
(98, 'job', 222, '招聘职位管理', '', 2, 22, ''),
(99, 'job', 223, '求职申请处理', '', 3, 22, ''),
(100, 'job', 224, '企业人才库查询', '', 4, 22, ''),
(101, 'job', 225, '应聘表单设置', '', 7, 22, ''),
(126, 'feedback', 211, '反馈表单设置', '', 1, 21, ''),
(127, 'feedback', 212, '反馈留言管理', '', 3, 21, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminmenu`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminmenu` (
  `id` int(6) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `pwn_base_adminmenu`
--

INSERT INTO `pwn_base_adminmenu` (`id`, `pid`, `menu`, `url`, `xuhao`) VALUES
(15, 0, '网站标志管理', 'advs/admin/advs_logo_modi.php?id=1', 1),
(16, 0, '轮播广告管理', 'advs/admin/advs_lb.php', 2),
(17, 0, '发布新的商品', 'shop/admin/shop_conadd.php', 7),
(18, 0, '商品查询管理', 'shop/admin/shop_con.php', 8),
(19, 0, '订单查询管理', 'shop/admin/order.php', 13),
(20, 0, '会员帐务管理', 'member/admin/member_common.php?searchmodle=account', 15),
(21, 0, '支付方法设置', 'member/admin/paycenter.php', 4),
(22, 0, '配送方法设置', 'shop/admin/yun_method.php', 6),
(23, 0, '配送区域设置', 'shop/admin/yun_zone.php', 5),
(24, 0, '修改网站介绍', 'page/admin/page.php', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminrights`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminrights` (
  `id` int(50) NOT NULL auto_increment,
  `auth` char(20) default NULL,
  `user` char(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3248 ;

--
-- 转存表中的数据 `pwn_base_adminrights`
--

INSERT INTO `pwn_base_adminrights` (`id`, `auth`, `user`) VALUES
(3247, '212', 'admin'),
(3246, '211', 'admin'),
(3245, '225', 'admin'),
(3244, '224', 'admin'),
(3243, '223', 'admin'),
(3242, '222', 'admin'),
(3241, '221', 'admin'),
(3240, '70', 'admin'),
(3239, '69', 'admin'),
(3238, '68', 'admin'),
(3237, '67', 'admin'),
(3236, '87', 'admin'),
(3235, '86', 'admin'),
(3234, '85', 'admin'),
(3233, '84', 'admin'),
(3232, '83', 'admin'),
(3231, '9', 'admin'),
(3230, '326', 'admin'),
(3229, '327', 'admin'),
(3228, '330', 'admin'),
(3227, '331', 'admin'),
(3226, '328', 'admin'),
(3225, '313', 'admin'),
(3224, '311', 'admin'),
(3223, '310', 'admin'),
(3222, '316', 'admin'),
(3221, '317', 'admin'),
(3220, '319', 'admin'),
(3219, '320', 'admin'),
(3218, '321', 'admin'),
(3217, '8', 'admin'),
(3216, '82', 'admin'),
(3215, '81', 'admin'),
(3214, '301', 'admin'),
(3213, '126', 'admin'),
(3212, '125', 'admin'),
(3211, '123', 'admin'),
(3210, '122', 'admin'),
(3209, '121', 'admin'),
(3208, '120', 'admin'),
(3207, '11', 'admin'),
(3206, '66', 'admin'),
(3205, '65', 'admin'),
(3204, '64', 'admin'),
(3203, '63', 'admin'),
(3202, '62', 'admin'),
(3201, '61', 'admin'),
(3200, '60', 'admin'),
(3199, '59', 'admin'),
(3198, '58', 'admin'),
(3197, '57', 'admin'),
(3196, '56', 'admin'),
(3195, '55', 'admin'),
(3194, '54', 'admin'),
(3193, '53', 'admin'),
(3192, '52', 'admin'),
(3191, '51', 'admin'),
(3190, '50', 'admin'),
(3189, '322', 'admin'),
(3188, '323', 'admin'),
(3187, '324', 'admin'),
(3186, '325', 'admin'),
(3185, '132', 'admin'),
(3184, '131', 'admin'),
(3183, '130', 'admin'),
(3182, '7', 'admin'),
(3181, '6', 'admin'),
(3180, '5', 'admin'),
(3179, '3', 'admin'),
(3178, '2', 'admin'),
(3177, '1', 'admin'),
(3176, '96', 'admin'),
(3175, '95', 'admin'),
(3174, '91', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_border`
--

CREATE TABLE IF NOT EXISTS `pwn_base_border` (
  `id` int(12) NOT NULL auto_increment,
  `bordertype` varchar(10) NOT NULL default 'border',
  `tempid` char(8) NOT NULL default '',
  `tempname` varchar(50) NOT NULL default '边框模板',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- 转存表中的数据 `pwn_base_border`
--

INSERT INTO `pwn_base_border` (`id`, `bordertype`, `tempid`, `tempname`) VALUES
(1, 'border', '001', '可选颜色边框模板'),
(2, 'border', '002', '可选颜色边框模板'),
(3, 'border', '003', '可选颜色边框模板'),
(4, 'border', '004', '可选颜色边框模板'),
(5, 'border', '005', '可选颜色边框模板'),
(6, 'border', '006', '可选颜色边框模板'),
(66, 'lable', '212', '竖排菜单式标签切换边框模板,无外框线'),
(8, 'border', '008', '可选颜色边框模板(浅色调)'),
(9, 'border', '009', '可选颜色边框模板'),
(10, 'border', '010', '可选颜色边框模板'),
(11, 'border', '011', '可选颜色边框模板'),
(12, 'border', '012', '可选颜色边框模板(浅色调)'),
(13, 'border', '013', '可选颜色边框模板'),
(14, 'border', '014', '可选颜色边框模板'),
(15, 'border', '015', '可选颜色边框模板'),
(16, 'border', '016', '可选颜色边框模板'),
(17, 'border', '017', '可选颜色边框模板'),
(18, 'border', '018', '可选颜色边框模板'),
(19, 'border', '501', '浅色调创意边框模板'),
(20, 'border', '502', '边框模板'),
(22, 'border', '504', '边框模板'),
(23, 'border', '505', '边框模板'),
(34, 'border', '020', '可选颜色边框模板(浅色调)'),
(25, 'border', '507', '边框模板'),
(35, 'border', '503', '无框线简约边框模版'),
(27, 'border', '509', '边框模板'),
(37, 'border', '506', '浅色调无框线边框模版'),
(31, 'border', '513', '浅灰色圆角边框模板'),
(33, 'border', '019', '可选颜色边框模板(浅色调)'),
(38, 'border', '508', '浅色调边框模版'),
(39, 'border', '510', '左侧标题栏浅色调模版'),
(40, 'border', '511', '无标题栏圆角边框模版'),
(41, 'border', '512', '无标题栏圆角边框模版'),
(42, 'border', '514', '边框模板'),
(43, 'border', '021', '左侧标题栏可变色边框模板'),
(44, 'border', '515', '灰色外背景边框模板'),
(45, 'border', '516', '无标题栏圆角灰色背景边框模版'),
(46, 'border', '517', '无标题栏圆角浅色背景边框模板'),
(47, 'lable', '201', '标签切换边框模板,浅蓝简约型'),
(48, 'lable', '051', '可选颜色,标签切换边框模板,带总标题'),
(49, 'lable', '202', '标签切换边框模板,红黑标签，无框线'),
(50, 'lable', '203', '标签切换边框模板'),
(51, 'lable', '204', '标签切换边框模板,浅灰简约,带总标题栏'),
(52, 'lable', '052', '可选颜色,标签切换边框模板,带总标题'),
(53, 'lable', '205', '标签切换边框模板,圆角,深色'),
(54, 'lable', '053', '可选颜色,标签切换边框模板,圆角'),
(55, 'lable', '206', '标签切换边框模板,圆角,浅黄色调'),
(56, 'lable', '207', '标签切换边框模板,圆角,浅蓝淡雅风格'),
(57, 'lable', '208', '标签切换边框模板,内圆角,浅蓝淡雅风格'),
(58, 'lable', '209', '标签切换边框模板,内圆角,灰白渐变'),
(59, 'lable', '210', '标签切换边框模板,圆角,浅色渐变'),
(60, 'lable', '054', '可选颜色,标签切换边框模板,圆角'),
(61, 'lable', '055', '可选颜色,标签切换边框模板'),
(62, 'lable', '211', '标签切换边框模板,圆角,橙色+灰色'),
(63, 'border', '500', '条幅边框,无标题栏，搜索条登录框等专用'),
(64, 'border', '022', '可选颜色边框模板'),
(67, 'lable', '056', '可选颜色,竖排菜单式标签切换边框,无框线'),
(75, 'border', '519', '无标题栏边框模版(圆角，粗边线)'),
(77, 'border', '023', '可选颜色边框模板'),
(78, 'border', '024', '可选颜色边框模板'),
(87, 'border', '596', '浅色圆角边框'),
(81, 'border', '606', '浅色圆角边框'),
(83, 'border', '520', '红色标题栏浅灰背景边框'),
(84, 'border', '604', '搜索条专用边框'),
(85, 'border', '605', '黑色标题栏圆角边框'),
(86, 'border', '595', '浅色圆角边框'),
(88, 'border', '639', '黑色斜纹边框'),
(89, 'border', '640', '灰色边框黑色斜纹'),
(90, 'border', '641', '精品钻饰专用边框'),
(91, 'border', '642', '饰品推荐专用边框'),
(92, 'border', '643', '友情链接专用边框'),
(93, 'border', '644', '搜索条专用边框(黑色)');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_coltype`
--

CREATE TABLE IF NOT EXISTS `pwn_base_coltype` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL default '',
  `colname` varchar(50) NOT NULL default '',
  `sname` varchar(30) NOT NULL,
  `ifadmin` int(1) NOT NULL default '1',
  `ifchannel` int(1) NOT NULL default '0',
  `ifpubplus` int(1) NOT NULL default '1',
  `moveable` int(1) NOT NULL default '0',
  `installed` int(1) NOT NULL default '1',
  `classtbl` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- 转存表中的数据 `pwn_base_coltype`
--

INSERT INTO `pwn_base_coltype` (`id`, `coltype`, `colname`, `sname`, `ifadmin`, `ifchannel`, `ifpubplus`, `moveable`, `installed`, `classtbl`) VALUES
(1, 'base', '基础模块', '基础', 0, 0, 0, 0, 1, ''),
(2, 'diy', '自定内容', '自定义', 0, 0, 1, 0, 1, ''),
(3, 'menu', '导航菜单', '菜单', 1, 0, 1, 0, 1, ''),
(5, 'index', '首页模块', '首页', 0, 1, 0, 0, 1, ''),
(20, 'page', '网页模块', '网页', 1, 0, 1, 0, 1, ''),
(21, 'news', '文章模块', '文章', 1, 1, 1, 0, 1, '_news_cat'),
(31, 'shop', '网上购物', '购物', 1, 1, 1, 0, 1, '_shop_cat'),
(28, 'comment', '互动点评', '点评', 1, 1, 1, 0, 1, '_comment_cat'),
(30, 'member', '会员模块', '会员', 1, 1, 1, 0, 1, ''),
(97, 'search', '全站搜索', '搜索', 0, 0, 1, 0, 1, ''),
(100, 'effect', '素材特效', '特效', 0, 0, 1, 0, 1, ''),
(105, 'job', '企业招聘', '招聘', 1, 1, 1, 1, 1, ''),
(114, 'feedback', '留言反馈', '反馈', 1, 1, 1, 1, 1, ''),
(110, 'advs', '网站广告', '广告', 1, 0, 1, 0, 1, ''),
(112, 'tools', '辅助工具', '工具', 1, 0, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_config`
--

CREATE TABLE IF NOT EXISTS `pwn_base_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_base_config`
--

INSERT INTO `pwn_base_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '网站名称', 'input', '30', 'SiteName', '饰品商城', '用于在网页标题、导航栏处显示'),
(2, '网站网址', 'input', '30', 'SiteHttp', 'http://127.0.0.1/', '网站的实际访问网址,末尾加“/”'),
(4, '服务邮箱', 'input', '30', 'SiteEmail', 'service@mydomain.com', '在发送系统邮件时作为发件人邮件'),
(5, '邮件转发方式', 'ownersys', '1', 'ownersys', '0', 'LINUX/UNIX服务器一般可使用内置邮件系统转发邮件；WINDOWS服务器建议使用外部SMTP邮箱转发，并设置以下SMTP邮箱参数'),
(6, 'SMTP服务器', 'input', '30', 'owner_m_smtp', 'mail.mydomain.com', ''),
(7, 'SMTP邮箱用户', 'input', '30', 'owner_m_user', 'alex@mydomain.com', ''),
(8, 'SMTP邮箱密码', 'input', '30', 'owner_m_pass', '123456', ''),
(5, 'SMTP转发邮箱', 'input', '30', 'owner_m_mail', 'alex@mydomain.com', ''),
(9, 'SMTP身份验证', 'YN', '10', 'owner_m_check', '1', ''),
(10, '是否生成并使用静态HTML网页', 'YN', '10', 'CatchOpen', '0', ''),
(11, 'HTML静态网页更新时间(秒)', 'input', '8', 'CatchTime', '3600', '超过此时间访问静态页面时，重新生成静态页并刷新页面'),
(3, '软件授权用户账号', 'input', '30', 'phpwebUser', 'qq390339146', '在本软件安装、升级或使用其他服务时所采用的软件授权用户登录帐号'),
(99, '安全校验码', 'code', '30', 'safecode', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_pageset`
--

CREATE TABLE IF NOT EXISTS `pwn_base_pageset` (
  `id` int(12) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `coltype` varchar(50) NOT NULL default '',
  `pagename` varchar(50) NOT NULL default '',
  `th` int(5) NOT NULL default '200',
  `ch` int(5) NOT NULL default '500',
  `bh` int(5) NOT NULL default '200',
  `pagetitle` varchar(255) NOT NULL default '',
  `metakey` varchar(255) NOT NULL default '',
  `metacon` text NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  `buildhtml` varchar(12) NOT NULL default '0',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=319 ;

--
-- 转存表中的数据 `pwn_base_pageset`
--

INSERT INTO `pwn_base_pageset` (`id`, `name`, `coltype`, `pagename`, `th`, `ch`, `bh`, `pagetitle`, `metakey`, `metacon`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`, `buildhtml`, `xuhao`) VALUES
(126, '友情链接', 'advs', 'link', 186, 357, 278, '', '友情链接', '友情链接', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(92, '点评检索', 'comment', 'query', 186, 32, 278, '', '0', '0', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'catid', 12),
(88, '点评详情', 'comment', 'detail', 184, 686, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'id', 17),
(123, '点评频道首页', 'comment', 'main', 186, 382, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'index', 11),
(1, '首页', 'index', 'index', 184, 1403, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, 'rgb(255,255,255)', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'index', 1),
(241, '会员主页', 'member', 'homepage', 186, 381, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 15),
(5, '会员登录', 'member', 'login', 186, 354, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, 'rgb(255,255,255)', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 1),
(6, '重设密码', 'member', 'lostpass', 184, 275, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 2),
(12, '会员注册', 'member', 'reg', 184, 413, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(202, '会员中心首页', 'member', 'main', 186, 424, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 1),
(203, '登录帐号设置', 'member', 'account', 186, 348, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 2),
(204, '头像签名设置', 'member', 'person', 186, 397, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 3),
(205, '详细资料修改', 'member', 'detail', 186, 423, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 5),
(206, '联系信息设置', 'member', 'contact', 186, 415, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 6),
(207, '会员公告详情', 'member', 'notice', 186, 337, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 7),
(208, '文章发布', 'member', 'newsfabu', 164, 520, 152, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 8),
(209, '文章管理', 'member', 'newsgl', 162, 325, 150, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 9),
(210, '文章修改', 'member', 'newsmodify', 164, 808, 152, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 10),
(318, '投诉建议', 'page', 'html_tousu', 200, 500, 200, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(231, '我的收藏夹', 'member', 'fav', 186, 259, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 12),
(232, '我的好友', 'member', 'friends', 186, 259, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 12),
(233, '我的点评', 'member', 'comment', 184, 257, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 13),
(228, '文章分类', 'member', 'newscat', 147, 267, 150, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 9),
(234, '我的站内短信', 'member', 'msn', 186, 339, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 15),
(2, '文章检索', 'news', 'query', 186, 357, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'catid', 2),
(3, '文章正文', 'news', 'detail', 184, 827, 276, '', '0', '0', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'id', 3),
(33, '频道首页', 'news', 'main', 184, 0, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'index', 0),
(129, '内容页', 'page', 'html', 184, 355, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'id', 1),
(16, '全站搜索', 'search', 'search', 186, 207, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 2),
(246, '我的积分', 'member', 'membercent', 186, 298, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19),
(247, '会员文章', 'news', 'membernews', 164, 185, 152, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 12),
(310, '订单查询', 'member', 'shoporder', 184, 346, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 8),
(309, '订单付款', 'shop', 'shoporderpay', 186, 664, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 9),
(308, '商品订购', 'shop', 'startorder', 186, 1190, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 6),
(300, '频道首页', 'shop', 'main', 184, 0, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'index', 1),
(301, '商品查询', 'shop', 'query', 184, 638, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'catid', 2),
(302, '商品详情', 'shop', 'detail', 186, 1030, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'id', 3),
(303, '品牌查询', 'shop', 'brandquery', 186, 1372, 278, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 4),
(304, '品牌详情', 'shop', 'branddetail', 133, 1068, 0, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 5),
(305, '购物车', 'shop', 'cart', 186, 664, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 6),
(306, '订单详情', 'shop', 'shoporderdetail', 186, 793, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 9),
(307, '品牌首页', 'shop', 'brand', 186, 3986, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, 'rgb(255, 255, 255) none repeat scroll 0% 0%', '', 0, 0, 'auto', 'transparent url(effect/source/bg/x08.jpg) repeat-x scroll center top', '900', 'transparent none repeat scroll 0% 0%', '900', 10, 'transparent none repeat scroll 0% 0%', '900', '0', 4),
(289, '分组首页', 'page', 'html_main', 200, 500, 200, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(290, '会员付款记录', 'member', 'paylist', 186, 348, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19),
(291, '会员消费记录', 'member', 'buylist', 133, 348, 215, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19),
(292, '招聘职位查询', 'job', 'main', 186, 357, 278, '诚聘英才', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'index', 2),
(293, '招聘职位详情', 'job', 'detail', 186, 1407, 278, '', '0', '0', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', 'id', 3),
(311, '关于我们', 'page', 'html_aboutus', 186, 357, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(312, '购物指南', 'page', 'html_guide', 184, 355, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(313, '支付方式', 'page', 'html_payment', 184, 355, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(314, '配送说明', 'page', 'html_dev', 184, 355, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(315, '联系方式', 'page', 'html_contact', 184, 355, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(316, '售后服务', 'page', 'html_service', 184, 355, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(317, '留言反馈', 'feedback', 'main', 186, 472, 278, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 1),
(299, '帐户在线充值', 'member', 'onlinepay', 184, 237, 276, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_pagetemp`
--

CREATE TABLE IF NOT EXISTS `pwn_base_pagetemp` (
  `id` int(12) NOT NULL auto_increment,
  `tempname` varchar(50) NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `pwn_base_pagetemp`
--

INSERT INTO `pwn_base_pagetemp` (`id`, `tempname`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`) VALUES
(31, '默认背景方案', 'transparent', 'none', 'center top', 'repeat', 'scroll', 990, '#ffffff', '', 0, 0, 'auto', 'url(effect/source/bg/x08.jpg) repeat-x center top', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plus`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plus` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4482 ;

--
-- 转存表中的数据 `pwn_base_plus`
--

INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4085, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3991, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'cart', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3678, 'shop', 'modShopComment', '商品点评', 'shop', 'detail', 'tpl_shop_comment.htm', '-1', 'K595', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 750, 349, 514, 0, 3, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, -1, -1, 'fill', '商品评论', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3677, 'member', 'modMemberOnlinePay', '帐户在线充值', 'member', 'onlinepay', 'tpl_member_onlinepay.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 202, 35, 210, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '帐户在线充值', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3674, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'onlinepay', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3976, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'brandquery', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3977, 'diy', 'modPic', '图片/FLASH', 'shop', 'brandquery', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3978, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'brandquery', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3979, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'brandquery', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3970, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'brand', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 531, 0, 0, 14, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3638, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'brand', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3639, 'shop', 'modShopBrandAll', '分类品牌列表', 'shop', 'brand', 'tpl_shop_brandall.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 750, 3954, 30, 240, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 137, 50, 'fill', '品牌查询', '\r\n-1 \r\n', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3640, 'shop', 'modShopTwoClassBrand', '分类品牌组合查询', 'shop', 'branddetail', 'tpl_shoptwoclass_brand.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 180, 1017, 0, 720, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 140, 50, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3642, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'branddetail', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3957, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'detail', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 643, 0, 759, 15, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3994, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'cart', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 662, 0, 0, 90, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3646, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'cart', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3926, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 501, 142, 1060, 248, 3, 0, 1, 'id', 'desc', 1, 30, '_self', 124, 80, 200, 140, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '饰品推荐', '', '', 5, 0, 'hidden', 'content', 'block'),
(4043, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'shoporderdetail', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 662, 0, 0, 90, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3784, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'branddetail', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3951, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3952, 'diy', 'modPic', '图片/FLASH', 'shop', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3953, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3954, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3635, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'shoporderdetail', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3628, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'shoporder', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3633, 'shop', 'modShopMemberOrder', '会员订单查询', 'member', 'shoporder', 'tpl_shop_order.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 780, 154, 35, 210, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '订单查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3630, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'shoporder', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3619, 'shop', 'modShopOrderDetail', '订单详情', 'shop', 'shoporderdetail', 'tpl_shop_orderdetail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 750, 761, 30, 240, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3950, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3975, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'brandquery', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4003, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'startorder', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4029, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'shoporderpay', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 11, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4024, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'shoporderpay', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3776, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'membernews', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3768, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newscat', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3764, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsmodify', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3763, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsgl', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3762, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsfabu', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3967, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'brand', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4387, 'advs', 'modLogo', '网站标志', 'member', 'homepage', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4388, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'homepage', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4115, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'account', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3616, 'shop', 'modShopCart', '购物车', 'shop', 'cart', 'tpl_shop_cart.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 750, 145, 30, 240, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3617, 'shop', 'modShopStartOrder', '商品订购', 'shop', 'startorder', 'tpl_shop_startorder.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 750, 1158, 30, 240, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品订购', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3990, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'cart', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4063, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'lostpass', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4464, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4465, 'advs', 'modLogo', '网站标志', 'shop', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4466, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3998, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'startorder', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3999, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'startorder', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4000, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'startorder', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4001, 'diy', 'modPic', '图片/FLASH', 'shop', 'startorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4002, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'startorder', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4027, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'shoporderpay', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4026, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'shoporderpay', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4025, 'diy', 'modPic', '图片/FLASH', 'shop', 'shoporderpay', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4177, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'shoporder', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4178, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'shoporder', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3711, 'shop', 'modShopSmallCart', '购物车提示信息', 'news', 'membernews', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4176, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'shoporder', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3823, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'membernews', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 175, 38, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 家电商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4220, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'membercent', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4221, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'membercent', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4222, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'membercent', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4452, 'diy', 'modHeadPic', '头部自定义效果图', 'search', 'search', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4453, 'shop', 'modShopSearchForm', '商品搜索表单', 'search', 'search', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4454, 'advs', 'modLogo', '网站标志', 'search', 'search', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4455, 'diy', 'modButtomInfo', '底部信息编辑区', 'search', 'search', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4442, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4443, 'advs', 'modLogo', '网站标志', 'page', 'html', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4444, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3939, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'query', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3940, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'query', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3941, 'diy', 'modPic', '图片/FLASH', 'shop', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3942, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'query', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3943, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4408, 'shop', 'modShopSearchForm', '商品搜索表单', 'news', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4409, 'advs', 'modLogo', '网站标志', 'news', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4410, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4419, 'shop', 'modShopSearchForm', '商品搜索表单', 'news', 'query', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4420, 'advs', 'modLogo', '网站标志', 'news', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4421, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4243, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'msn', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4244, 'advs', 'modLogo', '网站标志', 'member', 'msn', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4245, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'msn', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3815, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newscat', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 175, 38, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 家电商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4210, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'comment', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4211, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'comment', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4232, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'friends', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4233, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'friends', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4365, 'advs', 'modLogo', '网站标志', 'comment', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4366, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4376, 'advs', 'modLogo', '网站标志', 'comment', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4377, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3798, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3949, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3974, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'brandquery', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3719, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'branddetail', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3989, 'diy', 'modPic', '图片/FLASH', 'shop', 'cart', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3703, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'newscat', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4242, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'msn', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4418, 'diy', 'modHeadPic', '头部自定义效果图', 'news', 'query', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3809, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsfabu', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 175, 38, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 家电商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4052, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'login', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3663, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'buylist', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3668, 'member', 'modMemberBuyList', '会员消费记录', 'member', 'buylist', 'tpl_member_buylist.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 144, 35, 210, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '消费记录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3665, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'buylist', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4104, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 300, 35, 210, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4098, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'notice', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4386, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'homepage', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3672, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'onlinepay', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 237, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4070, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'reg', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4071, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'reg', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4072, 'diy', 'modPic', '图片/FLASH', 'member', 'reg', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4073, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'reg', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4074, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'reg', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(319, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'reg', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 141, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(323, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'main', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(324, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '', 'H596', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 780, 173, 249, 210, 4, 12, 5, 'id', 'desc', 0, 25, '_self', 0, -1, 100, 100, 'fill', '会员公告', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(394, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '', 'E596', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 540, 210, 35, 210, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员登录信息', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(326, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '', 'H596', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 227, 210, 35, 763, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员积分', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4121, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 200, 35, 210, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4132, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'person', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4138, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 313, 35, 210, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4127, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'person', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4128, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'person', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(336, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'main', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1346, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'main', 'tpl_comment_searchform.htm', '-1', 'E018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 179, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评搜索', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4069, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'reg', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(344, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query.htm', '', '1000', '#e6e6fa', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 571, 35, 0, 2, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '留言点评', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(347, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content.htm', '', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#f0f0f0', '#505050', '#fff', '-1', 990, 664, 35, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '点评详情', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(348, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'detail', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 990, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1046, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'query', 'tpl_navpath.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 35, 0, 210, 1, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3932, 'advs', 'modLinkPic', '图片友情链接', 'index', 'index', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 24, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(1068, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'detail', 'tpl_navpath.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 35, 0, 0, 1, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1073, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', 'K595', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 750, 402, 425, 0, 3, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, 100, 100, 'fill', '相关评论', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4080, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4081, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4082, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4083, 'diy', 'modPic', '图片/FLASH', 'member', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4084, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'main', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4479, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'onlinepay', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(385, 'page', 'modPageContent', '网页内容详情', 'page', 'html', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3223, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(391, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 650, 300, 52, 142, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员登录', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(392, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'login', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 141, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(395, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'homepage', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 990, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(397, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '', 'E018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 512, 211, 35, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员信息', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(398, 'comment', 'modMemberCommentList', '会员最新点评', 'member', 'homepage', 'tpl_membercommentlist.htm', '', 'E018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '{#RP#}comment/class/index.php?mid={#mid#}', 470, 171, 208, 520, 3, 12, 5, 'id', 'desc', 0, 20, '_self', 0, -1, 100, 100, 'fill', '我的点评', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4429, 'diy', 'modHeadPic', '头部自定义效果图', 'news', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4430, 'shop', 'modShopSearchForm', '商品搜索表单', 'news', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4431, 'advs', 'modLogo', '网站标志', 'news', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4432, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1014, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist_time.htm', '-1', 'E018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 470, 167, 35, 520, 7, 10, 5, 'id', 'desc', 0, 20, '_self', 0, -1, 100, 100, 'fill', '我的文章', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4109, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'account', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4110, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'account', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4111, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'account', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(411, 'news', 'modMemberNewsSearchForm', '会员文章搜索', 'news', 'membernews', 'tpl_membernews_searchform.htm', '', 'D018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 205, 183, 0, 0, 3, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章搜索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(1061, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery_cap.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 145, 35, 220, 8, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '会员文章', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(413, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'membernews', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 677, 28, 0, 221, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(4149, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4155, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 386, 35, 210, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4180, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'shoporder', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4166, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'contact', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(420, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 109, 35, 210, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的收藏夹', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(421, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'fav', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3024, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 109, 35, 210, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '我的好友', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(424, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'friends', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(426, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 302, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的站内短信', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(427, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'msn', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(429, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'comment', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(430, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 110, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的点评', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(432, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'membercent', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(433, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 261, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的积分', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(435, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsfabu', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 141, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(436, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 478, 40, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章发布', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(438, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsgl', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 141, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(440, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 148, 30, 200, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(441, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newscat', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 141, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(443, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 175, 32, 200, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章分类管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(4144, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4145, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'detail', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(453, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsmodify', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 141, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(454, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 696, 770, 36, 204, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章修改', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3723, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_main', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3725, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'buylist', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4463, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3938, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'query', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4407, 'diy', 'modHeadPic', '头部自定义效果图', 'news', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4441, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4094, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'notice', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4093, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'notice', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3742, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'detail', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 0, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(492, 'advs', 'modLinkText', '文字友情链接', 'advs', 'link', 'tpl_link.htm', '', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}advs/link/', 780, 88, 35, 210, 1, 0, 99, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '友情链接', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(493, 'advs', 'modLinkPic', '图片友情链接', 'advs', 'link', 'tpl_linkpic.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '{#RP#}advs/link/', 780, 183, 132, 210, 3, 10, 20, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '友情链接', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(1343, 'search', 'modSearchForm', '全站搜索表单(横式)', 'search', 'search', 'tpl_searchform.htm', '-1', 'A500', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 30, 0, 0, 2, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(497, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 990, 170, 35, 0, 1, 0, 10, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '全站搜索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3751, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 15, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3730, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'brandquery', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3731, 'shop', 'modShopBrandQuery', '品牌检索', 'shop', 'brandquery', 'tpl_shop_brandquery.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 755, 1340, 30, 240, 2, 5, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 140, 50, 'fill', '品牌检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3973, 'advs', 'modLogo', '网站标志', 'shop', 'brandquery', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3548, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'branddetail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3937, 'advs', 'modLogo', '网站标志', 'shop', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3948, 'advs', 'modLogo', '网站标志', 'shop', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3997, 'advs', 'modLogo', '网站标志', 'shop', 'startorder', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4462, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(1069, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 375, 40, 0, 2, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3732, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'query', 'tpl_newsquery.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 268, 40, 210, 3, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '文章检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2088, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'lostpass', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 30, 0, 141, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4437, 'shop', 'modShopTwoClass', '商品二级分类', 'news', 'detail', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 662, 0, 759, 15, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3921, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '', 226, 310, 344, 764, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '今日金价', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 2, 0, 'hidden', 'content', 'block'),
(3743, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy3.htm', '-1', 'A640', '', 1, 'solid', '', 'click', 'none', '', '', '#fff', '{#RP#}shop/class/', 226, 744, 659, 764, 14, 0, 2, 'id', 'desc', 1, 15, '_self', 116, 30, 200, 150, 'fill', '促销商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 3, 0, 'hidden', 'content', 'block'),
(2089, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'D606', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 699, 237, 38, 117, 2, 30, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '重设密码', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1454, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 750, 373, 42, 78, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员注册', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2663, 'comment', 'modCommentList', '最新点评（列表）', 'comment', 'main', 'tpl_commentlist.htm', '-1', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}comment/class/index.php', 780, 339, 35, 210, 4, 12, 5, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '最新留言', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2664, 'comment', 'modCommentClass', '点评分类', 'comment', 'main', 'tpl_comment_class.htm', '-1', 'E018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 195, 185, 0, 6, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '分类导航', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3679, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'query', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 990, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3922, 'diy', 'modEdit', 'HTML编辑区', 'index', 'index', 'tpl_edit.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 214, 144, 504, 770, 21, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="FONT: 12px/24px Verdana, Arial, Helvetica, sans-serif; WIDTH: 100%; COLOR: #3d3d3d">\r\n<hr style="BORDER-RIGHT: 0px; BORDER-TOP: #c8c8c8 1px dashed; MARGIN-TOP: 8px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px; HEIGHT: 1px" />\r\n\r\n<div style="PADDING-LEFT: 20px; PADDING-TOP: 10px; HEIGHT: 24px"><img alt="" src="[ROOTPATH]index/pics/20091114/200911141258181612968.gif" border=0 />&nbsp;&nbsp;PT950：310.00元/克</div>\r\n<div style="PADDING-LEFT: 20px; HEIGHT: 24px"><img alt="" src="[ROOTPATH]index/pics/20091114/200911141258181612968.gif" border=0 />&nbsp;&nbsp;PT900：203.00元/克</div>\r\n<div style="PADDING-LEFT: 20px; HEIGHT: 24px"><img alt="" src="[ROOTPATH]index/pics/20091114/200911141258181612968.gif" border=0 />&nbsp;&nbsp;KC680：290.00元/克</div>\r\n<div style="PADDING-LEFT: 20px; HEIGHT: 24px"><img alt="" src="[ROOTPATH]index/pics/20091114/200911141258181612968.gif" border=0 />&nbsp;&nbsp;XU700：308.00元/克</div></div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4364, 'shop', 'modShopSearchForm', '商品搜索表单', 'comment', 'query', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4375, 'shop', 'modShopSearchForm', '商品搜索表单', 'comment', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3686, 'shop', 'modShopSmallCart', '购物车提示信息', 'index', 'index', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4385, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'homepage', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4051, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'login', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4062, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'lostpass', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(1439, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newscat', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1438, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsmodify', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2014, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsgl', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1436, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsfabu', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1435, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'membercent', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 257, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1434, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'msn', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 257, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1432, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'friends', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 257, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1431, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'fav', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 257, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4172, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 300, 35, 210, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4143, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4126, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'person', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4108, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'account', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(1426, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'main', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 257, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4384, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'homepage', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3790, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'buylist', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 8, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3982, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'brandquery', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 662, 0, 0, 90, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4175, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'shoporder', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3540, 'shop', 'modShopSearchForm', '商品搜索表单', 'news', 'membernews', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4219, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'membercent', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4406, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'news', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4440, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4451, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'search', 'search', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4417, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'news', 'query', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4428, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'news', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4241, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'msn', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3532, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'newscat', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4231, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'friends', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4209, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'comment', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3123, 'advs', 'modAdvsLb', '图片轮播广告', 'index', 'index', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 525, 333, 0, 235, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '轮播广告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(4160, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'contact', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4161, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'contact', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4162, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'contact', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3526, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'newsfabu', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3527, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'newsgl', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3528, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'newsmodify', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4092, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'notice', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4159, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'contact', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4125, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'person', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3662, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'buylist', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4333, 'diy', 'modButtomInfo', '底部信息编辑区', 'job', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3503, 'menu', 'modChannelMenu', '二级导航菜单', 'page', 'html_main', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3966, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'brand', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4040, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'shoporderdetail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3499, 'menu', 'modChannelMenu', '二级导航菜单', 'shop', 'branddetail', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3972, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'brandquery', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3947, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'detail', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3936, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'query', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4461, 'diy', 'modPic', '图片/FLASH', 'shop', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2020, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'comment', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 257, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4344, 'diy', 'modButtomInfo', '底部信息编辑区', 'job', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4478, 'advs', 'modLinkPic', '图片友情链接', 'member', 'onlinepay', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(3491, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'membernews', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4174, 'diy', 'modPic', '图片/FLASH', 'member', 'shoporder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4023, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'shoporderpay', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3996, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'startorder', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4218, 'diy', 'modPic', '图片/FLASH', 'member', 'membercent', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4050, 'diy', 'modPic', '图片/FLASH', 'member', 'login', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4061, 'diy', 'modPic', '图片/FLASH', 'member', 'lostpass', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4068, 'advs', 'modLogo', '网站标志', 'member', 'reg', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4079, 'advs', 'modLogo', '网站标志', 'member', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4107, 'diy', 'modPic', '图片/FLASH', 'member', 'account', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4124, 'diy', 'modPic', '图片/FLASH', 'member', 'person', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4142, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4158, 'diy', 'modPic', '图片/FLASH', 'member', 'contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4091, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'notice', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3477, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsfabu', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3478, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsgl', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3479, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsmodify', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4230, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'friends', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4208, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'comment', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3483, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newscat', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4240, 'diy', 'modPic', '图片/FLASH', 'member', 'msn', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4416, 'diy', 'modPic', '图片/FLASH', 'news', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4427, 'diy', 'modPic', '图片/FLASH', 'news', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4405, 'diy', 'modPic', '图片/FLASH', 'news', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4439, 'diy', 'modPic', '图片/FLASH', 'page', 'html', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4450, 'diy', 'modPic', '图片/FLASH', 'search', 'search', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(2639, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(2208, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 4, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4207, 'diy', 'modPic', '图片/FLASH', 'member', 'comment', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4229, 'diy', 'modPic', '图片/FLASH', 'member', 'friends', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3654, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'paylist', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3659, 'member', 'modMemberPayList', '会员付款记录', 'member', 'paylist', 'tpl_member_paylist.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 144, 35, 210, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '付款记录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3656, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'paylist', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3615, 'shop', 'modShopContent', '商品详情', 'shop', 'detail', 'tpl_shop_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 472, 30, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3614, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy.htm', '-1', 'E641', '', 1, 'solid', '', 'click', 'none', '', '', '#fff', '{#RP#}shop/class/', 525, 636, 344, 235, 12, 10, 6, 'id', 'asc', 0, 10, '_self', 0, 30, 145, 133, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '钻石', '', '', 1, 0, 'hidden', 'content', 'block'),
(3641, 'shop', 'modShopBrandGoodsQuery', '品牌相关商品检索', 'shop', 'branddetail', 'tpl_shop_query_1.htm', '-1', 'A595', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 712, 1025, 41, 0, 7, 6, 9, 'id', 'desc', 0, 12, '_self', 0, 28, 120, 120, 'fill', '品牌商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'visible', 'content', 'block'),
(3613, 'shop', 'modShopQuery', '商品检索搜索', 'shop', 'query', 'tpl_shop_query.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 750, 587, 99, 240, 1, 0, 9, 'id', 'desc', 0, 9, '_self', 0, 28, 150, 120, 'auto', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3920, 'shop', 'modShopTwoClass', '商品二级分类', 'index', 'index', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 638, 344, 0, 20, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4477, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'onlinepay', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4374, 'diy', 'modHeadPic', '头部自定义效果图', 'comment', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4343, 'advs', 'modLogo', '网站标志', 'job', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3661, 'advs', 'modLogo', '网站标志', 'member', 'buylist', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 70, 5, 6, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4332, 'advs', 'modLogo', '网站标志', 'job', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4355, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3912, 'menu', 'modMainMenu', '一级导航菜单', 'index', 'index', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 17, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4383, 'diy', 'modPic', '图片/FLASH', 'member', 'homepage', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3851, 'feedback', 'modFeedBackForm', '留言反馈表单', 'feedback', 'main', 'tpl_feedback_form.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 430, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '留言反馈', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(4322, 'diy', 'modButtomInfo', '底部信息编辑区', 'feedback', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3699, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'newsmodify', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4200, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'fav', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3698, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'newsgl', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3697, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'newsfabu', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4090, 'diy', 'modPic', '图片/FLASH', 'member', 'notice', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4157, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'contact', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4141, 'diy', 'modPic', '图片/FLASH', 'member', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4123, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'person', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3909, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'news', 'query', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 2, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3924, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 81, 1315, 772, 22, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 3, 0, 'hidden', 'content', 'block'),
(3925, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'query', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 638, 0, 0, 15, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3738, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 214, 117, 386, 770, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '广告位', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3739, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'query', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 3, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3740, 'shop', 'modShopClassFc', '商品逐级分类', 'shop', 'query', 'tpl_shopclass.htm', '-1', '1000', '#e6e6fa', 1, 'solid', '', 'click', 'none', '', '', '#f8f8ff', '-1', 750, 63, 30, 240, 6, 12, 99, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4089, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'notice', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4018, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'shoporderpay', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 662, 0, 0, 13, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4006, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'startorder', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 662, 0, 0, 90, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3648, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'startorder', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4140, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'detail', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4156, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'contact', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4088, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'notice', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3574, 'advs', 'modLogo', '网站标志', 'member', 'newsfabu', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 70, 5, 6, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3575, 'advs', 'modLogo', '网站标志', 'member', 'newsgl', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 70, 5, 6, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3576, 'advs', 'modLogo', '网站标志', 'member', 'newsmodify', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 70, 5, 6, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4228, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'friends', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4206, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'comment', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3580, 'advs', 'modLogo', '网站标志', 'member', 'newscat', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 70, 5, 6, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4239, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'msn', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4415, 'shop', 'modShopSaleList', '热卖商品排行榜', 'news', 'query', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4426, 'shop', 'modShopSaleList', '热卖商品排行榜', 'news', 'detail', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4404, 'shop', 'modShopSaleList', '热卖商品排行榜', 'news', 'main', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 11, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4438, 'shop', 'modShopSaleList', '热卖商品排行榜', 'page', 'html', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4449, 'shop', 'modShopSaleList', '热卖商品排行榜', 'search', 'search', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4217, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'membercent', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3588, 'advs', 'modLogo', '网站标志', 'news', 'membernews', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 70, 5, 6, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4173, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'shoporder', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4022, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'shoporderpay', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3995, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'startorder', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4460, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'main', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 11, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3935, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'query', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3946, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'detail', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3971, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'brandquery', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3596, 'advs', 'modLogo', '网站标志', 'shop', 'branddetail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 70, 5, 6, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(3988, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'cart', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4039, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'shoporderdetail', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3965, 'diy', 'modPic', '图片/FLASH', 'shop', 'brand', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3600, 'advs', 'modLogo', '网站标志', 'page', 'html_main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 180, 70, 5, 6, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4382, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'homepage', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 15, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4067, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'reg', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4078, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'main', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4106, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'account', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 346, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4122, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'person', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4189, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'paylist', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3660, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'buylist', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4476, 'diy', 'modPic', '图片/FLASH', 'member', 'onlinepay', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4363, 'diy', 'modHeadPic', '头部自定义效果图', 'comment', 'query', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4373, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'comment', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3563, 'advs', 'modLogo', '网站标志', 'index', 'index', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4354, 'advs', 'modLogo', '网站标志', 'comment', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3515, 'shop', 'modShopSearchForm', '商品搜索表单', 'index', 'index', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4139, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4049, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'login', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4060, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'lostpass', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4066, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'reg', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4077, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'main', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 16, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4105, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'account', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4372, 'diy', 'modPic', '图片/FLASH', 'comment', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3844, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'feedback', 'main', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3650, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'shoporderpay', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4399, 'diy', 'modButtomInfo', '底部信息编辑区', 'advs', 'link', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4362, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'comment', 'query', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4371, 'shop', 'modShopSaleList', '热卖商品排行榜', 'comment', 'detail', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3850, 'feedback', 'modFeedBackNavPath', '当前位置提示条', 'feedback', 'main', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 5, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4317, 'diy', 'modPic', '图片/FLASH', 'feedback', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4318, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'feedback', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4319, 'diy', 'modHeadPic', '头部自定义效果图', 'feedback', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4320, 'shop', 'modShopSearchForm', '商品搜索表单', 'feedback', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4321, 'advs', 'modLogo', '网站标志', 'feedback', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3552, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4038, 'diy', 'modPic', '图片/FLASH', 'shop', 'shoporderdetail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3964, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'brand', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3788, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_main', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4361, 'diy', 'modPic', '图片/FLASH', 'comment', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4360, 'shop', 'modShopSaleList', '热卖商品排行榜', 'comment', 'query', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4037, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'shoporderdetail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3355, 'job', 'modJobQuery', '职位翻页检索', 'job', 'main', 'tpl_jobquery.htm', '-1', 'A595', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 269, 40, 210, 2, 0, 10, 'id', 'desc', 0, 30, '_self', 0, 100, -1, -1, 'fill', '诚聘英才', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3352, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'job', 'main', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3354, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'main', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 3, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4349, 'shop', 'modShopSaleList', '热卖商品排行榜', 'comment', 'main', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 15, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4350, 'diy', 'modPic', '图片/FLASH', 'comment', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4351, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'comment', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4352, 'diy', 'modHeadPic', '头部自定义效果图', 'comment', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4353, 'shop', 'modShopSearchForm', '商品搜索表单', 'comment', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4398, 'advs', 'modLogo', '网站标志', 'advs', 'link', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3367, 'job', 'modJobForm', '应聘申请表单', 'job', 'detail', 'tpl_job_form.htm', '-1', 'E596', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 873, 532, 210, 3, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '应聘申请', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3811, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsmodify', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 175, 38, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 家电商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3366, 'job', 'modJobContent', '职位信息详情', 'job', 'detail', 'tpl_jobcontent.htm', '-1', 'A596', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 780, 482, 40, 210, 4, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '职位信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3363, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'job', 'detail', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3365, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'detail', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3810, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsgl', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 175, 38, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 家电商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4195, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'fav', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4196, 'diy', 'modPic', '图片/FLASH', 'member', 'fav', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4197, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'fav', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4198, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'fav', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4199, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'fav', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4055, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'lostpass', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4056, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'lostpass', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4057, 'advs', 'modLogo', '网站标志', 'member', 'lostpass', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4058, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'lostpass', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4059, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'lostpass', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4044, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'login', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4045, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'login', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4046, 'advs', 'modLogo', '网站标志', 'member', 'login', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4047, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'login', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4048, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'login', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4393, 'shop', 'modShopSaleList', '热卖商品排行榜', 'advs', 'link', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 15, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4394, 'diy', 'modPic', '图片/FLASH', 'advs', 'link', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4395, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'advs', 'link', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4396, 'diy', 'modHeadPic', '头部自定义效果图', 'advs', 'link', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4397, 'shop', 'modShopSearchForm', '商品搜索表单', 'advs', 'link', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3831, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'branddetail', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 175, 38, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 家电商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3983, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'cart', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3984, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'cart', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3985, 'advs', 'modLogo', '网站标志', 'shop', 'cart', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3986, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'cart', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3987, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'cart', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4032, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'shoporderdetail', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4033, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'shoporderdetail', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4034, 'advs', 'modLogo', '网站标志', 'shop', 'shoporderdetail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4035, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'shoporderdetail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4036, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'shoporderdetail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3959, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'brand', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3960, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'brand', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3961, 'advs', 'modLogo', '网站标志', 'shop', 'brand', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3962, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'brand', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3963, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'brand', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3835, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_main', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 175, 38, 0, 6, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 家电商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4184, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'paylist', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4185, 'diy', 'modPic', '图片/FLASH', 'member', 'paylist', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4186, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'paylist', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4187, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'paylist', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4188, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'paylist', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3837, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'buylist', 'tpl_bottominfo.htm', '-1', 'A516', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 900, 175, 38, 0, 5, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 家电商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4327, 'shop', 'modShopSaleList', '热卖商品排行榜', 'job', 'main', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4328, 'diy', 'modPic', '图片/FLASH', 'job', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4329, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'job', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4330, 'diy', 'modHeadPic', '头部自定义效果图', 'job', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4331, 'shop', 'modShopSearchForm', '商品搜索表单', 'job', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4338, 'shop', 'modShopSaleList', '热卖商品排行榜', 'job', 'detail', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 15, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4339, 'diy', 'modPic', '图片/FLASH', 'job', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4340, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'job', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4341, 'diy', 'modHeadPic', '头部自定义效果图', 'job', 'detail', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4342, 'shop', 'modShopSearchForm', '商品搜索表单', 'job', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4471, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'onlinepay', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4472, 'advs', 'modLogo', '网站标志', 'member', 'onlinepay', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4473, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'onlinepay', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4474, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'onlinepay', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4475, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'onlinepay', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4316, 'shop', 'modShopSaleList', '热卖商品排行榜', 'feedback', 'main', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4255, 'advs', 'modLogo', '网站标志', 'page', 'html_aboutus', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4256, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_aboutus', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3861, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_aboutus', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 4, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4254, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_aboutus', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4253, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html_aboutus', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4252, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_aboutus', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4251, 'diy', 'modPic', '图片/FLASH', 'page', 'html_aboutus', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3859, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_aboutus', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(4250, 'shop', 'modShopSaleList', '热卖商品排行榜', 'page', 'html_aboutus', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3862, 'page', 'modPageContent', '网页内容详情', 'page', 'html_aboutus', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 22, 40, 210, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3864, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_guide', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3866, 'page', 'modPageContent', '网页内容详情', 'page', 'html_guide', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4267, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_guide', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4266, 'advs', 'modLogo', '网站标志', 'page', 'html_guide', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3870, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_guide', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4261, 'shop', 'modShopSaleList', '热卖商品排行榜', 'page', 'html_guide', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4262, 'diy', 'modPic', '图片/FLASH', 'page', 'html_guide', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4263, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_guide', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4264, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html_guide', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4265, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_guide', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3873, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_payment', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3875, 'page', 'modPageContent', '网页内容详情', 'page', 'html_payment', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4278, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_payment', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4277, 'advs', 'modLogo', '网站标志', 'page', 'html_payment', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3879, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_payment', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4272, 'shop', 'modShopSaleList', '热卖商品排行榜', 'page', 'html_payment', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4273, 'diy', 'modPic', '图片/FLASH', 'page', 'html_payment', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4274, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_payment', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4275, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html_payment', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4276, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_payment', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3882, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_dev', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3884, 'page', 'modPageContent', '网页内容详情', 'page', 'html_dev', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4289, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_dev', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4288, 'advs', 'modLogo', '网站标志', 'page', 'html_dev', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3888, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_dev', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4283, 'shop', 'modShopSaleList', '热卖商品排行榜', 'page', 'html_dev', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4284, 'diy', 'modPic', '图片/FLASH', 'page', 'html_dev', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4285, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_dev', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4286, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html_dev', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4287, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_dev', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3891, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_service', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3893, 'page', 'modPageContent', '网页内容详情', 'page', 'html_service', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4300, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_service', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4299, 'advs', 'modLogo', '网站标志', 'page', 'html_service', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3897, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_service', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4294, 'shop', 'modShopSaleList', '热卖商品排行榜', 'page', 'html_service', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4295, 'diy', 'modPic', '图片/FLASH', 'page', 'html_service', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4296, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_service', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4297, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html_service', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4298, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_service', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3900, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_contact', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3902, 'page', 'modPageContent', '网页内容详情', 'page', 'html_contact', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4311, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_contact', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4310, 'advs', 'modLogo', '网站标志', 'page', 'html_contact', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3906, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_contact', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4305, 'shop', 'modShopSaleList', '热卖商品排行榜', 'page', 'html_contact', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4306, 'diy', 'modPic', '图片/FLASH', 'page', 'html_contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4307, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_contact', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4308, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html_contact', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4309, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_contact', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3908, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'advs', 'link', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 2, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3911, 'diy', 'modHeadPic', '头部自定义效果图', 'index', 'index', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3913, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'index', 'index', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3914, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3917, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', '1000', '#e6e6e6', 5, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '', 226, 334, 0, 764, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3918, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 214, 130, 6, 770, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 2, 0, 'hidden', 'content', 'block'),
(3919, 'news', 'modNewsListDiy', '自定文章列表', 'index', 'index', 'tpl_newslist_diy.htm', '-1', 'A639', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?2.html', 214, 188, 138, 770, 19, 10, 6, 'id', 'desc', 0, 12, '_self', 0, 50, -1, -1, 'fill', '最新活动', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(3923, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy2.htm', '-1', 'A642', '', 1, 'solid', '', 'click', 'none', '', '', '#fff', '{#RP#}shop/class/', 525, 415, 988, 235, 2, 10, 8, 'id', 'desc', 1, 25, '_self', 0, 30, 80, 80, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '饰品推荐2', '', '', 4, 0, 'hidden', 'content', 'block'),
(3934, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_tpick.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 231, 334, 0, 0, 26, 0, 1, 'id', 'desc', 0, 12, '_self', 0, 30, 174, 158, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 6, 0, 'hidden', 'content', 'block'),
(3933, 'shop', 'modShopSaleList', '热卖商品排行榜', 'index', 'index', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 25, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3929, 'shop', 'modShopBrandList', '品牌列表', 'index', 'index', 'tpl_shopbrand_list.htm', '-1', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', 'shop/brand.php', 232, 411, 992, 0, 23, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, 96, 34, 'fill', '推荐品牌', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3944, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'query', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3945, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'query', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(3955, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'detail', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3956, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'detail', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(3958, 'shop', 'modShopBrandList', '品牌列表', 'shop', 'detail', 'tpl_shopbrand_list.htm', '-1', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', 'shop/brand.php', 232, 373, 655, 759, 16, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 96, 40, 'fill', '权威认证', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3968, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'brand', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3969, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'brand', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(3980, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'brandquery', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3981, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'brandquery', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(3992, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'cart', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3993, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'cart', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4004, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'startorder', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4005, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'startorder', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4028, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'shoporderpay', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 7, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4021, 'advs', 'modLogo', '网站标志', 'shop', 'shoporderpay', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4020, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'shoporderpay', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4019, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'shoporderpay', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 12, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4031, 'shop', 'modShopOrderPay', '订单付款', 'shop', 'shoporderpay', 'tpl_shop_orderpay.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 750, 500, 30, 240, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4041, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'shoporderdetail', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4042, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'shoporderdetail', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4053, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'login', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4054, 'advs', 'modLinkPic', '图片友情链接', 'member', 'login', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4179, 'advs', 'modLogo', '网站标志', 'member', 'shoporder', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4064, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'lostpass', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4065, 'advs', 'modLinkPic', '图片友情链接', 'member', 'lostpass', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4075, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'reg', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4076, 'advs', 'modLinkPic', '图片友情链接', 'member', 'reg', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4086, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'main', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 11, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4087, 'advs', 'modLinkPic', '图片友情链接', 'member', 'main', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 15, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4099, 'advs', 'modLogo', '网站标志', 'member', 'notice', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4100, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'notice', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4101, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'notice', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4102, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'notice', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4103, 'advs', 'modLinkPic', '图片友情链接', 'member', 'notice', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4116, 'advs', 'modLogo', '网站标志', 'member', 'account', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4117, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'account', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4118, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'account', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4119, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'account', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4120, 'advs', 'modLinkPic', '图片友情链接', 'member', 'account', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4133, 'advs', 'modLogo', '网站标志', 'member', 'person', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4134, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'person', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4135, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'person', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4136, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'person', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4137, 'advs', 'modLinkPic', '图片友情链接', 'member', 'person', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4150, 'advs', 'modLogo', '网站标志', 'member', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4151, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'detail', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4152, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'detail', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4153, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'detail', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4154, 'advs', 'modLinkPic', '图片友情链接', 'member', 'detail', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4167, 'advs', 'modLogo', '网站标志', 'member', 'contact', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4168, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'contact', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4169, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'contact', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4170, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'contact', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4171, 'advs', 'modLinkPic', '图片友情链接', 'member', 'contact', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4181, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'shoporder', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4182, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'shoporder', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4183, 'advs', 'modLinkPic', '图片友情链接', 'member', 'shoporder', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4190, 'advs', 'modLogo', '网站标志', 'member', 'paylist', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4191, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'paylist', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4192, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'paylist', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4193, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'paylist', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4194, 'advs', 'modLinkPic', '图片友情链接', 'member', 'paylist', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4201, 'advs', 'modLogo', '网站标志', 'member', 'fav', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4202, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'fav', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4203, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'fav', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4204, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'fav', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4205, 'advs', 'modLinkPic', '图片友情链接', 'member', 'fav', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4212, 'advs', 'modLogo', '网站标志', 'member', 'comment', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4213, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'comment', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4214, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'comment', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4215, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'comment', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4216, 'advs', 'modLinkPic', '图片友情链接', 'member', 'comment', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4223, 'advs', 'modLogo', '网站标志', 'member', 'membercent', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4224, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'membercent', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4225, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'membercent', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4226, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'membercent', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4227, 'advs', 'modLinkPic', '图片友情链接', 'member', 'membercent', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4234, 'advs', 'modLogo', '网站标志', 'member', 'friends', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4235, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'friends', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4236, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'friends', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 13, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(4237, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'friends', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4238, 'advs', 'modLinkPic', '图片友情链接', 'member', 'friends', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4246, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'msn', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4247, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'msn', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4248, 'advs', 'modLinkPic', '图片友情链接', 'member', 'msn', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4249, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'msn', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4257, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_aboutus', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4258, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_aboutus', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4259, 'advs', 'modLinkPic', '图片友情链接', 'page', 'html_aboutus', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4260, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_aboutus', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4268, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_guide', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4269, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_guide', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4270, 'advs', 'modLinkPic', '图片友情链接', 'page', 'html_guide', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4271, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_guide', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4279, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_payment', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4280, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_payment', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4281, 'advs', 'modLinkPic', '图片友情链接', 'page', 'html_payment', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4282, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_payment', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4290, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_dev', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4291, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_dev', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4292, 'advs', 'modLinkPic', '图片友情链接', 'page', 'html_dev', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4293, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_dev', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4301, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_service', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4302, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_service', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4303, 'advs', 'modLinkPic', '图片友情链接', 'page', 'html_service', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4304, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_service', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4312, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_contact', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4313, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_contact', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4314, 'advs', 'modLinkPic', '图片友情链接', 'page', 'html_contact', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4315, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_contact', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4323, 'menu', 'modMainMenu', '一级导航菜单', 'feedback', 'main', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4324, 'shop', 'modShopSmallCart', '购物车提示信息', 'feedback', 'main', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4325, 'advs', 'modLinkPic', '图片友情链接', 'feedback', 'main', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4326, 'menu', 'modBottomMenu', '底部菜单（一级）', 'feedback', 'main', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4334, 'menu', 'modMainMenu', '一级导航菜单', 'job', 'main', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4335, 'shop', 'modShopSmallCart', '购物车提示信息', 'job', 'main', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4336, 'advs', 'modLinkPic', '图片友情链接', 'job', 'main', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4337, 'menu', 'modBottomMenu', '底部菜单（一级）', 'job', 'main', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4345, 'menu', 'modMainMenu', '一级导航菜单', 'job', 'detail', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4346, 'shop', 'modShopSmallCart', '购物车提示信息', 'job', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4347, 'advs', 'modLinkPic', '图片友情链接', 'job', 'detail', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 14, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4348, 'menu', 'modBottomMenu', '底部菜单（一级）', 'job', 'detail', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 10, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4356, 'menu', 'modMainMenu', '一级导航菜单', 'comment', 'main', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4357, 'shop', 'modShopSmallCart', '购物车提示信息', 'comment', 'main', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4358, 'advs', 'modLinkPic', '图片友情链接', 'comment', 'main', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 14, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4359, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'main', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 10, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4367, 'menu', 'modMainMenu', '一级导航菜单', 'comment', 'query', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4368, 'shop', 'modShopSmallCart', '购物车提示信息', 'comment', 'query', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4369, 'advs', 'modLinkPic', '图片友情链接', 'comment', 'query', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4370, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'query', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4378, 'menu', 'modMainMenu', '一级导航菜单', 'comment', 'detail', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4379, 'shop', 'modShopSmallCart', '购物车提示信息', 'comment', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4380, 'advs', 'modLinkPic', '图片友情链接', 'comment', 'detail', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4381, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'detail', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4389, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'homepage', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4390, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'homepage', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4391, 'advs', 'modLinkPic', '图片友情链接', 'member', 'homepage', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 14, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4392, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'homepage', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 10, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4400, 'menu', 'modMainMenu', '一级导航菜单', 'advs', 'link', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4401, 'shop', 'modShopSmallCart', '购物车提示信息', 'advs', 'link', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4402, 'advs', 'modLinkPic', '图片友情链接', 'advs', 'link', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 14, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4403, 'menu', 'modBottomMenu', '底部菜单（一级）', 'advs', 'link', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 10, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4411, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'main', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4412, 'shop', 'modShopSmallCart', '购物车提示信息', 'news', 'main', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4413, 'advs', 'modLinkPic', '图片友情链接', 'news', 'main', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 10, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4414, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'main', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 6, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4422, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'query', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4423, 'shop', 'modShopSmallCart', '购物车提示信息', 'news', 'query', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4424, 'advs', 'modLinkPic', '图片友情链接', 'news', 'query', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4425, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'query', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4433, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'detail', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4434, 'shop', 'modShopSmallCart', '购物车提示信息', 'news', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4435, 'advs', 'modLinkPic', '图片友情链接', 'news', 'detail', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4436, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'detail', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4445, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4446, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4447, 'advs', 'modLinkPic', '图片友情链接', 'page', 'html', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4448, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4456, 'menu', 'modMainMenu', '一级导航菜单', 'search', 'search', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4457, 'shop', 'modShopSmallCart', '购物车提示信息', 'search', 'search', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4458, 'advs', 'modLinkPic', '图片友情链接', 'search', 'search', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 12, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4459, 'menu', 'modBottomMenu', '底部菜单（一级）', 'search', 'search', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4467, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'main', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4468, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'main', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4469, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'main', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 10, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(4470, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'main', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 6, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4480, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'onlinepay', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4481, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'onlinepay', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusdefault`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusdefault` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` char(100) NOT NULL default '',
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL default '-1',
  `showborder` char(20) NOT NULL default '1000',
  `bordercolor` varchar(7) NOT NULL default '#4682b4',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#4682b4',
  `barcolor` varchar(10) NOT NULL default '#fff',
  `backgroundcolor` varchar(7) NOT NULL default '#fff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '-1',
  `ord` varchar(100) NOT NULL default '-1',
  `sc` varchar(10) NOT NULL default '-1',
  `showtj` int(5) NOT NULL default '-1',
  `cutword` int(20) NOT NULL default '-1',
  `target` varchar(30) NOT NULL default '-1',
  `catid` int(10) NOT NULL default '-1',
  `cutbody` int(5) NOT NULL default '-1',
  `picw` int(3) NOT NULL default '-1',
  `pich` int(3) NOT NULL default '-1',
  `fittype` varchar(10) NOT NULL default '-1',
  `title` varchar(100) NOT NULL default '',
  `body` text,
  `pic` varchar(255) NOT NULL default '-1',
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL default '-1',
  `movi` varchar(255) NOT NULL default '-1',
  `sourceurl` varchar(20) NOT NULL default '-1',
  `word` varchar(255) NOT NULL default '-1',
  `word1` varchar(255) NOT NULL default '-1',
  `word2` varchar(255) NOT NULL default '-1',
  `word3` char(255) NOT NULL default '-1',
  `word4` char(255) NOT NULL default '-1',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL default '-1',
  `link1` char(255) NOT NULL default '-1',
  `link2` char(255) NOT NULL default '-1',
  `link3` char(255) NOT NULL default '-1',
  `link4` char(255) NOT NULL default '-1',
  `tags` varchar(30) NOT NULL default '-1',
  `groupid` varchar(20) NOT NULL default '-1',
  `projid` varchar(20) NOT NULL default '-1',
  `moveable` int(1) NOT NULL default '1',
  `classtbl` varchar(30) NOT NULL default '',
  `grouptbl` varchar(50) NOT NULL,
  `projtbl` varchar(50) NOT NULL,
  `setglobal` int(5) NOT NULL default '-1',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` varchar(10) NOT NULL default 'block',
  `ifmul` int(1) NOT NULL default '1',
  `ifrefresh` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=328 ;

--
-- 转存表中的数据 `pwn_base_plusdefault`
--

INSERT INTO `pwn_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(17, 'advs', 'modLogo', '网站标志', 'all', 'all', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 150, 60, 20, 20, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '网站标志', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_logo', '', 1, 'hidden', 'top', 'block', 0, 0),
(25, 'advs', 'modLinkPic', '图片友情链接', 'all', 'all', 'tpl_linkpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 6, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(26, 'advs', 'modLinkText', '文字友情链接', 'all', 'all', 'tpl_link.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(31, 'advs', 'modAdvsLb', '图片轮播广告', 'all', 'all', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 320, 280, 200, 200, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '轮播广告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', -1, 'hidden', 'content', 'block', 0, 1),
(32, 'advs', 'modAdvsPic', '页内图片广告', 'all', 'all', 'tpl_advspic.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 565, 95, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'content', 'block', 1, 0),
(199, 'effect', 'modHeadBgSource', '头部效果图素材', 'all', 'all', 'tpl_headbg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头部效果图', '-1', '-1', '-1', '-1', '-1', 'head/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(34, 'advs', 'modAdvsText', '文字广告（静态）', 'all', 'all', 'tpl_advstext.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(35, 'advs', 'modAdvsMovi', 'FLASH视频广告', 'all', 'all', 'tpl_movi.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频播放', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_movi', '', -1, 'hidden', 'content', 'block', 1, 0),
(48, 'advs', 'modAdvsFloat', '图片广告（飘动）', 'all', 'all', 'tpl_advs_float.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(49, 'advs', 'modAdvsDuilian', '对联广告', 'all', 'all', 'tpl_advs_duilian.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 220, 130, 6, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_duilian', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(50, 'advs', 'modAdvsZimu', '文字广告（字幕）', 'all', 'all', 'tpl_advszimu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(51, 'advs', 'modAdvsFixed', '图片广告（悬浮）', 'all', 'all', 'tpl_advs_fixed.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 100, 100, 350, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 0),
(61, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(89, 'advs', 'modAdvsCode', '广告代码', 'all', 'all', 'tpl_advscode.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 250, 250, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请在此插入广告代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 1),
(18, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'all', 'tpl_comment_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(21, 'comment', 'modCommentList', '最新点评（列表）', 'all', 'all', 'tpl_commentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php', 300, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '最新点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(22, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query.htm', '-1', '1000', '#def', 1, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 300, 35, 0, 90, 0, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '点评检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(23, 'comment', 'modCommentClass', '点评分类', 'all', 'all', 'tpl_comment_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '点评分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(24, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content.htm', '-1', '1000', '#def', 0, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 500, 35, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(56, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(151, 'comment', 'modMemberCommentList', '会员最新点评', 'member', 'homepage', 'tpl_membercommentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?mid={#mid#}', 380, 170, 0, 0, 90, 12, 5, '-1', '-1', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(164, 'comment', 'modCommentHot30', '本月点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(165, 'comment', 'modCommentHot7', '本周点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(166, 'comment', 'modCommentRq30', '本月点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(167, 'comment', 'modCommentRq7', '本周点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(9, 'diy', 'modEdit', 'HTML编辑区', 'all', 'all', 'tpl_edit.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定内容', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(27, 'diy', 'modButtomInfo', '底部信息编辑区', 'all', 'all', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 900, 120, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注信息', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(47, 'diy', 'modText', '多行文字', 'all', 'all', 'tpl_text.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '多行文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请输入自定义文字', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(53, 'diy', 'modPic', '图片/FLASH', 'all', 'all', 'tpl_pic.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(74, 'diy', 'modWords', '单行文字', 'all', 'all', 'tpl_words.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '单行文字', '-1', '-1', '-1', '-1', '-1', '-1', '请输入文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(75, 'diy', 'modPicWordText', '图片+标题+介绍', 'all', 'all', 'tpl_picwordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 250, 90, 30, 300, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(76, 'diy', 'modPicWord', '图片+标题', 'all', 'all', 'tpl_picword.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 250, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(184, 'news', 'modNewsPicMemo', '文章图片+标题+摘要', 'all', 'all', 'tpl_newspicmemo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 300, 320, 0, 0, 99, 5, 3, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 35, 80, 80, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(86, 'diy', 'modPlusBorder', '空白边框', 'all', 'all', 'tpl_plusborder.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 300, 0, 0, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '空白边框', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(87, 'diy', 'modColorZone', '空白色块', 'all', 'all', 'tpl_colorzone.htm', '-1', '1000', '#e10000', 1, 'solid', '', '', 'none', '', '', '#e10000', '-1', 200, 200, 30, 30, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(63, 'effect', 'modJIanFan', '动态简繁转换', 'all', 'all', 'tpl_jianfan.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '', '-1', 150, 50, 30, 700, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '简繁转换', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(64, 'effect', 'modNowDate', '当前日期时间', 'all', 'all', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 30, 10, 600, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前日期时间', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(65, 'effect', 'modMouseClock', '鼠标时钟特效', 'all', 'all', 'tpl_mouseclock.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 150, 300, 10, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(90, 'effect', 'modTraFlash', '透明flash特效', 'all', 'all', 'tpl_flash1.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 500, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(6, 'index', 'modIndexNavPath', '当前位置提示条', 'index', 'index', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(30, 'member', 'modLoginForm', '会员登录表单', 'all', 'all', 'tpl_loginform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(37, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 750, 390, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员注册', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(43, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 650, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(45, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 250, 0, 0, 90, 30, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '重设密码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(57, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(103, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 250, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(104, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 12, 5, '-1', '-1', -1, 25, '_self', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(106, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '登录帐号设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(107, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头像签名设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(108, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 500, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '个人资料修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(109, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '联系信息设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(110, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(139, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的收藏夹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(140, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的好友', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(141, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(142, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的站内短信', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(147, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(148, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(153, 'member', 'modMemberIntro', '会员简介', 'member', 'homepage', 'tpl_member_intro.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员简介', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(154, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 210, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(14, 'menu', 'modChannelMenu', '二级导航菜单', 'all', 'all', 'tpl_channelmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 65, 120, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(16, 'menu', 'modBottomMenu', '底部菜单（一级）', 'all', 'all', 'tpl_bottommenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 0, 0, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注栏目', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(67, 'menu', 'modDropDownMenu', '二级下拉菜单', 'all', 'all', 'tpl_dropdownmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(66, 'menu', 'modTopMenu', '顶部菜单(一级)', 'all', 'all', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 350, 30, 5, 500, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '顶部菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(68, 'menu', 'modMainMenu', '一级导航菜单', 'all', 'all', 'tpl_mainmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 30, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(115, 'menu', 'modTreeMenu', '树形导航菜单', 'all', 'all', 'tpl_treemenu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'visible', 'content', 'block', 0, 1),
(116, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'all', 'tpl_qqmenu.htm', 'A', '1000', '#def', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员中心', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(1, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'all', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 600, 500, 30, 200, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '文章检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(2, 'news', 'modNewsClass', '文章一级分类', 'all', 'all', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(3, 'news', 'modNewsTreeClass', '文章分类（树形）', 'all', 'all', 'tpl_classtree.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 1),
(4, 'news', 'modNewsProjList', '相关文章(同专题)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(5, 'news', 'modNewsAuthorList', '相关文章(同发布人)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(7, 'news', 'modNewsClassFc', '文章逐级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(8, 'news', 'modNewsList', '文章列表', 'all', 'all', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 200, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 50, -1, -1, '-1', '最新文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(12, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 630, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章正文', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(13, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'all', 'tpl_news_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(20, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 630, 300, 300, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '文章评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(55, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(72, 'news', 'modNewsProject', '文章专题名称列表', 'all', 'all', 'tpl_newsproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(82, 'news', 'modNewsPic', '文章图片+标题', 'all', 'all', 'tpl_newspic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 99, 5, 4, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 6, '_self', 0, -1, 160, 120, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(88, 'news', 'modNewsHot', '文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '文章人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(112, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(113, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(114, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(136, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(149, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 380, 170, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(155, 'news', 'modMemberNewsClass', '会员文章分类', 'news', 'membernews', 'tpl_membernews_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(156, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 300, 30, 220, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '会员文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(157, 'news', 'modMemberNewsSearchForm', '会员文章搜索', 'news', 'membernews', 'tpl_membernews_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(58, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(62, 'page', 'modPageContent', '网页内容详情', 'page', 'all', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '内容标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(70, 'page', 'modPageTitleList', '网页标题(列表)', 'all', 'all', 'tpl_pagelist.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题列表', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(71, 'page', 'modPageContentFy', '网页内容翻页', 'page', 'all', 'tpl_page_fy.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 50, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '翻页', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(73, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'all', 'all', 'tpl_page_titlemenu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(29, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 600, 30, 0, 90, 0, -1, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(46, 'search', 'modSearchForm', '全站搜索表单', 'all', 'all', 'tpl_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(59, 'search', 'modSearchNavPath', '当前位置提示条', 'search', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(28, 'tools', 'modShowCount', '访问统计', 'all', 'all', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 30, 100, 300, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '访问统计', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(54, 'tools', 'modVote', '投票调查', 'all', 'all', 'tpl_vote.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 250, 200, 200, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '投票调查', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_tools_pollindex', '', -1, 'hidden', 'content', 'block', 0, 0),
(320, 'shop', 'modShopBrandQuery', '品牌检索', 'shop', 'brandquery', 'tpl_shop_brandquery.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 10, '-1', '-1', -1, -1, '_self', -1, -1, 100, 40, 'fill', '品牌检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(169, 'news', 'modNewsHot30', '本月文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(172, 'news', 'modNewsSameTagList', '相关文章(同标签)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(319, 'shop', 'modShopSmallCart', '购物车提示信息', 'all', 'all', 'tpl_shop_smallcart.htm', '-1', 'A001', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 180, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '购物车', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(176, 'diy', 'modDiyMovi', 'FLASH视频', 'all', 'all', 'tpl_diymovi.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频', '-1', '-1', '-1', '-1', '请输入FLASH视频来源网址', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(175, 'advs', 'modLinkOpt', '下拉式友情链接', 'all', 'all', 'tpl_linkopt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 200, 50, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `pwn_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(204, 'member', 'modMemberRank3', '会员悬赏榜(积分三)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员悬赏榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(205, 'member', 'modMemberRank4', '会员金币榜(积分四)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员金币榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(206, 'member', 'modMemberRank5', '消费积分榜(积分五)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '消费积分榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(207, 'member', 'modMemberTags', '会员推荐(标签)', 'all', 'all', 'tpl_membertags.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 2, '-1', '-1', -1, -1, '_self', -1, -1, 70, 70, '-1', '会员推荐', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(203, 'member', 'modMemberRank2', '会员人气榜(积分二)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(202, 'member', 'modMemberRank1', '会员经验榜(积分一)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员经验榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(182, 'diy', 'modWordTT', '标题+链接组', 'all', 'all', 'tpl_wordtt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 70, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '今日头条', '-1', '-1', '-1', '-1', '-1', '-1', '请输入头条标题文字', '自定义链接文字一', '自定义链接文字二', '自定义链接文字三', '自定义链接文字四', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(183, 'diy', 'modWordText', '标题+介绍', 'all', 'all', 'tpl_wordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 100, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '插件标题', '-1', '-1', '-1', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(187, 'news', 'modNewsPicRollx3', '三图轮播特效', 'all', 'all', 'tpl_newspicrollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 0, 1),
(189, 'diy', 'modPicWords', '图片+标题组', 'all', 'all', 'tpl_picwordx5.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 120, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(190, 'effect', 'modButtonSource', '按钮素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 80, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '按钮素材', '-1', '-1', '-1', '-1', '-1', 'button/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(191, 'effect', 'modIconSource', '图标素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'icon/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(193, 'effect', 'modSmallIcon', '小图标素材', 'all', 'all', 'tpl_smallicon.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'smallicon/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(198, 'effect', 'modBgSource', '背景图片素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(195, 'effect', 'modSourceCoolLine', '分割线装饰素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '分割线素材', '-1', '-1', '-1', '-1', '-1', 'coolline/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(196, 'effect', 'modCartonSource', '其他图片素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '卡通图片', '-1', '-1', '-1', '-1', '-1', 'carton/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(200, 'diy', 'modGroupLable', '标签切换边框', 'all', 'all', 'tpl_plusborder.htm', '-1', 'A201', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', 'http://', 300, 300, 0, 0, 0, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自动标签', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(208, 'effect', 'modHeaderBg', '头部背景图素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头部背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(209, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'all', 'all', 'tpl_flash1.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(210, 'diy', 'modBgSound', '网页背景音乐(mid)', 'all', 'all', 'tpl_bgsound.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 50, 350, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景音乐', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(211, 'news', 'modNewsSameClass', '文章同级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(318, 'shop', 'modShopOrderSearch', '非会员订单查询', 'all', 'all', 'tpl_shop_ordersearch.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '订单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(214, 'diy', 'modHeadPic', '头部自定义效果图', 'all', 'all', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(219, 'diy', 'modDiyTemp', '自定义模版', 'all', 'all', 'tpl_diy.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定模版', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(220, 'news', 'modNewsTwoClass', '文章二级分类', 'all', 'all', 'tpl_newstwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(317, 'shop', 'modShopOrderDetail', '订单详情', 'shop', 'shoporderdetail', 'tpl_shop_orderdetail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(316, 'shop', 'modShopMemberOrder', '会员订单查询', 'member', 'shoporder', 'tpl_shop_order.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '订单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(315, 'shop', 'modShopOrderPay', '订单付款', 'shop', 'shoporderpay', 'tpl_shop_orderpay.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(314, 'shop', 'modShopStartOrder', '商品订购', 'shop', 'startorder', 'tpl_shop_startorder.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '商品订购', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(313, 'shop', 'modShopBrandGoodsQuery', '品牌相关商品检索', 'shop', 'branddetail', 'tpl_shop_query_1.htm', '-1', 'A001', '', 1, 'solid', '', '', 'block', '', '', '#fff', '-1', 650, 350, 0, 0, 90, 15, 10, 'id|xuhao|dtime|uptime|bn|prop1|prop2|price0|price|cl', 'desc', 0, 12, '_self', -1, 30, 100, 100, 'fill', '品牌商品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(312, 'shop', 'modShopBrandDetail', '品牌介绍', 'shop', 'branddetail', 'tpl_shop_branddetail.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '品牌介绍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(311, 'shop', 'modShopBrandClass', '品牌商品一级分类', 'all', 'branddetail', 'tpl_shopclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '品牌商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(310, 'shop', 'modShopBrandTwoClass', '品牌商品二级分类', 'all', 'branddetail', 'tpl_shoptwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '品牌商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(309, 'shop', 'modShopSaleList', '热卖商品排行榜', 'all', 'all', 'tpl_shop_hotlist.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '#fff', '{#RP#}shop/class/', 300, 350, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '热卖商品排行榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(308, 'shop', 'modShopHotList', '热门商品排行榜', 'all', 'all', 'tpl_shop_hotlist.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '#fff', '{#RP#}shop/class/', 300, 350, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '热门商品排行榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(307, 'shop', 'modShopSameTagList', '同标签相关商品', 'shop', 'detail', 'tpl_shoplist.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', -1, -1, 100, 100, 'fill', '相关商品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(306, 'shop', 'modShopComment', '商品点评', 'shop', 'detail', 'tpl_shop_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 350, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '商品评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(305, 'shop', 'modShopSameClass', '商品同级分类', 'shop', 'query', 'tpl_shopclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(303, 'shop', 'modShopSearchForm', '商品搜索表单', 'all', 'all', 'tpl_shop_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '商品搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(304, 'shop', 'modShopClassFc', '商品逐级分类', 'shop', 'query', 'tpl_shopclass.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 5, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(301, 'shop', 'modShopCart', '购物车', 'shop', 'cart', 'tpl_shop_cart.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '购物车', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(302, 'shop', 'modShopList', '自选商品列表', 'all', 'all', 'tpl_shoplist.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '#fff', '{#RP#}shop/class/', 300, 350, 0, 0, 90, 10, 6, 'id|xuhao|dtime|uptime|prop1|prop2|price0|price|cl', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新商品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(300, 'shop', 'modShopTwoClass', '商品二级分类', 'all', 'all', 'tpl_shoptwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(299, 'shop', 'modShopClass', '商品一级分类', 'all', 'all', 'tpl_shopclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(298, 'shop', 'modShopContent', '商品详情', 'shop', 'detail', 'tpl_shop_content.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 350, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '商品详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(297, 'shop', 'modShopBrandAll', '分类品牌列表', 'shop', 'brand', 'tpl_shop_brandall.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, -1, '-1', '-1', 0, -1, '_self', -1, -1, 100, 40, 'fill', '品牌查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(296, 'shop', 'modShopGlobalQuery', '全站翻页商品列表', 'all', 'all', 'tpl_shop_query_1.htm', '-1', 'A001', '', 1, 'solid', '', '', 'block', '', '', '#fff', '-1', 650, 350, 0, 0, 90, 15, 10, 'id|xuhao|dtime|uptime|bn|prop1|prop2|price0|price|cl', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '商品列表', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_shop_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(295, 'shop', 'modShopQuery', '商品检索搜索', 'shop', 'query', 'tpl_shop_query.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 220, 90, 5, 10, '-1', '-1', -1, 30, '_self', -1, 30, 100, 100, 'fill', '商品检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'visible', 'content', 'block', 0, 1),
(294, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(246, 'menu', 'modVMenu', '竖式导航菜单', 'all', 'all', 'tpl_vmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'content', 'block', 0, 0),
(247, 'menu', 'modMVMenu', '手风琴式二级菜单', 'all', 'all', 'tpl_mvmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 180, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', -1, 'visible', 'content', 'block', 0, 1),
(255, 'news', 'modNewsPicLb', '文章图片轮播', 'all', 'all', 'tpl_newspic_lb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 280, 0, 0, 99, 1, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 15, '-1', 0, -1, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 1),
(256, 'diy', 'modDiyHeadTraFlash', '头部自定义透明FLASH', 'all', 'all', 'tpl_diyheadtraflash.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(257, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'all', 'all', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 200, 0, 0, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', 1, 'hidden', 'top', 'block', 0, 1),
(258, 'page', 'modPagePicList', '标题+摘要+主题图', 'all', 'all', 'tpl_page_piclist.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 15, '_self', -1, 50, 120, 90, 'fill', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(259, 'tools', 'modToolsPhotoPollQuery', '图片投票翻页检索', 'all', 'all', 'tpl_tools_photopoll_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, 'id|uptime|votes', '-1', -1, 30, '-1', 0, -1, 80, 80, 'fill', '图片投票检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_tools_photopollindex', '', '', -1, 'visible', 'content', 'block', 0, 1),
(260, 'tools', 'modToolsQqCs', 'QQ客服', 'all', 'all', 'tpl_tools_qqcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 120, 300, 100, 20, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', 'QQ客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(261, 'tools', 'modToolsWyCs', '51客服', 'all', 'all', 'tpl_tools_wycs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 120, 100, 0, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', '51客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(262, 'tools', 'modToolsStatistics', '统计代码插件', 'all', 'all', 'tpl_tools_statistics.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 30, 30, 50, 400, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '统计代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bottom', 'block', 0, 0),
(263, 'tools', 'modToolsYdCs', '移动短信留言', 'all', 'all', 'tpl_tools_ydcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 400, 350, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '移动短信留言板', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(264, 'member', 'modMemberPayList', '会员付款记录', 'member', 'paylist', 'tpl_member_paylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '付款记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(265, 'member', 'modMemberBuyList', '会员消费记录', 'member', 'buylist', 'tpl_member_buylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '消费记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(266, 'job', 'modJobQuery', '职位翻页检索', 'all', 'all', 'tpl_jobquery.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#ffffff', '-1', 650, 350, 0, 0, 90, 15, 10, '-1', '-1', -1, 30, '_self', -1, 100, -1, -1, '-1', '职位查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(267, 'job', 'modJobList', '最新职位列表', 'all', 'all', 'tpl_joblist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}job/', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新职位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(268, 'job', 'modJobContent', '职位信息详情', 'job', 'detail', 'tpl_jobcontent.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 630, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '职位信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(269, 'job', 'modJobSearchForm', '职位搜索表单', 'job', 'all', 'tpl_job_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '职位搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(270, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(271, 'job', 'modJobForm', '应聘申请表单', 'job', 'detail', 'tpl_job_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#f5f5f5', '#505050', '#fff', '-1', 650, 500, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '应聘申请', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(321, 'shop', 'modShopTwoClassBrand', '分类品牌组合查询', 'all', 'all', 'tpl_shoptwoclass_brand.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 180, 300, 0, 0, 90, 0, -1, '-1', '-1', 0, -1, '_self', -1, -1, 140, 50, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(322, 'feedback', 'modFeedBackNavPath', '当前位置提示条', 'feedback', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(323, 'feedback', 'modFeedBackForm', '留言反馈表单', 'feedback', 'all', 'tpl_feedback_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '留言反馈', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_feedback_group', '', -1, 'visible', 'content', 'block', 0, 0),
(324, 'feedback', 'modFeedBackSmallForm', '全站留言表单', 'all', 'all', 'tpl_feedback_smallform.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '', '-1', 650, 500, 0, 0, 90, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '给我留言', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_feedback_group', '', 1, 'hidden', 'content', 'block', 0, 0),
(293, 'member', 'modMemberOnlinePay', '帐户在线充值', 'member', 'onlinepay', 'tpl_member_onlinepay.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '帐户在线充值', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(325, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'all', 'all', 'tpl_memberlogininfo.htm', '-1', '1000', '#4682b4', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 34, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'top', 'block', 0, 0),
(326, 'news', 'modNewsListDiy', '自定文章列表', 'all', 'all', 'tpl_newslist_diy.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 200, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, 50, -1, -1, '-1', '最新文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(327, 'shop', 'modShopBrandList', '品牌列表', 'all', 'all', 'tpl_shopbrand_list.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', 'shop/brand.php', 180, 300, 0, 0, 90, 0, 10, '-1', '-1', 0, -1, '_self', -1, -1, 140, 50, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusplan`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusplan` (
  `id` int(12) NOT NULL auto_increment,
  `planid` int(6) NOT NULL default '0',
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=474 ;

--
-- 转存表中的数据 `pwn_base_plusplan`
--

INSERT INTO `pwn_base_plusplan` (`id`, `planid`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(389, 35, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'main', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(471, 38, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_tpick.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 231, 334, 0, 0, 26, 0, 1, 'id', 'desc', 0, 12, '_self', 0, 30, 174, 158, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 6, 0, 'hidden', 'content', 'block'),
(472, 38, 'shop', 'modShopSaleList', '热卖商品排行榜', 'index', 'index', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 25, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(460, 38, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 81, 1315, 772, 22, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 3, 0, 'hidden', 'content', 'block'),
(461, 38, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 214, 117, 386, 770, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '广告位', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(462, 38, 'advs', 'modLogo', '网站标志', 'index', 'index', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(463, 38, 'shop', 'modShopSearchForm', '商品搜索表单', 'index', 'index', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(464, 38, 'diy', 'modHeadPic', '头部自定义效果图', 'index', 'index', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(465, 38, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'index', 'index', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(466, 38, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091117/1258426656.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(467, 38, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', '1000', '#e6e6e6', 5, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '', 226, 334, 0, 764, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(468, 38, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 214, 130, 6, 770, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 2, 0, 'hidden', 'content', 'block'),
(469, 38, 'news', 'modNewsListDiy', '自定文章列表', 'index', 'index', 'tpl_newslist_diy.htm', '-1', 'A639', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?2.html', 214, 188, 138, 770, 19, 10, 6, 'id', 'desc', 0, 12, '_self', 0, 50, -1, -1, 'fill', '最新活动', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(470, 38, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy2.htm', '-1', 'A642', '', 1, 'solid', '', 'click', 'none', '', '', '#fff', '{#RP#}shop/class/', 525, 415, 988, 235, 2, 10, 8, 'id', 'desc', 1, 25, '_self', 0, 30, 80, 80, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '饰品推荐2', '', '', 4, 0, 'hidden', 'content', 'block'),
(459, 38, 'menu', 'modMainMenu', '一级导航菜单', 'index', 'index', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 17, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(450, 38, 'advs', 'modLinkPic', '图片友情链接', 'index', 'index', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 24, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(451, 38, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 15, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(452, 38, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '', 226, 310, 344, 764, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '今日金价', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 2, 0, 'hidden', 'content', 'block'),
(453, 38, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy3.htm', '-1', 'A640', '', 1, 'solid', '', 'click', 'none', '', '', '#fff', '{#RP#}shop/class/', 226, 744, 659, 764, 14, 0, 2, 'id', 'desc', 1, 15, '_self', 116, 30, 200, 150, 'fill', '促销商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 3, 0, 'hidden', 'content', 'block'),
(454, 38, 'diy', 'modEdit', 'HTML编辑区', 'index', 'index', 'tpl_edit.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 214, 144, 504, 770, 21, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="FONT: 12px/24px Verdana, Arial, Helvetica, sans-serif; WIDTH: 100%; COLOR: #3d3d3d">\r\n<hr style="BORDER-RIGHT: 0px; BORDER-TOP: #c8c8c8 1px dashed; MARGIN-TOP: 8px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px; HEIGHT: 1px" />\r\n\r\n<div style="PADDING-LEFT: 20px; PADDING-TOP: 10px; HEIGHT: 24px"><img alt="" src="[ROOTPATH]index/pics/20091114/200911141258181612968.gif" border=0 />&nbsp;&nbsp;PT950：310.00元/克</div>\r\n<div style="PADDING-LEFT: 20px; HEIGHT: 24px"><img alt="" src="[ROOTPATH]index/pics/20091114/200911141258181612968.gif" border=0 />&nbsp;&nbsp;PT900：203.00元/克</div>\r\n<div style="PADDING-LEFT: 20px; HEIGHT: 24px"><img alt="" src="[ROOTPATH]index/pics/20091114/200911141258181612968.gif" border=0 />&nbsp;&nbsp;KC680：290.00元/克</div>\r\n<div style="PADDING-LEFT: 20px; HEIGHT: 24px"><img alt="" src="[ROOTPATH]index/pics/20091114/200911141258181612968.gif" border=0 />&nbsp;&nbsp;XU700：308.00元/克</div></div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(455, 38, 'shop', 'modShopSmallCart', '购物车提示信息', 'index', 'index', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(456, 38, 'advs', 'modAdvsLb', '图片轮播广告', 'index', 'index', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 525, 333, 0, 235, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '轮播广告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(457, 38, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy.htm', '-1', 'E641', '', 1, 'solid', '', 'click', 'none', '', '', '#fff', '{#RP#}shop/class/', 525, 636, 344, 235, 12, 10, 6, 'id', 'asc', 0, 10, '_self', 0, 30, 145, 133, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '钻石', '', '', 1, 0, 'hidden', 'content', 'block'),
(458, 38, 'shop', 'modShopTwoClass', '商品二级分类', 'index', 'index', 'tpl_shoptwoclass_diy.htm', '-1', 'A640', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 231, 638, 344, 0, 20, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(390, 35, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'main', 'tpl_qqmenu_2.htm', 'F', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 237, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(449, 38, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(473, 38, 'shop', 'modShopBrandList', '品牌列表', 'index', 'index', 'tpl_shopbrand_list.htm', '-1', 'A640', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', 'shop/brand.php', 232, 411, 992, 0, 23, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, 96, 34, 'fill', '推荐品牌', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(448, 38, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 501, 142, 1060, 248, 3, 0, 1, 'id', 'desc', 1, 30, '_self', 124, 80, 200, 140, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '饰品推荐', '', '', 5, 0, 'hidden', 'content', 'block'),
(388, 35, 'diy', 'modPic', '图片/FLASH', 'member', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(387, 35, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(386, 35, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(385, 35, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(381, 35, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'main', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(382, 35, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '', 'H596', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 780, 173, 245, 210, 4, 12, 5, 'id', 'desc', 0, 25, '_self', 0, -1, 100, 100, 'fill', '会员公告', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(383, 35, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '', 'E596', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 540, 204, 35, 210, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员登录信息', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(384, 35, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '', 'H596', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 227, 204, 35, 763, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员积分', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(380, 35, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 101, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 饰品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" border=0 /></div><!# footer end -->', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(391, 35, 'advs', 'modLogo', '网站标志', 'member', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 400, 87, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(392, 35, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'main', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(393, 35, 'shop', 'modShopSaleList', '热卖商品排行榜', 'member', 'main', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 16, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(394, 35, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'main', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 11, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(395, 35, 'advs', 'modLinkPic', '图片友情链接', 'member', 'main', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 15, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusplanid`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusplanid` (
  `id` int(6) NOT NULL auto_increment,
  `planname` varchar(50) NOT NULL default '',
  `plustype` varchar(50) NOT NULL default '',
  `pluslocat` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `pwn_base_plusplanid`
--

INSERT INTO `pwn_base_plusplanid` (`id`, `planname`, `plustype`, `pluslocat`) VALUES
(38, '首页排版方案', 'index', 'index'),
(35, '会员中心排版', 'member', 'main');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plustemp`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plustemp` (
  `id` int(12) NOT NULL auto_increment,
  `pluslable` char(30) NOT NULL default '',
  `cname` char(30) NOT NULL,
  `tempname` char(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=338 ;

--
-- 转存表中的数据 `pwn_base_plustemp`
--

INSERT INTO `pwn_base_plustemp` (`id`, `pluslable`, `cname`, `tempname`) VALUES
(297, 'modShopList', '商品名/图片/品牌/价格', 'tpl_shoplist_2.htm'),
(201, 'modLoginForm', '横式会员登录表单，请选用专用边框(如500号边框)', 'tpl_loginform_h.htm'),
(67, 'modMemberNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(68, 'modMemberNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(87, 'modMemberNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(88, 'modMemberNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(89, 'modNewsAuthorList', '标题+时间', 'tpl_newslist_time.htm'),
(90, 'modNewsAuthorList', '类别+标题', 'tpl_newslist_cat.htm'),
(91, 'modNewsAuthorList', '标题+摘要', 'tpl_newslist_memo.htm'),
(92, 'modNewsAuthorList', '标题+作者', 'tpl_newslist_author.htm'),
(103, 'modNewsContent', '仿新闻门户正文风格', 'tpl_newscontent_portal.htm'),
(16, 'modNewsHot', '标题+图标风格2', 'tpl_newshot2.htm'),
(58, 'modNewsHot', '标题+时间', 'tpl_newshot_time.htm'),
(59, 'modNewsHot', '标题+作者', 'tpl_newshot_author.htm'),
(60, 'modNewsHot', '标题+图标风格3', 'tpl_newshot3.htm'),
(61, 'modNewsHot', '标题+图标风格4', 'tpl_newshot4.htm'),
(102, 'modNewsHot', '标题+点击数', 'tpl_newshot_cl.htm'),
(62, 'modNewsHot30', '标题+图标风格2', 'tpl_newshot2.htm'),
(63, 'modNewsHot30', '标题+时间', 'tpl_newshot_time.htm'),
(64, 'modNewsHot30', '标题+作者', 'tpl_newshot_author.htm'),
(65, 'modNewsHot30', '标题+图标风格3', 'tpl_newshot3.htm'),
(66, 'modNewsHot30', '标题+图标风格4', 'tpl_newshot4.htm'),
(101, 'modNewsHot30', '标题+点击数', 'tpl_newshot_cl.htm'),
(2, 'modNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(3, 'modNewsList', '类别+标题', 'tpl_newslist_cat.htm'),
(57, 'modNewsList', '标题+参数列1,2,3', 'tpl_newslist_prop3.htm'),
(56, 'modNewsList', '标题+参数列1,2', 'tpl_newslist_prop2.htm'),
(55, 'modNewsList', '标题+参数列1', 'tpl_newslist_prop1.htm'),
(42, 'modNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(41, 'modNewsList', '标题+作者', 'tpl_newslist_author.htm'),
(198, 'modNewsPicMemo', '图片+标题+两个参数列', 'tpl_newspicprop_2.htm'),
(84, 'modNewsPicMemo', '图片+标题+三个参数列', 'tpl_newspicprop.htm'),
(93, 'modNewsProjList', '标题+时间', 'tpl_newslist_time.htm'),
(94, 'modNewsProjList', '类别+标题', 'tpl_newslist_cat.htm'),
(95, 'modNewsProjList', '标题+摘要', 'tpl_newslist_memo.htm'),
(96, 'modNewsProjList', '标题+作者', 'tpl_newslist_author.htm'),
(10, 'modNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(86, 'modNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(97, 'modNewsSameTagList', '标题+时间', 'tpl_newslist_time.htm'),
(98, 'modNewsSameTagList', '类别+标题', 'tpl_newslist_cat.htm'),
(99, 'modNewsSameTagList', '标题+摘要', 'tpl_newslist_memo.htm'),
(100, 'modNewsSameTagList', '标题+作者', 'tpl_newslist_author.htm'),
(313, 'modShopTwoClass', '商品二级分类收放式菜单', 'tpl_shoptwoclass_1030.htm'),
(303, 'modShopList', '商品名/价格纯文字列表', 'tpl_shoplist_8.htm'),
(302, 'modShopList', '商品名/图片/简介/价格(上下布局)', 'tpl_shoplist_7.htm'),
(301, 'modShopList', '商品名/图片/品牌/参数列/价格(上下布局)', 'tpl_shoplist_6.htm'),
(300, 'modShopList', '商品名/图片/价格(上下布局)', 'tpl_shoplist_5.htm'),
(48, 'modPicWords', '图片+四行标题', 'tpl_picwordx4.htm'),
(46, 'modPicWords', '图片+两行标题', 'tpl_picwordx2.htm'),
(49, 'modPicWords', '图片+三行标题', 'tpl_picwordx3.htm'),
(18, 'modText', '从右到左竖写', 'tpl_text_1.htm'),
(20, 'modTraFlash', '移动竖条', 'tpl_flash2.htm'),
(21, 'modTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(22, 'modTraFlash', '米字星光', 'tpl_flash4.htm'),
(45, 'modWordTT', '标题+4组链接', 'tpl_wordttx4.htm'),
(44, 'modWordTT', '标题+3组链接', 'tpl_wordttx3.htm'),
(43, 'modWordTT', '标题+2组链接', 'tpl_wordttx2.htm'),
(202, 'modNewsSearchForm', '竖式搜索表单', 'tpl_news_searchform_h.htm'),
(299, 'modShopList', '商品名/图片/简介/价格', 'tpl_shoplist_4.htm'),
(296, 'modShopList', '商品名/图片/简介单列', 'tpl_shoplist_1.htm'),
(205, 'modCommentSearchForm', '竖式搜索表单', 'tpl_comment_searchform_h.htm'),
(206, 'modSearchForm', '竖式搜索表单', 'tpl_searchform_h.htm'),
(207, 'modButtomInfo', '灰色渐变背景', 'tpl_bottominfo_1.htm'),
(208, 'modMemberTags', '头像+三组积分+推荐标签3', 'tpl_membertags_1.htm'),
(209, 'modMemberTags', '头像+推荐标签3', 'tpl_membertags_2.htm'),
(210, 'modMemberRank1', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(211, 'modMemberRank2', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(212, 'modMemberRank3', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(213, 'modMemberRank4', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(214, 'modMemberRank5', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(215, 'modHeadTraFlash', '移动竖条', 'tpl_flash2.htm'),
(216, 'modHeadTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(217, 'modHeadTraFlash', '米字星光', 'tpl_flash4.htm'),
(218, 'modHeadBgSource', '头部效果图片+圆角遮罩(5px)', 'tpl_headbg_circle.htm'),
(219, 'modHeadBgSource', '头部效果图片+圆角遮罩(9px)', 'tpl_headbg_circle9.htm'),
(220, 'modTopMenu', '白色文字', 'tpl_topmenu_white.htm'),
(221, 'modBgSound', '显示播放器', 'tpl_bgsound_show.htm'),
(222, 'modFormGroup', '列表式', 'tpl_formgroup_list.htm'),
(223, 'modNewsList', '标题+时间(微软雅黑,14px)', 'tpl_newslist_time_big.htm'),
(325, 'modFeedBackSmallForm', '小型留言表单(适合放在左右侧)', 'tpl_feedback_smallform1.htm'),
(280, 'modShopTwoClass', '商品二级分类树型风格', 'tpl_shoptwoclass_1.htm'),
(261, 'modDropDownMenu', '圆角标签二级下拉菜单模板', 'tpl_dropdownmenu_6.htm'),
(321, 'modShopList', '150*150橱窗式商品展示', 'tpl_shoplist_10.htm'),
(315, 'modShopSmallCart', '顶部购物车提示式样', 'tpl_shop_smallcart_top.htm'),
(314, 'modMemberMenu', '二级树形菜单', 'tpl_qqmenu_2.htm'),
(266, 'modBottomMenu', '底部菜单之纯文字菜单模板', 'tpl_bottommenu_1.htm'),
(267, 'modNewsList', '双列文章标题模板', 'tpl_newslist_mul.htm'),
(268, 'modPageTitleMenu', '圆角按钮型网页标题菜单', 'tpl_page_titlemenu_b1.htm'),
(270, 'modCommentQuery', '留言问答风格', 'tpl_comment_query_pw.htm'),
(271, 'modCommentContent', '留言问答风格', 'tpl_comment_content_pw.htm'),
(272, 'modMemberMenu', '圆角按钮仿QQ菜单模板', 'tpl_qqmenu_1.htm'),
(273, 'modNewsList', '标题 时间（反白）', 'tpl_newslist_time_white.htm'),
(274, 'modPageTitleMenu', '纯色背景网页标题菜单', 'tpl_page_titlemenu_b2.htm'),
(320, 'modShopList', '230*230橱窗式商品展示', 'tpl_shoplist_9.htm'),
(276, 'modPageTitleMenu', '深灰色按钮菜单', 'tpl_page_titlemenu_b7.htm'),
(312, 'modChannelMenu', '标签式菜单(单色)', 'tpl_channelmenu_1030.htm'),
(278, 'modPagePicList', '图片 标题 摘要,每行两个', 'tpl_page_piclist_2.htm'),
(298, 'modShopList', '商品名/图片/参数列/价格', 'tpl_shoplist_3.htm'),
(326, 'modMainMenu', '自定义模板', 'tpl_mainmenu_diy.htm'),
(327, 'modShopSmallCart', '顶部购物车提示式样2', 'tpl_shop_smallcart_top2.htm'),
(330, 'modShopList', '自定义模板', 'tpl_shoplist_diy.htm'),
(329, 'modShopTwoClass', '自定义模板', 'tpl_shoptwoclass_diy.htm'),
(331, 'modShopList', '自定义模板2', 'tpl_shoplist_diy2.htm'),
(332, 'modShopList', '自定义模板3', 'tpl_shoplist_diy3.htm'),
(333, 'modShopList', '自定义模板4', 'tpl_shoplist_diy4.htm'),
(334, 'modBottomMenu', '白色文字模板', 'tpl_bottommenu_white.htm'),
(335, 'modShopSaleList', '纯文字模板', 'tpl_shop_hotlist2.htm'),
(336, 'modShopList', '今日精选模板', 'tpl_shoplist_tpick.htm');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_version`
--

CREATE TABLE IF NOT EXISTS `pwn_base_version` (
  `version` varchar(30) NOT NULL default '',
  `release` int(8) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_base_version`
--

INSERT INTO `pwn_base_version` (`version`, `release`) VALUES
('1.0.0', 20090215),
('1.1.0', 20090320),
('1.1.1', 20090326),
('1.1.2', 20090327),
('1.1.3', 20090328),
('1.1.4', 20090401),
('1.1.5', 20090402),
('1.1.6', 20090412),
('1.1.7', 20090418),
('1.1.8', 20090419),
('1.1.9', 20090420),
('1.1.10', 20090421),
('1.2.0', 20090428),
('1.2.1', 20090504),
('1.2.2', 20090508),
('1.2.3', 20090514),
('1.2.4', 20090612),
('1.2.5', 20090615),
('1.2.6', 20090624),
('1.2.7', 20090728),
('1.2.8', 20090801),
('1.2.9', 20090802),
('1.2.10', 20090803),
('1.2.11', 20090804),
('1.2.12', 20090820),
('1.3.0', 20090828),
('1.3.1', 20090829),
('1.3.2', 20090830),
('1.3.3', 20090831),
('1.3.4', 20090901),
('1.3.5', 20090902),
('1.3.6', 20090903),
('1.3.7', 20090904),
('1.3.15', 20090912),
('1.3.8', 20090905),
('1.3.9', 20090906),
('1.3.11', 20090908),
('1.3.12', 20090909),
('1.3.16', 20091009),
('1.3.17', 20091010),
('1.3.18', 20091112),
('1.3.19', 20100623),
('1.4.0', 20100830),
('1.4.1', 20100920),
('1.4.2', 20100921),
('1.4.3', 20100925),
('1.5.0', 20111209),
('', 20120407),
('', 20120407),
('', 20120408),
('', 20120408),
('', 20120410),
('', 20120410);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment`
--

CREATE TABLE IF NOT EXISTS `pwn_comment` (
  `id` int(20) NOT NULL auto_increment,
  `pid` int(20) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `rid` int(20) NOT NULL default '0',
  `contype` varchar(30) NOT NULL default 'comment',
  `pname` varchar(100) NOT NULL default '',
  `title` varchar(200) NOT NULL default '',
  `body` text,
  `pj1` int(1) NOT NULL default '3',
  `pj2` int(1) NOT NULL default '3',
  `pj3` int(1) NOT NULL default '3',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `ip` varchar(16) NOT NULL default '',
  `iffb` int(1) NOT NULL default '0',
  `tuijian` int(1) NOT NULL default '0',
  `cl` int(10) NOT NULL default '0',
  `lastname` varchar(50) NOT NULL default '',
  `lastmemberid` int(12) NOT NULL default '0',
  `backcount` int(12) NOT NULL default '0',
  `picsrc` varchar(255) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `memberid` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=519 ;

--
-- 转存表中的数据 `pwn_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_comment_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `cat` varchar(50) NOT NULL default '',
  `catpath` varchar(255) NOT NULL,
  `coltype` varchar(30) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `ifbbs` int(1) NOT NULL default '1',
  `ifshow` int(1) NOT NULL default '1',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- 转存表中的数据 `pwn_comment_cat`
--

INSERT INTO `pwn_comment_cat` (`catid`, `pid`, `cat`, `catpath`, `coltype`, `xuhao`, `moveable`, `ifbbs`, `ifshow`) VALUES
(1, 0, '文章点评', '0001:', 'news', 2, 0, 0, 1),
(11, 0, '商品点评', '0011:', 'shop', 1, 0, 0, 1),
(112, 0, '网友留言', '0112:', 'comment', 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment_config`
--

CREATE TABLE IF NOT EXISTS `pwn_comment_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_comment_config`
--

INSERT INTO `pwn_comment_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '匿名点评是否审核', 'YN', '30', 'noMembercheck', '0', '匿名发表、回复点评时是否审核'),
(7, '点评图片上传尺寸限制(Byte)', 'input', '30', 'EditPicLimit', '204800', '发表点评时，编辑器内上传图片大小的限制'),
(6, '未登录时是否允许上传图片', 'YN', '30', 'NoMemberUpPic', '0', '未登录会员时,是否允许在编辑器内上传图片(备注:会员登录后发表点评是否可以上传图片，在会员权限中设置)'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '网友点评', '本模块对应的频道名称，如“网友点评”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(8, '点评关键词过滤', 'textarea', '30', 'KeywordDeny', '法轮功,麻醉,兴奋剂,妈的,操你,日你', '点评禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_feedback`
--

CREATE TABLE IF NOT EXISTS `pwn_feedback` (
  `id` int(3) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `field_caption` varchar(200) NOT NULL default '',
  `field_type` int(1) NOT NULL default '0',
  `field_size` int(5) NOT NULL default '0',
  `field_name` varchar(200) NOT NULL default '',
  `field_value` varchar(255) NOT NULL default '',
  `field_null` int(1) NOT NULL default '0',
  `value_repeat` int(1) NOT NULL default '0',
  `field_intro` varchar(255) NOT NULL default '',
  `use_field` int(1) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `xuhao` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1496 ;

--
-- 转存表中的数据 `pwn_feedback`
--

INSERT INTO `pwn_feedback` (`id`, `groupid`, `field_caption`, `field_type`, `field_size`, `field_name`, `field_value`, `field_null`, `value_repeat`, `field_intro`, `use_field`, `moveable`, `xuhao`) VALUES
(1, 0, '留言标题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(2, 0, '留言内容', 2, 399, 'content', '', 0, 1, '', 1, 0, 2),
(3, 0, '您的姓名', 1, 399, 'name', '', 0, 1, '', 0, 0, 3),
(5, 0, '联系电话', 1, 399, 'tel', '', 0, 1, '', 0, 0, 5),
(6, 0, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(7, 0, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(8, 0, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(9, 0, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(10, 0, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10),
(11, 0, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(4, 0, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4),
(12, 0, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(13, 0, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(14, 0, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(15, 0, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(16, 0, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(19, 0, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(18, 0, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(17, 0, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(20, 0, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(21, 0, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(22, 0, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(23, 0, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1145, 1, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1146, 1, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1147, 1, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1148, 1, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1149, 1, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1150, 1, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1143, 1, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(1144, 1, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1142, 1, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1141, 1, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1140, 1, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1139, 1, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1138, 1, '性别称谓', 5, 399, 'sex', '先生;女士', 0, 1, '', 0, 0, 9),
(1136, 1, '客户名称', 1, 399, 'company', '', 1, 1, '', 1, 0, 3),
(1137, 1, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1135, 1, 'QQ/MSN', 1, 399, 'qq', '', 0, 1, '', 1, 0, 9),
(1134, 1, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1133, 1, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(1132, 1, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(1131, 1, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 5),
(1130, 1, '联 系 人', 1, 399, 'name', '', 0, 1, '', 1, 0, 4),
(1129, 1, '详细描述', 2, 399, 'content', '', 1, 1, '', 1, 0, 2),
(1128, 1, '留言主题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_feedback_group`
--

CREATE TABLE IF NOT EXISTS `pwn_feedback_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `ifano` int(11) NOT NULL default '0',
  `allowmembertype` varchar(255) NOT NULL,
  `allowfeedback` char(255) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `pwn_feedback_group`
--

INSERT INTO `pwn_feedback_group` (`id`, `groupname`, `xuhao`, `moveable`, `ifano`, `allowmembertype`, `allowfeedback`, `intro`) VALUES
(1, '投诉建议', 1, 0, 1, '|26|', '|3|', '欢迎咨询');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_feedback_info`
--

CREATE TABLE IF NOT EXISTS `pwn_feedback_info` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `sex` varchar(10) NOT NULL default '',
  `tel` varchar(100) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `company_address` varchar(255) NOT NULL default '',
  `zip` varchar(6) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `products_id` varchar(100) NOT NULL default '',
  `products_name` varchar(200) NOT NULL default '',
  `products_num` varchar(9) NOT NULL default '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `ip` varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  `stat` int(2) NOT NULL default '0',
  `adminid` int(5) NOT NULL default '0',
  `coadminid` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

--
-- 转存表中的数据 `pwn_feedback_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_job`
--

CREATE TABLE IF NOT EXISTS `pwn_job` (
  `id` int(12) NOT NULL auto_increment,
  `jobname` varchar(255) NOT NULL default '',
  `jobtype` varchar(20) NOT NULL default '',
  `experience` varchar(100) NOT NULL default '',
  `education` varchar(50) NOT NULL default '',
  `langneed` varchar(50) NOT NULL default '',
  `langlevel` varchar(50) NOT NULL default '',
  `pnums` int(5) NOT NULL default '0',
  `jobaddr` varchar(200) NOT NULL default '',
  `jobintro` text,
  `jobrequest` text NOT NULL,
  `jobstat` int(1) NOT NULL default '0',
  `contact` varchar(50) NOT NULL default '',
  `tel` varchar(50) NOT NULL default '',
  `email` varchar(200) NOT NULL default '',
  `dtime` int(11) default '0',
  `uptime` int(11) default '0',
  `endtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `iffb` int(1) default '0',
  `contype` varchar(20) NOT NULL default 'job',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pwn_job`
--

INSERT INTO `pwn_job` (`id`, `jobname`, `jobtype`, `experience`, `education`, `langneed`, `langlevel`, `pnums`, `jobaddr`, `jobintro`, `jobrequest`, `jobstat`, `contact`, `tel`, `email`, `dtime`, `uptime`, `endtime`, `xuhao`, `cl`, `tj`, `iffb`, `contype`) VALUES
(7, '采购部经理助理', '全职', '3年以上', '大专', '', '', 1, '上海', '采购部经理助理', '采购部经理助理', 1, '', '', '', 1256218313, 1256218313, 0, 0, 16, 0, 1, 'job'),
(6, '网站编辑', '全职', '1年以上', '本科', '', '', 1, '上海', '网站编辑1名', '网站编辑1名', 1, '', '', '', 1256218268, 1256218268, 0, 0, 0, 0, 1, 'job'),
(4, '客户服务人员', '全职', '3年以上', '本科', '', '', 2, '上海', '客户服务人员2名\r\n', '客户服务人员2名\r\n', 1, '', '', '', 1252052940, 1256218232, 0, 0, 24, 0, 1, 'job');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_job_form`
--

CREATE TABLE IF NOT EXISTS `pwn_job_form` (
  `id` int(3) NOT NULL auto_increment,
  `field_caption` varchar(200) NOT NULL default '',
  `field_type` int(1) NOT NULL default '0',
  `field_size` int(5) NOT NULL default '0',
  `field_name` varchar(200) NOT NULL default '',
  `field_value` varchar(255) NOT NULL default '',
  `field_null` int(1) NOT NULL default '0',
  `value_repeat` int(1) NOT NULL default '0',
  `field_intro` varchar(255) NOT NULL default '',
  `use_field` int(1) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `xuhao` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `pwn_job_form`
--

INSERT INTO `pwn_job_form` (`id`, `field_caption`, `field_type`, `field_size`, `field_name`, `field_value`, `field_null`, `value_repeat`, `field_intro`, `use_field`, `moveable`, `xuhao`) VALUES
(1, '姓　　名', 1, 200, 'title', '', 1, 1, '', 1, 1, 1),
(2, '教育经历', 2, 399, 'content', '', 1, 1, '', 1, 0, 14),
(3, '出生日期', 1, 200, 'name', '', 1, 1, '', 1, 0, 3),
(4, '性　　别', 5, 50, 'sex', '男;女', 1, 1, '', 1, 0, 2),
(5, '联系电话', 1, 200, 'tel', '', 1, 1, '', 1, 0, 9),
(6, '通信地址', 1, 300, 'address', '', 1, 1, '', 1, 0, 11),
(7, '电子邮箱', 1, 300, 'email', '', 1, 1, '', 1, 0, 12),
(8, '博客/主页', 1, 399, 'url', '', 0, 1, '', 0, 0, 18),
(9, 'QQ/MSN', 1, 399, 'qq', '', 0, 1, '', 0, 0, 19),
(10, '毕业院校', 1, 300, 'company', '', 1, 1, '', 1, 0, 5),
(11, '最高学历', 1, 200, 'company_address', '', 1, 1, '', 1, 0, 6),
(12, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 19),
(13, '手机号码', 1, 200, 'fax', '', 0, 1, '', 1, 0, 10),
(14, '毕业专业', 1, 200, 'products_id', '', 1, 1, '', 1, 0, 7),
(15, '毕业时间', 1, 200, 'products_name', '', 1, 1, '', 1, 0, 8),
(16, '专业特长', 1, 399, 'products_num', '', 1, 1, '', 1, 0, 13),
(19, '婚姻状况', 5, 200, 'custom1', '未婚;已婚', 1, 1, '', 1, 0, 4),
(18, '工作经历', 2, 399, 'custom2', '', 1, 1, '', 1, 0, 15),
(17, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(20, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(21, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(22, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(23, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_job_telent`
--

CREATE TABLE IF NOT EXISTS `pwn_job_telent` (
  `id` int(12) NOT NULL auto_increment,
  `jobid` int(6) NOT NULL default '0',
  `jobname` char(200) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `sex` varchar(10) NOT NULL default '',
  `tel` varchar(100) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `company_address` varchar(255) NOT NULL default '',
  `zip` varchar(6) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `products_id` varchar(100) NOT NULL default '',
  `products_name` varchar(200) NOT NULL default '',
  `products_num` varchar(9) NOT NULL default '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `fileurl` varchar(200) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `stat` int(2) NOT NULL default '0',
  `fav` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_job_telent`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member`
--

CREATE TABLE IF NOT EXISTS `pwn_member` (
  `memberid` int(12) NOT NULL auto_increment,
  `membertypeid` int(3) NOT NULL default '0',
  `membergroupid` int(3) NOT NULL default '0',
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `company` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL default '',
  `birthday` int(8) NOT NULL default '0',
  `zoneid` int(10) NOT NULL default '0',
  `catid` int(10) NOT NULL default '0',
  `addr` varchar(255) NOT NULL default '',
  `tel` varchar(255) NOT NULL default '',
  `mov` varchar(255) NOT NULL default '',
  `postcode` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default 'http://',
  `passtype` varchar(255) NOT NULL default '',
  `passcode` varchar(255) NOT NULL default '',
  `qq` varchar(100) NOT NULL default '',
  `msn` varchar(100) NOT NULL default '',
  `maillist` int(1) NOT NULL default '0',
  `bz` text,
  `pname` varchar(30) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `memberface` varchar(100) NOT NULL,
  `nowface` varchar(50) NOT NULL,
  `checked` int(1) NOT NULL default '0',
  `rz` int(1) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `regtime` int(11) NOT NULL default '0',
  `exptime` int(11) NOT NULL default '0',
  `account` decimal(12,2) NOT NULL default '0.00',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `buytotal` decimal(12,2) NOT NULL default '0.00',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `ip` varchar(26) NOT NULL default '',
  `logincount` int(20) NOT NULL default '0',
  `logintime` int(11) NOT NULL default '0',
  `loginip` varchar(50) NOT NULL default '',
  `salesname` varchar(30) NOT NULL,
  PRIMARY KEY  (`memberid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- 转存表中的数据 `pwn_member`
--

INSERT INTO `pwn_member` (`memberid`, `membertypeid`, `membergroupid`, `user`, `password`, `name`, `company`, `sex`, `birthday`, `zoneid`, `catid`, `addr`, `tel`, `mov`, `postcode`, `email`, `url`, `passtype`, `passcode`, `qq`, `msn`, `maillist`, `bz`, `pname`, `signature`, `memberface`, `nowface`, `checked`, `rz`, `tags`, `regtime`, `exptime`, `account`, `paytotal`, `buytotal`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `ip`, `logincount`, `logintime`, `loginip`, `salesname`) VALUES
(155, 26, 1, 'aaaaa', '594f803b380a41396ed63dca39503542', '张三', '', '1', 19800918, 1, 0, '上海徐汇区华亭家园2-1209', '021-12345678', '13967527790', '210002', 'aaa@www.cn', 'http://', '身份证', '330809198009181520', '99887766', 'alex@hotmail.com', 0, '', 'aaaaa', '', '', '4', 1, 0, '', 1256349783, 0, 0.00, 0.00, 0.00, 13, 0, 0, 0, 0, '192.168.0.101', 4, 1258702699, '192.168.1.19', '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_buylist`
--

CREATE TABLE IF NOT EXISTS `pwn_member_buylist` (
  `id` int(12) NOT NULL auto_increment,
  `buyfrom` varchar(50) NOT NULL default '',
  `memberid` int(12) NOT NULL default '0',
  `orderid` int(12) NOT NULL default '0',
  `payid` int(12) NOT NULL default '0',
  `paytype` varchar(50) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `daytime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `OrderNo` varchar(30) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_buylist`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_member_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_cat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centlog`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centlog` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `event` int(5) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `memo` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_member_centlog`
--

INSERT INTO `pwn_member_centlog` (`id`, `memberid`, `event`, `dtime`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `memo`) VALUES
(1, 155, 111, 1256349783, 10, 0, 0, 0, 0, ''),
(4, 155, 114, 1258702699, 1, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centrule`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centrule` (
  `id` int(8) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `name` char(100) NOT NULL default '',
  `event` int(5) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- 转存表中的数据 `pwn_member_centrule`
--

INSERT INTO `pwn_member_centrule` (`id`, `coltype`, `name`, `event`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`) VALUES
(1, 'member', '新会员注册', 111, 10, 0, 0, 0, 0),
(6, 'member', '加好友', 112, 1, 0, 0, 0, 0),
(7, 'member', '发站内短信', 113, 1, 0, 0, 0, 0),
(21, 'member', '会员登录', 114, 1, 0, 0, 0, 0),
(2, 'news', '发布文章', 121, 10, 0, 0, 0, 0),
(9, 'news', '文章被支持', 122, 0, 1, 0, 0, 0),
(10, 'news', '文章被反对', 123, 0, -1, 0, 0, 0),
(22, 'news', '文章被版主推荐', 124, 20, 0, 0, 0, 0),
(23, 'news', '文章被版主删除并扣分', 125, -20, 0, 0, 0, 0),
(5, 'comment', '发表点评', 131, 5, 0, 0, 0, 0),
(8, 'comment', '回复点评', 132, 1, 0, 0, 0, 0),
(28, 'comment', '点评被版主推荐', 134, 20, 0, 0, 0, 0),
(29, 'comment', '点评被版主删除并扣分', 135, -20, 0, 0, 0, 0),
(41, 'shop', '订单付款', 313, 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centset`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centset` (
  `id` int(8) NOT NULL auto_increment,
  `centname1` char(50) NOT NULL,
  `centname2` char(50) NOT NULL,
  `centname3` char(50) NOT NULL,
  `centname4` char(50) NOT NULL,
  `centname5` char(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_member_centset`
--

INSERT INTO `pwn_member_centset` (`id`, `centname1`, `centname2`, `centname3`, `centname4`, `centname5`) VALUES
(1, '经验', '人气', '悬赏', '金币', '消费');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_config`
--

CREATE TABLE IF NOT EXISTS `pwn_member_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_member_config`
--

INSERT INTO `pwn_member_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '会员中心', '本模块对应的频道名称；用于显示在当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '会员网名昵称是否允许重复', 'YN', '1', 'DblPname', '1', '会员注册和修改资料时校验网名昵称是否允许重复'),
(4, 'UCenter 会员接口是否启用', 'YN', '1', 'UC_OPEN', '0', 'UCenter会员接口包括会员注册、会员登录接口；启用本接口前请先上传UCenter会员接口程序'),
(5, 'UCenter 应用 ID', 'input', '30', 'UC_APPID', '2', '该值为PHPWEB在 UCenter 的应用 ID，请填写你在UCenter将PHPWEB添加应用后实际获得的应用ID'),
(6, 'UCenter 通信密钥', 'input', '30', 'UC_KEY', 'PWUC2009', '通信密钥用于在 UCenter 和 PHPWEB 之间传输信息的加密，可包含任何字母及数字，请在 UCenter 与 PHPWEB 设置完全相同的通讯密钥，以确保两套系统能够正常通信'),
(7, 'UCenter 访问地址', 'input', '30', 'UC_API', 'http://discuz.phpweb.net/uc_server', '您的 UCenter 访问地址，不正确的设置可能导致网站功能异常，请小心修改。格式: http://www.sitename.com/uc_server (最后不要加''/'')'),
(7, 'UCenter IP 地址', 'input', '30', 'UC_IP', '', '如果您的服务器无法通过域名访问 UCenter，可以输入 UCenter 服务器的 IP 地址'),
(8, 'UCenter 数据库服务器', 'input', '30', 'UC_DBHOST', 'localhost', '可以是本地也可以是远程数据库服务器，如果 MySQL 端口不是默认的 3306，请填写如下形式：127.0.0.1:6033'),
(9, 'UCenter 数据库用户名', 'input', '30', 'UC_DBUSER', 'root', ''),
(10, 'UCenter 数据库密码', 'input', '30', 'UC_DBPW', '123456', ''),
(12, 'UCenter 数据库名', 'input', '30', 'UC_DBNAME', 'dbdiscuz', ''),
(13, 'UCenter 数据表前缀', 'input', '30', 'UC_DBTABLEPRE', 'cdb_uc_', '请填入您的UCenter数据表前缀，注意格式正确；如果是直接安装UCENTER，表前缀是一个“_”，如果是和discuz!一起安装的，则是带两个“_”的完整前缀'),
(14, 'UCenter 数据库编码', 'input', '30', 'UC_DBCHARSET', 'utf8', 'UCenter的数据库编码'),
(15, 'UCenter 的字符集', 'input', '30', 'UC_CHARSET', 'utf-8', ''),
(17, 'UCenter 用户自动激活时对应的会员类型', 'MTYPE', '30', 'UC_MEMBERTYPEID', '26', '用户登录时，在UCenter通过验证的用户（来自其他应用的用户），如果本系统没有该会员，自动增加会员时对应的会员类型');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_defaultrights`
--

CREATE TABLE IF NOT EXISTS `pwn_member_defaultrights` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL default '',
  `secureset` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=506 ;

--
-- 转存表中的数据 `pwn_member_defaultrights`
--

INSERT INTO `pwn_member_defaultrights` (`id`, `membertypeid`, `secureid`, `securetype`, `secureset`) VALUES
(505, 26, 133, 'func', '0'),
(504, 26, 132, 'func', '0'),
(502, 26, 127, 'func', '0'),
(503, 26, 131, 'func', '0'),
(501, 26, 126, 'class', ':1:2:'),
(500, 26, 123, 'func', '0'),
(499, 26, 122, 'func', '0'),
(498, 26, 121, 'func', '0'),
(497, 26, 114, 'func', '0'),
(493, 26, 101, 'con', '1'),
(494, 26, 111, 'func', '0'),
(495, 26, 112, 'func', '0'),
(496, 26, 113, 'func', '0');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_fav`
--

CREATE TABLE IF NOT EXISTS `pwn_member_fav` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `title` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `pwn_member_fav`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_friends`
--

CREATE TABLE IF NOT EXISTS `pwn_member_friends` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `fid` int(12) NOT NULL default '0',
  `fgroup` char(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_friends`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_group`
--

CREATE TABLE IF NOT EXISTS `pwn_member_group` (
  `id` int(6) NOT NULL auto_increment,
  `membergroup` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_member_group`
--

INSERT INTO `pwn_member_group` (`id`, `membergroup`) VALUES
(1, '个人'),
(2, '企业');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_msn`
--

CREATE TABLE IF NOT EXISTS `pwn_member_msn` (
  `id` int(12) NOT NULL auto_increment,
  `tomemberid` int(12) NOT NULL default '0',
  `frommemberid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `dtime` int(11) NOT NULL default '0',
  `iflook` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_member_msn`
--

INSERT INTO `pwn_member_msn` (`id`, `tomemberid`, `frommemberid`, `body`, `dtime`, `iflook`) VALUES
(1, 155, 0, 'aaaaa,您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: aaaaa\r\n密码: aaaaa\r\n\r\n网址:http://', 1256349783, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_notice`
--

CREATE TABLE IF NOT EXISTS `pwn_member_notice` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(20) default NULL,
  `title` varchar(255) default NULL,
  `body` text,
  `dtime` int(11) default NULL,
  `xuhao` int(5) default NULL,
  `cl` int(20) default NULL,
  `ifnew` int(1) default NULL,
  `ifred` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `pwn_member_notice`
--

INSERT INTO `pwn_member_notice` (`id`, `membertypeid`, `title`, `body`, `dtime`, `xuhao`, `cl`, `ifnew`, `ifred`) VALUES
(1, 0, '这是测试的一条会员公告', '这是测试的一条会员公告', 1220596305, 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_nums`
--

CREATE TABLE IF NOT EXISTS `pwn_member_nums` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(50) default NULL,
  `secureid` int(50) default NULL,
  `nums` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_nums`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_onlinepay`
--

CREATE TABLE IF NOT EXISTS `pwn_member_onlinepay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `paytype` char(30) NOT NULL default '',
  `paytotal` decimal(10,2) NOT NULL default '0.00',
  `ifpay` int(1) NOT NULL default '0',
  `addtime` int(11) NOT NULL default '0',
  `backtime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_member_onlinepay`
--

INSERT INTO `pwn_member_onlinepay` (`id`, `memberid`, `payid`, `paytype`, `paytotal`, `ifpay`, `addtime`, `backtime`, `ip`) VALUES
(1, 150, 2, '支付宝', 0.01, 0, 1255919231, 0, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_pay`
--

CREATE TABLE IF NOT EXISTS `pwn_member_pay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `oof` decimal(12,2) NOT NULL default '0.00',
  `method` varchar(200) NOT NULL default '',
  `type` varchar(50) NOT NULL default '',
  `addtime` int(11) NOT NULL default '0',
  `fpnum` varchar(100) NOT NULL default '',
  `memo` varchar(255) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_pay`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_paycenter`
--

CREATE TABLE IF NOT EXISTS `pwn_member_paycenter` (
  `id` int(11) NOT NULL auto_increment,
  `pcenter` varchar(100) NOT NULL default '',
  `pcentertype` int(2) NOT NULL default '0',
  `pcenteruser` varchar(100) NOT NULL default '',
  `pcenterkey` text,
  `key1` text,
  `key2` text,
  `hbtype` varchar(255) NOT NULL default '',
  `postfile` varchar(100) NOT NULL default '',
  `recfile` varchar(100) NOT NULL default '',
  `ifuse` int(1) NOT NULL default '0',
  `ifback` int(1) NOT NULL default '0',
  `intro` text,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_member_paycenter`
--

INSERT INTO `pwn_member_paycenter` (`id`, `pcenter`, `pcentertype`, `pcenteruser`, `pcenterkey`, `key1`, `key2`, `hbtype`, `postfile`, `recfile`, `ifuse`, `ifback`, `intro`, `xuhao`) VALUES
(1, '送货上门收款', 0, '', '', '', '', '', '', '', 1, 1, '限本地送货上门收款', 1),
(2, '支付宝', 1, '2088002053153634', '9fkjby5pbzscg61vil4pf6xwlp8b9w6d', 'wangjinmin1982@126.com', '', 'alipay_db', 'alipay_db_post.php', 'alipay_db_rec.php', 1, 1, '支付宝担保交易', 2),
(3, '建设银行账户', 0, '', '', '', '', '', '', '', 1, 1, '户名:王小丫\r\n账号:0000000000000000', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_regstep`
--

CREATE TABLE IF NOT EXISTS `pwn_member_regstep` (
  `id` int(8) NOT NULL auto_increment,
  `membertypeid` int(5) NOT NULL default '0',
  `regstep` varchar(30) NOT NULL,
  `stepname` varchar(50) NOT NULL,
  `xuhao` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `pwn_member_regstep`
--

INSERT INTO `pwn_member_regstep` (`id`, `membertypeid`, `regstep`, `stepname`, `xuhao`) VALUES
(1, 0, 'person', '头像签名设置', 1),
(2, 0, 'detail', '会员资料设置', 2),
(3, 0, 'contact', '填写联系信息', 3),
(69, 26, 'contact', '填写联系信息', 3),
(68, 26, 'detail', '会员资料设置', 2),
(67, 26, 'person', '头像签名设置', 1),
(70, 35, 'person', '头像签名设置', 1),
(71, 35, 'detail', '会员资料设置', 2),
(72, 35, 'contact', '填写联系信息', 3),
(73, 36, 'person', '头像签名设置', 1),
(74, 36, 'detail', '会员资料设置', 2),
(75, 36, 'contact', '填写联系信息', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_rights`
--

CREATE TABLE IF NOT EXISTS `pwn_member_rights` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL,
  `secureset` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4666 ;

--
-- 转存表中的数据 `pwn_member_rights`
--

INSERT INTO `pwn_member_rights` (`id`, `memberid`, `secureid`, `securetype`, `secureset`) VALUES
(4665, 155, 113, 'func', '0'),
(4664, 155, 112, 'func', '0'),
(4663, 155, 111, 'func', '0'),
(4662, 155, 101, 'con', '1'),
(4661, 155, 114, 'func', '0'),
(4660, 155, 121, 'func', '0'),
(4659, 155, 122, 'func', '0'),
(4658, 155, 123, 'func', '0'),
(4657, 155, 126, 'class', ':1:2:'),
(4656, 155, 131, 'func', '0'),
(4655, 155, 127, 'func', '0'),
(4654, 155, 132, 'func', '0'),
(4653, 155, 133, 'func', '0');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_secure`
--

CREATE TABLE IF NOT EXISTS `pwn_member_secure` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `securename` char(100) NOT NULL default '',
  `securetype` char(30) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- 转存表中的数据 `pwn_member_secure`
--

INSERT INTO `pwn_member_secure` (`id`, `coltype`, `securename`, `securetype`, `xuhao`) VALUES
(101, 'base', '内容阅读权限级别', 'con', 1),
(111, 'member', '会员登录帐号设置', 'func', 2),
(112, 'member', '会员头像签名设置', 'func', 3),
(113, 'member', '会员个人资料修改', 'func', 4),
(114, 'member', '会员联系信息修改', 'func', 5),
(121, 'news', '文章发布权限', 'func', 6),
(122, 'news', '文章修改权限', 'func', 7),
(123, 'news', '文章发布/修改免审核权限', 'func', 8),
(124, 'news', '文章图片上传权限', 'func', 5),
(125, 'news', '文章附件上传权限', 'func', 8),
(126, 'news', '文章公共分类投稿授权', 'class', 12),
(127, 'news', '文章自定义分类权限', 'func', 9),
(129, 'news', '文章版主权限(推荐/删除)', 'banzhu', 9),
(131, 'comment', '点评发表权限', 'func', 10),
(132, 'comment', '点评回复权限', 'func', 11),
(133, 'comment', '点评免审核权限', 'func', 12),
(134, 'comment', '点评图片上传权限', 'func', 4),
(139, 'comment', '点评版主权限(推荐/删除)', 'banzhu', 9);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_type`
--

CREATE TABLE IF NOT EXISTS `pwn_member_type` (
  `membertypeid` int(6) NOT NULL auto_increment,
  `membertype` varchar(100) default NULL,
  `membergroupid` int(3) NOT NULL default '0',
  `ifcanreg` int(1) default NULL,
  `ifchecked` int(1) default NULL,
  `regxy` text,
  `regmail` text,
  `expday` int(8) default NULL,
  `startcent` int(20) default NULL,
  `endcent` int(20) default NULL,
  `menugroupid` int(5) NOT NULL default '4',
  PRIMARY KEY  (`membertypeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `pwn_member_type`
--

INSERT INTO `pwn_member_type` (`membertypeid`, `membertype`, `membergroupid`, `ifcanreg`, `ifchecked`, `regxy`, `regmail`, `expday`, `startcent`, `endcent`, `menugroupid`) VALUES
(26, '普通会员', 1, 1, 1, '会员注册协议\r\n\r\n1.\r\n2.\r\n3.\r\n4.\r\n5.\r\n', '{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0, 4),
(35, 'VIP会员', 1, 0, 1, '', '{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n登录账号: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0, 4),
(36, '合作伙伴', 1, 0, 1, '', '', 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_zone`
--

CREATE TABLE IF NOT EXISTS `pwn_member_zone` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(50) default NULL,
  `xuhao` int(4) default NULL,
  `catpath` char(255) default NULL,
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `pwn_member_zone`
--

INSERT INTO `pwn_member_zone` (`catid`, `pid`, `cat`, `xuhao`, `catpath`) VALUES
(1, 0, '北京', 1, '0001:'),
(2, 0, '上海', 2, '0002:'),
(3, 0, '天津', 3, '0003:'),
(4, 0, '重庆', 4, '0004:'),
(5, 0, '浙江', 5, '0005:'),
(6, 0, '江苏', 6, '0006:'),
(7, 0, '广东', 7, '0007:'),
(8, 5, '杭州', 1, '0005:0008:'),
(9, 5, '嘉兴', 2, '0005:0009:'),
(10, 6, '南京', 1, '0006:0010:'),
(11, 6, '苏州', 2, '0006:0011:'),
(12, 7, '广州', 1, '0007:0012:'),
(13, 7, '深圳', 2, '0007:0013:'),
(21, 5, '宁波', 3, '0005:0021:'),
(26, 5, '舟山', 8, '0005:0026:'),
(25, 5, '金华', 7, '0005:0025:'),
(23, 5, '温州', 5, '0005:0023:'),
(22, 5, '湖州', 4, '0005:0022:'),
(24, 5, '台州', 6, '0005:0024:');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_menu`
--

CREATE TABLE IF NOT EXISTS `pwn_menu` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL default '',
  `linktype` int(1) NOT NULL default '1',
  `coltype` varchar(30) NOT NULL default '',
  `folder` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL default '',
  `ifshow` int(1) NOT NULL default '0',
  `xuhao` int(4) NOT NULL default '0',
  `target` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=295 ;

--
-- 转存表中的数据 `pwn_menu`
--

INSERT INTO `pwn_menu` (`id`, `groupid`, `pid`, `menu`, `linktype`, `coltype`, `folder`, `url`, `ifshow`, `xuhao`, `target`) VALUES
(3, 1, 0, '项链', 1, '', 'shop/class/?116.html', 'http://ssss.com', 1, 3, '_self'),
(80, 1, 0, '耳饰', 1, '', 'shop/class/?111.html', 'http://', 1, 2, '_self'),
(83, 1, 0, '首页', 0, 'index', '', 'http://', 1, 1, '_self'),
(215, 4, 0, '会员资料设置', 1, '', 'member/member_account.php', 'http://', 1, 1, '_self'),
(216, 4, 215, '登录账号', 1, '', 'member/member_account.php', 'http://', 1, 1, '_self'),
(152, 3, 0, '关于我们', 1, '', 'page/html/aboutus.php', 'http://', 1, 1, '_self'),
(153, 3, 0, '联系方式', 1, '', 'page/html/contact.php', 'http://', 1, 6, '_self'),
(155, 3, 0, '友情链接', 1, '', 'advs/link/', 'http://', 1, 10, '_self'),
(166, 2, 0, '会员中心', 0, 'member', '', 'http://', 1, 27, '_self'),
(165, 2, 0, '会员注册', 1, '', 'member/reg.php', 'http://', 1, 26, '_self'),
(273, 2, 0, '我的积分', 1, '', 'member/member_cent.php', 'http://', 1, 44, '_self'),
(218, 4, 215, '个人资料', 1, '', 'member/member_detail.php', 'http://', 1, 3, '_self'),
(217, 4, 215, '头像签名', 1, '', 'member/member_person.php', 'http://', 1, 2, '_self'),
(188, 2, 0, '我的收藏', 1, '', 'member/member_fav.php', 'http://', 1, 34, '_self'),
(272, 2, 0, '我的点评', 1, '', 'member/member_comment.php', 'http://', 1, 43, '_self'),
(206, 1, 0, '手/足链', 1, '', 'shop/class/?118.html', 'http://', 1, 5, '_self'),
(207, 1, 0, '衣饰', 1, '', 'shop/class/?120.html', 'http://', 1, 7, '_self'),
(219, 4, 215, '联系信息', 1, '', 'member/member_contact.php', 'http://', 1, 4, '_self'),
(286, 4, 235, '我的好友', 1, '', 'member/member_friends.php', 'http://', 1, 7, '_self'),
(287, 4, 235, '站内短信', 1, '', 'member/member_msn.php', 'http://', 1, 8, '_self'),
(291, 3, 0, '售后服务', 1, '', 'page/html/service.php', 'http://', 1, 5, '_self'),
(292, 3, 0, '投诉建议', 0, 'feedback', '', 'http://', 1, 8, '_self'),
(284, 4, 280, '在线充值', 1, '', 'member/member_onlinepay.php', 'http://', 1, 4, '_self'),
(235, 4, 0, '会员个人专区', 1, '', 'member/member_fav.php', 'http://', 1, 3, '_self'),
(236, 4, 235, '我的收藏夹', 1, '', 'member/member_fav.php', 'http://', 1, 1, '_self'),
(238, 4, 235, '我的点评', 1, '', 'member/member_comment.php', 'http://', 1, 3, '_self'),
(240, 4, 235, '我的积分', 1, '', 'member/member_cent.php', 'http://', 1, 6, '_self'),
(243, 4, 215, '退出登录', 1, '', 'logout.php', 'http://', 1, 5, '_self'),
(251, 2, 0, '站内短信', 1, '', 'member/member_msn.php', 'http://', 1, 42, '_self'),
(288, 3, 0, '支付方式', 1, '', 'page/html/payment.php', 'http://', 1, 3, '_self'),
(289, 3, 0, '配送说明', 1, '', 'page/html/dev.php', 'http://', 1, 4, '_self'),
(290, 3, 0, '购物指南', 1, '', 'page/html/guide.php', 'http://', 1, 2, '_self'),
(256, 1, 0, '戒指', 1, '', 'shop/class/?117.html', 'http://', 1, 4, '_self'),
(274, 1, 0, '发饰', 1, '', 'shop/class/?121.html', 'http://', 1, 8, '_self'),
(280, 4, 0, '订单账户管理', 0, 'index', '', 'http://', 1, 2, '_self'),
(281, 4, 280, '订单查询', 1, '', 'shop/order.php', 'http://', 1, 1, '_self'),
(282, 4, 280, '付款记录', 1, '', 'member/member_paylist.php', 'http://', 1, 2, '_self'),
(283, 4, 280, '消费记录', 1, '', 'member/member_buylist.php', 'http://', 1, 3, '_self'),
(279, 3, 0, '诚聘英才', 0, 'job', '', 'http://', 1, 9, '_self'),
(285, 1, 0, '品牌查询', 1, '', 'shop/brand.php', 'http://', 1, 11, '_self'),
(293, 1, 0, '手机伴侣', 1, '', 'shop/class/?122.html', 'http://', 1, 9, '_self'),
(294, 1, 0, '饰品配件', 1, '', 'shop/class/?104.html', 'http://', 0, 10, '_self');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_menu_group`
--

CREATE TABLE IF NOT EXISTS `pwn_menu_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- 转存表中的数据 `pwn_menu_group`
--

INSERT INTO `pwn_menu_group` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '频道导航菜单', 1, 0),
(2, '顶部导航菜单', 2, 0),
(3, '底部导航菜单', 3, 0),
(4, '会员功能菜单', 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_news_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `pwn_news_cat`
--

INSERT INTO `pwn_news_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '网站公告', 1, '0001:', 36, 0, 0),
(2, 0, '最新活动', 2, '0002:', 5, 0, 0),
(71, 0, '家电保养', 3, '0071:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_con`
--

CREATE TABLE IF NOT EXISTS `pwn_news_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'news',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `fileurl` varchar(100) NOT NULL,
  `tourl` varchar(255) NOT NULL,
  `downcount` int(10) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  `downcentid` int(1) NOT NULL default '1',
  `downcent` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=300 ;

--
-- 转存表中的数据 `pwn_news_con`
--

INSERT INTO `pwn_news_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `fileurl`, `tourl`, `downcount`, `tags`, `zhichi`, `fandui`, `tplog`, `downcentid`, `downcent`) VALUES
(294, 1, '0001:', 0, 'news', '节日购物满399元免邮费', '<p>节日购物满399元免邮费</p>\r\n<p></p>', 1255919953, 0, 0, 0, 1, 0, '0', 'gif', '', 1258450378, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(295, 1, '0001:', 0, 'news', '黄金/铂金售后服务', '<font color=#000000 size=3>黄金/铂金售后服务</font>\r\n<p>&nbsp;</p>', 1255919992, 0, 0, 0, 1, 0, '0', 'gif', '', 1258450412, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(296, 1, '0001:', 0, 'news', '店庆2周年，全场白银饰品九折优惠', '<div>店庆2周年，全场白银饰品九折优惠</div>', 1255920036, 0, 0, 0, 1, 0, '0', 'gif', '', 1258450574, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(297, 1, '0001:', 0, 'news', '第三届钻石文化节开幕', '第三届钻石文化节开幕', 1255920068, 0, 1, 0, 1, 0, '0', 'gif', '', 1258450617, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(298, 1, '0001:', 0, 'news', '购买情侣钻饰可享受八折优惠', '购买情侣钻饰可享受八折优惠', 1255920126, 0, 9, 0, 1, 0, '0', 'gif', '', 1258450665, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 1, 0, '|150|', 1, 0),
(299, 1, '0001:', 0, 'news', '买钻石饰品 享品质人生', '买钻石饰品 享品质人生', 1256047214, 0, 22, 0, 1, 0, '0', 'gif', '', 1258450728, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_config`
--

CREATE TABLE IF NOT EXISTS `pwn_news_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_news_config`
--

INSERT INTO `pwn_news_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '文章主题图片上传尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员发布文章上传主题图片时,单个图片尺寸的限制'),
(6, '文章编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布文章时,在编辑器内上传图片,单个图片的尺寸限制'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '资讯', '本模块对应的频道名称，如“新闻中心”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '0', '是否在当前位置提示条显示模块频道名称'),
(7, '附件上传大小限制', 'input', '30', 'FileSizeLimit', '1024000', '会员发布文章上传附件时,允许上传附件的文件大小;但最高设置不能超过2M '),
(8, '会员发布文章关键词过滤', 'textarea', '30', 'KeywordDeny', '法轮功,麻醉,兴奋剂', '会员发布文章时禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_downlog`
--

CREATE TABLE IF NOT EXISTS `pwn_news_downlog` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_news_downlog`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_pages`
--

CREATE TABLE IF NOT EXISTS `pwn_news_pages` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- 转存表中的数据 `pwn_news_pages`
--

INSERT INTO `pwn_news_pages` (`id`, `newsid`, `body`, `xuhao`) VALUES
(112, 299, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_pcat`
--

CREATE TABLE IF NOT EXISTS `pwn_news_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_news_pcat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_proj`
--

CREATE TABLE IF NOT EXISTS `pwn_news_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `pwn_news_proj`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_prop`
--

CREATE TABLE IF NOT EXISTS `pwn_news_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_news_prop`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_page`
--

CREATE TABLE IF NOT EXISTS `pwn_page` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `title` varchar(200) NOT NULL default '',
  `body` text NOT NULL,
  `xuhao` int(4) NOT NULL default '0',
  `src` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `memo` text NOT NULL,
  `pagefolder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pwn_page`
--

INSERT INTO `pwn_page` (`id`, `groupid`, `title`, `body`, `xuhao`, `src`, `url`, `memo`, `pagefolder`) VALUES
(1, 1, '关于我们', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 珠宝饰品网，秉着"创造亮丽生活的艺术"为宗旨，注重精品意识,追求时尚典雅的设计风格，力求完美无瑕的品质。打造国内、国际的互联网首饰饰品电子交易平台，互联网在线批发销售珍珠、绿松石、水晶、锆石、玉石、宝石、玛瑙、工艺品等各种首饰、饰品，提供最好的时尚首饰、新朝饰品,传递最美的人间真情,引领世界最新的时尚潮流,缔造最好的、最专业首饰、饰品批发互联网电子交易平台。全新的商业模式，使亮丽人生首饰商城网成为国内、国际珠宝及高档时尚消费商品电子商务领域的开拓者和领导者。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 珠宝饰品网的首饰、饰品均由大型首饰、饰品生产厂家共货，质量上乘、信誉保证，欢迎国际、国内客户咨询、洽谈、订货！</p>', 1, '', '', '', 'aboutus'),
(9, 1, '投诉建议', '', 8, '', 'feedback/index.php', '', 'tousu'),
(2, 1, '联系方式', '联系方式 ', 7, '', '', '', 'contact'),
(4, 1, '购物指南', '购物指南', 2, '', '', '', 'guide'),
(5, 1, '支付方式', '支付方式', 3, '', '', '', 'payment'),
(6, 1, '配送说明', '配送说明', 4, '', '', '', 'dev'),
(7, 1, '售后服务', '售后服务', 6, '', '', '', 'service');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_page_group`
--

CREATE TABLE IF NOT EXISTS `pwn_page_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `folder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_page_group`
--

INSERT INTO `pwn_page_group` (`id`, `groupname`, `xuhao`, `moveable`, `folder`) VALUES
(1, '网站介绍', 1, 0, 'html');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_brand`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_brand` (
  `id` int(12) NOT NULL auto_increment,
  `brand` char(100) NOT NULL default '',
  `logo` char(100) NOT NULL default '',
  `url` char(100) NOT NULL default '',
  `intro` text,
  `xuhao` int(5) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `pwn_shop_brand`
--

INSERT INTO `pwn_shop_brand` (`id`, `brand`, `logo`, `url`, `intro`, `xuhao`, `tj`) VALUES
(11, '海盗船', 'shop/pics/20091112/1258015675.gif', 'http://www.pirateship.com.cn', '　　“海盗船银饰”以经营流行首饰闻名遐尔，是国内连锁的银饰名牌。个性化的设计、齐全的品种款式、体贴完善的售后服务及诚信经营的品牌理念，一直受到消费者的推崇，并享誉业界。海盗船银饰采用925银及各种天然宝石、半宝石为主要材料，从设计、生产到销售，全部由海盗船总部直接管理、确保产品质量。 <br />　　海盗船创立至今已有10余年的历史，其正式注册品牌—“海盗船饰品”，至今已拥有数十万忠实消费者，并为越来越多的都市时尚一族所喜爱。海盗船饰品以设计见长，其流行、个性、前卫的形象，精致的手工和接近完美的品质，独具匠心、变化丰富的款式搭配，多年来，一直引领国内银饰品设计的潮流，深受业内行家的尊重，也为自主设计的国内银饰品牌树立了榜样。 <br />　　目前，以勇敢、冒险、神秘、个性为核心特色的“海盗船”，已经登陆全国10多个最具竞争力、充满活力与时尚氛围的大中城市，并在这些城市最为繁华的商业街选中最著名的商厦及大型百货商场，先后建立起了数十家直营专卖店和银饰专柜，深受广大都市时尚消费一族的青睐和信任，在各大商场同行业销售排行榜中一直名列榜首。 ', 20, 0),
(12, '迪士尼', 'shop/pics/20091113/1258076687.jpg', 'http://www.disney.com', '迪士尼 ', 0, 1),
(13, '伊泰莲娜', 'shop/pics/20091113/1258081098.jpg', 'http://www.itlmall.com/', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;伊泰莲娜是第一家在中国百货公司开创首饰专柜销售模式的公司；</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;伊泰莲娜是第一家取得 ISO 国际质量管理体系标准认证的首饰公司；</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;伊泰莲娜是第一家在中国创建首饰文化主题公园并有国家级工业旅游示范景点称号与省文化创意产业园称号的流行首饰公司；</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;伊泰莲娜是第一家与施华洛世奇公司在中国推行“ IB 计划”( 配件品牌互动计划) 的首饰公司(中国唯一一家)；</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;伊泰莲娜由国际权威机构 AC 尼尔森公司调研为国内流行饰品业品牌知名度第一。</p>', 0, 1),
(14, '蒂芙尼', 'shop/pics/20091113/1258087662.jpg', 'http://www.tiffany.cn/', 'Tiffany &amp; Co.自1837年创立以来，已经成为世界顶级<br />珠宝品牌以及美国设计的发源地。 ', 0, 1),
(15, 'CD迪奥', 'shop/pics/20091113/1258088153.jpg', 'www.dior.com', '　　<b>◆ 迪奥 （Dior）品牌档案：<br />\r\n<div class=spctrl></div>　　</b>国家：法国<br />\r\n<div class=spctrl></div>　　创建年代：1947年<br />\r\n<div class=spctrl></div>　　产品类别：女装、男装、香水、皮草、内衣、化妆品、珠宝、鞋靴及童装等<br />\r\n<div class=spctrl></div>　　创始人：克里斯汀·迪奥 (Christian Dior) 先生<br />\r\n<div class=spctrl></div>　　公司总部：法国巴黎 ', 0, 1),
(16, '蒙奇奇', 'shop/pics/20091113/1258088760.jpg', 'http://www.monchhichi.co.jp', '　　蒙奇奇（英文名：Monchhchi）是两只代表“幸福”和“幸运”的小猴子，是日本超人气玩偶，与Hello Kitty并列为前两大可爱玩偶。这只小猴子自从1974年诞生到现在，在全球超过30个国家都拥有支持者，目前已经有300种不同的产品分类。', 0, 1),
(17, 'Juicy Couture', 'shop/pics/20091113/1258089558.jpg', 'http://www.juicycouture.com', '　　来自美国加州的时尚品牌 Juicy Couture (橘滋)，设计走甜美女孩的路线。色彩方面，橘滋选取了极为鲜明的色彩，设计出既清新明艳又别具女人味的感觉。既有糖果般甜美的淡黄色、嫩绿色、彩蓝色、粉红色；也有淡逸自然的米色、浅绿色等，无论哪种色彩，都要让你感受到青春的活力。 <br />', 18, 1),
(18, '威妮华', 'shop/pics/20091113/1258089901.jpg', 'http://www.viennois.com/', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 威妮华是一家集设计、生产、销售时尚仿真首饰为一体的专业的知名企业。自1996年创始以来，积极进取、开拓创新的精神一直是威妮华的品牌精神。&nbsp; 威妮华的产品、生产规模、营销模式堪称行业中的首范。时尚、前卫、个性化的产品款式淋漓尽致地展现了现代女性的时尚、活泼、青春、典雅的气质特征 ', 19, 0),
(19, '哎呀呀', 'shop/pics/20091113/1258090740.jpg', 'http://www.aiyaya.com/', '<font face=Verdana>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;哎呀呀&nbsp; 一个响亮的女孩饰品连锁品牌。专业为广大女孩提供优质的女孩饰品，多年来一直秉承着“低价、时尚、热情、欢乐”的经营理念，致力研究并满足消费者的需求，迅速占领了中国市场，被称为女孩饰品专家。</font> ', 0, 1),
(20, 'E炫银饰', 'shop/pics/20091113/1258091467.jpg', 'http://', '', 0, 1),
(21, '嘉乐时尚', 'shop/pics/20091113/1258091713.jpg', 'http://', '', 0, 1),
(22, 'COOLPIN', 'shop/pics/20091113/1258092074.jpg', 'http://', '', 0, 1),
(23, '七彩女孩', 'shop/pics/20091113/1258092291.gif', 'http://', '', 0, 1),
(24, '银时代', 'shop/pics/20091113/1258092782.jpg', 'http://', '', 0, 1),
(25, 'SIDI饰典', 'shop/pics/20091113/1258092964.jpg', 'http://', '', 0, 1),
(26, '银之美', 'shop/pics/20091113/1258093399.jpg', 'http://', '', 0, 1),
(27, '施华洛世奇', 'shop/pics/20091117/1258447055.jpg', 'www.swarovski.com', '施华洛世奇', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_brandcat`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_brandcat` (
  `id` int(12) NOT NULL auto_increment,
  `brandid` int(10) NOT NULL default '0',
  `catid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=935 ;

--
-- 转存表中的数据 `pwn_shop_brandcat`
--

INSERT INTO `pwn_shop_brandcat` (`id`, `brandid`, `catid`) VALUES
(333, 11, 124),
(339, 11, 141),
(338, 11, 140),
(332, 11, 123),
(321, 11, 106),
(356, 11, 137),
(337, 11, 127),
(331, 11, 116),
(326, 11, 144),
(324, 11, 109),
(320, 11, 105),
(355, 11, 136),
(353, 11, 135),
(351, 11, 133),
(341, 11, 128),
(349, 11, 132),
(396, 15, 105),
(347, 11, 130),
(398, 15, 107),
(323, 11, 108),
(336, 11, 126),
(330, 11, 115),
(329, 11, 114),
(335, 11, 125),
(334, 11, 117),
(328, 11, 113),
(327, 11, 111),
(325, 11, 110),
(322, 11, 107),
(319, 11, 104),
(354, 11, 122),
(352, 11, 134),
(350, 11, 121),
(340, 11, 118),
(348, 11, 131),
(342, 11, 129),
(346, 11, 120),
(400, 15, 109),
(357, 12, 104),
(358, 12, 105),
(359, 12, 106),
(360, 12, 107),
(361, 12, 108),
(362, 12, 109),
(363, 12, 110),
(364, 12, 144),
(365, 12, 111),
(366, 12, 113),
(367, 12, 114),
(368, 12, 115),
(369, 12, 116),
(370, 12, 123),
(371, 12, 124),
(372, 12, 117),
(373, 12, 125),
(374, 12, 126),
(375, 12, 127),
(376, 12, 140),
(377, 12, 141),
(378, 12, 118),
(379, 12, 128),
(380, 12, 129),
(395, 15, 104),
(399, 15, 108),
(397, 15, 106),
(384, 12, 120),
(385, 12, 130),
(386, 12, 131),
(387, 12, 132),
(388, 12, 121),
(389, 12, 133),
(390, 12, 134),
(391, 12, 135),
(392, 12, 122),
(393, 12, 136),
(394, 12, 137),
(401, 15, 110),
(402, 15, 144),
(403, 15, 111),
(404, 15, 113),
(405, 15, 114),
(406, 15, 115),
(407, 15, 116),
(408, 15, 123),
(409, 15, 124),
(410, 15, 117),
(411, 15, 125),
(412, 15, 126),
(413, 15, 127),
(414, 15, 140),
(415, 15, 141),
(416, 15, 118),
(417, 15, 128),
(418, 15, 129),
(419, 15, 145),
(420, 15, 120),
(421, 15, 130),
(422, 15, 131),
(423, 15, 132),
(424, 15, 121),
(425, 15, 133),
(426, 15, 134),
(427, 15, 135),
(428, 15, 122),
(429, 15, 136),
(430, 15, 137),
(431, 14, 104),
(432, 14, 105),
(433, 14, 106),
(434, 14, 107),
(435, 14, 108),
(436, 14, 109),
(437, 14, 110),
(438, 14, 144),
(439, 14, 111),
(440, 14, 113),
(441, 14, 114),
(442, 14, 115),
(443, 14, 116),
(444, 14, 123),
(445, 14, 124),
(446, 14, 117),
(447, 14, 125),
(448, 14, 126),
(449, 14, 127),
(450, 14, 140),
(451, 14, 141),
(452, 14, 118),
(453, 14, 128),
(454, 14, 129),
(455, 14, 145),
(456, 14, 120),
(457, 14, 130),
(458, 14, 131),
(459, 14, 132),
(460, 14, 121),
(461, 14, 133),
(462, 14, 134),
(463, 14, 135),
(464, 14, 122),
(465, 14, 136),
(466, 14, 137),
(467, 13, 104),
(468, 13, 105),
(469, 13, 106),
(470, 13, 107),
(471, 13, 108),
(472, 13, 109),
(473, 13, 110),
(474, 13, 144),
(475, 13, 111),
(476, 13, 113),
(477, 13, 114),
(478, 13, 115),
(479, 13, 116),
(480, 13, 123),
(481, 13, 124),
(482, 13, 117),
(483, 13, 125),
(484, 13, 126),
(485, 13, 127),
(486, 13, 140),
(487, 13, 141),
(488, 13, 118),
(489, 13, 128),
(490, 13, 129),
(491, 13, 145),
(492, 13, 120),
(493, 13, 130),
(494, 13, 131),
(495, 13, 132),
(496, 13, 121),
(497, 13, 133),
(498, 13, 134),
(499, 13, 135),
(500, 13, 122),
(501, 13, 136),
(502, 13, 137),
(503, 23, 104),
(504, 23, 105),
(505, 23, 106),
(506, 23, 107),
(507, 23, 108),
(508, 23, 109),
(509, 23, 110),
(510, 23, 144),
(511, 23, 111),
(512, 23, 113),
(513, 23, 114),
(514, 23, 115),
(515, 23, 116),
(516, 23, 123),
(517, 23, 124),
(518, 23, 117),
(519, 23, 125),
(520, 23, 126),
(521, 23, 127),
(522, 23, 140),
(523, 23, 141),
(524, 23, 118),
(525, 23, 128),
(526, 23, 129),
(527, 23, 145),
(528, 23, 120),
(529, 23, 130),
(530, 23, 131),
(531, 23, 132),
(532, 23, 121),
(533, 23, 133),
(534, 23, 134),
(535, 23, 135),
(536, 23, 122),
(537, 23, 136),
(538, 23, 137),
(539, 22, 104),
(540, 22, 105),
(541, 22, 106),
(542, 22, 107),
(543, 22, 108),
(544, 22, 109),
(545, 22, 110),
(546, 22, 144),
(547, 22, 111),
(548, 22, 113),
(549, 22, 114),
(550, 22, 115),
(551, 22, 116),
(552, 22, 123),
(553, 22, 124),
(554, 22, 117),
(555, 22, 125),
(556, 22, 126),
(557, 22, 127),
(558, 22, 140),
(559, 22, 141),
(560, 22, 118),
(561, 22, 128),
(562, 22, 129),
(563, 22, 145),
(564, 22, 120),
(565, 22, 130),
(566, 22, 131),
(567, 22, 132),
(568, 22, 121),
(569, 22, 133),
(570, 22, 134),
(571, 22, 135),
(572, 22, 122),
(573, 22, 136),
(574, 22, 137),
(575, 21, 104),
(576, 21, 105),
(577, 21, 106),
(578, 21, 107),
(579, 21, 108),
(580, 21, 109),
(581, 21, 110),
(582, 21, 144),
(583, 21, 111),
(584, 21, 113),
(585, 21, 114),
(586, 21, 115),
(587, 21, 116),
(588, 21, 123),
(589, 21, 124),
(590, 21, 117),
(591, 21, 125),
(592, 21, 126),
(593, 21, 127),
(594, 21, 140),
(595, 21, 141),
(596, 21, 118),
(597, 21, 128),
(598, 21, 129),
(599, 21, 145),
(600, 21, 120),
(601, 21, 130),
(602, 21, 131),
(603, 21, 132),
(604, 21, 121),
(605, 21, 133),
(606, 21, 134),
(607, 21, 135),
(608, 21, 122),
(609, 21, 136),
(610, 21, 137),
(611, 20, 104),
(612, 20, 105),
(613, 20, 106),
(614, 20, 107),
(615, 20, 108),
(616, 20, 109),
(617, 20, 110),
(618, 20, 144),
(619, 20, 111),
(620, 20, 113),
(621, 20, 114),
(622, 20, 115),
(623, 20, 116),
(624, 20, 123),
(625, 20, 124),
(626, 20, 117),
(627, 20, 125),
(628, 20, 126),
(629, 20, 127),
(630, 20, 140),
(631, 20, 141),
(632, 20, 118),
(633, 20, 128),
(634, 20, 129),
(635, 20, 145),
(636, 20, 120),
(637, 20, 130),
(638, 20, 131),
(639, 20, 132),
(640, 20, 121),
(641, 20, 133),
(642, 20, 134),
(643, 20, 135),
(644, 20, 122),
(645, 20, 136),
(646, 20, 137),
(647, 19, 104),
(648, 19, 105),
(649, 19, 106),
(650, 19, 107),
(651, 19, 108),
(652, 19, 109),
(653, 19, 110),
(654, 19, 144),
(655, 19, 111),
(656, 19, 113),
(657, 19, 114),
(658, 19, 115),
(659, 19, 116),
(660, 19, 123),
(661, 19, 124),
(662, 19, 117),
(663, 19, 125),
(664, 19, 126),
(665, 19, 127),
(666, 19, 140),
(667, 19, 141),
(668, 19, 118),
(669, 19, 128),
(670, 19, 129),
(671, 19, 145),
(672, 19, 120),
(673, 19, 130),
(674, 19, 131),
(675, 19, 132),
(676, 19, 121),
(677, 19, 133),
(678, 19, 134),
(679, 19, 135),
(680, 19, 122),
(681, 19, 136),
(682, 19, 137),
(683, 18, 104),
(684, 18, 105),
(685, 18, 106),
(686, 18, 107),
(687, 18, 108),
(688, 18, 109),
(689, 18, 110),
(690, 18, 144),
(691, 18, 111),
(692, 18, 113),
(693, 18, 114),
(694, 18, 115),
(695, 18, 116),
(696, 18, 123),
(697, 18, 124),
(698, 18, 117),
(699, 18, 125),
(700, 18, 126),
(701, 18, 127),
(702, 18, 140),
(703, 18, 141),
(704, 18, 118),
(705, 18, 128),
(706, 18, 129),
(707, 18, 145),
(708, 18, 120),
(709, 18, 130),
(710, 18, 131),
(711, 18, 132),
(712, 18, 121),
(713, 18, 133),
(714, 18, 134),
(715, 18, 135),
(716, 18, 122),
(717, 18, 136),
(718, 18, 137),
(719, 17, 104),
(720, 17, 105),
(721, 17, 106),
(722, 17, 107),
(723, 17, 108),
(724, 17, 109),
(725, 17, 110),
(726, 17, 144),
(727, 17, 111),
(728, 17, 113),
(729, 17, 114),
(730, 17, 115),
(731, 17, 116),
(732, 17, 123),
(733, 17, 124),
(734, 17, 117),
(735, 17, 125),
(736, 17, 126),
(737, 17, 127),
(738, 17, 140),
(739, 17, 141),
(740, 17, 118),
(741, 17, 128),
(742, 17, 129),
(743, 17, 145),
(744, 17, 120),
(745, 17, 130),
(746, 17, 131),
(747, 17, 132),
(748, 17, 121),
(749, 17, 133),
(750, 17, 134),
(751, 17, 135),
(752, 17, 122),
(753, 17, 136),
(754, 17, 137),
(755, 16, 104),
(756, 16, 105),
(757, 16, 106),
(758, 16, 107),
(759, 16, 108),
(760, 16, 109),
(761, 16, 110),
(762, 16, 144),
(763, 16, 111),
(764, 16, 113),
(765, 16, 114),
(766, 16, 115),
(767, 16, 116),
(768, 16, 123),
(769, 16, 124),
(770, 16, 117),
(771, 16, 125),
(772, 16, 126),
(773, 16, 127),
(774, 16, 140),
(775, 16, 141),
(776, 16, 118),
(777, 16, 128),
(778, 16, 129),
(779, 16, 145),
(780, 16, 120),
(781, 16, 130),
(782, 16, 131),
(783, 16, 132),
(784, 16, 121),
(785, 16, 133),
(786, 16, 134),
(787, 16, 135),
(788, 16, 122),
(789, 16, 136),
(790, 16, 137),
(791, 24, 104),
(792, 24, 105),
(793, 24, 106),
(794, 24, 107),
(795, 24, 108),
(796, 24, 109),
(797, 24, 110),
(798, 24, 144),
(799, 24, 111),
(800, 24, 113),
(801, 24, 114),
(802, 24, 115),
(803, 24, 116),
(804, 24, 123),
(805, 24, 124),
(806, 24, 117),
(807, 24, 125),
(808, 24, 126),
(809, 24, 127),
(810, 24, 140),
(811, 24, 141),
(812, 24, 118),
(813, 24, 128),
(814, 24, 129),
(815, 24, 145),
(816, 24, 120),
(817, 24, 130),
(818, 24, 131),
(819, 24, 132),
(820, 24, 121),
(821, 24, 133),
(822, 24, 134),
(823, 24, 135),
(824, 24, 122),
(825, 24, 136),
(826, 24, 137),
(827, 25, 104),
(828, 25, 105),
(829, 25, 106),
(830, 25, 107),
(831, 25, 108),
(832, 25, 109),
(833, 25, 110),
(834, 25, 144),
(835, 25, 111),
(836, 25, 113),
(837, 25, 114),
(838, 25, 115),
(839, 25, 116),
(840, 25, 123),
(841, 25, 124),
(842, 25, 117),
(843, 25, 125),
(844, 25, 126),
(845, 25, 127),
(846, 25, 140),
(847, 25, 141),
(848, 25, 118),
(849, 25, 128),
(850, 25, 129),
(851, 25, 145),
(852, 25, 120),
(853, 25, 130),
(854, 25, 131),
(855, 25, 132),
(856, 25, 121),
(857, 25, 133),
(858, 25, 134),
(859, 25, 135),
(860, 25, 122),
(861, 25, 136),
(862, 25, 137),
(863, 26, 104),
(864, 26, 105),
(865, 26, 106),
(866, 26, 107),
(867, 26, 108),
(868, 26, 109),
(869, 26, 110),
(870, 26, 144),
(871, 26, 111),
(872, 26, 113),
(873, 26, 114),
(874, 26, 115),
(875, 26, 116),
(876, 26, 123),
(877, 26, 124),
(878, 26, 117),
(879, 26, 125),
(880, 26, 126),
(881, 26, 127),
(882, 26, 140),
(883, 26, 141),
(884, 26, 118),
(885, 26, 128),
(886, 26, 129),
(887, 26, 145),
(888, 26, 120),
(889, 26, 130),
(890, 26, 131),
(891, 26, 132),
(892, 26, 121),
(893, 26, 133),
(894, 26, 134),
(895, 26, 135),
(896, 26, 122),
(897, 26, 136),
(898, 26, 137),
(899, 27, 104),
(900, 27, 105),
(901, 27, 106),
(902, 27, 107),
(903, 27, 108),
(904, 27, 109),
(905, 27, 110),
(906, 27, 144),
(907, 27, 111),
(908, 27, 113),
(909, 27, 114),
(910, 27, 115),
(911, 27, 116),
(912, 27, 123),
(913, 27, 124),
(914, 27, 117),
(915, 27, 125),
(916, 27, 126),
(917, 27, 127),
(918, 27, 140),
(919, 27, 141),
(920, 27, 118),
(921, 27, 128),
(922, 27, 129),
(923, 27, 145),
(924, 27, 120),
(925, 27, 130),
(926, 27, 131),
(927, 27, 132),
(928, 27, 121),
(929, 27, 133),
(930, 27, 134),
(931, 27, 135),
(932, 27, 122),
(933, 27, 136),
(934, 27, 137);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- 转存表中的数据 `pwn_shop_cat`
--

INSERT INTO `pwn_shop_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(108, 104, '擦拭布', 4, '0104:0108:', 0, 0, 0),
(107, 104, '项链盒', 3, '0104:0107:', 0, 0, 0),
(106, 104, '手镯盒', 2, '0104:0106:', 0, 0, 0),
(105, 104, '戒指盒', 1, '0104:0105:', 0, 0, 0),
(104, 0, '饰品配件', 9, '0104:', 0, 0, 0),
(144, 104, '礼品盒', 6, '0104:0144:', 0, 0, 0),
(141, 117, '精品女戒', 5, '0117:0141:', 0, 0, 0),
(140, 117, '精品男戒', 4, '0117:0140:', 0, 0, 0),
(137, 122, '情侣挂件', 2, '0122:0137:', 0, 0, 0),
(135, 121, '发圈', 3, '0121:0135:', 0, 0, 0),
(134, 121, '发箍', 2, '0121:0134:', 0, 0, 0),
(133, 121, '发夹', 1, '0121:0133:', 0, 0, 0),
(132, 120, '毛衣链', 3, '0120:0132:', 0, 0, 0),
(131, 120, '外衣链', 2, '0120:0131:', 0, 0, 0),
(130, 120, '胸针', 1, '0120:0130:', 0, 0, 0),
(129, 118, '手镯', 2, '0118:0129:', 0, 0, 0),
(128, 118, '手链', 1, '0118:0128:', 0, 0, 0),
(127, 117, '时尚单戒', 3, '0117:0127:', 0, 0, 0),
(126, 117, '情侣对戒', 2, '0117:0126:', 0, 0, 0),
(125, 117, '钻戒', 1, '0117:0125:', 0, 0, 0),
(124, 116, '项坠', 2, '0116:0124:', 0, 0, 0),
(123, 116, '项链', 1, '0116:0123:', 0, 0, 0),
(122, 0, '手机伴侣', 8, '0122:', 0, 0, 0),
(136, 122, '手机挂件', 1, '0122:0136:', 0, 0, 0),
(121, 0, '发饰', 7, '0121:', 0, 0, 0),
(120, 0, '衣饰', 6, '0120:', 0, 0, 0),
(145, 118, '足链', 3, '0118:0145:', 0, 0, 0),
(118, 0, '手/足链', 4, '0118:', 0, 0, 0),
(117, 0, '戒指', 3, '0117:', 0, 0, 0),
(116, 0, '项链', 2, '0116:', 0, 0, 0),
(115, 111, '耳坠', 3, '0111:0115:', 0, 0, 0),
(109, 104, '精品袋', 5, '0104:0109:', 0, 0, 0),
(114, 111, '耳环', 2, '0111:0114:', 0, 0, 0),
(110, 104, '配件', 7, '0104:0110:', 0, 0, 0),
(113, 111, '耳钉', 1, '0111:0113:', 0, 0, 0),
(111, 0, '耳饰', 1, '0111:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_con`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `brandid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'shop',
  `bn` varchar(30) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `canshu` text NOT NULL,
  `price0` decimal(10,2) default '0.00',
  `price` decimal(10,2) default '0.00',
  `danwei` varchar(20) NOT NULL default '',
  `kucun` int(6) NOT NULL default '0',
  `cent` int(10) NOT NULL default '0',
  `weight` int(10) NOT NULL default '0',
  `salenums` int(6) NOT NULL default '0',
  `xuhao` int(5) NOT NULL default '0',
  `cl` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `iffb` int(1) NOT NULL default '0',
  `ifbold` int(1) NOT NULL default '0',
  `ifred` varchar(20) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) NOT NULL default '',
  `source` varchar(100) NOT NULL default '',
  `memberid` varchar(100) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `tags` varchar(255) NOT NULL default '',
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `pwn_shop_con`
--

INSERT INTO `pwn_shop_con` (`id`, `catid`, `catpath`, `pcatid`, `brandid`, `contype`, `bn`, `title`, `body`, `canshu`, `price0`, `price`, `danwei`, `kucun`, `cent`, `weight`, `salenums`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `dtime`, `uptime`, `author`, `source`, `memberid`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `tags`, `zhichi`, `fandui`, `tplog`) VALUES
(11, 144, '0104:0144:', 0, 11, 'shop', '91096a', '高级仿皮盒', '<p align=center><img style="WIDTH: 596px; HEIGHT: 334px" height=247 alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091112/200911121258016184296.jpg" width=375 border=0 /></p>\r\n<p>仿羊皮面精品礼盒系列：外表采用优质仿羊皮面料，衬以海蓝色丝绸内里，是您盛放精美饰品永久收藏，或馈赠亲友的理想之选。 请您在选择时注意尺寸！ 适合存放项链、手链、手镯、耳环、耳坠或套装等多种大件饰品。 </p>', '', 48.00, 40.00, '个', 20, 0, 50, 0, 0, 1, 1, 1, 0, '0', 'gif', 'shop/pics/20091112/1258016232.jpg', 1258016232, 1258016232, '管理员', '', '0', 0, '', '20.5 厘米', '5.0 厘米', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(15, 115, '0111:0115:', 0, 11, 'shop', '610195-41055', '月光石耳坠', '<DIV align=center><IMG alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091113/200911131258075874921.jpg" border=0></DIV>\r\n<DIV align=center>效果图<BR>&nbsp;</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV><BR>银饰保养小常识： A、平时不戴时，密封保存，可用小塑料袋装好，隔绝空气减少氧化机会，保持饰品常新； B、对光面的饰品，平时可以用细腻的纸巾或软布进行擦拭，避免划痕，清洗时单独清洗； C、正确地对饰品进行清洗，正确地佩戴是保养方法之一。</DIV>', '', 234.00, 195.00, '对', 3, 0, 3, 0, 0, 1, 1, 1, 0, '0', 'gif', 'shop/pics/20091113/1258075891.jpg', 1258075891, 1258087159, '管理员', '', '0', 0, '月光石（Moon Stone）：呈半透明状，如同朦胧的月光。因为其拥有美丽的猫眼光芒，所以，亦称为彩虹月亮石。古时候，人们就认为佩戴月光石能给人带来好运，并能唤醒心上人的温柔感情，给人以力量，所以它又名“恋人之石”。月亮石是公历四月份的生辰幸运石。另：请勿沾水，以免影响宝石的牢固程度，所以请小心呵护！', '耳坠', '月光石、925纯银', '欧式', '三叶草', '镶嵌月亮石', '全新', '白', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(16, 124, '0116:0124:', 0, 11, 'shop', '670358-32096', '月光石项坠 ', '<DIV align=center><IMG alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091113/200911131258076211875.jpg" border=0></DIV>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV align=center><IMG alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091113/200911131258076228187.jpg" border=0></DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>银饰保养小常识： A、平时不戴时，密封保存，可用小塑料袋装好，隔绝空气减少氧化机会，保持饰品常新； B、对光面的饰品，平时可以用细腻的纸巾或软布进行擦拭，避免划痕，清洗时单独清洗； C、正确地对饰品进行清洗，正确地佩戴是保养方法之一。</DIV>', '', 429.60, 358.00, '个', 2, 0, 4, 0, 0, 1, 1, 1, 0, '0', 'gif', 'shop/pics/20091113/1258076243.jpg', 1258076243, 1258087206, '管理员', '', '0', 0, '月光石（Moon Stone）：呈半透明状，如同朦胧的月光。因为其拥有美丽的猫眼光芒，所以，亦称为彩虹月亮石。古时候，人们就认为佩戴月光石能给人带来好运，并能唤醒心上人的温柔感情，给人以力量，所以它又名“恋人之石”。月亮石是公历四月份的生辰幸运石。另：请勿沾水，以免影响宝石的牢固程度，所以请小心呵护！', '项坠', '月光石、925纯银', '欧式', '太阳花', '镶嵌月亮石', '全新', '白', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(18, 126, '0117:0126:', 0, 12, 'shop', 'R0001P ', '迪士尼银饰系列纯银镀白金米奇对戒', '<DIV align=center><IMG alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091113/200911131258078221140.jpg" border=0></DIV>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV align=center><IMG alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091113/200911131258078238531.jpg" border=0></DIV>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV align=center><IMG alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091113/200911131258078251546.jpg" border=0></DIV>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV align=center><IMG alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091113/200911131258078265640.jpg" border=0></DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>【银饰知识】<BR>什么是925纯银？</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>925纯银是92.5%的 银加上7.5%的合金，是国际公认制作银首饰的标准材料， 国际规定，凡是92.5%的银就可以 称为纯银。由于银本身 的特 性，使得100%的银质地很软， 很容易划伤，而且不适 宜越来 越精细的工艺要求，以及现代流行饰品越来越丰富和夸张的造型要求。再加上100%银 容易变色和失去光泽， 因此，1851 年，Tiffany（蒂凡尼）公司推出第一套含银 92.5%的银器后 ，925银便迅速变成为银饰的主力，并成为 国际上鉴定银饰是否为纯银的标准。 由于加入了7.5%的合 金，使银具有了良 好的硬度、亮度及 光泽，而且能够镶嵌 各种宝石，从此银首 饰以色泽光鲜、 款式别致、工艺精美的时尚品位，迅速风靡全世界。 应该说，925纯银是目前国际公认质地最好、纯度最高而且最适宜制作银首饰的标 准材料。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>银饰保养方法：</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>银饰品变黑是正常的自然现象,因空气和其它自然介质中的硫和氧化物等对银都有一定的腐蚀作用,在佩戴一段时间后,就会出现一些微小的斑点（硫化银膜）, 久之会扩散成片,甚至变成黑色.即使在饰品表面电镀一层保护膜，如果时间久了不注意依旧会出现氧化作用。所以, 目前银饰品都有一些因氧 化而变色现象.不过，要是注意下面几点，可以延长你的宝贝饰品的光亮期哦。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>1、 避免银饰和珠宝与发胶、香水 、护肤品、肥皂等放在一起，它们会导致银饰和珠宝黯淡无光甚至发黑。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>2、 洗衣洗 澡时应及时取下各类首饰，以防饰品遇碱类产品。特别是含氯的漂白剂和银接触后，会起氯化反应，使银饰迅速变黑。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>3、 银饰与珠宝不用时，一定要将它们彻底弄干后再收纳放置，以免 水气使它们失去光泽。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>4、 较长时间不用的银饰最好使用密封袋（即袋口有帖轨的塑料袋）挤去空气后将帖轨压合， 然后再放置起来， 这样可以使银饰和空气的接触减少到最少.</DIV>', '', 237.60, 198.00, '对', 31, 0, 15, 0, 0, 6, 1, 1, 0, '0', 'gif', 'shop/pics/20091113/1258079282.jpg', 1258078274, 1258353712, '管理员', '', '0', 0, '保修：一年内保修(邮费自费)，终生维修。支持七天无理由退货，具体条款参照商城规定', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '饰品推荐2,', 0, 0, ''),
(19, 128, '0118:0128:', 0, 12, 'shop', 'DC-H212P', '迪士尼925纯银米奇手链', '<DIV align=center><IMG alt="" src="http://2000.com/phpwebmall/2029/www/shop/pics/20091113/200911131258079151781.jpg" border=0></DIV>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV>【银饰知识】<BR>什么是925纯银？</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>925纯银是92.5%的 银加上7.5%的合金，是国际公认制作银首饰的标准材料， 国际规定，凡是92.5%的银就可以 称为纯银。由于银本身 的特 性，使得100%的银质地很软， 很容易划伤，而且不适 宜越来 越精细的工艺要求，以及现代流行饰品越来越丰富和夸张的造型要求。再加上100%银 容易变色和失去光泽， 因此，1851 年，Tiffany（蒂凡尼）公司推出第一套含银 92.5%的银器后 ，925银便迅速变成为银饰的主力，并成为 国际上鉴定银饰是否为纯银的标准。 由于加入了7.5%的合 金，使银具有了良 好的硬度、亮度及 光泽，而且能够镶嵌 各种宝石，从此银首 饰以色泽光鲜、 款式别致、工艺精美的时尚品位，迅速风靡全世界。 应该说，925纯银是目前国际公认质地最好、纯度最高而且最适宜制作银首饰的标 准材料。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>银饰保养方法：</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>银饰品变黑是正常的自然现象,因空气和其它自然介质中的硫和氧化物等对银都有一定的腐蚀作用,在佩戴一段时间后,就会出现一些微小的斑点（硫化银膜）, 久之会扩散成片,甚至变成黑色.即使在饰品表面电镀一层保护膜，如果时间久了不注意依旧会出现氧化作用。所以, 目前银饰品都有一些因氧 化而变色现象.不过，要是注意下面几点，可以延长你的宝贝饰品的光亮期哦。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>1、 避免银饰和珠宝与发胶、香水 、护肤品、肥皂等放在一起，它们会导致银饰和珠宝黯淡无光甚至发黑。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>2、 洗衣洗 澡时应及时取下各类首饰，以防饰品遇碱类产品。特别是含氯的漂白剂和银接触后，会起氯化反应，使银饰迅速变黑。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>3、 银饰与珠宝不用时，一定要将它们彻底弄干后再收纳放置，以免 水气使它们失去光泽。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV>4、 较长时间不用的银饰最好使用密封袋（即袋口有帖轨的塑料袋）挤去空气后将帖轨压合， 然后再放置起来， 这样可以使银饰和空气的接触减少到最少.</DIV>', '', 252.00, 210.00, '条', 13, 0, 25, 0, 0, 1, 1, 1, 0, '0', 'gif', 'shop/pics/20091113/1258079159.jpg', 1258079159, 1258353726, '管理员', '', '0', 0, '免费提供迪士尼米奇原装精美包装首饰袋.', '手链', '925纯银', '欧美', '米奇', '未镶嵌', '全新', '银', '', '', '', '', '', '', '', '', '', '', '', '', '', '饰品推荐2,', 0, 0, ''),
(21, 104, '0104:', 0, 13, 'shop', 'sptj-0001', '花小钱 购大钻 930元购华钻繁花梦繁华彩金单钻耳钉', '花小钱 购大钻 930元购华钻繁花梦繁华彩金单钻耳钉 ', '', 30967.20, 25806.00, '个', 30, 0, 30, 0, 0, 2, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258445911.jpg', 1258183119, 1258446017, '管理员', '', '0', 0, '花小钱 购大钻 930元购华钻繁花梦繁华彩金单钻耳钉', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '饰品推荐2,', 0, 0, ''),
(22, 104, '0104:', 0, 17, 'shop', 'sptj-0002', '云之恋典雅白金单钻耳钉2100元震撼价购完美畅销钻饰', '云之恋典雅白金单钻耳钉2100元震撼价购完美畅销钻饰', '', 16806.00, 14005.00, '个', 30, 0, 25, 0, 0, 0, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258445996.jpg', 1258183180, 1258445996, '管理员', '', '0', 0, '云之恋典雅白金单钻耳钉2100元震撼价购完美畅销钻饰', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '饰品推荐2,', 0, 0, ''),
(23, 104, '0104:', 0, 11, 'shop', 'sptj-0003', '至美靓钻 2080元让你钻到家灵动温柔优雅单钻', '至美靓钻 2080元让你钻到家灵动温柔优雅单钻 ', '', 2496.00, 2080.00, '个', 30, 0, 28, 0, 0, 5, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258446475.jpg', 1258183241, 1258448189, '管理员', '', '0', 0, '至美靓钻 2080元让你钻到家灵动温柔优雅单钻', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '饰品推荐2,钻石,', 0, 0, ''),
(24, 104, '0104:', 0, 14, 'shop', 'sptj-0004', '美钻劲爆价全场特惠限量芳华简练优雅单钻石耳钉', '美钻劲爆价全场特惠限量芳华简练优雅单钻石耳钉 ', '', 13560.00, 11300.00, '个', 30, 0, 24, 0, 0, 0, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258446073.jpg', 1258183330, 1258448231, '管理员', '', '0', 0, '美钻劲爆价全场特惠限量芳华简练优雅单钻石耳钉', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '饰品推荐2,钻石,', 0, 0, ''),
(25, 104, '0104:', 0, 11, 'shop', 'sptj-0005', '09年畅销新款钻饰980超低价星之恋', '09年畅销新款钻饰980超低价星之恋 ', '', 12243.60, 10203.00, '个', 30, 0, 20, 0, 0, 0, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258446332.jpg', 1258183374, 1258448208, '管理员', '', '0', 0, '09年畅销新款钻饰980超低价星之恋', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '饰品推荐2,钻石,', 0, 0, ''),
(26, 124, '0116:0124:', 0, 13, 'shop', 'HJDZ-00012', '恋の风景·蔷薇（G750黄金单钻钻石吊坠）', '此款吊坠，外观造型有如玲珑香水瓶中盛装美钻，香水与钻的双重联想，情浓如香，让女人味随钻的光芒流散。此款吊坠，外观造型有如玲珑香水瓶中盛装美钻，香水与钻的双重联想，情浓如香，让女人味随钻的光芒流散。 ', '', 1500.00, 1250.00, '个', 30, 0, 36, 0, 0, 7, 1, 1, 0, '0', 'gif', 'shop/pics/20091116/1258342454.jpg', 1258342454, 1258342479, '管理员', '', '0', 0, '此款吊坠，外观造型有如玲珑香水瓶中盛装美钻，香水与钻的双重联想，情浓如香，让女人味随钻的光芒流散。', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '饰品推荐,', 0, 0, ''),
(27, 104, '0104:', 0, 14, 'shop', 'DFN－00125', '璀璨人生', '璀璨人生的介绍璀璨人生的介绍璀璨人生的介绍璀璨人生的介绍璀璨人生的介绍', '', 2190.00, 1220.00, '个', 10, 0, 28, 0, 0, 2, 0, 1, 0, '0', 'gif', 'shop/pics/20091116/1258359388.jpg', 1258359388, 1258359388, '管理员', '', '0', 0, '璀璨人生的简述', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '今日精选,', 0, 0, ''),
(28, 123, '0116:0123:', 0, 11, 'shop', '442 ', '十字架情侣项链', '925纯银Tiffany十字架情侣项链 超人气首饰', '', 54.00, 45.00, '条', 0, 0, 4, 0, 0, 1, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258446707.jpg', 1258446707, 1258446707, '管理员', '', '0', 0, '925纯银Tiffany十字架情侣项链 超人气首饰', '项链', '925纯银', '简约', '十字架', '未镶嵌', '全新', '银', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(29, 115, '0111:0115:', 0, 27, 'shop', '3010344YT ', '水晶耳坠', 'Swarovski施华洛世奇水晶耳坠', '', 166.80, 139.00, '对', 6, 0, 45, 0, 0, 0, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258447368.jpg', 1258447368, 1258447368, '管理员', '', '0', 0, 'Swarovski施华洛世奇水晶耳坠', '耳坠', '水晶、白金', '日韩', '', '镶嵌水晶', '全新', '蓝色', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(30, 128, '0118:0128:', 0, 27, 'shop', '4120182MF', '芳草碧连天水晶手链', '芳草碧连天水晶手链', '', 178.80, 149.00, '条', 4, 0, 36, 0, 0, 0, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258447628.jpg', 1258447628, 1258447628, '管理员', '', '0', 0, '芳草碧连天水晶手链', '手链', '水晶、白金', '欧美', '', '镶嵌水晶', '全新', '蓝色', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(31, 140, '0117:0140:', 0, 14, 'shop', 'j120102 ', '复古男士戒指', '复古男士戒指', '', 33.60, 28.00, '个', 6, 0, 20, 0, 0, 0, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258447818.jpg', 1258447818, 1258447818, '管理员', '', '0', 0, '复古男士戒指', '男士戒指', '925纯银', '复古', '', '未镶嵌', '全新', '银', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(32, 141, '0117:0141:', 0, 27, 'shop', '5010003MF ', '埃及女王施华洛世奇水晶戒指', '埃及女王施华洛世奇水晶戒指', '', 190.80, 159.00, '个', 3, 0, 12, 0, 0, 0, 1, 1, 0, '0', 'gif', 'shop/pics/20091117/1258448041.jpg', 1258448041, 1258448041, '管理员', '', '0', 0, '埃及女王施华洛世奇水晶戒指', '女戒', '水晶、白金', '日韩', '', '镶嵌水晶', '全新', '白', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(33, 129, '0118:0129:', 0, 27, 'shop', '345435346', '施华洛世奇满钻花花玫红钻石白造型手镯套装', '施华洛世奇满钻花花玫红钻石白造型手镯套装', '', 309.60, 258.00, '个', 8, 0, 18, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20091117/1258448660.jpg', 1258448660, 1258448660, '管理员', '', '0', 0, '施华洛世奇满钻花花玫红钻石白造型手镯套装', '手镯', '钻石、白金', '日韩', '', '镶嵌钻石', '全新', '白 红', '', '', '', '', '', '', '', '', '', '', '', '', '', '钻石,', 0, 0, ''),
(34, 124, '0116:0124:', 0, 27, 'shop', '090812 ', '七彩镀彩钻石项坠', '七彩镀彩钻石项坠', '', 660.00, 550.00, '个', 2, 0, 60, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20091117/1258448982.jpg', 1258448982, 1258448982, '管理员', '', '0', 0, '七彩镀彩钻石项坠', '日韩', '镀彩钻石、925纯银', '日韩', '七色花', '镶嵌钻石', '全新', '七彩', '', '', '', '', '', '', '', '', '', '', '', '', '', '钻石,', 0, 0, ''),
(35, 125, '0117:0125:', 0, 11, 'shop', '235235', '1.04克拉SONA钻戒', '1.04克拉SONA钻戒', '', 28147.20, 23456.00, '个', 0, 0, 42, 0, 0, 1, 0, 1, 0, '0', 'gif', 'shop/pics/20091117/1258449174.jpg', 1258449174, 1258449174, '管理员', '', '0', 0, '1.04克拉SONA钻戒', '钻戒', '钻石、白金', '欧美', '八心八箭', '镶嵌钻石', '全新', '白', '', '', '', '', '', '', '', '', '', '', '', '', '', '钻石,', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_config`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_shop_config`
--

INSERT INTO `pwn_shop_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '网上购物', '本模块对应的频道名称，如“网上购物”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '商品默认计量单位', 'input', '30', 'DefaultDanwei', '个', '发布商品时显示的默认计量单位'),
(5, '是否允许非会员订购', 'YN', '30', 'NoMemberOrder', '1', '开启非会员订购时,不需要会员登录即可直接提交订单，非会员订单不产生会员付款和消费记录，直接处理订单'),
(6, '会员定价规则', 'pricerule', '30', 'PriceRule', '2', '选择按折扣率自动计算会员价格，发布商品时不填写会员价，在订购商品时系统根据折扣率自动计算会员价格；选择发布商品时按折扣率预填会员价格，在发布商品时系统按以下折扣率预填会员价，订购时按实际填写的会员价计算；折扣率设定方式：1.00为无折扣，0.85为85折，依此类推'),
(7, '市场参考价默认比例', 'input', '30', 'MarketPrice', '1.2', '发布商品时，根据商品销售价格自动填写市场参考价的计算比例。如：1.2就是市场参考价为销售价格的1.2倍'),
(21, '是否启用商品订购积分', 'YN', '30', 'CentOpen', '1', '会员在商品订购付款时，是否计算积分'),
(22, '商品订购积分的类型', 'centlist', '30', 'CentId', '5', '商品订购积分所采用的积分类型'),
(23, '商品订购积分的计算方法', 'centmodle', '30', 'CentModle', '2', '请选择按商品固定的积分值计算积分，或按商品实际购买价格计算积分'),
(24, '商品购买价格和积分的计算比例', 'input', '30', 'CentRate', '1.0', '在按商品实际购买价格计算积分时，商品实际购买价格和积分的兑换比例。如：2.0表示购买1元商品获得2个积分，依此类推');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_memberprice`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_memberprice` (
  `id` int(12) NOT NULL auto_increment,
  `gid` int(10) NOT NULL default '0',
  `membertypeid` int(6) NOT NULL default '0',
  `price` decimal(8,2) NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- 转存表中的数据 `pwn_shop_memberprice`
--

INSERT INTO `pwn_shop_memberprice` (`id`, `gid`, `membertypeid`, `price`) VALUES
(33, 11, 36, 30.00),
(32, 11, 35, 36.00),
(31, 11, 26, 40.00),
(43, 15, 26, 195.00),
(44, 15, 35, 175.50),
(45, 15, 36, 146.25),
(46, 16, 26, 358.00),
(47, 16, 35, 322.20),
(48, 16, 36, 268.50),
(52, 18, 26, 198.00),
(53, 18, 35, 178.20),
(54, 18, 36, 148.50),
(55, 19, 26, 210.00),
(56, 19, 35, 189.00),
(57, 19, 36, 157.50),
(61, 21, 26, 25806.00),
(62, 21, 35, 23225.40),
(63, 21, 36, 19354.50),
(64, 22, 26, 14005.00),
(65, 22, 35, 12604.50),
(66, 22, 36, 10503.75),
(67, 23, 26, 2080.00),
(68, 23, 35, 1872.00),
(69, 23, 36, 1560.00),
(70, 24, 26, 11300.00),
(71, 24, 35, 10170.00),
(72, 24, 36, 8475.00),
(73, 25, 26, 10203.00),
(74, 25, 35, 9182.70),
(75, 25, 36, 7652.25),
(76, 26, 26, 1250.00),
(77, 26, 35, 1125.00),
(78, 26, 36, 937.50),
(79, 27, 26, 1220.00),
(80, 27, 35, 1098.00),
(81, 27, 36, 915.00),
(82, 28, 26, 45.00),
(83, 28, 35, 40.50),
(84, 28, 36, 33.75),
(85, 29, 26, 139.00),
(86, 29, 35, 125.10),
(87, 29, 36, 104.25),
(88, 30, 26, 149.00),
(89, 30, 35, 134.10),
(90, 30, 36, 111.75),
(91, 31, 26, 28.00),
(92, 31, 35, 25.20),
(93, 31, 36, 21.00),
(94, 32, 26, 159.00),
(95, 32, 35, 143.10),
(96, 32, 36, 119.25),
(97, 33, 26, 258.00),
(98, 33, 35, 232.20),
(99, 33, 36, 193.50),
(100, 34, 26, 550.00),
(101, 34, 35, 495.00),
(102, 34, 36, 412.50),
(103, 35, 26, 23456.00),
(104, 35, 35, 21110.40),
(105, 35, 36, 17592.00);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_order`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_order` (
  `orderid` int(8) NOT NULL auto_increment,
  `OrderNo` varchar(30) NOT NULL default '',
  `memberid` int(6) NOT NULL default '0',
  `user` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `tel` varchar(50) NOT NULL,
  `mobi` varchar(50) NOT NULL,
  `qq` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `s_name` varchar(50) NOT NULL default '',
  `s_tel` varchar(100) NOT NULL default '',
  `s_addr` varchar(100) NOT NULL default '',
  `s_postcode` varchar(20) NOT NULL,
  `s_mobi` varchar(30) NOT NULL default '',
  `s_qq` varchar(50) NOT NULL,
  `s_time` varchar(50) NOT NULL default '',
  `goodstotal` decimal(12,2) NOT NULL default '0.00',
  `yunzoneid` int(10) NOT NULL default '0',
  `yunid` int(8) NOT NULL default '0',
  `yuntype` varchar(100) NOT NULL default '',
  `yunifbao` int(1) NOT NULL default '0',
  `yunbaofei` decimal(12,2) NOT NULL default '0.00',
  `yunfei` decimal(12,2) NOT NULL default '0.00',
  `totaloof` decimal(12,2) NOT NULL default '0.00',
  `totalcent` int(10) NOT NULL default '0',
  `totalweight` int(10) NOT NULL default '0',
  `payid` int(12) NOT NULL default '0',
  `paytype` varchar(50) NOT NULL default '0',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `iflook` int(1) NOT NULL default '0',
  `ifyun` int(1) NOT NULL default '0',
  `ifpay` int(1) NOT NULL default '0',
  `ifok` int(1) NOT NULL default '0',
  `iftui` int(1) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `dtime` int(11) NOT NULL default '0',
  `paytime` int(11) NOT NULL default '0',
  `yuntime` int(11) NOT NULL default '0',
  `bz` text,
  `items` text,
  PRIMARY KEY  (`orderid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_shop_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_orderitems`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_orderitems` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(6) NOT NULL default '0',
  `orderid` int(6) NOT NULL default '0',
  `gid` int(6) NOT NULL default '0',
  `bn` varchar(100) NOT NULL default '',
  `goods` varchar(100) NOT NULL default '0',
  `price` decimal(12,2) NOT NULL default '0.00',
  `weight` int(10) NOT NULL default '0',
  `nums` int(6) NOT NULL default '0',
  `danwei` varchar(30) NOT NULL default '',
  `jine` decimal(9,2) NOT NULL default '0.00',
  `cent` int(10) NOT NULL default '0',
  `ifyun` int(1) NOT NULL default '0',
  `iftui` int(1) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `yuntime` int(11) NOT NULL default '0',
  `msg` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pwn_shop_orderitems`
--

INSERT INTO `pwn_shop_orderitems` (`id`, `memberid`, `orderid`, `gid`, `bn`, `goods`, `price`, `weight`, `nums`, `danwei`, `jine`, `cent`, `ifyun`, `iftui`, `dtime`, `yuntime`, `msg`) VALUES
(1, 0, 1, 26, 'HJDZ-00012', '恋の风景·蔷薇（G750黄金单钻钻石吊坠）', 1250.00, 36, 1, '个', 1250.00, 0, 0, 0, 1258362257, 0, NULL),
(2, 0, 2, 12, '630890-30965', '桃心红锆石项链', 890.00, 12, 1, '条', 890.00, 0, 0, 0, 1258425872, 0, NULL),
(3, 155, 3, 12, '630890-30965', '桃心红锆石项链', 890.00, 12, 1, '条', 890.00, 890, 0, 0, 1258436780, 0, NULL),
(4, 0, 4, 27, 'DFN－00125', '璀璨人生', 1220.00, 28, 1, '个', 1220.00, 0, 0, 0, 1258437176, 0, NULL),
(5, 0, 4, 11, '91096a', '高级仿皮盒', 40.00, 50, 1, '个', 40.00, 0, 0, 0, 1258437176, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_pages`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_pages` (
  `id` int(12) NOT NULL auto_increment,
  `gid` int(12) NOT NULL default '0',
  `src` varchar(150) NOT NULL default '',
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pwn_shop_pages`
--

INSERT INTO `pwn_shop_pages` (`id`, `gid`, `src`, `xuhao`) VALUES
(6, 18, 'shop/pics/20091113/1258079207.jpg', 1),
(7, 18, 'shop/pics/20091113/1258079235.jpg', 2),
(8, 18, 'shop/pics/20091113/1258079245.jpg', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_pricerule`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_pricerule` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(6) NOT NULL default '0',
  `pr` decimal(5,2) NOT NULL default '1.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_shop_pricerule`
--

INSERT INTO `pwn_shop_pricerule` (`id`, `membertypeid`, `pr`) VALUES
(1, 26, 1.00),
(2, 35, 0.90),
(3, 36, 0.75);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_prop`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=955 ;

--
-- 转存表中的数据 `pwn_shop_prop`
--

INSERT INTO `pwn_shop_prop` (`id`, `catid`, `propname`, `xuhao`) VALUES
(1, 1, '型号', 1),
(2, 1, '颜色', 2),
(3, 1, '厂商', 4),
(383, 8, '保修', 5),
(382, 8, '厂商', 4),
(381, 8, '功率', 3),
(388, 9, '保修', 5),
(387, 9, '厂商', 4),
(386, 9, '功率', 3),
(393, 10, '保修', 5),
(392, 10, '厂商', 4),
(391, 10, '功率', 3),
(398, 11, '保修', 5),
(397, 11, '厂商', 4),
(396, 11, '功率', 3),
(403, 13, '保修', 5),
(402, 13, '厂商', 4),
(401, 13, '功率', 3),
(408, 14, '保修', 5),
(407, 14, '厂商', 4),
(406, 14, '功率', 3),
(413, 15, '保修', 5),
(412, 15, '厂商', 4),
(411, 15, '功率', 3),
(418, 17, '保修', 5),
(417, 17, '厂商', 4),
(416, 17, '功率', 3),
(423, 20, '保修', 5),
(422, 20, '厂商', 4),
(421, 20, '功率', 3),
(428, 21, '保修', 5),
(427, 21, '厂商', 4),
(426, 21, '功率', 3),
(433, 22, '保修', 5),
(432, 22, '厂商', 4),
(431, 22, '功率', 3),
(438, 25, '保修', 5),
(437, 25, '厂商', 4),
(436, 25, '功率', 3),
(443, 26, '保修', 5),
(442, 26, '厂商', 4),
(441, 26, '功率', 3),
(448, 27, '保修', 5),
(447, 27, '厂商', 4),
(446, 27, '功率', 3),
(453, 28, '保修', 5),
(452, 28, '厂商', 4),
(451, 28, '功率', 3),
(458, 31, '保修', 5),
(457, 31, '厂商', 4),
(456, 31, '功率', 3),
(463, 32, '保修', 5),
(462, 32, '厂商', 4),
(461, 32, '功率', 3),
(468, 33, '保修', 5),
(467, 33, '厂商', 4),
(466, 33, '功率', 3),
(473, 34, '保修', 5),
(472, 34, '厂商', 4),
(471, 34, '功率', 3),
(478, 98, '保修', 5),
(477, 98, '厂商', 4),
(476, 98, '功率', 3),
(503, 39, '厂商', 4),
(502, 39, '功率', 3),
(498, 38, '厂商', 4),
(497, 38, '功率', 3),
(496, 38, '颜色', 2),
(493, 37, '厂商', 4),
(492, 37, '功率', 3),
(491, 37, '颜色', 2),
(488, 36, '厂商', 4),
(487, 36, '功率', 3),
(486, 36, '颜色', 2),
(483, 35, '厂商', 4),
(482, 35, '功率', 3),
(481, 35, '颜色', 2),
(83, 2, '厂商', 4),
(82, 2, '颜色', 2),
(81, 2, '型号', 1),
(501, 39, '颜色', 2),
(508, 40, '厂商', 4),
(507, 40, '功率', 3),
(506, 40, '颜色', 2),
(513, 41, '厂商', 4),
(512, 41, '功率', 3),
(511, 41, '颜色', 2),
(518, 43, '厂商', 4),
(517, 43, '功率', 3),
(516, 43, '颜色', 2),
(523, 44, '厂商', 4),
(522, 44, '功率', 3),
(521, 44, '颜色', 2),
(528, 45, '厂商', 4),
(527, 45, '功率', 3),
(526, 45, '颜色', 2),
(533, 47, '厂商', 4),
(532, 47, '功率', 3),
(531, 47, '颜色', 2),
(538, 48, '厂商', 4),
(537, 48, '功率', 3),
(536, 48, '颜色', 2),
(543, 49, '厂商', 4),
(542, 49, '功率', 3),
(541, 49, '颜色', 2),
(548, 55, '厂商', 4),
(547, 55, '功率', 3),
(546, 55, '颜色', 2),
(553, 56, '厂商', 4),
(552, 56, '功率', 3),
(551, 56, '颜色', 2),
(558, 73, '厂商', 4),
(557, 73, '功率', 3),
(556, 73, '颜色', 2),
(132, 1, '保修', 5),
(380, 8, '颜色', 2),
(385, 9, '颜色', 2),
(390, 10, '颜色', 2),
(395, 11, '颜色', 2),
(400, 13, '颜色', 2),
(405, 14, '颜色', 2),
(410, 15, '颜色', 2),
(415, 17, '颜色', 2),
(420, 20, '颜色', 2),
(425, 21, '颜色', 2),
(430, 22, '颜色', 2),
(435, 25, '颜色', 2),
(440, 26, '颜色', 2),
(445, 27, '颜色', 2),
(450, 28, '颜色', 2),
(455, 31, '颜色', 2),
(460, 32, '颜色', 2),
(465, 33, '颜色', 2),
(470, 34, '颜色', 2),
(475, 98, '颜色', 2),
(213, 2, '保修', 5),
(480, 35, '型号', 1),
(485, 36, '型号', 1),
(490, 37, '型号', 1),
(495, 38, '型号', 1),
(500, 39, '型号', 1),
(505, 40, '型号', 1),
(510, 41, '型号', 1),
(515, 43, '型号', 1),
(520, 44, '型号', 1),
(525, 45, '型号', 1),
(530, 47, '型号', 1),
(535, 48, '型号', 1),
(540, 49, '型号', 1),
(545, 55, '型号', 1),
(550, 56, '型号', 1),
(555, 73, '型号', 1),
(278, 1, '功率', 3),
(379, 8, '型号', 1),
(384, 9, '型号', 1),
(389, 10, '型号', 1),
(394, 11, '型号', 1),
(399, 13, '型号', 1),
(404, 14, '型号', 1),
(409, 15, '型号', 1),
(414, 17, '型号', 1),
(419, 20, '型号', 1),
(424, 21, '型号', 1),
(429, 22, '型号', 1),
(434, 25, '型号', 1),
(439, 26, '型号', 1),
(444, 27, '型号', 1),
(449, 28, '型号', 1),
(454, 31, '型号', 1),
(459, 32, '型号', 1),
(464, 33, '型号', 1),
(469, 34, '型号', 1),
(474, 98, '型号', 1),
(479, 2, '功率', 3),
(484, 35, '保修', 5),
(489, 36, '保修', 5),
(494, 37, '保修', 5),
(499, 38, '保修', 5),
(504, 39, '保修', 5),
(509, 40, '保修', 5),
(514, 41, '保修', 5),
(519, 43, '保修', 5),
(524, 44, '保修', 5),
(529, 45, '保修', 5),
(534, 47, '保修', 5),
(539, 48, '保修', 5),
(544, 49, '保修', 5),
(549, 55, '保修', 5),
(554, 56, '保修', 5),
(559, 73, '保修', 5),
(560, 3, '型号', 1),
(561, 3, '颜色', 2),
(562, 3, '功率', 3),
(563, 3, '厂商', 4),
(564, 3, '保修', 5),
(565, 64, '型号', 1),
(566, 64, '颜色', 2),
(567, 64, '功率', 3),
(568, 64, '厂商', 4),
(569, 64, '保修', 5),
(570, 63, '型号', 1),
(571, 63, '颜色', 2),
(572, 63, '功率', 3),
(573, 63, '厂商', 4),
(574, 63, '保修', 5),
(575, 61, '型号', 1),
(576, 61, '颜色', 2),
(577, 61, '功率', 3),
(578, 61, '厂商', 4),
(579, 61, '保修', 5),
(580, 62, '型号', 1),
(581, 62, '颜色', 2),
(582, 62, '功率', 3),
(583, 62, '厂商', 4),
(584, 62, '保修', 5),
(585, 60, '型号', 1),
(586, 60, '颜色', 2),
(587, 60, '功率', 3),
(588, 60, '厂商', 4),
(589, 60, '保修', 5),
(590, 59, '型号', 1),
(591, 59, '颜色', 2),
(592, 59, '功率', 3),
(593, 59, '厂商', 4),
(594, 59, '保修', 5),
(595, 58, '型号', 1),
(596, 58, '颜色', 2),
(597, 58, '功率', 3),
(598, 58, '厂商', 4),
(599, 58, '保修', 5),
(600, 57, '型号', 1),
(601, 57, '颜色', 2),
(602, 57, '功率', 3),
(603, 57, '厂商', 4),
(604, 57, '保修', 5),
(605, 67, '型号', 1),
(606, 67, '颜色', 2),
(607, 67, '功率', 3),
(608, 67, '厂商', 4),
(609, 67, '保修', 5),
(610, 65, '型号', 1),
(611, 65, '颜色', 2),
(612, 65, '功率', 3),
(613, 65, '厂商', 4),
(614, 65, '保修', 5),
(615, 66, '型号', 1),
(616, 66, '颜色', 2),
(617, 66, '功率', 3),
(618, 66, '厂商', 4),
(619, 66, '保修', 5),
(620, 5, '型号', 1),
(621, 5, '颜色', 2),
(622, 5, '功率', 3),
(623, 5, '厂商', 4),
(624, 5, '保修', 5),
(625, 70, '型号', 1),
(626, 70, '颜色', 2),
(627, 70, '功率', 3),
(628, 70, '厂商', 4),
(629, 70, '保修', 5),
(630, 71, '型号', 1),
(631, 71, '颜色', 2),
(632, 71, '功率', 3),
(633, 71, '厂商', 4),
(634, 71, '保修', 5),
(635, 72, '型号', 1),
(636, 72, '颜色', 2),
(637, 72, '功率', 3),
(638, 72, '厂商', 4),
(639, 72, '保修', 5),
(640, 74, '型号', 1),
(641, 74, '颜色', 2),
(642, 74, '功率', 3),
(643, 74, '厂商', 4),
(644, 74, '保修', 5),
(645, 75, '型号', 1),
(646, 75, '颜色', 2),
(647, 75, '功率', 3),
(648, 75, '厂商', 4),
(649, 75, '保修', 5),
(650, 76, '型号', 1),
(651, 76, '颜色', 2),
(652, 76, '功率', 3),
(653, 76, '厂商', 4),
(654, 76, '保修', 5),
(655, 7, '型号', 1),
(656, 7, '颜色', 2),
(657, 7, '功率', 3),
(658, 7, '厂商', 4),
(659, 7, '保修', 5),
(660, 86, '型号', 1),
(661, 86, '颜色', 2),
(662, 86, '功率', 3),
(663, 86, '厂商', 4),
(664, 86, '保修', 5),
(665, 87, '型号', 1),
(666, 87, '颜色', 2),
(667, 87, '功率', 3),
(668, 87, '厂商', 4),
(669, 87, '保修', 5),
(670, 88, '型号', 1),
(671, 88, '颜色', 2),
(672, 88, '功率', 3),
(673, 88, '厂商', 4),
(674, 88, '保修', 5),
(675, 89, '型号', 1),
(676, 89, '颜色', 2),
(677, 89, '功率', 3),
(678, 89, '厂商', 4),
(679, 89, '保修', 5),
(680, 90, '型号', 1),
(681, 90, '颜色', 2),
(682, 90, '功率', 3),
(683, 90, '厂商', 4),
(684, 90, '保修', 5),
(685, 91, '型号', 1),
(686, 91, '颜色', 2),
(687, 91, '功率', 3),
(688, 91, '厂商', 4),
(689, 91, '保修', 5),
(690, 92, '型号', 1),
(691, 92, '颜色', 2),
(692, 92, '功率', 3),
(693, 92, '厂商', 4),
(694, 92, '保修', 5),
(695, 93, '型号', 1),
(696, 93, '颜色', 2),
(697, 93, '功率', 3),
(698, 93, '厂商', 4),
(699, 93, '保修', 5),
(700, 94, '型号', 1),
(701, 94, '颜色', 2),
(702, 94, '功率', 3),
(703, 94, '厂商', 4),
(704, 94, '保修', 5),
(705, 95, '型号', 1),
(706, 95, '颜色', 2),
(707, 95, '功率', 3),
(708, 95, '厂商', 4),
(709, 95, '保修', 5),
(710, 96, '型号', 1),
(711, 96, '颜色', 2),
(712, 96, '功率', 3),
(713, 96, '厂商', 4),
(714, 96, '保修', 5),
(715, 97, '型号', 1),
(716, 97, '颜色', 2),
(717, 97, '功率', 3),
(718, 97, '厂商', 4),
(719, 97, '保修', 5),
(720, 99, '型号', 1),
(721, 99, '颜色', 2),
(722, 99, '功率', 3),
(723, 99, '厂商', 4),
(724, 99, '保修', 5),
(725, 100, '型号', 1),
(726, 100, '颜色', 2),
(727, 100, '功率', 3),
(728, 100, '厂商', 4),
(729, 100, '保修', 5),
(730, 101, '型号', 1),
(731, 101, '颜色', 2),
(732, 101, '功率', 3),
(733, 101, '厂商', 4),
(734, 101, '保修', 5),
(735, 102, '型号', 1),
(736, 102, '颜色', 2),
(737, 102, '功率', 3),
(738, 102, '厂商', 4),
(739, 102, '保修', 5),
(740, 103, '型号', 1),
(741, 103, '颜色', 2),
(742, 103, '功率', 3),
(743, 103, '厂商', 4),
(744, 103, '保修', 5),
(861, 118, '是否镶嵌', 5),
(860, 118, '形状/图案', 4),
(859, 118, '风格', 3),
(858, 118, '材质', 2),
(940, 129, '颜色', 7),
(939, 129, '成色', 6),
(938, 129, '是否镶嵌', 5),
(937, 129, '形状/图案', 4),
(947, 128, '颜色', 7),
(946, 128, '成色', 6),
(945, 128, '是否镶嵌', 5),
(944, 128, '形状/图案', 4),
(757, 144, '礼盒长度', 1),
(758, 144, '礼盒宽度', 2),
(780, 123, '材质', 2),
(779, 123, '款式', 1),
(836, 115, '材质', 2),
(835, 115, '款式', 1),
(773, 124, '材质', 2),
(772, 124, '款式', 1),
(765, 116, '款式', 1),
(766, 116, '材质', 2),
(767, 116, '风格', 3),
(768, 116, '形状/图案', 4),
(769, 116, '是否镶嵌', 5),
(770, 116, '成色', 6),
(771, 116, '颜色', 7),
(774, 124, '风格', 3),
(775, 124, '形状/图案', 4),
(776, 124, '是否镶嵌', 5),
(777, 124, '成色', 6),
(778, 124, '颜色', 7),
(781, 123, '风格', 3),
(782, 123, '形状/图案', 4),
(783, 123, '是否镶嵌', 5),
(784, 123, '成色', 6),
(785, 123, '颜色', 7),
(786, 117, '款式', 1),
(787, 117, '材质', 2),
(788, 117, '风格', 3),
(789, 117, '形状/图案', 4),
(790, 117, '是否镶嵌', 5),
(791, 117, '成色', 6),
(792, 117, '颜色', 7),
(793, 141, '款式', 1),
(794, 141, '材质', 2),
(795, 141, '风格', 3),
(796, 141, '形状/图案', 4),
(797, 141, '是否镶嵌', 5),
(798, 141, '成色', 6),
(799, 141, '颜色', 7),
(800, 140, '款式', 1),
(801, 140, '材质', 2),
(802, 140, '风格', 3),
(803, 140, '形状/图案', 4),
(804, 140, '是否镶嵌', 5),
(805, 140, '成色', 6),
(806, 140, '颜色', 7),
(807, 127, '款式', 1),
(808, 127, '材质', 2),
(809, 127, '风格', 3),
(810, 127, '形状/图案', 4),
(811, 127, '是否镶嵌', 5),
(812, 127, '成色', 6),
(813, 127, '颜色', 7),
(814, 126, '款式', 1),
(815, 126, '材质', 2),
(816, 126, '风格', 3),
(817, 126, '形状/图案', 4),
(818, 126, '是否镶嵌', 5),
(819, 126, '成色', 6),
(820, 126, '颜色', 7),
(821, 125, '款式', 1),
(822, 125, '材质', 2),
(823, 125, '风格', 3),
(824, 125, '形状/图案', 4),
(825, 125, '是否镶嵌', 5),
(826, 125, '成色', 6),
(827, 125, '颜色', 7),
(828, 111, '款式', 1),
(829, 111, '材质', 2),
(830, 111, '风格', 3),
(831, 111, '形状/图案', 4),
(832, 111, '是否镶嵌', 5),
(833, 111, '成色', 6),
(834, 111, '颜色', 7),
(837, 115, '风格', 3),
(838, 115, '形状/图案', 4),
(839, 115, '是否镶嵌', 5),
(840, 115, '成色', 6),
(841, 115, '颜色', 7),
(842, 114, '款式', 1),
(843, 114, '材质', 2),
(844, 114, '风格', 3),
(845, 114, '形状/图案', 4),
(846, 114, '是否镶嵌', 5),
(847, 114, '成色', 6),
(848, 114, '颜色', 7),
(849, 113, '款式', 1),
(850, 113, '材质', 2),
(851, 113, '风格', 3),
(852, 113, '形状/图案', 4),
(853, 113, '是否镶嵌', 5),
(854, 113, '成色', 6),
(855, 113, '颜色', 7),
(857, 118, '款式', 1),
(862, 118, '成色', 6),
(863, 118, '颜色', 7),
(936, 129, '风格', 3),
(935, 129, '材质', 2),
(934, 129, '款式', 1),
(943, 128, '风格', 3),
(942, 128, '材质', 2),
(941, 128, '款式', 1),
(878, 119, '款式', 1),
(879, 119, '材质', 2),
(880, 119, '风格', 3),
(881, 119, '形状/图案', 4),
(882, 119, '是否镶嵌', 5),
(883, 119, '成色', 6),
(884, 119, '颜色', 7),
(885, 139, '款式', 1),
(886, 139, '材质', 2),
(887, 139, '风格', 3),
(888, 139, '形状/图案', 4),
(889, 139, '是否镶嵌', 5),
(890, 139, '成色', 6),
(891, 139, '颜色', 7),
(892, 138, '款式', 1),
(893, 138, '材质', 2),
(894, 138, '风格', 3),
(895, 138, '形状/图案', 4),
(896, 138, '是否镶嵌', 5),
(897, 138, '成色', 6),
(898, 138, '颜色', 7),
(899, 120, '款式', 1),
(900, 120, '材质', 2),
(901, 120, '风格', 3),
(902, 120, '形状/图案', 4),
(903, 120, '是否镶嵌', 5),
(904, 120, '成色', 6),
(905, 120, '颜色', 7),
(906, 132, '款式', 1),
(907, 132, '材质', 2),
(908, 132, '风格', 3),
(909, 132, '形状/图案', 4),
(910, 132, '是否镶嵌', 5),
(911, 132, '成色', 6),
(912, 132, '颜色', 7),
(913, 131, '款式', 1),
(914, 131, '材质', 2),
(915, 131, '风格', 3),
(916, 131, '形状/图案', 4),
(917, 131, '是否镶嵌', 5),
(918, 131, '成色', 6),
(919, 131, '颜色', 7),
(920, 130, '款式', 1),
(921, 130, '材质', 2),
(922, 130, '风格', 3),
(923, 130, '形状/图案', 4),
(924, 130, '是否镶嵌', 5),
(925, 130, '成色', 6),
(926, 130, '颜色', 7),
(927, 121, '款式', 1),
(928, 121, '材质', 2),
(929, 121, '风格', 3),
(930, 121, '形状/图案', 4),
(931, 121, '是否镶嵌', 5),
(932, 121, '成色', 6),
(933, 121, '颜色', 7),
(948, 145, '款式', 1),
(949, 145, '材质', 2),
(950, 145, '风格', 3),
(951, 145, '形状/图案', 4),
(952, 145, '是否镶嵌', 5),
(953, 145, '成色', 6),
(954, 145, '颜色', 7);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_vcat`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_vcat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_shop_vcat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_yun`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_yun` (
  `id` int(12) NOT NULL auto_increment,
  `yunname` varchar(50) NOT NULL default '',
  `spec` varchar(50) NOT NULL default '',
  `dinge` int(1) NOT NULL default '0',
  `yunfei` decimal(12,2) NOT NULL default '0.00',
  `gs` varchar(255) NOT NULL default '',
  `dgs` varchar(255) NOT NULL default '',
  `sgs` varchar(255) NOT NULL default '',
  `baojia` int(1) NOT NULL default '0',
  `baofei` decimal(5,2) NOT NULL default '0.00',
  `baodi` decimal(12,2) NOT NULL default '0.00',
  `zonestr` text,
  `memo` text,
  `xuhao` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_shop_yun`
--

INSERT INTO `pwn_shop_yun` (`id`, `yunname`, `spec`, `dinge`, `yunfei`, `gs`, `dgs`, `sgs`, `baojia`, `baofei`, `baodi`, `zonestr`, `memo`, `xuhao`) VALUES
(1, '上海本地送货上门', '', 1, 30.00, '||||||1||||1||||', '||||||||', '', 0, 0.00, 1.00, '|4|10|11|12|13|', '上海本地送货上门,固定运费30元', 1),
(2, '中国邮政EMS', '国内', 0, 0.00, '0|500|20||||1|500|500|6|1||||', '||||||||', '', 0, 0.00, 1.00, '|1|2|3|4|10|11|12|13|5|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|', '中国邮政EMS国内除港澳台以外地区', 2),
(3, '中国邮政EMS', '港澳台', 0, 0.00, '|500|20||||1|500|500|150|1||||', '||||||||', '', 1, 1.00, 1.00, '', '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_yunzone`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_yunzone` (
  `id` int(12) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `zone` char(50) NOT NULL default '',
  `xuhao` int(6) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `pwn_shop_yunzone`
--

INSERT INTO `pwn_shop_yunzone` (`id`, `pid`, `zone`, `xuhao`) VALUES
(1, 0, '北京市', 1),
(2, 1, '海淀区', 1),
(3, 1, '丰台区', 2),
(4, 0, '上海市', 2),
(5, 0, '浙江省', 3),
(14, 5, '杭州市', 1),
(15, 5, '宁波市', 2),
(16, 5, '温州市', 3),
(10, 4, '徐汇区', 1),
(11, 4, '静安区', 2),
(12, 4, '闵行区', 3),
(13, 4, '宝山区', 4),
(17, 5, '嘉兴市', 4),
(18, 5, '舟山市', 5),
(19, 5, '绍兴市', 6),
(20, 0, '江苏省', 7),
(21, 20, '南京市', 1),
(22, 20, '无锡市', 2),
(23, 20, '苏州市', 3),
(24, 20, '常州市', 4),
(25, 0, '广东省', 8),
(26, 25, '广州市', 1),
(27, 25, '深圳市', 2),
(28, 25, '中山市', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_code`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_code` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `cat` varchar(100) NOT NULL,
  `groupid` int(11) NOT NULL default '0',
  `groupname` varchar(100) NOT NULL,
  `qq` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `memo` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `xuhao` int(11) NOT NULL default '0',
  `iffb` int(1) NOT NULL default '1',
  `tj` int(1) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_code`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_photopolldata`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_photopolldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `body` text,
  `iffb` int(1) NOT NULL default '0',
  `tj` int(1) default NULL,
  `secure` int(11) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  `type` varchar(30) NOT NULL,
  `src` varchar(150) NOT NULL,
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  `votesinfo1` text NOT NULL,
  `votesinfo2` text NOT NULL,
  `votesinfo3` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_photopolldata`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_photopollindex`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_photopollindex` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(12) NOT NULL,
  `catpath` char(255) default NULL,
  `cat` varchar(100) NOT NULL,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_photopollindex`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_pollconfig`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_pollconfig` (
  `config_id` smallint(5) unsigned NOT NULL auto_increment,
  `img_height` int(5) NOT NULL default '0',
  `img_length` int(5) NOT NULL default '0',
  `vodinfo` varchar(225) NOT NULL default '0',
  `def_options` smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_tools_pollconfig`
--

INSERT INTO `pwn_tools_pollconfig` (`config_id`, `img_height`, `img_length`, `vodinfo`, `def_options`) VALUES
(1, 20, 10, '对不起,您已经投过票了', 10);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_polldata`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_polldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `option_id` int(11) NOT NULL default '0',
  `option_text` varchar(200) NOT NULL default '',
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `pwn_tools_polldata`
--

INSERT INTO `pwn_tools_polldata` (`id`, `poll_id`, `option_id`, `option_text`, `color`, `votes`) VALUES
(29, 11, 3, '护理电器', 'brown', 0),
(28, 11, 2, '生活电器', 'aqua', 0),
(27, 11, 1, '厨房电器', 'gold', 1),
(30, 11, 4, '健康电器', 'grey', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_pollindex`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_pollindex` (
  `id` int(11) NOT NULL auto_increment,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `pwn_tools_pollindex`
--

INSERT INTO `pwn_tools_pollindex` (`id`, `groupname`, `timestamp`, `status`, `exp_time`, `expire`) VALUES
(11, '您最希望购买什么产品', 1256046826, 1, 1271598826, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statbase`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statbase` (
  `id` int(8) NOT NULL auto_increment,
  `ShowCountType` int(1) default NULL,
  `ShowCountSize` int(1) default NULL,
  `ShowCount` int(1) default NULL,
  `ShowCountStat` int(1) default NULL,
  `starttime` int(11) default NULL,
  `CountIpExp` int(3) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_tools_statbase`
--

INSERT INTO `pwn_tools_statbase` (`id`, `ShowCountType`, `ShowCountSize`, `ShowCount`, `ShowCountStat`, `starttime`, `CountIpExp`) VALUES
(1, 17, 8, 2, 0, 1234728185, 5);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statcome`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statcome` (
  `id` int(12) NOT NULL auto_increment,
  `url` varchar(255) NOT NULL default '',
  `count` int(5) NOT NULL default '0',
  `begingtime` int(11) NOT NULL default '0',
  `lasttime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pwn_tools_statcome`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statcount`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statcount` (
  `id` int(21) NOT NULL auto_increment,
  `ip` varchar(17) NOT NULL default '',
  `os` varchar(40) NOT NULL default '',
  `browse` varchar(30) NOT NULL default '',
  `urlform` varchar(255) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `nowpage` varchar(255) default NULL,
  `member` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16307 ;

--
-- 转存表中的数据 `pwn_tools_statcount`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statdate`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statdate` (
  `id` int(2) NOT NULL auto_increment,
  `1th_day` int(5) NOT NULL default '0',
  `2th_day` int(5) NOT NULL default '0',
  `3th_day` int(5) NOT NULL default '0',
  `4th_day` int(5) NOT NULL default '0',
  `5th_day` int(5) NOT NULL default '0',
  `6th_day` int(5) NOT NULL default '0',
  `7th_day` int(5) NOT NULL default '0',
  `8th_day` int(5) NOT NULL default '0',
  `9th_day` int(5) NOT NULL default '0',
  `10th_day` int(5) NOT NULL default '0',
  `11th_day` int(5) NOT NULL default '0',
  `12th_day` int(5) NOT NULL default '0',
  `13th_day` int(5) NOT NULL default '0',
  `14th_day` int(5) NOT NULL default '0',
  `15th_day` int(5) NOT NULL default '0',
  `16th_day` int(5) NOT NULL default '0',
  `17th_day` int(5) NOT NULL default '0',
  `18th_day` int(5) NOT NULL default '0',
  `19th_day` int(5) NOT NULL default '0',
  `20th_day` int(5) NOT NULL default '0',
  `21th_day` int(5) NOT NULL default '0',
  `22th_day` int(5) NOT NULL default '0',
  `23th_day` int(5) NOT NULL default '0',
  `24th_day` int(5) NOT NULL default '0',
  `25th_day` int(5) NOT NULL default '0',
  `26th_day` int(5) NOT NULL default '0',
  `27th_day` int(5) NOT NULL default '0',
  `28th_day` int(5) NOT NULL default '0',
  `29th_day` int(5) NOT NULL default '0',
  `30th_day` int(5) NOT NULL default '0',
  `31th_day` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `pwn_tools_statdate`
--

INSERT INTO `pwn_tools_statdate` (`id`, `1th_day`, `2th_day`, `3th_day`, `4th_day`, `5th_day`, `6th_day`, `7th_day`, `8th_day`, `9th_day`, `10th_day`, `11th_day`, `12th_day`, `13th_day`, `14th_day`, `15th_day`, `16th_day`, `17th_day`, `18th_day`, `19th_day`, `20th_day`, `21th_day`, `22th_day`, `23th_day`, `24th_day`, `25th_day`, `26th_day`, `27th_day`, `28th_day`, `29th_day`, `30th_day`, `31th_day`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
