-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2026 at 09:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms-assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_06_24_042743_create_projects_table', 1),
(5, '2026_06_24_042828_create_tasks_table', 2),
(6, '2026_06_24_051637_create_project_user_table', 3),
(7, '2026_06_24_054553_create_personal_access_tokens_table', 4),
(8, '2026_06_24_062843_create_oauth_auth_codes_table', 5),
(9, '2026_06_24_062844_create_oauth_access_tokens_table', 5),
(10, '2026_06_24_062845_create_oauth_refresh_tokens_table', 5),
(11, '2026_06_24_062846_create_oauth_clients_table', 5),
(12, '2026_06_24_062847_create_oauth_device_codes_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` char(80) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('147a1e3264069aa35ac0908845da3f0c31460484775c8b10e979526514cbb3e469198e9f0b30238a', 1, '019ef851-21f5-7323-8998-0a4e679799a9', 'MyApp', '[]', 0, '2026-06-24 01:09:06', '2026-06-24 01:09:06', '2026-12-24 06:39:06'),
('1ad33bbf15281a5c7d414772aff4880aeb2495f1331767c095da84b8e92f8f945b5a0eec8e93fa6a', 1, '019ef851-21f5-7323-8998-0a4e679799a9', 'MyApp', '[]', 0, '2026-06-24 01:11:04', '2026-06-24 01:11:04', '2026-12-24 06:41:04'),
('30b3600f2da4a07b301820d35b02b687f050f26bf64cf636d19b61ceb4fc6e07d9b154a11823cdd7', 1, '019ef851-21f5-7323-8998-0a4e679799a9', 'auth_token', '[]', 0, '2026-06-24 01:02:48', '2026-06-24 01:02:48', '2026-12-24 06:32:48'),
('5162edbbb6dd8b658b1fbb385e803a8e0bb007a3fa28d73d7897bf5bc998036bd980573024c06f16', 2, '019ef851-21f5-7323-8998-0a4e679799a9', 'MyApp', '[]', 0, '2026-06-24 01:20:46', '2026-06-24 01:20:46', '2026-12-24 06:50:46'),
('561834d5bd99bbe5cb7ba0689bf66bd7e9f538daa7d61de482fba51e8e075d22d50e1519bd706059', 2, '019ef851-21f5-7323-8998-0a4e679799a9', 'MyApp', '[]', 0, '2026-06-24 01:22:45', '2026-06-24 01:22:45', '2026-12-24 06:52:45'),
('5a00bef11620422387e2a33cb0d0964f084469e5bb8ff08e6dd20c50bb128e02b627d75540bc44e3', 1, '019ef851-21f5-7323-8998-0a4e679799a9', 'auth_token', '[]', 0, '2026-06-24 01:01:35', '2026-06-24 01:01:35', '2026-12-24 06:31:35'),
('a590c40842a75d210ea63d0c6f3eada133a7d3e6cccd066f15e92eb11a8756caca5f078c6d23d3dd', 2, '019ef851-21f5-7323-8998-0a4e679799a9', 'MyApp', '[]', 0, '2026-06-24 01:27:44', '2026-06-24 01:27:45', '2026-12-24 06:57:44'),
('b40db04fab1669cda147cb2779d1aeff3b1cef1f96d56fe3b7734695c16ba8043e87399266f0b475', 2, '019ef851-21f5-7323-8998-0a4e679799a9', 'MyApp', '[]', 0, '2026-06-24 01:13:31', '2026-06-24 01:13:31', '2026-12-24 06:43:31'),
('e6121224257eb5c5cc26bda29d0093fa7c4b6aa2ca481ef53a5762e2a5a779bae7536ab1055079cf', 1, '019ef851-21f5-7323-8998-0a4e679799a9', 'auth_token', '[]', 0, '2026-06-24 01:06:07', '2026-06-24 01:06:07', '2026-12-24 06:36:07'),
('ef8bd3f8e9c4985a88b1795f1fe49afe98d4a3b71552056911f5dc6037ced6cf6367f5782bdb979f', 2, '019ef851-21f5-7323-8998-0a4e679799a9', 'MyApp', '[]', 0, '2026-06-24 01:11:28', '2026-06-24 01:11:28', '2026-12-24 06:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` char(80) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) NOT NULL,
  `owner_type` varchar(255) DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect_uris` text NOT NULL,
  `grant_types` text NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `owner_type`, `owner_id`, `name`, `secret`, `provider`, `redirect_uris`, `grant_types`, `revoked`, `created_at`, `updated_at`) VALUES
('019ef851-21f5-7323-8998-0a4e679799a9', NULL, NULL, 'Laravel', '$2y$12$ZUPfoir.3YhWTzAyJ39yVu2mfehI9dMvGPPt8LxOJuT.aGs5XxBwa', NULL, '[]', '[\"personal_access\"]', 0, '2026-06-24 00:58:47', '2026-06-24 00:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_device_codes`
--

CREATE TABLE `oauth_device_codes` (
  `id` char(80) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `user_code` char(8) NOT NULL,
  `scopes` text NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `user_approved_at` datetime DEFAULT NULL,
  `last_polled_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` char(80) NOT NULL,
  `access_token_id` char(80) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Project 1', '2026-06-23 23:34:22', '2026-06-23 23:34:22'),
(2, 'Project 2', '2026-06-23 23:34:22', '2026-06-23 23:34:22'),
(3, 'Project 3', '2026-06-23 23:34:22', '2026-06-23 23:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`user_id`, `project_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3LgdH7w3JbhJoBAN4kewHieYCJAkK16hF3vsxJdv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.125.1 Chrome/148.0.7778.97 Electron/42.2.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVlRb1ZsZzFuc0lHM3RhTEp1NUVJWG5NMFU4WkxsU3FRNzVLdVRIOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czoyNzoiZ2VuZXJhdGVkOjo0czBodUo5OUQ5V1BwdExmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1782280404),
('i1oP1zUkAHtn8Nb0EyWRqYHCMLe1Y7gfoW9gXV8i', NULL, '::1', 'PostmanRuntime/7.53.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ3BKM1N6TzE0YXdXNVRkODhxWktSZVk1Smtwc0F2TEY5Y05VSGZjeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1782281219),
('PTNlWkBUqZCPZBeaJZzxCtYavr8rjhksJaxYAJnw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0xuZTdGVFRQdVp0Y0pNdXVvTG44RzBsYW1mQXVYMjBpVXJ6eHF2YiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czoyNzoiZ2VuZXJhdGVkOjo0czBodUo5OUQ5V1BwdExmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1782280431);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('todo','in_progress','done') NOT NULL DEFAULT 'todo',
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'medium',
  `due_date` date DEFAULT NULL,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `title`, `description`, `status`, `priority`, `due_date`, `assigned_to`, `created_at`, `updated_at`) VALUES
(1, 1, 'User Add', 'Description for Project 1', 'in_progress', 'high', '2026-06-24', 2, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(2, 1, 'User Edit', 'Description for Project 1', 'todo', 'high', '2026-06-24', 3, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(3, 1, 'User View', 'Description for Project 1', 'todo', 'high', '2026-06-24', 3, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(4, 1, 'User Delete', 'Description for Project 1', 'in_progress', 'high', '2026-06-24', 2, '2026-06-24 00:03:04', '2026-06-24 01:54:54'),
(5, 2, 'User Add', 'Description for Project 1', 'todo', 'high', '2026-06-24', 3, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(6, 2, 'User Edit', 'Description for Project 1', 'todo', 'high', '2026-06-24', 2, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(7, 2, 'User View', 'Description for Project 1', 'todo', 'high', '2026-06-24', 2, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(8, 2, 'User Delete', 'Description for Project 1', 'todo', 'high', '2026-06-24', 3, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(9, 3, 'User Add', 'Description for Project 1', 'todo', 'high', '2026-06-24', 2, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(10, 3, 'User Edit', 'Description for Project 1', 'todo', 'high', '2026-06-24', 2, '2026-06-24 00:03:04', '2026-06-24 00:03:04'),
(11, 3, 'User Delete', 'Description for Project 1', 'todo', 'high', '2026-06-24', 2, '2026-06-24 00:03:04', '2026-06-24 00:03:04');

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
(1, 'John Doe', 'johnDoe@yopmail.com', '2026-06-23 23:21:29', '$2y$12$PaKJJ5izPWo4tQa/4eOo9uUvIKY4sJwdFcwRPn3JSLg8/sqVf4qhW', 'SptZQJlVc2', '2026-06-23 23:21:29', '2026-06-23 23:21:29'),
(2, 'Jane Smith', 'janeSmith@yopmail.com', '2026-06-23 23:21:46', '$2y$12$uBZ4Q6w9PQ2V0ZljxEtIyuGW.jstDAkAKyI0JHcajuh0n1JBIjZpG', 'vnddCqkZcB', '2026-06-23 23:21:46', '2026-06-23 23:21:46'),
(3, 'Test User', 'test@yopmail.com', '2026-06-23 23:22:05', '$2y$12$IaQSU8aOEHxy3WvBrJCWCOLPWNJyIX8E1qJdCRuS.ukrkDs7.wOWe', 'fD9rf4gr0X', '2026-06-23 23:22:05', '2026-06-23 23:22:05'),
(4, 'Test User1', 'test1@yopmail.com', '2026-06-23 23:34:51', '$2y$12$F8CIGkxYgy9k5yGtu8r3Qu4q7mqdDtxF3ke8VvOi0meX6wy0kibsi', 'Dw51LsMvfC', '2026-06-23 23:34:51', '2026-06-23 23:34:51'),
(5, 'Test User2', 'test2@yopmail.com', '2026-06-23 23:35:05', '$2y$12$/ItPk51td7D/jLe.TXISyOn070xGURctXyVTUt8ubsHm9bA7YFD/2', 'fY98snvO14', '2026-06-23 23:35:05', '2026-06-23 23:35:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_owner_type_owner_id_index` (`owner_type`,`owner_id`);

--
-- Indexes for table `oauth_device_codes`
--
ALTER TABLE `oauth_device_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_device_codes_user_code_unique` (`user_code`),
  ADD KEY `oauth_device_codes_user_id_index` (`user_id`),
  ADD KEY `oauth_device_codes_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD KEY `user_id` (`user_id`,`project_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_assigned_to_foreign` (`assigned_to`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
