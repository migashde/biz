-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 09:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `media` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `cat_id`, `title`, `content`, `media`, `media_id`, `created_date`) VALUES
(5, 2, 'storm is coming', '<p>A storm is coming. Is your supply prepared for the next disaster?</p>', '20200623103349.jpg', 11, '2020-06-23 16:33:49'),
(6, 2, 'ghfgfdasd', '<p>afgnhngfsd</p>', '20200623104111.jpg', 12, '2020-06-23 16:41:12'),
(7, 2, 'hgsfggdsaffdgfg', '<p>fgfghgfdfgggfdfd</p>', '20200623104235.jpg', 13, '2020-06-23 16:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `article_cats`
--

CREATE TABLE `article_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(245) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_cats`
--

INSERT INTO `article_cats` (`id`, `name`, `description`, `media_id`) VALUES
(2, 'aniglaliin nershilasdasdas', 'delgerneguiasdasd өаыб аөыб', 0),
(4, 'aniglalal', 'aniglalalallala', 0),
(5, 'shine angilal', 'angilal', 0),
(7, 'asdads', 'asdasd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `browser_info` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`user_id`, `ip_address`, `browser_info`, `date`) VALUES
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 15:11:44'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 15:26:50'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 15:27:02'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 15:42:29'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 15:44:55'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 15:45:40'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 15:46:04'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 16:04:27'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 16:12:03'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 16:56:17'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 16:57:25'),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 16:59:29'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 17:00:36'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 17:04:54'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2020-06-23 17:30:06'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 09:27:45'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 10:18:15'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 13:33:23'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 13:33:34'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 13:34:00'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 13:34:20'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 14:23:14'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 14:30:43'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', '2020-06-26 15:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `path` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `full_path` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `path`, `full_path`, `created_date`) VALUES
(1, '/test/uploads/images/thumbnail/image_resized_20200623082803.jpg', '/test/uploads/images/image_20200623082803.jpg', '2020-06-23 14:28:03'),
(2, '/test/uploads/images/thumbnail/image_resized_.jpg', '/test/uploads/images/image_.jpg', '2020-06-23 14:30:30'),
(3, '/test/uploads/images/thumbnail/image_resized_.jpg', '/test/uploads/images/image_.jpg', '2020-06-23 15:06:05'),
(4, '/test/uploads/images/thumbnail/image_resized_20200623090616.jpg', '/test/uploads/images/image_20200623090616.jpg', '2020-06-23 15:06:16'),
(5, '/test/uploads/images/thumbnail/image_resized_.jpg', '/test/uploads/images/image_.jpg', '2020-06-23 15:06:58'),
(6, '/test/uploads/images/thumbnail/image_resized_.jpg', '/test/uploads/images/image_.jpg', '2020-06-23 15:07:22'),
(7, '/test/uploads/images/thumbnail/image_resized_20200623095258.jpg', '/test/uploads/images/image_20200623095258.jpg', '2020-06-23 15:52:59'),
(8, '/test/uploads/images/thumbnail/image_resized_20200623095315.jpg', '/test/uploads/images/image_20200623095315.jpg', '2020-06-23 15:53:16'),
(9, '/test/uploads/images/thumbnail/image_resized_20200623101626.jpg', '/test/uploads/images/image_20200623101626.jpg', '2020-06-23 16:16:26'),
(10, '/test/uploads/images/thumbnail/image_resized_20200623103124.jpg', '/test/uploads/images/image_20200623103124.jpg', '2020-06-23 16:31:25'),
(11, '/test/uploads/images/thumbnail/image_resized_20200623103349.jpg', '/test/uploads/images/image_20200623103349.jpg', '2020-06-23 16:33:49'),
(12, '/test/uploads/images/thumbnail/image_resized_20200623104111.jpg', '/test/uploads/images/image_20200623104111.jpg', '2020-06-23 16:41:12'),
(13, '/test/uploads/images/thumbnail/image_resized_20200623104235.jpg', '/test/uploads/images/image_20200623104235.jpg', '2020-06-23 16:42:36'),
(14, '/test/uploads/images/thumbnail/image_resized_.jpg', '/test/uploads/images/image_.jpg', '2020-06-23 16:53:47'),
(15, '/test/uploads/images/thumbnail/image_resized_20200623111206.jpg', '/test/uploads/images/image_20200623111206.jpg', '2020-06-23 17:12:08'),
(16, '/test/uploads/images/thumbnail/image_resized_20200623113145.jpg', '/test/uploads/images/image_20200623113145.jpg', '2020-06-23 17:31:46'),
(17, '/test/uploads/images/thumbnail/image_resized_20200626035422.jpg', '/test/uploads/images/image_20200626035422.jpg', '2020-06-26 09:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `profs`
--

CREATE TABLE `profs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profs`
--

INSERT INTO `profs` (`id`, `name`) VALUES
(5, 'Санхүүч12'),
(6, 'vfds gfds gfds gfds'),
(7, 'mergejil123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `family_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `huis` enum('Эр','Эм','Бусад') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Эр',
  `birthday` date DEFAULT NULL,
  `prof_id` int(11) NOT NULL,
  `personal_id` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `driver_license` varchar(11) COLLATE utf8_unicode_ci DEFAULT 'Байхгүй',
  `passwd` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `family_name`, `name`, `huis`, `birthday`, `prof_id`, `personal_id`, `phone`, `email`, `address`, `driver_license`, `passwd`, `type`) VALUES
(1, '123123', '123123', 'Эр', '2020-06-21', 1, '123123', '123231', 'miga.shde2@gmail.com', '123123', 'Байхгүй', '601f1889667efaebb33b8c12572835da3f027f78', 'user'),
(2, 'ovog', 'ner', 'Эр', '2020-06-02', 1, 'УП95031410', '99303992', 'miga.shde@gmail.com', 'hayag', 'D', '$2y$10$iQvyYe3j1vMNnQqfvtFhBuDOQcVCCa50xzF/Ry2zQXGMB4O4EnU8C', 'user'),
(3, 'asdasd', 'asdasd', 'Эр', '2020-06-10', 1, 'asdasd', '123123123', 'haha@ha.ha', '123123', 'D', '$2y$10$naQC5GvtxUVPJColXiiHKepJdPFuiH9WJzFvmKVV3JXubRfJhmUrG', 'user'),
(4, 'miniovog', '123', 'Эм', '2020-06-01', 5, '12312312', '12312313', 'admin@admin.com', '123', 'B,C', '$2y$10$y1W6oHYKyZzKxAWNnxYLO.we7fgUWerYZJ7PRNuXHwyEthlohvnMi', 'admin'),
(5, '123123123', '123', 'Эм', '2020-06-16', 5, '12311111', '12312311', 'admin2@admin.com', '', 'C', '$2y$10$ISl9VyG7CcUM/k9j7fwi9OzwEjyo767tflLmTWipBYUb6/uybhCkC', 'user'),
(6, 'asd', 'asd', 'Эр', '2020-06-16', 2, 'asd', 'asd', 'asad@das.asd', 'asdas', 'Байхгүй', '$2y$10$RhAQ3QAcXMpVgKMTmyTs.OfGnNGlo8hFN13Rtm6RN1BOU5Wu.SWFO', 'user'),
(7, '123123123', '123123123', 'Эр', '2020-06-20', 2, '132123', '123123asd', '123123asd@gmial.com', '123123', 'Байхгүй', '$2y$10$Osw7Xketwd4lk9uhnhBoXuhmjORB.TdI634OsHkPuTAq.bQop0506', 'user'),
(8, 'asd', '123123', 'Бусад', '2020-06-19', 2, 'dfddgdf', '123542g', 'admin123@admin.com', '123r23', 'Байхгүй', '$2y$10$ZhcolPhLqhX8DdEdKXiz2u52g8UmR//UldFtxBT1bqTNxGs5dCRHG', 'user'),
(9, 'Otgoo', 'Otgoo', 'Эр', '2020-06-24', 5, 'gfdhfdsgfdsgfd', 'gfdsgfdsgfds', 'gfdsgfdsgfds@hgfdhgfd.hgfd', 'gfdsgfdsgfdsgfds', 'B', '$2y$10$DgzQ7OwRzMpGPmL5CDaKEeM8Pr.WMxibxy4OAwiK8PyX7tEtdH65a', 'user'),
(10, '', '', 'Эр', '2020-06-26', 5, '', '', '', '', NULL, '$2y$10$h86qZXHuA3EAJdNlfYrnHuqk.8h..fYPz/BE35FIFkkZBx3FfV2je', 'user'),
(11, 'gfg1231', '123123124gfdg', 'Эр', '2020-06-26', 5, 'АА12312323', '12323213', 'demo@ad.ad', 'dfdf', NULL, '$2y$10$L1So/1wLiHx5vU4P00Of6eUhCrSgtNz/24MdJCjnkaQWNjJya109C', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_cats`
--
ALTER TABLE `article_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profs`
--
ALTER TABLE `profs`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `article_cats`
--
ALTER TABLE `article_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `profs`
--
ALTER TABLE `profs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
