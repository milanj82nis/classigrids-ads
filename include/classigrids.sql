-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 11:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classigrids`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(211) NOT NULL,
  `last_name` varchar(211) NOT NULL,
  `state` varchar(211) NOT NULL,
  `city` varchar(211) NOT NULL,
  `postal_code` varchar(211) NOT NULL,
  `address` varchar(211) NOT NULL,
  `email` varchar(211) NOT NULL,
  `phone_number` varchar(211) NOT NULL,
  `password` varchar(211) NOT NULL,
  `banned` int(211) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `token` varchar(211) DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `state`, `city`, `postal_code`, `address`, `email`, `phone_number`, `password`, `banned`, `active`, `token`, `is_admin`, `created_at`) VALUES
(3, 'Milan', 'Janković', 'Serbia', 'Niš', '18000', 'Branka Miljkovića 8', 'milanj31@gmail.com', '0629659932', '$2y$10$4f3Y8OBRsvkpQfOualKKSeUNKnm4W6ENvX3P5tPj6YQz4Ox3rOVDG', 0, 1, NULL, 0, '2021-04-06 22:56:11');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
