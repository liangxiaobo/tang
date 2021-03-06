-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014-01-11 03:26:45
-- 服务器版本: 5.5.32-0ubuntu7
-- PHP 版本: 5.5.3-1ubuntu2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `tang`
--
CREATE DATABASE IF NOT EXISTS `tang` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tang`;

-- --------------------------------------------------------

--
-- 表的结构 `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '0代表未定义。正式商圈从1开始。',
  `name` varchar(64) NOT NULL DEFAULT '',
  `county_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `area`
--

INSERT INTO `area` (`id`, `name`, `county_id`) VALUES
(0, '其他', -1),
(1, '上海市场', 1),
(2, '广州市场', 1),
(3, '新都汇', 2),
(4, '万达广场', 1),
(5, '谷水', 1),
(7, '西苑公园', 1);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `create_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `content`, `restaurant_id`, `hidden`, `create_datetime`) VALUES
(31, 5, '配的饼最近质量下降了，原来很酥脆，现在很软，估计供不应求。', 1, 0, '2013-09-23 14:30:47'),
(32, 4, '敖德萨发顺丰\r\n', 4, 1, '2013-10-14 10:03:32'),
(33, 6, '之前没有喝过丸子汤，前段时间去喝了一次，感觉很好喝，排队人超长。注：只晚上卖丸子汤。', 10, 0, '2013-10-15 17:50:44'),
(34, 6, '我现在基本喝牛肉汤都到这家，汤喝起来清淡，料味没那么重。这家汤馆开了应该有10年吧。', 16, 0, '2013-10-15 23:17:44'),
(35, 6, '驴肉汤我平时喝的少，但是匡家的汤喝起来比怀府的要油点。这里的油旋馍吃起来不赖。', 15, 0, '2013-10-15 23:20:59'),
(36, 4, '这家汤连续来过几次，豆腐非常嫩，配上每天自己炸的面丸子，属于涧西吃不着的风味。\r\n另外，紧挨着那家的胡辣汤也不错，4块钱一碗，牛肉的，配上2块钱一张的油饼，或水煎包，都不错。', 14, 0, '2013-10-15 23:31:33'),
(37, 4, '七一路大张超时西门外，偶尔喝一个，没啥特色，喜欢豆腐汤的可以当做日常饮食。', 9, 0, '2013-10-15 23:34:06'),
(38, 4, '今天早上又去喝了一次，有几个发现：\n1，原来旁边那家开了好几年的白沙羊肉汤关门了。囧。不过旁边的匡家驴肉汤还在。\n2，选用的肉有一些筋头巴脑，这跟龙鳞路的白沙比起来差远了。\n3，下作料的时候注意了一下，放了一勺味精，太不健康了。\n4，门口的饼质量持续走低，已经变成普通烧饼了。', 1, 0, '2013-10-24 17:27:54'),
(39, 6, '今天早上去喝汤，发现平时舀汤的师傅在喝汤，我顿时感觉这家汤绝对能放心喝。', 16, 0, '2013-10-24 21:17:36'),
(40, 4, '今天早上又来了一次，不能忍了，总结一下最近不好的地方：\r\n1，汤里面味精太多，喝完渴得很。\r\n2，八点半去已经吃不到现做的油酥烧饼了，都放在泡沫盒子里，潮潮的，软软的，一点口感都没有。（但还是比烧饼好吃）', 14, 0, '2013-10-25 10:27:37'),
(41, 7, '这是我在洛阳喝的最好喝的丸子汤了，每次去都没有位置，都是搬着小凳子坐到外面喝的，就那都可爽。', 10, 0, '2013-10-29 13:15:50'),
(42, 4, '丸子——大、焦脆！\r\n就是人太多，都要挤到门口街道上挨着坐，夏天喝汤不出三层汉不算完。\r\n一开始去只喝三块的，后来喝过五块和十块的，并不感觉单调，剔骨肉和丸子配合的相当好。', 10, 0, '2013-10-30 13:24:44'),
(43, 4, '老店了，货真价实，但是要提前说好少放点调料。丸子和肉还是不错的。', 3, 0, '2013-11-04 17:32:26'),
(44, 4, '在洛阳三个百万羊汤都喝过，这次在万达店，感觉环境、品质都最差。\r\n首先是肉，羊肉汤最低￥20，但汤里肉少了，肉质也感觉不好，杂。\r\n其次是饼，虽然鼓着，但是面面的，跟丽景门店的酥脆饼差远了，想吃软饼我就要饼丝了。\r\n然后是汤，咸。首先得承认我的口味偏淡，我说的咸指的是相对路边羊肉汤馆。\r\n最后是店，店面太小，局促，一个小长方形，就是个米皮店的空间，上什么百碗羊汤啊。', 22, 0, '2013-11-28 09:11:43'),
(45, 6, '这家牛肉汤馆从我上小学就有了，应该开了最少20年了。每天早上喝的人很多。', 18, 0, '2013-12-13 08:38:26'),
(46, 6, '这家汤馆去过3次，都是中午去的，油酥饼吃着不错，丸子不是现炸的，要是早上去丸子估计更好吃。我每次喝不放味精，感觉喝起来不错。', 14, 0, '2013-12-13 08:43:32'),
(47, 6, '我喝过几家小碗牛肉汤，感觉这家汤最好喝。我每次都是要的剔骨肉，吃起来很棒！', 26, 0, '2013-12-13 09:01:40'),
(48, 6, '这家汤馆开的有十几年了，每天喝的人很多。汤喝起来感觉比匡家的清淡点，挺好。', 27, 0, '2013-12-13 09:22:13'),
(49, 4, '1，肉：一般吃不出来特别硬咬不动的肉块。\r\n2，汤：喜欢清汤的一定提前说，否则汤上漂层油。\r\n3，料：每碗一勺粉，至少不是一勺味精，这点比很多汤馆都强。', 28, 0, '2013-12-14 09:04:03'),
(50, 4, '老板把饼丝和烧饼码的好好的，每次都很方便。\r\n肉片选的不错，口感很好。\r\n我喝羊肉汤次数多，想换换口味，都来这家。门口就是公交车站，换车很方便。', 2, 0, '2013-12-14 10:23:36'),
(51, 6, '这家店好像是白沙的总店。\r\n开的时间很久了，估计有个18年上下。\r\n比其它白沙店的汤喝起来就是美。', 28, 0, '2013-12-14 10:29:59'),
(52, 4, '我对舀汤最后来一勺味精的汤馆都不以为然，这家汤亦然。虽然在他家喝了很多年，味道也可以，但总觉得没操守。', 33, 0, '2013-12-21 08:59:40'),
(53, 6, '今天路过，发现原来的汤馆换名字了，这家是昨天开业的。以前是家小碗牛肉汤。', 34, 0, '2013-12-21 13:57:04'),
(54, 4, 'cc', 28, 1, '2013-12-25 13:45:00'),
(55, 4, 'ccc', 28, 1, '2013-12-25 13:45:05'),
(56, 4, 'cccc', 28, 1, '2013-12-25 13:45:09'),
(57, 4, 'c', 28, 1, '2013-12-25 13:48:43'),
(58, 4, 'cc', 28, 1, '2013-12-25 13:48:46'),
(59, 4, 'ccc', 28, 1, '2013-12-25 13:48:49'),
(60, 6, '11', 24, 1, '2013-12-25 13:53:50'),
(61, 6, '22', 24, 1, '2013-12-25 13:53:52'),
(62, 6, '33', 24, 1, '2013-12-25 13:53:56'),
(63, 4, 'cc', 28, 1, '2013-12-25 14:06:47'),
(64, 4, 'ccc', 28, 1, '2013-12-25 14:06:51'),
(65, 4, 'cccc', 28, 1, '2013-12-25 14:06:56'),
(66, 6, '11', 24, 1, '2013-12-25 14:30:11'),
(67, 4, 'c', 28, 1, '2013-12-25 15:27:34'),
(68, 4, 'cc', 28, 1, '2013-12-25 15:27:38'),
(69, 4, 'ccc', 28, 1, '2013-12-25 15:27:45'),
(70, 4, 'cccc', 28, 1, '2013-12-25 15:38:42'),
(71, 4, 'c', 28, 1, '2013-12-25 15:40:10'),
(72, 6, '1', 33, 1, '2013-12-25 17:30:36'),
(73, 4, '今天早上去喝了，结合两个月前喝的那次，谈谈总体感受：\r\n1，收汤票、称重、抓驴血的是同一只手，特别是从小盆子抓驴血，湿乎乎的，既不卫生看着也难受。\r\n2，驴肉不错，汤也不错，底料带一点豆腐丝，很独特。', 19, 0, '2013-12-25 23:52:39'),
(74, 4, '喝过好几次，还行，店面中不溜，坐着还挺舒服。', 7, 0, '2013-12-25 23:53:48'),
(75, 4, 'c', 7, 1, '2013-12-26 21:38:25'),
(76, 6, '1', 28, 1, '2013-12-27 17:50:27'),
(77, 7, '昨天晚上去喝才知道又涨价了，还分大小份，大份25、小份20，有点贵了，都成奢侈品了！', 7, 0, '2014-01-02 14:48:23');

-- --------------------------------------------------------

--
-- 表的结构 `county`
--

DROP TABLE IF EXISTS `county`;
CREATE TABLE IF NOT EXISTS `county` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 区；1 县',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `county`
--

INSERT INTO `county` (`id`, `name`, `type`) VALUES
(1, '涧西区', 0),
(2, '西工区', 0),
(3, '老城区', 0),
(4, '洛龙区', 0),
(5, '伊川县', 1),
(6, '宜阳县', 1),
(7, '孟津县', 1),
(8, '廛河区', 0);

-- --------------------------------------------------------

--
-- 表的结构 `feature`
--

DROP TABLE IF EXISTS `feature`;
CREATE TABLE IF NOT EXISTS `feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `feature`
--

INSERT INTO `feature` (`id`, `restaurant_id`, `feature_id`) VALUES
(1, 1, 1),
(7, 15, 4),
(8, 16, 3),
(9, 2, 3),
(10, 2, 5),
(11, 2, 6),
(12, 14, 1),
(13, 14, 4);

-- --------------------------------------------------------

--
-- 表的结构 `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `business_hour` varchar(128) NOT NULL DEFAULT '6:00 - 20:00',
  `address` varchar(128) NOT NULL,
  `county_id` int(11) NOT NULL DEFAULT '1' COMMENT '所属县、区',
  `area_id` int(11) NOT NULL DEFAULT '0' COMMENT '商圈范围。',
  `is_shutdown` tinyint(4) NOT NULL DEFAULT '0',
  `is_checked` int(11) NOT NULL DEFAULT '0' COMMENT '是否经过审核',
  `image_url` varchar(256) NOT NULL DEFAULT '',
  `coordinate` varchar(64) NOT NULL DEFAULT '0' COMMENT '经度在前',
  `description` varchar(256) NOT NULL DEFAULT '',
  `votes` int(11) NOT NULL DEFAULT '0' COMMENT '投票总数',
  `average_points` float NOT NULL DEFAULT '0' COMMENT '平均分',
  `weighted_points` float NOT NULL DEFAULT '0',
  `visits` int(11) NOT NULL DEFAULT '0' COMMENT '汤馆详情页访问次数',
  `creator` int(11) NOT NULL COMMENT '汤馆创建者id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- 转存表中的数据 `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `type_id`, `phone`, `business_hour`, `address`, `county_id`, `area_id`, `is_shutdown`, `is_checked`, `image_url`, `coordinate`, `description`, `votes`, `average_points`, `weighted_points`, `visits`, `creator`) VALUES
(1, '大石桥羊肉汤', 2, '13849996518', '6:00 - 12:00', '建设路24号', 1, 2, 0, 1, '/images/restaurant/profile_1.png', '34.6600647082123,112.399540274208', '好喝', 2, 3, 2.8006, 0, 4),
(2, '原汁牛肉汤', 1, '', '6:00 - 20:00', '涧西区西苑路武汉路交叉口东200米，路南', 1, 1, 0, 1, '/images/restaurant/profile_2.png', '34.66514,112.36643', '好地方。', 3, 4, 3.0467, 0, 6),
(3, '怀府驴肉汤', 3, '15038595869', '6:00 - 20:00', '洛阳市西工区纱厂东路金谷园路交叉口东200米，路北', 2, 0, 0, 1, '/images/restaurant/profile_3.png', '34.68029,112.44043', '好地方。', 3, 4, 3.0467, 0, 7),
(4, '白沙羊肉汤', 2, '', '6:00 - 20:00', '洛阳市西工区七一路九都路交叉口，北50米，路西', 2, 0, 1, 1, '/images/restaurant/profile_4.jpg', '34.6678708489134,112.450282304352', '好地方。', 2, 3, 2.8006, 0, 4),
(5, '大众牛肉汤', 1, '15038595869', '6:00 - 20:00', '洛阳市洛龙区龙翔路99号', 4, 0, 0, 1, '', '34.6233340894468,112.426142423218', '好地方。', 1, 4, 2.87338, 0, 6),
(6, '大众牛肉汤', 1, '15038595869', '6:00 - 20:00', '洛阳市涧西区湖北路87号', 1, 1, 0, 1, '', '34.6601023605574,112.393049328392', '好地方。', 2, 3, 2.8006, 0, 7),
(7, '百碗羊汤', 2, '', '6:00 - 20:00', '洛阳市西工区解放路唐宫路交叉口，西南角，新都汇三楼。', 2, 3, 0, 1, '', '34.67084,112.43468', '好地方。', 2, 3.5, 2.88393, 0, 4),
(8, '百碗羊汤', 2, '15038595869', '6:00 - 20:00', '洛阳市老城区金业路11号', 3, 0, 0, 1, '', '34.6813641077852,112.470345227783', '好地方。', 1, 5, 2.96429, 0, 6),
(9, '桥头豆腐汤', 5, '15038595869', '6:00 - 20:00', '洛阳市西工区七一路11号', 2, 0, 0, 1, '', '34.6686355990339,112.44952592141', '好地方。', 1, 2, 2.69156, 0, 7),
(10, '赵记丸子汤', 4, '15038595869', '6:00 - 20:00', '洛阳市老城区民主街881号', 3, 0, 0, 1, '', '34.6795942705833,112.479513018196', '好地方。', 3, 4.3, 3.11593, 0, 4),
(11, '大众牛肉汤', 1, '', '6:00 - 20:00', '西工区九都路98号', 1, 0, 0, 1, '', '', '好地方。', 1, 3, 2.78247, 0, 6),
(14, '老城豆腐汤', 5, '', '6:00 - 20:00', '长安路景华路交叉口南200米，路东', 1, 1, 0, 1, '', '34.6652647659882,112.377492516106', '好地方。', 2, 4, 2.96726, 0, 7),
(15, '匡家驴肉汤', 3, '', '6:00 - 12:00', '中医院对面，银川路往北30米', 1, 7, 0, 1, '/images/profile/2014/01/09/563534.jpg', '34.6484217829363,112.402442424362', '', 1, 3, 2.78247, 0, 4),
(16, '老孙牛肉汤', 1, '', '6:00 - 12:00', '南昌路与九都路交叉口，往东50米', 1, 7, 0, 1, '/images/profile/2014/01/10/612301.jpg', '34.6490881540684,112.406508653229', '好地方。', 2, 3, 2.8006, 0, 6),
(17, '白沙羊肉汤', 2, '', '6:00 - 13:00', '建设路与中州路交叉口东100米，路南', 1, 5, 0, 1, '', '34.6774061814842,112.356533734863', '好地方。', 2, 2.5, 2.71726, 0, 7),
(18, '马记第一家牛肉汤', 1, '', '6:00 - 20:00', '龙鳞路西苑路交叉口南200米，路东', 1, 1, 0, 1, '/images/profile/2014/01/09/524060.jpg', '34.6607598129607,112.376435725754', '好地方。', 2, 4, 2.96726, 0, 5),
(19, '华山路小碗驴肉汤', 3, '', '6:00 -13:00 ', '龙鳞路西苑路交叉口南200米，路东', 1, 1, 0, 1, '/images/profile/2014/01/09/351435.jpg', '34.6605656664837,112.376140682762', '好地方。', 1, 4, 2.87338, 0, 5),
(21, '龙门羊肉汤', 2, '', '6:00 - 12:00', '学府街和洛宜路口南一百米路西，古城乡卫生院隔壁', 4, 0, 0, 1, '', '34.62304,112.42642', '', 0, 0, 0, 0, 4),
(22, '百碗羊汤', 2, '', '9:00 - 20:00', '万达广场三楼', 1, 4, 0, 1, '', '34.65477,112.40781', '', 1, 1, 2.60065, 0, 4),
(23, '东关大石桥陈记驴肉汤馆', 3, '63965255', '6:00 - 20:00', '瀍河区夹马营路老洛一高南50米', 8, 0, 0, 1, '', '34.69339,112.49638', '', 0, 0, 0, 0, 4),
(24, '一鼎香驴肉汤馆', 3, '', '6:00 - 20:00', '新区望春门街与宜人路交叉口东五十米路北', 4, 0, 0, 1, '', '34.62595,112.44106', '', 0, 0, 0, 0, 4),
(25, '兄弟俩老李家牛肉汤', 1, '', '6:00 - 20:00', '银川路25号（中医院对面的一条路）', 1, 7, 0, 1, '', '34.64862,112.40237', '', 0, 0, 0, 0, 6),
(26, '南街刘记小碗牛肉汤', 1, '', '6:00 - 20:00', '创业路2号（创业路与南园路交叉口向北大概20米）', 1, 0, 0, 1, '', '34.63289,112.40787', '', 1, 5, 2.96429, 0, 6),
(27, '安记驴肉汤', 3, '', '6:00 - 20:00', '太原路与联盟路交叉口路北', 1, 7, 0, 1, '/images/profile/2014/01/09/244056.jpg', '34.65178,112.39858', '', 1, 4, 2.87338, 0, 6),
(28, '白沙羊肉汤馆', 2, '', '6:00 - 20:00', '龙鳞路西苑路交叉口南200米，路东', 1, 1, 0, 1, '/images/profile/2014/01/09/202456.jpg', '34.66002,112.37599', '', 2, 5, 3.13393, 0, 4),
(33, '小朗牛肉汤二分店', 1, '', '6:00 - 20:00', '广文路与建设路交叉口南100米，路西', 1, 5, 0, 1, '/images/restaurant/profile_2013-12-21-08-47-43738485499.jpg', '34.67874414823763,112.3497863899296', '', 1, 3, 2.78247, 0, 4),
(34, '老洛阳滋补牛肉汤', 1, '', '6:00 - 20:00', '涧西区西苑路与湖南路交叉口向北50米', 1, 1, 0, 1, '/images/restaurant/profile_2013-12-21-12-04-43185223356.jpg', '34.65970,112.38964', '', 0, 0, 0, 0, 4),
(35, '铁谢李松家羊肉汤', 2, '', '6:00 - 20:00', '汉光武帝陵对面', 7, 0, 0, 1, '', '34.83670,112.60529', '', 0, 0, 0, 0, 4),
(36, '张家东关大石桥羊肉汤', 2, '', '6:00 - 20:00', '汉屯路', 2, 3, 0, 1, '', '34.67161,112.42748', '', 0, 0, 0, 0, 6),
(45, '孙家牛肉汤', 1, '', '6:00 - 20:00', '汉阳路与武汉路交叉口西200米，路南', 1, 0, 0, 1, '/images/profile/2014/01/08/640233.jpg', '34.67096,112.36625', '', 0, 0, 0, 0, 4),
(46, '原东关牛肉汤第八分店', 1, '', '6:00 - 20:00', '涧西区龙鳞路1号（龙鳞路与西苑路交叉口向南100米）', 1, 1, 0, 1, '/images/profile/2014/01/09/036162.jpg', '34.66085,112.37665', '', 0, 0, 0, 0, 6),
(51, '南街小碗牛肉汤', 1, '', '6:00 - 20:00', '涧西区银川路40号（银川路与九都路交叉口，向南100米）', 1, 7, 0, 1, '/images/profile/2014/01/09/522250.jpg', '34.64910,112.40204', '', 0, 0, 0, 0, 6),
(52, '兄弟俩老李家牛肉汤', 1, '', '6:00 - 20:00', '涧西区银川路与九都路交叉口，向北100米', 1, 7, 0, 1, '/images/profile/2014/01/09/465060.jpg', '34.64883,112.40222', '', 0, 0, 0, 0, 6),
(54, '大众原汁牛肉汤', 1, '', '6:00 - 20:00', '涧西区长春路7号（向北走50米，路西）', 1, 2, 0, 1, '/images/profile/2014/01/09/616456.jpg', '34.65951391781393,112.4053011860016', '', 0, 0, 0, 0, 4),
(55, '白沙一品羊', 2, '', '6:00 - 20:00', '银川路与九都路交叉口向南100米', 1, 7, 0, 1, '/images/profile/2014/01/09/530003.jpg', '34.64562,112.40400', '', 0, 0, 0, 0, 6),
(56, '大众原汁牛肉汤', 1, '', '6:00 - 20:00', '涧西区银川路40号（银川路与九都路交叉口，向南100米）', 1, 7, 0, 1, '/images/profile/2014/01/09/412021.jpg', '34.64573,112.40390', '', 0, 0, 0, 0, 6),
(58, '金盾牛肉汤', 1, '', '6:00 - 20:00', '涧西区吉林路与黄河口交叉口', 1, 4, 0, 1, '/images/profile/2014/01/09/530625.jpg', '34.65971430513154,112.4076815001488', '', 0, 0, 0, 0, 6),
(59, '老李家豆腐汤丸子汤', 5, '', '6:00 - 20:00', '涧西区吉林路与黄河口交叉口', 1, 4, 0, 1, '/images/profile/2014/01/09/662245.jpg', '34.65966094991716,112.4078635677777', '', 0, 0, 0, 0, 6),
(60, '洛浦路梁记豆腐汤', 5, '', '6:00 - 20:00', '涧西区吉林路与黄河口交叉口', 1, 4, 0, 1, '/images/profile/2014/01/09/253113.jpg', '34.65985182750413,112.4078598389854', '', 0, 0, 0, 0, 6),
(61, '洛阳县阁司马家驴肉汤馆', 3, '', '6:00 - 20:00', '凯旋西路与涧东路交叉口向西100米', 2, 4, 0, 1, '/images/profile/2014/01/09/363425.jpg', '34.66216122653255,112.4147558863925', '', 0, 0, 0, 0, 6),
(62, '白沙羊肉汤馆', 2, '', '6:00 - 20:00', '凯旋西路与涧东路交叉口向西100米', 2, 4, 0, 1, '/images/profile/2014/01/09/010106.jpg', '34.66217477741307,112.4147924817313', '', 0, 0, 0, 0, 6),
(63, '老李家牛肉汤', 1, '', '6:00 - 20:00', '西工区凯旋西路88号（凯旋西路与涧东路交叉口向西100米）', 1, 4, 0, 1, '/images/profile/2014/01/09/251253.jpg', '34.66213106649687,112.4145856000462', '', 0, 0, 0, 0, 6),
(64, '张家东关大石桥羊肉汤', 2, '', '6:00 - 20:00', '涧西区长春路6号（向北80米，路东）', 1, 2, 0, 1, '/images/profile/2014/01/09/224423.jpg', '34.66104123825072,112.399886133058', '', 0, 0, 0, 0, 6),
(65, '华山路小碗驴肉汤', 3, '', '6:00 - 20:00', '涧西区长春路6号（向北70米，路东）', 1, 2, 0, 1, '/images/profile/2014/01/09/545666.jpg', '34.66101035590641,112.3999942423373', '', 0, 0, 0, 0, 6),
(66, '老洛阳大司马驴肉店', 3, '', '6:00 - 20:00', '涧西区珠江路10号（珠江路与吉林路交叉口）', 1, 4, 0, 1, '/images/profile/2014/01/09/634626.jpg', '34.65794804723358,112.4040158243096', '', 0, 0, 0, 0, 6),
(67, '大众原汁牛肉汤', 1, '', '6:00 - 20:00', '涧西区长春路7号（向北走50米，路西）', 1, 2, 0, 1, '/images/profile/2014/01/09/514360.jpg', '34.65951391781393,112.4053011860016', '', 0, 0, 0, 0, 4),
(68, '大众原汁牛肉汤', 1, '', '6:00 - 20:00', '涧西区银川路40号（银川路与九都路交叉口，向南100米）', 1, 7, 0, 1, '/images/profile/2014/01/09/303210.jpg', '34.64685304939468,112.3974837254815', '', 0, 0, 0, 0, 6);

-- --------------------------------------------------------

--
-- 表的结构 `restaurant_feature`
--

DROP TABLE IF EXISTS `restaurant_feature`;
CREATE TABLE IF NOT EXISTS `restaurant_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(16) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `restaurant_feature`
--

INSERT INTO `restaurant_feature` (`id`, `type`, `name`, `image_url`) VALUES
(1, 1, '炸面丸子', ''),
(2, 1, '炸豆丸子', ''),
(3, 0, '清真', ''),
(4, 2, '油旋馍', ''),
(5, 2, '饼丝', ''),
(6, 2, '烧饼', '');

-- --------------------------------------------------------

--
-- 表的结构 `restaurant_status`
--

DROP TABLE IF EXISTS `restaurant_status`;
CREATE TABLE IF NOT EXISTS `restaurant_status` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `restaurant_status`
--

INSERT INTO `restaurant_status` (`id`, `name`) VALUES
(0, '正常营业'),
(1, '临时关闭'),
(2, '永久关闭');

-- --------------------------------------------------------

--
-- 表的结构 `restaurant_type`
--

DROP TABLE IF EXISTS `restaurant_type`;
CREATE TABLE IF NOT EXISTS `restaurant_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `restaurant_type`
--

INSERT INTO `restaurant_type` (`id`, `name`) VALUES
(1, '牛肉汤'),
(2, '羊肉汤'),
(3, '驴肉汤'),
(4, '丸子汤'),
(5, '豆腐汤'),
(6, '杂肝汤'),
(7, '不翻汤');

-- --------------------------------------------------------

--
-- 表的结构 `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `key` varchar(64) NOT NULL,
  `value` varchar(128) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `setting`
--

INSERT INTO `setting` (`key`, `value`) VALUES
('get_new_vote', '0');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_user_id` bigint(11) NOT NULL,
  `nick_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `role` int(11) NOT NULL COMMENT '0 normal 1 admin',
  `source` int(11) NOT NULL,
  `last_action_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次评论、投票时间。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `extension_user_id`, `nick_name`, `image_url`, `role`, `source`, `last_action_time`) VALUES
(4, 1655929253, '刘万伟', 'http://tp2.sinaimg.cn/1655929253/50/5658842323/1', 1, 1, '2013-12-26 13:38:25'),
(5, 2147483647, '比赛闹钟', 'http://tp4.sinaimg.cn/2472803787/50/5620173593/1', 0, 1, '0000-00-00 00:00:00'),
(6, 1733875695, '毛_宇', 'http://tp4.sinaimg.cn/1733875695/50/5647446298/1', 1, 1, '2013-12-27 09:50:27'),
(7, 1914550097, '草-蛋', 'http://tp2.sinaimg.cn/1914550097/50/5669003732/1', 1, 1, '2014-01-02 06:48:23'),
(8, 1625391780, '2l克', 'http://tp1.sinaimg.cn/1625391780/50/5618521072/1', 0, 1, '2014-01-07 01:27:03');

-- --------------------------------------------------------

--
-- 表的结构 `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL COMMENT '1-10分',
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- 转存表中的数据 `vote`
--

INSERT INTO `vote` (`id`, `user_id`, `restaurant_id`, `rating`, `create_datetime`) VALUES
(18, 4, 4, 3, '0000-00-00 00:00:00'),
(19, 4, 1, 2, '0000-00-00 00:00:00'),
(20, 7, 3, 3, '0000-00-00 00:00:00'),
(21, 7, 5, 4, '0000-00-00 00:00:00'),
(22, 7, 4, 3, '0000-00-00 00:00:00'),
(23, 6, 10, 4, '0000-00-00 00:00:00'),
(24, 6, 15, 3, '0000-00-00 00:00:00'),
(26, 6, 6, 3, '0000-00-00 00:00:00'),
(27, 6, 3, 5, '0000-00-00 00:00:00'),
(28, 6, 2, 4, '0000-00-00 00:00:00'),
(29, 4, 14, 4, '0000-00-00 00:00:00'),
(30, 4, 9, 2, '0000-00-00 00:00:00'),
(31, 7, 10, 4, '2013-10-29 05:14:40'),
(32, 4, 17, 3, '2013-10-29 10:06:25'),
(33, 4, 18, 4, '2013-10-29 10:09:44'),
(34, 4, 19, 4, '2013-10-29 10:11:44'),
(35, 4, 10, 5, '2013-10-30 05:24:51'),
(36, 4, 2, 4, '2013-11-27 02:08:25'),
(37, 4, 8, 5, '2013-11-27 02:08:52'),
(38, 7, 7, 3, '2013-11-27 07:48:48'),
(40, 4, 3, 4, '2013-11-27 09:03:07'),
(41, 4, 22, 1, '2013-11-28 01:07:42'),
(42, 7, 1, 4, '2013-12-09 14:06:47'),
(43, 7, 11, 3, '2013-12-09 14:06:57'),
(44, 7, 16, 2, '2013-12-09 14:07:08'),
(45, 7, 17, 2, '2013-12-09 14:07:10'),
(46, 7, 2, 4, '2013-12-09 14:07:23'),
(47, 6, 16, 4, '2013-12-12 09:12:36'),
(48, 6, 18, 4, '2013-12-13 00:38:22'),
(49, 6, 14, 4, '2013-12-13 00:43:29'),
(50, 6, 26, 5, '2013-12-13 01:00:02'),
(51, 6, 27, 4, '2013-12-13 01:20:13'),
(52, 4, 6, 3, '2013-12-13 07:44:17'),
(53, 4, 28, 5, '2013-12-14 01:01:50'),
(54, 6, 28, 5, '2013-12-14 02:28:36'),
(55, 4, 33, 3, '2013-12-21 00:59:40'),
(56, 4, 7, 4, '2013-12-25 15:53:07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
