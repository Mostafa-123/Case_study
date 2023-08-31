-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2023 at 03:07 PM
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
(1, 'Lonnie Adams', '+19156669639', 'herzog.vena@lakin.com', '2023-08-31 09:58:57', '2023-08-31 09:58:57'),
(2, 'Shanon Quitzon', '240-506-1669', 'vleffler@flatley.net', '2023-08-31 09:58:57', '2023-08-31 09:58:57'),
(3, 'Clark Kuhlman', '312-816-9263', 'shirley34@hotmail.com', '2023-08-31 09:58:57', '2023-08-31 09:58:57'),
(4, 'Linnea Kertzmann', '640-546-0833', 'arturo.runolfsdottir@gmail.com', '2023-08-31 09:58:57', '2023-08-31 09:58:57'),
(5, 'Hettie Kirlin', '380.915.9475', 'ejast@dickinson.info', '2023-08-31 09:58:57', '2023-08-31 09:58:57'),
(6, 'Adrain Waelchi', '952.597.0499', 'maximillia.schuppe@yahoo.com', '2023-08-31 09:58:57', '2023-08-31 09:58:57'),
(7, 'Harvey Stroman', '+1 (586) 466-4831', 'larkin.emma@rowe.com', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(8, 'Dr. Kianna Bradtke', '+1-281-821-0631', 'weichmann@nienow.com', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(9, 'Shirley Barton V', '+1-380-259-4852', 'cassidy12@hotmail.com', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(10, 'Violet Stanton', '909.908.3281', 'samantha.rippin@yahoo.com', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(11, 'Maxine Hodkiewicz', '+1 (478) 898-3969', 'ahmed43@hotmail.com', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(12, 'Dr. Ara Schroeder', '+1-973-829-8330', 'kerluke.lonie@yahoo.com', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(13, 'Ms. Carrie Homenick', '1-216-440-4960', 'olaf45@fadel.info', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(14, 'Astrid Marvin', '929-490-0775', 'francesco.batz@murphy.net', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(15, 'Marguerite Rolfson', '380-676-7221', 'qcole@okeefe.com', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(16, 'Sabrina Bergnaum DVM', '603-504-7598', 'hmetz@kunze.info', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(17, 'Alfonso Ortiz', '+1.662.979.3002', 'fannie88@pfeffer.biz', '2023-08-31 09:58:58', '2023-08-31 09:58:58'),
(18, 'Miss Josefa Collier II', '803.541.5151', 'bogan.jamir@predovic.biz', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(19, 'Dario Lowe V', '+1.470.897.1807', 'kmetz@gmail.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(20, 'Santos Howell', '(805) 967-5100', 'collin.hill@hotmail.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(21, 'Bonita Hessel', '+1-478-812-9991', 'barrows.queenie@koelpin.biz', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(22, 'Jorge Breitenberg', '(346) 761-2848', 'sallie77@hotmail.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(23, 'Linnea McLaughlin V', '1-516-942-0661', 'raymundo52@gleichner.info', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(24, 'Alexander Osinski', '1-510-769-0412', 'catharine56@denesik.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(25, 'Petra Bergnaum', '443-266-3051', 'cameron63@gmail.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(26, 'Quinten Rodriguez', '364-905-3767', 'clinton49@hotmail.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(27, 'Elisabeth Roob', '325-997-3718', 'jerrell99@hotmail.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(28, 'Ariel McGlynn', '361-791-8506', 'johns.jovany@gmail.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(29, 'Reggie Murazik', '1-445-578-3884', 'sheila86@bechtelar.com', '2023-08-31 09:58:59', '2023-08-31 09:58:59'),
(30, 'Kaylin Lynch', '781.696.9227', 'swift.duane@runte.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(31, 'Niko Rohan Jr.', '(484) 389-7320', 'hwuckert@torphy.info', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(32, 'Mrs. Lillian Howell', '1-352-701-2397', 'clemens.fahey@brown.biz', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(33, 'Jaquelin Gutkowski DVM', '+1-352-714-9772', 'ocie18@hotmail.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(34, 'Lolita Anderson', '1-361-202-0293', 'nrunte@orn.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(35, 'Prof. Brody Frami DVM', '(570) 813-1926', 'dkutch@shanahan.net', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(36, 'Brendon Howe', '+18703172361', 'sabryna.greenfelder@okeefe.biz', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(37, 'Barry King', '+12487405809', 'oconner.john@gmail.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(38, 'Willa White Sr.', '(567) 694-5911', 'bethany34@yahoo.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(39, 'Dr. Diana Gislason PhD', '+12409471625', 'breanne84@yahoo.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(40, 'Mr. Devonte Gaylord II', '657-381-3804', 'hilpert.bradford@yahoo.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(41, 'Lyric Volkman', '+1.405.437.6801', 'woreilly@hotmail.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(42, 'Lenna Fisher MD', '+1-878-681-2018', 'qaufderhar@terry.biz', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(43, 'Emilio Baumbach', '+16128627997', 'rosie19@gmail.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(44, 'Miss Valentina Gleichner', '+1.262.506.5355', 'walker.raheem@yahoo.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(45, 'Joelle O\'Connell', '+17738048991', 'cdouglas@nikolaus.org', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(46, 'Harry Heller Jr.', '1-252-372-4912', 'zackary19@kohler.biz', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(47, 'Bridgette Stiedemann Jr.', '+13096008023', 'nathanial02@parker.biz', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(48, 'Pauline Hickle V', '(207) 292-8005', 'jorge.krajcik@blanda.info', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(49, 'Emory Braun', '442.937.3610', 'alberta01@yahoo.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(50, 'Lillie Stracke', '1-341-771-7740', 'rath.khalil@yahoo.com', '2023-08-31 09:59:00', '2023-08-31 09:59:00'),
(51, 'Ashleigh Jacobi', '+1 (641) 926-7851', 'vesta.prohaska@moen.info', '2023-08-31 09:59:06', '2023-08-31 09:59:06'),
(52, 'Dr. Lizzie Goodwin PhD', '+17573173666', 'qerdman@stark.com', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(53, 'Mr. Giuseppe Wiza', '+1.585.745.4142', 'egerlach@hills.biz', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(54, 'Ms. Betty Monahan Jr.', '(267) 317-7769', 'langworth.carole@welch.com', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(55, 'Giuseppe Ratke', '+1-608-717-2331', 'ignacio.weimann@halvorson.org', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(56, 'Nicholas Mills IV', '(352) 874-6071', 'ssanford@gmail.com', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(57, 'Verdie Zemlak', '+16514621139', 'angeline80@hotmail.com', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(58, 'Ms. Winifred Lueilwitz', '937.412.2516', 'hane.kaden@bechtelar.com', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(59, 'Prof. Scot Graham V', '+1-220-337-0749', 'meredith.gusikowski@gmail.com', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(60, 'Dr. Henry Grady', '304.282.4414', 'tierra93@hotmail.com', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(61, 'Pedro Waelchi', '(743) 357-7252', 'jledner@beer.org', '2023-08-31 09:59:07', '2023-08-31 09:59:07'),
(62, 'Prof. Maye Armstrong', '351.839.0866', 'deondre20@heathcote.info', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(63, 'Hailie Runte', '+1.283.310.7495', 'franecki.jude@schmitt.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(64, 'Jimmy Kohler', '458.764.4268', 'pearline.bauch@gmail.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(65, 'Dr. Ralph Kuhic', '+18472211116', 'kaden30@parker.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(66, 'Dr. Dorthy Orn', '+1-972-986-4715', 'myles66@spinka.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(67, 'Jaida Olson', '(980) 380-7948', 'jzulauf@hessel.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(68, 'Kraig Upton DVM', '(970) 777-9178', 'mertz.darwin@prosacco.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(69, 'Ashley Powlowski', '+1 (440) 525-1169', 'elfrieda45@hotmail.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(70, 'Oswaldo Tillman', '270.514.9623', 'koch.jaquan@yahoo.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(71, 'Fredy Walsh IV', '+1 (225) 200-1758', 'rmorissette@bailey.org', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(72, 'Dennis Wiegand', '+1-678-603-5736', 'daron.hyatt@gmail.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(73, 'Bertram Schroeder', '970.326.5503', 'edgar62@upton.biz', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(74, 'Maiya Price', '+1-815-333-6190', 'murray.roberts@hotmail.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(75, 'Mr. Dane Nikolaus', '+1.986.742.0735', 'elva33@gmail.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(76, 'Keenan Connelly', '(337) 331-7181', 'princess06@yahoo.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(77, 'Nico Pfannerstill', '1-719-394-2147', 'lhansen@jakubowski.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(78, 'Angeline Schmitt DVM', '+16108851214', 'celine.ledner@walter.com', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(79, 'Gaylord Roberts', '310.941.0302', 'lpouros@boyer.biz', '2023-08-31 09:59:08', '2023-08-31 09:59:08'),
(80, 'Dr. Anna Donnelly PhD', '+1-956-639-5734', 'eichmann.doyle@gmail.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(81, 'Kiera Kub II', '+1 (986) 905-4395', 'shanahan.colten@roberts.org', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(82, 'Dr. Alfredo Hermann IV', '+1-305-334-9752', 'xkshlerin@yahoo.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(83, 'Deja Bergstrom MD', '747-597-8059', 'stuart.bashirian@bernier.info', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(84, 'Dr. Marisa Hettinger PhD', '762.862.5922', 'golda.cronin@berge.biz', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(85, 'Lisandro Oberbrunner', '+1-959-375-4563', 'jacobi.juana@hotmail.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(86, 'Felicity Abshire', '+1-612-924-2245', 'bayer.lou@kohler.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(87, 'Kaela Mayert', '1-952-251-2407', 'karen35@gmail.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(88, 'Rollin Cremin', '+1-409-983-7763', 'tara92@yahoo.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(89, 'Aileen Walsh', '+1 (725) 677-7347', 'mariana.hane@yahoo.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(90, 'Prof. Walton Jakubowski', '612-421-1419', 'rose23@wisoky.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(91, 'Immanuel Cartwright', '1-425-899-3500', 'donato55@gmail.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(92, 'Dr. Meghan Murray', '(480) 339-6834', 'yzulauf@cole.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(93, 'Janice Grady', '463.516.0470', 'winifred.pouros@pacocha.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(94, 'Aubree Nikolaus', '+1.551.687.3087', 'vdaniel@yahoo.com', '2023-08-31 09:59:09', '2023-08-31 09:59:09'),
(95, 'Izabella Smitham', '920-353-9895', 'madyson34@monahan.com', '2023-08-31 09:59:10', '2023-08-31 09:59:10'),
(96, 'Reyes Hilpert III', '562-223-8574', 'amalia.collier@tillman.net', '2023-08-31 09:59:10', '2023-08-31 09:59:10'),
(97, 'Tanya Kozey', '361.416.0866', 'ariane06@yahoo.com', '2023-08-31 09:59:10', '2023-08-31 09:59:10'),
(98, 'Mrs. Neva Wilkinson', '817.590.4611', 'ritchie.laurel@ullrich.org', '2023-08-31 09:59:10', '2023-08-31 09:59:10'),
(99, 'Elyse Gusikowski III', '(929) 656-3519', 'bayer.violette@yahoo.com', '2023-08-31 09:59:10', '2023-08-31 09:59:10'),
(100, 'Rodger Balistreri', '1-323-823-6760', 'daniel.vella@gorczany.net', '2023-08-31 09:59:10', '2023-08-31 09:59:10'),
(101, 'Id', 'Full_name', 'Phone_number', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(102, '1', 'Francisco Schmeler', '580.522.8035', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(103, '2', 'Lorenz Torphy', '+1-220-880-1767', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(104, '3', 'Scot Moen PhD', '781.271.4560', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(105, '4', 'Clara Moore', '+1.864.432.1563', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(106, '5', 'Ilene Walker', '+1-737-617-7337', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(107, '6', 'Bret Stanton', '1-641-356-3659', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(108, '7', 'Laurie Ondricka', '+1 (541) 906-5105', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(109, '8', 'Cara Hamill', '814.640.8891', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(110, '9', 'Dr. Hayley Legros', '+1 (559) 594-8398', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(111, '10', 'Derick Waters', '267.601.8885', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(112, '11', 'Mr. Enrique Toy', '252-530-5630', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(113, '12', 'Miss Phyllis Lebsack I', '+1-531-244-4739', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(114, '13', 'Dr. Kyleigh Keeling', '585.751.3558', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(115, '14', 'Juliana Senger II', '682-575-7533', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(116, '15', 'Jacey Gibson', '(380) 300-2379', '2023-08-31 10:00:01', '2023-08-31 10:00:01'),
(117, '16', 'Wilhelm Predovic', '720-510-9473', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(118, '17', 'Britney Dooley DVM', '+1-878-269-1019', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(119, '18', 'Lessie Beahan Sr.', '1-954-644-9761', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(120, '19', 'Dr. Americo Green', '347.507.6615', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(121, '20', 'Mrs. Minnie Lemke', '+1-972-915-8097', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(122, '21', 'Gregg Brakus', '219-655-5962', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(123, '22', 'Viva Rippin', '1-561-302-6956', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(124, '23', 'Mabel Kshlerin', '458.328.1578', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(125, '24', 'Kyler Roberts', '+1.423.462.9067', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(126, '25', 'Weston Tremblay', '928.944.1861', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(127, '26', 'Cameron Nikolaus', '770.860.5675', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(128, '27', 'Keely Smith Sr.', '+1.214.960.0811', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(129, '28', 'Vergie Kiehn PhD', '(603) 202-5509', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(130, '29', 'Trent Ullrich', '1-870-217-2603', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(131, '30', 'Shania Quitzon', '1-610-319-9787', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(132, '31', 'Marie Paucek', '1-913-359-2826', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(133, '32', 'Laurence Dickinson', '+1 (220) 881-0839', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(134, '33', 'America Swaniawski', '(820) 213-9149', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(135, '34', 'Dr. Kaitlin O\'Keefe', '+1-405-864-9739', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(136, '35', 'Rashawn Klein', '971-546-9875', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(137, '36', 'Bernard Ruecker', '731-707-4476', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(138, '37', 'Dominique Crona', '1-520-299-4976', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(139, '38', 'Lula Beatty', '1-820-965-4972', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(140, '39', 'Verona Kub', '1-651-754-4306', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(141, '40', 'Mr. Waino Yundt', '(772) 995-2673', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(142, '41', 'Abbey Fadel', '(737) 900-4357', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(143, '42', 'Prof. Kacey Metz', '+1 (224) 619-9318', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(144, '43', 'Zaria Leuschke', '531-597-1778', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(145, '44', 'Walton Larkin', '(248) 557-2939', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(146, '45', 'Valentin Schaefer', '1-951-709-2484', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(147, '46', 'Juliana Mayer MD', '1-212-483-6656', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(148, '47', 'Billy Crist', '+1-513-538-2691', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(149, '48', 'Miss Pansy Wiza', '(380) 267-4767', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(150, '49', 'Mr. Jonathan Littel', '+1.469.621.7534', '2023-08-31 10:00:02', '2023-08-31 10:00:02'),
(151, '50', 'Dr. Mariam Huels IV', '17654425615', '2023-08-31 10:00:02', '2023-08-31 10:00:02');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
