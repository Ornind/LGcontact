-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2013 at 05:06 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lgchat`
--
CREATE DATABASE IF NOT EXISTS `lgchat` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lgchat`;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('21ea5fd005a611acfc9ed5b30258e1a5', '::1', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)', 1385450968, 'a:9:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:4:"name";s:52:"ยายแม้น นามสกุลยาย";s:5:"email";s:17:"admin@example.com";s:6:"avatar";s:2:"a1";s:7:"tagline";s:11:"<i>yeah</i>";s:7:"isAdmin";s:1:"1";s:6:"teamId";s:1:"1";s:10:"isLoggedIn";b:1;}'),
('30741dd289c36b82df68bfbf88b92e21', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36', 1386170133, 'a:9:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:4:"name";s:52:"ยายแม้น นามสกุลยาย";s:5:"email";s:17:"admin@example.com";s:6:"avatar";s:2:"a1";s:7:"tagline";s:11:"<i>yeah</i>";s:7:"isAdmin";s:1:"1";s:6:"teamId";s:1:"1";s:10:"isLoggedIn";b:1;}'),
('a54ad77c3d7f29010056b2d8148a7f5d', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36', 1385448293, 'a:9:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:4:"name";s:52:"ยายแม้น นามสกุลยาย";s:5:"email";s:17:"admin@example.com";s:6:"avatar";s:2:"a1";s:7:"tagline";s:11:"<i>yeah</i>";s:7:"isAdmin";s:1:"1";s:6:"teamId";s:1:"1";s:10:"isLoggedIn";b:1;}'),
('eb9b6da953bc1ef572b00f4a12b11db0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36', 1385450899, 'a:9:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:4:"name";s:52:"ยายแม้น นามสกุลยาย";s:5:"email";s:17:"admin@example.com";s:6:"avatar";s:2:"a1";s:7:"tagline";s:11:"<i>yeah</i>";s:7:"isAdmin";s:1:"1";s:6:"teamId";s:1:"1";s:10:"isLoggedIn";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contactname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contactstatuscode` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'w',
  PRIMARY KEY (`username`,`contactname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`username`, `contactname`, `contactstatuscode`) VALUES
('a', '', 'w'),
('aa', '', 'w'),
('aimmm', '', 'w'),
('สองตาราง', '', 'w');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) DEFAULT NULL,
  `body` varchar(320) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=303 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`ID`, `userId`, `body`, `createdDate`) VALUES
(24, '1', 'สวัสดี', '2013-11-25 08:31:12'),
(25, '1', 'test', '2013-11-25 14:27:31'),
(26, '1', 'heyyy\n', '2013-11-25 16:03:16'),
(27, '1', 'ภาษาไทย', '2013-11-25 16:03:43'),
(29, '1', 'haha', '2013-11-26 09:06:10'),
(32, '1', 'ee', '2013-12-02 04:49:35'),
(214, '1', 'วันนี้กลับบ้านกี่โมง', '2013-12-04 04:39:01'),
(215, '1', 'วันนี้กลับบ้านกี่โมง', '2013-12-04 04:39:06'),
(216, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 12:07:12'),
(217, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 12:07:21'),
(218, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 12:07:25'),
(219, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 12:16:16'),
(220, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 12:16:20'),
(221, '1', 'หิวแล้ว', '2013-12-04 12:16:26'),
(222, '1', 'หิวแล้ว', '2013-12-04 12:16:29'),
(223, '1', 'หิวแล้ว', '2013-12-04 12:16:32'),
(224, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 13:19:28'),
(225, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 13:19:35'),
(226, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 13:19:39'),
(227, '1', 'หิวแล้ว', '2013-12-04 13:19:53'),
(228, '1', 'หิวแล้ว', '2013-12-04 13:19:57'),
(229, '1', 'ประโยคอาหาร', '2013-12-04 13:24:46'),
(230, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 13:24:49'),
(231, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 14:53:31'),
(232, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 14:54:04'),
(233, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 14:54:39'),
(234, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 14:57:37'),
(235, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:23:02'),
(236, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:23:06'),
(237, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:23:10'),
(238, '1', 'หิวแล้ว', '2013-12-04 15:23:29'),
(239, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:23:33'),
(240, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:23:37'),
(241, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:23:42'),
(242, '1', 'หิวแล้ว', '2013-12-04 15:24:39'),
(243, '1', 'หิวแล้ว', '2013-12-04 15:24:43'),
(244, '1', 'หิวแล้ว', '2013-12-04 15:24:46'),
(245, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:30:52'),
(246, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:30:56'),
(247, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:30:59'),
(248, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:31:24'),
(249, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:31:28'),
(250, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:31:31'),
(251, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:34:13'),
(252, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:34:17'),
(253, '1', 'หิวแล้ว', '2013-12-04 15:34:20'),
(254, '1', 'ทานข้าวยัง', '2013-12-04 15:34:24'),
(255, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:34:29'),
(256, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:34:32'),
(257, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:34:35'),
(258, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:34:41'),
(259, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:35:52'),
(260, '1', 'หิวแล้ว', '2013-12-04 15:35:56'),
(261, '1', 'ประโยคอาหาร', '2013-12-04 15:36:00'),
(262, '1', 'ประโยคอาหาร', '2013-12-04 15:36:04'),
(263, '1', 'ประโยคอาหาร', '2013-12-04 15:42:26'),
(264, '1', 'หิวแล้ว', '2013-12-04 15:42:29'),
(265, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:42:33'),
(266, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:42:36'),
(267, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:45:08'),
(268, '1', 'หิวแล้ว', '2013-12-04 15:45:11'),
(269, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:45:15'),
(270, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:45:19'),
(271, '1', 'ประโยคอาหาร', '2013-12-04 15:45:36'),
(272, '1', 'ประโยคอาหาร', '2013-12-04 15:45:39'),
(273, '1', 'หิวแล้ว', '2013-12-04 15:45:42'),
(274, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 15:54:41'),
(275, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:54:47'),
(276, '1', 'หิวแล้ว', '2013-12-04 15:54:52'),
(277, '1', 'หิวแล้ว', '2013-12-04 15:54:56'),
(278, '1', 'หิวแล้ว', '2013-12-04 15:55:00'),
(279, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 15:58:33'),
(280, '1', 'หิวแล้ว', '2013-12-04 16:04:06'),
(281, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 16:04:11'),
(282, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 16:04:15'),
(283, '1', 'ทานข้าวยัง', '2013-12-04 16:04:20'),
(284, '1', 'ทานข้าวยัง', '2013-12-04 16:04:24'),
(285, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 16:05:54'),
(286, '1', 'หิวแล้ว', '2013-12-04 16:05:58'),
(287, '1', 'หิวแล้ว', '2013-12-04 16:06:01'),
(288, '1', 'หิวแล้ว', '2013-12-04 16:06:06'),
(289, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 16:08:10'),
(290, '1', 'หิวแล้ว', '2013-12-04 16:08:13'),
(291, '1', 'หิวแล้ว', '2013-12-04 16:08:22'),
(292, '1', 'หิวแล้ว', '2013-12-04 16:08:38'),
(293, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 16:09:54'),
(294, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 16:09:57'),
(295, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 16:10:00'),
(296, '1', 'รอทานข้าวอยู่นะ', '2013-12-04 16:15:39'),
(297, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 16:15:43'),
(298, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 16:15:45'),
(299, '1', 'จะกลับมากินข้าวเย็นมั๊ย', '2013-12-04 16:15:49'),
(300, '1', 'วันนี้กลับบ้านกี่โมง', '2013-12-04 16:17:38'),
(301, '1', 'วันนี้กลับบ้านกี่โมง', '2013-12-04 16:17:42'),
(302, '1', 'วันนี้กลับบ้านกี่โมง', '2013-12-04 16:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `sentence`
--

CREATE TABLE IF NOT EXISTS `sentence` (
  `SentenceID` int(5) NOT NULL AUTO_INCREMENT,
  `Sentence` text,
  `Type` text,
  `Username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SentenceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `sentence`
--

INSERT INTO `sentence` (`SentenceID`, `Sentence`, `Type`, `Username`) VALUES
(1, 'ประโยคอาหาร', 'food', 'admin'),
(2, 'จะกลับมากินข้าวเย็นมั๊ย', 'food', 'admin'),
(3, 'ประโยคเวลา', 'time', 'admin'),
(4, 'กลับดึกนะ ไม่ต้องรอ', 'time', 'admin'),
(5, 'วันนี้กลับบ้านกี่โมง', 'time', 'admin'),
(6, 'เสร็จหรือยัง', 'time', 'admin'),
(7, 'รออยู่นะ', 'time', 'admin'),
(8, 'ประโยคเงิน', 'money', 'admin'),
(9, 'ยืมตังหน่อย', 'money', 'admin'),
(10, 'โอนเงินให้แล้วนะ', 'money', 'admin'),
(11, 'ตังหมดอ่ะ', 'money', 'admin'),
(12, 'ขอบคุณที่เลี้ยง', 'money', 'admin'),
(13, 'ประโยคสุขภาพ', 'health', 'admin'),
(14, 'ปวดหัวอ่ะ มาหาหน่อย', 'health', 'admin'),
(15, 'ทานยายัง', 'health', 'admin'),
(16, 'ไม่สบาย', 'health', 'admin'),
(17, 'ไปจ็อกกิ้งกัน', 'health', 'admin'),
(18, 'รอทานข้าวอยู่นะ', 'food', 'admin'),
(19, 'หิวแล้ว', 'food', 'admin'),
(20, 'ทานข้าวยัง', 'food', 'admin'),
(21, 'ไม่กลับบ้านนะ', 'time', 'admin'),
(22, 'เงินเดือนออกยัง', 'money', 'admin'),
(23, 'เป็นหวัด', 'health', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `teamId` int(11) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `firstName`, `lastName`, `avatar`, `tagline`, `teamId`, `isAdmin`) VALUES
(1, 'admin@example.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'ยายแม้น', 'นามสกุลยาย', 'a1', '<i>yeah</i>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE IF NOT EXISTS `user1` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `onlinestatus` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `imei` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`username`, `password`, `email`, `onlinestatus`, `telephone`, `imei`) VALUES
('aimmm', '12345', 'aa@ol.th', '', '', ''),
('amika', '12345', 'aiminggg@gmail.com', '1', '0801234567', '123456789102345'),
('pim', '1234', 'pimjangka@hotmail.com', '1', '0859351614', '356409044465725'),
('สองตาราง', '3456', 'waser@GAR.hg', '', '', ''),
('เอม', 'เอม35', 'aim@gmail.com', '1', '0801235678', '123456789012345');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
