-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 04, 2020 at 04:39 PM
-- Server version: 8.0.19
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand`) VALUES
(1, 'Ventura\r\n'),
(2, 'Ataba\r\n'),
(3, 'Panasonic\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `valute_id` int UNSIGNED NOT NULL,
  `type_id` int UNSIGNED NOT NULL,
  `model_id` int UNSIGNED NOT NULL,
  `brand_id` int UNSIGNED NOT NULL,
  `production_id` int UNSIGNED NOT NULL,
  `used_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `name`, `valute_id`, `type_id`, `model_id`, `brand_id`, `production_id`, `used_id`) VALUES
(1, 'АКБ\r\n', 3, 2, 1, 3, 3, 1),
(2, 'ЗУ\r\n', 2, 1, 3, 1, 2, 3),
(3, 'ИБП\r\n', 1, 2, 2, 3, 3, 2),
(4, 'ЗУ\r\n', 2, 1, 2, 2, 2, 2),
(5, 'АКБ\r\n', 2, 2, 2, 2, 2, 1),
(6, 'ИБП\r\n', 3, 2, 1, 1, 1, 3),
(7, 'ИБП\r\n', 2, 2, 2, 2, 2, 3),
(8, 'ЗУ\r\n', 1, 1, 3, 3, 3, 2),
(9, 'АКБ\r\n', 2, 2, 2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int UNSIGNED NOT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `model`) VALUES
(1, 'TECHNOLOGY\r\n'),
(2, 'Carbon\r\n'),
(3, 'Power\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` int UNSIGNED NOT NULL,
  `production` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `production`) VALUES
(1, 'Германия\r\n'),
(2, 'Украина\r\n'),
(3, 'Япония\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'GEL\r\n'),
(2, 'AGM\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `uses`
--

CREATE TABLE `uses` (
  `id` int UNSIGNED NOT NULL,
  `used` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uses`
--

INSERT INTO `uses` (`id`, `used`) VALUES
(1, 'Авто\r\n'),
(2, 'Фонарь\r\n'),
(3, 'Сигнализация\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `valutes`
--

CREATE TABLE `valutes` (
  `id` int UNSIGNED NOT NULL,
  `valute` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `valutes`
--

INSERT INTO `valutes` (`id`, `valute`) VALUES
(1, 'USD'),
(2, 'UAH'),
(3, 'EUR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `valute_id` (`valute_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `production_id` (`production_id`),
  ADD KEY `main_ibfk_6` (`used_id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `valutes`
--
ALTER TABLE `valutes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uses`
--
ALTER TABLE `uses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `valutes`
--
ALTER TABLE `valutes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `main`
--
ALTER TABLE `main`
  ADD CONSTRAINT `main_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `main_ibfk_2` FOREIGN KEY (`valute_id`) REFERENCES `valutes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `main_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `main_ibfk_4` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `main_ibfk_5` FOREIGN KEY (`production_id`) REFERENCES `productions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `main_ibfk_6` FOREIGN KEY (`used_id`) REFERENCES `uses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
