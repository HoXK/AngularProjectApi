-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 09:19 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `achieversit`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` int(50) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `country`, `phone`, `created_on`, `updated_on`) VALUES
(1, 'Murali', 'murali@gmail.com', 'BTM , Bangalore', 'India', 2147483647, '2020-07-11 09:09:21', '2020-07-11 09:09:21'),
(2, 'Sachin', 'sachin@gmail.com', 'Mumbai', 'India', 324244343, '2020-07-11 09:10:52', '2020-07-11 09:10:52'),
(3, 'Dravid', 'dravid@gmail.com', 'Bangalore', 'India', 2147483647, '2020-07-11 09:11:20', '2020-07-11 09:11:20'),
(6, 'Virat', 'virat@gmail.com', 'Delhi', 'India', 2147483647, '2020-07-13 11:47:04', '2020-07-13 11:47:04'),
(7, 'Rohit', 'rohit@gmail.com', 'Mumbai', 'India', 2147483647, '2020-07-13 11:58:35', '2020-07-13 11:58:35'),
(8, 'AchieversIT', 'ait@gmail.com', 'Bangalore', 'India', 2147483647, '2020-07-27 10:38:04', '2020-07-27 10:38:04'),
(9, 'AchieversIT', 'ait@gmail.com', 'Bangalore', 'India', 2147483647, '2020-07-27 10:38:04', '2020-07-27 10:38:04'),
(10, 'AchieversIT', 'ait@gmail.com', 'Bangalore', 'India', 2147483647, '2020-07-27 10:38:29', '2020-07-27 10:38:29'),
(11, 'AchieversIT', 'ait@gmail.com', 'Bangalore', 'India', 2147483647, '2020-07-27 10:38:34', '2020-07-27 10:38:34'),
(12, 'AchieversIT', 'ait@gmail.com', 'Bangalore', 'India', 2147483647, '2020-07-27 10:40:44', '2020-07-27 10:40:44'),
(13, 'AchieversIT', 'ait@gmail.com', 'Bangalore', 'India', 2147483647, '2020-07-27 10:41:00', '2020-07-27 10:41:00'),
(14, 'AchieversIT', 'ait@gmail.com', 'Bangalore', 'India', 2147483647, '2020-07-27 10:41:32', '2020-07-27 10:41:32'),
(15, 'AchieversIT', 'ait@gmail.com', 'Bangalore', 'India', 2147483647, '2020-09-06 09:48:00', '2020-09-06 09:48:00'),
(16, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-06 09:49:23', '2020-09-06 09:49:23'),
(17, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-06 09:49:35', '2020-09-06 09:49:35'),
(18, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-06 09:50:48', '2020-09-06 09:50:48'),
(19, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-06 10:02:37', '2020-09-06 10:02:37'),
(20, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-06 10:02:59', '2020-09-06 10:02:59'),
(21, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-06 10:05:12', '2020-09-06 10:05:12'),
(22, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-13 09:20:02', '2020-09-13 09:20:02'),
(23, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-13 09:21:40', '2020-09-13 09:21:40'),
(24, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-13 09:22:15', '2020-09-13 09:22:15'),
(25, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-13 09:26:15', '2020-09-13 09:26:15'),
(26, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-13 09:46:25', '2020-09-13 09:46:25'),
(27, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-13 11:18:40', '2020-09-13 11:18:40'),
(28, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-09-20 09:08:29', '2020-09-20 09:08:29'),
(29, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-11-25 08:48:17', '2020-11-25 08:48:17'),
(30, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-11-25 08:53:03', '2020-11-25 08:53:03'),
(31, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-11-25 08:54:04', '2020-11-25 08:54:04'),
(32, 'AchieversIT06', 'ait06@gmail.com', 'Bangalore06', 'India06', 6, '2020-11-25 09:01:30', '2020-11-25 09:01:30'),
(33, 'test 30', 'test30@gmail.com', 'Mumbai', 'India', 2147483647, '2021-03-30 11:17:05', '2021-03-30 11:17:05'),
(34, 'XK', 'xk@gmail.com', 'Singapore', 'Singapore', 2147483647, '2021-06-22 10:59:46', '2021-06-22 10:59:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
