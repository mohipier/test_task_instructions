-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 29, 2022 at 11:33 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-independesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Zurich', 3, NULL, NULL),
(2, 'Berlin', 1, NULL, NULL),
(3, 'Munich', 1, NULL, NULL),
(4, 'Salzburg', 2, NULL, NULL),
(5, 'Vienna', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Germany', NULL, NULL),
(2, 'Austria', NULL, NULL),
(3, 'Switzerland', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstName`, `lastName`, `created_at`, `updated_at`) VALUES
(1, 'Employee', 'One', NULL, NULL),
(2, 'Employee', 'Two', NULL, NULL),
(3, 'Employee', 'three', NULL, NULL),
(4, 'Employee', 'four', NULL, NULL),
(5, 'Employee', 'five', NULL, NULL),
(6, 'Employee', 'six', NULL, NULL),
(7, 'Employee', 'seven', NULL, NULL),
(8, 'Employee', 'eight', NULL, NULL),
(9, 'Employee', 'nine', NULL, NULL),
(10, 'Employee', 'Ten', NULL, NULL),
(11, 'Employee', 'Eleven', NULL, NULL),
(12, 'Employee', 'twelve', NULL, NULL),
(13, 'Employee', 'thirteen', NULL, NULL),
(14, 'Employee', 'fourteen', NULL, NULL),
(15, 'Employee', 'fifteen', NULL, NULL),
(16, 'Employee', 'sixteen', NULL, NULL),
(17, 'Employee', 'seventeen', NULL, NULL),
(18, 'Employee', 'eighteen', NULL, NULL),
(19, 'Employee', 'nineteen', NULL, NULL),
(20, 'Employee', 'twenty', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_department`
--

CREATE TABLE `employee_department` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int UNSIGNED NOT NULL,
  `department_id` int UNSIGNED NOT NULL,
  `employee_type` enum('leader','normal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_department`
--

INSERT INTO `employee_department` (`id`, `employee_id`, `department_id`, `employee_type`, `created_at`, `updated_at`) VALUES
(2, 5, 1, 'leader', NULL, NULL),
(3, 6, 3, 'leader', NULL, NULL),
(4, 4, 4, 'leader', NULL, NULL),
(5, 3, 5, 'leader', NULL, NULL),
(6, 6, 1, 'normal', NULL, NULL),
(7, 9, 1, 'normal', NULL, NULL),
(8, 12, 4, 'normal', NULL, NULL),
(9, 1, 5, 'normal', NULL, NULL),
(10, 3, 2, 'leader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_division`
--

CREATE TABLE `employee_division` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int UNSIGNED NOT NULL,
  `division_id` int UNSIGNED NOT NULL,
  `employee_type` enum('leader','normal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_division`
--

INSERT INTO `employee_division` (`id`, `employee_id`, `division_id`, `employee_type`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 'leader', NULL, NULL),
(2, 19, 2, 'leader', NULL, NULL),
(3, 3, 3, 'leader', NULL, NULL),
(4, 4, 3, 'normal', NULL, NULL),
(5, 7, 3, 'normal', NULL, NULL),
(6, 6, 2, 'normal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_team`
--

CREATE TABLE `employee_team` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int UNSIGNED NOT NULL,
  `team_id` int UNSIGNED NOT NULL,
  `employee_type` enum('leader','normal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_team`
--

INSERT INTO `employee_team` (`id`, `employee_id`, `team_id`, `employee_type`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'leader', NULL, NULL),
(2, 17, 2, 'leader', NULL, NULL),
(3, 18, 3, 'leader', NULL, NULL),
(4, 2, 4, 'leader', NULL, NULL),
(5, 20, 5, 'leader', NULL, NULL),
(6, 14, 6, 'leader', NULL, NULL),
(7, 4, 7, 'leader', NULL, NULL),
(8, 16, 2, 'normal', NULL, NULL),
(9, 4, 2, 'normal', NULL, NULL),
(10, 7, 2, 'normal', NULL, NULL),
(11, 11, 5, 'normal', NULL, NULL),
(12, 12, 5, 'normal', NULL, NULL),
(13, 15, 5, 'normal', NULL, NULL),
(14, 4, 3, 'normal', NULL, NULL),
(15, 9, 3, 'normal', NULL, NULL),
(16, 8, 6, 'normal', NULL, NULL),
(17, 13, 6, 'normal', NULL, NULL),
(18, 1, 1, 'normal', NULL, NULL),
(19, 12, 1, 'normal', NULL, NULL),
(20, 13, 1, 'normal', NULL, NULL),
(21, 3, 4, 'normal', NULL, NULL),
(22, 7, 4, 'normal', NULL, NULL),
(23, 8, 4, 'normal', NULL, NULL),
(24, 2, 7, 'normal', NULL, NULL),
(25, 8, 7, 'normal', NULL, NULL);

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
(34, '2014_10_12_000000_create_users_table', 1),
(35, '2014_10_12_100000_create_password_resets_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(38, '2022_06_29_145136_create_employees_table', 1),
(39, '2022_06_29_145155_create_divisions_table', 1),
(40, '2022_06_29_145217_create_departments_table', 1),
(41, '2022_06_29_145232_create_teams_table', 1),
(42, '2022_06_29_211931_create_employee_team_table', 1),
(43, '2022_06_29_212607_create_employee_division_table', 1),
(44, '2022_06_29_212634_create_employee_department_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Sales ZU', 1, NULL, NULL),
(2, 'Sales Ber', 2, NULL, NULL),
(3, 'Sales MU', 3, NULL, NULL),
(4, 'Marketing ZU', 1, NULL, NULL),
(5, 'Marketing Ber', 2, NULL, NULL),
(6, 'Development MU', 3, NULL, NULL),
(7, 'Development AU', 4, NULL, NULL);

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
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_department`
--
ALTER TABLE `employee_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_department_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_department_department_id_foreign` (`department_id`);

--
-- Indexes for table `employee_division`
--
ALTER TABLE `employee_division`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_division_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_division_division_id_foreign` (`division_id`);

--
-- Indexes for table `employee_team`
--
ALTER TABLE `employee_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_team_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_team_team_id_foreign` (`team_id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_department_id_foreign` (`department_id`);

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee_department`
--
ALTER TABLE `employee_department`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_division`
--
ALTER TABLE `employee_division`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_team`
--
ALTER TABLE `employee_team`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`);

--
-- Constraints for table `employee_department`
--
ALTER TABLE `employee_department`
  ADD CONSTRAINT `employee_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `employee_department_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employee_division`
--
ALTER TABLE `employee_division`
  ADD CONSTRAINT `employee_division_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  ADD CONSTRAINT `employee_division_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employee_team`
--
ALTER TABLE `employee_team`
  ADD CONSTRAINT `employee_team_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `employee_team_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
