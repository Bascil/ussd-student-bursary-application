-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2020 at 06:24 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdf_bursary`
--

-- --------------------------------------------------------

--
-- Table structure for table `cdf_news`
--

CREATE TABLE `cdf_news` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `cid` varchar(4) NOT NULL,
  `date_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cdf_news`
--

INSERT INTO `cdf_news` (`id`, `title`, `description`, `cid`, `date_posted`) VALUES
(1, 'Bursary Forms', 'Bursary forms available at our offices', 'C218', '2018-04-13 12:00:00'),
(2, 'Application deadline', 'Deadline for bursary application is tomorrow', 'C218', '2020-01-23 12:00:00'),
(3, 'Bursary Forms', 'Bursary forms are available at Kisauni office', 'C004', '2018-04-13 00:00:00'),
(4, 'CDF Football Challenge', 'All students are invited for the sports event', 'C004', '2018-04-13 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cdf_news_details`
-- (See below for the actual view)
--
CREATE TABLE `cdf_news_details` (
`id` int(11)
,`title` varchar(50)
,`description` text
,`cname` varchar(50)
,`phone` varchar(50)
,`date_posted` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `constituencies`
--

CREATE TABLE `constituencies` (
  `id` int(11) NOT NULL,
  `cid` varchar(4) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituencies`
--

INSERT INTO `constituencies` (`id`, `cid`, `cname`) VALUES
(1, 'C001', 'Changamwe'),
(2, 'C002', 'Kilifi South'),
(3, 'C003', 'Jomvo'),
(4, 'C004', 'Kisauni'),
(5, 'C005', 'Nyali'),
(6, 'C006', 'Likoni'),
(7, 'C007', 'Mvita'),
(8, 'C008', 'Kilifi North'),
(10, 'C010', 'Kaloleni'),
(11, 'C011', 'Rabai'),
(12, 'C012', 'Ganze'),
(13, 'C013', 'Malindi'),
(14, 'C014', 'Magarini'),
(15, 'C015', 'Msambweni'),
(16, 'C016', 'Lunga Lumga'),
(17, 'C017', 'Matuga'),
(18, 'C018', 'Kinango'),
(19, 'C019', 'Garsen'),
(20, 'C020', 'Galole'),
(21, 'C021', 'Bura'),
(22, 'C022', 'Lamu East'),
(23, 'C023', 'Lamu West'),
(24, 'C024', 'Taveta'),
(25, 'C025', 'Wundanyi'),
(26, 'C026', 'Mwatate'),
(27, 'C027', 'Voi'),
(28, 'C028', 'Wajir North'),
(29, 'C029', 'Wajir East'),
(30, 'C030', 'Tarbai'),
(31, 'C031', 'Wajir West'),
(32, 'C032', 'Eldas'),
(33, 'C033', 'Wajir South'),
(34, 'C034', 'Mandera East'),
(35, 'C035', 'Banisa'),
(36, 'C036', 'Mandera North'),
(37, 'C037', 'Mandera South'),
(38, 'C038', 'Mandera East'),
(39, 'C039', 'Lafey'),
(40, 'C040', 'Moyale'),
(41, 'C041', 'North Horr'),
(42, 'C042', 'Saku'),
(43, 'C043', 'Laisamis'),
(44, 'C044', 'Isiolo North'),
(45, 'C045', 'Isiolo South'),
(46, 'C046', 'Igembe South'),
(47, 'C047', 'Igembe Central'),
(48, 'C048', 'Tigania West'),
(49, 'C049', 'Tigania East'),
(50, 'C050', 'North Imenti'),
(51, 'C051', 'Mbuuri'),
(52, 'C052', 'Central Imenti'),
(53, 'C053', 'South Imenti'),
(54, 'C054', 'Nithi'),
(55, 'C055', 'Maara'),
(56, 'C056', 'Tharaka'),
(57, 'C057', 'Manyatta'),
(58, 'C058', 'Runyenjes'),
(59, 'C059', 'Gachoka'),
(60, 'C060', 'Siakago'),
(61, 'C061', 'Mwingi North'),
(62, 'C062', 'Mwingi Central;'),
(63, 'C063', 'Mwingi South'),
(64, 'C064', 'Kitui West'),
(65, 'C065', 'Kitui Rural'),
(66, 'C066', 'Kitui Toen'),
(67, 'C067', 'Mutito'),
(68, 'C068', 'Kitui South'),
(69, 'C069', 'Masinga'),
(70, 'C070', 'Yatta'),
(71, 'C071', 'Kagundo'),
(72, 'C072', 'Matungulu'),
(73, 'C073', 'Kathiani'),
(74, 'C074', 'Mavoko'),
(75, 'C075', 'Machakos'),
(76, 'C076', 'Mwala'),
(77, 'C077', 'Mbooni'),
(78, 'C078', 'Kilome'),
(79, 'C079', 'Kaiti'),
(80, 'C080', 'Makueni'),
(81, 'C081', 'Kibwezi West'),
(82, 'C082', 'Kibwezi East'),
(83, 'C083', 'Kipipiri'),
(84, 'C084', 'Ol-Kalou'),
(85, 'C085', 'Ol-Jorok'),
(86, 'C086', 'Ndaragua'),
(87, 'C087', 'Tetu'),
(88, 'C088', 'Kieni'),
(89, 'C089', 'Mathira'),
(90, 'C090', 'Othaya'),
(91, 'C091', 'Mukurwe-ini'),
(92, 'C092', 'Nyeri'),
(93, 'C093', 'Mwea'),
(94, 'C094', 'Gichugu'),
(95, 'C095', 'Ndia'),
(96, 'C096', 'Kirinyaga Central'),
(97, 'C097', 'Kangema'),
(98, 'C098', 'Mathioya'),
(99, 'C099', 'Kiharu'),
(100, 'C100', 'Kiguma'),
(101, 'C101', 'Maragwa'),
(102, 'C102', 'Kandara'),
(103, 'C103', 'Gatanga'),
(104, 'C104', 'Gatundu South'),
(105, 'C105', 'Gatundu North'),
(106, 'C106', 'Juja'),
(107, 'C107', 'Thika'),
(108, 'C108', 'Ruiru'),
(109, 'C109', 'Githunguti'),
(110, 'C110', 'Kiambu'),
(111, 'C111', 'Kiambaa'),
(112, 'C112', 'Kabete'),
(113, 'C113', 'Kikuyu'),
(114, 'C114', 'Limuru'),
(115, 'C115', 'Lari'),
(116, 'C116', 'Turkana North'),
(117, 'C117', 'Turkana West'),
(118, 'C118', 'Turkana Central'),
(119, 'C119', 'Loima'),
(120, 'C120', 'Turkana South'),
(121, 'C121', 'Turkana East'),
(122, 'C122', 'Kapenguria'),
(123, 'C123', 'Sigor'),
(124, 'C124', 'Kacheliba'),
(125, 'C125', 'Pokot South'),
(126, 'C126', 'Samburu West'),
(127, 'C127', 'Samburu East'),
(128, 'C128', 'Samburu North'),
(129, 'C129', 'Kwanza'),
(130, 'C130', 'Endebes'),
(131, 'C131', 'Saboti'),
(132, 'C132', 'Kiminini'),
(133, 'C133', 'Cherangani'),
(134, 'C134', 'Soy'),
(135, 'C135', 'Turbo'),
(136, 'C136', 'Moiben'),
(137, 'C137', 'Ainabkoi'),
(138, 'C138', 'Kapseret'),
(139, 'C139', 'Kesses'),
(140, 'C140', 'Marakwet East'),
(141, 'C141', 'Marakwet West'),
(142, 'C142', 'Keiyo East'),
(143, 'C143', 'Keiyo South'),
(144, 'C144', 'Tinderet'),
(145, 'C145', 'Aldai'),
(146, 'C146', 'Nandi Hills'),
(147, 'C147', 'Emgwen North'),
(148, 'C148', 'Emgwen South'),
(149, 'C149', 'Mosop'),
(150, 'C150', 'Baringo East'),
(151, 'C151', 'Baringo West'),
(152, 'C152', 'Baringo Central'),
(153, 'C153', 'Mochongoi'),
(154, 'C154', 'Eldama Ravin'),
(155, 'C155', 'Laikipia West'),
(156, 'C156', 'Laikipia East'),
(157, 'C157', 'Laikipia North'),
(158, 'C158', 'Molo'),
(159, 'C159', 'Njoro'),
(160, 'C160', 'Naivasha'),
(161, 'C161', 'Gilgil'),
(162, 'C162', 'Kuresoi South'),
(163, 'C163', 'Kuresoi North'),
(164, 'C164', 'Subukia'),
(165, 'C165', 'Rongai'),
(166, 'C166', 'Bahati'),
(167, 'C167', 'Nakuru Town West'),
(168, 'C168', 'Nakuru Town East'),
(169, 'C169', 'Kilgoris'),
(170, 'C170', 'Emurua Dikiri'),
(171, 'C171', 'Narok North'),
(172, 'C172', 'Naraok East'),
(173, 'C173', 'Narok South'),
(174, 'C174', 'Narok West'),
(175, 'C175', 'Kajiado North'),
(176, 'C176', 'Kajiado Central'),
(177, 'C177', 'Kajiada East'),
(178, 'C178', 'Kajiado South'),
(179, 'C179', 'Kipkelion East'),
(180, 'C180', 'Kipkelion West'),
(181, 'C181', 'Ainamoi'),
(182, 'C182', 'Bureti'),
(183, 'C183', ' Belgut'),
(184, 'C184', 'Sigowet'),
(185, 'C185', 'Sotic'),
(186, 'C186', 'Chepalungu'),
(187, 'C187', 'Bonet East'),
(188, 'C188', 'Konoin'),
(189, 'C189', 'Lugari'),
(190, 'C190', 'Likuyani'),
(191, 'C191', 'Malava'),
(192, 'C192', 'Alumbari '),
(193, 'C193', 'Navakholo'),
(194, 'C194', 'Mumias'),
(195, 'C195', 'Mumias East'),
(196, 'C196', 'Matungu'),
(197, 'C197', 'Butere'),
(198, 'C198', 'Khwisero'),
(199, 'C199', 'Sinyalu'),
(200, 'C200', 'Ikolomani'),
(201, 'C201', 'Sabatia'),
(202, 'C202', 'Hamisi'),
(203, 'C203', 'Emuhaya'),
(204, 'C204', 'Luanda'),
(205, 'C205', 'Mt.Elgon'),
(206, 'C206', 'Sirisia'),
(207, 'C207', 'Kabuchai'),
(208, 'C208', 'Bumula'),
(209, 'C209', 'Kanduyi'),
(210, 'C210', 'Webuye'),
(211, 'C211', 'Bokoli'),
(212, 'C212', 'Kimilili'),
(213, 'C213', 'Tongaren'),
(214, 'C214', 'Teso North'),
(215, 'C215', 'Teso South'),
(216, 'C216', 'Nambale'),
(217, 'C217', 'Matayos'),
(218, 'C218', 'Butula'),
(219, 'C219', 'Funyula'),
(220, 'C220', 'Budalangi'),
(221, 'C221', 'Ugenya'),
(222, 'C222', 'Ugunja'),
(223, 'C223', 'Alego Usonga'),
(224, 'C224', 'Gem'),
(225, 'C225', 'Bondo'),
(226, 'C226', 'Rarienda'),
(227, 'C227', 'Kisumu East'),
(228, 'C228', 'Kisumu West'),
(229, 'C229', 'Kisumu Central'),
(230, 'C230', 'Seme'),
(231, 'C231', 'Nyando'),
(232, 'C232', 'Muhoroni'),
(233, 'C233', 'Nyakach'),
(234, 'C234', 'Kasipul'),
(235, 'C235', 'Kabondo'),
(236, 'C236', 'Karachwonyo'),
(237, 'C237', 'Rangwe'),
(238, 'C238', 'Homa Bay Town'),
(239, 'C239', 'Ndhiwa'),
(240, 'C240', 'Mbita'),
(241, 'C241', 'Gwasi'),
(242, 'C242', 'Rongo'),
(243, 'C243', 'Awendo'),
(244, 'C244', 'Migori East'),
(245, 'C245', 'Migori West'),
(246, 'C246', 'Uriri'),
(247, 'C247', 'Nyatiki'),
(248, 'C248', 'Kuria East'),
(249, 'C249', 'Kuria West'),
(250, 'C250', 'Bonchari'),
(251, 'C251', 'South Mugirango'),
(252, 'C252', 'Bomachogi'),
(253, 'C253', 'Mugirango'),
(254, 'C254', 'Bobasi'),
(255, 'C255', 'Gucha'),
(256, 'C256', 'Nyaribari Masaba'),
(257, 'C257', 'Nyaribari Chache'),
(258, 'C258', 'Marani'),
(259, 'C259', 'Mosocho'),
(260, 'C260', 'Kitutut Masaba'),
(261, 'C261', 'West Mugirango'),
(262, 'C262', 'North Mugirango'),
(263, 'C263', 'Borabu'),
(264, 'C264', 'Parklands'),
(265, 'C265', 'Dagoretti'),
(266, 'C266', 'Karen/Langata'),
(267, 'C267', 'Kibra'),
(268, 'C268', 'Roysambu'),
(269, 'C269', 'Kasarani'),
(270, 'C270', 'Ruaraka'),
(271, 'C271', 'Kariobangi'),
(272, 'C272', 'Kayole'),
(273, 'C273', 'Embakasi'),
(274, 'C274', 'Mihango'),
(275, 'C275', 'Nairobi-West'),
(276, 'C276', 'Makadara'),
(277, 'C277', 'Kamukunji'),
(278, 'C278', 'Starehe'),
(279, 'C279', 'Mathare'),
(280, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `id` int(11) NOT NULL,
  `countyid` varchar(3) NOT NULL,
  `countyname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`id`, `countyid`, `countyname`) VALUES
(1, '001', 'Mombasa'),
(2, '002', 'Kilifi'),
(3, '003', 'Kwale'),
(4, '004', 'Tana River'),
(5, '005', 'Lamu'),
(6, '006', 'Taita Taveta'),
(7, '007', 'Wajir'),
(8, '008', 'Mandera'),
(9, '009', 'Marsabit'),
(10, '010', 'Isiolo'),
(11, '011', 'Meru'),
(12, '012', 'Tharaka Nithi'),
(13, '013', 'Embu'),
(14, '014', 'Kitui'),
(15, '015', 'Machakos'),
(16, '016', 'Makueni'),
(17, '017', 'Nyandarua'),
(18, '018', 'Nyeri'),
(19, '019', 'Kirinyaga'),
(20, '020', 'Muranga'),
(21, '021', 'Maragwa'),
(22, '022', 'Kiambu'),
(23, '023', 'Turukana'),
(24, '024', 'West Pokot'),
(25, '025', 'Samburu'),
(26, '026', 'Trans Nzoia'),
(27, '027', 'Uasin Gishu'),
(28, '028', 'Elgeyo Marakwet'),
(29, '029', 'Nandi'),
(30, '030', 'Baringo'),
(31, '031', 'Laikipia'),
(32, '032', 'Nakuru'),
(33, '033', 'Narok'),
(34, '034', 'Kajiada'),
(35, '035', 'Kericho'),
(36, '036', 'Bomet'),
(37, '037', 'Kakamega'),
(38, '038', 'Vihiga'),
(39, '039', 'Bungoma'),
(40, '040', 'Busia'),
(41, '041', 'Siaya'),
(42, '042', 'Kisumu'),
(43, '043', 'Homa Bay'),
(44, '044', 'Migori'),
(45, '045', 'Kisii'),
(46, '046', 'Nyamira'),
(47, '047', 'Nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cid` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `phone_number`, `email`, `title`, `cid`) VALUES
(1, '0720123456', 'cdf@butula.co.ke', 'Secretary', 'C218'),
(2, '0711345678', 'Support@butula.co.ke', 'IT Department', 'C218'),
(3, '0712345123', 'cdf@kisauni.co.ke', 'Help desk', 'C004'),
(4, '0734568790', 'support@kisauni.co.ke', 'Registrar', 'C004');

-- --------------------------------------------------------

--
-- Stand-in structure for view `enquiries_details`
-- (See below for the actual view)
--
CREATE TABLE `enquiries_details` (
`id` int(11)
,`phone_number` varchar(15)
,`email` varchar(50)
,`title` varchar(50)
,`cname` varchar(50)
,`phone` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `session_levels`
--

CREATE TABLE `session_levels` (
  `id` int(11) NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `phoneNumber` varchar(25) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_levels`
--

INSERT INTO `session_levels` (`id`, `session_id`, `phoneNumber`, `level`) VALUES
(1, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(2, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(3, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(4, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(5, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(6, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(7, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(8, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(9, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(10, 'ATUid_d57b017fa3896ca0e7db0b8ac89efa12', '+254728986084', 1),
(11, 'ATUid_64da1b7a54b8485305a4d70f865f62fd', '+254728986084', 1),
(12, 'ATUid_64da1b7a54b8485305a4d70f865f62fd', '+254728986084', 1),
(13, 'ATUid_cb8b1deea568e55a71f5668b04790416', '+254728986084', 1),
(14, 'ATUid_cb8b1deea568e55a71f5668b04790416', '+254728986084', 1),
(15, 'ATUid_2812090ff3cfa2fbe80c9ac47c3bb1f3', '+254728986084', 1),
(16, 'ATUid_2812090ff3cfa2fbe80c9ac47c3bb1f3', '+254728986084', 1),
(17, 'ATUid_68f91e9ed69bb4725574d1aa48ec31cd', '+254797432390', 1),
(18, 'ATUid_68f91e9ed69bb4725574d1aa48ec31cd', '+254797432390', 1),
(19, 'ATUid_68f91e9ed69bb4725574d1aa48ec31cd', '+254797432390', 1),
(20, 'ATUid_68f91e9ed69bb4725574d1aa48ec31cd', '+254797432390', 1),
(21, 'ATUid_68f91e9ed69bb4725574d1aa48ec31cd', '+254797432390', 1),
(22, 'ATUid_68f91e9ed69bb4725574d1aa48ec31cd', '+254797432390', 1),
(23, 'ATUid_68f91e9ed69bb4725574d1aa48ec31cd', '+254797432390', 1),
(24, 'ATUid_68f91e9ed69bb4725574d1aa48ec31cd', '+254797432390', 1),
(25, 'ATUid_8702301544fe8d972fe69488d38c2a4b', '+254728986084', 1),
(26, 'ATUid_8702301544fe8d972fe69488d38c2a4b', '+254728986084', 1),
(27, 'ATUid_37f8d6de468a54b5a6624937a9d2b2d2', '+254728986084', 1),
(28, 'ATUid_37f8d6de468a54b5a6624937a9d2b2d2', '+254728986084', 1),
(29, 'ATUid_08a24185743f45793cdeb2aa0f4141ea', '+254797432390', 1),
(30, 'ATUid_08a24185743f45793cdeb2aa0f4141ea', '+254797432390', 1),
(31, 'ATUid_f88ed2528f1a24123b5bfb18dc95c136', '+254797432390', 1),
(32, 'ATUid_f88ed2528f1a24123b5bfb18dc95c136', '+254797432390', 1),
(33, 'ATUid_f3a2a4ea5e26e2168d37377283f1cdb1', '+254797432390', 1),
(34, 'ATUid_f3a2a4ea5e26e2168d37377283f1cdb1', '+254797432390', 1),
(35, 'ATUid_f3a2a4ea5e26e2168d37377283f1cdb1', '+254797432390', 1),
(36, 'ATUid_f3a2a4ea5e26e2168d37377283f1cdb1', '+254797432390', 1),
(37, 'ATUid_f3a2a4ea5e26e2168d37377283f1cdb1', '+254797432390', 1),
(38, 'ATUid_f3a2a4ea5e26e2168d37377283f1cdb1', '+254797432390', 1),
(39, 'ATUid_f3a2a4ea5e26e2168d37377283f1cdb1', '+254797432390', 1),
(40, 'ATUid_f3a2a4ea5e26e2168d37377283f1cdb1', '+254797432390', 1),
(41, 'ATUid_b8a934239f12a25944b2fd1942f4d97e', '+254797432390', 1),
(42, 'ATUid_b8a934239f12a25944b2fd1942f4d97e', '+254797432390', 1),
(43, 'ATUid_b8a934239f12a25944b2fd1942f4d97e', '+254797432390', 1),
(44, 'ATUid_b8a934239f12a25944b2fd1942f4d97e', '+254797432390', 1),
(45, 'ATUid_b8a934239f12a25944b2fd1942f4d97e', '+254797432390', 1),
(46, 'ATUid_b8a934239f12a25944b2fd1942f4d97e', '+254797432390', 1),
(47, 'ATUid_16acf4cd1179e0ec9f7bbbc60a53bb73', '+254797432390', 1),
(48, 'ATUid_16acf4cd1179e0ec9f7bbbc60a53bb73', '+254797432390', 1),
(49, 'ATUid_ca3916e2dd2ad660c850867bd38320b8', '+254728986084', 1),
(50, 'ATUid_ca3916e2dd2ad660c850867bd38320b8', '+254728986084', 1),
(51, 'ATUid_ca3916e2dd2ad660c850867bd38320b8', '+254728986084', 1),
(52, 'ATUid_ca3916e2dd2ad660c850867bd38320b8', '+254728986084', 1),
(53, 'ATUid_0907373a51d0935224f5bdb25f94b01f', '+254728986084', 1),
(54, 'ATUid_0907373a51d0935224f5bdb25f94b01f', '+254728986084', 1),
(55, 'ATUid_1061e04df10b57292af982b1e6271fe0', '+254728986084', 1),
(56, 'ATUid_1061e04df10b57292af982b1e6271fe0', '+254728986084', 1),
(57, 'ATUid_eb55afcdeac38c65dcb7cdebf4ee93ee', '+254797432390', 1),
(58, 'ATUid_eb55afcdeac38c65dcb7cdebf4ee93ee', '+254797432390', 1),
(59, 'ATUid_eb55afcdeac38c65dcb7cdebf4ee93ee', '+254797432390', 1),
(60, 'ATUid_eb55afcdeac38c65dcb7cdebf4ee93ee', '+254797432390', 1),
(61, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(62, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(63, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(64, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(65, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(66, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(67, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(68, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(69, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(70, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(71, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(72, 'ATUid_630b9f44cca5b99af5e98a14aa896470', '+254703500738', 1),
(73, 'ATUid_e4e12f081b4d5c48b1ac1c815f673fc0', '+254728986084', 1),
(74, 'ATUid_e4e12f081b4d5c48b1ac1c815f673fc0', '+254728986084', 1),
(75, 'ATUid_c44898f812ffdd9a0fe9d83021575f8f', '+254728986084', 1),
(76, 'ATUid_c44898f812ffdd9a0fe9d83021575f8f', '+254728986084', 1),
(77, 'ATUid_ba486f99f115398f6fb69a55c19c1b5e', '+254728986084', 1),
(78, 'ATUid_ba486f99f115398f6fb69a55c19c1b5e', '+254728986084', 1),
(79, 'ATUid_6fb16abbc2d3cadaaf2d6a218d9156b4', '+254728986084', 1),
(80, 'ATUid_6fb16abbc2d3cadaaf2d6a218d9156b4', '+254728986084', 1),
(81, 'ATUid_580c57c2cded13827079729fffdd6773', '+254728986084', 1),
(82, 'ATUid_580c57c2cded13827079729fffdd6773', '+254728986084', 1),
(83, 'ATUid_afc0f5f0cd775a390566037f9faa790d', '+254728986084', 1),
(84, 'ATUid_afc0f5f0cd775a390566037f9faa790d', '+254728986084', 1),
(85, 'ATUid_afc0f5f0cd775a390566037f9faa790d', '+254728986084', 1),
(86, 'ATUid_afc0f5f0cd775a390566037f9faa790d', '+254728986084', 1),
(87, 'ATUid_e06908c2bf35858296a5634e80b2de5f', '+254728986084', 1),
(88, 'ATUid_e06908c2bf35858296a5634e80b2de5f', '+254728986084', 1),
(89, 'ATUid_d9f007ff8cf5b6d7c55bda29722a8192', '+254715060040', 1),
(90, 'ATUid_d9f007ff8cf5b6d7c55bda29722a8192', '+254715060040', 1),
(91, 'ATUid_03ede3e9285d88e1220c5bb260b95750', '+254703500738', 1),
(92, 'ATUid_03ede3e9285d88e1220c5bb260b95750', '+254703500738', 1),
(93, 'ATUid_12f38617004285787aee6387a13e139b', '+254722568388', 1),
(94, 'ATUid_12f38617004285787aee6387a13e139b', '+254722568388', 1),
(95, 'ATUid_28a8a3b315b4f1b551342d5f9a42fa17', '+254722568388', 1),
(96, 'ATUid_28a8a3b315b4f1b551342d5f9a42fa17', '+254722568388', 1),
(97, 'ATUid_28a8a3b315b4f1b551342d5f9a42fa17', '+254722568388', 1),
(98, 'ATUid_28a8a3b315b4f1b551342d5f9a42fa17', '+254722568388', 1),
(99, 'ATUid_28a8a3b315b4f1b551342d5f9a42fa17', '+254722568388', 1),
(100, 'ATUid_28a8a3b315b4f1b551342d5f9a42fa17', '+254722568388', 1),
(101, 'ATUid_ee432bde573c92d2d5ad8298c82ee6b8', '+254728986084', 1),
(102, 'ATUid_ee432bde573c92d2d5ad8298c82ee6b8', '+254728986084', 1),
(103, 'ATUid_f183c98c1de928c45dacc1e6744f0d52', '+254728986084', 1),
(104, 'ATUid_f183c98c1de928c45dacc1e6744f0d52', '+254728986084', 1),
(105, 'ATUid_0a6bddf8437e0b58bbec8a67b8f6f890', '+254728986084', 1),
(106, 'ATUid_0a6bddf8437e0b58bbec8a67b8f6f890', '+254728986084', 1),
(107, 'ATUid_a5ed2be2efe407270b64f6dca32444aa', '+254728986084', 1),
(108, 'ATUid_a5ed2be2efe407270b64f6dca32444aa', '+254728986084', 1),
(109, 'ATUid_5ad2e41d762b0b9afc0b773a4a31443d', '+254728986084', 1),
(110, 'ATUid_5ad2e41d762b0b9afc0b773a4a31443d', '+254728986084', 1),
(111, 'ATUid_3b145b9f4a67c8273e54b044c51bc319', '+254728986084', 1),
(112, 'ATUid_3b145b9f4a67c8273e54b044c51bc319', '+254728986084', 1),
(113, 'ATUid_3b145b9f4a67c8273e54b044c51bc319', '+254728986084', 1),
(114, 'ATUid_3b145b9f4a67c8273e54b044c51bc319', '+254728986084', 1),
(115, 'ATUid_3b145b9f4a67c8273e54b044c51bc319', '+254728986084', 1),
(116, 'ATUid_3b145b9f4a67c8273e54b044c51bc319', '+254728986084', 1),
(117, 'ATUid_fa7d9041fa1728efdc6ed93eb11e0bf2', '+254728986084', 1),
(118, 'ATUid_fa7d9041fa1728efdc6ed93eb11e0bf2', '+254728986084', 1),
(119, 'ATUid_d1da104211bab38aceab444866d04278', '+254728114693', 1),
(120, 'ATUid_d1da104211bab38aceab444866d04278', '+254728114693', 1),
(121, 'ATUid_9e97cd928759b917118fe4529b4914bd', '+254797432390', 1),
(122, 'ATUid_9e97cd928759b917118fe4529b4914bd', '+254797432390', 1),
(123, 'ATUid_9e97cd928759b917118fe4529b4914bd', '+254797432390', 1),
(124, 'ATUid_9e97cd928759b917118fe4529b4914bd', '+254797432390', 1),
(125, 'ATUid_51e666905ef615f960fcec2775b7c80b', '+254797432390', 1),
(126, 'ATUid_51e666905ef615f960fcec2775b7c80b', '+254797432390', 1),
(127, 'ATUid_51e666905ef615f960fcec2775b7c80b', '+254797432390', 1),
(128, 'ATUid_51e666905ef615f960fcec2775b7c80b', '+254797432390', 1),
(129, 'ATUid_46e4355b79d72d306f551027d8781531', '+254797432390', 1),
(130, 'ATUid_46e4355b79d72d306f551027d8781531', '+254797432390', 1),
(131, 'ATUid_8b8597ccc7aa2a3e5005152fbd196585', '+254722568388', 1),
(132, 'ATUid_8b8597ccc7aa2a3e5005152fbd196585', '+254722568388', 1),
(133, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(134, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(135, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(136, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(137, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(138, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(139, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(140, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(141, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(142, 'ATUid_74776be00177eb6f5bcfc209044ab216', '+254706792519', 1),
(143, 'ATUid_6f485dea07071adf0097a4306fd9e35e', '+254728986084', 1),
(144, 'ATUid_6f485dea07071adf0097a4306fd9e35e', '+254728986084', 1),
(145, 'ATUid_f40ac9c134e43eac7751fc675f47afe0', '+254728986084', 1),
(146, 'ATUid_f40ac9c134e43eac7751fc675f47afe0', '+254728986084', 1),
(147, 'ATUid_5de041ba856592a4279adc9df3941b02', '+254728986084', 1),
(148, 'ATUid_5de041ba856592a4279adc9df3941b02', '+254728986084', 1),
(149, 'ATUid_5de041ba856592a4279adc9df3941b02', '+254728986084', 1),
(150, 'ATUid_5de041ba856592a4279adc9df3941b02', '+254728986084', 1),
(151, 'ATUid_d3fabb4637ab45c82d0e9a15175527e5', '+254728986084', 1),
(152, 'ATUid_d3fabb4637ab45c82d0e9a15175527e5', '+254728986084', 1),
(153, 'ATUid_42d5655b9706be8f523fb236cdd66d59', '+254728986084', 1),
(154, 'ATUid_42d5655b9706be8f523fb236cdd66d59', '+254728986084', 1),
(155, 'ATUid_42d5655b9706be8f523fb236cdd66d59', '+254728986084', 1),
(156, 'ATUid_42d5655b9706be8f523fb236cdd66d59', '+254728986084', 1),
(157, 'ATUid_01c2388495fec1cb8f81a7acac0a6d3e', '+254728986084', 1),
(158, 'ATUid_01c2388495fec1cb8f81a7acac0a6d3e', '+254728986084', 1),
(159, 'ATUid_3b562fdc70c564d6531b203e52aaee21', '+254728986084', 1),
(160, 'ATUid_3b562fdc70c564d6531b203e52aaee21', '+254728986084', 1),
(161, 'ATUid_3e6a307f42c9eb00d0eb28cad4cad011', '+254728986084', 1),
(162, 'ATUid_3e6a307f42c9eb00d0eb28cad4cad011', '+254728986084', 1),
(163, 'ATUid_3e6a307f42c9eb00d0eb28cad4cad011', '+254728986084', 1),
(164, 'ATUid_3e6a307f42c9eb00d0eb28cad4cad011', '+254728986084', 1),
(165, 'ATUid_504ea6bdd37013e4b9d62882f025a7f4', '+254728986084', 1),
(166, 'ATUid_504ea6bdd37013e4b9d62882f025a7f4', '+254728986084', 1),
(167, 'ATUid_ad432f91f97d80df0d7100bffba68961', '+254728986084', 1),
(168, 'ATUid_ad432f91f97d80df0d7100bffba68961', '+254728986084', 1),
(169, 'ATUid_b670600f326c69cba17cd8a4a7e99809', '+254728986084', 1),
(170, 'ATUid_b670600f326c69cba17cd8a4a7e99809', '+254728986084', 1),
(171, 'ATUid_b670600f326c69cba17cd8a4a7e99809', '+254728986084', 1),
(172, 'ATUid_b670600f326c69cba17cd8a4a7e99809', '+254728986084', 1),
(173, 'ATUid_b670600f326c69cba17cd8a4a7e99809', '+254728986084', 1),
(174, 'ATUid_b670600f326c69cba17cd8a4a7e99809', '+254728986084', 1),
(175, 'ATUid_b670600f326c69cba17cd8a4a7e99809', '+254728986084', 1),
(176, 'ATUid_b670600f326c69cba17cd8a4a7e99809', '+254728986084', 1),
(177, 'ATUid_58a889b3e52c5f8fb99fe8bba9f124e4', '+254728986084', 1),
(178, 'ATUid_58a889b3e52c5f8fb99fe8bba9f124e4', '+254728986084', 1),
(179, 'ATUid_9611f23e4910bf27b64b503e827460fe', '+254728986084', 1),
(180, 'ATUid_9611f23e4910bf27b64b503e827460fe', '+254728986084', 1),
(181, 'ATUid_35e0c904de78bef7137311b1abc5f010', '+254728986084', 1),
(182, 'ATUid_35e0c904de78bef7137311b1abc5f010', '+254728986084', 1),
(183, 'ATUid_a7e361e12594e1aadc3360d4d42a7055', '+254728986084', 1),
(184, 'ATUid_a7e361e12594e1aadc3360d4d42a7055', '+254728986084', 1),
(185, 'ATUid_a5322c6887e95de4de15fdbb8ba4f3d7', '+254728986084', 1),
(186, 'ATUid_a5322c6887e95de4de15fdbb8ba4f3d7', '+254728986084', 1),
(187, 'ATUid_a5322c6887e95de4de15fdbb8ba4f3d7', '+254728986084', 1),
(188, 'ATUid_a5322c6887e95de4de15fdbb8ba4f3d7', '+254728986084', 1),
(189, 'ATUid_eb22ad425311b18dc242515813d8a67a', '+254728986084', 1),
(190, 'ATUid_eb22ad425311b18dc242515813d8a67a', '+254728986084', 1),
(191, 'ATUid_eb22ad425311b18dc242515813d8a67a', '+254728986084', 1),
(192, 'ATUid_eb22ad425311b18dc242515813d8a67a', '+254728986084', 1),
(193, 'ATUid_546c949409b3f3c7d0ca2cc529426160', '254746208816', 1),
(194, 'ATUid_546c949409b3f3c7d0ca2cc529426160', '254746208816', 1),
(195, 'ATUid_8486c05898f6a15e0244d799c5534f8a', '+254728986084', 1),
(196, 'ATUid_8486c05898f6a15e0244d799c5534f8a', '+254728986084', 1),
(197, 'ATUid_c170909d4dbb68fc172687f12603ac2d', '254746208816', 1),
(198, 'ATUid_c170909d4dbb68fc172687f12603ac2d', '254746208816', 1),
(199, 'ATUid_c170909d4dbb68fc172687f12603ac2d', '254746208816', 1),
(200, 'ATUid_c170909d4dbb68fc172687f12603ac2d', '254746208816', 1),
(201, 'ATUid_a8c2fa619e3a8b55cd68adf889bdfec9', '+254728986084', 1),
(202, 'ATUid_a8c2fa619e3a8b55cd68adf889bdfec9', '+254728986084', 1),
(203, 'ATUid_dc574e13a028ef511b7b40537bacf41f', '254746208816', 1),
(204, 'ATUid_dc574e13a028ef511b7b40537bacf41f', '254746208816', 1),
(205, 'ATUid_39841b9738d9a699349cb91755001bda', '+254728986084', 1),
(206, 'ATUid_39841b9738d9a699349cb91755001bda', '+254728986084', 1),
(207, 'ATUid_7bc82f96720a368c73f1c34a8fc43465', '254746208816', 1),
(208, 'ATUid_7bc82f96720a368c73f1c34a8fc43465', '254746208816', 1),
(209, 'ATUid_49bd73d6d80bef67adaaa98317777df0', '+254728500396', 1),
(210, 'ATUid_49bd73d6d80bef67adaaa98317777df0', '+254728500396', 1),
(211, 'ATUid_e9862e409bf0a42a015263f8c5f3edab', '+254728500396', 1),
(212, 'ATUid_e9862e409bf0a42a015263f8c5f3edab', '+254728500396', 1),
(213, 'ATUid_890a2ff18aa6dde8d97cf13eea013017', '+254728500396', 1),
(214, 'ATUid_890a2ff18aa6dde8d97cf13eea013017', '+254728500396', 1),
(215, 'ATUid_3e1c4165b54396114c48816ebb7f266e', '+254728500396', 1),
(216, 'ATUid_3e1c4165b54396114c48816ebb7f266e', '+254728500396', 1),
(217, 'ATUid_3e1c4165b54396114c48816ebb7f266e', '+254728500396', 1),
(218, 'ATUid_3e1c4165b54396114c48816ebb7f266e', '+254728500396', 1),
(219, 'ATUid_e7b620948ce3a72f98311e459405d471', '+254728500396', 1),
(220, 'ATUid_e7b620948ce3a72f98311e459405d471', '+254728500396', 1),
(221, 'ATUid_e7b620948ce3a72f98311e459405d471', '+254728500396', 1),
(222, 'ATUid_e7b620948ce3a72f98311e459405d471', '+254728500396', 1),
(223, 'ATUid_da8d9246af9cca5223b36bc13d7a91f3', '+254728500396', 1),
(224, 'ATUid_da8d9246af9cca5223b36bc13d7a91f3', '+254728500396', 1),
(225, 'ATUid_22116d1a9e139b37cb0c3172c0aadc6e', '+254728500396', 1),
(226, 'ATUid_22116d1a9e139b37cb0c3172c0aadc6e', '+254728500396', 1),
(227, 'ATUid_ea480b4f69768e9631af62013d244364', '+254728986084', 1),
(228, 'ATUid_ea480b4f69768e9631af62013d244364', '+254728986084', 1),
(229, 'ATUid_18dff12908f421431cd2d84bcde4a9c2', '+254728986084', 1),
(230, 'ATUid_18dff12908f421431cd2d84bcde4a9c2', '+254728986084', 1),
(231, 'ATUid_3bdbd280e77e7303d4e2194bc0497c9e', '+254728986084', 1),
(232, 'ATUid_3bdbd280e77e7303d4e2194bc0497c9e', '+254728986084', 1),
(233, 'ATUid_ae466905ecaa26d55997fce23c8c3d4e', '+254728986084', 1),
(234, 'ATUid_ae466905ecaa26d55997fce23c8c3d4e', '+254728986084', 1),
(235, 'ATUid_6441d3274f897e75af5087119628c0cf', '+254728986084', 1),
(236, 'ATUid_6441d3274f897e75af5087119628c0cf', '+254728986084', 1),
(237, 'ATUid_39d2a2b1eec07341c739253982248a36', '+254797432390', 1),
(238, 'ATUid_39d2a2b1eec07341c739253982248a36', '+254797432390', 1),
(239, 'ATUid_39d2a2b1eec07341c739253982248a36', '+254797432390', 1),
(240, 'ATUid_39d2a2b1eec07341c739253982248a36', '+254797432390', 1),
(241, 'ATUid_a8845e62a17ade30f18fbfd1c1d10b46', '+254797432390', 1),
(242, 'ATUid_a8845e62a17ade30f18fbfd1c1d10b46', '+254797432390', 1),
(243, 'ATUid_a8845e62a17ade30f18fbfd1c1d10b46', '+254797432390', 1),
(244, 'ATUid_a8845e62a17ade30f18fbfd1c1d10b46', '+254797432390', 1),
(245, 'ATUid_d0565acaa9d49485a0852d66628b3fd4', '+254797432390', 1),
(246, 'ATUid_d0565acaa9d49485a0852d66628b3fd4', '+254797432390', 1),
(247, 'ATUid_31feeb3d69fde65e9357a6f80f8706c5', '+254797432390', 1),
(248, 'ATUid_31feeb3d69fde65e9357a6f80f8706c5', '+254797432390', 1),
(249, 'ATUid_97f87aa1ff2eace80d4611b5785cdc8d', '+254797432390', 1),
(250, 'ATUid_97f87aa1ff2eace80d4611b5785cdc8d', '+254797432390', 1),
(251, 'ATUid_a710710a32d940716aa3994ef07e7dff', '+254721249695', 1),
(252, 'ATUid_a710710a32d940716aa3994ef07e7dff', '+254721249695', 1),
(253, 'ATUid_6406eb0c1d38d29607c574be7bd08ace', '+254741318440', 1),
(254, 'ATUid_6406eb0c1d38d29607c574be7bd08ace', '+254741318440', 1),
(255, 'ATUid_f5b4b170e1cb218d5d04ab7fd6173f9a', '+254741318440', 1),
(256, 'ATUid_f5b4b170e1cb218d5d04ab7fd6173f9a', '+254741318440', 1),
(257, 'ATUid_9505912d42b4e7efa5f90ba706358e8c', '+254741318440', 1),
(258, 'ATUid_9505912d42b4e7efa5f90ba706358e8c', '+254741318440', 1),
(259, 'ATUid_263d5a1c144fa7ebc46f9ab6f1482858', '+254797432390', 1),
(260, 'ATUid_263d5a1c144fa7ebc46f9ab6f1482858', '+254797432390', 1),
(261, 'ATUid_c719b9d06bd55aa563fa908fa9419035', '+254797432390', 1),
(262, 'ATUid_c719b9d06bd55aa563fa908fa9419035', '+254797432390', 1),
(263, 'ATUid_caa536763b52fae50b8c1dcaf0238f23', '+254721249695', 1),
(264, 'ATUid_caa536763b52fae50b8c1dcaf0238f23', '+254721249695', 1),
(265, 'ATUid_fa3962058340edd5ea81952e57d4a16f', '+254721878140', 1),
(266, 'ATUid_fa3962058340edd5ea81952e57d4a16f', '+254721878140', 1),
(267, 'ATUid_2996859cedacfc89557a300d1fe9d385', '+254797432390', 1),
(268, 'ATUid_2996859cedacfc89557a300d1fe9d385', '+254797432390', 1),
(269, 'ATUid_26e1385f6ab4a08bf089c59cc03bc635', '+254797432390', 1),
(270, 'ATUid_26e1385f6ab4a08bf089c59cc03bc635', '+254797432390', 1),
(271, 'ATUid_18959b6dfb3df3cdbb71f23bd0711070', '+254797432390', 1),
(272, 'ATUid_18959b6dfb3df3cdbb71f23bd0711070', '+254797432390', 1),
(273, 'ATUid_4eb1153ff363b88622a07b9b3829bfcc', '+254728986084', 1),
(274, 'ATUid_4eb1153ff363b88622a07b9b3829bfcc', '+254728986084', 1),
(275, 'ATUid_3e8198e6f80c1cbfb8268cdab896f688', '+254797432390', 1),
(276, 'ATUid_3e8198e6f80c1cbfb8268cdab896f688', '+254797432390', 1),
(277, 'ATUid_63db9f29bb85639fd33ff35214ce8a70', '+254797432390', 1),
(278, 'ATUid_63db9f29bb85639fd33ff35214ce8a70', '+254797432390', 1),
(279, 'ATUid_6f0a6471f67c9e5e846493f6900cc124', '+254797432390', 1),
(280, 'ATUid_6f0a6471f67c9e5e846493f6900cc124', '+254797432390', 1),
(281, 'ATUid_2b92253ad2b7b4cae18641e106ff2ad2', '+254728986084', 1),
(282, 'ATUid_2b92253ad2b7b4cae18641e106ff2ad2', '+254728986084', 1),
(283, 'ATUid_91cc1f8aaba477b7b19739058e42043f', '+254728986084', 1),
(284, 'ATUid_91cc1f8aaba477b7b19739058e42043f', '+254728986084', 1),
(285, 'ATUid_6ccf6b1b8d569170c03619a55c4a2bcf', '+254797432390', 1),
(286, 'ATUid_6ccf6b1b8d569170c03619a55c4a2bcf', '+254797432390', 1),
(287, 'ATUid_eff29e57fe63a5cce239f5316cdcb060', '+254728986084', 1),
(288, 'ATUid_eff29e57fe63a5cce239f5316cdcb060', '+254728986084', 1),
(289, 'ATUid_6a658b1cfffc11dc316bdd6b2b3c0a4d', '+254797432390', 1),
(290, 'ATUid_6a658b1cfffc11dc316bdd6b2b3c0a4d', '+254797432390', 1),
(291, 'ATUid_685b8b1e9fc20e39130d1b9a6cbe990b', '+254797432390', 1),
(292, 'ATUid_685b8b1e9fc20e39130d1b9a6cbe990b', '+254797432390', 1),
(293, 'ATUid_42cb42ae78521527cf4589d4936bbe26', '+254726401083', 1),
(294, 'ATUid_42cb42ae78521527cf4589d4936bbe26', '+254726401083', 1),
(295, 'ATUid_84b70b60a042663567dd417e1bdbec39', '+254728986084', 1),
(296, 'ATUid_84b70b60a042663567dd417e1bdbec39', '+254728986084', 1),
(297, 'ATUid_70b23f73396e106f297116bf0f892106', '+254728986084', 1),
(298, 'ATUid_70b23f73396e106f297116bf0f892106', '+254728986084', 1),
(299, 'ATUid_6bdc7283bae26cb42e614b338e00d8d3', '+254728986084', 1),
(300, 'ATUid_6bdc7283bae26cb42e614b338e00d8d3', '+254728986084', 1),
(301, 'ATUid_bd68cca831afc8a58df05dafc8f653ad', '+254701065011', 1),
(302, 'ATUid_bd68cca831afc8a58df05dafc8f653ad', '+254701065011', 1),
(303, 'ATUid_5716ed0156e8b9ab2b51eaf8f12dbbf7', '+254701065011', 1),
(304, 'ATUid_5716ed0156e8b9ab2b51eaf8f12dbbf7', '+254701065011', 1),
(305, 'ATUid_71a9420df7ddc7dc18a5f512883530e2', '+254701065011', 1),
(306, 'ATUid_71a9420df7ddc7dc18a5f512883530e2', '+254701065011', 1),
(307, 'ATUid_d8a9bf65250bede618940d34f0605dd2', '+254701065011', 1),
(308, 'ATUid_d8a9bf65250bede618940d34f0605dd2', '+254701065011', 1),
(309, 'ATUid_d8a9bf65250bede618940d34f0605dd2', '+254701065011', 1),
(310, 'ATUid_d8a9bf65250bede618940d34f0605dd2', '+254701065011', 1),
(311, 'ATUid_2f1d4f8e96aaf1e5175688f6876b5715', '+254701065011', 1),
(312, 'ATUid_2f1d4f8e96aaf1e5175688f6876b5715', '+254701065011', 1),
(313, 'ATUid_45fac98c6c9a953786ac4272442ab679', '+254701065011', 1),
(314, 'ATUid_45fac98c6c9a953786ac4272442ab679', '+254701065011', 1),
(315, 'ATUid_c80c7b069614b2fd527460db38f7f150', '+254701065011', 1),
(316, 'ATUid_c80c7b069614b2fd527460db38f7f150', '+254701065011', 1),
(317, 'ATUid_c80c7b069614b2fd527460db38f7f150', '+254701065011', 1),
(318, 'ATUid_c80c7b069614b2fd527460db38f7f150', '+254701065011', 1),
(319, 'ATUid_0bd1b6781bfb7e62cf88d4bd70d01052', '+254701065011', 1),
(320, 'ATUid_0bd1b6781bfb7e62cf88d4bd70d01052', '+254701065011', 1),
(321, 'ATUid_d9abab81221958d454a85c2a8add2e29', '+254701065011', 1),
(322, 'ATUid_d9abab81221958d454a85c2a8add2e29', '+254701065011', 1),
(323, 'ATUid_620c7690bb9ef3f9913afe3672e411fe', '+254797432390', 1),
(324, 'ATUid_620c7690bb9ef3f9913afe3672e411fe', '+254797432390', 1),
(325, 'ATUid_186a0ea7e6b9a796bae11eaf642987b8', '+254797432390', 1),
(326, 'ATUid_186a0ea7e6b9a796bae11eaf642987b8', '+254797432390', 1),
(327, 'ATUid_186a0ea7e6b9a796bae11eaf642987b8', '+254797432390', 1),
(328, 'ATUid_186a0ea7e6b9a796bae11eaf642987b8', '+254797432390', 1),
(329, 'ATUid_186a0ea7e6b9a796bae11eaf642987b8', '+254797432390', 1),
(330, 'ATUid_186a0ea7e6b9a796bae11eaf642987b8', '+254797432390', 1),
(331, 'ATUid_29fd66e091d9e41210af04bae5aecc20', '+254797432390', 1),
(332, 'ATUid_29fd66e091d9e41210af04bae5aecc20', '+254797432390', 1),
(333, 'ATUid_28d4dc16903dafdc718a7b01de44f97d', '+254797432390', 1),
(334, 'ATUid_28d4dc16903dafdc718a7b01de44f97d', '+254797432390', 1),
(335, 'ATUid_afeaa06546d49ab441a3dcbda7c44596', '+254797432390', 1),
(336, 'ATUid_afeaa06546d49ab441a3dcbda7c44596', '+254797432390', 1),
(337, 'ATUid_b92e5880ea0cf57d58c299d45855f1d0', '+254797432390', 1),
(338, 'ATUid_b92e5880ea0cf57d58c299d45855f1d0', '+254797432390', 1),
(339, 'ATUid_9acbb38e400ff966305633de5716ded3', '+254797432390', 1),
(340, 'ATUid_9acbb38e400ff966305633de5716ded3', '+254797432390', 1),
(341, 'ATUid_2578d57d615b0ab8d7bb5f348ba098f5', '+254797432390', 1),
(342, 'ATUid_2578d57d615b0ab8d7bb5f348ba098f5', '+254797432390', 1),
(343, 'ATUid_6cb4629dfc04f46b9df05d729e735466', '+254797432390', 1),
(344, 'ATUid_6cb4629dfc04f46b9df05d729e735466', '+254797432390', 1),
(345, 'ATUid_ef95ab445c27c17b4353ec95c9da6317', '+254797432390', 1),
(346, 'ATUid_ef95ab445c27c17b4353ec95c9da6317', '+254797432390', 1),
(347, 'ATUid_d77e437fd6bd6d0d9b3eda66f9a2ceb2', '+254797432390', 1),
(348, 'ATUid_d77e437fd6bd6d0d9b3eda66f9a2ceb2', '+254797432390', 1),
(349, 'ATUid_233f365013b1a75d795c08e51de35b06', '+254797432390', 1),
(350, 'ATUid_233f365013b1a75d795c08e51de35b06', '+254797432390', 1),
(351, 'ATUid_4bd6bb096389684ff46466d46384f995', '+254797432390', 1),
(352, 'ATUid_4bd6bb096389684ff46466d46384f995', '+254797432390', 1),
(353, 'ATUid_e52f79404468c7843272251c92c9ca61', '+254797432390', 1),
(354, 'ATUid_e52f79404468c7843272251c92c9ca61', '+254797432390', 1),
(355, 'ATUid_43ed171be5815f6f42de305953b6f736', '+254797432390', 1),
(356, 'ATUid_43ed171be5815f6f42de305953b6f736', '+254797432390', 1),
(357, 'ATUid_90161de459654da5b36730cc52d94bdd', '+254797432390', 1),
(358, 'ATUid_90161de459654da5b36730cc52d94bdd', '+254797432390', 1),
(359, 'ATUid_a41cc465555503c159e627a6ba515888', '+254797432390', 1),
(360, 'ATUid_a41cc465555503c159e627a6ba515888', '+254797432390', 1),
(361, 'ATUid_9d71e2f4413466d154c390bb537e8b79', '+254797432390', 1),
(362, 'ATUid_9d71e2f4413466d154c390bb537e8b79', '+254797432390', 1),
(363, 'ATUid_756af08b9ed217e288dccf884d2b8e26', '+254797432390', 1),
(364, 'ATUid_756af08b9ed217e288dccf884d2b8e26', '+254797432390', 1),
(365, 'ATUid_354df9704215c870394140119469be5e', '+254797432390', 1),
(366, 'ATUid_354df9704215c870394140119469be5e', '+254797432390', 1),
(367, 'ATUid_a8328127ca102c34338b53f8e6f10f56', '+254797432390', 1),
(368, 'ATUid_a8328127ca102c34338b53f8e6f10f56', '+254797432390', 1),
(369, 'ATUid_745f0e636d9e190152f5273e8d3735a4', '+254797432390', 1),
(370, 'ATUid_745f0e636d9e190152f5273e8d3735a4', '+254797432390', 1),
(371, 'ATUid_4993c30288981b3713059816b6197e89', '+254797432390', 1),
(372, 'ATUid_4993c30288981b3713059816b6197e89', '+254797432390', 1),
(373, 'ATUid_4993c30288981b3713059816b6197e89', '+254797432390', 1),
(374, 'ATUid_4993c30288981b3713059816b6197e89', '+254797432390', 1),
(375, 'ATUid_8c060304e90beb3cfdf101d835b08e1b', '+254797432390', 1),
(376, 'ATUid_8c060304e90beb3cfdf101d835b08e1b', '+254797432390', 1),
(377, 'ATUid_d788f2b5b61efd86dcb006cfb070e1e9', '+254797432390', 1),
(378, 'ATUid_d788f2b5b61efd86dcb006cfb070e1e9', '+254797432390', 1),
(379, 'ATUid_345a44db7165a21195e52711b833fb84', '+254797432390', 1),
(380, 'ATUid_345a44db7165a21195e52711b833fb84', '+254797432390', 1),
(381, 'ATUid_7e02d87201b5cba5b2125af632bb48a5', '+254797432390', 1),
(382, 'ATUid_7e02d87201b5cba5b2125af632bb48a5', '+254797432390', 1),
(383, 'ATUid_ade7b09828fb7e12a2144939d05cb3a8', '+254797432390', 1),
(384, 'ATUid_ade7b09828fb7e12a2144939d05cb3a8', '+254797432390', 1),
(385, 'ATUid_3691c1cf7a7e4013ca603be7a502ff53', '+254797432390', 1),
(386, 'ATUid_3691c1cf7a7e4013ca603be7a502ff53', '+254797432390', 1),
(387, 'ATUid_3cfccdc812faa82198176a08336f4422', '+254797432390', 1),
(388, 'ATUid_3cfccdc812faa82198176a08336f4422', '+254797432390', 1),
(389, 'ATUid_3f0ab31a0277124108b9fd693fe8d2c0', '+254797432390', 1),
(390, 'ATUid_3f0ab31a0277124108b9fd693fe8d2c0', '+254797432390', 1),
(391, 'ATUid_e52624835bf84a7a712a206721d0d0cd', '+254728986084', 1),
(392, 'ATUid_e52624835bf84a7a712a206721d0d0cd', '+254728986084', 1),
(393, 'ATUid_73185e7c4eec6d73ad6c439ae2e60955', '+254797432390', 1),
(394, 'ATUid_73185e7c4eec6d73ad6c439ae2e60955', '+254797432390', 1),
(395, 'ATUid_73185e7c4eec6d73ad6c439ae2e60955', '+254797432390', 1),
(396, 'ATUid_73185e7c4eec6d73ad6c439ae2e60955', '+254797432390', 1),
(397, 'ATUid_9cce13fba7d1b2bd0c372a4515c8d199', '+254797432390', 1),
(398, 'ATUid_9cce13fba7d1b2bd0c372a4515c8d199', '+254797432390', 1),
(399, 'ATUid_92c7ffe1bda15ae133e9b9d1783ce2e3', '+254797432390', 1),
(400, 'ATUid_92c7ffe1bda15ae133e9b9d1783ce2e3', '+254797432390', 1),
(401, 'ATUid_4e3b26b305fc28bebaee58faea8ffd33', '+254797432390', 1),
(402, 'ATUid_4e3b26b305fc28bebaee58faea8ffd33', '+254797432390', 1),
(403, 'ATUid_9b7a9ab7062397614cce094d202a13a4', '+254797432390', 1),
(404, 'ATUid_9b7a9ab7062397614cce094d202a13a4', '+254797432390', 1),
(405, 'ATUid_6db8573f69a7c142283a1e4409ca3128', '+254797432390', 1),
(406, 'ATUid_6db8573f69a7c142283a1e4409ca3128', '+254797432390', 1),
(407, 'ATUid_dff4c2d86ef2127e2e5319ac83105876', '+254797432390', 1),
(408, 'ATUid_dff4c2d86ef2127e2e5319ac83105876', '+254797432390', 1),
(409, 'ATUid_e805c2c60f6eacd50bc1d4b266fb3260', '+254797432390', 1),
(410, 'ATUid_e805c2c60f6eacd50bc1d4b266fb3260', '+254797432390', 1),
(411, 'ATUid_bdeab23015120684c2a704102269e335', '+254797432390', 1),
(412, 'ATUid_bdeab23015120684c2a704102269e335', '+254797432390', 1),
(413, 'ATUid_81234ab5920508bb1f1b9da2d8766001', '+254797432390', 1),
(414, 'ATUid_2fef59b9884ba35490aaf5b70e8b829b', '+254728986084', 1),
(415, 'ATUid_81234ab5920508bb1f1b9da2d8766001', '+254797432390', 1),
(416, 'ATUid_2fef59b9884ba35490aaf5b70e8b829b', '+254728986084', 1),
(417, 'ATUid_c6dae3b254da880ff12f77d4aaaeb91d', '+254716140741', 1),
(418, 'ATUid_c6dae3b254da880ff12f77d4aaaeb91d', '+254716140741', 1),
(419, 'ATUid_d156763c6ed1a535cb3562ca1e8907f9', '+254718676721', 1),
(420, 'ATUid_d156763c6ed1a535cb3562ca1e8907f9', '+254718676721', 1),
(421, 'ATUid_a3aec67bade1bb752fbdd454826d1803', '+254718676721', 1),
(422, 'ATUid_a3aec67bade1bb752fbdd454826d1803', '+254718676721', 1),
(423, 'ATUid_7e4ffa25468917b058717f300b732cc7', '+254718676721', 1),
(424, 'ATUid_7e4ffa25468917b058717f300b732cc7', '+254718676721', 1),
(425, 'ATUid_7e4ffa25468917b058717f300b732cc7', '+254718676721', 1),
(426, 'ATUid_7e4ffa25468917b058717f300b732cc7', '+254718676721', 1),
(427, 'ATUid_7e4ffa25468917b058717f300b732cc7', '+254718676721', 1),
(428, 'ATUid_7e4ffa25468917b058717f300b732cc7', '+254718676721', 1),
(429, 'ATUid_7e4ffa25468917b058717f300b732cc7', '+254718676721', 1),
(430, 'ATUid_7e4ffa25468917b058717f300b732cc7', '+254718676721', 1),
(431, 'ATUid_72d780e2878530e1a4bfb9ae758ccc2b', '+254718676721', 1),
(432, 'ATUid_72d780e2878530e1a4bfb9ae758ccc2b', '+254718676721', 1),
(433, 'ATUid_72d780e2878530e1a4bfb9ae758ccc2b', '+254718676721', 1),
(434, 'ATUid_72d780e2878530e1a4bfb9ae758ccc2b', '+254718676721', 1),
(435, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(436, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(437, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(438, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(439, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(440, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(441, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(442, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(443, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(444, 'ATUid_c9fdaa20eebf89ad4ad981c7fdb444b7', '+254718676721', 1),
(445, 'ATUid_94c4fc485e122f2e317641159c20374a', '+254718676721', 1),
(446, 'ATUid_94c4fc485e122f2e317641159c20374a', '+254718676721', 1),
(447, 'ATUid_9b56b2999002259cc627df9515fee8e2', '+254728986084', 1),
(448, 'ATUid_9b56b2999002259cc627df9515fee8e2', '+254728986084', 1),
(449, 'ATUid_29480da1475641a9ba337fcb0ad87e41', '+254728986084', 1),
(450, 'ATUid_29480da1475641a9ba337fcb0ad87e41', '+254728986084', 1),
(451, 'ATUid_cd6dfe514f5eadcafe66e530ce1377a9', '+254728986084', 1),
(452, 'ATUid_cd6dfe514f5eadcafe66e530ce1377a9', '+254728986084', 1),
(453, 'ATUid_719ea2971ab28665e25d06cd1b9685a2', '+254728986084', 1),
(454, 'ATUid_719ea2971ab28665e25d06cd1b9685a2', '+254728986084', 1),
(455, 'ATUid_f49e5f516f81e32c41c8fd25b917bf27', '+254728986084', 1),
(456, 'ATUid_f49e5f516f81e32c41c8fd25b917bf27', '+254728986084', 1),
(457, 'ATUid_d6896c6923c8b62f9b54133c46a448ce', '+254797432390', 1),
(458, 'ATUid_d6896c6923c8b62f9b54133c46a448ce', '+254797432390', 1),
(459, 'ATUid_ab2b797edd81695e9332d709370c825a', '+254797432390', 1),
(460, 'ATUid_ab2b797edd81695e9332d709370c825a', '+254797432390', 1),
(461, 'ATUid_d1828557d7efd186d526c94e8637b0e6', '+254797432390', 1),
(462, 'ATUid_d1828557d7efd186d526c94e8637b0e6', '+254797432390', 1),
(463, 'ATUid_a3cfb0eba16c2a19c98f256e0d85c231', '+254728986084', 1),
(464, 'ATUid_a3cfb0eba16c2a19c98f256e0d85c231', '+254728986084', 1),
(465, 'ATUid_9c1388315122461d68cb2ff676755a5e', '+254728986084', 1),
(466, 'ATUid_9c1388315122461d68cb2ff676755a5e', '+254728986084', 1),
(467, 'ATUid_24c9ce46fad196a41632485a5fefc2bc', '+254728986084', 1),
(468, 'ATUid_24c9ce46fad196a41632485a5fefc2bc', '+254728986084', 1),
(469, 'ATUid_6ceb12fe346a2b78ab994c24f36d1219', '+254728986084', 1),
(470, 'ATUid_6ceb12fe346a2b78ab994c24f36d1219', '+254728986084', 1),
(471, 'ATUid_82d2f63cc8f58d6a9882b041a7c61af0', '+254728986084', 1),
(472, 'ATUid_82d2f63cc8f58d6a9882b041a7c61af0', '+254728986084', 1),
(473, 'ATUid_eee659df0b499b27a76b6eb8ed2bd791', '+254728986084', 1),
(474, 'ATUid_eee659df0b499b27a76b6eb8ed2bd791', '+254728986084', 1),
(475, 'ATUid_dd69dd9764112124ade1c8dd31a3ca49', '+254728986084', 1),
(476, 'ATUid_dd69dd9764112124ade1c8dd31a3ca49', '+254728986084', 1),
(477, 'ATUid_71535de1280d37db1f6cdf44505ea48d', '+254728986084', 1),
(478, 'ATUid_71535de1280d37db1f6cdf44505ea48d', '+254728986084', 1),
(479, 'ATUid_71535de1280d37db1f6cdf44505ea48d', '+254728986084', 1),
(480, 'ATUid_71535de1280d37db1f6cdf44505ea48d', '+254728986084', 1),
(481, 'ATUid_ad7a1ba9fe3078e4828429eeb8adff03', '+254728986084', 1),
(482, 'ATUid_ad7a1ba9fe3078e4828429eeb8adff03', '+254728986084', 1),
(483, 'ATUid_ad7a1ba9fe3078e4828429eeb8adff03', '+254728986084', 1),
(484, 'ATUid_ad7a1ba9fe3078e4828429eeb8adff03', '+254728986084', 1),
(485, 'ATUid_ad7a1ba9fe3078e4828429eeb8adff03', '+254728986084', 1),
(486, 'ATUid_ad7a1ba9fe3078e4828429eeb8adff03', '+254728986084', 1),
(487, 'ATUid_c125f2af1722030e3fb70052b0bd23e3', '+254728986084', 1),
(488, 'ATUid_c125f2af1722030e3fb70052b0bd23e3', '+254728986084', 1),
(489, 'ATUid_b95ddaa794ad5086cd37bedf2db5bebe', '+254728986084', 1),
(490, 'ATUid_b95ddaa794ad5086cd37bedf2db5bebe', '+254728986084', 1),
(491, 'ATUid_8522163aaabe2b0301a4d7c44d954d14', '+254706792519', 1),
(492, 'ATUid_8522163aaabe2b0301a4d7c44d954d14', '+254706792519', 1),
(493, 'ATUid_38836ea5e87e319bae06f7e6c9441cf9', '+254728986084', 1),
(494, 'ATUid_38836ea5e87e319bae06f7e6c9441cf9', '+254728986084', 1),
(495, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(496, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(497, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(498, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(499, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(500, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(501, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(502, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(503, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(504, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(505, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(506, 'ATUid_c1736010882e74a1d7cc72d20a2b57f1', '+254728986084', 1),
(507, 'ATUid_3cdcb97ae7b7aeab20a8ee2a0b644e28', '+254728986084', 1),
(508, 'ATUid_3cdcb97ae7b7aeab20a8ee2a0b644e28', '+254728986084', 1),
(509, '123456', '+254728986084', 1),
(510, '123456', '+254728986084', 1),
(511, '123456', '+254728986084', 1),
(512, '123456', '+254728986084', 1),
(513, '123456', '+254728986084', 1),
(514, '123456', '+254728986084', 1),
(515, '123456', '+254728986084', 1),
(516, '123456', '+254728986084', 1),
(517, '123456', '+254728986084', 1),
(518, '123456', '+254728986084', 1),
(519, '123456', '+254728986084', 1),
(520, '123456', '+254728986084', 1),
(521, '123456', '+254728986084', 1),
(522, '123456', '+254728986084', 1),
(523, 'ATUid_9f1519f3409d0ab6702152de5ecc0a31', '+254728986084', 1),
(524, 'ATUid_9f1519f3409d0ab6702152de5ecc0a31', '+254728986084', 1),
(525, 'ATUid_9f1519f3409d0ab6702152de5ecc0a31', '+254728986084', 1),
(526, 'ATUid_9f1519f3409d0ab6702152de5ecc0a31', '+254728986084', 1),
(527, 'ATUid_9f1519f3409d0ab6702152de5ecc0a31', '+254728986084', 1),
(528, 'ATUid_9f1519f3409d0ab6702152de5ecc0a31', '+254728986084', 1),
(529, 'ATUid_331dde11cd54bcc414f23f2dbb6801e3', '+254728986084', 1),
(530, 'ATUid_331dde11cd54bcc414f23f2dbb6801e3', '+254728986084', 1),
(531, 'ATUid_4badcd6c9c74ae9a5963b2c6742f7e34', '+254728986084', 1),
(532, 'ATUid_4badcd6c9c74ae9a5963b2c6742f7e34', '+254728986084', 1),
(533, 'ATUid_4badcd6c9c74ae9a5963b2c6742f7e34', '+254728986084', 1),
(534, 'ATUid_4badcd6c9c74ae9a5963b2c6742f7e34', '+254728986084', 1),
(535, 'ATUid_4badcd6c9c74ae9a5963b2c6742f7e34', '+254728986084', 1),
(536, 'ATUid_4badcd6c9c74ae9a5963b2c6742f7e34', '+254728986084', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `adm` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `cid` varchar(4) NOT NULL,
  `county_id` varchar(3) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `othernames` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `class` varchar(20) NOT NULL,
  `school` varchar(50) NOT NULL,
  `approved` varchar(50) NOT NULL,
  `date_approved` date NOT NULL,
  `bursary_awarded` decimal(10,0) NOT NULL,
  `disbursement_status` varchar(100) NOT NULL,
  `date_sent` date NOT NULL,
  `family_information` varchar(50) NOT NULL,
  `reg_date` datetime NOT NULL,
  `pin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `adm`, `year`, `cid`, `county_id`, `surname`, `othernames`, `phone`, `dob`, `class`, `school`, `approved`, `date_approved`, `bursary_awarded`, `disbursement_status`, `date_sent`, `family_information`, `reg_date`, `pin`) VALUES
(1, '2100', 2018, 'C004', '001', 'Okello', 'Divina Anyango', '+254797432390', '2001-02-24', 'FORM 4', 'Kisauni High', 'Approved', '2018-03-23', '15000', 'Already sent to your school', '2018-03-23', 'Orphan', '2018-02-10 12:00:00', 0),
(2, '2101', 2018, 'C218', '040', 'Makau', 'Dovena Dobele', '+254728986084', '2018-12-11', 'FORM 4', 'Busiada Girls', 'Approved', '2018-02-10', '34000', 'Already sent to your school', '2018-02-11', 'One parent alive', '2018-02-10 13:34:00', 0),
(3, '3071', 2018, 'C218', '040', 'Maria', 'Della Dobele', '+254706792519', '1995-03-23', 'FORM 4', 'Busiada Girls', 'Approved', '2018-03-09', '20000', 'Not sent to your school', '2018-03-09', 'Orphan', '2018-03-09 00:00:00', 4725),
(4, '2102', 2018, 'C218', '040', 'Akinyi', 'Peninnah Shanta', '+254720234587', '2000-02-12', 'Year 1', 'Masinde Muliro University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(5, '2103', 2018, 'C218', '040', 'Nabwire', 'Mary', '+254720234589', '2000-02-12', 'Year 2', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(6, '2104', 2018, 'C218', '040', 'Ouma', 'Paul Owino', '+254720234589', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(7, '2105', 2018, 'C218', '040', 'Kimani', 'Jacinta', '+254720234590', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(8, '2103', 2018, 'C218', '040', 'Nabara', 'Faith', '+254720234589', '2000-02-12', 'Year 2', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(9, '2104', 2018, 'C218', '040', 'Otieno', 'Jackson', '+254720234589', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(10, '2105', 2018, 'C218', '040', 'Kuria', 'Bob', '+254720234590', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(11, '2106', 2018, 'C218', '040', 'Wachira', 'Simon', '+254720234570', '2000-02-12', 'Year 2', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(12, '2107', 2018, 'C218', '040', 'Oyoo', 'Patience', '+254720234571', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(13, '2108', 2018, 'C218', '040', 'Kamau', 'Graham', '+254720234572', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(14, '2109', 2018, 'C218', '040', 'Nabwire', 'Susan', '+254720234573', '2000-02-12', 'Year 2', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(15, '2111', 2018, 'C218', '040', 'Nandwa', 'Dennis', '+254720234574', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(16, '2112', 2018, 'C218', '040', 'Kimani', 'George', '+254720234575', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(17, '2113', 2018, 'C218', '040', 'Njeri', 'Eunice', '+254720234576', '2000-02-12', 'Year 2', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(18, '2114', 2018, 'C218', '040', 'Ouma', 'James', '+254720234577', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(19, '2115', 2018, 'C218', '040', 'Sadat', 'Tom', '+254720234578', '2000-02-12', 'Year 3', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0),
(20, '2116', 2018, 'C218', '040', 'Mayaka', 'Bramwel', '+254720234579', '2000-02-12', 'Year 2', 'Kibabii University', 'Approved', '2018-04-03', '50000', 'Already sent to your school', '2018-04-03', 'One parent alive', '2018-04-08 00:00:00', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_details`
-- (See below for the actual view)
--
CREATE TABLE `student_details` (
`id` int(11)
,`adm` varchar(10)
,`year` int(4)
,`cname` varchar(50)
,`countyname` varchar(20)
,`surname` varchar(20)
,`othernames` varchar(50)
,`phone` varchar(50)
,`dob` date
,`class` varchar(20)
,`school` varchar(50)
,`approved` varchar(50)
,`date_approved` date
,`bursary_awarded` decimal(10,0)
,`disbursement_status` varchar(100)
,`date_sent` date
,`family_information` varchar(50)
,`reg_date` datetime
,`pin` int(4)
);

-- --------------------------------------------------------

--
-- Structure for view `cdf_news_details`
--
DROP TABLE IF EXISTS `cdf_news_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cdf_news_details`  AS  select `cdf_news`.`id` AS `id`,`cdf_news`.`title` AS `title`,`cdf_news`.`description` AS `description`,`constituencies`.`cname` AS `cname`,`students`.`phone` AS `phone`,`cdf_news`.`date_posted` AS `date_posted` from ((`cdf_news` join `constituencies`) join `students`) where ((`cdf_news`.`cid` = `constituencies`.`cid`) and (`students`.`cid` = `constituencies`.`cid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `enquiries_details`
--
DROP TABLE IF EXISTS `enquiries_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `enquiries_details`  AS  select `enquiries`.`id` AS `id`,`enquiries`.`phone_number` AS `phone_number`,`enquiries`.`email` AS `email`,`enquiries`.`title` AS `title`,`constituencies`.`cname` AS `cname`,`students`.`phone` AS `phone` from ((`enquiries` join `constituencies`) join `students`) where ((`enquiries`.`cid` = `constituencies`.`cid`) and (`students`.`cid` = `constituencies`.`cid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `student_details`
--
DROP TABLE IF EXISTS `student_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_details`  AS  select `students`.`id` AS `id`,`students`.`adm` AS `adm`,`students`.`year` AS `year`,`constituencies`.`cname` AS `cname`,`counties`.`countyname` AS `countyname`,`students`.`surname` AS `surname`,`students`.`othernames` AS `othernames`,`students`.`phone` AS `phone`,`students`.`dob` AS `dob`,`students`.`class` AS `class`,`students`.`school` AS `school`,`students`.`approved` AS `approved`,`students`.`date_approved` AS `date_approved`,`students`.`bursary_awarded` AS `bursary_awarded`,`students`.`disbursement_status` AS `disbursement_status`,`students`.`date_sent` AS `date_sent`,`students`.`family_information` AS `family_information`,`students`.`reg_date` AS `reg_date`,`students`.`pin` AS `pin` from ((`students` join `constituencies`) join `counties`) where ((`students`.`cid` = `constituencies`.`cid`) and (`students`.`county_id` = `counties`.`countyid`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cdf_news`
--
ALTER TABLE `cdf_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constituencies`
--
ALTER TABLE `constituencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_levels`
--
ALTER TABLE `session_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cdf_news`
--
ALTER TABLE `cdf_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `constituencies`
--
ALTER TABLE `constituencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session_levels`
--
ALTER TABLE `session_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=537;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
