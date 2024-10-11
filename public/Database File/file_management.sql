-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2024 at 10:54 AM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `directories`
--

CREATE TABLE `directories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directories`
--

INSERT INTO `directories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'root', NULL, '2024-10-09 01:49:24', '2024-10-09 01:49:24'),
(2, 'dir1', 1, '2024-10-09 01:49:24', '2024-10-09 01:49:24'),
(3, 'dir2', 1, '2024-10-09 01:49:24', '2024-10-09 01:49:24'),
(11, 'Images', NULL, NULL, NULL),
(13, 'Music', NULL, '2024-10-09 06:43:44', '2024-10-09 06:43:44'),
(14, 'IT Projects', NULL, '2024-10-09 06:44:55', '2024-10-09 06:44:55'),
(15, 'BBIT Notes', NULL, '2024-10-09 06:45:16', '2024-10-09 06:45:16'),
(16, 'Abby\'s Pictures', NULL, '2024-10-09 06:45:36', '2024-10-09 06:45:36'),
(17, 'Games', NULL, '2024-10-09 06:45:46', '2024-10-09 06:45:46'),
(18, 'Gwano', NULL, '2024-10-09 06:45:57', '2024-10-09 06:45:57'),
(19, 'Work Projects', NULL, '2024-10-09 06:46:05', '2024-10-09 06:46:05'),
(20, 'School Assignment', NULL, '2024-10-09 06:46:14', '2024-10-09 06:46:14'),
(21, 'Kenya', NULL, '2024-10-09 06:59:33', '2024-10-09 06:59:33'),
(22, 'Tanzania', NULL, '2024-10-09 06:59:43', '2024-10-09 06:59:43'),
(23, 'Uganda', NULL, '2024-10-09 06:59:50', '2024-10-09 06:59:50'),
(24, 'Rwanda', NULL, '2024-10-09 06:59:57', '2024-10-09 06:59:57'),
(25, 'Test', NULL, '2024-10-09 07:08:07', '2024-10-09 07:08:07'),
(26, 'South Africa', NULL, '2024-10-09 07:28:03', '2024-10-09 07:28:03'),
(27, 'Kivumbi 2022', NULL, '2024-10-09 08:08:58', '2024-10-09 08:08:58'),
(28, 'Kivumbi 2023', NULL, '2024-10-09 08:09:09', '2024-10-09 08:09:09'),
(29, 'JBC', NULL, '2024-10-09 08:09:20', '2024-10-09 08:09:20'),
(30, 'Novels', NULL, '2024-10-09 08:09:29', '2024-10-09 08:09:29'),
(31, 'My Computer', NULL, '2024-10-09 08:09:37', '2024-10-09 08:09:37'),
(32, 'Defender', NULL, '2024-10-09 11:57:34', '2024-10-09 11:57:34'),
(33, 'USA Elections', NULL, '2024-10-09 13:07:25', '2024-10-09 13:07:25'),
(34, 'Kenya Kwisha', NULL, '2024-10-09 13:40:47', '2024-10-09 13:40:47'),
(35, 'Chem', NULL, '2024-10-09 19:52:33', '2024-10-09 19:52:33'),
(36, 'Biology', NULL, '2024-10-09 20:02:05', '2024-10-09 20:02:05'),
(37, 'Physics', NULL, '2024-10-09 20:02:13', '2024-10-09 20:02:13'),
(38, 'Test123', NULL, '2024-10-09 20:47:46', '2024-10-09 20:47:46'),
(39, 'test4', NULL, '2024-10-09 20:48:05', '2024-10-09 20:48:05'),
(40, 'twst', NULL, '2024-10-09 21:04:38', '2024-10-09 21:04:38'),
(41, 'Godhana', NULL, '2024-10-09 21:06:26', '2024-10-09 21:06:26'),
(42, 'James', NULL, '2024-10-09 21:06:40', '2024-10-09 21:06:40'),
(43, 'Mwala', NULL, '2024-10-09 21:26:39', '2024-10-09 21:26:39'),
(44, 'test', 1, '2024-10-10 03:44:01', '2024-10-10 03:44:01'),
(45, 'test', 14, '2024-10-10 03:44:55', '2024-10-10 03:44:55'),
(46, 'test', 14, '2024-10-10 03:45:05', '2024-10-10 03:45:05'),
(47, 'test3', 14, '2024-10-10 03:45:16', '2024-10-10 03:45:16'),
(48, 'Test', 11, '2024-10-10 03:45:46', '2024-10-10 03:45:46'),
(49, 'test2', 11, '2024-10-10 03:48:06', '2024-10-10 03:48:06'),
(50, 'ben', 11, '2024-10-10 03:48:21', '2024-10-10 03:48:21'),
(51, 'Jan', 11, '2024-10-10 03:48:43', '2024-10-10 03:48:43'),
(52, 'Test', 13, '2024-10-10 03:49:05', '2024-10-10 03:49:05'),
(53, 'test', 13, '2024-10-10 03:49:17', '2024-10-10 03:49:17'),
(54, 'test', 15, '2024-10-10 03:49:56', '2024-10-10 03:49:56'),
(55, 'test', 15, '2024-10-10 03:50:04', '2024-10-10 03:50:04'),
(56, 'test', 11, '2024-10-10 03:51:50', '2024-10-10 03:51:50'),
(57, 'rwss', 15, '2024-10-10 03:52:00', '2024-10-10 03:52:00'),
(58, 'Juja', NULL, '2024-10-10 03:52:14', '2024-10-10 03:52:14'),
(59, 'test123', NULL, '2024-10-10 03:53:11', '2024-10-10 03:53:11'),
(60, 'Ben', 13, '2024-10-10 03:53:31', '2024-10-10 03:53:31'),
(61, 'Dingly', NULL, '2024-10-10 03:59:42', '2024-10-10 03:59:42'),
(62, 'Graduation', NULL, '2024-10-10 03:59:58', '2024-10-10 03:59:58'),
(63, 'test', 62, '2024-10-10 04:00:17', '2024-10-10 04:00:17'),
(64, 'test', 62, '2024-10-10 04:00:19', '2024-10-10 04:00:19'),
(65, 'test', 62, '2024-10-10 04:00:20', '2024-10-10 04:00:20'),
(66, 'test', 62, '2024-10-10 04:00:20', '2024-10-10 04:00:20'),
(67, 'test', 62, '2024-10-10 04:00:29', '2024-10-10 04:00:29'),
(68, 'Ben', 1, '2024-10-10 06:45:29', '2024-10-10 06:45:29'),
(69, 'test34', 1, '2024-10-10 08:05:10', '2024-10-10 08:05:10'),
(70, 'test', 38, '2024-10-10 17:05:13', '2024-10-10 17:05:13'),
(71, 'patrick', NULL, '2024-10-11 04:29:20', '2024-10-11 04:29:20'),
(72, 'patrick', 71, '2024-10-11 04:29:34', '2024-10-11 04:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `size`, `type`, `directory_id`, `created_at`, `updated_at`) VALUES
(1, 'file_root.txt', 'root/file_root.txt', 0, '', 1, '2024-10-09 01:54:02', '2024-10-09 01:54:02'),
(2, 'file1.txt', 'root/dir1/file1.txt', 0, '', 2, '2024-10-09 01:54:02', '2024-10-09 01:54:02'),
(3, 'file2.txt', 'root/dir1/file2.txt', 0, '', 2, '2024-10-09 01:54:02', '2024-10-09 01:54:02'),
(4, 'file3.txt', 'root/dir1/dir2/file3.txt', 0, '', 3, '2024-10-09 01:54:02', '2024-10-09 01:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_09_043828_create_directories_table', 2),
(6, '2024_10_09_043828_create_files_table', 2),
(7, '2024_10_09_214728_add_size_and_type_to_files_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directories`
--
ALTER TABLE `directories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_directory_id_foreign` (`directory_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directories`
--
ALTER TABLE `directories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `directories`
--
ALTER TABLE `directories`
  ADD CONSTRAINT `directories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `directories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_directory_id_foreign` FOREIGN KEY (`directory_id`) REFERENCES `directories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
