-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 12:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muleks`
--

-- --------------------------------------------------------

--
-- Table structure for table `acount`
--

CREATE TABLE `acount` (
  `id` int(11) NOT NULL,
  `float` int(11) NOT NULL,
  `airtel` int(11) NOT NULL,
  `mtn` int(11) NOT NULL,
  `day` date NOT NULL,
  `total` int(30) NOT NULL,
  `increase` int(30) NOT NULL,
  `decrease` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acount`
--

INSERT INTO `acount` (`id`, `float`, `airtel`, `mtn`, `day`, `total`, `increase`, `decrease`) VALUES
(34, 270000, 568984, 109960, '2021-10-19', 948944, 0, 948941),
(41, 601000, 204460, 20544, '2021-10-21', 826004, 0, 122940),
(54, 270000, 23455, 224556, '2021-11-04', 518011, 0, 430933),
(55, 233322, 12344, 123445, '2021-11-11', 369111, 0, 579833),
(56, 30000, 4747474, 35525, '2021-11-15', 4812999, 0, -3864055),
(57, 18000, 50000, 160000, '2021-11-17', 228000, 0, 720944),
(58, 70000, 393393, 50540, '2021-11-18', 513933, 0, 435011),
(59, 47332, 5656767, 125253, '2021-12-17', 5829352, 0, -4880408),
(60, 47777, 626188, 82717317, '2021-12-02', 83391282, 0, -82442338);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` varchar(16) NOT NULL,
  `pwd` varchar(16) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `pwd`, `type`) VALUES
(1, 'muleks', '1234', 0),
(2, 'kill', '123', 0),
(3, 'daniel', '1234', 0),
(4, 'tibs', '1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acount`
--
ALTER TABLE `acount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acount`
--
ALTER TABLE `acount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
