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
-- Table structure for table `produ`
--

CREATE TABLE `produ` (
  `id` int(33) NOT NULL,
  `pid` int(223) NOT NULL,
  `pname` varchar(288) NOT NULL,
  `price` int(222) NOT NULL,
  `des` text NOT NULL,
  `image` varchar(222) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produ`
--

INSERT INTO `produ` (`id`, `pid`, `pname`, `price`, `des`, `image`, `status`) VALUES
(1, 3, 'ss', 11, 'e', 'images (1).jpg', 1),
(2, 4, 'dumbell', 333, 'dede', 'profile 2.PNG', 1),
(2, 5, 'dumbell2', 909, 'q', 'assigment11.PNG', 1),
(1, 6, 'ball', 5, 'u', '', 1),
(4, 7, 'clothes', 123, 'pant dede', '508.jpg', 1),
(1, 8, 'bat', 33, 'acha wla', 'download (7).jpg', 1),
(1, 9, 'batsman', 22, 'kuh bbhi', 'download (1).jpg', 1),
(5, 10, 'tv', 233, 'good qulity', 'download (1).jfif', 1),
(7, 11, 'pizza', 200, 'A food business is any business, enterprise or activity that involves the handling of food.', 'download.png', 1),
(2, 12, 'pull up machine', 9000, 'For some people, a typical gym is a place where you focus on weight lifting and similar activities.', 'download (3).jfif', 1),
(1, 13, 'Bat aAns BALl', 9, 'Cricket was introduced to the Indians by the British in the early 1700s. ', 'download (4).jfif', 1),
(8, 14, 'dr', 22, '2ww', 'png.jfif', 1),
(3, 15, 'kuh bhi', 1222, 'we began our journey as a family-owned business dedicated to providing exceptional gym equipment at affordable prices. But, we dreamed ...', 'images.jfif', 1),
(7, 16, 'khana', 9001, 'In this article, we talk about what makes a great gym and 10 gym features of a successful fitness business.', 'download (8).jfif', 1),
(5, 17, 'pp', 22, 'yes, we talk about what makes a great gym and 10 gym features of a successful fitness business.', 'swift compiler.PNG', 1),
(4, 18, 'dsdsds', 444, 'sdsdsddsdsadsasdasdd sda sda s q', 'Capture.PNG', 1),
(7, 19, 'rase', 332, 'people who decide to start exercising is their desire to lose ', 'download (8).jfif', 1),
(3, 20, 'iuiu', 88, 'The shdghdingle most comtgnfgmon goal of the people who decide to start exercising is their desire to lose fafwetet', 'download (2).jfif', 1),
(6, 25, 'n', 59, 'The single most common goal of the people who decide to start exercising is their desire to lose fa', 'car.jfif', 1),
(5, 26, 'ff', 33, 'The single most common goal of the people who decide to start exercising is their desire to lose fa', 'download (6).jfif', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produ`
--
ALTER TABLE `produ`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produ`
--
ALTER TABLE `produ`
  MODIFY `pid` int(223) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produ`
--
ALTER TABLE `produ`
  ADD CONSTRAINT `produ_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user1` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
