-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 04:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smsigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `attendance_type` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `attendance_type`, `student_id`, `teacher_id`, `class_id`, `section_id`, `attendance_date`, `mark`) VALUES
(1, 2, 0, 1, 0, 0, '2019-01-02', 1),
(2, 2, 0, 1, 0, 0, '2019-01-10', 1),
(3, 1, 0, 0, 10, 3, '2021-06-11', 1),
(4, 2, 0, 2, 0, 0, '2021-06-11', 1),
(5, 2, 0, 4, 0, 0, '2021-06-11', 1),
(6, 2, 0, 2, 0, 0, '2021-06-01', 3),
(7, 2, 0, 4, 0, 0, '2021-06-01', 1),
(8, 2, 0, 2, 0, 0, '2021-06-02', 1),
(9, 2, 0, 4, 0, 0, '2021-06-02', 1),
(10, 2, 0, 2, 0, 0, '2021-06-03', 2),
(11, 2, 0, 4, 0, 0, '2021-06-03', 1),
(12, 2, 0, 2, 0, 0, '2021-06-04', 1),
(13, 2, 0, 4, 0, 0, '2021-06-04', 1),
(14, 2, 0, 2, 0, 0, '2021-06-05', 2),
(15, 2, 0, 4, 0, 0, '2021-06-05', 2),
(16, 2, 0, 2, 0, 0, '2021-06-06', 1),
(17, 2, 0, 4, 0, 0, '2021-06-06', 3),
(18, 2, 0, 2, 0, 0, '2021-06-07', 1),
(19, 2, 0, 4, 0, 0, '2021-06-07', 1),
(20, 2, 0, 2, 0, 0, '2021-06-08', 1),
(21, 2, 0, 4, 0, 0, '2021-06-08', 1),
(22, 2, 0, 2, 0, 0, '2021-06-09', 2),
(23, 2, 0, 4, 0, 0, '2021-06-09', 3),
(24, 2, 0, 2, 0, 0, '2021-06-10', 3),
(25, 2, 0, 4, 0, 0, '2021-06-10', 3),
(28, 2, 0, 5, 0, 0, '2021-06-01', 1),
(29, 2, 0, 6, 0, 0, '2021-06-01', 1),
(30, 2, 0, 7, 0, 0, '2021-06-01', 2),
(31, 2, 0, 8, 0, 0, '2021-06-01', 2),
(32, 2, 0, 9, 0, 0, '2021-06-01', 1),
(33, 2, 0, 10, 0, 0, '2021-06-01', 1),
(34, 2, 0, 11, 0, 0, '2021-06-01', 1),
(35, 2, 0, 12, 0, 0, '2021-06-01', 3),
(36, 2, 0, 13, 0, 0, '2021-06-01', 1),
(39, 2, 0, 5, 0, 0, '2021-06-02', 3),
(40, 2, 0, 6, 0, 0, '2021-06-02', 1),
(41, 2, 0, 7, 0, 0, '2021-06-02', 2),
(42, 2, 0, 8, 0, 0, '2021-06-02', 1),
(43, 2, 0, 9, 0, 0, '2021-06-02', 1),
(44, 2, 0, 10, 0, 0, '2021-06-02', 1),
(45, 2, 0, 11, 0, 0, '2021-06-02', 3),
(46, 2, 0, 12, 0, 0, '2021-06-02', 2),
(47, 2, 0, 13, 0, 0, '2021-06-02', 2),
(50, 2, 0, 5, 0, 0, '2021-06-03', 1),
(51, 2, 0, 6, 0, 0, '2021-06-03', 1),
(52, 2, 0, 7, 0, 0, '2021-06-03', 1),
(53, 2, 0, 8, 0, 0, '2021-06-03', 3),
(54, 2, 0, 9, 0, 0, '2021-06-03', 1),
(55, 2, 0, 10, 0, 0, '2021-06-03', 3),
(56, 2, 0, 11, 0, 0, '2021-06-03', 1),
(57, 2, 0, 12, 0, 0, '2021-06-03', 1),
(58, 2, 0, 13, 0, 0, '2021-06-03', 3),
(61, 2, 0, 5, 0, 0, '2021-06-04', 2),
(62, 2, 0, 6, 0, 0, '2021-06-04', 3),
(63, 2, 0, 7, 0, 0, '2021-06-04', 1),
(64, 2, 0, 8, 0, 0, '2021-06-04', 1),
(65, 2, 0, 9, 0, 0, '2021-06-04', 1),
(66, 2, 0, 10, 0, 0, '2021-06-04', 1),
(67, 2, 0, 11, 0, 0, '2021-06-04', 1),
(68, 2, 0, 12, 0, 0, '2021-06-04', 1),
(69, 2, 0, 13, 0, 0, '2021-06-04', 1),
(72, 2, 0, 5, 0, 0, '2021-06-05', 2),
(73, 2, 0, 6, 0, 0, '2021-06-05', 2),
(74, 2, 0, 7, 0, 0, '2021-06-05', 2),
(75, 2, 0, 8, 0, 0, '2021-06-05', 2),
(76, 2, 0, 9, 0, 0, '2021-06-05', 2),
(77, 2, 0, 10, 0, 0, '2021-06-05', 2),
(78, 2, 0, 11, 0, 0, '2021-06-05', 2),
(79, 2, 0, 12, 0, 0, '2021-06-05', 2),
(80, 2, 0, 13, 0, 0, '2021-06-05', 2),
(83, 2, 0, 5, 0, 0, '2021-06-06', 1),
(84, 2, 0, 6, 0, 0, '2021-06-06', 1),
(85, 2, 0, 7, 0, 0, '2021-06-06', 1),
(86, 2, 0, 8, 0, 0, '2021-06-06', 3),
(87, 2, 0, 9, 0, 0, '2021-06-06', 1),
(88, 2, 0, 10, 0, 0, '2021-06-06', 1),
(89, 2, 0, 11, 0, 0, '2021-06-06', 1),
(90, 2, 0, 12, 0, 0, '2021-06-06', 1),
(91, 2, 0, 13, 0, 0, '2021-06-06', 1),
(94, 2, 0, 5, 0, 0, '2021-06-07', 1),
(95, 2, 0, 6, 0, 0, '2021-06-07', 3),
(96, 2, 0, 7, 0, 0, '2021-06-07', 1),
(97, 2, 0, 8, 0, 0, '2021-06-07', 3),
(98, 2, 0, 9, 0, 0, '2021-06-07', 1),
(99, 2, 0, 10, 0, 0, '2021-06-07', 1),
(100, 2, 0, 11, 0, 0, '2021-06-07', 2),
(101, 2, 0, 12, 0, 0, '2021-06-07', 1),
(102, 2, 0, 13, 0, 0, '2021-06-07', 1),
(105, 2, 0, 5, 0, 0, '2021-06-08', 1),
(106, 2, 0, 6, 0, 0, '2021-06-08', 1),
(107, 2, 0, 7, 0, 0, '2021-06-08', 3),
(108, 2, 0, 8, 0, 0, '2021-06-08', 1),
(109, 2, 0, 9, 0, 0, '2021-06-08', 1),
(110, 2, 0, 10, 0, 0, '2021-06-08', 1),
(111, 2, 0, 11, 0, 0, '2021-06-08', 1),
(112, 2, 0, 12, 0, 0, '2021-06-08', 1),
(113, 2, 0, 13, 0, 0, '2021-06-08', 1),
(116, 2, 0, 5, 0, 0, '2021-06-09', 1),
(117, 2, 0, 6, 0, 0, '2021-06-09', 1),
(118, 2, 0, 7, 0, 0, '2021-06-09', 1),
(119, 2, 0, 8, 0, 0, '2021-06-09', 1),
(120, 2, 0, 9, 0, 0, '2021-06-09', 1),
(121, 2, 0, 10, 0, 0, '2021-06-09', 1),
(122, 2, 0, 11, 0, 0, '2021-06-09', 1),
(123, 2, 0, 12, 0, 0, '2021-06-09', 3),
(124, 2, 0, 13, 0, 0, '2021-06-09', 1),
(127, 2, 0, 5, 0, 0, '2021-06-10', 1),
(128, 2, 0, 6, 0, 0, '2021-06-10', 1),
(129, 2, 0, 7, 0, 0, '2021-06-10', 1),
(130, 2, 0, 8, 0, 0, '2021-06-10', 2),
(131, 2, 0, 9, 0, 0, '2021-06-10', 1),
(132, 2, 0, 10, 0, 0, '2021-06-10', 3),
(133, 2, 0, 11, 0, 0, '2021-06-10', 1),
(134, 2, 0, 12, 0, 0, '2021-06-10', 1),
(135, 2, 0, 13, 0, 0, '2021-06-10', 2),
(138, 2, 0, 5, 0, 0, '2021-06-11', 1),
(139, 2, 0, 6, 0, 0, '2021-06-11', 2),
(140, 2, 0, 7, 0, 0, '2021-06-11', 2),
(141, 2, 0, 8, 0, 0, '2021-06-11', 3),
(142, 2, 0, 9, 0, 0, '2021-06-11', 1),
(143, 2, 0, 10, 0, 0, '2021-06-11', 1),
(144, 2, 0, 11, 0, 0, '2021-06-11', 1),
(145, 2, 0, 12, 0, 0, '2021-06-11', 1),
(146, 2, 0, 13, 0, 0, '2021-06-11', 1),
(147, 1, 3, 0, 9, 6, '2021-06-01', 1),
(148, 1, 5, 0, 9, 6, '2021-06-01', 1),
(149, 1, 3, 0, 9, 6, '2021-06-02', 1),
(150, 1, 5, 0, 9, 6, '2021-06-02', 3),
(151, 1, 3, 0, 9, 6, '2021-06-03', 1),
(152, 1, 5, 0, 9, 6, '2021-06-03', 1),
(153, 1, 3, 0, 9, 6, '2021-06-04', 1),
(154, 1, 5, 0, 9, 6, '2021-06-04', 2),
(155, 1, 3, 0, 9, 6, '2021-06-05', 2),
(156, 1, 5, 0, 9, 6, '2021-06-05', 2),
(157, 1, 3, 0, 9, 6, '2021-06-06', 1),
(158, 1, 5, 0, 9, 6, '2021-06-06', 3),
(159, 1, 3, 0, 9, 6, '2021-06-07', 1),
(160, 1, 5, 0, 9, 6, '2021-06-07', 1),
(161, 1, 3, 0, 9, 6, '2021-06-08', 1),
(162, 1, 5, 0, 9, 6, '2021-06-08', 1),
(163, 1, 3, 0, 9, 6, '2021-06-09', 2),
(164, 1, 5, 0, 9, 6, '2021-06-09', 3),
(165, 1, 3, 0, 9, 6, '2021-06-10', 1),
(166, 1, 5, 0, 9, 6, '2021-06-10', 1),
(168, 1, 1, 0, 10, 3, '2021-06-01', 3),
(169, 1, 1, 0, 10, 3, '2021-06-02', 1),
(170, 1, 1, 0, 10, 3, '2021-06-03', 3),
(171, 1, 1, 0, 10, 3, '2021-06-04', 1),
(172, 1, 1, 0, 10, 3, '2021-06-05', 2),
(173, 1, 1, 0, 10, 3, '2021-06-06', 1),
(174, 1, 1, 0, 10, 3, '2021-06-07', 1),
(175, 1, 1, 0, 10, 3, '2021-06-08', 2),
(176, 1, 1, 0, 10, 3, '2021-06-09', 1),
(177, 1, 1, 0, 10, 3, '2021-06-10', 3),
(178, 1, 1, 0, 10, 3, '2021-06-11', 2),
(179, 1, 1, 0, 10, 3, '2021-06-12', 2),
(180, 1, 13, 0, 10, 3, '2021-06-12', 2),
(181, 1, 1, 0, 10, 3, '2021-06-13', 1),
(182, 1, 13, 0, 10, 3, '2021-06-13', 3),
(183, 2, 0, 2, 0, 0, '2021-06-12', 2),
(184, 2, 0, 4, 0, 0, '2021-06-12', 2),
(185, 2, 0, 5, 0, 0, '2021-06-12', 2),
(186, 2, 0, 6, 0, 0, '2021-06-12', 2),
(187, 2, 0, 7, 0, 0, '2021-06-12', 2),
(188, 2, 0, 8, 0, 0, '2021-06-12', 2),
(189, 2, 0, 9, 0, 0, '2021-06-12', 2),
(190, 2, 0, 10, 0, 0, '2021-06-12', 2),
(191, 2, 0, 11, 0, 0, '2021-06-12', 2),
(192, 2, 0, 12, 0, 0, '2021-06-12', 2),
(193, 2, 0, 13, 0, 0, '2021-06-12', 2),
(194, 2, 0, 14, 0, 0, '2021-06-12', 2),
(195, 2, 0, 2, 0, 0, '2021-06-13', 1),
(196, 2, 0, 4, 0, 0, '2021-06-13', 1),
(197, 2, 0, 5, 0, 0, '2021-06-13', 1),
(198, 2, 0, 6, 0, 0, '2021-06-13', 3),
(199, 2, 0, 7, 0, 0, '2021-06-13', 2),
(200, 2, 0, 8, 0, 0, '2021-06-13', 1),
(201, 2, 0, 9, 0, 0, '2021-06-13', 1),
(202, 2, 0, 10, 0, 0, '2021-06-13', 3),
(203, 2, 0, 11, 0, 0, '2021-06-13', 2),
(204, 2, 0, 12, 0, 0, '2021-06-13', 1),
(205, 2, 0, 13, 0, 0, '2021-06-13', 1),
(206, 2, 0, 14, 0, 0, '2021-06-13', 1),
(207, 2, 0, 2, 0, 0, '2022-06-25', 1),
(208, 2, 0, 4, 0, 0, '2022-06-25', 1),
(209, 2, 0, 5, 0, 0, '2022-06-25', 1),
(210, 2, 0, 6, 0, 0, '2022-06-25', 0),
(211, 2, 0, 7, 0, 0, '2022-06-25', 0),
(212, 2, 0, 8, 0, 0, '2022-06-25', 0),
(213, 2, 0, 9, 0, 0, '2022-06-25', 0),
(214, 2, 0, 10, 0, 0, '2022-06-25', 0),
(215, 2, 0, 11, 0, 0, '2022-06-25', 0),
(216, 2, 0, 12, 0, 0, '2022-06-25', 0),
(217, 2, 0, 13, 0, 0, '2022-06-25', 0),
(218, 2, 0, 14, 0, 0, '2022-06-25', 0),
(219, 2, 0, 2, 0, 0, '2022-06-25', 1),
(220, 2, 0, 4, 0, 0, '2022-06-25', 1),
(221, 2, 0, 5, 0, 0, '2022-06-25', 1),
(222, 2, 0, 6, 0, 0, '2022-06-25', 0),
(223, 2, 0, 7, 0, 0, '2022-06-25', 0),
(224, 2, 0, 8, 0, 0, '2022-06-25', 0),
(225, 2, 0, 9, 0, 0, '2022-06-25', 0),
(226, 2, 0, 10, 0, 0, '2022-06-25', 0),
(227, 2, 0, 11, 0, 0, '2022-06-25', 0),
(228, 2, 0, 12, 0, 0, '2022-06-25', 0),
(229, 2, 0, 13, 0, 0, '2022-06-25', 0),
(230, 2, 0, 14, 0, 0, '2022-06-25', 0),
(231, 2, 0, 2, 0, 0, '2022-06-25', 1),
(232, 2, 0, 4, 0, 0, '2022-06-25', 1),
(233, 2, 0, 5, 0, 0, '2022-06-25', 1),
(234, 2, 0, 6, 0, 0, '2022-06-25', 0),
(235, 2, 0, 7, 0, 0, '2022-06-25', 0),
(236, 2, 0, 8, 0, 0, '2022-06-25', 0),
(237, 2, 0, 9, 0, 0, '2022-06-25', 0),
(238, 2, 0, 10, 0, 0, '2022-06-25', 0),
(239, 2, 0, 11, 0, 0, '2022-06-25', 0),
(240, 2, 0, 12, 0, 0, '2022-06-25', 0),
(241, 2, 0, 13, 0, 0, '2022-06-25', 0),
(242, 2, 0, 14, 0, 0, '2022-06-25', 0),
(243, 2, 0, 2, 0, 0, '2022-06-25', 1),
(244, 2, 0, 4, 0, 0, '2022-06-25', 1),
(245, 2, 0, 5, 0, 0, '2022-06-25', 1),
(246, 2, 0, 6, 0, 0, '2022-06-25', 0),
(247, 2, 0, 7, 0, 0, '2022-06-25', 0),
(248, 2, 0, 8, 0, 0, '2022-06-25', 0),
(249, 2, 0, 9, 0, 0, '2022-06-25', 0),
(250, 2, 0, 10, 0, 0, '2022-06-25', 0),
(251, 2, 0, 11, 0, 0, '2022-06-25', 0),
(252, 2, 0, 12, 0, 0, '2022-06-25', 0),
(253, 2, 0, 13, 0, 0, '2022-06-25', 0),
(254, 2, 0, 14, 0, 0, '2022-06-25', 0),
(255, 2, 0, 2, 0, 0, '2022-06-25', 1),
(256, 2, 0, 4, 0, 0, '2022-06-25', 1),
(257, 2, 0, 5, 0, 0, '2022-06-25', 1),
(258, 2, 0, 6, 0, 0, '2022-06-25', 0),
(259, 2, 0, 7, 0, 0, '2022-06-25', 0),
(260, 2, 0, 8, 0, 0, '2022-06-25', 0),
(261, 2, 0, 9, 0, 0, '2022-06-25', 0),
(262, 2, 0, 10, 0, 0, '2022-06-25', 0),
(263, 2, 0, 11, 0, 0, '2022-06-25', 0),
(264, 2, 0, 12, 0, 0, '2022-06-25', 0),
(265, 2, 0, 13, 0, 0, '2022-06-25', 0),
(266, 2, 0, 14, 0, 0, '2022-06-25', 0),
(267, 2, 0, 2, 0, 0, '2022-06-25', 1),
(268, 2, 0, 4, 0, 0, '2022-06-25', 1),
(269, 2, 0, 5, 0, 0, '2022-06-25', 1),
(270, 2, 0, 6, 0, 0, '2022-06-25', 0),
(271, 2, 0, 7, 0, 0, '2022-06-25', 0),
(272, 2, 0, 8, 0, 0, '2022-06-25', 0),
(273, 2, 0, 9, 0, 0, '2022-06-25', 0),
(274, 2, 0, 10, 0, 0, '2022-06-25', 0),
(275, 2, 0, 11, 0, 0, '2022-06-25', 0),
(276, 2, 0, 12, 0, 0, '2022-06-25', 0),
(277, 2, 0, 13, 0, 0, '2022-06-25', 0),
(278, 2, 0, 14, 0, 0, '2022-06-25', 0),
(279, 2, 0, 2, 0, 0, '2022-06-25', 1),
(280, 2, 0, 4, 0, 0, '2022-06-25', 1),
(281, 2, 0, 5, 0, 0, '2022-06-25', 1),
(282, 2, 0, 6, 0, 0, '2022-06-25', 0),
(283, 2, 0, 7, 0, 0, '2022-06-25', 0),
(284, 2, 0, 8, 0, 0, '2022-06-25', 0),
(285, 2, 0, 9, 0, 0, '2022-06-25', 0),
(286, 2, 0, 10, 0, 0, '2022-06-25', 0),
(287, 2, 0, 11, 0, 0, '2022-06-25', 0),
(288, 2, 0, 12, 0, 0, '2022-06-25', 0),
(289, 2, 0, 13, 0, 0, '2022-06-25', 0),
(290, 2, 0, 14, 0, 0, '2022-06-25', 0),
(291, 2, 0, 2, 0, 0, '2022-06-25', 1),
(292, 2, 0, 4, 0, 0, '2022-06-25', 1),
(293, 2, 0, 5, 0, 0, '2022-06-25', 1),
(294, 2, 0, 6, 0, 0, '2022-06-25', 0),
(295, 2, 0, 7, 0, 0, '2022-06-25', 0),
(296, 2, 0, 8, 0, 0, '2022-06-25', 0),
(297, 2, 0, 9, 0, 0, '2022-06-25', 0),
(298, 2, 0, 10, 0, 0, '2022-06-25', 0),
(299, 2, 0, 11, 0, 0, '2022-06-25', 0),
(300, 2, 0, 12, 0, 0, '2022-06-25', 0),
(301, 2, 0, 13, 0, 0, '2022-06-25', 0),
(302, 2, 0, 14, 0, 0, '2022-06-25', 0),
(303, 2, 0, 2, 0, 0, '2022-06-25', 1),
(304, 2, 0, 4, 0, 0, '2022-06-25', 1),
(305, 2, 0, 5, 0, 0, '2022-06-25', 1),
(306, 2, 0, 6, 0, 0, '2022-06-25', 0),
(307, 2, 0, 7, 0, 0, '2022-06-25', 0),
(308, 2, 0, 8, 0, 0, '2022-06-25', 0),
(309, 2, 0, 9, 0, 0, '2022-06-25', 0),
(310, 2, 0, 10, 0, 0, '2022-06-25', 0),
(311, 2, 0, 11, 0, 0, '2022-06-25', 0),
(312, 2, 0, 12, 0, 0, '2022-06-25', 0),
(313, 2, 0, 13, 0, 0, '2022-06-25', 0),
(314, 2, 0, 14, 0, 0, '2022-06-25', 0),
(315, 2, 0, 2, 0, 0, '2022-06-25', 1),
(316, 2, 0, 4, 0, 0, '2022-06-25', 1),
(317, 2, 0, 5, 0, 0, '2022-06-25', 1),
(318, 2, 0, 6, 0, 0, '2022-06-25', 0),
(319, 2, 0, 7, 0, 0, '2022-06-25', 0),
(320, 2, 0, 8, 0, 0, '2022-06-25', 0),
(321, 2, 0, 9, 0, 0, '2022-06-25', 0),
(322, 2, 0, 10, 0, 0, '2022-06-25', 0),
(323, 2, 0, 11, 0, 0, '2022-06-25', 0),
(324, 2, 0, 12, 0, 0, '2022-06-25', 0),
(325, 2, 0, 13, 0, 0, '2022-06-25', 0),
(326, 2, 0, 14, 0, 0, '2022-06-25', 0),
(327, 2, 0, 2, 0, 0, '2022-06-25', 1),
(328, 2, 0, 4, 0, 0, '2022-06-25', 1),
(329, 2, 0, 5, 0, 0, '2022-06-25', 1),
(330, 2, 0, 6, 0, 0, '2022-06-25', 0),
(331, 2, 0, 7, 0, 0, '2022-06-25', 0),
(332, 2, 0, 8, 0, 0, '2022-06-25', 0),
(333, 2, 0, 9, 0, 0, '2022-06-25', 0),
(334, 2, 0, 10, 0, 0, '2022-06-25', 0),
(335, 2, 0, 11, 0, 0, '2022-06-25', 0),
(336, 2, 0, 12, 0, 0, '2022-06-25', 0),
(337, 2, 0, 13, 0, 0, '2022-06-25', 0),
(338, 2, 0, 14, 0, 0, '2022-06-25', 0),
(339, 2, 0, 2, 0, 0, '2022-06-25', 1),
(340, 2, 0, 4, 0, 0, '2022-06-25', 1),
(341, 2, 0, 5, 0, 0, '2022-06-25', 1),
(342, 2, 0, 6, 0, 0, '2022-06-25', 0),
(343, 2, 0, 7, 0, 0, '2022-06-25', 0),
(344, 2, 0, 8, 0, 0, '2022-06-25', 0),
(345, 2, 0, 9, 0, 0, '2022-06-25', 0),
(346, 2, 0, 10, 0, 0, '2022-06-25', 0),
(347, 2, 0, 11, 0, 0, '2022-06-25', 0),
(348, 2, 0, 12, 0, 0, '2022-06-25', 0),
(349, 2, 0, 13, 0, 0, '2022-06-25', 0),
(350, 2, 0, 14, 0, 0, '2022-06-25', 0),
(351, 2, 0, 2, 0, 0, '2022-06-25', 1),
(352, 2, 0, 4, 0, 0, '2022-06-25', 1),
(353, 2, 0, 5, 0, 0, '2022-06-25', 1),
(354, 2, 0, 6, 0, 0, '2022-06-25', 0),
(355, 2, 0, 7, 0, 0, '2022-06-25', 0),
(356, 2, 0, 8, 0, 0, '2022-06-25', 0),
(357, 2, 0, 9, 0, 0, '2022-06-25', 0),
(358, 2, 0, 10, 0, 0, '2022-06-25', 0),
(359, 2, 0, 11, 0, 0, '2022-06-25', 0),
(360, 2, 0, 12, 0, 0, '2022-06-25', 0),
(361, 2, 0, 13, 0, 0, '2022-06-25', 0),
(362, 2, 0, 14, 0, 0, '2022-06-25', 0),
(363, 2, 0, 2, 0, 0, '2022-06-25', 1),
(364, 2, 0, 4, 0, 0, '2022-06-25', 1),
(365, 2, 0, 5, 0, 0, '2022-06-25', 1),
(366, 2, 0, 6, 0, 0, '2022-06-25', 0),
(367, 2, 0, 7, 0, 0, '2022-06-25', 0),
(368, 2, 0, 8, 0, 0, '2022-06-25', 0),
(369, 2, 0, 9, 0, 0, '2022-06-25', 0),
(370, 2, 0, 10, 0, 0, '2022-06-25', 0),
(371, 2, 0, 11, 0, 0, '2022-06-25', 0),
(372, 2, 0, 12, 0, 0, '2022-06-25', 0),
(373, 2, 0, 13, 0, 0, '2022-06-25', 0),
(374, 2, 0, 14, 0, 0, '2022-06-25', 0),
(375, 2, 0, 2, 0, 0, '2022-06-25', 1),
(376, 2, 0, 4, 0, 0, '2022-06-25', 1),
(377, 2, 0, 5, 0, 0, '2022-06-25', 1),
(378, 2, 0, 6, 0, 0, '2022-06-25', 0),
(379, 2, 0, 7, 0, 0, '2022-06-25', 0),
(380, 2, 0, 8, 0, 0, '2022-06-25', 0),
(381, 2, 0, 9, 0, 0, '2022-06-25', 0),
(382, 2, 0, 10, 0, 0, '2022-06-25', 0),
(383, 2, 0, 11, 0, 0, '2022-06-25', 0),
(384, 2, 0, 12, 0, 0, '2022-06-25', 0),
(385, 2, 0, 13, 0, 0, '2022-06-25', 0),
(386, 2, 0, 14, 0, 0, '2022-06-25', 0),
(387, 1, 9, 0, 1, 13, '2022-06-25', 1),
(390, 1, 8, 0, 1, 2, '2022-06-26', 1),
(391, 1, 14, 0, 1, 2, '2022-06-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `numeric_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `numeric_name`) VALUES
(11, 'web programming', '1'),
(12, 'sistem basis data', '2'),
(13, 'jaringan komputer', '3');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expenses_id` int(11) NOT NULL,
  `expenses_name` varchar(255) NOT NULL,
  `expenses_amount` varchar(255) NOT NULL,
  `expenses_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expenses_id`, `expenses_name`, `expenses_amount`, `expenses_name_id`) VALUES
(4, 'gaji guru pertama', '2000000', 3);

-- --------------------------------------------------------

--
-- Table structure for table `expenses_name`
--

CREATE TABLE `expenses_name` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses_name`
--

INSERT INTO `expenses_name` (`id`, `date`, `name`, `total_amount`) VALUES
(3, '2022-06-26', 'gaji guru', '2000000.00');

-- --------------------------------------------------------

--
-- Table structure for table `marksheet`
--

CREATE TABLE `marksheet` (
  `marksheet_id` int(11) NOT NULL,
  `marksheet_name` varchar(255) NOT NULL,
  `marksheet_date` date NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marksheet`
--

INSERT INTO `marksheet` (`marksheet_id`, `marksheet_name`, `marksheet_date`, `class_id`) VALUES
(1, 'First Terminal', '2021-01-05', 10),
(2, 'First Terminal', '2021-01-05', 9),
(3, 'Second Terminal', '2021-05-19', 9),
(5, 'pemrograman', '2022-06-26', 1),
(6, 'web programming', '2022-06-30', 11),
(7, 'sistem basis data', '2022-06-30', 12),
(8, 'jaringan komputer', '2022-06-30', 13);

-- --------------------------------------------------------

--
-- Table structure for table `marksheet_student`
--

CREATE TABLE `marksheet_student` (
  `marksheet_student_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `obtain_mark` varchar(255) NOT NULL,
  `marksheet_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marksheet_student`
--

INSERT INTO `marksheet_student` (`marksheet_student_id`, `student_id`, `subject_id`, `obtain_mark`, `marksheet_id`, `class_id`, `section_id`) VALUES
(7, 1, 2, '75', 1, 10, 3),
(8, 1, 3, '70', 1, 10, 3),
(9, 1, 4, '65', 1, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `payment_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `paid_amount`, `status`, `payment_type`, `payment_date`, `class_id`, `section_id`, `student_id`, `payment_name_id`) VALUES
(15, '', 0, 0, '0000-00-00', 11, 16, 16, 12);

-- --------------------------------------------------------

--
-- Table structure for table `payment_name`
--

CREATE TABLE `payment_name` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_name`
--

INSERT INTO `payment_name` (`id`, `name`, `start_date`, `end_date`, `total_amount`, `type`) VALUES
(12, 'semesteran', '2022-06-27', '2022-06-28', '4500000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`, `class_id`, `teacher_id`) VALUES
(1, 'A', 3, 12),
(3, 'A', 10, 2),
(4, 'B', 10, 4),
(5, 'A', 9, 2),
(6, 'B', 9, 5),
(7, 'A', 7, 10),
(8, 'B', 7, 11),
(9, 'C', 7, 7),
(10, 'A', 8, 12),
(11, 'B', 8, 7),
(12, 'C', 9, 11),
(14, 'C', 8, 13),
(16, 'sesi pertama', 11, 15),
(17, 'sesi kedua', 11, 16),
(18, 'sesi ketiga', 11, 17),
(19, 'sesi keempat', 11, 18),
(20, 'sesi ke 5', 11, 19),
(21, 'sesi pertama', 12, 15),
(22, 'sesi kedua', 12, 16),
(23, 'sesi ketiga', 12, 17),
(24, 'sesi keempat', 12, 18),
(25, 'sesi kelima', 12, 19),
(26, 'sesi pertama', 13, 15),
(27, 'sesi kedua', 13, 16),
(28, 'sesi ketiga', 13, 17),
(29, 'sesi keempat', 13, 18),
(30, 'sesi kelima', 13, 19);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `register_date` date NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `age` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `register_date`, `class_id`, `section_id`, `fname`, `lname`, `image`, `age`, `dob`, `contact`, `email`, `address`, `city`, `country`) VALUES
(15, '2022-06-27', 1, 2, 'murid', 'pertama', 'assets/images/default/default_avatar.png', '1', '2022-06-30', '08811181726', '123@gmail.com', 'jakarta', 'jakarta', 'indonesia'),
(16, '2022-06-27', 11, 16, 'murid', 'pertama', 'assets/images/default/default_avatar.png', '20', '2022-06-20', '08811181153', '123@gmail.com', 'magelang', 'magelang', 'indonesia'),
(17, '2022-06-27', 12, 22, 'murid', 'kedua', 'assets/images/default/default_avatar.png', '20', '2022-06-20', '1234567890987', '123@gmail.com', 'jakarta', 'jakarta', 'indonesia'),
(18, '2022-06-27', 13, 28, 'murid', 'ketiga', 'assets/images/default/default_avatar.png', '20', '2022-06-20', '2345678', '123@gmail.com', 'bekasi', 'jawa barat', 'indonesia'),
(19, '2022-06-27', 11, 19, 'murid', 'keempat', 'assets/images/default/default_avatar.png', '20', '2022-06-20', '123445678', 'wer@gmail.com', 'jakarta', 'jakarta', 'indonesia'),
(20, '2022-06-27', 12, 25, 'murid', 'kelima', 'assets/images/default/default_avatar.png', '20', '2022-06-20', '34567', 'rty@gmail.com', 'semarang', 'semarang', 'indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_mark` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `total_mark`, `class_id`, `teacher_id`) VALUES
(2, 'Computer Applications', '100', 10, 4),
(3, 'Mathematics', '100', 10, 6),
(4, 'Science', '100', 10, 2),
(5, 'Science', '100', 9, 9),
(6, 'Social Studies', '100', 9, 11),
(7, 'Computer', '100', 9, 5),
(8, 'Social Studies', '100', 10, 10),
(9, 'Environmental Science', '100', 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `register_date` date NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `job_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `register_date`, `fname`, `lname`, `image`, `date_of_birth`, `age`, `contact`, `email`, `address`, `city`, `country`, `job_type`) VALUES
(15, '2022-06-27', 'guru', 'pertama', 'assets/images/default/default_avatar.png', '2022-06-22', '1', '08811181153', 'ttarohkim@gmail.com', 'magelang', 'magelang', 'indonesia', 1),
(16, '2022-06-28', 'guru', 'kedua', 'assets/images/default/default_avatar.png', '2022-06-01', '3', '08811181153', 'ttarohkim@gmail.com', 'magelang', 'magelang', 'indonesia', 1),
(17, '2022-06-21', 'guru', 'ketiga', 'assets/images/default/default_avatar.png', '2022-06-21', '2', '08811181153', 'ttarohkim@gmail.com', 'magelang', 'magelang', 'indonesia', 2),
(18, '2022-06-27', 'guru', 'keempat', 'assets/images/default/default_avatar.png', '2022-06-28', '5', '08811181153', 'sofianwirahadi1@gmail.com', 'magelang', 'magelang', 'indonesia', 2),
(19, '2022-06-27', 'guru', 'kelima', 'assets/images/default/default_avatar.png', '2022-06-20', '6', '08811181153', 'ttarohkim@gmail.com', 'magelang', 'magelang', 'indonesia', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fname`, `lname`, `email`) VALUES
(1, 'Rohim', '2974eab83f48690009cc08e81234f0fb', 'Rohim', '-', 'tarokhim28@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenses_id`);

--
-- Indexes for table `expenses_name`
--
ALTER TABLE `expenses_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marksheet`
--
ALTER TABLE `marksheet`
  ADD PRIMARY KEY (`marksheet_id`);

--
-- Indexes for table `marksheet_student`
--
ALTER TABLE `marksheet_student`
  ADD PRIMARY KEY (`marksheet_student_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_name`
--
ALTER TABLE `payment_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses_name`
--
ALTER TABLE `expenses_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marksheet`
--
ALTER TABLE `marksheet`
  MODIFY `marksheet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `marksheet_student`
--
ALTER TABLE `marksheet_student`
  MODIFY `marksheet_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_name`
--
ALTER TABLE `payment_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
