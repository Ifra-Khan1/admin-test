-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 07:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `cname` varchar(222) NOT NULL,
  `ctype` varchar(332) NOT NULL,
  `email` varchar(777) NOT NULL,
  `descripition` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`id`, `cname`, `ctype`, `email`, `descripition`, `status`) VALUES
(1, 'cricket', 'good', 'siddiquiaffan701@gmail.com', 'dede', 1),
(2, 'gym', 'good', 'ihanif252@gmail.com', 'asi', 1),
(3, 'skincare', 'good', 'as@gmail.com', 'asddhk', 1),
(4, 'garments', 'good', 'ff@gmail.com', 'hffj;lkkhhg', 1),
(5, 'electric', 'solid', 'aa@mail.com', '1qwertuo', 1),
(6, 'electric', 'solid', 'aa@mail.com', '1qwertuo', 1),
(7, 'food', 'nice', 'naved@gmai.com', 'Definition and Functions. Describing words are words that are used to describe or provide additional information about a thing. Such words are used to describe a person, place, event, situation etc', 1),
(8, 'doctor', 'nice', 'doctor@gmail.com', 'This game rules ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
