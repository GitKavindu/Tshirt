-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 03:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer`, `total`) VALUES
(6, 'bfg@gmail.com', 32000),
(7, 'bfg@gmail.com', 32000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `Shirt_name` varchar(255) DEFAULT NULL,
  `Shirt_image` varchar(255) DEFAULT NULL,
  `Shirt_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `Shirt_name`, `Shirt_image`, `Shirt_price`) VALUES
(9, 'Yellow shirt', 'uploads/imagwwes.jpg', 5000),
(10, 'Black shirt', 'uploads/9562.png_860.png', 3000),
(11, 'My Shirt', 'uploads/images.jpg', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `mobile`, `password`) VALUES
(1, 'kasun', 'awantha', 'kasunawantha@gmail.com', 1234567896, '1234'),
(2, 'kavindu', 'harshana', 'bfg@gmail.com', 761529644, '$2y$10$IEYS3ga7RMNhXYkl0VSWKel7CDGLyZrmj1CUWGj7ORh0X/g9efQTu'),
(3, 'ooo', 'ooooooooooo', 'befg@gmail.com', 768756345, '$2y$10$yjYgj8V6mCdbu8Z9bYC95.iXyhqgOcYQdOGdsc8DgPggRzufFod5S'),
(4, 'rfregrg', 'jjfgj', 'asdf@gmail.com', 123456123, '$2y$10$yFF/tjyLgvkN3CcmAbmexe2mpOysytEEmV86WPTldcEBy1ytEtF7u'),
(5, 'Saman', 'Edirimuni', 'saman@mail.com', 987654321, '$2y$10$wLexTaqVf8S.lWvZN7GFaeutVv/ajZf9FnOkSbg5IA6ukPohvXgD.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
