-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 11:19 AM
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
(52, '2024_06_10_080503_create_region_import_mappings_table', 1);

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
(2, 'App\\Models\\Users', 2),
(3, 'App\\Models\\Users', 3),
(4, 'App\\Models\\Users', 4),
(5, 'App\\Models\\Users', 5);

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
(1, 'view-role', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(2, 'create-role', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(3, 'update-role', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(4, 'delete-role', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(5, 'view-user', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(6, 'create-user', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(7, 'update-user', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(8, 'delete-user', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(9, 'view-store', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(10, 'create-store', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(11, 'update-store', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(12, 'delete-store', 'web', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
(13, 'view-region', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(14, 'create-region', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(15, 'update-region', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(16, 'delete-region', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(17, 'view-dashboard', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(18, 'view-data-report', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(19, 'upload-data-report', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(20, 'delete-data-report', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(21, 'update-data-report', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(22, 'view-cycle-count', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(23, 'upload-cycle-count', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(24, 'delete-cycle-count', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(25, 'update-cycle-count', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(26, 'progress-cycle-count', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(27, 'view-sampling', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(28, 'upload-sampling', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(29, 'delete-sampling', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(30, 'update-sampling', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(31, 'progress-sampling', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(32, 'view-crumen', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(33, 'upload-crumen', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(34, 'delete-crumen', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(35, 'export-crumen', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(36, 'view-history', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(37, 'export-history', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(38, 'create-letyouknow', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(39, 'edit-letyouknow', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(40, 'delete-letyouknow', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(41, 'upload-learning', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(42, 'edit-learning', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(43, 'delete-learning', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22');

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
('Reg000', 'HO', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('Reg001', 'Region 1', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('Reg002', 'Region 2', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('Reg003', 'Region 3', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('Reg004', 'Region 4', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('Reg005', 'Region 5', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('Reg006', 'Region 6', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('Reg007', 'Region 7', '2024-06-19 02:19:21', '2024-06-19 02:19:21');

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
(1, 'Reg001', '1', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(2, 'Reg002', '2', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(3, 'Reg003', '3', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(4, 'Reg004', '4', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(5, 'Reg005', '5', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(6, 'Reg006', '6', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(7, 'Reg007', '7', '2024-06-19 02:19:22', '2024-06-19 02:19:22');

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
(1, 'SWM', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(2, 'Regional Manager', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(3, 'Store Manager', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(4, 'MOD', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(5, 'Leader', 'web', '2024-06-19 02:19:22', '2024-06-19 02:19:22');

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
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(23, 3),
(23, 4),
(23, 5),
(26, 3),
(26, 4),
(26, 5),
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
(35, 5);

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
('00001', 'HO', 'Reg000', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('10003', 'Mitra10 Cibubur', 'Reg001', '2024-06-19 02:19:21', '2024-06-19 02:19:21'),
('10044', 'Mitra10 Kota Harapan Indah', 'Reg001', '2024-06-19 02:19:21', '2024-06-19 02:19:21');

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
(1, '6319189593730995', 'SWM User', 'swm@gmail.com', 'swm_user', '$2y$10$n1gDPTnRTrrFGqcSpghNgeKKSH/NB13FAydejvRLJ2KjKGFe3ZJJG', NULL, '00001', 'Reg000', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(2, '6214471545697064', 'Regional Manager User', 'reg_manager@gmail.com', 'reg_manager_user', '$2y$10$mDacw5.06SR7dEePOWeqXebP7K0/WpW/EqbbmWMPLO6.BXI88LDxW', NULL, '00001', 'Reg001', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(3, '6169782943840950', 'Store Manager User', 'store_manager@gmail.com', 'store_manager_user', '$2y$10$9b2BV4w.hxmq25SfoQ.5uu4hdBBK8uMcSYO6oDyFGX8RzlJstVIHa', NULL, '00001', 'Reg001', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(4, '9319708291794904', 'MOD User', 'mod@gmail.com', 'mod_user', '$2y$10$UFtgzufRoTP9KiEzBhPCs.6oPB7wd1UBTgPvkzHOdTDteKXQYdYTO', NULL, '00001', 'Reg001', '2024-06-19 02:19:22', '2024-06-19 02:19:22'),
(5, '2748901965558100', 'Leader User', 'leader@gmail.com', 'leader_user', '$2y$10$WbnxIwDpGzA8hlrQRlwwAudQIfLnKqlpI4F9ZckcpOxfteZ3AZx9u', NULL, '00001', 'Reg001', '2024-06-19 02:19:22', '2024-06-19 02:19:22');

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cycle_counts`
--
ALTER TABLE `cycle_counts`
  ADD CONSTRAINT `cycle_counts_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `stores` (`site_id`);

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`reg_id`),
  ADD CONSTRAINT `users_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `stores` (`site_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
