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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(88) NOT NULL,
  `fname` varchar(222) NOT NULL,
  `lname` varchar(344) NOT NULL,
  `email` varchar(900) NOT NULL,
  `pass` varchar(233) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `pass`, `status`) VALUES
(1, 'affan ', 'siddiqui', 'siddiquiaffan701@gmail.com', '$2y$10$xyxEbvzhD6t2mgdBJ3OHAuBgoJ5mkNUD.VeDlaTnRvldhfjN..FEC', 1),
(2, 'hama', 'ali', 'abc@gmail.com', '$2y$10$tI9qG4No7OHLpV9NBgpImuDpUABStXZBZjAdsJeC6qDVaXuwZO/Je', 1),
(3, 'affan ', '22', 'p@gmail.com', '$2y$10$JX8bwAUDzXj6iJyAaR7TUeqE66y27oZnwHQrnMjkmmMTKIllbzUTa', 1),
(4, 'sufyn', 'ali', 'sufiyan123siddiqui123@gmail.com', '$2y$10$K4JGVqdMvPeWGLCx0NYSzeom3hJRB8vCb0U4G1IHI7DrynZc3oJXK', 1),
(5, 'rohan', 'khan', 'rohan@gmail.com', '$2y$10$m8gkZc05CNPHtrdfIcGO0.wiX5Nk24Yfj9TiP5sIuFYZjqcsJjTji', 1),
(6, 'subhan', 'ayub', 'subhan@mail.com', '$2y$10$spGt1Mp/eKsGt9JtwPMYiu.CPxefF86jIAQ3b6exKGdxJnRJ.aDBm', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(88) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
