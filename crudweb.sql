-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2024 at 02:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `idcard` text NOT NULL,
  `buytime` datetime NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `phone`, `idcard`, `buytime`, `status`) VALUES
(6, 'name1', 'address1', '123456', '12345', '2024-08-21 07:51:18', ''),
(7, 'name2', 'address2', '12345', '12345', '2024-08-21 07:52:18', ''),
(8, 'name3', 'address3', '12345', '12345', '2024-08-21 07:53:18', ''),
(9, 'name4', 'address4', '12345', '12345', '2024-08-21 07:54:18', ''),
(10, 'name5', 'address5', '12345', '12345', '2024-08-21 07:55:18', ''),
(11, 'name6', 'address6', '12345', '12345', '2024-08-21 07:56:18', ''),
(12, 'name7', 'address7', '12345', '12345', '2024-08-21 07:57:18', ''),
(13, 'name8', 'address8', '12345', '12345', '2024-08-21 07:58:18', ''),
(14, 'name9', 'address9', '12345', '12345', '2024-08-21 07:59:18', ''),
(15, 'name10', 'address10', '12345', '12345', '2024-08-21 08:00:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `idcard` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `phone`, `idcard`) VALUES
(1, 'name1', '12345', '12345'),
(2, 'name2', '12345', '12345'),
(3, 'name3', '12345', '12345'),
(4, 'name4', '12345', '12345'),
(5, 'name5', '12345', '12345'),
(6, 'name6', '12345', '12345'),
(11, 'name7', '12345', '12345'),
(12, 'name8', '123456', '12345'),
(13, 'name9', '123456', '12345'),
(14, 'name10', '123456', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
