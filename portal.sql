-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2024 at 10:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `crystal_report1s`
--

CREATE TABLE `crystal_report1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `uom` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crystal_report2s`
--

CREATE TABLE `crystal_report2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `uom` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crystal_report3s`
--

CREATE TABLE `crystal_report3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `uom` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crystal_report4s`
--

CREATE TABLE `crystal_report4s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `uom` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crystal_report5s`
--

CREATE TABLE `crystal_report5s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `uom` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crystal_report6s`
--

CREATE TABLE `crystal_report6s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `uom` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crystal_report7s`
--

CREATE TABLE `crystal_report7s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `barcode` text DEFAULT NULL,
  `uom` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_count1s`
--

CREATE TABLE `cycle_count1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lottable_2` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `hit_miss` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_count2s`
--

CREATE TABLE `cycle_count2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lottable_2` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `hit_miss` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_count3s`
--

CREATE TABLE `cycle_count3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lottable_2` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `hit_miss` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_count4s`
--

CREATE TABLE `cycle_count4s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lottable_2` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `hit_miss` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_count5s`
--

CREATE TABLE `cycle_count5s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lottable_2` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `hit_miss` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_count6s`
--

CREATE TABLE `cycle_count6s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lottable_2` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `hit_miss` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_count7s`
--

CREATE TABLE `cycle_count7s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lottable_2` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `hit_miss` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cycle_counts`
--

CREATE TABLE `cycle_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lottable_2` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `hit_miss` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Tes Question 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos.', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(2, 'Tes Question 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos.', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(3, 'Tes Question 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos.', '2024-08-09 01:21:27', '2024-08-09 01:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `form_trs`
--

CREATE TABLE `form_trs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_document` varchar(255) NOT NULL,
  `no_receipt` varchar(255) NOT NULL,
  `transfer_from` varchar(255) NOT NULL,
  `transfer_to` varchar(255) NOT NULL,
  `status_form` text NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_no` varchar(255) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `uom` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_no`, `item_desc`, `uom`, `kategori`, `created_at`, `updated_at`) VALUES
(1, '1', 'Item 1', 'PCS', 'Warehouse', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(2, '2', 'Item 2', 'PCS', 'Topper', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(3, '3', 'Item 3', 'PCS', 'Warehouse', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(4, '4', 'Item 4', 'PCS', 'Warehouse', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(5, '5', 'Item 5', 'PCS', 'Warehouse', '2024-08-09 01:21:27', '2024-08-09 01:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `item_trs`
--

CREATE TABLE `item_trs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tr_id` bigint(20) UNSIGNED NOT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `item_desc` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_05_16_081133_create_permission_tables', 1),
(5, '2024_05_21_060445_create_regions_table', 1),
(6, '2024_05_21_061530_create_stores_table', 1),
(7, '2024_05_22_000000_create_users_table', 1),
(8, '2024_05_27_073510_create_samplings_table', 1),
(9, '2024_06_06_023414_create_cycle_counts_table', 1),
(10, '2024_06_10_022055_create_crystal_report1s_table', 1),
(11, '2024_06_10_022135_create_crystal_report2s_table', 1),
(12, '2024_06_10_022147_create_crystal_report3s_table', 1),
(13, '2024_06_10_022158_create_crystal_report4s_table', 1),
(14, '2024_06_10_022209_create_crystal_report5s_table', 1),
(15, '2024_06_10_022220_create_crystal_report6s_table', 1),
(16, '2024_06_10_022232_create_crystal_report7s_table', 1),
(17, '2024_06_10_022243_create_mutasi_c_w1_s_table', 1),
(18, '2024_06_10_022254_create_mutasi_c_w2_s_table', 1),
(19, '2024_06_10_022309_create_mutasi_c_w3_s_table', 1),
(20, '2024_06_10_022322_create_mutasi_c_w4_s_table', 1),
(21, '2024_06_10_022336_create_mutasi_c_w5_s_table', 1),
(22, '2024_06_10_022349_create_mutasi_c_w6_s_table', 1),
(23, '2024_06_10_022405_create_mutasi_c_w7_s_table', 1),
(24, '2024_06_10_022417_create_mutasi_d1_s_table', 1),
(25, '2024_06_10_022431_create_mutasi_d2_s_table', 1),
(26, '2024_06_10_022446_create_mutasi_d3_s_table', 1),
(27, '2024_06_10_022503_create_mutasi_d4_s_table', 1),
(28, '2024_06_10_022518_create_mutasi_d5_s_table', 1),
(29, '2024_06_10_022534_create_mutasi_d6_s_table', 1),
(30, '2024_06_10_022548_create_mutasi_d7_s_table', 1),
(31, '2024_06_10_022604_create_mutasi_tag_bin1s_table', 1),
(32, '2024_06_10_022621_create_mutasi_tag_bin2s_table', 1),
(33, '2024_06_10_022638_create_mutasi_tag_bin3s_table', 1),
(34, '2024_06_10_022653_create_mutasi_tag_bin4s_table', 1),
(35, '2024_06_10_022711_create_mutasi_tag_bin5s_table', 1),
(36, '2024_06_10_022731_create_mutasi_tag_bin6s_table', 1),
(37, '2024_06_10_022749_create_mutasi_tag_bin7s_table', 1),
(38, '2024_06_10_022834_create_cycle_count1s_table', 1),
(39, '2024_06_10_022850_create_cycle_count2s_table', 1),
(40, '2024_06_10_022904_create_cycle_count3s_table', 1),
(41, '2024_06_10_022918_create_cycle_count4s_table', 1),
(42, '2024_06_10_022936_create_cycle_count5s_table', 1),
(43, '2024_06_10_022958_create_cycle_count6s_table', 1),
(44, '2024_06_10_023019_create_cycle_count7s_table', 1),
(45, '2024_06_10_023038_create_sampling1s_table', 1),
(46, '2024_06_10_023114_create_sampling2s_table', 1),
(47, '2024_06_10_023145_create_sampling3s_table', 1),
(48, '2024_06_10_023219_create_sampling4s_table', 1),
(49, '2024_06_10_023256_create_sampling5s_table', 1),
(50, '2024_06_10_023333_create_sampling6s_table', 1),
(51, '2024_06_10_023401_create_sampling7s_table', 1),
(52, '2024_06_10_080503_create_region_import_mappings_table', 1),
(53, '2024_07_23_030658_create_videos_table', 1),
(54, '2024_07_23_033420_create_faqs_table', 1),
(55, '2024_08_05_040807_create_items', 1),
(56, '2024_08_05_041203_create_form_trs', 1),
(57, '2024_08_05_063208_create_trs', 1),
(58, '2024_08_05_063416_create_item_trs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Users', 1),
(2, 'App\\Models\\Users', 3),
(2, 'App\\Models\\Users', 4),
(3, 'App\\Models\\Users', 5),
(4, 'App\\Models\\Users', 6),
(5, 'App\\Models\\Users', 7),
(6, 'App\\Models\\Users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_cw1s`
--

CREATE TABLE `mutasi_cw1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_cw2s`
--

CREATE TABLE `mutasi_cw2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_cw3s`
--

CREATE TABLE `mutasi_cw3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_cw4s`
--

CREATE TABLE `mutasi_cw4s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_cw5s`
--

CREATE TABLE `mutasi_cw5s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_cw6s`
--

CREATE TABLE `mutasi_cw6s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_cw7s`
--

CREATE TABLE `mutasi_cw7s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_d1s`
--

CREATE TABLE `mutasi_d1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `cek` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_d2s`
--

CREATE TABLE `mutasi_d2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `cek` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_d3s`
--

CREATE TABLE `mutasi_d3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `cek` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_d4s`
--

CREATE TABLE `mutasi_d4s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `cek` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_d5s`
--

CREATE TABLE `mutasi_d5s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `cek` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_d6s`
--

CREATE TABLE `mutasi_d6s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `cek` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_d7s`
--

CREATE TABLE `mutasi_d7s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_kertas` varchar(255) DEFAULT NULL,
  `site_id` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `tag_bin_location` varchar(255) DEFAULT NULL,
  `area` text DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `cek` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_tag_bin1s`
--

CREATE TABLE `mutasi_tag_bin1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `site_name` text NOT NULL,
  `tag_bin_location` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `zone` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_tag_bin2s`
--

CREATE TABLE `mutasi_tag_bin2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `site_name` text NOT NULL,
  `tag_bin_location` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `zone` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_tag_bin3s`
--

CREATE TABLE `mutasi_tag_bin3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `site_name` text NOT NULL,
  `tag_bin_location` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `zone` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_tag_bin4s`
--

CREATE TABLE `mutasi_tag_bin4s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `site_name` text NOT NULL,
  `tag_bin_location` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `zone` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_tag_bin5s`
--

CREATE TABLE `mutasi_tag_bin5s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `site_name` text NOT NULL,
  `tag_bin_location` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `zone` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_tag_bin6s`
--

CREATE TABLE `mutasi_tag_bin6s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `site_name` text NOT NULL,
  `tag_bin_location` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `zone` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_tag_bin7s`
--

CREATE TABLE `mutasi_tag_bin7s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `site_name` text NOT NULL,
  `tag_bin_location` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `zone` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view-role', 'web', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
(2, 'create-role', 'web', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
(3, 'update-role', 'web', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
(4, 'delete-role', 'web', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
(5, 'view-user', 'web', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
(6, 'create-user', 'web', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
(7, 'update-user', 'web', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
(8, 'delete-user', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(9, 'view-store', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(10, 'create-store', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(11, 'update-store', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(12, 'delete-store', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(13, 'view-region', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(14, 'create-region', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(15, 'update-region', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(16, 'delete-region', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(17, 'view-dashboard', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(18, 'view-data-report', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(19, 'upload-data-report', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(20, 'delete-data-report', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(21, 'update-data-report', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(22, 'view-cycle-count', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(23, 'upload-cycle-count', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(24, 'delete-cycle-count', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(25, 'update-cycle-count', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(26, 'progress-cycle-count', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(27, 'view-sampling', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(28, 'upload-sampling', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(29, 'delete-sampling', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(30, 'update-sampling', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(31, 'progress-sampling', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(32, 'view-crumen', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(33, 'upload-crumen', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(34, 'delete-crumen', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(35, 'export-crumen', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(36, 'view-history', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(37, 'export-history', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(38, 'create-letyouknow', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(39, 'edit-letyouknow', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(40, 'delete-letyouknow', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(41, 'upload-learning', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(42, 'edit-learning', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(43, 'delete-learning', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(44, 'view-form_trs', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(45, 'create-form_trs', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(46, 'update-form_trs', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(47, 'delete-form_trs', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(48, 'approve-form_trs', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(49, 'view-video', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(50, 'create-video', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(51, 'update-video', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(52, 'delete-video', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(53, 'view-items', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(54, 'create-items', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(55, 'update-items', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(56, 'delete-items', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `reg_id` varchar(255) NOT NULL,
  `reg_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`reg_id`, `reg_name`, `created_at`, `updated_at`) VALUES
('Reg000', 'HO', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('Reg001', 'Region 1', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('Reg002', 'Region 2', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('Reg003', 'Region 3', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('Reg004', 'Region 4', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('Reg005', 'Region 5', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('Reg006', 'Region 6', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('Reg007', 'Region 7', '2024-08-09 01:21:25', '2024-08-09 01:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `region_imports`
--

CREATE TABLE `region_imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` varchar(255) NOT NULL,
  `data_no` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `region_imports`
--

INSERT INTO `region_imports` (`id`, `region_id`, `data_no`, `created_at`, `updated_at`) VALUES
(1, 'Reg001', '1', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(2, 'Reg002', '2', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(3, 'Reg003', '3', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(4, 'Reg004', '4', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(5, 'Reg005', '5', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(6, 'Reg006', '6', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(7, 'Reg007', '7', '2024-08-09 01:21:27', '2024-08-09 01:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SWM', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(2, 'Regional Manager', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(3, 'Store Manager', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(4, 'MOD', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(5, 'Leader', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26'),
(6, 'IC', 'web', '2024-08-09 01:21:26', '2024-08-09 01:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(23, 3),
(23, 4),
(23, 5),
(23, 6),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(33, 3),
(33, 4),
(33, 5),
(34, 3),
(34, 4),
(34, 5),
(35, 3),
(35, 4),
(35, 5),
(44, 2),
(44, 3),
(44, 4),
(44, 5),
(44, 6),
(45, 2),
(45, 3),
(45, 4),
(45, 5),
(46, 2),
(46, 3),
(46, 4),
(46, 5),
(47, 2),
(47, 3),
(47, 4),
(47, 5),
(48, 5),
(48, 6),
(49, 2),
(49, 3),
(49, 4),
(49, 5),
(49, 6),
(50, 2),
(50, 3),
(50, 4),
(50, 5),
(50, 6),
(51, 2),
(51, 3),
(51, 4),
(51, 5),
(51, 6),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(52, 6),
(53, 2),
(53, 3),
(53, 4),
(53, 5),
(53, 6),
(54, 2),
(54, 3),
(54, 4),
(54, 5),
(54, 6),
(55, 2),
(55, 3),
(55, 4),
(55, 5),
(55, 6),
(56, 2),
(56, 3),
(56, 4),
(56, 5),
(56, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sampling1s`
--

CREATE TABLE `sampling1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `loc_detail` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_available_wms` int(11) DEFAULT NULL,
  `qty_allocated_wms` int(11) DEFAULT NULL,
  `qty_nav` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `selisih_fisik_wms` int(11) DEFAULT NULL,
  `hit_miss_fisik_wms` varchar(255) DEFAULT NULL,
  `total_qty_item_wms` int(11) DEFAULT NULL,
  `selisih_wms_nav` int(11) DEFAULT NULL,
  `hit_miss_wms_nav` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sampling2s`
--

CREATE TABLE `sampling2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `loc_detail` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_available_wms` int(11) DEFAULT NULL,
  `qty_allocated_wms` int(11) DEFAULT NULL,
  `qty_nav` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `selisih_fisik_wms` int(11) DEFAULT NULL,
  `hit_miss_fisik_wms` varchar(255) DEFAULT NULL,
  `total_qty_item_wms` int(11) DEFAULT NULL,
  `selisih_wms_nav` int(11) DEFAULT NULL,
  `hit_miss_wms_nav` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sampling3s`
--

CREATE TABLE `sampling3s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `loc_detail` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_available_wms` int(11) DEFAULT NULL,
  `qty_allocated_wms` int(11) DEFAULT NULL,
  `qty_nav` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `selisih_fisik_wms` int(11) DEFAULT NULL,
  `hit_miss_fisik_wms` varchar(255) DEFAULT NULL,
  `total_qty_item_wms` int(11) DEFAULT NULL,
  `selisih_wms_nav` int(11) DEFAULT NULL,
  `hit_miss_wms_nav` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sampling4s`
--

CREATE TABLE `sampling4s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `loc_detail` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_available_wms` int(11) DEFAULT NULL,
  `qty_allocated_wms` int(11) DEFAULT NULL,
  `qty_nav` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `selisih_fisik_wms` int(11) DEFAULT NULL,
  `hit_miss_fisik_wms` varchar(255) DEFAULT NULL,
  `total_qty_item_wms` int(11) DEFAULT NULL,
  `selisih_wms_nav` int(11) DEFAULT NULL,
  `hit_miss_wms_nav` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sampling5s`
--

CREATE TABLE `sampling5s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `loc_detail` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_available_wms` int(11) DEFAULT NULL,
  `qty_allocated_wms` int(11) DEFAULT NULL,
  `qty_nav` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `selisih_fisik_wms` int(11) DEFAULT NULL,
  `hit_miss_fisik_wms` varchar(255) DEFAULT NULL,
  `total_qty_item_wms` int(11) DEFAULT NULL,
  `selisih_wms_nav` int(11) DEFAULT NULL,
  `hit_miss_wms_nav` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sampling6s`
--

CREATE TABLE `sampling6s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `loc_detail` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_available_wms` int(11) DEFAULT NULL,
  `qty_allocated_wms` int(11) DEFAULT NULL,
  `qty_nav` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `selisih_fisik_wms` int(11) DEFAULT NULL,
  `hit_miss_fisik_wms` varchar(255) DEFAULT NULL,
  `total_qty_item_wms` int(11) DEFAULT NULL,
  `selisih_wms_nav` int(11) DEFAULT NULL,
  `hit_miss_wms_nav` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sampling7s`
--

CREATE TABLE `sampling7s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `loc_detail` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_available_wms` int(11) DEFAULT NULL,
  `qty_allocated_wms` int(11) DEFAULT NULL,
  `qty_nav` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `selisih_fisik_wms` int(11) DEFAULT NULL,
  `hit_miss_fisik_wms` varchar(255) DEFAULT NULL,
  `total_qty_item_wms` int(11) DEFAULT NULL,
  `selisih_wms_nav` int(11) DEFAULT NULL,
  `hit_miss_wms_nav` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `samplings`
--

CREATE TABLE `samplings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `barcode_item` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `loc_detail` varchar(255) DEFAULT NULL,
  `qty_sistem_wms` int(11) DEFAULT NULL,
  `qty_available_wms` int(11) DEFAULT NULL,
  `qty_allocated_wms` int(11) DEFAULT NULL,
  `qty_nav` int(11) DEFAULT NULL,
  `qty_fisik` int(11) DEFAULT NULL,
  `selisih_fisik_wms` int(11) DEFAULT NULL,
  `hit_miss_fisik_wms` varchar(255) DEFAULT NULL,
  `total_qty_item_wms` int(11) DEFAULT NULL,
  `selisih_wms_nav` int(11) DEFAULT NULL,
  `hit_miss_wms_nav` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `site_id` varchar(255) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `region_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`site_id`, `site_name`, `region_id`, `created_at`, `updated_at`) VALUES
('00001', 'HO', 'Reg000', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10003', 'MITRA10 CIBUBUR', 'Reg003', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10004', 'MITRA10 DAAN MOGOT', 'Reg006', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10005', 'MITRA10 PERCETAKAN NEGARA', 'Reg005', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10006', 'MITRA10 PASAR BARU', 'Reg004', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10007', 'MITRA10 BINTARO', 'Reg004', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10009', 'MITRA10 CINERE', 'Reg005', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10040', 'MITRA10 FATMAWATI', 'Reg004', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10042', 'MITRA10 PANTAI INDAH KAPUK', 'Reg006', '2024-08-09 01:21:25', '2024-08-09 01:21:25'),
('10044', 'MITRA10 KOTA HARAPAN INDAH', 'Reg003', '2024-08-09 01:21:25', '2024-08-09 01:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `trs`
--

CREATE TABLE `trs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `nota_penjualan` varchar(255) NOT NULL,
  `promise_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `site_id` varchar(255) NOT NULL,
  `region_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `name`, `email`, `username`, `password`, `avatar`, `site_id`, `region_id`, `created_at`, `updated_at`) VALUES
(1, '4328971254189283', 'SWM User', 'swm@gmail.com', 'swm_user', '$2y$10$io8uVcOT45vqumIOkB7r3eQoINOWRvKPDhmv4FJ8MrQzA1G9O8qqS', NULL, '00001', 'Reg000', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(2, '5380535206196654', 'IC User 1', 'ic1@gmail.com', 'ic_user1', '$2y$10$KEEjm8Db7kYDr/q.X4RiH.g7uFIm3I9/Nuepp4PuClT9lZAxJayKu', NULL, '10003', 'Reg003', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(3, '9918261749052293', 'Regional Manager User 1', 'reg_manager1@gmail.com', 'reg_manager_user1', '$2y$10$hydumXJ/Qon0Bu9MZeIcRuE/IQ9vOMscZhMFXtRC/0YCbRH.S2.TK', NULL, '10003', 'Reg003', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(4, '9973096005980116', 'Regional Manager User 2', 'reg_manager2@gmail.com', 'reg_manager_user2', '$2y$10$Wha6SlOV.RO.gTSr7j.WCet0wbHRgjXzQEFbsX6io0W9AC6y0b8OO', NULL, '10004', 'Reg006', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(5, '9731535531081967', 'Store Manager User', 'store_manager@gmail.com', 'store_manager_user', '$2y$10$5ETsZWXsNK8CvbX2.dtL6.ZCqwlLGgjdgQ8aIGJJgeBmJ5qe.S4GK', NULL, '00001', 'Reg001', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(6, '5686926166280788', 'MOD User', 'mod@gmail.com', 'mod_user', '$2y$10$9XBW5roW.rPus26CUy8QO.XQF1z7qIZlcBU8aeRANLPKKw6AW8S1a', NULL, '00001', 'Reg001', '2024-08-09 01:21:27', '2024-08-09 01:21:27'),
(7, '6244393973943910', 'Leader User', 'leader@gmail.com', 'leader_user', '$2y$10$SUul6SYXe1eQx5l87YzLE.yw.5liMhIsB4AXyhBNdrkIFc7URg73y', NULL, '00001', 'Reg001', '2024-08-09 01:21:27', '2024-08-09 01:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crystal_report1s`
--
ALTER TABLE `crystal_report1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crystal_report2s`
--
ALTER TABLE `crystal_report2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crystal_report3s`
--
ALTER TABLE `crystal_report3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crystal_report4s`
--
ALTER TABLE `crystal_report4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crystal_report5s`
--
ALTER TABLE `crystal_report5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crystal_report6s`
--
ALTER TABLE `crystal_report6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crystal_report7s`
--
ALTER TABLE `crystal_report7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_count1s`
--
ALTER TABLE `cycle_count1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_count2s`
--
ALTER TABLE `cycle_count2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_count3s`
--
ALTER TABLE `cycle_count3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_count4s`
--
ALTER TABLE `cycle_count4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_count5s`
--
ALTER TABLE `cycle_count5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_count6s`
--
ALTER TABLE `cycle_count6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_count7s`
--
ALTER TABLE `cycle_count7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycle_counts`
--
ALTER TABLE `cycle_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cycle_counts_site_id_foreign` (`site_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_trs`
--
ALTER TABLE `form_trs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_trs_transfer_from_foreign` (`transfer_from`),
  ADD KEY `form_trs_transfer_to_foreign` (`transfer_to`),
  ADD KEY `form_trs_created_by_foreign` (`created_by`),
  ADD KEY `form_trs_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_trs`
--
ALTER TABLE `item_trs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_trs_tr_id_foreign` (`tr_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `mutasi_cw1s`
--
ALTER TABLE `mutasi_cw1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_cw2s`
--
ALTER TABLE `mutasi_cw2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_cw3s`
--
ALTER TABLE `mutasi_cw3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_cw4s`
--
ALTER TABLE `mutasi_cw4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_cw5s`
--
ALTER TABLE `mutasi_cw5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_cw6s`
--
ALTER TABLE `mutasi_cw6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_cw7s`
--
ALTER TABLE `mutasi_cw7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_d1s`
--
ALTER TABLE `mutasi_d1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_d2s`
--
ALTER TABLE `mutasi_d2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_d3s`
--
ALTER TABLE `mutasi_d3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_d4s`
--
ALTER TABLE `mutasi_d4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_d5s`
--
ALTER TABLE `mutasi_d5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_d6s`
--
ALTER TABLE `mutasi_d6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_d7s`
--
ALTER TABLE `mutasi_d7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_tag_bin1s`
--
ALTER TABLE `mutasi_tag_bin1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_tag_bin2s`
--
ALTER TABLE `mutasi_tag_bin2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_tag_bin3s`
--
ALTER TABLE `mutasi_tag_bin3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_tag_bin4s`
--
ALTER TABLE `mutasi_tag_bin4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_tag_bin5s`
--
ALTER TABLE `mutasi_tag_bin5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_tag_bin6s`
--
ALTER TABLE `mutasi_tag_bin6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi_tag_bin7s`
--
ALTER TABLE `mutasi_tag_bin7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `region_imports`
--
ALTER TABLE `region_imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_imports_region_id_foreign` (`region_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sampling1s`
--
ALTER TABLE `sampling1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampling2s`
--
ALTER TABLE `sampling2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampling3s`
--
ALTER TABLE `sampling3s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampling4s`
--
ALTER TABLE `sampling4s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampling5s`
--
ALTER TABLE `sampling5s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampling6s`
--
ALTER TABLE `sampling6s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampling7s`
--
ALTER TABLE `sampling7s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samplings`
--
ALTER TABLE `samplings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `samplings_site_id_foreign` (`site_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`site_id`),
  ADD KEY `stores_region_id_foreign` (`region_id`);

--
-- Indexes for table `trs`
--
ALTER TABLE `trs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trs_form_id_foreign` (`form_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_site_id_foreign` (`site_id`),
  ADD KEY `users_region_id_foreign` (`region_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crystal_report1s`
--
ALTER TABLE `crystal_report1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crystal_report2s`
--
ALTER TABLE `crystal_report2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crystal_report3s`
--
ALTER TABLE `crystal_report3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crystal_report4s`
--
ALTER TABLE `crystal_report4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crystal_report5s`
--
ALTER TABLE `crystal_report5s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crystal_report6s`
--
ALTER TABLE `crystal_report6s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crystal_report7s`
--
ALTER TABLE `crystal_report7s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cycle_count1s`
--
ALTER TABLE `cycle_count1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cycle_count2s`
--
ALTER TABLE `cycle_count2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cycle_count3s`
--
ALTER TABLE `cycle_count3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cycle_count4s`
--
ALTER TABLE `cycle_count4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cycle_count5s`
--
ALTER TABLE `cycle_count5s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cycle_count6s`
--
ALTER TABLE `cycle_count6s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cycle_count7s`
--
ALTER TABLE `cycle_count7s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cycle_counts`
--
ALTER TABLE `cycle_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `form_trs`
--
ALTER TABLE `form_trs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_trs`
--
ALTER TABLE `item_trs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `mutasi_cw1s`
--
ALTER TABLE `mutasi_cw1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_cw2s`
--
ALTER TABLE `mutasi_cw2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_cw3s`
--
ALTER TABLE `mutasi_cw3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_cw4s`
--
ALTER TABLE `mutasi_cw4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_cw5s`
--
ALTER TABLE `mutasi_cw5s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_cw6s`
--
ALTER TABLE `mutasi_cw6s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_cw7s`
--
ALTER TABLE `mutasi_cw7s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_d1s`
--
ALTER TABLE `mutasi_d1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_d2s`
--
ALTER TABLE `mutasi_d2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_d3s`
--
ALTER TABLE `mutasi_d3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_d4s`
--
ALTER TABLE `mutasi_d4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_d5s`
--
ALTER TABLE `mutasi_d5s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_d6s`
--
ALTER TABLE `mutasi_d6s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_d7s`
--
ALTER TABLE `mutasi_d7s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_tag_bin1s`
--
ALTER TABLE `mutasi_tag_bin1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_tag_bin2s`
--
ALTER TABLE `mutasi_tag_bin2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_tag_bin3s`
--
ALTER TABLE `mutasi_tag_bin3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_tag_bin4s`
--
ALTER TABLE `mutasi_tag_bin4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_tag_bin5s`
--
ALTER TABLE `mutasi_tag_bin5s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_tag_bin6s`
--
ALTER TABLE `mutasi_tag_bin6s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi_tag_bin7s`
--
ALTER TABLE `mutasi_tag_bin7s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region_imports`
--
ALTER TABLE `region_imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sampling1s`
--
ALTER TABLE `sampling1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sampling2s`
--
ALTER TABLE `sampling2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sampling3s`
--
ALTER TABLE `sampling3s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sampling4s`
--
ALTER TABLE `sampling4s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sampling5s`
--
ALTER TABLE `sampling5s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sampling6s`
--
ALTER TABLE `sampling6s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sampling7s`
--
ALTER TABLE `sampling7s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `samplings`
--
ALTER TABLE `samplings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trs`
--
ALTER TABLE `trs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cycle_counts`
--
ALTER TABLE `cycle_counts`
  ADD CONSTRAINT `cycle_counts_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `stores` (`site_id`);

--
-- Constraints for table `form_trs`
--
ALTER TABLE `form_trs`
  ADD CONSTRAINT `form_trs_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `form_trs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `form_trs_transfer_from_foreign` FOREIGN KEY (`transfer_from`) REFERENCES `stores` (`site_id`),
  ADD CONSTRAINT `form_trs_transfer_to_foreign` FOREIGN KEY (`transfer_to`) REFERENCES `stores` (`site_id`);

--
-- Constraints for table `item_trs`
--
ALTER TABLE `item_trs`
  ADD CONSTRAINT `item_trs_tr_id_foreign` FOREIGN KEY (`tr_id`) REFERENCES `trs` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `region_imports`
--
ALTER TABLE `region_imports`
  ADD CONSTRAINT `region_imports_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`reg_id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `samplings`
--
ALTER TABLE `samplings`
  ADD CONSTRAINT `samplings_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `stores` (`site_id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`reg_id`) ON DELETE CASCADE;

--
-- Constraints for table `trs`
--
ALTER TABLE `trs`
  ADD CONSTRAINT `trs_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `form_trs` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`reg_id`),
  ADD CONSTRAINT `users_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `stores` (`site_id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
