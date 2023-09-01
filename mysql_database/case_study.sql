-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 03:33 PM
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
-- Database: `case_study`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_30_140701_create_user_data_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `full_name`, `phone_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Jayda Casper', '407-910-0810', 'gcronin@yahoo.com', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(2, 'Jairo Balistreri Jr.', '442-726-3515', 'nicklaus81@hotmail.com', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(3, 'Orrin Rohan', '+1-240-732-1024', 'greta47@gmail.com', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(4, 'Citlalli Hermiston Jr.', '432-636-1118', 'lziemann@mertz.com', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(5, 'Dr. Milo Rutherford Jr.', '(843) 879-8700', 'armstrong.blanca@hotmail.com', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(6, 'Dwight Rowe Sr.', '302-412-1888', 'hodkiewicz.palma@rodriguez.com', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(7, 'Jacynthe Gutkowski', '+1.605.892.0384', 'bridget.gleichner@hotmail.com', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(8, 'Prof. Jerad Homenick', '+1 (380) 297-0599', 'omorissette@gmail.com', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(9, 'Scotty Klein DDS', '1-479-720-9339', 'carlee.ernser@waters.net', '2023-09-01 10:32:41', '2023-09-01 10:32:41'),
(10, 'Jasen Rice', '706-968-2331', 'qdicki@yahoo.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(11, 'Althea Lebsack', '+1 (361) 332-5993', 'grogahn@kub.biz', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(12, 'Emerald Watsica PhD', '240.429.5405', 'runte.verdie@prosacco.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(13, 'Garnet Mills', '1-317-754-9759', 'laury84@schowalter.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(14, 'Janet Cartwright', '+1-551-972-7139', 'myrna29@hyatt.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(15, 'Dana Kling II', '(352) 267-5113', 'micaela.jerde@yahoo.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(16, 'Lamar Daniel I', '361-751-5727', 'psenger@yahoo.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(17, 'Lyda Labadie II', '332.462.5795', 'vrussel@yahoo.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(18, 'Marlee Beahan', '+1 (820) 868-8389', 'mueller.crystal@hotmail.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(19, 'Donny Gorczany', '325.485.8634', 'hpowlowski@carter.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(20, 'Vernie Mayert Sr.', '+1-832-684-9841', 'ida72@ratke.org', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(21, 'Veda Pagac I', '+1.724.377.6407', 'baumbach.maxie@hotmail.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(22, 'Miss Ernestine Christiansen IV', '1-815-635-8027', 'hyatt.kip@gmail.com', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(23, 'Nakia Auer', '+1-928-847-8540', 'dean89@keebler.net', '2023-09-01 10:32:42', '2023-09-01 10:32:42'),
(24, 'Bradly Mertz', '+16267139682', 'rodriguez.kurt@yahoo.com', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(25, 'Pierre Hickle', '+1 (209) 214-0449', 'desmond21@champlin.org', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(26, 'Ena O\'Hara', '432.603.2022', 'gutmann.gerardo@hotmail.com', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(27, 'Gabriel Jacobson', '1-260-582-5558', 'peter00@block.com', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(28, 'Mrs. Kathleen Kemmer', '346.542.5181', 'ebrown@brown.biz', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(29, 'Randall Volkman Jr.', '+19252865596', 'edna.walter@hotmail.com', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(30, 'Viviane Macejkovic MD', '231-813-4031', 'dahlia61@hagenes.com', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(31, 'Van Langworth', '336.590.2954', 'waufderhar@gmail.com', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(32, 'Aidan Braun', '+1 (412) 535-9139', 'mertz.natalia@yahoo.com', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(33, 'Jacky Greenholt', '878-657-0887', 'jsanford@watsica.net', '2023-09-01 10:32:43', '2023-09-01 10:32:43'),
(34, 'Dawson Emard', '954-793-9352', 'kirstin45@gerhold.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(35, 'Alison Okuneva', '347.291.7611', 'odie.bode@reilly.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(36, 'Emmet Lindgren', '+1.407.942.7311', 'lysanne.roberts@gmail.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(37, 'Kelly Hilpert DDS', '332-655-0185', 'darien39@mann.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(38, 'Prof. Eleanore Tremblay', '(434) 304-2615', 'sanford37@rohan.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(39, 'Dortha Sawayn I', '(316) 966-4140', 'leannon.fae@yahoo.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(40, 'Heather Davis', '1-860-790-2481', 'larkin.dejuan@yahoo.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(41, 'Bailey Homenick IV', '253.586.1559', 'bkunde@lueilwitz.info', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(42, 'Deangelo Steuber', '(616) 792-5350', 'mozell71@gmail.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(43, 'Jermey Batz IV', '+1-984-486-7250', 'fred13@botsford.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(44, 'Kim Quitzon', '334-549-9078', 'israel11@lebsack.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(45, 'Mandy Tremblay', '352-248-0750', 'vmayert@wintheiser.org', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(46, 'Sunny Gutkowski', '573-430-1518', 'pglover@mayert.org', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(47, 'Lavonne Blanda', '+1-480-597-0867', 'uhudson@yahoo.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(48, 'Irma Heathcote', '1-934-207-7665', 'bzulauf@jerde.com', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(49, 'Brionna Leuschke', '(601) 823-2793', 'darrin52@bradtke.org', '2023-09-01 10:32:44', '2023-09-01 10:32:44'),
(50, 'Ebony Streich', '(364) 725-4690', 'ekautzer@tillman.org', '2023-09-01 10:32:45', '2023-09-01 10:32:45');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_data_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `user_data_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
