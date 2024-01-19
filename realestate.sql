-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2024 at 11:23 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `amenitis_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenitis_name`, `created_at`, `updated_at`) VALUES
(13, 'CCTY Camera', NULL, NULL),
(14, 'Washing machine', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `property_id` int NOT NULL,
  `facility_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(18, 57, 'Bus Stop', '5', '2024-01-14 13:29:59', '2024-01-14 13:29:59'),
(19, 62, 'Bus Stop', '5', '2024-01-14 13:54:45', '2024-01-14 13:54:45'),
(20, 63, 'Bus Stop', '5', '2024-01-14 13:54:46', '2024-01-14 13:54:46'),
(21, 64, 'Airport', '5', '2024-01-14 13:58:47', '2024-01-14 13:58:47'),
(22, 65, 'Pharmacy', '2', '2024-01-14 16:46:56', '2024-01-14 16:46:56'),
(23, 66, 'Railways', '6', '2024-01-14 23:44:32', '2024-01-14 23:44:32');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_13_042132_create_property_types_table', 2),
(6, '2024_01_13_053716_create_amenities_table', 3),
(7, '2024_01_13_062226_create_properties_table', 4),
(8, '2024_01_13_112424_create_multi_images_table', 4),
(9, '2024_01_13_112907_create_facilities_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint UNSIGNED NOT NULL,
  `property_id` int NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `property_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(40, 64, 'upload/property//multi-image/1788074500673549.png', '2024-01-14 13:58:47', NULL),
(41, 64, 'upload/property//multi-image/1788074500761156.png', '2024-01-14 13:58:47', NULL),
(42, 64, 'upload/property//multi-image/1788074500815740.png', '2024-01-14 13:58:47', NULL),
(43, 64, 'upload/property//multi-image/1788074500871910.png', '2024-01-14 13:58:47', NULL),
(44, 64, 'upload/property//multi-image/1788074501106689.png', '2024-01-14 13:58:47', NULL),
(45, 64, 'upload/property//multi-image/1788074501170904.png', '2024-01-14 13:58:47', NULL),
(46, 65, 'upload/property//multi-image/1788085080067057.png', '2024-01-14 16:46:56', NULL),
(47, 66, 'upload/property/multi-image/1788111351635479.png', '2024-01-14 23:44:31', NULL),
(48, 66, 'upload/property/multi-image/1788111351759067.png', '2024-01-14 23:44:31', NULL),
(49, 66, 'upload/property/multi-image/1788111351815493.png', '2024-01-14 23:44:31', NULL),
(50, 66, 'upload/property/multi-image/1788111352590859.png', '2024-01-14 23:44:31', NULL),
(51, 66, 'upload/property/multi-image/1788111352590859.png', '2024-01-14 23:44:31', NULL),
(52, 66, 'upload/property/multi-image/1788111352760819.png', '2024-01-14 23:44:32', NULL),
(53, 66, 'upload/property/multi-image/1788111352816512.png', '2024-01-14 23:44:32', NULL),
(54, 66, 'upload/property/multi-image/1788111352871922.png', '2024-01-14 23:44:32', NULL),
(55, 66, 'upload/property/multi-image/1788111352927449.png', '2024-01-14 23:44:32', NULL),
(56, 66, 'upload/property/multi-image/1788111352927449.png', '2024-01-14 23:44:32', NULL),
(57, 66, 'upload/property/multi-image/1788111353004733.png', '2024-01-14 23:44:32', NULL),
(58, 66, 'upload/property/multi-image/1788111353060343.png', '2024-01-14 23:44:32', NULL),
(59, 66, 'upload/property/multi-image/1788111353114736.png', '2024-01-14 23:44:32', NULL),
(60, 66, 'upload/property/multi-image/1788111353170259.png', '2024-01-14 23:44:32', NULL),
(61, 66, 'upload/property/multi-image/1788111353170259.png', '2024-01-14 23:44:32', NULL),
(62, 66, 'upload/property/multi-image/1788111353247617.png', '2024-01-14 23:44:32', NULL),
(63, 66, 'upload/property/multi-image/1788111353303830.png', '2024-01-14 23:44:32', NULL),
(64, 66, 'upload/property/multi-image/1788111353512075.png', '2024-01-14 23:44:32', NULL),
(65, 66, 'upload/property/multi-image/1788111353580445.png', '2024-01-14 23:44:32', NULL),
(66, 66, 'upload/property/multi-image/1788111353580445.png', '2024-01-14 23:44:32', NULL);

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
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint UNSIGNED NOT NULL,
  `ptype_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lowest_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp` text COLLATE utf8mb4_unicode_ci,
  `long_descp` text COLLATE utf8mb4_unicode_ci,
  `bedrooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_id` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thambnail`, `short_descp`, `long_descp`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `state`, `postal_code`, `neighborhood`, `latitude`, `longitude`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(64, '8', 'CCTY Camera,Washing machine', 'Housing Unique', 'housing-unique', 'PC001', 'rent', '2000', '6500', 'upload/property/thambnail/1788074500204647.jpg', 'Data and information protection is the most technical and tangible of the three pillars. The data we gather comes from multiple sources, such as information technology (IT), operational technology (OT), personal data and operational data. It must be properly managed and protected every step of the way', '<p><span style=\"font-size: 14.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; color: #505050; letter-spacing: .15pt; background: #FEFEFE; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Data and information protection is the most technical and tangible of the three pillars. The data we gather comes from multiple sources, such as information technology (IT), operational technology (OT), personal data and operational data. It must be properly managed and protected every step of the way</span></p>', '3', '4', '3', '44', '39', 'THis a video', 'GSA Road', 'Monrovia', NULL, '10000', '34', '23333343', '4342332', '1', '1', 2, '1', '2024-01-14 13:58:46', '2024-01-14 21:58:54'),
(65, '8', 'CCTY Camera,Washing machine', 'Freedom Housing', 'freedom-housing', 'PC002', 'buy', '4000', '6500', 'upload/property/thambnail/1788106235716455.jpg', 'Data and information protection is the most technical and tangible of the three pillars. The data we gather comes from multiple sources, such as information technology (IT), operational technology (OT), personal data and operational data. It must be properly managed and protected every step of the way', '<p>&nbsp; public function type(){<br>&nbsp; &nbsp; &nbsp; &nbsp; return $this-&gt;belongsTo(PropertyType::class,\'ptype_id\',\'id\');<br>&nbsp; &nbsp; <span style=\"font-size: 14.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; color: #505050; letter-spacing: .15pt; background: #FEFEFE; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Data and information protection is the most technical and tangible of the three pillars. The data we gather comes from multiple sources, such as information technology (IT), operational technology (OT), personal data and operational data. It must be properly managed and protected every step of the way</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 6, '1', '2024-01-14 16:46:56', '2024-01-14 22:23:12'),
(66, '8', 'CCTY Camera,Washing machine', 'Square Yard', 'square-yard', 'PC003', 'rent', '2000', '6500', 'upload/property/thambnail/1788111351110719.jpg', 'personal identification number (PIN) and an identification card. Security measures placed between an organization’s internal networks and the Internet are known as firewalls. These combinations of hardware and software continually filter the incoming, and often outgoing, data traffic.\r\nA different way to prohibit access to information is via data encryption, which has gained particular importance in electronic commerce. Public key encryption is used widely in such commerce. To ensure confidentiality, only the intended addressee has the private key needed to decrypt messages that have been encrypted with the addressee’s public key.', '<p class=\"MsoNormal\" style=\"mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">personal identification number (PIN) and an identification card. Security measures placed between an organization&rsquo;s internal networks and the Internet are known as&nbsp;</span><a href=\"https://www.britannica.com/technology/firewall\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">firewalls</span></a><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">. </span><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">These combinations of hardware and software continually filter the incoming, and often outgoing, data traffic.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">A different way to prohibit access to information is </span><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">via&nbsp;</span><a href=\"https://www.britannica.com/technology/data-encryption\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">data encryption</span></a><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">, which has gained particular importance in&nbsp;</span><a href=\"https://www.britannica.com/technology/e-commerce\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">electronic commerce</span></a><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">.&nbsp;</span><a href=\"https://www.britannica.com/topic/public-key-cryptography\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">Public key encryption</span></a><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">&nbsp;is used widely in such commerce. To ensure confidentiality, only the intended addressee has the private key needed to decrypt messages that have been encrypted with the addressee&rsquo;s public key. </span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">personal identification number (PIN) and an identification card. Security measures placed between an organization&rsquo;s internal networks and the Internet are known as&nbsp;</span><a href=\"https://www.britannica.com/technology/firewall\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">firewalls</span></a><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">. </span><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">These combinations of hardware and software continually filter the incoming, and often outgoing, data traffic.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">A different way to prohibit access to information is </span><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">via&nbsp;</span><a href=\"https://www.britannica.com/technology/data-encryption\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">data encryption</span></a><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">, which has gained particular importance in&nbsp;</span><a href=\"https://www.britannica.com/technology/e-commerce\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">electronic commerce</span></a><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;\">.&nbsp;</span><a href=\"https://www.britannica.com/topic/public-key-cryptography\"><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; text-decoration: none; text-underline: none;\">Public key encryption</span></a><span style=\"font-size: 14.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #1a1a1a;\">&nbsp;is used widely in such commerce. To ensure confidentiality, only the intended addressee has the private key needed to decrypt messages that have been encrypted with the addressee&rsquo;s public key. </span></p>', '3', '4', '3', '44', '39', 'THis a video', 'GSA Road', 'Monrovia', NULL, '10000', '34', '23333343', '4342332', '1', '1', 6, '1', '2024-01-14 23:44:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(8, 'Apartment', 'icon-1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','agent','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ephraim Momoh', 'Ephraim', 'admin@gmail.com', NULL, '$2y$12$MlvzgThjGJuKTkGbzPwc8u0nxZ7EtLy4LNx/jzlytp3FhCecacU3S', '202401121200202303032118121859823-male-avatar-icon-or-portrait-handsome-young-man-face-with-beard-vector-illustration-.jpg', '01711', 'GSA Road', 'admin', 'active', NULL, NULL, '2024-01-12 12:06:46'),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$12$YQkHLigHeIpKknJZAvOWmu9fuAf06q5FrQcdKI5YuJ5mP8hkAxmN.', NULL, '01722', NULL, 'agent', 'active', NULL, NULL, NULL),
(4, 'Sonia Wolf', NULL, 'pkertzmann@example.net', '2024-01-07 07:37:58', '$2y$12$/S2bubvs1Ygcq3VtnbkM8erSqb4.hv4ipWp1bzWoOK.pYMI5kwA0W', 'https://via.placeholder.com/60x60.png/009955?text=illo', '+1-626-670-7940', '46234 Julius Ridge Apt. 652\nLabadieland, OK 82068-4596', 'agent', 'inactive', 'lT9BNoOvhY', '2024-01-07 07:38:01', '2024-01-07 07:38:01'),
(5, 'Prof. Trever Price', NULL, 'jess24@example.org', '2024-01-07 07:37:59', '$2y$12$/S2bubvs1Ygcq3VtnbkM8erSqb4.hv4ipWp1bzWoOK.pYMI5kwA0W', 'https://via.placeholder.com/60x60.png/0000ff?text=error', '424.810.4206', '6600 Upton Causeway Apt. 887\nNorth Abigale, ID 97408', 'user', 'inactive', '569CtWiZTd', '2024-01-07 07:38:02', '2024-01-07 07:38:02'),
(6, 'Giovani Brakus', NULL, 'peggie33@example.com', '2024-01-07 07:37:59', '$2y$12$/S2bubvs1Ygcq3VtnbkM8erSqb4.hv4ipWp1bzWoOK.pYMI5kwA0W', 'https://via.placeholder.com/60x60.png/003333?text=quae', '1-539-932-6549', '187 Sarina Rapids\nNorth Ashtyn, ND 66995-7470', 'agent', 'active', 'Mhhr3l4fqt', '2024-01-07 07:38:02', '2024-01-07 07:38:02'),
(7, 'Noble Jacobi', NULL, 'rosario.schmitt@example.net', '2024-01-07 07:37:59', '$2y$12$/S2bubvs1Ygcq3VtnbkM8erSqb4.hv4ipWp1bzWoOK.pYMI5kwA0W', 'https://via.placeholder.com/60x60.png/000022?text=tempora', '518.795.0901', '64391 Nicole Parkways\nWest Earnestineberg, NC 20407-1492', 'admin', 'inactive', 'p1mnuyNuq0', '2024-01-07 07:38:02', '2024-01-07 07:38:02'),
(8, 'Emily Nicolas', NULL, 'rhett.konopelski@example.org', '2024-01-07 07:37:59', '$2y$12$/S2bubvs1Ygcq3VtnbkM8erSqb4.hv4ipWp1bzWoOK.pYMI5kwA0W', 'https://via.placeholder.com/60x60.png/00eeee?text=qui', '520-620-0039', '86539 Garrick Squares Suite 750\nWest Kamrenhaven, TX 92522-7024', 'agent', 'inactive', 'XkgQ98u4F9', '2024-01-07 07:38:02', '2024-01-07 07:38:02'),
(9, 'Test', NULL, 'test@gmail.com', NULL, '$2y$12$cgBw0smKSplgLOY4HlyeX.1FhrUYhnTGArVVCtcCVVAwJ2v3lCska', NULL, NULL, NULL, 'user', 'active', NULL, '2024-01-07 08:05:24', '2024-01-07 08:05:24'),
(10, 'paul', 'paul', 'paul@gmail.com', NULL, '$2y$12$dzXsWvA6QyRejBV6paVzyOSBWl5dsaQYjfCxVfQQFtmNXZ477cCZ.', '2024011221571697086287.jpg', NULL, NULL, 'user', 'active', NULL, '2024-01-12 18:26:42', '2024-01-12 21:57:47'),
(12, 'Robert', 'Robert', 'robert@gmail.com', NULL, '$2y$12$InwRywTSThKeZ0wlBGWVj..FjVI.1TyJntqXALyKUhkd9dVJnkpLG', '2024011222241697086187.jpg', NULL, NULL, 'user', 'active', NULL, '2024-01-12 22:14:56', '2024-01-12 22:24:53'),
(13, 'Amelia', 'Amelia', 'amelia@gmail.com', NULL, '$2y$12$gQdOeexgdWTFwX29cE153OguJ5hzGqFRJlvelZEhyLxMIWJmuisPO', '202401122220images.jpeg', NULL, NULL, 'user', 'active', NULL, '2024-01-12 22:18:10', '2024-01-12 22:21:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
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
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
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
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
