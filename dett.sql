-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 11:58 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dett`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `admno` varchar(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `remark` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `admno`, `type`, `phone`, `remark`) VALUES
(0, '12345', 'Father', 111, 'jawaal'),
(1, '12345', 'Mother', 111, 'watania');

-- --------------------------------------------------------

--
-- Table structure for table `historylogin`
--

CREATE TABLE `historylogin` (
  `userID` varchar(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `historylogin`
--

INSERT INTO `historylogin` (`userID`, `phone`, `date`, `time`) VALUES
('kkk', 2147483647, '2021-09-03', '03:48:59'),
('kkk', 2147483647, '2021-09-03', '03:51:26'),
('kkk', 2147483647, '2021-09-03', '03:51:50'),
('kkk', 2147483647, '2021-09-03', '03:54:00'),
('kkk', 0, '2021-09-03', '03:55:26'),
('kkk', 0, '2021-09-03', '03:56:03'),
('kkk', 0, '2021-09-03', '03:57:26'),
('kkk', 2147483647, '2021-09-03', '03:58:13'),
('kkk', 599124279, '2021-09-03', '03:59:42'),
('kkk', 599124279, '2021-09-04', '11:39:52'),
('kkk', 599124279, '2021-09-04', '11:42:49'),
('kkk', 599124279, '2021-09-04', '11:43:09'),
('kkk', 599124279, '2021-09-04', '11:49:09'),
('kkk', 599124279, '2021-09-04', '11:51:03'),
('kkk', 724128912, '2021-09-04', '11:52:00'),
('kkk', 724128912, '2021-09-04', '11:52:27'),
('kkk', 724128912, '2021-09-04', '11:54:04'),
('kkk', 724128912, '2021-09-04', '11:55:03'),
('kkk', 724128912, '2021-09-04', '01:20:52'),
('kkk', 724128912, '2021-09-04', '01:21:55'),
('kkk', 724128912, '2021-09-04', '01:31:22'),
('kkk', 724128912, '2021-09-04', '01:31:55'),
('kkk', 724128912, '2021-09-04', '01:33:21'),
('kkk', 724128912, '2021-09-04', '01:33:49'),
('kkk', 724128912, '2021-09-04', '01:34:21'),
('kkk', 724128912, '2021-09-04', '01:40:38'),
('kkk', 724128912, '2021-09-04', '02:59:59'),
('kkk', 724128912, '2021-09-04', '08:30:12'),
('kkk', 724128912, '2021-09-04', '08:31:52'),
('kkk', 724128912, '2021-09-08', '05:53:58'),
('kkk', 724128912, '2021-09-08', '05:55:18'),
('kkk', 724128912, '2021-09-08', '05:56:26'),
('kkk', 724128912, '2021-09-08', '05:57:56'),
('kkk', 724128912, '2021-09-08', '05:59:18'),
('kkk', 724128912, '2021-09-08', '05:59:31'),
('kkk', 724128912, '2021-09-08', '06:00:42'),
('kkk', 724128912, '2021-09-08', '06:01:51'),
('kkk', 724128912, '2021-09-08', '07:16:50'),
('kkk', 724128912, '2021-09-08', '07:17:55'),
('kkk', 724128912, '2021-09-08', '07:21:44'),
('kkk', 724128912, '2021-09-08', '07:21:52'),
('kkk', 724128912, '2021-09-08', '07:21:54'),
('kkk', 724128912, '2021-09-08', '07:21:55'),
('kkk', 724128912, '2021-09-08', '07:21:55'),
('kkk', 724128912, '2021-09-08', '07:21:55'),
('kkk', 724128912, '2021-09-08', '07:22:27'),
('kkk', 724128912, '2021-09-08', '07:23:31'),
('kkk', 724128912, '2021-09-08', '07:23:59'),
('kkk', 724128912, '2021-09-08', '07:24:34'),
('kkk', 724128912, '2021-09-08', '07:25:55'),
('kkk', 724128912, '2021-09-08', '07:26:23'),
('kkk', 724128912, '2021-09-08', '07:26:56'),
('kkk', 724128912, '2021-09-08', '07:26:57'),
('kkk', 724128912, '2021-09-08', '07:26:58'),
('kkk', 724128912, '2021-09-08', '07:26:58'),
('kkk', 724128912, '2021-09-08', '07:27:10'),
('kkk', 724128912, '2021-09-08', '07:27:37'),
('kkk', 724128912, '2021-09-08', '07:53:15'),
('kkk', 724128912, '2021-09-08', '07:58:00'),
('kkk', 724128912, '2021-09-08', '08:20:10'),
('kkk', 724128912, '2021-09-08', '08:21:17'),
('kkk', 724128912, '2021-09-11', '02:20:48'),
('kkk', 724128912, '2021-09-11', '07:01:41'),
('kkk', 724128912, '2021-09-11', '07:04:59'),
('kkk', 724128912, '2021-09-11', '07:24:08'),
('kkk', 724128912, '2021-09-11', '09:26:51'),
('kkk', 724128912, '2021-09-11', '09:42:53'),
('kkk', 724128912, '2021-09-12', '11:20:03'),
('kkk', 724128912, '2021-09-12', '11:20:32'),
('kkk', 724128912, '2021-09-12', '03:14:07'),
('kkk', 724128912, '2021-09-12', '03:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `phonecall`
--

CREATE TABLE `phonecall` (
  `id` int(11) NOT NULL,
  `admno` varchar(5) NOT NULL,
  `userID` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `time` int(2) NOT NULL,
  `balance` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phonecall`
--

INSERT INTO `phonecall` (`id`, `admno`, `userID`, `password`, `time`, `balance`) VALUES
(1, '12345', 'kkk', 'kkk', 1, 8),
(2, 'moo12', 'moo', 'moo', 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `phonelog`
--

CREATE TABLE `phonelog` (
  `id` int(11) NOT NULL,
  `admno` varchar(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` time NOT NULL,
  `action` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phonelog`
--

INSERT INTO `phonelog` (`id`, `admno`, `mobile`, `date`, `time`, `action`) VALUES
(13, '12345', '111', '12-Sep-2021', '13:36:11', 'called'),
(14, '12345', '111231', '12-Sep-2021', '13:36:26', 'cut'),
(15, '12345', '111', '12-Sep-2021', '13:39:49', 'called'),
(16, '12345', '111', '12-Sep-2021', '13:39:59', 'cut'),
(17, '12345', '111', '12-Sep-2021', '16:14:18', 'called'),
(18, '12345', '111', '12-Sep-2021', '16:15:26', 'cut');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `userID` varchar(11) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `admno` varchar(40) CHARACTER SET utf8 NOT NULL,
  `timeLimit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `userID`, `password`, `admno`, `timeLimit`) VALUES
(52532669, 'kkk', 'kkk', '123456', 1),
(52532670, 'moo', 'moo', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usercontact`
--

CREATE TABLE `usercontact` (
  `id` int(11) NOT NULL,
  `userID` varchar(11) NOT NULL,
  `phone` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercontact`
--

INSERT INTO `usercontact` (`id`, `userID`, `phone`, `date`, `time`) VALUES
(0, 'kkk', 724128912, '2021-09-08', '08:21:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonecall`
--
ALTER TABLE `phonecall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonelog`
--
ALTER TABLE `phonelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercontact`
--
ALTER TABLE `usercontact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phonecall`
--
ALTER TABLE `phonecall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phonelog`
--
ALTER TABLE `phonelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52532671;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
