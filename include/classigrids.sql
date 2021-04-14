-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 02:07 PM
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
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `price_type_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `youtube_link` varchar(211) NOT NULL,
  `description` text NOT NULL,
  `condition_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `sending_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `free_delivery` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `price`, `price_type_id`, `currency_id`, `images`, `youtube_link`, `description`, `condition_id`, `sub_category_id`, `amount`, `sending_id`, `payment_id`, `free_delivery`, `created_at`, `updated_at`, `expires_at`, `user_id`, `slug`) VALUES
(190, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut ', '122.23', 1, 2, '11618401901.png|21618401901.png|31618401901.png|41618401901.png|51618401901.png|61618401901.png|61618401901.png', 'fsfsdfsfsdf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fermentum dui faucibus in ornare quam viverra orci. Molestie nunc non blandit massa enim nec dui nunc mattis. Purus viverra accumsan in nisl nisi scelerisque eu ultrices. Lectus sit amet est placerat in egestas erat imperdiet. Egestas purus viverra accumsan in. Sit amet justo donec enim. Quam adipiscing vitae proin sagittis nisl rhoncus. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec.\r\n\r\nNec ultrices dui sapien eget mi proin sed. Morbi blandit cursus risus at ultrices mi tempus imperdiet. Sed tempus urna et pharetra pharetra massa massa ultricies mi. Sed adipiscing diam donec adipiscing tristique risus nec feugiat in. Nunc congue nisi vitae suscipit tellus mauris. Orci porta non pulvinar neque laoreet suspendisse interdum. Vitae tortor condimentum lacinia quis vel eros donec ac. Nibh venenatis cras sed felis eget velit aliquet. Neque viverra justo nec ultrices dui. Sit amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Egestas fringilla phasellus faucibus scelerisque. Consequat ac felis donec et odio. Vestibulum lectus mauris ultrices eros. Semper quis lectus nulla at volutpat diam ut venenatis.', 2, 4, 12, 2, 2, 1, '2021-04-14 14:05:01', '2021-04-14 14:05:01', '2021-05-14 14:05:01', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`) VALUES
(1, 'Category 1', 'category-1'),
(2, 'Category 2', 'category-2'),
(3, 'Category 3', 'çategory-3');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `skug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `title`, `skug`) VALUES
(1, 'Condition 1', 'condition-1'),
(2, 'Condition 2', 'condition-2'),
(3, 'Condition 3', 'condition 3'),
(4, 'Condition 4', 'condition-4');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `slug`) VALUES
(1, 'Currency 1', 'currency-1'),
(2, 'Currency 2', 'currency-2'),
(3, 'Currency 3', 'currency-3');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `slug`) VALUES
(1, 'Payment 1', 'payment-1'),
(2, 'Payment 2', 'Payment-2'),
(3, 'Payment 3', 'payment-3');

-- --------------------------------------------------------

--
-- Table structure for table `price_types`
--

CREATE TABLE `price_types` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price_types`
--

INSERT INTO `price_types` (`id`, `title`, `slug`) VALUES
(1, 'Price type 1', 'price-type-1'),
(2, 'Price type 2', 'price-type-2');

-- --------------------------------------------------------

--
-- Table structure for table `sending_methods`
--

CREATE TABLE `sending_methods` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sending_methods`
--

INSERT INTO `sending_methods` (`id`, `title`, `slug`) VALUES
(1, 'Sending 1', 'sending-1'),
(2, 'Sending 2', 'sending-2');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(211) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `title`, `category_id`, `slug`) VALUES
(1, 'Sub category 1', 1, 'sub-category-1'),
(2, 'Sub category 2', 2, 'sub-category-2'),
(3, 'Sub category 3', 3, 'sub-category-3'),
(4, 'Sub category 4', 1, 'sub-category-4'),
(5, 'Sub category 5', 2, 'sub-category-5');

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
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `price_types`
--
ALTER TABLE `price_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sending_methods`
--
ALTER TABLE `sending_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `price_types`
--
ALTER TABLE `price_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sending_methods`
--
ALTER TABLE `sending_methods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
