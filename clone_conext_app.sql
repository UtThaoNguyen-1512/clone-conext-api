-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 29, 2021 at 06:00 AM
-- Server version: 8.0.22
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clone_conext_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` decimal(8,2) NOT NULL,
  `latitude` decimal(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `name`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Incubator/Accelerator', 1, NULL, NULL, NULL),
(2, 'Startup', 1, NULL, NULL, NULL),
(3, 'Corporate', 1, NULL, NULL, NULL),
(4, 'Investor/Venture', 1, NULL, NULL, NULL),
(5, 'Startup eco-system', 1, NULL, NULL, NULL),
(6, 'Government', 1, NULL, NULL, NULL),
(7, 'Freelancer', 1, NULL, NULL, NULL),
(8, 'Other', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_day` datetime NOT NULL,
  `end_day` datetime NOT NULL,
  `online_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `image`, `start_day`, `end_day`, `online_event`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Roundtable: Marketing for Startups | Day 3 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/75484029_30486229_78227126_81085093.png', '2021-01-27 17:00:00', '2021-01-27 18:30:00', 'online event', 1, NULL, NULL, NULL),
(2, 'Roundtable: Equity and Fundraising | Day 3 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/55063696_27015733_72519007_53929857.png', '2021-01-27 19:00:00', '2021-01-27 20:30:00', 'online event', 1, NULL, NULL, NULL),
(3, 'Accelerator startups: Where are they now? | Day 4 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/87378889_45338706_81330973_32753718.png', '2021-01-28 19:30:00', '2021-01-28 20:30:00', 'online event', 1, NULL, NULL, NULL),
(4, 'Codeup | Learn to Code Workshop: Python (Intro to Data Science)', 'https://storage.googleapis.com/conext-production/detail/87378889_45338706_81330973_32753718.png', '2021-01-30 23:00:00', '2021-01-31 00:30:00', 'online event', 1, NULL, NULL, NULL),
(5, 'Roundtable: Marketing for Startups | Day 3 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/75484029_30486229_78227126_81085093.png', '2021-01-27 17:00:00', '2021-01-27 18:30:00', 'online event', 1, NULL, NULL, NULL),
(6, 'Roundtable: Equity and Fundraising | Day 3 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/55063696_27015733_72519007_53929857.png', '2021-01-27 19:00:00', '2021-01-27 20:30:00', 'online event', 1, NULL, NULL, NULL),
(7, 'Accelerator startups: Where are they now? | Day 4 Leicester Startup Week', 'https://storage.googleapis.com/conext-production/detail/87378889_45338706_81330973_32753718.png', '2021-01-28 19:30:00', '2021-01-28 20:30:00', 'online event', 1, NULL, NULL, NULL),
(8, 'Codeup | Learn to Code Workshop: Python (Intro to Data Science)', 'https://storage.googleapis.com/conext-production/detail/87378889_45338706_81330973_32753718.png', '2021-01-30 23:00:00', '2021-01-31 00:30:00', 'online event', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expertises`
--

CREATE TABLE `expertises` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expertises`
--

INSERT INTO `expertises` (`id`, `name`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Artificial intelligence', 1, NULL, NULL, NULL),
(2, 'Internet of Things', 1, NULL, NULL, NULL),
(3, 'NGO', 1, NULL, NULL, NULL),
(4, 'Hospitality', 1, NULL, NULL, NULL),
(5, 'Real estate', 1, NULL, NULL, NULL),
(6, 'Investment', 1, NULL, NULL, NULL),
(7, 'Legacy', 1, NULL, NULL, NULL),
(8, 'Marketing', 1, NULL, NULL, NULL),
(9, 'Business & Management', 1, NULL, NULL, NULL),
(10, 'Artificial intelligence', 1, NULL, NULL, NULL),
(11, 'Internet of Things', 1, NULL, NULL, NULL),
(12, 'NGO', 1, NULL, NULL, NULL),
(13, 'Hospitality', 1, NULL, NULL, NULL),
(14, 'Real estate', 1, NULL, NULL, NULL),
(15, 'Investment', 1, NULL, NULL, NULL),
(16, 'Legacy', 1, NULL, NULL, NULL),
(17, 'Marketing', 1, NULL, NULL, NULL),
(18, 'Business & Management', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `explores`
--

CREATE TABLE `explores` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `explores`
--

INSERT INTO `explores` (`id`, `image`, `title`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'https://storage.googleapis.com/conext-production/startup.jpg', 'Startups', 1, NULL, NULL, NULL),
(2, 'https://storage.googleapis.com/conext-production/investments.jpg', 'Investments', 1, NULL, NULL, NULL),
(3, 'https://conext.asia/get-vouchers', 'Get Vouchers', 1, NULL, NULL, NULL),
(4, 'https://storage.googleapis.com/conext-production/bg_event.png', 'Events', 1, NULL, NULL, NULL),
(5, 'https://conext.asia/workplaces', 'Workplaces', 1, NULL, NULL, NULL),
(6, 'https://storage.googleapis.com/conext-production/remote_worker.jpg', 'Remote workers', 1, NULL, NULL, NULL),
(7, 'https://coliving.com/', 'Coliving', 1, NULL, NULL, NULL);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_01_26_032408_create_places_table', 1),
(4, '2021_01_26_034753_create_events_table', 1),
(5, '2021_01_26_034842_create_vouchers_table', 1),
(6, '2021_01_26_034956_create_contacts_table', 1),
(7, '2021_01_26_035253_create_work_places_table', 1),
(8, '2021_01_26_035427_create_countries_table', 1),
(9, '2021_01_26_035608_create_business_types_table', 1),
(10, '2021_01_26_035722_create_addresses_table', 1),
(11, '2021_01_28_045335_create_explores_table', 1),
(12, '2021_01_29_024414_create_expertises_table', 1),
(13, '2021_10_12_000000_create_users_table', 1);

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
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
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
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_expired` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `title`, `is_expired`, `image`, `description`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '[BeansWorkspace] GET FREE 2-DAY PASS TICKETS for CoNextor', '2020-12-31', 'https://storage.googleapis.com/conext-production/19108943_99406985_35790756_17780126.png', 'Welcome CoNextor to BeansWorkspace Beans offers customers 2-day free for using Workspace.', 1, NULL, NULL, NULL),
(2, '[Hoian]15% discount when order food at Weavers Restaurant Hoi An', '2020-11-30', 'https://storage.googleapis.com/conext-production/64997444_46246574_77800462_16390180.png', 'In order to get the promo code, simply click on the Get Voucher button. The voucher will be sent directly to your registered email at Conext and just use it at Weavers Hoi An.', 1, NULL, NULL, NULL),
(3, '20% off for every coffee orders at Nomad Space', '2020-11-30', 'https://storage.googleapis.com/conext-production/15670774_70835628_34663649_14782329.png', 'In order to get the promo code, simply click on the Get Voucher button. The voucher will be sent directly to your registered email at Conext.', 1, NULL, NULL, NULL),
(4, '[ENOUVO SPACE] GET PROMO CODE 10% DISCOUNT FOR DAILY PASS', '2020-10-30', 'https://storage.googleapis.com/conext-production/33562622_75803936_48752140_46239508.png', 'Enouvo Space is running a special discount for member of Conext community in May 2020 with 10% off for daily pass. ', 1, NULL, NULL, NULL),
(5, '[DNC] Get promo code 20% discount for daily pass', '2020-08-30', 'https://storage.googleapis.com/conext-production/61151640_41063916_81769667_72704808.png', 'Conextor Daily pass with Only 60,000 VND (original price is 75,000 VND)', 1, NULL, NULL, NULL),
(6, '[BeansWorkspace] GET FREE 2-DAY PASS TICKETS for CoNextor', '2020-12-31', 'https://storage.googleapis.com/conext-production/19108943_99406985_35790756_17780126.png', 'Welcome CoNextor to BeansWorkspace Beans offers customers 2-day free for using Workspace.', 1, NULL, NULL, NULL),
(7, '[Hoian]15% discount when order food at Weavers Restaurant Hoi An', '2020-11-30', 'https://storage.googleapis.com/conext-production/64997444_46246574_77800462_16390180.png', 'In order to get the promo code, simply click on the Get Voucher button. The voucher will be sent directly to your registered email at Conext and just use it at Weavers Hoi An.', 1, NULL, NULL, NULL),
(8, '20% off for every coffee orders at Nomad Space', '2020-11-30', 'https://storage.googleapis.com/conext-production/15670774_70835628_34663649_14782329.png', 'In order to get the promo code, simply click on the Get Voucher button. The voucher will be sent directly to your registered email at Conext.', 1, NULL, NULL, NULL),
(9, '[ENOUVO SPACE] GET PROMO CODE 10% DISCOUNT FOR DAILY PASS', '2020-10-30', 'https://storage.googleapis.com/conext-production/33562622_75803936_48752140_46239508.png', 'Enouvo Space is running a special discount for member of Conext community in May 2020 with 10% off for daily pass. ', 1, NULL, NULL, NULL),
(10, '[DNC] Get promo code 20% discount for daily pass', '2020-08-30', 'https://storage.googleapis.com/conext-production/61151640_41063916_81769667_72704808.png', 'Conextor Daily pass with Only 60,000 VND (original price is 75,000 VND)', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_places`
--

CREATE TABLE `work_places` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addresses_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:actived 0:unactived',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_places`
--

INSERT INTO `work_places` (`id`, `name`, `price`, `image`, `addresses_id`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DNC Danang Coworking Space', '75,000', 'https://storage.googleapis.com/conext-production/64775483_39945853_39110715_46208967.png', 1, 1, NULL, NULL, NULL),
(2, 'IOT Space', '80,000', 'https://storage.googleapis.com/conext-production/16396435_63068963_50684597_26582124.png', 2, 1, NULL, NULL, NULL),
(3, 'Beans Workspace', '80,000', 'https://storage.googleapis.com/conext-production/71602096_36013824_15011473_55468966.png', 3, 1, NULL, NULL, NULL),
(4, 'Enouvo Space', '100,000', 'https://storage.googleapis.com/conext-production/27416586_12779950_26466304_11311539.png', 4, 1, NULL, NULL, NULL),
(5, 'Nomad Space', '120,000', 'https://storage.googleapis.com/conext-production/69329038_61346515_30906458_22557038.png', 5, 1, NULL, NULL, NULL),
(6, 'DNC Danang Coworking Space', '75,000', 'https://storage.googleapis.com/conext-production/64775483_39945853_39110715_46208967.png', 1, 1, NULL, NULL, NULL),
(7, 'IOT Space', '80,000', 'https://storage.googleapis.com/conext-production/16396435_63068963_50684597_26582124.png', 2, 1, NULL, NULL, NULL),
(8, 'Beans Workspace', '80,000', 'https://storage.googleapis.com/conext-production/71602096_36013824_15011473_55468966.png', 3, 1, NULL, NULL, NULL),
(9, 'Enouvo Space', '100,000', 'https://storage.googleapis.com/conext-production/27416586_12779950_26466304_11311539.png', 4, 1, NULL, NULL, NULL),
(10, 'Nomad Space', '120,000', 'https://storage.googleapis.com/conext-production/69329038_61346515_30906458_22557038.png', 5, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expertises`
--
ALTER TABLE `expertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explores`
--
ALTER TABLE `explores`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_place_id_foreign` (`place_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_places`
--
ALTER TABLE `work_places`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expertises`
--
ALTER TABLE `expertises`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `explores`
--
ALTER TABLE `explores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `work_places`
--
ALTER TABLE `work_places`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
