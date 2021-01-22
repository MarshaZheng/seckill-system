-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-01-21 14:38:24
-- 服务器版本： 5.7.32
-- PHP 版本： 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `seckill_system`
--

-- --------------------------------------------------------

--
-- 表的结构 `seckill_admin`
--

CREATE TABLE `seckill_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `token` varchar(255) NOT NULL DEFAULT '0',
  `expire_time` varchar(255) NOT NULL DEFAULT '0',
  `login_time` varchar(255) NOT NULL DEFAULT '0',
  `login_ip` varchar(255) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_admin`
--

INSERT INTO `seckill_admin` (`id`, `username`, `password`, `role`, `status`, `token`, `expire_time`, `login_time`, `login_ip`) VALUES
(1, 'root', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', 1, 'cGlnMTE2MTEyMzg3OTQ=', '1611242394', '1611238794', '223.104.38.62'),
(2, 'shangpin', 'e10adc3949ba59abbe56e057f20f883e', '商品管理员', 1, 'cGlnMjE2MTEyMzkwOTU=', '1611242695', '1611239095', '223.104.38.62'),
(3, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', 1, 'cGlnMzE2MTEyMzU2NTY=', '1611239256', '1611235656', '223.104.38.62');

-- --------------------------------------------------------

--
-- 表的结构 `seckill_admin_group`
--

CREATE TABLE `seckill_admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `rules` varchar(255) NOT NULL,
  `update_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_admin_group`
--

INSERT INTO `seckill_admin_group` (`id`, `name`, `description`, `rules`, `update_time`) VALUES
(1, '超级管理员', '拥有至高无上的权利', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40', '0'),
(2, '订单管理员', '专门负责订单', '1,5,6,13', ''),
(3, '商品管理员', '专门管理商品', '1,2,3,4,13,17,18,19,23,24,25,26,32,35', ''),
(5, '营销管理员', '管理广告和促销活动', '1,7,8,9,13,16,21,22,39,37,36', '1611196000');

-- --------------------------------------------------------

--
-- 表的结构 `seckill_advert`
--

CREATE TABLE `seckill_advert` (
  `id` int(3) NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_advert`
--

INSERT INTO `seckill_advert` (`id`, `brand`, `place`, `image`, `description`, `status`) VALUES
(5, '彤彤牌', '首页Banner', '20210114/2666987e8e5cd5362d3eb3030e2869cd.jpeg', '选择我们永远没错！', 1),
(6, '彤彤牌', '首页Banner', '20210114/d09f17b9cdf4ab17a35e673fdc7d200a.jpg', '买点新衣服～', 1),
(7, '彤彤牌', '首页Banner', '20210114/d72137818b649f83775f9ccc974cee32.jpeg', '拥抱大自然', 1);

-- --------------------------------------------------------

--
-- 表的结构 `seckill_advert_place`
--

CREATE TABLE `seckill_advert_place` (
  `id` int(3) NOT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '首页banneer',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_advert_place`
--

INSERT INTO `seckill_advert_place` (`id`, `place`, `status`) VALUES
(1, '首页Banner', 1);

-- --------------------------------------------------------

--
-- 表的结构 `seckill_item`
--

CREATE TABLE `seckill_item` (
  `id` int(3) NOT NULL COMMENT '商品货号',
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '商品名称',
  `type` varchar(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '食品' COMMENT '商品种类',
  `brand` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '彤彤牌' COMMENT '商品品牌',
  `status` int(1) NOT NULL COMMENT '是否可见',
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '商品图片',
  `description` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '商品介绍',
  `price` float NOT NULL COMMENT '商品售价',
  `amount` mediumint(4) NOT NULL COMMENT '商品库存',
  `unit` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '计量单位'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_item`
--

INSERT INTO `seckill_item` (`id`, `name`, `type`, `brand`, `status`, `image`, `description`, `price`, `amount`, `unit`) VALUES
(1, '小熊饼干', '食品', '彤彤牌', 1, '小熊饼干.png', '吃了可以变聪明，没有人会不爱小熊饼干！', 10, 18, '袋'),
(2, '草莓布丁', '食品', '彤彤牌', 1, '20210113/ee32cf2cbc4bd35322e2435f80938bbb.jpg', '香香甜甜。入口即化，你值得拥有！', 20, 66, '杯'),
(3, '山楂片', '食品', '彤彤牌', 1, '20210114/da39e652a2c6edfcf5bfd5d799caf638.jpeg', '甜甜的', 5, 10, '包'),
(4, '爱心硬糖', '食品', '彤彤牌', 1, '20210114/2c9be027ea507fcf0edeaefa786677f6.jpg', '甜甜的', 20, 4, '颗'),
(5, '巧克力', '食品', '彤彤牌', 0, '20210118/c3bc7320be85e2a94c4fa2a603ba25fe.jpg', '好吃', 20, 97, '颗'),
(6, '巧克力', '食品', '彤彤牌', 0, '20210121/fb27cb6056559375c88f1c6d6f72de47.jpg', '好吃', 20, 100, '盒'),
(7, '大礼包1', '食品', '彤彤牌', 1, '20210121/9ed428f2d064fb0bef257ea151fb9d6a.jpg', '零食大礼包，含多种零食', 100, 100, '盒'),
(8, '大礼包2', '食品', '彤彤牌', 0, '20210121/c592dde777fd30a687cdbd32da23eb0f.jpg', '零食大礼包，含多种零食', 100, 100, '盒'),
(9, '大礼包3', '食品', '彤彤牌', 0, '20210121/63056278297f7a0284b0302ee69ff295.jpg', '零食大礼包，含多种零食', 100, 100, '盒'),
(10, '大礼包4', '食品', '彤彤牌', 0, '20210121/07135c1eeef59cbea999f22e2b9277c8.jpg', '零食大礼包，含多种零食', 100, 100, '100');

-- --------------------------------------------------------

--
-- 表的结构 `seckill_item_brand`
--

CREATE TABLE `seckill_item_brand` (
  `id` int(3) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '食品',
  `description` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '中国驰名品牌',
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'sample.png' COMMENT '商标图片',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_item_brand`
--

INSERT INTO `seckill_item_brand` (`id`, `name`, `type`, `description`, `image`, `status`) VALUES
(1, '彤彤牌', '食品', '中国驰名品牌', '彤彤牌.png', 1);

-- --------------------------------------------------------

--
-- 表的结构 `seckill_item_type`
--

CREATE TABLE `seckill_item_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '食品',
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_item_type`
--

INSERT INTO `seckill_item_type` (`id`, `name`, `status`) VALUES
(1, '食品', 1),
(2, '服装', 1),
(3, '电子产品', 1),
(4, '虚拟服务', 1);

-- --------------------------------------------------------

--
-- 表的结构 `seckill_log`
--

CREATE TABLE `seckill_log` (
  `id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT 'root',
  `m` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_log`
--

INSERT INTO `seckill_log` (`id`, `username`, `m`, `c`, `a`, `time`, `ip`) VALUES
(1, 'root', 'admin', 'Main', 'index', '1610969668', '115.27.209.113'),
(2, 'root', 'admin', 'Main', 'welcome', '1610969668', '115.27.209.113'),
(3, 'root', 'admin', 'Main', 'admin-rule', '1610969668', '115.27.209.113'),
(4, 'root', 'admin', 'Main', 'admin-role', '1610969668', '115.27.209.113'),
(5, 'root', 'admin', 'Main', 'admin-list', '1610969668', '115.27.209.113'),
(6, 'root', 'admin', 'Main', 'admin-cate', '1610969668', '115.27.209.113'),
(7, 'root', 'admin', 'Main', 'sale-list', '1610969677', '115.27.209.113'),
(8, 'root', 'admin', 'Main', 'item_list', '1610969688', '115.27.209.113'),
(9, 'root', 'admin', 'Main', 'order_list', '1610969706', '115.27.209.113'),
(10, 'root', 'admin', 'Main', 'order_set', '1610969718', '115.27.209.113'),
(11, 'root', 'admin', 'Main', 'index', '1610972748', '115.27.209.113'),
(12, 'root', 'admin', 'Main', 'welcome', '1610972748', '115.27.209.113'),
(13, 'root', 'admin', 'Main', 'sale-list', '1610972748', '115.27.209.113'),
(14, 'root', 'admin', 'Main', 'admin-role', '1610972748', '115.27.209.113'),
(15, 'root', 'admin', 'Main', 'admin-list', '1610972748', '115.27.209.113'),
(16, 'root', 'admin', 'Main', 'admin-cate', '1610972748', '115.27.209.113'),
(17, 'root', 'admin', 'Main', 'admin-rule', '1610972748', '115.27.209.113'),
(18, 'root', 'admin', 'Main', 'item_list', '1610972748', '115.27.209.113'),
(19, 'root', 'admin', 'Main', 'order_list', '1610972748', '115.27.209.113'),
(20, 'root', 'admin', 'Main', 'order_set', '1610972748', '115.27.209.113'),
(21, 'root', 'admin', 'Main', 'admin_list', '1610972751', '115.27.209.113'),
(22, 'root', 'admin', 'Main', 'role_list', '1610972752', '115.27.209.113'),
(23, 'root', 'admin', 'Main', 'rule_list', '1610972754', '115.27.209.113'),
(24, 'root', 'admin', 'Main', 'index', '1610973132', '115.27.209.113'),
(25, 'root', 'admin', 'Main', 'welcome', '1610973132', '115.27.209.113'),
(26, 'root', 'admin', 'Main', 'rule_list', '1610973132', '115.27.209.113'),
(27, 'root', 'admin', 'Main', 'sale-list', '1610973132', '115.27.209.113'),
(28, 'root', 'admin', 'Main', 'admin-cate', '1610973132', '115.27.209.113'),
(29, 'root', 'admin', 'Main', 'admin-rule', '1610973132', '115.27.209.113'),
(30, 'root', 'admin', 'Main', 'admin-list', '1610973132', '115.27.209.113'),
(31, 'root', 'admin', 'Main', 'admin-role', '1610973132', '115.27.209.113'),
(32, 'root', 'admin', 'Main', 'admin_list', '1610973133', '115.27.209.113'),
(33, 'root', 'admin', 'Main', 'item_list', '1610973133', '115.27.209.113'),
(34, 'root', 'admin', 'Main', 'order_set', '1610973133', '115.27.209.113'),
(35, 'root', 'admin', 'Main', 'order_list', '1610973133', '115.27.209.113'),
(36, 'root', 'admin', 'Main', 'role_list', '1610973133', '115.27.209.113'),
(37, 'root', 'admin', 'Main', 'index', '1610973157', '115.27.209.113'),
(38, 'root', 'admin', 'Main', 'welcome', '1610973157', '115.27.209.113'),
(39, 'root', 'admin', 'Main', 'admin-cate', '1610973157', '115.27.209.113'),
(40, 'root', 'admin', 'Main', 'admin-list', '1610973157', '115.27.209.113'),
(41, 'root', 'admin', 'Main', 'item_list', '1610973157', '115.27.209.113'),
(42, 'root', 'admin', 'Main', 'sale-list', '1610973157', '115.27.209.113'),
(43, 'root', 'admin', 'Main', 'admin-role', '1610973157', '115.27.209.113'),
(44, 'root', 'admin', 'Main', 'admin-rule', '1610973157', '115.27.209.113'),
(45, 'root', 'admin', 'Main', 'order_set', '1610973157', '115.27.209.113'),
(46, 'root', 'admin', 'Main', 'admin_list', '1610973157', '115.27.209.113'),
(47, 'root', 'admin', 'Main', 'order_list', '1610973157', '115.27.209.113'),
(48, 'root', 'admin', 'Main', 'rule_list', '1610973157', '115.27.209.113'),
(49, 'root', 'admin', 'Main', 'role_list', '1610973157', '115.27.209.113'),
(50, 'root', 'admin', 'Main', 'add_advert', '1610973163', '115.27.209.113'),
(51, 'root', 'admin', 'Main', 'index', '1610973184', '115.27.209.113'),
(52, 'root', 'admin', 'Main', 'welcome', '1610973184', '115.27.209.113'),
(53, 'root', 'admin', 'Main', 'admin-cate', '1610973184', '115.27.209.113'),
(54, 'root', 'admin', 'Main', 'admin-rule', '1610973184', '115.27.209.113'),
(55, 'root', 'admin', 'Main', 'item_list', '1610973184', '115.27.209.113'),
(56, 'root', 'admin', 'Main', 'admin-list', '1610973184', '115.27.209.113'),
(57, 'root', 'admin', 'Main', 'sale-list', '1610973184', '115.27.209.113'),
(58, 'root', 'admin', 'Main', 'admin-role', '1610973184', '115.27.209.113'),
(59, 'root', 'admin', 'Main', 'order_set', '1610973184', '115.27.209.113'),
(60, 'root', 'admin', 'Main', 'admin_list', '1610973184', '115.27.209.113'),
(61, 'root', 'admin', 'Main', 'order_list', '1610973184', '115.27.209.113'),
(62, 'root', 'admin', 'Main', 'role_list', '1610973184', '115.27.209.113'),
(63, 'root', 'admin', 'Main', 'rule_list', '1610973184', '115.27.209.113'),
(64, 'root', 'admin', 'Main', 'index', '1610973351', '115.27.209.113'),
(65, 'root', 'admin', 'Main', 'welcome', '1610973351', '115.27.209.113'),
(66, 'root', 'admin', 'Main', 'admin-list', '1610973351', '115.27.209.113'),
(67, 'root', 'admin', 'Main', 'admin-rule', '1610973351', '115.27.209.113'),
(68, 'root', 'admin', 'Main', 'admin-cate', '1610973351', '115.27.209.113'),
(69, 'root', 'admin', 'Main', 'sale-list', '1610973351', '115.27.209.113'),
(70, 'root', 'admin', 'Main', 'item_list', '1610973351', '115.27.209.113'),
(71, 'root', 'admin', 'Main', 'admin-role', '1610973351', '115.27.209.113'),
(72, 'root', 'admin', 'Main', 'role_list', '1610973351', '115.27.209.113'),
(73, 'root', 'admin', 'Main', 'admin_list', '1610973351', '115.27.209.113'),
(74, 'root', 'admin', 'Main', 'rule_list', '1610973351', '115.27.209.113'),
(75, 'root', 'admin', 'Main', 'order_list', '1610973351', '115.27.209.113'),
(76, 'root', 'admin', 'Main', 'item_type_list', '1610973351', '115.27.209.113'),
(77, 'root', 'admin', 'Main', 'order_set', '1610973351', '115.27.209.113'),
(78, 'root', 'admin', 'Main', 'item_brand_list', '1610973356', '115.27.209.113'),
(79, 'root', 'admin', 'Main', 'item_list', '1610973365', '115.27.209.113'),
(80, 'root', 'admin', 'Main', 'item_type_list', '1610973366', '115.27.209.113'),
(81, 'root', 'admin', 'Main', 'order_list', '1610973835', '115.27.209.113'),
(82, 'root', 'admin', 'Main', 'admin_list', '1610973840', '115.27.209.113'),
(83, 'root', 'admin', 'Main', 'rule_list', '1610973842', '115.27.209.113'),
(84, 'root', 'admin', 'Main', 'index', '1610973924', '115.27.209.113'),
(85, 'root', 'admin', 'Main', 'welcome', '1610973924', '115.27.209.113'),
(86, 'root', 'admin', 'Main', 'admin_list', '1610973924', '115.27.209.113'),
(87, 'root', 'admin', 'Main', 'item_list', '1610973924', '115.27.209.113'),
(88, 'root', 'admin', 'Main', 'item_type_list', '1610973924', '115.27.209.113'),
(89, 'root', 'admin', 'Main', 'order_list', '1610973924', '115.27.209.113'),
(90, 'root', 'admin', 'Main', 'rule_list', '1610973924', '115.27.209.113'),
(91, 'root', 'admin', 'Main', 'index', '1610974092', '115.27.209.113'),
(92, 'root', 'admin', 'Main', 'welcome', '1610974092', '115.27.209.113'),
(93, 'root', 'admin', 'Main', 'item_type_list', '1610974092', '115.27.209.113'),
(94, 'root', 'admin', 'Main', 'admin_list', '1610974092', '115.27.209.113'),
(95, 'root', 'admin', 'Main', 'order_list', '1610974092', '115.27.209.113'),
(96, 'root', 'admin', 'Main', 'item_list', '1610974092', '115.27.209.113'),
(97, 'root', 'admin', 'Main', 'rule_list', '1610974092', '115.27.209.113'),
(98, 'root', 'admin', 'Main', 'role_list', '1610974125', '115.27.209.113'),
(99, 'root', 'admin', 'Main', 'index', '1610974630', '115.27.209.113'),
(100, 'root', 'admin', 'Main', 'welcome', '1610974630', '115.27.209.113'),
(101, 'root', 'admin', 'Main', 'item_list', '1610974631', '115.27.209.113'),
(102, 'root', 'admin', 'Main', 'rule_list', '1610974631', '115.27.209.113'),
(103, 'root', 'admin', 'Main', 'item_type_list', '1610974631', '115.27.209.113'),
(104, 'root', 'admin', 'Main', 'order_list', '1610974631', '115.27.209.113'),
(105, 'root', 'admin', 'Main', 'admin_list', '1610974631', '115.27.209.113'),
(106, 'root', 'admin', 'Main', 'role_list', '1610974631', '115.27.209.113'),
(107, 'root', 'admin', 'Main', 'index', '1610975006', '115.27.209.113'),
(108, 'root', 'admin', 'Main', 'welcome', '1610975006', '115.27.209.113'),
(109, 'root', 'admin', 'Main', 'item_list', '1610975006', '115.27.209.113'),
(110, 'root', 'admin', 'Main', 'rule_list', '1610975006', '115.27.209.113'),
(111, 'root', 'admin', 'Main', 'order_list', '1610975006', '115.27.209.113'),
(112, 'root', 'admin', 'Main', 'item_type_list', '1610975006', '115.27.209.113'),
(113, 'root', 'admin', 'Main', 'role_list', '1610975006', '115.27.209.113'),
(114, 'root', 'admin', 'Main', 'admin_list', '1610975006', '115.27.209.113'),
(115, 'root', 'admin', 'Main', 'role_list', '1610975144', '115.27.209.113'),
(116, 'root', 'admin', 'Main', 'index', '1610975658', '115.27.209.113'),
(117, 'root', 'admin', 'Main', 'welcome', '1610975659', '115.27.209.113'),
(118, 'root', 'admin', 'Main', 'rule_list', '1610975659', '115.27.209.113'),
(119, 'root', 'admin', 'Main', 'item_type_list', '1610975659', '115.27.209.113'),
(120, 'root', 'admin', 'Main', 'admin_list', '1610975659', '115.27.209.113'),
(121, 'root', 'admin', 'Main', 'item_list', '1610975659', '115.27.209.113'),
(122, 'root', 'admin', 'Main', 'order_list', '1610975659', '115.27.209.113'),
(123, 'root', 'admin', 'Main', 'role_list', '1610975659', '115.27.209.113'),
(124, 'root', 'admin', 'Main', 'index', '1610975660', '115.27.209.113'),
(125, 'root', 'admin', 'Main', 'welcome', '1610975660', '115.27.209.113'),
(126, 'root', 'admin', 'Main', 'rule_list', '1610975660', '115.27.209.113'),
(127, 'root', 'admin', 'Main', 'admin_list', '1610975660', '115.27.209.113'),
(128, 'root', 'admin', 'Main', 'order_list', '1610975660', '115.27.209.113'),
(129, 'root', 'admin', 'Main', 'role_list', '1610975660', '115.27.209.113'),
(130, 'root', 'admin', 'Main', 'item_type_list', '1610975660', '115.27.209.113'),
(131, 'root', 'admin', 'Main', 'item_list', '1610975660', '115.27.209.113'),
(132, 'root', 'admin', 'Main', 'index', '1610975664', '115.27.209.113'),
(133, 'root', 'admin', 'Main', 'rule_list', '1610975664', '115.27.209.113'),
(134, 'root', 'admin', 'Main', 'welcome', '1610975664', '115.27.209.113'),
(135, 'root', 'admin', 'Main', 'item_type_list', '1610975664', '115.27.209.113'),
(136, 'root', 'admin', 'Main', 'admin_list', '1610975664', '115.27.209.113'),
(137, 'root', 'admin', 'Main', 'item_list', '1610975664', '115.27.209.113'),
(138, 'root', 'admin', 'Main', 'order_list', '1610975664', '115.27.209.113'),
(139, 'root', 'admin', 'Main', 'role_list', '1610975664', '115.27.209.113'),
(140, 'root', 'admin', 'Main', 'index', '1610975726', '115.27.209.113'),
(141, 'root', 'admin', 'Main', 'welcome', '1610975727', '115.27.209.113'),
(142, 'root', 'admin', 'Main', 'order_list', '1610975727', '115.27.209.113'),
(143, 'root', 'admin', 'Main', 'item_list', '1610975727', '115.27.209.113'),
(144, 'root', 'admin', 'Main', 'admin_list', '1610975727', '115.27.209.113'),
(145, 'root', 'admin', 'Main', 'rule_list', '1610975727', '115.27.209.113'),
(146, 'root', 'admin', 'Main', 'item_type_list', '1610975727', '115.27.209.113'),
(147, 'root', 'admin', 'Main', 'role_list', '1610975727', '115.27.209.113'),
(148, 'root', 'admin', 'Main', 'index', '1610976426', '115.27.209.113'),
(149, 'root', 'admin', 'Main', 'welcome', '1610976426', '115.27.209.113'),
(150, 'root', 'admin', 'Main', 'item_list', '1610976427', '115.27.209.113'),
(151, 'root', 'admin', 'Main', 'rule_list', '1610976427', '115.27.209.113'),
(152, 'root', 'admin', 'Main', 'order_list', '1610976426', '115.27.209.113'),
(153, 'root', 'admin', 'Main', 'admin_list', '1610976427', '115.27.209.113'),
(154, 'root', 'admin', 'Main', 'item_type_list', '1610976427', '115.27.209.113'),
(155, 'root', 'admin', 'Main', 'role_list', '1610976427', '115.27.209.113'),
(156, 'root', 'admin', 'Main', 'index', '1610976460', '115.27.209.113'),
(157, 'root', 'admin', 'Main', 'welcome', '1610976460', '115.27.209.113'),
(158, 'root', 'admin', 'Main', 'item_list', '1610976460', '115.27.209.113'),
(159, 'root', 'admin', 'Main', 'order_list', '1610976460', '115.27.209.113'),
(160, 'root', 'admin', 'Main', 'rule_list', '1610976460', '115.27.209.113'),
(161, 'root', 'admin', 'Main', 'admin_list', '1610976460', '115.27.209.113'),
(162, 'root', 'admin', 'Main', 'item_type_list', '1610976460', '115.27.209.113'),
(163, 'root', 'admin', 'Main', 'role_list', '1610976460', '115.27.209.113'),
(164, 'root', 'admin', 'Main', 'index', '1610976504', '115.27.209.113'),
(165, 'root', 'admin', 'Main', 'welcome', '1610976504', '115.27.209.113'),
(166, 'root', 'admin', 'Main', 'role_list', '1610976504', '115.27.209.113'),
(167, 'root', 'admin', 'Main', 'order_list', '1610976504', '115.27.209.113'),
(168, 'root', 'admin', 'Main', 'item_list', '1610976504', '115.27.209.113'),
(169, 'root', 'admin', 'Main', 'rule_list', '1610976504', '115.27.209.113'),
(170, 'root', 'admin', 'Main', 'item_type_list', '1610976504', '115.27.209.113'),
(171, 'root', 'admin', 'Main', 'admin_list', '1610976504', '115.27.209.113'),
(172, 'root', 'admin', 'Main', 'sale_list', '1610976550', '115.27.209.113'),
(173, 'root', 'admin', 'Main', 'index', '1610978302', '115.27.209.113'),
(174, 'root', 'admin', 'Main', 'welcome', '1610978302', '115.27.209.113'),
(175, 'root', 'admin', 'Main', 'admin_list', '1610978302', '115.27.209.113'),
(176, 'root', 'admin', 'Main', 'order_list', '1610978302', '115.27.209.113'),
(177, 'root', 'admin', 'Main', 'item_list', '1610978302', '115.27.209.113'),
(178, 'root', 'admin', 'Main', 'rule_list', '1610978302', '115.27.209.113'),
(179, 'root', 'admin', 'Main', 'item_type_list', '1610978302', '115.27.209.113'),
(180, 'root', 'admin', 'Main', 'role_list', '1610978302', '115.27.209.113'),
(181, 'root', 'admin', 'Main', 'sale_list', '1610978302', '115.27.209.113'),
(182, 'root', 'admin', 'Main', 'order_set', '1610978302', '115.27.209.113'),
(183, 'root', 'admin', 'Main', 'index', '1610980799', '115.27.209.113'),
(184, 'root', 'admin', 'Main', 'welcome', '1610980799', '115.27.209.113'),
(185, 'root', 'admin', 'Main', 'rule_list', '1610980799', '115.27.209.113'),
(186, 'root', 'admin', 'Main', 'admin_list', '1610980799', '115.27.209.113'),
(187, 'root', 'admin', 'Main', 'order_list', '1610980799', '115.27.209.113'),
(188, 'root', 'admin', 'Main', 'item_list', '1610980799', '115.27.209.113'),
(189, 'root', 'admin', 'Main', 'item_type_list', '1610980799', '115.27.209.113'),
(190, 'root', 'admin', 'Main', 'role_list', '1610980799', '115.27.209.113'),
(191, 'root', 'admin', 'Main', 'order_set', '1610980799', '115.27.209.113'),
(192, 'root', 'admin', 'Main', 'sale_list', '1610980799', '115.27.209.113'),
(193, 'root', 'admin', 'Main', 'order_set', '1610980811', '115.27.209.113'),
(194, 'root', 'admin', 'Main', 'advert_place_list', '1610980851', '115.27.209.113'),
(195, 'root', 'admin', 'Main', 'advert_list', '1610980852', '115.27.209.113'),
(196, 'root', 'admin', 'Main', 'index', '1610980891', '115.27.209.113'),
(197, 'root', 'admin', 'Main', 'welcome', '1610980891', '115.27.209.113'),
(198, 'root', 'admin', 'Main', 'order_set', '1610980891', '115.27.209.113'),
(199, 'root', 'admin', 'Main', 'advert_place_list', '1610980891', '115.27.209.113'),
(200, 'root', 'admin', 'Main', 'advert_list', '1610980891', '115.27.209.113'),
(201, 'root', 'admin', 'Main', 'role_list', '1610980893', '115.27.209.113'),
(202, 'root', 'admin', 'Main', 'index', '1610984506', '115.27.209.113'),
(203, 'root', 'admin', 'Main', 'welcome', '1610984506', '115.27.209.113'),
(204, 'root', 'admin', 'Main', 'advert_place_list', '1610984506', '115.27.209.113'),
(205, 'root', 'admin', 'Main', 'advert_list', '1610984506', '115.27.209.113'),
(206, 'root', 'admin', 'Main', 'order_set', '1610984506', '115.27.209.113'),
(207, 'root', 'admin', 'Main', 'role_list', '1610984506', '115.27.209.113'),
(208, 'root', 'admin', 'Main', 'item_type_list', '1610984509', '115.27.209.113'),
(209, 'root', 'admin', 'Main', 'item_list', '1610984513', '115.27.209.113'),
(210, 'root', 'admin', 'Main', 'add_item', '1610984514', '115.27.209.113'),
(211, 'root', 'admin', 'Main', 'do_add_item', '1610984562', '115.27.209.113'),
(212, 'root', 'admin', 'Main', 'add_item', '1610984565', '115.27.209.113'),
(213, 'root', 'admin', 'Main', 'item_list', '1610984568', '115.27.209.113'),
(214, 'root', 'admin', 'Main', 'add_item_type', '1610984809', '115.27.209.113'),
(215, 'root', 'admin', 'Main', 'sale_list', '1610984813', '115.27.209.113'),
(216, 'root', 'admin', 'Main', 'add_item_type', '1610984823', '115.27.209.113'),
(217, 'root', 'admin', 'Main', 'admin_list', '1610984827', '115.27.209.113'),
(218, 'root', 'admin', 'Main', 'add_admin', '1610984828', '115.27.209.113'),
(219, 'root', 'admin', 'Main', 'rule_list', '1610984841', '115.27.209.113'),
(220, 'root', 'admin', 'Main', 'index', '1611028613', '115.27.209.113'),
(221, 'root', 'admin', 'Main', 'welcome', '1611028614', '115.27.209.113'),
(222, 'root', 'admin', 'Main', 'advert_list', '1611028614', '115.27.209.113'),
(223, 'root', 'admin', 'Main', 'role_list', '1611028614', '115.27.209.113'),
(224, 'root', 'admin', 'Main', 'order_set', '1611028614', '115.27.209.113'),
(225, 'root', 'admin', 'Main', 'sale_list', '1611028614', '115.27.209.113'),
(226, 'root', 'admin', 'Main', 'advert_place_list', '1611028614', '115.27.209.113'),
(227, 'root', 'admin', 'Main', 'item_type_list', '1611028614', '115.27.209.113'),
(228, 'root', 'admin', 'Main', 'admin_list', '1611028614', '115.27.209.113'),
(229, 'root', 'admin', 'Main', 'item_list', '1611028614', '115.27.209.113'),
(230, 'root', 'admin', 'Main', 'rule_list', '1611028614', '115.27.209.113'),
(231, 'root', 'admin', 'Main', 'order_list', '1611028633', '115.27.209.113'),
(232, 'root', 'admin', 'Main', 'item_brand_list', '1611028643', '115.27.209.113'),
(233, 'root', 'admin', 'Main', 'index', '1611028663', '115.27.209.113'),
(234, 'root', 'admin', 'Main', 'welcome', '1611028663', '115.27.209.113'),
(235, 'root', 'admin', 'Main', 'role_list', '1611028663', '115.27.209.113'),
(236, 'root', 'admin', 'Main', 'advert_place_list', '1611028663', '115.27.209.113'),
(237, 'root', 'admin', 'Main', 'order_set', '1611028663', '115.27.209.113'),
(238, 'root', 'admin', 'Main', 'advert_list', '1611028663', '115.27.209.113'),
(239, 'root', 'admin', 'Main', 'item_type_list', '1611028663', '115.27.209.113'),
(240, 'root', 'admin', 'Main', 'rule_list', '1611028663', '115.27.209.113'),
(241, 'root', 'admin', 'Main', 'admin_list', '1611028664', '115.27.209.113'),
(242, 'root', 'admin', 'Main', 'item_list', '1611028664', '115.27.209.113'),
(243, 'root', 'admin', 'Main', 'sale_list', '1611028664', '115.27.209.113'),
(244, 'root', 'admin', 'Main', 'order_list', '1611028664', '115.27.209.113'),
(245, 'root', 'admin', 'Main', 'item_brand_list', '1611028664', '115.27.209.113'),
(246, 'root', 'admin', 'Main', 'index', '1611121753', '115.27.209.113'),
(247, 'root', 'admin', 'Main', 'welcome', '1611121753', '115.27.209.113'),
(248, 'root', 'admin', 'Main', 'rule_list', '1611121754', '115.27.209.113'),
(249, 'root', 'admin', 'Main', 'role_list', '1611121754', '115.27.209.113'),
(250, 'root', 'admin', 'Main', 'item_type_list', '1611121754', '115.27.209.113'),
(251, 'root', 'admin', 'Main', 'advert_list', '1611121754', '115.27.209.113'),
(252, 'root', 'admin', 'Main', 'advert_place_list', '1611121754', '115.27.209.113'),
(253, 'root', 'admin', 'Main', 'order_set', '1611121754', '115.27.209.113'),
(254, 'root', 'admin', 'Main', 'sale_list', '1611121754', '115.27.209.113'),
(255, 'root', 'admin', 'Main', 'item_brand_list', '1611121754', '115.27.209.113'),
(256, 'root', 'admin', 'Main', 'item_list', '1611121754', '115.27.209.113'),
(257, 'root', 'admin', 'Main', 'admin_list', '1611121754', '115.27.209.113'),
(258, 'root', 'admin', 'Main', 'order_list', '1611121754', '115.27.209.113'),
(259, 'root', 'admin', 'Main', 'add_item', '1611121756', '115.27.209.113'),
(260, 'root', 'admin', 'Main', 'index', '1611123469', '115.27.209.113'),
(261, 'root', 'admin', 'Main', 'welcome', '1611123469', '115.27.209.113'),
(262, 'root', 'admin', 'Main', 'item_type_list', '1611123469', '115.27.209.113'),
(263, 'root', 'admin', 'Main', 'order_set', '1611123470', '115.27.209.113'),
(264, 'root', 'admin', 'Main', 'item_list', '1611123470', '115.27.209.113'),
(265, 'root', 'admin', 'Main', 'role_list', '1611123470', '115.27.209.113'),
(266, 'root', 'admin', 'Main', 'advert_place_list', '1611123470', '115.27.209.113'),
(267, 'root', 'admin', 'Main', 'rule_list', '1611123470', '115.27.209.113'),
(268, 'root', 'admin', 'Main', 'advert_list', '1611123470', '115.27.209.113'),
(269, 'root', 'admin', 'Main', 'sale_list', '1611123470', '115.27.209.113'),
(270, 'root', 'admin', 'Main', 'item_brand_list', '1611123470', '115.27.209.113'),
(271, 'root', 'admin', 'Main', 'order_list', '1611123470', '115.27.209.113'),
(272, 'root', 'admin', 'Main', 'admin_list', '1611123470', '115.27.209.113'),
(273, 'root', 'admin', 'Main', 'index', '1611123542', '115.27.209.113'),
(274, 'root', 'admin', 'Main', 'welcome', '1611123542', '115.27.209.113'),
(275, 'root', 'admin', 'Main', 'index', '1611123583', '115.27.209.113'),
(276, 'root', 'admin', 'Main', 'welcome', '1611123583', '115.27.209.113'),
(277, 'root', 'admin', 'Main', 'item_list', '1611123588', '115.27.209.113'),
(278, 'root', 'admin', 'Main', 'order_list', '1611123590', '115.27.209.113'),
(279, 'root', 'admin', 'Main', 'index', '1611123623', '115.27.209.113'),
(280, 'root', 'admin', 'Main', 'welcome', '1611123623', '115.27.209.113'),
(281, 'root', 'admin', 'Main', 'order_list', '1611123623', '115.27.209.113'),
(282, 'root', 'admin', 'Main', 'item_list', '1611123623', '115.27.209.113'),
(283, 'root', 'admin', 'Main', 'order_list', '1611123631', '115.27.209.113'),
(284, 'root', 'admin', 'Main', 'index', '1611123706', '115.27.209.113'),
(285, 'root', 'admin', 'Main', 'welcome', '1611123706', '115.27.209.113'),
(286, 'root', 'admin', 'Main', 'order_list', '1611123706', '115.27.209.113'),
(287, 'root', 'admin', 'Main', 'index', '1611123742', '115.27.209.113'),
(288, 'root', 'admin', 'Main', 'order_list', '1611123742', '115.27.209.113'),
(289, 'root', 'admin', 'Main', 'welcome', '1611123742', '115.27.209.113'),
(290, 'root', 'admin', 'Main', 'index', '1611194120', '115.27.209.113'),
(291, 'root', 'admin', 'Main', 'welcome', '1611194120', '115.27.209.113'),
(292, 'root', 'admin', 'Main', 'order_list', '1611194120', '115.27.209.113'),
(293, 'root', 'admin', 'Main', 'advert_list', '1611194125', '115.27.209.113'),
(294, 'root', 'admin', 'Main', 'role_list', '1611194127', '115.27.209.113'),
(295, 'root', 'admin', 'Main', 'add_admin', '1611194128', '115.27.209.113'),
(296, 'root', 'admin', 'Main', 'add_admin', '1611194172', '115.27.209.113'),
(297, 'root', 'admin', 'Main', 'index', '1611194176', '115.27.209.113'),
(298, 'root', 'admin', 'Main', 'role_list', '1611194176', '115.27.209.113'),
(299, 'root', 'admin', 'Main', 'welcome', '1611194176', '115.27.209.113'),
(300, 'root', 'admin', 'Main', 'order_list', '1611194176', '115.27.209.113'),
(301, 'root', 'admin', 'Main', 'advert_list', '1611194176', '115.27.209.113'),
(302, 'root', 'admin', 'Main', 'add_admin', '1611194177', '115.27.209.113'),
(303, 'root', 'admin', 'Main', 'add_admin', '1611194233', '115.27.209.113'),
(304, 'root', 'admin', 'Main', 'index', '1611194237', '115.27.209.113'),
(305, 'root', 'admin', 'Main', 'welcome', '1611194237', '115.27.209.113'),
(306, 'root', 'admin', 'Main', 'advert_list', '1611194237', '115.27.209.113'),
(307, 'root', 'admin', 'Main', 'order_list', '1611194237', '115.27.209.113'),
(308, 'root', 'admin', 'Main', 'role_list', '1611194237', '115.27.209.113'),
(309, 'root', 'admin', 'Main', 'add_role', '1611194238', '115.27.209.113'),
(310, 'root', 'admin', 'Main', 'index', '1611194664', '115.27.209.113'),
(311, 'root', 'admin', 'Main', 'order_list', '1611194664', '115.27.209.113'),
(312, 'root', 'admin', 'Main', 'welcome', '1611194664', '115.27.209.113'),
(313, 'root', 'admin', 'Main', 'role_list', '1611194664', '115.27.209.113'),
(314, 'root', 'admin', 'Main', 'advert_list', '1611194664', '115.27.209.113'),
(315, 'root', 'admin', 'Main', 'add_role', '1611194671', '115.27.209.113'),
(316, 'root', 'admin', 'Main', 'add_role', '1611194684', '115.27.209.113'),
(317, 'root', 'admin', 'Main', 'index', '1611194745', '115.27.209.113'),
(318, 'root', 'admin', 'Main', 'order_list', '1611194745', '115.27.209.113'),
(319, 'root', 'admin', 'Main', 'advert_list', '1611194745', '115.27.209.113'),
(320, 'root', 'admin', 'Main', 'welcome', '1611194745', '115.27.209.113'),
(321, 'root', 'admin', 'Main', 'role_list', '1611194745', '115.27.209.113'),
(322, 'root', 'admin', 'Main', 'add_role', '1611194746', '115.27.209.113'),
(323, 'root', 'admin', 'Main', 'rule_list', '1611194779', '115.27.209.113'),
(324, 'root', 'admin', 'Main', 'index', '1611194888', '115.27.209.113'),
(325, 'root', 'admin', 'Main', 'order_list', '1611194888', '115.27.209.113'),
(326, 'root', 'admin', 'Main', 'welcome', '1611194888', '115.27.209.113'),
(327, 'root', 'admin', 'Main', 'advert_list', '1611194888', '115.27.209.113'),
(328, 'root', 'admin', 'Main', 'rule_list', '1611194888', '115.27.209.113'),
(329, 'root', 'admin', 'Main', 'role_list', '1611194888', '115.27.209.113'),
(330, 'root', 'admin', 'Main', 'admin_list', '1611194889', '115.27.209.113'),
(331, 'root', 'admin', 'Main', 'add_role', '1611194908', '115.27.209.113'),
(332, 'root', 'admin', 'Main', 'add_role', '1611194963', '115.27.209.113'),
(333, 'root', 'admin', 'Main', 'do_add_role', '1611194975', '115.27.209.113'),
(334, 'root', 'admin', 'Main', 'index', '1611195052', '115.27.209.113'),
(335, 'root', 'admin', 'Main', 'order_list', '1611195052', '115.27.209.113'),
(336, 'root', 'admin', 'Main', 'welcome', '1611195052', '115.27.209.113'),
(337, 'root', 'admin', 'Main', 'role_list', '1611195052', '115.27.209.113'),
(338, 'root', 'admin', 'Main', 'admin_list', '1611195052', '115.27.209.113'),
(339, 'root', 'admin', 'Main', 'rule_list', '1611195052', '115.27.209.113'),
(340, 'root', 'admin', 'Main', 'advert_list', '1611195052', '115.27.209.113'),
(341, 'root', 'admin', 'Main', 'role_list', '1611195104', '115.27.209.113'),
(342, 'root', 'admin', 'Main', 'item_list', '1611195186', '115.27.209.113'),
(343, 'root', 'admin', 'Main', 'item_list', '1611195197', '115.27.209.113'),
(344, 'root', 'admin', 'Main', 'item_list', '1611195202', '115.27.209.113'),
(345, 'root', 'admin', 'Main', 'item_type_list', '1611195204', '115.27.209.113'),
(346, 'root', 'admin', 'Main', 'item_brand_list', '1611195206', '115.27.209.113'),
(347, 'root', 'admin', 'Main', 'item_type_list', '1611195212', '115.27.209.113'),
(348, 'root', 'admin', 'Main', 'item_type_list', '1611195213', '115.27.209.113'),
(349, 'root', 'admin', 'Main', 'del_item_brand', '1611195222', '115.27.209.113'),
(350, 'root', 'admin', 'Main', 'item_brand_list', '1611195223', '115.27.209.113'),
(351, 'root', 'admin', 'Main', 'item_brand_list', '1611195224', '115.27.209.113'),
(352, 'root', 'admin', 'Main', 'index', '1611195557', '115.27.209.113'),
(353, 'root', 'admin', 'Main', 'admin_list', '1611195557', '115.27.209.113'),
(354, 'root', 'admin', 'Main', 'role_list', '1611195557', '115.27.209.113'),
(355, 'root', 'admin', 'Main', 'rule_list', '1611195557', '115.27.209.113'),
(356, 'root', 'admin', 'Main', 'advert_list', '1611195557', '115.27.209.113'),
(357, 'root', 'admin', 'Main', 'order_list', '1611195557', '115.27.209.113'),
(358, 'root', 'admin', 'Main', 'welcome', '1611195557', '115.27.209.113'),
(359, 'root', 'admin', 'Main', 'item_type_list', '1611195557', '115.27.209.113'),
(360, 'root', 'admin', 'Main', 'item_list', '1611195557', '115.27.209.113'),
(361, 'root', 'admin', 'Main', 'item_brand_list', '1611195557', '115.27.209.113'),
(362, 'root', 'admin', 'Main', 'index', '1611195564', '115.27.209.113'),
(363, 'root', 'admin', 'Main', 'welcome', '1611195565', '115.27.209.113'),
(364, 'root', 'admin', 'Main', 'index', '1611195565', '115.27.209.113'),
(365, 'root', 'admin', 'Main', 'welcome', '1611195565', '115.27.209.113'),
(366, 'root', 'admin', 'Main', 'rule_list', '1611195567', '115.27.209.113'),
(367, 'root', 'admin', 'Main', 'rule_list', '1611195593', '115.27.209.113'),
(368, 'root', 'admin', 'Main', 'rule_list', '1611195631', '115.27.209.113'),
(369, 'root', 'admin', 'Main', 'role_list', '1611195635', '115.27.209.113'),
(370, 'root', 'admin', 'Main', 'del_role', '1611195637', '115.27.209.113'),
(371, 'root', 'admin', 'Main', 'role_list', '1611195638', '115.27.209.113'),
(372, 'root', 'admin', 'Main', 'role_list', '1611195639', '115.27.209.113'),
(373, 'root', 'admin', 'Main', 'role_list', '1611195639', '115.27.209.113'),
(374, 'root', 'admin', 'Main', 'index', '1611195748', '115.27.209.113'),
(375, 'root', 'admin', 'Main', 'rule_list', '1611195748', '115.27.209.113'),
(376, 'root', 'admin', 'Main', 'role_list', '1611195748', '115.27.209.113'),
(377, 'root', 'admin', 'Main', 'welcome', '1611195748', '115.27.209.113'),
(378, 'root', 'admin', 'Main', 'role_list', '1611195749', '115.27.209.113'),
(379, 'root', 'admin', 'Main', 'add_role', '1611195750', '115.27.209.113'),
(380, 'root', 'admin', 'Main', 'role_list', '1611195979', '115.27.209.113'),
(381, 'root', 'admin', 'Main', 'add_role', '1611195980', '115.27.209.113'),
(382, 'root', 'admin', 'Main', 'do_add_role', '1611196000', '115.27.209.113'),
(383, 'root', 'admin', 'Main', 'add_role', '1611196003', '115.27.209.113'),
(384, 'root', 'admin', 'Main', 'role_list', '1611196020', '115.27.209.113'),
(385, 'root', 'admin', 'Main', 'admin_list', '1611196025', '115.27.209.113'),
(386, 'root', 'admin', 'Main', 'add_admin', '1611196152', '115.27.209.113'),
(387, 'root', 'admin', 'Main', 'add_admin', '1611196163', '115.27.209.113'),
(388, 'root', 'admin', 'Main', 'add_admin', '1611196202', '115.27.209.113'),
(389, 'root', 'admin', 'Main', 'add_admin', '1611196226', '115.27.209.113'),
(390, 'root', 'admin', 'Main', 'add_admin', '1611196478', '115.27.209.113'),
(391, 'root', 'admin', 'Main', 'add_admin', '1611196497', '115.27.209.113'),
(392, 'root', 'admin', 'Main', 'admin_list', '1611196501', '115.27.209.113'),
(393, 'root', 'admin', 'Main', 'admin_list', '1611196502', '115.27.209.113'),
(394, 'root', 'admin', 'Main', 'index', '1611196546', '115.27.209.113'),
(395, 'root', 'admin', 'Main', 'rule_list', '1611196546', '115.27.209.113'),
(396, 'root', 'admin', 'Main', 'role_list', '1611196546', '115.27.209.113'),
(397, 'root', 'admin', 'Main', 'admin_list', '1611196546', '115.27.209.113'),
(398, 'root', 'admin', 'Main', 'welcome', '1611196546', '115.27.209.113'),
(399, 'root', 'admin', 'Main', 'add_admin', '1611196548', '115.27.209.113'),
(400, 'root', 'admin', 'Main', 'do_add_admin', '1611196564', '115.27.209.113'),
(401, 'root', 'admin', 'Main', 'add_admin', '1611196567', '115.27.209.113'),
(402, 'root', 'admin', 'Main', 'admin_list', '1611196569', '115.27.209.113'),
(403, 'root', 'admin', 'Main', 'index', '1611196596', '115.27.209.113'),
(404, 'root', 'admin', 'Main', 'rule_list', '1611196596', '115.27.209.113'),
(405, 'root', 'admin', 'Main', 'role_list', '1611196596', '115.27.209.113'),
(406, 'root', 'admin', 'Main', 'welcome', '1611196596', '115.27.209.113'),
(407, 'root', 'admin', 'Main', 'admin_list', '1611196596', '115.27.209.113'),
(408, 'root', 'admin', 'Main', 'index', '1611196615', '115.27.209.113'),
(409, 'root', 'admin', 'Main', 'welcome', '1611196615', '115.27.209.113'),
(410, 'root', 'admin', 'Main', 'item_type_list', '1611196615', '115.27.209.113'),
(411, 'root', 'admin', 'Main', 'item_list', '1611196616', '115.27.209.113'),
(412, 'root', 'admin', 'Main', 'index', '1611196672', '115.27.209.113'),
(413, 'root', 'admin', 'Main', 'welcome', '1611196672', '115.27.209.113'),
(414, 'root', 'admin', 'Main', 'item_list', '1611196673', '115.27.209.113'),
(415, 'root', 'admin', 'Main', 'item_type_list', '1611196673', '115.27.209.113'),
(416, 'root', 'admin', 'Main', 'index', '1611196745', '115.27.209.113'),
(417, 'root', 'admin', 'Main', 'welcome', '1611196745', '115.27.209.113'),
(418, 'root', 'admin', 'Main', 'item_type_list', '1611196745', '115.27.209.113'),
(419, 'root', 'admin', 'Main', 'item_list', '1611196745', '115.27.209.113'),
(420, 'root', 'admin', 'Main', 'item_list', '1611196749', '115.27.209.113'),
(421, 'root', 'admin', 'Main', 'item_type_list', '1611196749', '115.27.209.113'),
(422, 'root', 'admin', 'Main', 'index', '1611196822', '115.27.209.113'),
(423, 'root', 'admin', 'Main', 'welcome', '1611196822', '115.27.209.113'),
(424, 'root', 'admin', 'Main', 'index', '1611196826', '115.27.209.113'),
(425, 'root', 'admin', 'Main', 'index', '1611196826', '115.27.209.113'),
(426, 'root', 'admin', 'Main', 'welcome', '1611196826', '115.27.209.113'),
(427, 'root', 'admin', 'Main', 'welcome', '1611196826', '115.27.209.113'),
(428, 'root', 'admin', 'Main', 'item_list', '1611196831', '115.27.209.113'),
(429, 'root', 'admin', 'Main', 'item_type_list', '1611196832', '115.27.209.113'),
(430, 'root', 'admin', 'Main', 'item_brand_list', '1611196833', '115.27.209.113'),
(431, 'root', 'admin', 'Main', 'add_item_brand', '1611196834', '115.27.209.113'),
(432, 'root', 'admin', 'Main', 'add_item_type', '1611196838', '115.27.209.113'),
(433, 'root', 'admin', 'Main', 'add_item_type', '1611196843', '115.27.209.113'),
(434, 'root', 'admin', 'Main', 'item_type_list', '1611196853', '115.27.209.113'),
(435, 'root', 'admin', 'Main', 'role_list', '1611197010', '115.27.209.113'),
(436, 'root', 'admin', 'Main', 'role_list', '1611197010', '115.27.209.113'),
(437, 'root', 'admin', 'Main', 'role_list', '1611197010', '115.27.209.113'),
(438, 'root', 'admin', 'Main', 'role_list', '1611197011', '115.27.209.113'),
(439, 'root', 'admin', 'Main', 'item_type_list', '1611197016', '115.27.209.113'),
(440, 'root', 'admin', 'Main', 'item_type_list', '1611197017', '115.27.209.113'),
(441, 'root', 'admin', 'Main', 'item_type_list', '1611197020', '115.27.209.113'),
(442, 'root', 'admin', 'Main', 'item_type_list', '1611197021', '115.27.209.113'),
(443, 'root', 'admin', 'Main', 'item_type_list', '1611197022', '115.27.209.113'),
(444, 'root', 'admin', 'Main', 'index', '1611197053', '115.27.209.113'),
(445, 'root', 'admin', 'Main', 'welcome', '1611197053', '115.27.209.113'),
(446, 'root', 'admin', 'Main', 'admin_list', '1611197053', '115.27.209.113'),
(447, 'root', 'admin', 'Main', 'item_type_list', '1611197053', '115.27.209.113'),
(448, 'root', 'admin', 'Main', 'rule_list', '1611197053', '115.27.209.113'),
(449, 'root', 'admin', 'Main', 'role_list', '1611197053', '115.27.209.113'),
(450, 'root', 'admin', 'Main', 'index', '1611197054', '115.27.209.113'),
(451, 'root', 'admin', 'Main', 'item_type_list', '1611197055', '115.27.209.113'),
(452, 'root', 'admin', 'Main', 'role_list', '1611197055', '115.27.209.113'),
(453, 'root', 'admin', 'Main', 'rule_list', '1611197055', '115.27.209.113'),
(454, 'root', 'admin', 'Main', 'admin_list', '1611197055', '115.27.209.113'),
(455, 'root', 'admin', 'Main', 'welcome', '1611197055', '115.27.209.113'),
(456, 'root', 'admin', 'Main', 'admin_list', '1611197060', '115.27.209.113'),
(457, 'root', 'admin', 'Main', 'admin_list', '1611197061', '115.27.209.113'),
(458, 'root', 'admin', 'Main', 'rule_list', '1611197063', '115.27.209.113'),
(459, 'root', 'admin', 'Main', 'rule_list', '1611197064', '115.27.209.113'),
(460, 'root', 'admin', 'Main', 'item_type_list', '1611197072', '115.27.209.113'),
(461, 'root', 'admin', 'Main', 'item_type_list', '1611197076', '115.27.209.113'),
(462, 'root', 'admin', 'Main', 'item_type_list', '1611197095', '115.27.209.113'),
(463, 'root', 'admin', 'Main', 'item_type_list', '1611197095', '115.27.209.113'),
(464, 'root', 'admin', 'Main', 'item_type_list', '1611197100', '115.27.209.113'),
(465, 'root', 'admin', 'Main', 'item_type_list', '1611197103', '115.27.209.113'),
(466, 'root', 'admin', 'Main', 'item_type_list', '1611197104', '115.27.209.113'),
(467, 'root', 'admin', 'Main', 'index', '1611197179', '115.27.209.113'),
(468, 'root', 'admin', 'Main', 'welcome', '1611197179', '115.27.209.113'),
(469, 'root', 'admin', 'Main', 'item_type_list', '1611197179', '115.27.209.113'),
(470, 'root', 'admin', 'Main', 'item_list', '1611197179', '115.27.209.113'),
(471, 'root', 'admin', 'Main', 'item_brand_list', '1611197179', '115.27.209.113'),
(472, 'root', 'admin', 'Main', 'index', '1611197181', '115.27.209.113'),
(473, 'root', 'admin', 'Main', 'welcome', '1611197181', '115.27.209.113'),
(474, 'root', 'admin', 'Main', 'item_type_list', '1611197182', '115.27.209.113'),
(475, 'root', 'admin', 'Main', 'item_list', '1611197182', '115.27.209.113'),
(476, 'root', 'admin', 'Main', 'item_brand_list', '1611197182', '115.27.209.113'),
(477, 'root', 'admin', 'Main', 'index', '1611197182', '115.27.209.113'),
(478, 'root', 'admin', 'Main', 'index', '1611197182', '115.27.209.113'),
(479, 'root', 'admin', 'Main', 'welcome', '1611197182', '115.27.209.113'),
(480, 'root', 'admin', 'Main', 'item_list', '1611197183', '115.27.209.113'),
(481, 'root', 'admin', 'Main', 'item_brand_list', '1611197183', '115.27.209.113'),
(482, 'root', 'admin', 'Main', 'item_type_list', '1611197183', '115.27.209.113'),
(483, 'root', 'admin', 'Main', 'index', '1611197183', '115.27.209.113'),
(484, 'root', 'admin', 'Main', 'item_list', '1611197183', '115.27.209.113'),
(485, 'root', 'admin', 'Main', 'item_brand_list', '1611197183', '115.27.209.113'),
(486, 'root', 'admin', 'Main', 'welcome', '1611197183', '115.27.209.113'),
(487, 'root', 'admin', 'Main', 'item_type_list', '1611197183', '115.27.209.113'),
(488, 'root', 'admin', 'Main', 'item_type_list', '1611197183', '115.27.209.113'),
(489, 'root', 'admin', 'Main', 'item_list', '1611197184', '115.27.209.113'),
(490, 'root', 'admin', 'Main', 'welcome', '1611197184', '115.27.209.113'),
(491, 'root', 'admin', 'Main', 'index', '1611197184', '115.27.209.113'),
(492, 'root', 'admin', 'Main', 'item_brand_list', '1611197184', '115.27.209.113'),
(493, 'root', 'admin', 'Main', 'welcome', '1611197184', '115.27.209.113'),
(494, 'root', 'admin', 'Main', 'item_type_list', '1611197184', '115.27.209.113'),
(495, 'root', 'admin', 'Main', 'item_list', '1611197184', '115.27.209.113'),
(496, 'root', 'admin', 'Main', 'item_brand_list', '1611197184', '115.27.209.113'),
(497, 'root', 'admin', 'Main', 'index', '1611197185', '115.27.209.113'),
(498, 'root', 'admin', 'Main', 'index', '1611197185', '115.27.209.113'),
(499, 'root', 'admin', 'Main', 'item_list', '1611197185', '115.27.209.113'),
(500, 'root', 'admin', 'Main', 'welcome', '1611197185', '115.27.209.113'),
(501, 'root', 'admin', 'Main', 'item_brand_list', '1611197185', '115.27.209.113'),
(502, 'root', 'admin', 'Main', 'item_type_list', '1611197185', '115.27.209.113'),
(503, 'root', 'admin', 'Main', 'welcome', '1611197185', '115.27.209.113'),
(504, 'root', 'admin', 'Main', 'index', '1611197185', '115.27.209.113'),
(505, 'root', 'admin', 'Main', 'item_brand_list', '1611197185', '115.27.209.113'),
(506, 'root', 'admin', 'Main', 'item_list', '1611197185', '115.27.209.113'),
(507, 'root', 'admin', 'Main', 'index', '1611197186', '115.27.209.113'),
(508, 'root', 'admin', 'Main', 'item_type_list', '1611197186', '115.27.209.113'),
(509, 'root', 'admin', 'Main', 'item_list', '1611197186', '115.27.209.113'),
(510, 'root', 'admin', 'Main', 'item_brand_list', '1611197186', '115.27.209.113'),
(511, 'root', 'admin', 'Main', 'welcome', '1611197186', '115.27.209.113'),
(512, 'root', 'admin', 'Main', 'item_type_list', '1611197186', '115.27.209.113'),
(513, 'root', 'admin', 'Main', 'index', '1611197186', '115.27.209.113'),
(514, 'root', 'admin', 'Main', 'item_brand_list', '1611197186', '115.27.209.113'),
(515, 'root', 'admin', 'Main', 'welcome', '1611197186', '115.27.209.113'),
(516, 'root', 'admin', 'Main', 'item_list', '1611197186', '115.27.209.113'),
(517, 'root', 'admin', 'Main', 'item_type_list', '1611197187', '115.27.209.113'),
(518, 'root', 'admin', 'Main', 'item_type_list', '1611197187', '115.27.209.113'),
(519, 'root', 'admin', 'Main', 'item_list', '1611197187', '115.27.209.113'),
(520, 'root', 'admin', 'Main', 'item_brand_list', '1611197187', '115.27.209.113'),
(521, 'root', 'admin', 'Main', 'welcome', '1611197187', '115.27.209.113'),
(522, 'root', 'admin', 'Main', 'index', '1611197187', '115.27.209.113'),
(523, 'root', 'admin', 'Main', 'item_type_list', '1611197187', '115.27.209.113'),
(524, 'root', 'admin', 'Main', 'index', '1611197187', '115.27.209.113'),
(525, 'root', 'admin', 'Main', 'item_type_list', '1611197187', '115.27.209.113'),
(526, 'root', 'admin', 'Main', 'welcome', '1611197187', '115.27.209.113'),
(527, 'root', 'admin', 'Main', 'item_list', '1611197187', '115.27.209.113'),
(528, 'root', 'admin', 'Main', 'item_brand_list', '1611197187', '115.27.209.113'),
(529, 'root', 'admin', 'Main', 'item_type_list', '1611197187', '115.27.209.113'),
(530, 'root', 'admin', 'Main', 'index', '1611197187', '115.27.209.113'),
(531, 'root', 'admin', 'Main', 'welcome', '1611197188', '115.27.209.113'),
(532, 'root', 'admin', 'Main', 'item_brand_list', '1611197188', '115.27.209.113'),
(533, 'root', 'admin', 'Main', 'item_list', '1611197188', '115.27.209.113'),
(534, 'root', 'admin', 'Main', 'welcome', '1611197188', '115.27.209.113'),
(535, 'root', 'admin', 'Main', 'item_brand_list', '1611197188', '115.27.209.113'),
(536, 'root', 'admin', 'Main', 'index', '1611197188', '115.27.209.113'),
(537, 'root', 'admin', 'Main', 'item_type_list', '1611197188', '115.27.209.113'),
(538, 'root', 'admin', 'Main', 'item_list', '1611197188', '115.27.209.113'),
(539, 'root', 'admin', 'Main', 'index', '1611197188', '115.27.209.113'),
(540, 'root', 'admin', 'Main', 'welcome', '1611197188', '115.27.209.113'),
(541, 'root', 'admin', 'Main', 'item_brand_list', '1611197188', '115.27.209.113'),
(542, 'root', 'admin', 'Main', 'item_type_list', '1611197188', '115.27.209.113'),
(543, 'root', 'admin', 'Main', 'item_type_list', '1611197189', '115.27.209.113'),
(544, 'root', 'admin', 'Main', 'item_list', '1611197189', '115.27.209.113'),
(545, 'root', 'admin', 'Main', 'index', '1611197189', '115.27.209.113'),
(546, 'root', 'admin', 'Main', 'welcome', '1611197189', '115.27.209.113'),
(547, 'root', 'admin', 'Main', 'item_brand_list', '1611197189', '115.27.209.113'),
(548, 'root', 'admin', 'Main', 'item_type_list', '1611197189', '115.27.209.113'),
(549, 'root', 'admin', 'Main', 'index', '1611197190', '115.27.209.113'),
(550, 'root', 'admin', 'Main', 'item_brand_list', '1611197190', '115.27.209.113'),
(551, 'root', 'admin', 'Main', 'welcome', '1611197190', '115.27.209.113'),
(552, 'root', 'admin', 'Main', 'item_list', '1611197190', '115.27.209.113'),
(553, 'root', 'admin', 'Main', 'index', '1611197190', '115.27.209.113'),
(554, 'root', 'admin', 'Main', 'item_type_list', '1611197190', '115.27.209.113'),
(555, 'root', 'admin', 'Main', 'item_list', '1611197190', '115.27.209.113'),
(556, 'root', 'admin', 'Main', 'item_brand_list', '1611197190', '115.27.209.113'),
(557, 'root', 'admin', 'Main', 'welcome', '1611197190', '115.27.209.113'),
(558, 'root', 'admin', 'Main', 'item_type_list', '1611197190', '115.27.209.113'),
(559, 'root', 'admin', 'Main', 'index', '1611197190', '115.27.209.113'),
(560, 'root', 'admin', 'Main', 'item_list', '1611197190', '115.27.209.113'),
(561, 'root', 'admin', 'Main', 'welcome', '1611197190', '115.27.209.113'),
(562, 'root', 'admin', 'Main', 'index', '1611197190', '115.27.209.113'),
(563, 'root', 'admin', 'Main', 'item_type_list', '1611197190', '115.27.209.113'),
(564, 'root', 'admin', 'Main', 'welcome', '1611197191', '115.27.209.113'),
(565, 'root', 'admin', 'Main', 'item_brand_list', '1611197191', '115.27.209.113'),
(566, 'root', 'admin', 'Main', 'item_list', '1611197191', '115.27.209.113'),
(567, 'root', 'admin', 'Main', 'item_type_list', '1611197191', '115.27.209.113'),
(568, 'root', 'admin', 'Main', 'index', '1611197191', '115.27.209.113'),
(569, 'root', 'admin', 'Main', 'item_brand_list', '1611197191', '115.27.209.113'),
(570, 'root', 'admin', 'Main', 'welcome', '1611197191', '115.27.209.113'),
(571, 'root', 'admin', 'Main', 'item_list', '1611197191', '115.27.209.113'),
(572, 'root', 'admin', 'Main', 'index', '1611197192', '115.27.209.113'),
(573, 'root', 'admin', 'Main', 'item_type_list', '1611197192', '115.27.209.113'),
(574, 'root', 'admin', 'Main', 'item_brand_list', '1611197192', '115.27.209.113'),
(575, 'root', 'admin', 'Main', 'welcome', '1611197192', '115.27.209.113'),
(576, 'root', 'admin', 'Main', 'index', '1611197192', '115.27.209.113'),
(577, 'root', 'admin', 'Main', 'item_list', '1611197192', '115.27.209.113'),
(578, 'root', 'admin', 'Main', 'item_brand_list', '1611197192', '115.27.209.113'),
(579, 'root', 'admin', 'Main', 'item_type_list', '1611197192', '115.27.209.113'),
(580, 'root', 'admin', 'Main', 'index', '1611197192', '115.27.209.113'),
(581, 'root', 'admin', 'Main', 'welcome', '1611197192', '115.27.209.113'),
(582, 'root', 'admin', 'Main', 'item_list', '1611197193', '115.27.209.113'),
(583, 'root', 'admin', 'Main', 'item_type_list', '1611197193', '115.27.209.113'),
(584, 'root', 'admin', 'Main', 'index', '1611197193', '115.27.209.113'),
(585, 'root', 'admin', 'Main', 'item_brand_list', '1611197193', '115.27.209.113'),
(586, 'root', 'admin', 'Main', 'item_list', '1611197193', '115.27.209.113'),
(587, 'root', 'admin', 'Main', 'welcome', '1611197193', '115.27.209.113'),
(588, 'root', 'admin', 'Main', 'item_type_list', '1611197193', '115.27.209.113'),
(589, 'root', 'admin', 'Main', 'item_brand_list', '1611197193', '115.27.209.113'),
(590, 'root', 'admin', 'Main', 'item_list', '1611197194', '115.27.209.113'),
(591, 'root', 'admin', 'Main', 'welcome', '1611197194', '115.27.209.113'),
(592, 'root', 'admin', 'Main', 'item_type_list', '1611197194', '115.27.209.113'),
(593, 'root', 'admin', 'Main', 'item_brand_list', '1611197194', '115.27.209.113'),
(594, 'root', 'admin', 'Main', 'welcome', '1611197194', '115.27.209.113'),
(595, 'root', 'admin', 'Main', 'item_list', '1611197194', '115.27.209.113'),
(596, 'root', 'admin', 'Main', 'item_type_list', '1611197194', '115.27.209.113'),
(597, 'root', 'admin', 'Main', 'item_list', '1611197194', '115.27.209.113'),
(598, 'root', 'admin', 'Main', 'item_brand_list', '1611197194', '115.27.209.113'),
(599, 'root', 'admin', 'Main', 'item_type_list', '1611197207', '115.27.209.113'),
(600, 'root', 'admin', 'Main', 'item_type_list', '1611197210', '115.27.209.113'),
(601, 'root', 'admin', 'Main', 'item_type_list', '1611197211', '115.27.209.113'),
(602, 'root', 'admin', 'Main', 'item_type_list', '1611197211', '115.27.209.113'),
(603, 'root', 'admin', 'Main', 'item_type_list', '1611197228', '115.27.209.113'),
(604, 'root', 'admin', 'Main', 'item_type_list', '1611197285', '115.27.209.113'),
(605, 'root', 'admin', 'Main', 'item_type_list', '1611197290', '115.27.209.113'),
(606, 'root', 'admin', 'Main', 'add_item_type', '1611197291', '115.27.209.113'),
(607, 'root', 'admin', 'Main', 'item_type_list', '1611197297', '115.27.209.113'),
(608, 'root', 'admin', 'Main', 'item_type_list', '1611197297', '115.27.209.113'),
(609, 'root', 'admin', 'Main', 'item_type_list', '1611197298', '115.27.209.113'),
(610, 'root', 'admin', 'Main', 'item_type_list', '1611197402', '115.27.209.113'),
(611, 'root', 'admin', 'Main', 'del_item_type', '1611197404', '115.27.209.113'),
(612, 'root', 'admin', 'Main', 'item_type_list', '1611197405', '115.27.209.113'),
(613, 'root', 'admin', 'Main', 'item_type_list', '1611197406', '115.27.209.113'),
(614, 'root', 'admin', 'Main', 'item_type_list', '1611197406', '115.27.209.113'),
(615, 'root', 'admin', 'Main', 'item_brand_list', '1611197409', '115.27.209.113'),
(616, 'root', 'admin', 'Main', 'index', '1611197418', '115.27.209.113'),
(617, 'root', 'admin', 'Main', 'welcome', '1611197418', '115.27.209.113'),
(618, 'root', 'admin', 'Main', 'item_type_list', '1611197418', '115.27.209.113'),
(619, 'root', 'admin', 'Main', 'item_brand_list', '1611197418', '115.27.209.113'),
(620, 'root', 'admin', 'Main', 'item_list', '1611197418', '115.27.209.113'),
(621, 'root', 'admin', 'Main', 'add_item', '1611197419', '115.27.209.113'),
(622, 'root', 'admin', 'Main', 'index', '1611197421', '115.27.209.113'),
(623, 'root', 'admin', 'Main', 'welcome', '1611197421', '115.27.209.113'),
(624, 'root', 'admin', 'Main', 'item_brand_list', '1611197421', '115.27.209.113'),
(625, 'root', 'admin', 'Main', 'item_list', '1611197421', '115.27.209.113'),
(626, 'root', 'admin', 'Main', 'item_type_list', '1611197421', '115.27.209.113'),
(627, 'root', 'admin', 'Main', 'do_add_item', '1611197451', '115.27.209.113'),
(628, 'root', 'admin', 'Main', 'item_list', '1611197454', '115.27.209.113'),
(629, 'root', 'admin', 'Main', 'item_list', '1611197455', '115.27.209.113'),
(630, 'root', 'admin', 'Main', 'item_list', '1611197455', '115.27.209.113'),
(631, 'root', 'admin', 'Main', 'item_list', '1611198241', '115.27.209.113'),
(632, 'root', 'admin', 'Main', 'rule_list', '1611198246', '115.27.209.113'),
(633, 'root', 'admin', 'Main', 'add_rule', '1611198247', '115.27.209.113'),
(634, 'root', 'admin', 'Main', 'rule_list', '1611198278', '115.27.209.113'),
(635, 'root', 'admin', 'Main', 'rule_list', '1611198279', '115.27.209.113'),
(636, 'root', 'admin', 'Main', 'add_rule', '1611198280', '115.27.209.113'),
(637, 'root', 'admin', 'Main', 'order_list', '1611198289', '115.27.209.113'),
(638, 'root', 'admin', 'Main', 'sale_list', '1611198293', '115.27.209.113'),
(639, 'root', 'admin', 'Main', 'admin_list', '1611198298', '115.27.209.113'),
(640, 'root', 'admin', 'Main', 'add_rule', '1611198300', '115.27.209.113'),
(641, 'root', 'admin', 'Main', 'do_add_rule', '1611198332', '115.27.209.113'),
(642, 'root', 'admin', 'Main', 'item_type_list', '1611198335', '115.27.209.113'),
(643, 'root', 'admin', 'Main', 'rule_list', '1611198335', '115.27.209.113'),
(644, 'root', 'admin', 'Main', 'order_list', '1611198335', '115.27.209.113'),
(645, 'root', 'admin', 'Main', 'item_list', '1611198335', '115.27.209.113'),
(646, 'root', 'admin', 'Main', 'add_rule', '1611198353', '115.27.209.113'),
(647, 'root', 'admin', 'Main', 'do_add_rule', '1611198367', '115.27.209.113'),
(648, 'root', 'admin', 'Main', 'add_rule', '1611198406', '115.27.209.113'),
(649, 'root', 'admin', 'Main', 'do_add_rule', '1611198421', '115.27.209.113'),
(650, 'root', 'admin', 'Main', 'rule_list', '1611198424', '115.27.209.113'),
(651, 'root', 'admin', 'Main', 'role_list', '1611198425', '115.27.209.113'),
(652, 'root', 'admin', 'Main', 'admin_list', '1611198461', '115.27.209.113'),
(653, 'root', 'admin', 'Main', 'sale_list', '1611198474', '115.27.209.113'),
(654, 'root', 'admin', 'Main', 'item_brand_list', '1611198487', '115.27.209.113'),
(655, 'root', 'admin', 'Main', 'index', '1611201112', '115.27.209.113'),
(656, 'root', 'admin', 'Main', 'welcome', '1611201112', '115.27.209.113'),
(657, 'root', 'admin', 'Main', 'sale_list', '1611201112', '115.27.209.113'),
(658, 'root', 'admin', 'Main', 'role_list', '1611201112', '115.27.209.113'),
(659, 'root', 'admin', 'Main', 'item_list', '1611201112', '115.27.209.113'),
(660, 'root', 'admin', 'Main', 'order_list', '1611201112', '115.27.209.113'),
(661, 'root', 'admin', 'Main', 'rule_list', '1611201112', '115.27.209.113');
INSERT INTO `seckill_log` (`id`, `username`, `m`, `c`, `a`, `time`, `ip`) VALUES
(662, 'root', 'admin', 'Main', 'item_type_list', '1611201112', '115.27.209.113'),
(663, 'root', 'admin', 'Main', 'item_brand_list', '1611201112', '115.27.209.113'),
(664, 'root', 'admin', 'Main', 'admin_list', '1611201112', '115.27.209.113'),
(665, 'root', 'admin', 'Main', 'add_rule', '1611201148', '115.27.209.113'),
(666, 'root', 'admin', 'Main', 'do_add_rule', '1611201169', '115.27.209.113'),
(667, 'root', 'admin', 'Main', 'add_sale', '1611201185', '115.27.209.113'),
(668, 'root', 'admin', 'Main', 'sale_list', '1611201937', '115.27.209.113'),
(669, 'root', 'admin', 'Main', 'add_sale', '1611201939', '115.27.209.113'),
(670, 'root', 'admin', 'Main', 'add_sale', '1611201964', '115.27.209.113'),
(671, 'root', 'admin', 'Main', 'add_sale', '1611202109', '115.27.209.113'),
(672, 'root', 'admin', 'Main', 'add_sale', '1611202143', '115.27.209.113'),
(673, 'root', 'admin', 'Main', 'add_sale', '1611202297', '115.27.209.113'),
(674, 'root', 'admin', 'Main', 'advert_list', '1611202719', '115.27.209.113'),
(675, 'root', 'admin', 'Main', 'add_rule', '1611202742', '115.27.209.113'),
(676, 'root', 'admin', 'Main', 'do_add_rule', '1611202765', '115.27.209.113'),
(677, 'root', 'admin', 'Main', 'rule_list', '1611202791', '115.27.209.113'),
(678, 'root', 'admin', 'Main', 'add_rule', '1611202799', '115.27.209.113'),
(679, 'root', 'admin', 'Main', 'do_add_rule', '1611202828', '115.27.209.113'),
(680, 'root', 'admin', 'Main', 'add_rule', '1611202831', '115.27.209.113'),
(681, 'root', 'admin', 'Main', 'rule_list', '1611202833', '115.27.209.113'),
(682, 'root', 'admin', 'Main', 'index', '1611202943', '115.27.209.113'),
(683, 'root', 'admin', 'Main', 'welcome', '1611202943', '115.27.209.113'),
(684, 'root', 'admin', 'Main', 'sale_list', '1611202943', '115.27.209.113'),
(685, 'root', 'admin', 'Main', 'item_list', '1611202943', '115.27.209.113'),
(686, 'root', 'admin', 'Main', 'order_list', '1611202943', '115.27.209.113'),
(687, 'root', 'admin', 'Main', 'rule_list', '1611202943', '115.27.209.113'),
(688, 'root', 'admin', 'Main', 'role_list', '1611202943', '115.27.209.113'),
(689, 'root', 'admin', 'Main', 'item_type_list', '1611202943', '115.27.209.113'),
(690, 'root', 'admin', 'Main', 'admin_list', '1611202943', '115.27.209.113'),
(691, 'root', 'admin', 'Main', 'item_brand_list', '1611202943', '115.27.209.113'),
(692, 'root', 'admin', 'Main', 'advert_list', '1611202943', '115.27.209.113'),
(693, 'root', 'admin', 'Main', 'add_sale', '1611202947', '115.27.209.113'),
(694, 'root', 'admin', 'Main', 'index', '1611203038', '115.27.209.113'),
(695, 'root', 'admin', 'Main', 'welcome', '1611203038', '115.27.209.113'),
(696, 'root', 'admin', 'Main', 'item_list', '1611203038', '115.27.209.113'),
(697, 'root', 'admin', 'Main', 'sale_list', '1611203038', '115.27.209.113'),
(698, 'root', 'admin', 'Main', 'item_type_list', '1611203038', '115.27.209.113'),
(699, 'root', 'admin', 'Main', 'order_list', '1611203038', '115.27.209.113'),
(700, 'root', 'admin', 'Main', 'role_list', '1611203038', '115.27.209.113'),
(701, 'root', 'admin', 'Main', 'rule_list', '1611203038', '115.27.209.113'),
(702, 'root', 'admin', 'Main', 'admin_list', '1611203038', '115.27.209.113'),
(703, 'root', 'admin', 'Main', 'item_brand_list', '1611203038', '115.27.209.113'),
(704, 'root', 'admin', 'Main', 'advert_list', '1611203038', '115.27.209.113'),
(705, 'root', 'admin', 'Main', 'add_sale', '1611203041', '115.27.209.113'),
(706, 'root', 'admin', 'Main', 'add_sale', '1611203076', '115.27.209.113'),
(707, 'root', 'admin', 'Main', 'sale_list', '1611203300', '115.27.209.113'),
(708, 'root', 'admin', 'Main', 'add_sale', '1611203301', '115.27.209.113'),
(709, 'root', 'admin', 'Main', 'add_sale', '1611203306', '115.27.209.113'),
(710, 'root', 'admin', 'Main', 'do_add_admin', '1611203332', '115.27.209.113'),
(711, 'root', 'admin', 'Main', 'sale_list', '1611203373', '115.27.209.113'),
(712, 'root', 'admin', 'Main', 'add_sale', '1611203373', '115.27.209.113'),
(713, 'root', 'admin', 'Main', 'do_add_sale', '1611203394', '115.27.209.113'),
(714, 'root', 'admin', 'Main', 'add_sale', '1611203455', '115.27.209.113'),
(715, 'root', 'admin', 'Main', 'do_add_sale', '1611203592', '115.27.209.113'),
(716, 'root', 'admin', 'Main', 'add_sale', '1611203722', '115.27.209.113'),
(717, 'root', 'admin', 'Main', 'do_add_sale', '1611203739', '115.27.209.113'),
(718, 'root', 'admin', 'Main', 'add_sale', '1611203821', '115.27.209.113'),
(719, 'root', 'admin', 'Main', 'do_add_sale', '1611203837', '115.27.209.113'),
(720, 'root', 'admin', 'Main', 'add_sale', '1611203840', '115.27.209.113'),
(721, 'root', 'admin', 'Main', 'sale_list', '1611203842', '115.27.209.113'),
(722, 'root', 'admin', 'Main', 'sale_list', '1611203933', '115.27.209.113'),
(723, 'root', 'admin', 'Main', 'add_sale', '1611203934', '115.27.209.113'),
(724, 'root', 'admin', 'Main', 'index', '1611204079', '115.27.209.113'),
(725, 'root', 'admin', 'Main', 'welcome', '1611204079', '115.27.209.113'),
(726, 'root', 'admin', 'Main', 'item_type_list', '1611204079', '115.27.209.113'),
(727, 'root', 'admin', 'Main', 'admin_list', '1611204080', '115.27.209.113'),
(728, 'root', 'admin', 'Main', 'rule_list', '1611204080', '115.27.209.113'),
(729, 'root', 'admin', 'Main', 'advert_list', '1611204080', '115.27.209.113'),
(730, 'root', 'admin', 'Main', 'order_list', '1611204080', '115.27.209.113'),
(731, 'root', 'admin', 'Main', 'item_list', '1611204080', '115.27.209.113'),
(732, 'root', 'admin', 'Main', 'item_brand_list', '1611204080', '115.27.209.113'),
(733, 'root', 'admin', 'Main', 'role_list', '1611204080', '115.27.209.113'),
(734, 'root', 'admin', 'Main', 'sale_list', '1611204080', '115.27.209.113'),
(735, 'root', 'admin', 'Main', 'add_sale', '1611204331', '115.27.209.113'),
(736, 'root', 'admin', 'Main', 'sale_list', '1611204333', '115.27.209.113'),
(737, 'root', 'admin', 'Main', 'add_sale', '1611204334', '115.27.209.113'),
(738, 'root', 'admin', 'Main', 'do_add_sale', '1611204364', '115.27.209.113'),
(739, 'root', 'admin', 'Main', 'sale_list', '1611204367', '115.27.209.113'),
(740, 'root', 'admin', 'Main', 'sale_list', '1611204421', '115.27.209.113'),
(741, 'root', 'admin', 'Main', 'sale_list', '1611204421', '115.27.209.113'),
(742, 'root', 'admin', 'Main', 'index', '1611204439', '115.27.209.113'),
(743, 'root', 'admin', 'Main', 'welcome', '1611204439', '115.27.209.113'),
(744, 'root', 'admin', 'Main', 'item_type_list', '1611204440', '115.27.209.113'),
(745, 'root', 'admin', 'Main', 'admin_list', '1611204440', '115.27.209.113'),
(746, 'root', 'admin', 'Main', 'rule_list', '1611204440', '115.27.209.113'),
(747, 'root', 'admin', 'Main', 'order_list', '1611204440', '115.27.209.113'),
(748, 'root', 'admin', 'Main', 'item_list', '1611204440', '115.27.209.113'),
(749, 'root', 'admin', 'Main', 'role_list', '1611204440', '115.27.209.113'),
(750, 'root', 'admin', 'Main', 'sale_list', '1611204440', '115.27.209.113'),
(751, 'root', 'admin', 'Main', 'item_brand_list', '1611204440', '115.27.209.113'),
(752, 'root', 'admin', 'Main', 'advert_list', '1611204440', '115.27.209.113'),
(753, 'root', 'admin', 'Main', 'sale_list', '1611204468', '115.27.209.113'),
(754, 'root', 'admin', 'Main', 'index', '1611204613', '115.27.209.113'),
(755, 'root', 'admin', 'Main', 'welcome', '1611204614', '115.27.209.113'),
(756, 'root', 'admin', 'Main', 'rule_list', '1611204614', '115.27.209.113'),
(757, 'root', 'admin', 'Main', 'item_type_list', '1611204614', '115.27.209.113'),
(758, 'root', 'admin', 'Main', 'order_list', '1611204614', '115.27.209.113'),
(759, 'root', 'admin', 'Main', 'role_list', '1611204614', '115.27.209.113'),
(760, 'root', 'admin', 'Main', 'item_list', '1611204614', '115.27.209.113'),
(761, 'root', 'admin', 'Main', 'sale_list', '1611204614', '115.27.209.113'),
(762, 'root', 'admin', 'Main', 'admin_list', '1611204614', '115.27.209.113'),
(763, 'root', 'admin', 'Main', 'item_brand_list', '1611204614', '115.27.209.113'),
(764, 'root', 'admin', 'Main', 'advert_list', '1611204614', '115.27.209.113'),
(765, 'root', 'admin', 'Main', 'index', '1611209876', '115.27.209.113'),
(766, 'root', 'admin', 'Main', 'welcome', '1611209876', '115.27.209.113'),
(767, 'root', 'admin', 'Main', 'admin_list', '1611209877', '115.27.209.113'),
(768, 'root', 'admin', 'Main', 'role_list', '1611209877', '115.27.209.113'),
(769, 'root', 'admin', 'Main', 'rule_list', '1611209877', '115.27.209.113'),
(770, 'root', 'admin', 'Main', 'order_list', '1611209877', '115.27.209.113'),
(771, 'root', 'admin', 'Main', 'item_type_list', '1611209877', '115.27.209.113'),
(772, 'root', 'admin', 'Main', 'item_list', '1611209877', '115.27.209.113'),
(773, 'root', 'admin', 'Main', 'sale_list', '1611209877', '115.27.209.113'),
(774, 'root', 'admin', 'Main', 'item_brand_list', '1611209877', '115.27.209.113'),
(775, 'root', 'admin', 'Main', 'advert_list', '1611209877', '115.27.209.113'),
(776, 'root', 'admin', 'Main', 'add_sale', '1611209882', '115.27.209.113'),
(777, 'root', 'admin', 'Main', 'add_sale', '1611209886', '115.27.209.113'),
(778, 'root', 'admin', 'Main', 'do_add_sale', '1611209912', '115.27.209.113'),
(779, 'root', 'admin', 'Main', 'index', '1611209990', '115.27.209.113'),
(780, 'root', 'admin', 'Main', 'welcome', '1611209990', '115.27.209.113'),
(781, 'root', 'admin', 'Main', 'rule_list', '1611209990', '115.27.209.113'),
(782, 'root', 'admin', 'Main', 'role_list', '1611209990', '115.27.209.113'),
(783, 'root', 'admin', 'Main', 'item_list', '1611209990', '115.27.209.113'),
(784, 'root', 'admin', 'Main', 'sale_list', '1611209990', '115.27.209.113'),
(785, 'root', 'admin', 'Main', 'item_type_list', '1611209990', '115.27.209.113'),
(786, 'root', 'admin', 'Main', 'order_list', '1611209990', '115.27.209.113'),
(787, 'root', 'admin', 'Main', 'item_brand_list', '1611209990', '115.27.209.113'),
(788, 'root', 'admin', 'Main', 'admin_list', '1611209990', '115.27.209.113'),
(789, 'root', 'admin', 'Main', 'advert_list', '1611209990', '115.27.209.113'),
(790, 'root', 'admin', 'Main', 'sale_list', '1611210016', '115.27.209.113'),
(791, 'root', 'admin', 'Main', 'index', '1611210037', '115.27.209.113'),
(792, 'root', 'admin', 'Main', 'welcome', '1611210037', '115.27.209.113'),
(793, 'root', 'admin', 'Main', 'role_list', '1611210037', '115.27.209.113'),
(794, 'root', 'admin', 'Main', 'item_type_list', '1611210037', '115.27.209.113'),
(795, 'root', 'admin', 'Main', 'item_list', '1611210037', '115.27.209.113'),
(796, 'root', 'admin', 'Main', 'order_list', '1611210037', '115.27.209.113'),
(797, 'root', 'admin', 'Main', 'rule_list', '1611210037', '115.27.209.113'),
(798, 'root', 'admin', 'Main', 'admin_list', '1611210037', '115.27.209.113'),
(799, 'root', 'admin', 'Main', 'sale_list', '1611210037', '115.27.209.113'),
(800, 'root', 'admin', 'Main', 'index', '1611212111', '115.27.209.113'),
(801, 'root', 'admin', 'Main', 'welcome', '1611212111', '115.27.209.113'),
(802, 'root', 'admin', 'Main', 'rule_list', '1611212112', '115.27.209.113'),
(803, 'root', 'admin', 'Main', 'order_list', '1611212112', '115.27.209.113'),
(804, 'root', 'admin', 'Main', 'item_list', '1611212112', '115.27.209.113'),
(805, 'root', 'admin', 'Main', 'admin_list', '1611212112', '115.27.209.113'),
(806, 'root', 'admin', 'Main', 'role_list', '1611212112', '115.27.209.113'),
(807, 'root', 'admin', 'Main', 'item_type_list', '1611212112', '115.27.209.113'),
(808, 'root', 'admin', 'Main', 'sale_list', '1611212112', '115.27.209.113'),
(809, 'root', 'admin', 'Main', 'index', '1611212115', '115.27.209.113'),
(810, 'root', 'admin', 'Main', 'welcome', '1611212115', '115.27.209.113'),
(811, 'root', 'admin', 'Main', 'index', '1611212116', '115.27.209.113'),
(812, 'root', 'admin', 'Main', 'advert_list', '1611213044', '115.27.209.113'),
(813, 'root', 'admin', 'Main', 'index', '1611215872', '115.27.209.113'),
(814, 'root', 'admin', 'Main', 'welcome', '1611215872', '115.27.209.113'),
(815, 'root', 'admin', 'Main', 'item_type_list', '1611215872', '115.27.209.113'),
(816, 'root', 'admin', 'Main', 'role_list', '1611215872', '115.27.209.113'),
(817, 'root', 'admin', 'Main', 'sale_list', '1611215872', '115.27.209.113'),
(818, 'root', 'admin', 'Main', 'rule_list', '1611215872', '115.27.209.113'),
(819, 'root', 'admin', 'Main', 'order_list', '1611215872', '115.27.209.113'),
(820, 'root', 'admin', 'Main', 'item_list', '1611215872', '115.27.209.113'),
(821, 'root', 'admin', 'Main', 'advert_list', '1611215872', '115.27.209.113'),
(822, 'root', 'admin', 'Main', 'admin_list', '1611215872', '115.27.209.113'),
(823, 'root', 'admin', 'Main', 'index', '1611220345', '115.27.209.113'),
(824, 'root', 'admin', 'Main', 'welcome', '1611220345', '115.27.209.113'),
(825, 'root', 'admin', 'Main', 'role_list', '1611220345', '115.27.209.113'),
(826, 'root', 'admin', 'Main', 'item_list', '1611220345', '115.27.209.113'),
(827, 'root', 'admin', 'Main', 'order_list', '1611220345', '115.27.209.113'),
(828, 'root', 'admin', 'Main', 'admin_list', '1611220345', '115.27.209.113'),
(829, 'root', 'admin', 'Main', 'rule_list', '1611220345', '115.27.209.113'),
(830, 'root', 'admin', 'Main', 'item_type_list', '1611220345', '115.27.209.113'),
(831, 'root', 'admin', 'Main', 'order_list', '1611220347', '115.27.209.113'),
(832, 'root', 'admin', 'Main', 'index', '1611230687', '223.104.38.62'),
(833, 'root', 'admin', 'Main', 'welcome', '1611230688', '223.104.38.62'),
(834, 'root', 'admin', 'Main', 'item_type_list', '1611230688', '223.104.38.62'),
(835, 'root', 'admin', 'Main', 'order_list', '1611230688', '223.104.38.62'),
(836, 'root', 'admin', 'Main', 'item_brand_list', '1611230688', '223.104.38.62'),
(837, 'root', 'admin', 'Main', 'item_list', '1611230688', '223.104.38.62'),
(838, 'root', 'admin', 'Main', 'sale_list', '1611230688', '223.104.38.62'),
(839, 'root', 'admin', 'Main', 'rule_list', '1611230695', '223.104.38.62'),
(840, 'root', 'admin', 'Main', 'add_rule', '1611230696', '223.104.38.62'),
(841, 'root', 'admin', 'Main', 'do_add_rule', '1611230717', '223.104.38.62'),
(842, 'root', 'admin', 'Main', 'log', '1611230720', '223.104.38.62'),
(843, 'root', 'admin', 'Main', 'welcome', '1611231159', '223.104.38.62'),
(844, 'root', 'admin', 'Main', 'item_type_list', '1611231159', '223.104.38.62'),
(845, 'root', 'admin', 'Main', 'item_brand_list', '1611231159', '223.104.38.62'),
(846, 'root', 'admin', 'Main', 'rule_list', '1611231159', '223.104.38.62'),
(847, 'root', 'admin', 'Main', 'log', '1611231159', '223.104.38.62'),
(848, 'root', 'admin', 'Main', 'sale_list', '1611231159', '223.104.38.62'),
(849, 'root', 'admin', 'Main', 'order_list', '1611231159', '223.104.38.62'),
(850, 'root', 'admin', 'Main', 'item_list', '1611231159', '223.104.38.62'),
(851, 'root', 'admin', 'Main', 'welcome', '1611231216', '223.104.38.62'),
(852, 'root', 'admin', 'Main', 'item_type_list', '1611231216', '223.104.38.62'),
(853, 'root', 'admin', 'Main', 'item_list', '1611231216', '223.104.38.62'),
(854, 'root', 'admin', 'Main', 'order_list', '1611231216', '223.104.38.62'),
(855, 'root', 'admin', 'Main', 'item_brand_list', '1611231216', '223.104.38.62'),
(856, 'root', 'admin', 'Main', 'log', '1611231216', '223.104.38.62'),
(857, 'root', 'admin', 'Main', 'rule_list', '1611231216', '223.104.38.62'),
(858, 'root', 'admin', 'Main', 'sale_list', '1611231216', '223.104.38.62'),
(859, 'root', 'admin', 'Main', 'welcome', '1611231263', '223.104.38.62'),
(860, 'root', 'admin', 'Main', 'welcome', '1611231289', '223.104.38.62'),
(861, 'root', 'admin', 'Main', 'welcome', '1611231307', '223.104.38.62'),
(862, 'root', 'admin', 'Main', 'welcome', '1611231530', '223.104.38.62'),
(863, 'root', 'admin', 'Main', 'admin_list', '1611231532', '223.104.38.62'),
(864, 'root', 'admin', 'Main', 'rule_list', '1611231535', '223.104.38.62'),
(865, 'root', 'admin', 'Main', 'role_list', '1611231537', '223.104.38.62'),
(866, 'root', 'admin', 'Main', 'sale_list', '1611231539', '223.104.38.62'),
(867, 'root', 'admin', 'Main', 'add_sale', '1611231543', '223.104.38.62'),
(868, 'root', 'admin', 'Main', 'item_list', '1611231594', '223.104.38.62'),
(869, 'root', 'admin', 'Main', 'add_item', '1611231595', '223.104.38.62'),
(870, 'root', 'admin', 'Main', 'do_add_item', '1611231641', '223.104.38.62'),
(871, 'root', 'admin', 'Main', 'add_item', '1611231644', '223.104.38.62'),
(872, 'root', 'admin', 'Main', 'do_add_item', '1611231669', '223.104.38.62'),
(873, 'root', 'admin', 'Main', 'add_item', '1611231672', '223.104.38.62'),
(874, 'root', 'admin', 'Main', 'do_add_item', '1611231695', '223.104.38.62'),
(875, 'root', 'admin', 'Main', 'add_item', '1611231697', '223.104.38.62'),
(876, 'root', 'admin', 'Main', 'do_add_item', '1611231715', '223.104.38.62'),
(877, 'root', 'admin', 'Main', 'order_list', '1611231720', '223.104.38.62'),
(878, 'root', 'admin', 'Main', 'add_sale', '1611231727', '223.104.38.62'),
(879, 'root', 'admin', 'Main', 'add_admin', '1611232240', '223.104.38.62'),
(880, 'root', 'admin', 'Main', 'do_add_admin', '1611232248', '223.104.38.62'),
(881, 'root', 'admin', 'Main', 'add_sale', '1611232256', '223.104.38.62'),
(882, 'root', 'admin', 'Main', 'add_sale', '1611232270', '223.104.38.62'),
(883, 'root', 'admin', 'Main', 'sale_list', '1611232278', '223.104.38.62'),
(884, 'root', 'admin', 'Main', 'sale_list', '1611232278', '223.104.38.62'),
(885, 'root', 'admin', 'Main', 'sale_list', '1611232280', '223.104.38.62'),
(886, 'root', 'admin', 'Main', 'rule_list', '1611232280', '223.104.38.62'),
(887, 'root', 'admin', 'Main', 'admin_list', '1611232280', '223.104.38.62'),
(888, 'root', 'admin', 'Main', 'welcome', '1611232280', '223.104.38.62'),
(889, 'root', 'admin', 'Main', 'role_list', '1611232280', '223.104.38.62'),
(890, 'root', 'admin', 'Main', 'item_list', '1611232280', '223.104.38.62'),
(891, 'root', 'admin', 'Main', 'order_list', '1611232280', '223.104.38.62'),
(892, 'root', 'admin', 'Main', 'order_list', '1611232287', '223.104.38.62'),
(893, 'root', 'admin', 'Main', 'sale_list', '1611232290', '223.104.38.62'),
(894, 'root', 'admin', 'Main', 'add_sale', '1611232291', '223.104.38.62'),
(895, 'root', 'admin', 'Main', 'do_add_sale', '1611232344', '223.104.38.62'),
(896, 'root', 'admin', 'Main', 'add_sale', '1611232348', '223.104.38.62'),
(897, 'root', 'admin', 'Main', 'add_sale', '1611232413', '223.104.38.62'),
(898, 'root', 'admin', 'Main', 'do_add_sale', '1611232428', '223.104.38.62'),
(899, 'root', 'admin', 'Main', 'sale_list', '1611232432', '223.104.38.62'),
(900, 'root', 'admin', 'Main', 'add_sale', '1611232438', '223.104.38.62'),
(901, 'root', 'admin', 'Main', 'do_add_sale', '1611232460', '223.104.38.62'),
(902, 'root', 'admin', 'Main', 'order_list', '1611232464', '223.104.38.62'),
(903, 'root', 'admin', 'Main', 'del_item_brand', '1611232473', '223.104.38.62'),
(904, 'root', 'admin', 'Main', 'order_list', '1611232475', '223.104.38.62'),
(905, 'root', 'admin', 'Main', 'order_list', '1611232476', '223.104.38.62'),
(906, 'root', 'admin', 'Main', 'advert_list', '1611232488', '223.104.38.62'),
(907, 'root', 'admin', 'Main', 'sale_list', '1611232489', '223.104.38.62'),
(908, 'root', 'admin', 'Main', 'sale_list', '1611232491', '223.104.38.62'),
(909, 'root', 'admin', 'Main', 'sale_list', '1611232553', '223.104.38.62'),
(910, 'root', 'admin', 'Main', 'order_list', '1611232558', '223.104.38.62'),
(911, 'root', 'admin', 'Main', 'order_list', '1611232617', '223.104.38.62'),
(912, 'root', 'admin', 'Main', 'order_list', '1611232687', '223.104.38.62'),
(913, 'root', 'admin', 'Main', 'welcome', '1611232687', '223.104.38.62'),
(914, 'root', 'admin', 'Main', 'sale_list', '1611232687', '223.104.38.62'),
(915, 'root', 'admin', 'Main', 'advert_list', '1611232687', '223.104.38.62'),
(916, 'root', 'admin', 'Main', 'welcome', '1611232750', '223.104.38.62'),
(917, 'root', 'admin', 'Main', 'order_list', '1611232750', '223.104.38.62'),
(918, 'root', 'admin', 'Main', 'sale_list', '1611232750', '223.104.38.62'),
(919, 'root', 'admin', 'Main', 'advert_list', '1611232750', '223.104.38.62'),
(920, 'root', 'admin', 'Main', 'welcome', '1611232795', '223.104.38.62'),
(921, 'root', 'admin', 'Main', 'order_list', '1611232795', '223.104.38.62'),
(922, 'root', 'admin', 'Main', 'advert_list', '1611232795', '223.104.38.62'),
(923, 'root', 'admin', 'Main', 'sale_list', '1611232795', '223.104.38.62'),
(924, 'root', 'admin', 'Main', 'order_list', '1611232830', '223.104.38.62'),
(925, 'root', 'admin', 'Main', 'welcome', '1611232830', '223.104.38.62'),
(926, 'root', 'admin', 'Main', 'advert_list', '1611232830', '223.104.38.62'),
(927, 'root', 'admin', 'Main', 'sale_list', '1611232830', '223.104.38.62'),
(928, 'root', 'admin', 'Main', 'order_list', '1611232933', '223.104.38.62'),
(929, 'root', 'admin', 'Main', 'welcome', '1611232933', '223.104.38.62'),
(930, 'root', 'admin', 'Main', 'sale_list', '1611232933', '223.104.38.62'),
(931, 'root', 'admin', 'Main', 'advert_list', '1611232933', '223.104.38.62'),
(932, 'root', 'admin', 'Main', 'role_list', '1611233140', '223.104.38.62'),
(933, 'root', 'admin', 'Main', 'welcome', '1611233230', '223.104.38.62'),
(934, 'root', 'admin', 'Main', 'order_list', '1611233230', '223.104.38.62'),
(935, 'root', 'admin', 'Main', 'role_list', '1611233230', '223.104.38.62'),
(936, 'root', 'admin', 'Main', 'advert_list', '1611233230', '223.104.38.62'),
(937, 'root', 'admin', 'Main', 'sale_list', '1611233230', '223.104.38.62'),
(938, 'root', 'admin', 'Main', 'welcome', '1611233231', '223.104.38.62'),
(939, 'root', 'admin', 'Main', 'welcome', '1611233309', '223.104.38.62'),
(940, 'root', 'admin', 'Main', 'welcome', '1611233474', '223.104.38.62'),
(941, 'root', 'admin', 'Main', 'order_list', '1611233478', '223.104.38.62'),
(942, 'root', 'admin', 'Main', 'welcome', '1611233478', '223.104.38.62'),
(943, 'root', 'admin', 'Main', 'role_list', '1611233478', '223.104.38.62'),
(944, 'root', 'admin', 'Main', 'advert_list', '1611233478', '223.104.38.62'),
(945, 'root', 'admin', 'Main', 'sale_list', '1611233478', '223.104.38.62'),
(946, 'root', 'admin', 'Main', 'welcome', '1611233480', '223.104.38.62'),
(947, 'root', 'admin', 'Main', 'welcome', '1611233489', '223.104.38.62'),
(948, 'root', 'admin', 'Main', 'order_list', '1611233489', '223.104.38.62'),
(949, 'root', 'admin', 'Main', 'advert_list', '1611233489', '223.104.38.62'),
(950, 'root', 'admin', 'Main', 'role_list', '1611233489', '223.104.38.62'),
(951, 'root', 'admin', 'Main', 'sale_list', '1611233489', '223.104.38.62'),
(952, 'root', 'admin', 'Main', 'welcome', '1611233489', '223.104.38.62'),
(953, 'root', 'admin', 'Main', 'item_type_list', '1611233493', '223.104.38.62'),
(954, 'root', 'admin', 'Main', 'item_list', '1611233494', '223.104.38.62'),
(955, 'root', 'admin', 'Main', 'item_brand_list', '1611233495', '223.104.38.62'),
(956, 'root', 'admin', 'Main', 'welcome', '1611233814', '223.104.38.62'),
(957, 'root', 'admin', 'Main', 'welcome', '1611234728', '223.104.38.62'),
(958, 'root', 'admin', 'Main', 'log', '1611234728', '223.104.38.62'),
(959, 'root', 'admin', 'Main', 'order_list', '1611234728', '223.104.38.62'),
(960, 'root', 'admin', 'Main', 'admin_list', '1611234728', '223.104.38.62'),
(961, 'root', 'admin', 'Main', 'welcome', '1611234735', '223.104.38.62'),
(962, 'root', 'admin', 'Main', 'log', '1611234735', '223.104.38.62'),
(963, 'root', 'admin', 'Main', 'order_list', '1611234735', '223.104.38.62'),
(964, 'root', 'admin', 'Main', 'admin_list', '1611234735', '223.104.38.62'),
(965, 'root', 'admin', 'Main', 'rule_list', '1611234742', '223.104.38.62'),
(966, 'root', 'admin', 'Main', 'welcome', '1611234747', '223.104.38.62'),
(967, 'root', 'admin', 'Main', 'log', '1611234747', '223.104.38.62'),
(968, 'root', 'admin', 'Main', 'rule_list', '1611234747', '223.104.38.62'),
(969, 'root', 'admin', 'Main', 'order_list', '1611234747', '223.104.38.62'),
(970, 'root', 'admin', 'Main', 'admin_list', '1611234747', '223.104.38.62'),
(971, 'root', 'admin', 'Main', 'welcome', '1611234831', '223.104.38.62'),
(972, 'root', 'admin', 'Main', 'log', '1611234831', '223.104.38.62'),
(973, 'root', 'admin', 'Main', 'admin_list', '1611234831', '223.104.38.62'),
(974, 'root', 'admin', 'Main', 'order_list', '1611234831', '223.104.38.62'),
(975, 'root', 'admin', 'Main', 'rule_list', '1611234831', '223.104.38.62'),
(976, 'root', 'admin', 'Main', 'log', '1611234834', '223.104.38.62'),
(977, 'root', 'admin', 'Main', 'log', '1611234835', '223.104.38.62'),
(978, 'root', 'admin', 'Main', 'rule_list', '1611234835', '223.104.38.62'),
(979, 'root', 'admin', 'Main', 'order_list', '1611234835', '223.104.38.62'),
(980, 'root', 'admin', 'Main', 'admin_list', '1611234835', '223.104.38.62'),
(981, 'root', 'admin', 'Main', 'welcome', '1611234835', '223.104.38.62'),
(982, 'root', 'admin', 'Main', 'log', '1611234835', '223.104.38.62'),
(983, 'root', 'admin', 'Main', 'welcome', '1611235017', '223.104.38.62'),
(984, 'root', 'admin', 'Main', 'log', '1611235017', '223.104.38.62'),
(985, 'root', 'admin', 'Main', 'rule_list', '1611235017', '223.104.38.62'),
(986, 'root', 'admin', 'Main', 'order_list', '1611235018', '223.104.38.62'),
(987, 'root', 'admin', 'Main', 'admin_list', '1611235018', '223.104.38.62'),
(988, 'root', 'admin', 'Main', 'log', '1611235018', '223.104.38.62'),
(989, 'root', 'admin', 'Main', 'log', '1611235021', '223.104.38.62'),
(990, 'root', 'admin', 'Main', 'admin_list', '1611235021', '223.104.38.62'),
(991, 'root', 'admin', 'Main', 'order_list', '1611235021', '223.104.38.62'),
(992, 'root', 'admin', 'Main', 'rule_list', '1611235021', '223.104.38.62'),
(993, 'root', 'admin', 'Main', 'welcome', '1611235021', '223.104.38.62'),
(994, 'root', 'admin', 'Main', 'log', '1611235021', '223.104.38.62'),
(995, 'root', 'admin', 'Main', 'sale_list', '1611235055', '223.104.38.62'),
(996, 'root', 'admin', 'Main', 'role_list', '1611235062', '223.104.38.62'),
(997, 'admin', 'admin', 'Main', 'welcome', '1611235660', '223.104.38.62'),
(998, 'admin', 'admin', 'Main', 'welcome', '1611235662', '223.104.38.62'),
(999, 'admin', 'admin', 'Main', 'item_list', '1611235834', '223.104.38.62'),
(1000, 'admin', 'admin', 'Main', 'item_type_list', '1611235933', '223.104.38.62'),
(1001, 'admin', 'admin', 'Main', 'add_item', '1611235936', '223.104.38.62'),
(1002, 'admin', 'admin', 'Main', 'add_item_type', '1611236013', '223.104.38.62'),
(1003, 'admin', 'admin', 'Main', 'item_brand_list', '1611236020', '223.104.38.62'),
(1004, 'admin', 'admin', 'Main', 'add_item_brand', '1611236030', '223.104.38.62'),
(1005, 'admin', 'admin', 'Main', 'order_list', '1611236043', '223.104.38.62'),
(1006, 'admin', 'admin', 'Main', 'sale_list', '1611236060', '223.104.38.62'),
(1007, 'admin', 'admin', 'Main', 'add_sale', '1611236070', '223.104.38.62'),
(1008, 'admin', 'admin', 'Main', 'advert_list', '1611236104', '223.104.38.62'),
(1009, 'admin', 'admin', 'Main', 'add_advert', '1611236113', '223.104.38.62'),
(1010, 'admin', 'admin', 'Main', 'admin_list', '1611236129', '223.104.38.62'),
(1011, 'admin', 'admin', 'Main', 'add_admin', '1611236138', '223.104.38.62'),
(1012, 'admin', 'admin', 'Main', 'role_list', '1611236153', '223.104.38.62'),
(1013, 'admin', 'admin', 'Main', 'rule_list', '1611236167', '223.104.38.62'),
(1014, 'admin', 'admin', 'Main', 'add_role', '1611236168', '223.104.38.62'),
(1015, 'admin', 'admin', 'Main', 'add_rule', '1611236194', '223.104.38.62'),
(1016, 'admin', 'admin', 'Main', 'log', '1611236204', '223.104.38.62'),
(1017, 'admin', 'admin', 'Main', 'item_list', '1611236682', '223.104.38.62'),
(1018, 'admin', 'admin', 'Main', 'welcome', '1611236682', '223.104.38.62'),
(1019, 'admin', 'admin', 'Main', 'item_brand_list', '1611236682', '223.104.38.62'),
(1020, 'admin', 'admin', 'Main', 'item_type_list', '1611236682', '223.104.38.62'),
(1021, 'admin', 'admin', 'Main', 'order_list', '1611236682', '223.104.38.62'),
(1022, 'admin', 'admin', 'Main', 'rule_list', '1611236682', '223.104.38.62'),
(1023, 'admin', 'admin', 'Main', 'advert_list', '1611236682', '223.104.38.62'),
(1024, 'admin', 'admin', 'Main', 'role_list', '1611236682', '223.104.38.62'),
(1025, 'admin', 'admin', 'Main', 'sale_list', '1611236682', '223.104.38.62'),
(1026, 'admin', 'admin', 'Main', 'admin_list', '1611236682', '223.104.38.62'),
(1027, 'admin', 'admin', 'Main', 'log', '1611236683', '223.104.38.62'),
(1028, 'admin', 'admin', 'Main', 'welcome', '1611236683', '223.104.38.62'),
(1029, 'admin', 'admin', 'Main', 'welcome', '1611236687', '223.104.38.62'),
(1030, 'admin', 'admin', 'Main', 'item_brand_list', '1611236688', '223.104.38.62'),
(1031, 'admin', 'admin', 'Main', 'order_list', '1611236688', '223.104.38.62'),
(1032, 'admin', 'admin', 'Main', 'sale_list', '1611236688', '223.104.38.62'),
(1033, 'admin', 'admin', 'Main', 'item_type_list', '1611236688', '223.104.38.62'),
(1034, 'admin', 'admin', 'Main', 'item_list', '1611236688', '223.104.38.62'),
(1035, 'admin', 'admin', 'Main', 'advert_list', '1611236688', '223.104.38.62'),
(1036, 'admin', 'admin', 'Main', 'welcome', '1611236688', '223.104.38.62'),
(1037, 'admin', 'admin', 'Main', 'admin_list', '1611236688', '223.104.38.62'),
(1038, 'admin', 'admin', 'Main', 'role_list', '1611236688', '223.104.38.62'),
(1039, 'admin', 'admin', 'Main', 'log', '1611236688', '223.104.38.62'),
(1040, 'admin', 'admin', 'Main', 'rule_list', '1611236688', '223.104.38.62'),
(1041, 'admin', 'admin', 'Main', 'welcome', '1611236981', '223.104.38.62'),
(1042, 'admin', 'admin', 'Main', 'item_list', '1611236981', '223.104.38.62'),
(1043, 'admin', 'admin', 'Main', 'order_list', '1611236981', '223.104.38.62'),
(1044, 'admin', 'admin', 'Main', 'sale_list', '1611236981', '223.104.38.62'),
(1045, 'admin', 'admin', 'Main', 'item_brand_list', '1611236981', '223.104.38.62'),
(1046, 'admin', 'admin', 'Main', 'item_type_list', '1611236981', '223.104.38.62'),
(1047, 'admin', 'admin', 'Main', 'admin_list', '1611236981', '223.104.38.62'),
(1048, 'admin', 'admin', 'Main', 'advert_list', '1611236981', '223.104.38.62'),
(1049, 'admin', 'admin', 'Main', 'welcome', '1611236982', '223.104.38.62'),
(1050, 'admin', 'admin', 'Main', 'log', '1611236982', '223.104.38.62'),
(1051, 'admin', 'admin', 'Main', 'role_list', '1611236982', '223.104.38.62'),
(1052, 'admin', 'admin', 'Main', 'rule_list', '1611236982', '223.104.38.62'),
(1053, 'admin', 'admin', 'Main', 'item_list', '1611237024', '223.104.38.62'),
(1054, 'admin', 'admin', 'Main', 'welcome', '1611237024', '223.104.38.62'),
(1055, 'admin', 'admin', 'Main', 'order_list', '1611237024', '223.104.38.62'),
(1056, 'admin', 'admin', 'Main', 'item_brand_list', '1611237024', '223.104.38.62'),
(1057, 'admin', 'admin', 'Main', 'item_type_list', '1611237024', '223.104.38.62'),
(1058, 'admin', 'admin', 'Main', 'advert_list', '1611237024', '223.104.38.62'),
(1059, 'admin', 'admin', 'Main', 'admin_list', '1611237024', '223.104.38.62'),
(1060, 'admin', 'admin', 'Main', 'sale_list', '1611237024', '223.104.38.62'),
(1061, 'admin', 'admin', 'Main', 'rule_list', '1611237024', '223.104.38.62'),
(1062, 'admin', 'admin', 'Main', 'log', '1611237024', '223.104.38.62'),
(1063, 'admin', 'admin', 'Main', 'role_list', '1611237024', '223.104.38.62'),
(1064, 'admin', 'admin', 'Main', 'welcome', '1611237029', '223.104.38.62'),
(1065, 'admin', 'admin', 'Main', 'advert_list', '1611237029', '223.104.38.62'),
(1066, 'admin', 'admin', 'Main', 'sale_list', '1611237029', '223.104.38.62'),
(1067, 'admin', 'admin', 'Main', 'order_list', '1611237029', '223.104.38.62'),
(1068, 'admin', 'admin', 'Main', 'item_brand_list', '1611237029', '223.104.38.62'),
(1069, 'admin', 'admin', 'Main', 'item_type_list', '1611237029', '223.104.38.62'),
(1070, 'admin', 'admin', 'Main', 'item_list', '1611237029', '223.104.38.62'),
(1071, 'admin', 'admin', 'Main', 'admin_list', '1611237029', '223.104.38.62'),
(1072, 'admin', 'admin', 'Main', 'rule_list', '1611237029', '223.104.38.62'),
(1073, 'admin', 'admin', 'Main', 'role_list', '1611237029', '223.104.38.62'),
(1074, 'admin', 'admin', 'Main', 'log', '1611237029', '223.104.38.62'),
(1075, 'admin', 'admin', 'Main', 'welcome', '1611237030', '223.104.38.62'),
(1076, 'admin', 'admin', 'Main', 'sale_list', '1611237030', '223.104.38.62'),
(1077, 'admin', 'admin', 'Main', 'item_brand_list', '1611237030', '223.104.38.62'),
(1078, 'admin', 'admin', 'Main', 'item_type_list', '1611237030', '223.104.38.62'),
(1079, 'admin', 'admin', 'Main', 'order_list', '1611237030', '223.104.38.62'),
(1080, 'admin', 'admin', 'Main', 'item_list', '1611237030', '223.104.38.62'),
(1081, 'admin', 'admin', 'Main', 'advert_list', '1611237030', '223.104.38.62'),
(1082, 'admin', 'admin', 'Main', 'role_list', '1611237030', '223.104.38.62'),
(1083, 'admin', 'admin', 'Main', 'admin_list', '1611237030', '223.104.38.62'),
(1084, 'admin', 'admin', 'Main', 'rule_list', '1611237030', '223.104.38.62'),
(1085, 'admin', 'admin', 'Main', 'log', '1611237030', '223.104.38.62'),
(1086, 'admin', 'admin', 'Main', 'welcome', '1611237030', '223.104.38.62'),
(1087, 'root', 'admin', 'Main', 'welcome', '1611238798', '223.104.38.62'),
(1088, 'root', 'admin', 'Main', 'advert_list', '1611238798', '223.104.38.62'),
(1089, 'root', 'admin', 'Main', 'item_type_list', '1611238798', '223.104.38.62'),
(1090, 'root', 'admin', 'Main', 'role_list', '1611238798', '223.104.38.62'),
(1091, 'root', 'admin', 'Main', 'sale_list', '1611238798', '223.104.38.62'),
(1092, 'root', 'admin', 'Main', 'admin_list', '1611238798', '223.104.38.62'),
(1093, 'root', 'admin', 'Main', 'item_list', '1611238798', '223.104.38.62'),
(1094, 'root', 'admin', 'Main', 'rule_list', '1611238798', '223.104.38.62'),
(1095, 'root', 'admin', 'Main', 'order_list', '1611238798', '223.104.38.62'),
(1096, 'root', 'admin', 'Main', 'welcome', '1611238806', '223.104.38.62'),
(1097, 'root', 'admin', 'Main', 'rule_list', '1611238806', '223.104.38.62'),
(1098, 'root', 'admin', 'Main', 'item_type_list', '1611238806', '223.104.38.62'),
(1099, 'root', 'admin', 'Main', 'sale_list', '1611238806', '223.104.38.62'),
(1100, 'root', 'admin', 'Main', 'item_list', '1611238806', '223.104.38.62'),
(1101, 'root', 'admin', 'Main', 'order_list', '1611238806', '223.104.38.62'),
(1102, 'root', 'admin', 'Main', 'role_list', '1611238806', '223.104.38.62'),
(1103, 'root', 'admin', 'Main', 'admin_list', '1611238806', '223.104.38.62'),
(1104, 'root', 'admin', 'Main', 'advert_list', '1611238807', '223.104.38.62'),
(1105, 'shangpin', 'admin', 'Main', 'welcome', '1611239099', '223.104.38.62'),
(1106, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239099', '223.104.38.62'),
(1107, 'shangpin', 'admin', 'Main', 'item_list', '1611239099', '223.104.38.62'),
(1108, 'shangpin', 'admin', 'Main', 'welcome', '1611239102', '223.104.38.62'),
(1109, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239102', '223.104.38.62'),
(1110, 'shangpin', 'admin', 'Main', 'welcome', '1611239102', '223.104.38.62'),
(1111, 'shangpin', 'admin', 'Main', 'item_list', '1611239102', '223.104.38.62'),
(1112, 'shangpin', 'admin', 'Main', 'item_list', '1611239103', '223.104.38.62'),
(1113, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239103', '223.104.38.62'),
(1114, 'shangpin', 'admin', 'Main', 'welcome', '1611239103', '223.104.38.62'),
(1115, 'shangpin', 'admin', 'Main', 'welcome', '1611239103', '223.104.38.62'),
(1116, 'shangpin', 'admin', 'Main', 'welcome', '1611239103', '223.104.38.62'),
(1117, 'shangpin', 'admin', 'Main', 'item_list', '1611239103', '223.104.38.62'),
(1118, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239103', '223.104.38.62'),
(1119, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239103', '223.104.38.62'),
(1120, 'shangpin', 'admin', 'Main', 'item_list', '1611239103', '223.104.38.62'),
(1121, 'shangpin', 'admin', 'Main', 'item_list', '1611239103', '223.104.38.62'),
(1122, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239103', '223.104.38.62'),
(1123, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239104', '223.104.38.62'),
(1124, 'shangpin', 'admin', 'Main', 'item_list', '1611239104', '223.104.38.62'),
(1125, 'shangpin', 'admin', 'Main', 'welcome', '1611239104', '223.104.38.62'),
(1126, 'shangpin', 'admin', 'Main', 'welcome', '1611239106', '223.104.38.62'),
(1127, 'shangpin', 'admin', 'Main', 'welcome', '1611239106', '223.104.38.62'),
(1128, 'shangpin', 'admin', 'Main', 'welcome', '1611239106', '223.104.38.62'),
(1129, 'shangpin', 'admin', 'Main', 'welcome', '1611239106', '223.104.38.62'),
(1130, 'shangpin', 'admin', 'Main', 'welcome', '1611239106', '223.104.38.62'),
(1131, 'shangpin', 'admin', 'Main', 'welcome', '1611239106', '223.104.38.62'),
(1132, 'shangpin', 'admin', 'Main', 'welcome', '1611239106', '223.104.38.62'),
(1133, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239106', '223.104.38.62'),
(1134, 'shangpin', 'admin', 'Main', 'item_list', '1611239106', '223.104.38.62'),
(1135, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239106', '223.104.38.62'),
(1136, 'shangpin', 'admin', 'Main', 'item_list', '1611239106', '223.104.38.62'),
(1137, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239107', '223.104.38.62'),
(1138, 'shangpin', 'admin', 'Main', 'item_list', '1611239107', '223.104.38.62'),
(1139, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239107', '223.104.38.62'),
(1140, 'shangpin', 'admin', 'Main', 'item_list', '1611239107', '223.104.38.62'),
(1141, 'shangpin', 'admin', 'Main', 'item_list', '1611239107', '223.104.38.62'),
(1142, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239107', '223.104.38.62'),
(1143, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239108', '223.104.38.62'),
(1144, 'shangpin', 'admin', 'Main', 'item_list', '1611239108', '223.104.38.62'),
(1145, 'shangpin', 'admin', 'Main', 'item_list', '1611239108', '223.104.38.62'),
(1146, 'shangpin', 'admin', 'Main', 'item_type_list', '1611239108', '223.104.38.62'),
(1147, 'shangpin', 'admin', 'Main', 'welcome', '1611239109', '223.104.38.62'),
(1148, 'shangpin', 'admin', 'Main', 'welcome', '1611239109', '223.104.38.62'),
(1149, 'shangpin', 'admin', 'Main', 'welcome', '1611239109', '223.104.38.62'),
(1150, 'shangpin', 'admin', 'Main', 'welcome', '1611239109', '223.104.38.62'),
(1151, 'shangpin', 'admin', 'Main', 'welcome', '1611239109', '223.104.38.62'),
(1152, 'shangpin', 'admin', 'Main', 'welcome', '1611239109', '223.104.38.62'),
(1153, 'shangpin', 'admin', 'Main', 'welcome', '1611239110', '223.104.38.62'),
(1154, 'shangpin', 'admin', 'Main', 'welcome', '1611239110', '223.104.38.62'),
(1155, 'shangpin', 'admin', 'Main', 'welcome', '1611239110', '223.104.38.62'),
(1156, 'shangpin', 'admin', 'Main', 'welcome', '1611239110', '223.104.38.62'),
(1157, 'shangpin', 'admin', 'Main', 'welcome', '1611239110', '223.104.38.62'),
(1158, 'shangpin', 'admin', 'Main', 'welcome', '1611239110', '223.104.38.62'),
(1159, 'shangpin', 'admin', 'Main', 'welcome', '1611239118', '223.104.38.62');

-- --------------------------------------------------------

--
-- 表的结构 `seckill_order`
--

CREATE TABLE `seckill_order` (
  `id` int(3) NOT NULL,
  `serial_number` varchar(255) NOT NULL COMMENT '订单编号',
  `user_id` int(3) NOT NULL COMMENT '顾客id',
  `item` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '巧克力',
  `price` float NOT NULL COMMENT '商品单价',
  `amount` int(3) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `freight` float NOT NULL DEFAULT '0' COMMENT '运费',
  `total_price` float NOT NULL COMMENT '总价',
  `submit_time` varchar(255) NOT NULL COMMENT '订单提交时间',
  `pay_time` varchar(255) NOT NULL DEFAULT '0' COMMENT '订单支付时间',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '订单状态'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_order`
--

INSERT INTO `seckill_order` (`id`, `serial_number`, `user_id`, `item`, `price`, `amount`, `freight`, `total_price`, `submit_time`, `pay_time`, `status`) VALUES
(1, 'SP1000001', 1, '巧克力', 10, 10, 0, 100, '0', '0', 0),
(17, 'SP1c8b99171505f5f21f6c08', 1, '巧克力', 10, 1, 0, 10, '1611232065', '0', 0),
(18, 'SP1ef4c637ada65c672dd3a4', 1, '小熊饼干', 10, 1, 0, 10, '1611233817', '0', 0),
(19, 'SP55dbcaf1bd33a2ea160507', 1, '巧克力', 10, 1, 0, 10, '1611233856', '0', 0),
(20, 'SPcfd20f63526539fb789f9e', 2, '小熊饼干', 10, 1, 0, 10, '1611237776', '0', 0),
(21, 'SP6bf0aabf3fb393cf4e7a0d', 2, '爱心硬糖', 20, 1, 0, 20, '1611239527', '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `seckill_rule`
--

CREATE TABLE `seckill_rule` (
  `id` int(3) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `parentid` int(2) NOT NULL DEFAULT '0',
  `m` varchar(255) NOT NULL DEFAULT 'admin',
  `c` varchar(255) DEFAULT 'main',
  `a` varchar(255) NOT NULL,
  `updatetime` varchar(255) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_rule`
--

INSERT INTO `seckill_rule` (`id`, `name`, `parentid`, `m`, `c`, `a`, `updatetime`, `status`) VALUES
(1, '首页', 0, 'admin', 'main', 'index', '0', 1),
(2, '商品列表', 0, 'admin', 'main', 'item_list', '0', 1),
(3, '商品分类', 0, 'admin', 'main', 'item_type_list', '0', 1),
(4, '品牌管理', 0, 'admin', 'main', 'item_brand_list', '0', 1),
(5, '订单列表', 0, 'admin', 'main', 'order_list', '0', 1),
(6, '订单设置', 0, 'admin', 'main', 'order_set', '0', 1),
(7, '秒杀活动列表', 0, 'admin', 'main', 'sale_list', '0', 1),
(8, '广告列表', 0, 'admin', 'main', 'advert_list', '0', 1),
(9, '广告位置管理', 0, 'admin', 'main', 'advert_place_list', '0', 1),
(10, '管理员列表', 0, 'admin', 'main', 'admin_list', '0', 1),
(11, '角色管理', 0, 'admin', 'main', 'role_list', '0', 1),
(12, '权限管理', 0, 'admin', 'main', 'rule_list', '0', 1),
(13, '统计', 0, 'admin', 'main', 'welcome', '0', 1),
(14, '添加角色', 0, 'admin', 'main', 'add_role', '0', 1),
(15, '添加管理员', 0, 'admin', 'main', 'add_admin', '0', 1),
(16, '添加广告', 0, 'admin', 'main', 'add_advert', '0', 1),
(17, '添加品牌', 0, 'admin', 'main', 'add_item_brand', '0', 1),
(18, '添加商品', 0, 'admin', 'main', 'add_item', '0', 1),
(19, '添加商品类型', 0, 'admin', 'main', 'add_item_type', '0', 1),
(20, '添加规则', 0, 'admin', 'main', 'add_rule', '0', 1),
(21, '执行添加广告', 0, 'admin', 'main', 'do_add_advert', '0', 1),
(22, '删除广告', 0, 'admin', 'main', 'del_advert', '0', 1),
(23, '删除品牌', 0, 'admin', 'main', 'del_item_brand', '0', 1),
(24, '执行添加商品种类', 0, 'admin', 'main', 'do_add_item_type', '0', 1),
(25, '执行添加商品', 0, 'admin', 'main', 'do_add_item', '0', 1),
(26, '执行添加品牌', 0, 'admin', 'main', 'do_add_item_brand', '0', 1),
(27, '执行添加角色', 0, 'admin', 'main', 'do_add_role', '0', 1),
(28, '执行添加管理员', 0, 'admin', 'main', 'do_add_admin', '0', 1),
(29, '执行添加规则', 0, 'admin', 'main', 'do_add_rule', '0', 1),
(30, '删除角色', 0, 'admin', 'main', 'del_role', '0', 1),
(31, '删除管理员', 0, 'admin', 'main', 'del_admin', '0', 1),
(32, '删除商品', 0, 'admin', 'main', 'del_item', '0', 1),
(34, '删除规则', 0, 'admin', 'main', 'del_rule', '0', 1),
(35, '删除商品类型', 0, 'admin', 'main', 'del_item_type', '0', 1),
(36, '删除秒杀活动', 0, 'admin', 'main', 'del_sale', '1611198421', 1),
(37, '添加秒杀活动', 0, 'admin', 'main', 'add_sale', '1611201170', 1),
(39, '执行添加秒杀活动', 0, 'admin', 'main', 'do_add_sale', '1611202828', 1),
(40, '日志', 0, 'admin', 'main', 'log', '1611230717', 1);

-- --------------------------------------------------------

--
-- 表的结构 `seckill_sale`
--

CREATE TABLE `seckill_sale` (
  `id` int(3) NOT NULL,
  `item_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `old_price` float NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `amount` int(3) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_sale`
--

INSERT INTO `seckill_sale` (`id`, `item_id`, `price`, `old_price`, `image`, `start_time`, `end_time`, `amount`, `status`) VALUES
(3, 5, 10, 20, '20210118/c3bc7320be85e2a94c4fa2a603ba25fe.jpg', '1611227800', '1611244800', 95, 1),
(4, 10, 50, 100, '20210121/07135c1eeef59cbea999f22e2b9277c8.jpg', '1611331200', '1611417600', 100, 1),
(5, 9, 50, 100, '20210121/63056278297f7a0284b0302ee69ff295.jpg', '1611331200', '1611417600', 100, 1),
(6, 8, 50, 100, '20210121/c592dde777fd30a687cdbd32da23eb0f.jpg', '1611763200', '1612022400', 100, 1);

-- --------------------------------------------------------

--
-- 表的结构 `seckill_user`
--

CREATE TABLE `seckill_user` (
  `id` int(3) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `money` float NOT NULL DEFAULT '1000',
  `token` varchar(255) NOT NULL DEFAULT '0',
  `expire_time` varchar(255) NOT NULL DEFAULT '0',
  `login_time` varchar(255) NOT NULL DEFAULT '0',
  `login_ip` varchar(255) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `seckill_user`
--

INSERT INTO `seckill_user` (`id`, `username`, `password`, `phone`, `money`, `token`, `expire_time`, `login_time`, `login_ip`) VALUES
(1, 'test', 'e10adc3949ba59abbe56e057f20f883e', '11111111111', 1000, 'c2VjcmV0MTE2MTEyMzUyMjU=', '1611238825', '1611235225', '223.104.38.62'),
(2, 'test2', 'e10adc3949ba59abbe56e057f20f883e', '11111111112', 1000, 'c2VjcmV0MjE2MTEyMzkzMjE=', '1611242921', '1611239321', '223.104.38.62');

--
-- 转储表的索引
--

--
-- 表的索引 `seckill_admin`
--
ALTER TABLE `seckill_admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_admin_group`
--
ALTER TABLE `seckill_admin_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_advert`
--
ALTER TABLE `seckill_advert`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_advert_place`
--
ALTER TABLE `seckill_advert_place`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_item`
--
ALTER TABLE `seckill_item`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_item_brand`
--
ALTER TABLE `seckill_item_brand`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_item_type`
--
ALTER TABLE `seckill_item_type`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_log`
--
ALTER TABLE `seckill_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_order`
--
ALTER TABLE `seckill_order`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_rule`
--
ALTER TABLE `seckill_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 表的索引 `seckill_sale`
--
ALTER TABLE `seckill_sale`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `seckill_user`
--
ALTER TABLE `seckill_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `seckill_admin`
--
ALTER TABLE `seckill_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `seckill_admin_group`
--
ALTER TABLE `seckill_admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `seckill_advert`
--
ALTER TABLE `seckill_advert`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `seckill_advert_place`
--
ALTER TABLE `seckill_advert_place`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `seckill_item`
--
ALTER TABLE `seckill_item`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT '商品货号', AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `seckill_item_brand`
--
ALTER TABLE `seckill_item_brand`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `seckill_item_type`
--
ALTER TABLE `seckill_item_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `seckill_log`
--
ALTER TABLE `seckill_log`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1160;

--
-- 使用表AUTO_INCREMENT `seckill_order`
--
ALTER TABLE `seckill_order`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `seckill_rule`
--
ALTER TABLE `seckill_rule`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `seckill_sale`
--
ALTER TABLE `seckill_sale`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `seckill_user`
--
ALTER TABLE `seckill_user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
