-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 02:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `crews`
--

CREATE TABLE `crews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `contact_details` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crews`
--

INSERT INTO `crews` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `address`, `education`, `contact_details`, `created_at`, `updated_at`) VALUES
(1, 'renz', 'anima', 'valiente', 'animarenz@gmail.com', 'location test', 'education test', '09993572210', NULL, '2023-05-07 15:19:37'),
(2, 'John', 'De quiroz', '', 'jdequiroz@gmail.com', 'Imus, Cavite', 'College Graduate', '09956363937', NULL, NULL),
(3, 'Chino', 'Hernandez', 'Lee', 'chinohernandez@gmail.com', 'Dasmarinas, Cavite', 'Highschool Graduate', '09256363831', NULL, NULL),
(4, 'Clint', 'Davis', 'Forest', 'clintdavis@gmail.com', 'Silang, Cavite', 'College', '09928637053', '2023-05-07 14:13:23', '2023-05-07 14:13:23'),
(5, 'Kevin', 'Pepito', NULL, 'kevs@yahoo.com', 'Carmona, Cavite', 'Highschool', '09957293075', '2023-05-07 14:14:38', '2023-05-07 14:14:38'),
(6, 'Willa', 'Lehner', 'Kozey', 'kuphal.ernestine@example.com', '1311 Nathen Brook Apt. 984\nDawnville, NH 81768', 'Highschool', '1-828-349-3168', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(7, 'Aurore Heidenreich', 'Randall Glover', 'Victoria Boyer', 'vkerluke@example.com', '49964 Janick Coves\nClaireville, RI 23250-7626', 'Highschool', '+1 (469) 716-8805', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(8, 'Imani', 'Jane Gottlieb', 'Aidan Howell', 'sgutmann@example.com', '42810 Larson View\nWest Barrett, NM 07152-4504', 'College', '657-390-9723', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(9, 'Carlo', 'Walsh', 'Rempel', 'lakin.cynthia@example.org', '2067 Laron Expressway Suite 429\nLibbieborough, OR 02726-2324', 'College', '(971) 715-1269', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(10, 'Agustin', 'Fritsch', 'Durgan', 'xmorissette@example.org', '7751 Boehm Hills\nLake Carissa, OH 47521-3525', 'Highschool', '+1 (850) 628-9723', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(11, 'Lenora', 'Kerluke', 'Wolf', 'armstrong.khalil@example.org', '48117 Mathilde Camp Suite 235\nWest Sheilamouth, CA 79769', 'College', '+1 (320) 432-1669', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(12, 'Alysa', 'Walker', 'Schroeder', 'mrolfson@example.com', '2687 Abagail Union Apt. 822\nRunteview, AK 28157', 'College', '1-332-877-9721', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(13, 'Martina', 'Hintz', 'Hand', 'larkin.halie@example.net', '38511 Feil Village\nMcClureshire, OR 48046', 'College', '(904) 488-9168', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(14, 'Adonis', 'Heidenreich', 'Bartoletti', 'marvin.carolyne@example.org', '8227 Sporer Mountains Suite 038\nHermannfurt, AK 20035', 'College', '680.887.8671', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(15, 'Delia', 'Purdy', 'Oberbrunner', 'lmckenzie@example.com', '51363 Eichmann Squares Apt. 716\nWest Velmashire, NJ 89236-1461', 'College', '+1.727.627.4494', '2023-05-07 14:53:18', '2023-05-07 14:53:18'),
(16, 'Kenji', 'Necia', NULL, 'neciag@gmail.com', 'Imus, Cavite', 'College', '09964860153', '2023-05-07 15:13:37', '2023-05-07 15:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `document_number` bigint(20) NOT NULL,
  `date_issued` date DEFAULT NULL,
  `date_expiry` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `code`, `name`, `document_number`, `date_issued`, `date_expiry`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 43, 'sample document', 5442, '2023-04-11', '2023-05-09', 'remarks sample data', '2023-05-07 14:20:57', '2023-05-07 14:29:01'),
(6, 53, 'pdf file', 4354, '2023-04-30', '2023-06-03', NULL, '2023-05-07 16:20:17', '2023-05-07 16:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 2),
(33, '2014_10_12_100000_create_password_resets_table', 2),
(34, '2019_08_19_000000_create_failed_jobs_table', 2),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(36, '2023_05_07_154405_create_crews_table', 2),
(37, 'create_documents_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Renz Anima', 'animarenz08@gmail.com', NULL, '$2y$10$0B.rwZ8GJvZyKzHGXzp4GeCKPDHbyf6OAcHpeOiK1iT3FH830r8pe', NULL, '2023-05-07 15:45:22', '2023-05-07 15:45:22'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$FVjQf28L14tofw46Q0CyuONTjQD3Pjy2A4udNczL70AmLUVQUcIbe', NULL, '2023-05-07 16:03:28', '2023-05-07 16:03:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crews`
--
ALTER TABLE `crews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crews_email_unique` (`email`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_document_number_unique` (`document_number`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
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
-- AUTO_INCREMENT for table `crews`
--
ALTER TABLE `crews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
