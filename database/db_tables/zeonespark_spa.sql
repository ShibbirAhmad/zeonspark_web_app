-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 10:35 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeonespark_spa`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_and_contacts`
--

CREATE TABLE `about_and_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_and_contacts`
--

INSERT INTO `about_and_contacts` (`id`, `about_info`, `contact_info`, `created_at`, `updated_at`) VALUES
(1, '<p>Smartdealbd.com is the best online shop. Buy online save time &amp; money</p>', '<p>Office: House:-02, West Senpara, Mirpur-10, Dhaka-1216</p><p>☎️ 01946-224444 ☎️01841-125012</p><p>Email: zonespark.com<a href=\"mailto:punokbd@gmail.com\">@gmail.com</a></p>', '2021-01-17 10:35:03', '2021-09-29 11:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `account_purposes`
--

CREATE TABLE `account_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_purposes`
--

INSERT INTO `account_purposes` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Salary', '2020-11-09 01:22:37', '2020-11-09 01:22:37'),
(2, 'Return Cost (courier)', '2020-11-09 01:22:46', '2020-11-25 13:48:44'),
(7, 'Courier Charge', '2020-11-11 14:54:11', '2020-11-11 14:54:11'),
(8, 'Travel Allowance', '2020-11-11 14:54:23', '2020-11-11 14:54:23'),
(9, 'Supplier Bill', '2020-11-11 14:54:39', '2020-11-11 14:54:39'),
(10, 'Print House Bill', '2020-11-11 14:54:50', '2020-11-28 20:29:38'),
(11, 'Loan Paid', '2020-11-11 14:55:01', '2020-11-11 14:55:01'),
(12, 'Investor Profit', '2020-11-11 14:55:31', '2020-11-18 19:18:38'),
(14, 'Others', '2020-11-11 14:55:54', '2020-11-11 14:55:54'),
(16, 'Office Stationary', '2020-11-13 20:42:06', '2020-11-13 20:42:06'),
(17, 'Reseller Commission', '2020-11-23 14:58:05', '2020-11-23 14:58:05'),
(21, 'Bill Statement', '2021-03-13 04:57:06', '2021-03-13 04:57:06'),
(22, 'Investment Return', '2021-03-15 07:12:27', '2021-03-15 07:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `last_login_time` timestamp NULL DEFAULT NULL,
  `last_logout_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `image`, `email`, `password`, `remember_token`, `status`, `last_login_time`, `last_logout_time`, `created_at`, `updated_at`) VALUES
(54, 'zonespark', 'images/admin/tkZzV2skF2pW5RtxZXFZEvXqc2FCLSV05L6sHAWA.png', 'z@admin.com', '$2y$10$50LFXj4y42EgIcRvAJa54..xCKU52.o0C1rD6HRILVfGeP/WjBuBS', '', 1, '2021-10-18 06:02:24', '2021-09-29 11:20:52', '2020-11-07 10:42:19', '2021-10-18 12:02:24'),
(56, 'Manager', NULL, 'manager@smartdealbd.com', '$2y$10$HM8ZXJQGmd43ji39cYjGtuO2yDHrQ7qhh8wCqXEhftEWmXhG1BbY.', NULL, 1, '2021-08-15 15:08:53', '2021-08-15 15:09:58', '2021-08-15 14:55:32', '2021-08-15 11:09:58'),
(57, 'Mimi', NULL, 'executive1@smartdealbd.com', '$2y$10$evyKhl4N.IuNIVTRheK5N./VNwIpsYpDkCnwrCUgso5VD8Y4HVpIW', NULL, 1, '2021-08-16 01:47:45', '2021-08-15 15:20:19', '2021-08-15 15:00:06', '2021-08-15 21:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'size', 1, '2020-09-22 10:09:27', '2020-09-22 10:09:27'),
(2, 'color', 1, '2020-10-13 23:26:52', '2020-10-13 23:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `background_and_colors`
--

CREATE TABLE `background_and_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `primary_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_background_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_background_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_menu_background_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_text_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_text_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_menu_text_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `background_and_colors`
--

INSERT INTO `background_and_colors` (`id`, `primary_color`, `primary_background_color`, `menu_background_color`, `sub_menu_background_color`, `primary_text_color`, `menu_text_color`, `sub_menu_text_color`, `created_at`, `updated_at`) VALUES
(1, '#fcb800', '#ffffff', '#FCF6F5', '#ffffff', '#000000', '#000000', '#000000', '2021-01-10 05:37:57', '2021-10-16 11:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '2021-08-10 08:03:58', '2021-08-10 08:03:58'),
(2, 'Bkash-224444', '2021-08-10 08:04:11', '2021-08-10 08:04:11'),
(3, 'Bkash Merchant', '2021-08-10 08:04:30', '2021-08-10 08:04:30'),
(4, 'Nagad-125012', '2021-08-10 08:04:44', '2021-08-10 08:04:44'),
(5, 'Nagad-237172', '2021-08-10 08:04:57', '2021-08-10 08:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `balance_insert_admins`
--

CREATE TABLE `balance_insert_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `balance_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT 0,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balance_insert_admins`
--

INSERT INTO `balance_insert_admins` (`id`, `admin_id`, `balance_id`, `order_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 54, 2, 205, 120, '2021-09-21 16:29:02', '2021-09-21 16:29:02'),
(2, 54, 1, 220, 1, '2021-09-22 10:14:55', '2021-09-22 10:14:55'),
(3, 54, 2, 220, 100, '2021-09-22 10:30:14', '2021-09-22 10:30:14'),
(4, 54, 2, 200, 120, '2021-09-22 11:06:30', '2021-09-22 11:06:30'),
(5, 54, 2, 226, 120, '2021-09-22 11:07:00', '2021-09-22 11:07:00'),
(6, 54, 2, 229, 100, '2021-09-22 14:34:52', '2021-09-22 14:34:52'),
(7, 54, 2, 231, 100, '2021-09-22 14:51:44', '2021-09-22 14:51:44'),
(8, 54, 1, 291, 310, '2021-09-23 17:03:49', '2021-09-23 17:03:49'),
(9, 54, 1, 293, 310, '2021-09-23 17:13:25', '2021-09-23 17:13:25'),
(10, 54, 1, 294, 310, '2021-09-23 17:16:48', '2021-09-23 17:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `beside_slider_banner_url_1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beside_slider_banner_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beside_slider_banner_url_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beside_slider_banner_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beside_slider_banner_status` int(11) DEFAULT 1,
  `under_new_arrival_banner_url_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `under_new_arrival_banner_url_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `under_new_arrival_banner_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `under_new_arrival_banner_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `under_new_arrival_banner_status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `beside_slider_banner_url_1`, `beside_slider_banner_1`, `beside_slider_banner_url_2`, `beside_slider_banner_2`, `beside_slider_banner_status`, `under_new_arrival_banner_url_1`, `under_new_arrival_banner_url_2`, `under_new_arrival_banner_1`, `under_new_arrival_banner_2`, `under_new_arrival_banner_status`, `created_at`, `updated_at`) VALUES
(1, 'https//zonespark.com', 'images/add_banner/QAfhHMsz8yL8E9J6wLxKrWoY5dV3YEydOnhcOQ0L.png', 'https//zonespark.com', 'images/add_banner/9kudZzUKd72LfL1c9liPBd1O323wNHcD4zxnzA6X.jpg', 1, 'https://zonespark.com', 'https://zonespark.com', 'images/add_banner/4HXs0baF7LxN8KDkAmy1GuF3SCuxFfHFUdeK7k7S.jpg', 'images/add_banner/wDfps7O1rdetOGos5wJprnWClMCHt7qv0yxfYkHh.jpg', 1, '2021-03-10 18:00:00', '2021-10-03 08:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `bill_paid_statements`
--

CREATE TABLE `bill_paid_statements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_statement_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_per_months`
--

CREATE TABLE `bill_per_months` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_statement_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_statements`
--

CREATE TABLE `bill_statements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon_image`, `status`, `position`, `created_at`, `updated_at`) VALUES
(1, 'HOME & LIVING', '1000-LIVING', 'images/category/9Doive55C4FS6zqSnxoTOi8QlcYWSyJIkIUTj1G2.png', 1, 1, '2021-08-10 06:52:29', '2021-10-03 11:56:39'),
(2, 'KITCHEN & DINING', '1001-DINING', 'images/category/gTjKFsITbHbSCUlZU36BpjfXyc7NuuCFL8C5vitg.png', 1, 2, '2021-08-10 06:52:59', '2021-08-25 06:47:37'),
(3, 'HEALTH & BEAUTY', '1002-BEAUTY', 'images/category/rdMfjuLS57uTbWsMGX9JCKQLqDk7rbSVtFclC1I5.png', 1, 3, '2021-08-10 06:53:26', '2021-08-25 06:34:16'),
(4, 'GADGET & ELECTRONICS', '1003-ELECTRONICS', 'images/category/uKZvBpxZYejFghazxMBKk2HieloudTQAXWo9fJvw.png', 1, 4, '2021-08-10 06:53:49', '2021-08-25 06:34:22'),
(5, 'KIDS & BABY', '1004-BABY', 'images/category/UojmKTJ8Es9cImAZWEImEgEYWVAGhZ6sRrqjGJpy.png', 1, 5, '2021-08-10 06:54:23', '2021-08-25 06:34:27'),
(6, 'WATCHES', '1005-SUPPLEMENTS', 'images/category/6wcZ0YVSKO8AXIejOP1TZW9ZbIVFScyjqTVbJoTq.png', 1, 6, '2021-08-10 06:55:02', '2021-08-25 06:34:33'),
(7, 'MEN TOPS', '1006-DRESS', 'images/category/1rnuee8T3pDuR5kTjWsuuNDWg6JFml8rxTWxdxfY.png', 1, 7, '2021-08-10 06:55:19', '2021-10-05 07:18:22'),
(8, 'MEN BOTTOM', '1007-BOTTOM', NULL, 1, 0, '2021-10-05 07:19:01', '2021-10-05 07:19:01'),
(9, 'MEN ACCESSORIES', '1008-ACCESSORIES', NULL, 1, 0, '2021-10-05 07:19:30', '2021-10-05 07:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `category_sliders`
--

CREATE TABLE `category_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `sub_sub_category_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_sliders`
--

INSERT INTO `category_sliders` (`id`, `image`, `url`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/category_slider/qkqMplOLeEqVzz2yRe28P8z0cb7CloiJy6nx42gE.jpg', 'https://zeonespark.com', 7, 1, NULL, 1, '2021-10-05 10:10:26', '2021-10-05 10:10:26'),
(2, 'images/category_slider/DRefMvPEiEhkIaYr1h4edcHFMKCSBlCiHhNLpQrk.jpg', 'https://zeonespark.com', 7, 2, NULL, 1, '2021-10-05 10:19:12', '2021-10-05 10:19:12'),
(3, 'images/category_slider/husmQ3FAchMZufN6OSpHuypZ8cjaTNtyE16pQ7zz.jpg', 'https://zeonespark.com', 7, 3, NULL, 1, '2021-10-05 10:19:30', '2021-10-05 10:19:30'),
(4, 'images/category_slider/DMyKKNI2cbuLpcD8YWg938vFveI7AIETLNDHG3eo.jpg', 'https://zeonespark.com', 8, NULL, NULL, 1, '2021-10-05 10:19:54', '2021-10-05 10:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `delivery_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 70, 1, '2020-09-21 20:17:18', '2020-12-01 10:29:45'),
(2, 'Barguna', 120, 1, '2020-09-22 09:25:37', '2020-12-24 01:05:47'),
(3, 'Barisal', 120, 1, '2020-09-22 09:28:14', '2020-12-24 01:05:37'),
(4, 'Bhola', 120, 1, '2020-09-22 09:29:11', '2020-12-24 01:05:28'),
(5, 'Jalokathi', 120, 1, '2020-09-22 09:29:34', '2020-12-24 01:05:18'),
(6, 'Patuakhali', 120, 1, '2020-09-22 09:29:56', '2020-12-24 01:05:02'),
(7, 'Pirojpur', 120, 1, '2020-09-22 09:32:24', '2020-12-24 01:04:50'),
(8, 'Bandorbon', 120, 1, '2020-09-22 09:32:37', '2020-12-24 01:04:42'),
(9, 'Brahmanbaria', 120, 1, '2020-09-22 09:33:21', '2020-12-24 01:04:30'),
(10, 'Chandpur', 120, 1, '2020-09-22 09:53:56', '2020-12-24 01:04:13'),
(11, 'Chottogram', 120, 1, '2020-09-22 09:54:07', '2020-12-24 01:04:03'),
(12, 'Cumilla', 120, 1, '2020-09-22 09:54:23', '2020-12-24 01:03:53'),
(13, 'Cox\'Bazar', 120, 1, '2020-09-22 09:54:36', '2020-12-24 01:03:38'),
(14, 'Feni', 120, 1, '2020-09-22 09:54:43', '2020-12-24 01:03:26'),
(15, 'Khagrachari', 120, 1, '2020-09-22 09:55:16', '2020-12-24 01:03:16'),
(16, 'Lakshmipur', 120, 1, '2020-09-22 09:55:28', '2020-12-24 01:03:04'),
(17, 'Noakhali', 120, 1, '2020-09-22 09:55:44', '2020-12-24 01:02:52'),
(18, 'Rangamati', 120, 1, '2020-09-22 09:55:57', '2020-12-24 01:02:43'),
(19, 'Faridpur', 120, 1, '2020-09-22 09:56:17', '2020-12-24 01:02:32'),
(20, 'Gazipur', 120, 1, '2020-09-22 09:56:28', '2020-12-24 01:02:20'),
(21, 'Gopalgonj', 120, 1, '2020-09-22 09:56:36', '2020-12-24 01:01:58'),
(22, 'Kishorgonj', 120, 1, '2020-09-22 09:57:04', '2020-12-24 01:01:47'),
(23, 'Madaripur', 120, 1, '2020-09-22 09:57:24', '2020-12-24 01:01:39'),
(24, 'Manikgonj', 120, 1, '2020-09-22 09:59:26', '2020-12-24 01:01:27'),
(25, 'Munshigonj', 120, 1, '2020-09-22 09:59:45', '2020-12-24 01:01:20'),
(26, 'Narayangonj', 120, 1, '2020-09-22 10:00:05', '2020-12-24 01:01:14'),
(27, 'Narsingdhi', 120, 1, '2020-09-22 10:00:27', '2020-12-24 00:59:16'),
(28, 'Rajbari', 120, 1, '2020-09-22 10:00:40', '2020-12-24 01:00:59'),
(29, 'Shariatpur', 120, 1, '2020-09-22 10:00:50', '2020-12-24 01:00:51'),
(30, 'Tangail', 120, 1, '2020-09-22 10:01:06', '2020-12-24 01:00:38'),
(31, 'Bagerhat', 120, 1, '2020-09-22 10:01:16', '2020-12-24 01:00:23'),
(32, 'Chuadanga', 120, 1, '2020-09-22 10:01:31', '2020-12-24 01:00:14'),
(33, 'Jessore', 120, 1, '2020-09-22 10:01:49', '2020-12-24 01:00:04'),
(34, 'Jhenaidah', 120, 1, '2020-09-22 10:02:02', '2020-12-24 00:59:52'),
(35, 'Khulna', 120, 1, '2020-09-22 10:02:18', '2020-12-24 00:59:36'),
(36, 'Kusthia', 120, 1, '2020-09-22 10:02:28', '2020-12-24 00:59:24'),
(37, 'Magura', 120, 1, '2020-09-22 10:02:35', '2020-12-24 00:59:00'),
(38, 'Meherpur', 120, 1, '2020-09-22 10:02:52', '2020-12-24 00:58:51'),
(39, 'Narail', 120, 1, '2020-09-22 10:03:03', '2020-12-24 00:58:42'),
(40, 'Satkhira', 120, 1, '2020-09-22 10:03:13', '2020-12-24 00:58:29'),
(41, 'Jamalpur', 120, 1, '2020-09-22 10:03:34', '2020-12-24 00:58:20'),
(42, 'Mymensingh', 120, 1, '2020-09-22 10:03:51', '2020-12-24 00:58:01'),
(43, 'Netrokona', 120, 1, '2020-09-22 10:04:03', '2020-12-24 00:57:48'),
(44, 'Sherpur', 120, 1, '2020-09-22 10:07:38', '2020-12-24 00:57:38'),
(45, 'Bogura', 120, 1, '2020-09-22 10:07:48', '2020-12-24 00:57:30'),
(46, 'Joypurhat', 120, 1, '2020-09-22 10:08:00', '2020-12-24 00:57:18'),
(47, 'Noygaon', 120, 1, '2020-09-22 10:08:18', '2020-12-24 00:57:07'),
(48, 'Natore', 120, 1, '2020-09-22 10:08:25', '2020-12-24 00:56:58'),
(49, 'Chapainawabganj', 120, 1, '2020-09-22 10:08:46', '2020-12-24 00:56:46'),
(50, 'Pabna', 120, 1, '2020-09-22 10:08:54', '2020-12-24 00:56:35'),
(51, 'Rajshahi', 120, 1, '2020-09-22 10:09:01', '2020-12-24 00:56:27'),
(52, 'Sirajgonj', 120, 1, '2020-09-22 10:09:15', '2020-12-24 00:56:05'),
(53, 'Dinajpur', 120, 1, '2020-09-22 10:09:22', '2020-12-24 00:55:49'),
(54, 'Gaibandha', 120, 1, '2020-09-22 10:09:34', '2020-12-24 00:55:38'),
(55, 'Kurigram', 120, 1, '2020-09-22 10:09:49', '2020-12-24 00:55:29'),
(56, 'Lalmonirhat', 120, 1, '2020-09-22 10:09:57', '2020-12-24 00:55:18'),
(57, 'Nilphamari', 120, 1, '2020-09-22 10:10:08', '2020-12-24 00:55:10'),
(58, 'Panchagarh', 120, 1, '2020-09-22 10:10:52', '2020-12-24 00:55:04'),
(59, 'Rangpur', 120, 1, '2020-09-22 10:11:05', '2020-12-24 00:54:58'),
(60, 'Thakurgaon', 120, 1, '2020-09-22 10:11:16', '2020-12-24 00:54:48'),
(61, 'Hobigonj', 120, 1, '2020-09-22 10:11:28', '2020-12-24 00:54:42'),
(62, 'Mowlovibazar', 120, 1, '2020-09-22 10:11:43', '2020-12-24 00:54:37'),
(63, 'Sunamgonj', 120, 1, '2020-09-22 10:12:00', '2020-12-24 00:54:31'),
(64, 'Sylhet', 120, 1, '2020-09-22 10:12:11', '2020-12-24 00:54:09'),
(65, 'savar', 120, 1, '2020-11-29 16:57:55', '2020-12-24 00:54:02'),
(66, 'Outside of Dhaka', 120, 1, '2020-11-29 16:58:19', '2020-12-24 00:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'কল রিসিভ করেন নাই', 1, '2020-09-21 20:11:19', '2020-12-02 07:33:06'),
(3, 'আবার কল দিতে হবে', 1, '2020-12-02 07:31:12', '2020-12-02 07:31:12'),
(4, 'অফিসে আসবেন', 1, '2020-12-02 07:31:49', '2020-12-02 07:31:49'),
(5, 'পরে জানাবেন', 1, '2020-12-02 07:32:10', '2020-12-02 07:32:10'),
(6, 'এডভান্স করবেন', 1, '2020-12-02 07:33:25', '2020-12-02 07:33:25'),
(7, 'রেডি হয়েছে', 1, '2020-12-03 15:04:17', '2020-12-03 15:04:17'),
(8, 'others', 1, '2020-12-03 15:21:45', '2020-12-03 15:21:45'),
(9, 'Product Received', 1, '2020-12-23 17:45:24', '2020-12-23 17:45:44'),
(10, 'Order Confirmed', 1, '2020-12-23 17:46:04', '2020-12-23 17:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Daraz.com.bd', '01000000000', 'Dhaka', 1, '2021-08-10 11:37:56', '2021-08-10 11:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `company_assets`
--

CREATE TABLE `company_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `present_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_sale_paids`
--

CREATE TABLE `company_sale_paids` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `balance_id` int(11) NOT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_sale_paids`
--

INSERT INTO `company_sale_paids` (`id`, `company_id`, `date`, `balance_id`, `comment`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-10', 2, 'test', 290, '2021-08-10 11:39:27', '2021-08-10 11:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_amount` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sundarban Courier', 1, '2020-09-21 20:09:46', '2020-09-21 20:09:46'),
(2, 'S A Paribahan', 1, '2020-09-21 20:10:02', '2020-09-21 20:10:02'),
(3, 'Kortoa Courier Service (KCS)', 1, '2020-09-21 20:10:16', '2020-11-25 12:31:52'),
(4, 'Janani Courier', 1, '2020-09-21 20:10:31', '2020-09-21 20:10:31'),
(5, 'Smart Express', 1, '2020-09-21 20:10:43', '2021-08-24 18:53:43'),
(6, 'Mr. Peon', 0, '2020-12-02 07:18:07', '2021-09-17 16:30:41'),
(7, 'AJR', 1, '2020-12-02 13:10:39', '2020-12-02 13:10:39'),
(8, 'SR Courier', 0, '2020-12-02 13:10:57', '2021-09-17 16:30:38'),
(9, 'Ahmad Parcel', 0, '2020-12-02 13:13:14', '2021-09-17 16:30:31'),
(10, 'Bangladesh Parcel', 0, '2020-12-14 09:43:43', '2021-09-17 16:30:34'),
(11, 'REDX', 1, '2020-12-24 19:00:14', '2020-12-24 19:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL COMMENT 'date',
  `purpose` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insert_admin_id` int(11) NOT NULL COMMENT 'store_admin_id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_dues`
--

CREATE TABLE `credit_dues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `credit_id` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `customer_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_dues`
--

CREATE TABLE `customer_dues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `customer_mobile_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallets`
--

CREATE TABLE `customer_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debits`
--

CREATE TABLE `debits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL COMMENT 'date',
  `purpose` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insert_admin_id` int(11) NOT NULL COMMENT 'store_admin_id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `joining_date` text DEFAULT NULL,
  `designation` text NOT NULL,
  `phone` text NOT NULL,
  `phone_office` text DEFAULT NULL,
  `email` text NOT NULL,
  `position` int(11) NOT NULL,
  `avator` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `resume` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `joining_date`, `designation`, `phone`, `phone_office`, `email`, `position`, `avator`, `status`, `resume`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Mr.  TEST', '01-08-2021', 'Office Assistant', '01737481778', NULL, 'test@gmail.com', 5, 'images/team/cuUeB5WjSbfY3JjMv0OctkNG47saZuZL5w2mxCAd.png', 1, 'images/team_resume/PDnHUxlyDivPFeEdUHrDvBAxAqUnusqsPsQoB3M8.pdf', NULL, '2021-08-10 11:47:22', '2021-08-10 11:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `comment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `factories`
--

CREATE TABLE `factories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fond_transfers`
--

CREATE TABLE `fond_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `cost` double(8,2) NOT NULL DEFAULT 0.00,
  `creator_admin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_settings`
--

CREATE TABLE `footer_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_settings`
--

INSERT INTO `footer_settings` (`id`, `facebook_url`, `twitter_url`, `youtube_url`, `linkedin_url`, `copyright_info`, `footer_description`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/smartdealbd24', 'https://twitter.com', 'https://youtube.com', 'linkedin.com', 'Copyright © zonespark.com 2021. All rights reserved', '<p>zonespark.com is a complete e-commerce website. Here, consumers of all ages can buy every essential product of the day, from gadgets, home appliances, leather goods, baby accessories, cosmetics, fashion, and lifestyle products to affordable prices at home</p><p>&nbsp;</p>', '2021-01-10 05:33:59', '2021-09-29 11:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `found_transfers`
--

CREATE TABLE `found_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `cost` int(11) NOT NULL DEFAULT 0,
  `creator_admin` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_contact_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_point_value` int(11) NOT NULL DEFAULT 0,
  `invoice_address_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `title`, `icon`, `header_contact_number`, `wallet_point_value`, `invoice_address_details`, `created_at`, `updated_at`) VALUES
(1, 'images/general_setting/PR0SHOuKfLvqrsCOiSC00kZXcpOLXnFEUOQ6e6IC.jpg', 'zeonespark.com', 'images/general_setting/Uy0csZNtYC2NcRqxheajuHJxj6VaoBdZCYlEgV2v.png', '01946224444', 2, '<p>Office: House-02, West Senpara</p><p>Mirpur-10, Dhaka 1216</p><p>&nbsp;Phone: &nbsp;01946-224444, 01841-125012</p><p>Email: zonespark.com<a href=\"mailto:punokbd@gmail.com\">@gmail.com</a></p>', '2021-01-10 05:29:08', '2021-10-10 07:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `investor_id` int(11) NOT NULL,
  `purpose` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_returns`
--

CREATE TABLE `investment_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `investor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

CREATE TABLE `investors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referance_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit_margin` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investor_profit_paids`
--

CREATE TABLE `investor_profit_paids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `investor_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `profit_month` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaners`
--

CREATE TABLE `loaners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loaner_id` int(11) NOT NULL,
  `purpose` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_paids`
--

CREATE TABLE `loan_paids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loaner_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `date` date NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '2=deny, 0=pending, 1=approved',
  `remember_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 54),
(2, 'App\\Models\\Admin', 54),
(6, 'App\\Models\\Admin', 54),
(5, 'App\\Models\\Admin', 54),
(37, 'App\\Models\\Admin', 54),
(33, 'App\\Models\\Admin', 54),
(27, 'App\\Models\\Admin', 54),
(23, 'App\\Models\\Admin', 54),
(19, 'App\\Models\\Admin', 54),
(20, 'App\\Models\\Admin', 54),
(24, 'App\\Models\\Admin', 54),
(28, 'App\\Models\\Admin', 54),
(34, 'App\\Models\\Admin', 54),
(38, 'App\\Models\\Admin', 54),
(35, 'App\\Models\\Admin', 54),
(31, 'App\\Models\\Admin', 54),
(29, 'App\\Models\\Admin', 54),
(25, 'App\\Models\\Admin', 54),
(21, 'App\\Models\\Admin', 54),
(26, 'App\\Models\\Admin', 54),
(30, 'App\\Models\\Admin', 54),
(32, 'App\\Models\\Admin', 54),
(36, 'App\\Models\\Admin', 54),
(22, 'App\\Models\\Admin', 54),
(18, 'App\\Models\\Admin', 54),
(17, 'App\\Models\\Admin', 54),
(13, 'App\\Models\\Admin', 54),
(9, 'App\\Models\\Admin', 54),
(8, 'App\\Models\\Admin', 54),
(4, 'App\\Models\\Admin', 54),
(3, 'App\\Models\\Admin', 54),
(7, 'App\\Models\\Admin', 54),
(12, 'App\\Models\\Admin', 54),
(16, 'App\\Models\\Admin', 54),
(15, 'App\\Models\\Admin', 54),
(11, 'App\\Models\\Admin', 54),
(10, 'App\\Models\\Admin', 54),
(14, 'App\\Models\\Admin', 54),
(5, 'App\\Models\\Admin', 57),
(6, 'App\\Models\\Admin', 57),
(7, 'App\\Models\\Admin', 57),
(8, 'App\\Models\\Admin', 57);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 3),
(1, 'App\\Models\\Admin', 23),
(1, 'App\\Models\\Admin', 53),
(1, 'App\\Models\\Admin', 54),
(2, 'App\\Models\\Admin', 25),
(2, 'App\\Models\\Admin', 31),
(2, 'App\\Models\\Admin', 32),
(2, 'App\\Models\\Admin', 33),
(2, 'App\\Models\\Admin', 38),
(2, 'App\\Models\\Admin', 39),
(2, 'App\\Models\\Admin', 41),
(2, 'App\\Models\\Admin', 42),
(2, 'App\\Models\\Admin', 52),
(2, 'App\\Models\\Admin', 54),
(2, 'App\\Models\\Admin', 55),
(3, 'App\\Models\\Admin', 32),
(3, 'App\\Models\\Admin', 42),
(3, 'App\\Models\\Admin', 50),
(3, 'App\\Models\\Admin', 52),
(3, 'App\\Models\\Admin', 54),
(3, 'App\\Models\\Admin', 56),
(3, 'App\\Models\\Admin', 57),
(4, 'App\\Models\\Admin', 32),
(4, 'App\\Models\\Admin', 42),
(4, 'App\\Models\\Admin', 52),
(4, 'App\\Models\\Admin', 54),
(4, 'App\\Models\\Admin', 56),
(5, 'App\\Models\\Admin', 25),
(5, 'App\\Models\\Admin', 31),
(5, 'App\\Models\\Admin', 32),
(5, 'App\\Models\\Admin', 33),
(5, 'App\\Models\\Admin', 38),
(5, 'App\\Models\\Admin', 39),
(5, 'App\\Models\\Admin', 42),
(5, 'App\\Models\\Admin', 52),
(5, 'App\\Models\\Admin', 54),
(5, 'App\\Models\\Admin', 55),
(6, 'App\\Models\\Admin', 41),
(6, 'App\\Models\\Admin', 54),
(7, 'App\\Models\\Admin', 41);

-- --------------------------------------------------------

--
-- Table structure for table `offer_banners`
--

CREATE TABLE `offer_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_banners`
--

INSERT INTO `offer_banners` (`id`, `image`, `url`, `quate`, `short_description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'images/offer_banner/JJwur0OV0VFWWayC6OTlAxJROjlz9AgroXG4rTcE.jpg', 'https://zonespark.com', 'INSTANT CASHBACK', 'On bkash Payment', 1, '2021-10-02 10:23:25', '2021-10-03 06:43:12'),
(4, 'images/offer_banner/CHJZMcs3EP2QuvJS1POr4oc89C81eVfCqnJa0eWl.jpg', 'https://zeonspark.com', 'GET FREE DELIVERY', 'Purchase Over 7000 BDT', 1, '2021-10-02 11:03:59', '2021-10-03 06:42:11'),
(5, 'images/offer_banner/NUdfrIPzZW3vFa8lOGpIj7LJVzVA6svFQS6WXIib.jpg', 'https://zoenspark.com', 'INSTANT CASHBACK', 'Nagad Payment', 1, '2021-10-03 06:11:16', '2021-10-03 06:40:49'),
(6, 'images/offer_banner/70CV8JUgKBDrgfuc2bhdh5Ne8YlUC5L3SlKYz8PM.png', 'https://zeonespark.com', 'GET FREE DELIVERY', 'Bank Payment', 1, '2021-10-03 06:12:06', '2021-10-04 06:23:04'),
(7, 'images/offer_banner/sKuDkVnUSblEaTtZcEz1zEK7m17WUVjyh8HC9Lrs.jpg', 'https://zeonespark.com', NULL, NULL, 1, '2021-10-04 06:12:56', '2021-10-04 06:22:50'),
(8, 'images/offer_banner/gb8Pxoc13xsFztLeBuspn7mtMDhsDfQ6GeLzq8zA.png', 'https://zeonespark.com', NULL, NULL, 1, '2021-10-04 06:14:17', '2021-10-04 06:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `shipping_cost` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0,
  `paid_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` float NOT NULL,
  `status` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_status` int(11) DEFAULT 0,
  `memo_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_admin_id` int(11) DEFAULT NULL,
  `pending_admin_id` int(11) DEFAULT NULL,
  `pending_date` date DEFAULT NULL,
  `approved_admin_id` int(11) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `shipment_admin_id` int(11) DEFAULT NULL,
  `shippment_date` date DEFAULT NULL,
  `delivered_admin_id` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `cancel_admin_id` int(11) DEFAULT NULL,
  `cancel_date` date DEFAULT NULL,
  `return_admin_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `reseller_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_is` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_thana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `host_name`, `invoice_no`, `order_type`, `customer_name`, `customer_phone`, `customer_address`, `city`, `thana`, `courier_id`, `shipping_cost`, `discount`, `paid`, `paid_by`, `total`, `status`, `note`, `print_status`, `memo_no`, `create_admin_id`, `pending_admin_id`, `pending_date`, `approved_admin_id`, `approved_date`, `shipment_admin_id`, `shippment_date`, `delivered_admin_id`, `delivery_date`, `cancel_admin_id`, `cancel_date`, `return_admin_id`, `return_date`, `reseller_id`, `comment`, `billing_address_is`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_city`, `shipping_method`, `shipping_thana`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1:8000', 100, 1, 'Shibbir Ahmad', '01737481778', 'Benaroshi Polli, Mirpur-10,Dhaka-1216', 'Dhaka', 'Mirpur', NULL, 80, 0, 0, NULL, 3940, 1, 'test', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'same', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-07 08:05:38', '2021-10-07 08:05:38'),
(2, '127.0.0.1:8000', 101, 1, 'Shibbir Ahmad', '01737481778', 'test', 'Dhaka', 'Mirpur', NULL, 80, 0, 0, NULL, 790, 1, 'test', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'same', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-10 05:26:39', '2021-10-10 05:26:39'),
(3, '127.0.0.1:8000', 102, 1, 'Shibbir Ahmad', '01737481778', 'Dhaka', 'Dhaka', 'Mirpur', NULL, 80, 0, 0, NULL, 7495, 1, 'test', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'same', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-10 05:33:08', '2021-10-10 05:33:08'),
(4, '127.0.0.1:8000', 103, 1, 'Shibbir Ahmad', '01737481778', 'Benaroshi Polli, Mirpur-10,Dhaka-1216', 'Dhaka', 'Mirpur', NULL, 130, 0, 0, NULL, 1250, 1, 'test', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'other', 'MD Lukman Ahmed', 'Kalaruka,Chhatak,Sonumgonj', '01759416979', 'Sonumgonj', NULL, 'Polton', '2021-10-10 08:25:04', '2021-10-10 08:26:37'),
(5, '127.0.0.1:8000', 5, 2, 'Shibbir Ahmad', '01737481778', 'Benaroshi Polli, Mirpur-10,Dhaka-1216', 'Dhaka', NULL, 1, 70, 0, 0, '1', 650, 2, 'test', 0, NULL, 54, 54, '2021-10-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'same', NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-10 08:51:56', '2021-10-10 09:50:23'),
(6, '127.0.0.1:8000', 105, 1, 'Shibbir Ahmad', '01759416979', 'Mirpur-10', 'Dhaka', 'Mirpur', NULL, 150, 0, 0, NULL, 790, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'other', 'MD Lukman Ahmed', 'Sunamgonj', '01759416979', 'Sonumgonj', 'Outside Dhaka', 'Polton', '2021-10-18 05:03:40', '2021-10-18 05:03:40'),
(7, '127.0.0.1:8000', 106, 1, 'Shibbir Ahmad', '01759416979', 'test', 'Dhaka', NULL, NULL, 80, 0, 0, NULL, 1250, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'same', NULL, NULL, NULL, NULL, 'Inside Dhaka', NULL, '2021-10-18 08:34:01', '2021-10-18 08:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_barcodes`
--

CREATE TABLE `order_barcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `barcode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` float NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `total`, `attribute_id`, `variant_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 31, 1590, 1, 1590, NULL, NULL, 1, '2021-10-07 08:05:38', '2021-10-07 08:05:38'),
(2, 1, 33, 2350, 1, 2350, NULL, NULL, 1, '2021-10-07 08:05:38', '2021-10-07 08:05:38'),
(3, 2, 66, 790, 1, 790, NULL, NULL, 1, '2021-10-10 05:26:39', '2021-10-10 05:26:39'),
(4, 3, 88, 1499, 5, 7495, NULL, NULL, 1, '2021-10-10 05:33:08', '2021-10-10 05:33:08'),
(5, 4, 93, 1250, 1, 1250, NULL, NULL, 1, '2021-10-10 08:25:04', '2021-10-10 08:25:04'),
(10, 5, 94, 650, 1, 650, NULL, 2, 1, '2021-10-16 12:45:36', '2021-10-16 12:45:36'),
(11, 6, 66, 790, 1, 790, NULL, NULL, 1, '2021-10-18 05:03:40', '2021-10-18 05:03:40'),
(12, 7, 93, 1250, 1, 1250, NULL, NULL, 1, '2021-10-18 08:34:01', '2021-10-18 08:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_notes`
--

CREATE TABLE `order_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_notes`
--

INSERT INTO `order_notes` (`id`, `order_id`, `note`, `admin_name`, `created_at`, `updated_at`) VALUES
(1, 5, 'b v', 'zonespark', '2021-10-16 12:37:36', '2021-10-16 12:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `order_shipment_and_return_policies`
--

CREATE TABLE `order_shipment_and_return_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_policy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_shipment_and_return_policies`
--

INSERT INTO `order_shipment_and_return_policies` (`id`, `order_info`, `shipment_info`, `return_policy`, `created_at`, `updated_at`) VALUES
(1, '<p>১। আপনি যদি আমাদের নতুন ক্রেতা হয়ে থাকেন তাহলে যেকোন পণ্য কিনতে এখনই সাইন-আপ/রেজিস্ট্রেশন করুন।</p><p>২। আপনার পছন্দের পন্যটি কেনার জন্য পণ্যের ছবির উপরে ক্লিক করুন এবং পরবর্তী পাতায় পণ্যের বিস্তারিত দেখে ছবির পাশে Order Now (এখনি অর্ডার করুন) এই বাটনে ক্লিক করুন।</p><p>৩। আপনি যদি একাধিক পন্য কিনতে চান তাহলে ‘কার্ট এ যোগ করুন’ এই বাটনে ক্লিক করে আপনার নির্বাচিত সকল পন্য একবারে অর্ডার করুন।</p><p>৪। যদি ইতোমধ্যেই zonespark.com এ আপনার একাউন্ট থেকে থাকে,তাহলে আপনার ইউজার নেম ও পাসওয়ার্ড দিয়ে সাইন ইন / লগইন করুন অথবা নতুন ক্রেতা হিসেবে সাইন-আপ/রেজিস্ট্রেশন করে আপনার নতুন একাউন্টের জন্য ইউজার নেম ও পাসওয়ার্ড তৈরি করুন।</p><p>৫। ডেলিভারী ঠিকানায় আপনি যেখানে ডেলিভারী নিতে ইচ্ছুক সেখানকার বিস্তারিত ঠিকানাসহ শহরটি সেলেক্ট করুন। আপনার প্রদানকৃত সঠিক তথ্য আপনার পন্যের ডেলিভারী প্রক্রিয়াকে দ্রততর করবে।</p><p>৬। এরপরে আপনি পরবর্তী ধাপে যেতে ‘কার্ট তথ্য সংরক্ষণ’ বাটনে ক্লিক করুন।</p><p>৭। অর্ডার সফল হলে আপনার ই-মেইলে বুকিং কোড সহ একটি মেইল যাবে ।</p><p>৮। অর্ডার সাবমিটের পর 12 ঘন্টার মধ্যে আমাদের প্রতিনিধি আপনার সাথে যোগাযোগ করে পণ্য ডেলিভারী প্রক্রিয়া শুরু করবে।</p><p>৯। সাধারণত ঢাকার মধ্যে 24 ঘন্টা (প্রায়) এবং ঢাকার বাহিরে যে কোন জেলায় 72 ঘন্টার (প্রায়) মধ্যে আপনার পণ্য হাতে পাবেন।</p><p>১০। অর্ডার সংক্রান্ত যে কোন তথ্য বা সরাসরি অর্ডার দিতে ফোন করুন 09-636-203040 বা 01627-444999 (সকাল ৯টা থেকে রাত ১১ টার মধ্যে)।</p>', '<p>How will the delivery be done? We process all deliveries through:</p><p>• Reputed couriers</p><p>• Our in house delivery team</p><p>How much are the delivery charges?</p><p>With in Dhaka city, delivery charge is BDT 45 and outside Dhaka city it is BDT 90. Note: If there is any modification in delivery charge for a particular item, it will be mentioned in Product details. What is the estimated delivery time? If your shipping address is within Dhaka city, products will be delivered by next business day or within 24 hours. If it is outside Dhaka then it will take 2-3 business days.</p><p><strong>Note:</strong></p><p>• Any order placed after 6 pm will be considered as order of next business day, not as same day.</p><p>• Business Day: Saturday to Thursday</p><p>Does eShoppingBD.com deliver internationally?</p><p>mohasagor.com doesn\'t deliver items internationally. You are more than welcome to make your purchases on our site from anywhere in the world, but you\'ll have to ensure the Delivery Address is within Bangladesh.</p><p><br>&nbsp;</p>', '<p>পণ্য গ্রহনের পরে আপনি পণ্যের যে কোন সমস্যায় (যেমন : পণ্য ভাঙ্গা , ছেঁড়া, পণ্য কাজ না করা, ছবির সাথে পণ্যের মিল না থাকা ইত্যাদি) ক্ষেত্রে আপনি পরিবর্তিত পণ্য গ্রহণ করতে পারবেন। সেক্ষেত্রে পণ্য গ্রহনের পর সর্বোচ্চ ৪৮ ঘণ্টার মধ্যে আপনি &nbsp;info@zonespark.com এ ই মেইল করতে হবে অথবা আমাদের হটলাইন নাম্বার 09-636-203040 এ আমাদের অবহিত করতে হবে। উল্লেখ্য যে, আপনার মনের পরিবর্তনের ফলে কোন পণ্য রিপ্লেস করলে হলে কুরিয়ার খরচ আপনাকে বহন করতে হবে এবং &nbsp;info@smartdeabld.com কর্তৃক কোন পণ্যে সমস্যা থাকলে সেটা zonespark.com বহন করবে।&nbsp;</p><p>আপনার - প্রশ্ন - মতামত – অভিযোগ আমাদের জানান- ফোন: 01627-444999, ই-মেইল: &nbsp;info@zonespark.com</p>', '2021-01-17 10:52:27', '2021-09-29 11:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'View Role', 'admin', '2020-10-29 01:32:38', '2020-10-29 01:32:38'),
(2, 'Add Role', 'admin', '2020-10-29 01:32:38', '2020-10-29 01:32:38'),
(3, 'Delete Role', 'admin', '2020-10-29 01:32:38', '2020-10-29 01:32:38'),
(4, 'Edit Role', 'admin', '2020-10-29 01:32:38', '2020-10-29 01:32:38'),
(5, 'view dashboard', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(6, 'create order', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(7, 'manage Order', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(8, 'create Sale', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(9, 'manage Sale', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(10, 'create purchase', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(11, 'manage purchase', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(12, 'create product', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(13, 'manage product', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(14, 'create category', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(15, 'manage category', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(16, 'Manage accounts', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(17, 'create credit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(18, 'delete credit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(19, 'edit credit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(20, 'create debit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(21, 'delete debit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(22, 'edit debit', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(23, 'create attribute', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(24, 'manage attribute', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(25, 'create supplier', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(26, 'manage supplier', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(27, 'create and manage slider', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(28, 'create and manage merchant', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(29, 'create reseller', 'admin', '2020-11-03 04:20:04', '2020-11-03 04:20:04'),
(30, 'manage reseller', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(31, 'manage team', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(32, 'manage users', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(33, 'manage customers', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(34, 'manage reports', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(35, 'manage basic set up', 'admin', '2020-11-03 04:20:05', '2020-11-03 04:20:05'),
(36, 'manage admin', 'admin', '2020-11-03 04:59:01', '2020-11-03 04:59:01'),
(37, 'manage carieer', 'admin', '2020-11-03 04:59:01', '2020-11-03 04:59:01'),
(38, 'manage wholessale', 'admin', '2020-11-21 13:04:01', '2020-11-21 13:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `print_houses`
--

CREATE TABLE `print_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `print_house_payments`
--

CREATE TABLE `print_house_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `print_house_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `sub_sub_category_id` int(11) DEFAULT NULL,
  `product_code` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `product_placement` int(11) NOT NULL DEFAULT 0,
  `product_position` int(11) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_chart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `thumbnail_img`, `merchant_id`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `product_code`, `slug`, `stock`, `sale_price`, `discount`, `price`, `status`, `campaign_id`, `expired_date`, `product_placement`, `product_position`, `details`, `size_chart`, `specification`, `delivery_policy`, `created_at`, `updated_at`) VALUES
(1, 'Romantic Mushroom Light', '1628579061601072ad8929a.jpg', NULL, 1, NULL, NULL, 1001, 'romantic-mushroom-light-1001', 6, 500, 110, 390, '2', 1, '2021-08-20', 0, 0, '<p>✅ রোমান্টিক মাশরুম লাইট (৭ কালার এক লাইটে) আপনার গৃহসজ্জার অনন্য উপকরন হতে রাতের আঁধারে কিছুক্ষন পর পর রংধনুর ৭ টি আলোয় তৈরি হবে এক রোমান্টিক স্বপ্নীল আবেশ লাইট সেন্সিং এনার্জিং সেভিং ডিজাইন- সন্ধ্যা হলে আলো জ্বলবে, ভোর হলে আলো নিভে যাবে<br>✅ এই লাইটটি আলোর উপস্থিতিতে জ্বলবে না, শুধুমাত্র আধারে জ্বলবে সন্ধ্যা হলে আলো জ্বলবে, ভোর হলে আলো নিভে যাবে অটোমেটিক<br>২ টা অর্ডার করলে ফ্রী ডেলিভারি)</p>', NULL, NULL, NULL, '2021-08-10 07:04:21', '2021-09-09 18:25:33'),
(2, 'Triangle Shelves for Bathroom', '162857954760074a471fa75.jpg', NULL, 1, NULL, NULL, 1002, 'triangle-shelves-for-bathroom-1002', 0, 490, NULL, 490, '1', NULL, NULL, 0, 0, '<ul><li>Product Type: Bathroom Shelf</li><li>With two Suckers</li><li>Can be Attached to the Wall</li><li>Helps to Save Space</li><li>The Suckers are Easily Attached to Smooth Surface</li></ul>', NULL, NULL, NULL, '2021-08-10 07:04:49', '2021-08-10 12:15:10'),
(3, 'Electric BBQ Grill Machine', '16289702778.jpg', NULL, 2, NULL, NULL, 1003, 'electric-bbq-grill-machine-1003', 100, 2050, 200, 1850, '1', NULL, NULL, 0, 0, '<h3>Description</h3><p>=&gt; Size: 18\"X12\"X8\"<br>=&gt; High Quality Table-top Cookware<br>=&gt; Low-fat, healthy cooking<br>=&gt; Cool-touch safety handles and base<br>=&gt; AC 220-240v/50Hz<br>=&gt; Power: 3000W<br>=&gt; Weight: 3&nbsp;KG</p>', NULL, NULL, NULL, '2021-08-15 05:44:37', '2021-08-15 07:05:23'),
(4, 'Magic Vegetable Cutter With Drain Basket', '1628971512image0_ab82eb3b-b40d-4291-96aa-f8804d150034_590x.jpg', NULL, 2, NULL, NULL, 1004, 'magic-vegetable-cutter-with-drain-basket-1004', 80, 990, 200, 790, '1', 1, '2021-08-25', 0, 0, '<p><strong>Multi-Functional Magic Vegetable Cutter&nbsp;</strong></p><p>➲ আপনার নিত্য প্রয়োজনীয় রান্নার শাক-সবজি গুলো খুব সহজেই নির্দিষ্ট আকারে কাটা ও পরিস্কারের জন্য ব্যাবহার করুন Magic Vegetable Cutter&nbsp;</p><p>➲ সকল প্রকার সবজি স্লাইস করা যাবে</p><p>➲ উন্নতমানের প্লাস্টিকের তৈরী</p><p>➲ ৬ টি স্লাইসার</p><p>➲ ২ পার্ট ঝুড়ি</p>', NULL, NULL, NULL, '2021-08-15 06:05:12', '2021-09-14 06:00:45'),
(5, 'Furniture Moving Tool', '1628971883a9fa46510a58e9673344cde632b9c859-600x600.jpg', NULL, 1, NULL, NULL, 1005, 'furniture-moving-tool-1005', 96, 990, 40, 950, '1', NULL, NULL, 0, 0, '<p>পন্যের বিবরণঃ</p><p>* সাইজ – লিফট হ্যান্ডেল: 30.5 সেমি / 12 ইন।</p><p>* রোলার আকার: 10 * 8 * 3.2 সেমি / 3.9 * 3.1 * 1.3 ইন</p><p>* এই সংক্ষিপ্ত আকারের সাথে, 4 চলন্ত চাকা এবং 150 কেজি / 330 এলবিএস বহন করতে পারে।</p><p>* ফার্নিচার লিফটার সেটটি ব্যবহার করা খুব সহজ এবং যে কেউই ব্যবহার করতে পারেন-যতই শক্তিশালী! আসবা-পত্রের কাঙ্ক্ষিত টুকরোটি তুলতে হোম চলন্ত সরঞ্জামটি ব্যবহার করুন; তারপরে মুভার প্যাড স্লাইডারগুলি রোল করুন এবং সহজেই আপনার আসবা-পত্র গুলি মেঝেতে গ্লাইড করুন।।</p><p>* দ্রুত চলাচল: আসবা-পত্র লিফটার সেটটি এক-হাত অপারেশন করতে পারে, বিচ্ছিন্ন এবং একত্রিত করা সহজ, সামঞ্জস্য এবং অবস্থানের জন্য অন্যান্য সরঞ্জামের প্রয়োজন হয় না, আপনার আসবা-পত্র এবং সরঞ্জামগুলিকে সরানো সহজ করে তোলে, বাড়ির চারপাশের সব ধরণের ভারী আসবাব এবং সরঞ্জামের জন্য উপযুক্ত, আপনার সোফা, ক্যাবিনেট, টিভি র্যাক, ফ্রিজ, ওয়াশিং মেশিন, বুককেস, পিয়ানো টেবিল এবং আরও অনেক কিছু</p>', NULL, NULL, NULL, '2021-08-15 06:11:23', '2021-09-18 11:00:17'),
(6, 'LCD Writing Tablet For Kids', '16310832598-5-Polegada-placa-de-desenho-eletr-nico-lcd-tela-escrita-tablet-digital-gr-fico-de.jpg_Q90.jpg_.jpg', NULL, 5, NULL, NULL, 1006, 'lcd-writing-tablet-for-kids-1006', 49, 690, 40, 650, '1', 1, '2021-08-20', 0, 0, '<p>➲ আপনার সন্তানের হাতে তুলে দিন LCD e-Writing Tab</p><p>➲ এখন কাগজ ও কলম ছাড়াই লিখতে ও আঁকতে পারবেন আধুনিক রাইটিং ট্যাব এ। মোবাইল আসক্ত বাচ্চাদের জন্য আদর্শ এডুকেশনাল টয়। বাচ্চাদের জন্য খুবই উপযুক্ত শিক্ষামুলক খেলনা এলসিডি ই-রাইটিং ট্যাব।&nbsp;</p><p>➲ কোনো কালির বা কাগজের প্রয়োজন হয় না, লেখা শেষে ডিলিট বাটন এ চাপ দিলে স্ক্রীন ক্লিয়ার হবে, এবং আবার নতুন স্ক্রীন আসবে।</p><p>&nbsp;➲ এটিতে কোনো চার্জের প্রয়োজন হয় না। লিখাগুলো সুস্পষ্ট বুঝা যায়। সাথে একটা পেন আছে।&nbsp;</p><p>➲ ব্যাটারী রিপ্লেস করা যায়।</p>', NULL, NULL, NULL, '2021-08-15 06:24:08', '2021-09-21 16:26:29'),
(7, 'Acupuncture Foot Massage Slippers', '1628973920foot message.jpg', NULL, 3, NULL, NULL, 1007, 'acupuncture-foot-massage-slippers-1007', 83, 990, 240, 750, '1', NULL, NULL, 0, 0, '<p>➲ আকুপাংচার ফুট মেসেজ সুজ&nbsp;</p><p>➲ সকল ক্লান্তি দূর করে আপনার শরীর ও মন সতেজ রাখতে ও ডায়বেটিস/উচ্চ রক্তচাপ নিয়ন্ত্রনে রাখতে এটি হতে পারে চমৎকার সমাধান।</p><p>➲ এই ফুট-ওয়্যারটিতে রয়েছে ৮২ টি মাসাজিং টিপস যা আপনাকে সুস্থ থাকতে সহায়তা করবে।</p><p>➲ এটি হাঁটার সময় আপনার পায়ের তলায় “reflex” পয়েন্টগুলিতে চমৎকার মাসাজের মাধ্যমে সারা শরীরে রক্ত সঞ্চালন প্রবাহ বৃদ্ধি করবে।</p><p>➲ Foot reflexology নার্ভ সার্কুলেশন বাড়ায়, যা শরীরের অঙ্গসমূহের ব্যালান্স নিশ্চিত করবে।</p><p>➲&nbsp; এই ফুট-ওয়্যারটি পায়ের ব্যথা উপশমে সহায়তা করবে।</p><p>➲&nbsp; এটি হাই কোয়ালিটি প্রোডাক্ট যা দিয়ে হাঁটার সময় আপনার টেনশন কমবে, স্টক করার ঝুঁকি কমাবে।</p>', NULL, NULL, NULL, '2021-08-15 06:45:20', '2021-09-23 15:31:27'),
(8, 'Capsule Cutter Food Processor', '162900668460ae456064f46.jpg', NULL, 2, NULL, NULL, 1008, 'capsule-cutter-food-processor-1008', 0, 1290, 200, 1090, '1', NULL, NULL, 0, 0, '<p>➲ এখন আদা রসুন পেস্ট ,মসলা গুঁড়া , যে কোনো ফল, জুস এবং মাংসের কিমা করুন এক মেশিনেই।</p><p><strong>PRODUCT DESCRIPTION:</strong><br>➲&nbsp;power consumption: 200 W</p><p>➲&nbsp;rated voltage: 100V 50 / 60 Hz</p><p>➲&nbsp;size: width 11.6 x depth 11.6 x 23.3 cm (height)</p><p>➲&nbsp;weight:1.04kg</p><p>➲&nbsp;Guide: up to approx. 200 g (Cup MAX line before)</p><p>➲&nbsp;Material : ABS plastic Cover: Triton Cup: Triton Blade: stainless steel</p>', NULL, NULL, NULL, '2021-08-15 15:51:24', '2021-08-15 15:51:24'),
(9, 'Magic Foam Cleaner Kitchen Spray', '1629007603237646651_1494753407531463_219616408656152452_n.jpg', NULL, 2, NULL, NULL, 1009, 'magic-foam-cleaner-kitchen-spray-1009', 0, 990, 240, 750, '1', NULL, NULL, 0, 0, '<p>➲ &nbsp;<a href=\"https://buybd24.com/product/MAGIC%20CLEANING%20FOAM%20SPRAY?fbclid=IwAR3Wc93rDXuD9eoFVBChOWnOqvIdgx4EjKXGfoGCp6dFjGGPZluq4dCQkdU\">কিচেন</a>, কার , ফার্নিচার , দেয়াল, লেদার , কমোড, টাইলস ও বেসিন পরিস্কার করার ফোম ক্লিনার।</p><p>➲ &nbsp;এটি হতে পারে আপনার রান্নাঘরে তেল কাস্টে উঠানোর পারফেক্ট সলিউশনপরিষ্কার এটা দিয়ে সব কিছুই পরিষ্কার করতে পারবেন।</p><p>➲ &nbsp;এটি ফোম তাই অল্প পরিমানে দিলেই কাজ করবে!</p><p>➲ &nbsp;পরিমানঃ ৫০০ মিঃ লিঃ</p>', NULL, NULL, NULL, '2021-08-15 16:06:43', '2021-08-15 16:06:43'),
(10, 'Automatic Yogurt Doi Maker', '1629008380142415600_23846695131450546_2912795615373167050_n.jpg', NULL, 2, NULL, NULL, 1010, 'automatic-yogurt-doi-maker-1010', -1, 990, 340, 650, '1', NULL, NULL, 0, 0, '<p>➲ হাতের কোন স্পর্শ ও পরিশ্রম ছাড়াই তৈরি হবে দই</p><p>➲ বাসায় বসে নিজের হাতে তৈরি করুন স্বাস্থ্যকর দই</p><p>➲ On/Off সুইচ</p><p>➲ লাইট ইনডিকেটর</p><p>➲ প্রিপারেশন টাইম: ৩-৪ ঘন্টা</p><p>➲ অটোমেটিক দই মেকার !</p><p>➲ প্রথমে ১ লিটার দুধ গরম করে ঠান্ডা করতে হবে।তার পর বাটিতে ঢেলে সাথে পরিমাণ মতো টক দই এবং চিনি দিয়ে ৩/৪ ঘন্টা ইলেকট্রিকলাইন দিয়ে রাখুন আর দেখুন দই তৈরি হয়ে গেছে</p>', NULL, NULL, NULL, '2021-08-15 16:19:40', '2021-09-12 11:53:20'),
(11, 'Nima Electric Spice Grinder', '1629103962nima-01.jpg', NULL, 2, NULL, NULL, 1011, 'nima-electric-spice-grinder-1011', -3, 990, 200, 790, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><p>* আর নয় ঝামেলা মশলা পিশানো, যেকোন মশলা গুড়া করা যাবে খুব সহজে<br>* বোল ক্যাপাসিটিঃ 50 – 100g<br>* পাওয়ার: 200W<br>* ভোল্টেজ: 220V-240v<br>* উচ্চতা: 17cm<br>* ডায়ামিটার: 8.5cm<br>* পাওয়ারফুল মোটরঃ 150W<br>* ম্যাটেরিয়ালঃ স্টেইনলেস স্টীল<br>* কালোজিরা, শুকনা মরিচ, জিরা, মেথি, সরিষা, গোলমরিচ, এলাচি, দারুচিনি সহ যেকোন ধরনের ডাল যেকোন ধরনের বাদাম ইত্যাদি গুড়া বা পাউডার করা যাবে মাত্র কয়েক সেকেন্ড হতে ১ মিনিটের মধ্যে<br>* বিঃদ্রঃ শুধু মাত্র শুকনো মসলার জন্য ব্যবহার করুন, ভেজা না পানিযুক্ত নয় এবং পরিস্কার করার জন্য কাপড় ব্যবহার করুন</p>', NULL, NULL, NULL, '2021-08-16 18:52:42', '2021-09-18 11:53:12'),
(12, 'ডিজিটাল প্রেসার মনিটর Made in Japan', '1629104128digital-monitoring.jpg', NULL, 3, NULL, NULL, 1012, 'ডিজিটাল-প্রেসার-মনিটর-made-in-japan-1012', 0, 1550, 200, 1350, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><p>• ডিজিটাল প্রেসার মনিটর (দুই বছরের ওয়ারেন্টি) Made in Japan<br>• প্রেসার মনিটর বাড়ি অথবা বাড়ির বাহিরেও বহন করতে ইচ্ছুক তাদের জন্য সহজ সমাধান।<br>• বয়স ৩০ এর উর্ধে যাওয়ার সাথে সাথে মানুষের চাপ বাড়তে থাকে যা জানাটা খুবই প্রয়োজন<br>• তাই নিজের শরিরের কথা চিন্তা করেই বাড়ীতে একটা প্রেশার মাপার মেশিন রাখুন।<br>• গভীর রাতে অথবা পরিবারের কোন মুমূর্ষু ব্যক্তির অথবা প্রেশার আপ-ডাউন হয় এমন ব্যক্তির যে কোন সময় মাপার জন্যে অন্তত বাসায় এই যন্ত্রটি থাকা উচিত<br>• এক্সট্রা লার্জ LCD ডিসপ্লে উইথ ডিজিটাল ডিসপ্লে সিস্টেম<br>• ১২০ মেমোরি স্টোরেজ<br>• ডিটেক্ট ইরেগুলার হার্টবিট ডিটেক্ট<br>• মুভমেন্ট ডিটেকশন<br>• Charger/ ৪টি AA ব্যাটারি দ্বারা চালিত</p>', NULL, NULL, NULL, '2021-08-16 18:55:28', '2021-08-16 18:55:28'),
(13, 'Aluminium Kitchen Rack', '1629104289252.jpg', NULL, 2, NULL, NULL, 1013, 'aluminium-kitchen-rack-1013', 0, 1350, 160, 1190, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><ul><li>কাপ, টেবিলওয়ার, মসলা, condiments, ক্যান এবং জার্স সংরক্ষণের জন্য শেল্ফ ।</li><li>রান্নাঘরের ছুরি এবং ফল ছুরি হিসাবে knifes, সংরক্ষণের জন্য 4 ছুরি স্লট ।</li><li>Main Rack: 58 x 12.5 x 10.5cm / 22.8 x 4.9 x 4.1” (L x W x H)</li><li>Material: Space Aluminium</li><li>Surface: Matte</li><li>Finishing ১0 হুকস আছে পাত্র, প্যান, এবং ডিশ ঝুলিয়ে রাখার জন্য ।</li></ul>', NULL, NULL, NULL, '2021-08-16 18:58:09', '2021-08-16 18:58:09'),
(14, 'Heavy Duty Magic Single Hook', '1629104801189004890_1472821166395817_3286139448541673390_n.jpg', NULL, 2, NULL, NULL, 1014, 'heavy-duty-magic-single-hook-1014', 0, 450, 60, 390, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><p>➲ দেয়ালে ছিদ্র করার দিন শেষ&nbsp;</p><p>➲ আপনার সুন্দর দেয়ালটি ড্রিল করে আর নষ্ট করতে হবে না।</p><p>➲ ‘Heavy Duty Magic Hook’&nbsp;</p><p>&nbsp;Price: According To Quantity:</p><p>&nbsp;➲10 Pieces: 390 Tk</p><p>&nbsp;➲15 Pieces: 590 Tk</p><p>&nbsp;➲20 Pieces: 790 Tk</p><p>➲ 25 Pieces: 990 Tk</p><p>➲ আপনি যে কোনো জিনিস খুব সহজে এ রাখতে পারবেন এই হুক আর মাধমে যেমন = শার্ট , প্যান্ট ,রান্না গড়ে যেকোনো জিনিস চামচ, চাবির রিং, ফুলের টপ গ্লাস এ লাগাতে পারবেন, বাথরুম এ লাগাতে পারবেন, এবং সব জায়গায় এ লাগাতে পারবেন .আপনার এলোমেলো জিনিস খুব সুন্দর ভাবে সাজিয়ে রাখতে পারবেন খুব সহজে।</p><p>➲ এই হুক লাগানোর জন্য কোনো আঠা প্রজন নাই হুক এর সাথে শক্তিশালী আঠা আছে । এই হুক গুলো আপনি এক জায়গা থেকে উঠিয়ে অন্য জায়গায় লাগাতে পারবেন কোনো আঠা প্রজন নাই.।</p><p>➲ পিভিসি উপাদান দিয়ে তৈরি, এটি শক্তিশালী, উচ্চ প্রভাব এবং টেকসই । শক্তিশালী আঠা থাকার কারণে 5 কিলো ওজন ধরে রাখতে পারে</p>', NULL, NULL, NULL, '2021-08-16 19:06:41', '2021-08-16 19:06:41'),
(15, 'Liquid Soap Pump Dispenser', '16291050601oap.jpg', NULL, 2, NULL, NULL, 1015, 'liquid-soap-pump-dispenser-1015', 0, 690, 100, 590, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><ul><li>ডিশ ওয়াশারের জন্য তরল সাবান পাম্প ডিসপেনসার ।</li><li>এইটি নতুন ও উন্নত মানের ।</li><li>এইটা ব্যাবহারে হাতের কোন ক্ষতি করবে না।</li><li>রান্নাঘরের জিনিসপত্র পরিষ্কার করা সহজ।</li><li>স্পঞ্জ রান্নাঘরের জিনিসপত্রের কোন ক্ষতি না করেই ঝকঝকে পরিস্কার করে ।</li><li>লিকুয়েড সাবান ব্যাবহার করতে হবে ।</li></ul>', NULL, NULL, NULL, '2021-08-16 19:11:00', '2021-08-16 19:11:00'),
(16, '2 Layer Kitchen Dish Rack', '1629105369dish rck.jpg', NULL, 2, NULL, NULL, 1016, '2-layer-kitchen-dish-rack-1016', 0, 1250, 160, 1090, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><p>➲ &nbsp;ডিশ ড্রেইনার<br>➲ &nbsp;২টি তাকে থালা বাসন বা যেকোন ডাইনিং সরঞ্জাম রাখা যাবে<br>➲ &nbsp;ম্যাটেরিয়াল: স্টেইনলেস স্টিল<br>➲ &nbsp;ইজি টু ক্লিন এন্ড মেইনটেইন<br>➲ &nbsp;মানসম্পন্ন জীবনের জন্য<br>➲ &nbsp;সহজেই সেট করা যায়<br>➲ &nbsp;স্পেস সেভিং এন্ড লাইট ওয়েট<br>➲ &nbsp;ডাইমেনশন্স: L450MM X W250MM X H395MM approx</p>', NULL, NULL, NULL, '2021-08-16 19:16:09', '2021-08-16 19:16:09'),
(17, 'Silicon Body Brush For Bathing', '1629120403New-Project2-1024x1024.jpg', NULL, 1, NULL, NULL, 1017, 'silicon-body-brush-for-bathing-1017', 0, 550, 100, 450, '1', NULL, NULL, 0, 0, '<p>➲ Harmless Material: Back scrubber brush is made of silicone, healthy and environmentally friendly, non-toxic, easy to clean, safe and durable, also can be reused. There is no need to worry about harming your body.</p><p>➲ DOUBLE SIDED SOFT &amp; HARD DESIGN — One side is a dense soft brush, can effectively exfoliate and massage the skin. Harder particles on the other side, can massage function on the back. It is help for healthy circulation and liberate you from the hard work of a day.</p>', NULL, NULL, NULL, '2021-08-16 23:26:43', '2021-08-16 23:26:43'),
(18, 'Electric Instant Hot Shower Head', '1629122385New-Project30-1024x1024.jpg', NULL, 4, NULL, NULL, 1018, 'electric-instant-hot-shower-head-1018', 0, 1290, 390, 900, '1', NULL, NULL, 0, 0, '<p><strong>সকাল ৮ টা থেকে রাত ১২টার ভিতরে আমাদের ধন্যবাদ কাস্টমার প্রতিনিধি আপনাকে কল করে অর্ডার কনফার্ম করবেন।</strong></p>', NULL, NULL, NULL, '2021-08-16 23:59:45', '2021-08-16 23:59:45'),
(19, 'Royal Posture Back Support Belt', '1629127637q.jpg', NULL, 3, NULL, NULL, 1019, 'royal-posture-back-support-belt-1019', 0, 990, 240, 750, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><p>➲ যারা কুঁজো হয়ে হাঁটেন, দীর্ঘক্ষন কম্পিউটারের সামনে বসে থেকে যাদের পিঠ ব্যথা, সোজা হয়ে কাজ করতে পারেন না তাদের জন্য</p><p>➲ এটা ব্যবহারে মেরুদন্ড বাকা হতে দেবে না সোজা হয়েই কাজ করতে বা পড়তে পারবেন</p><p>➲ ছেলে মেয়ে এবং যে কোন বয়সীদের জন্য</p><p>➲ ফ্রিল্যান্সার থেকে শুরু করে যাদের কম্পিউটারের সামনে ঝুকে কাজ করতে হয় সবার জন্য এটা মেরুদন্ডকে সোজা রাখতে সাহায্য করবে,</p><p>➲ যার ফলে আপনাকে লম্বা ও ফিট দেখাবে</p>', NULL, NULL, NULL, '2021-08-17 01:27:17', '2021-08-17 01:27:17'),
(20, 'Electric Therapy Pen', '1629127904152202296_2551560215136592_8441471519406195391_n-1.jpg', NULL, 3, NULL, NULL, 1020, 'electric-therapy-pen-1020', 0, 1350, 360, 990, '1', NULL, NULL, 0, 0, '<h4><strong>ইলেক্ট্রিক থেরাপী পেনের উপকারীতাঃ</strong></h4><p>➲ মাথা, গলা, ঘাড় ও পিঠের ব্যাথা, হাত পায়ের পেশি ও জয়েন্টে ব্যাথা, বুকে ও কোমরে ব্যথা, পায়ের গোড়ালীর ও বাতের ব্যাথা থেকে নিমিষেই মুক্তি পান।<br>➲ এই আকুপ্রেশার পেনটি যেকোন তীব্র এবং দীর্ঘস্থায়ী ব্যথা থেকে মুক্তি দেয়, পাশাপাশি পেশীগুলি শিথিল করে।&nbsp;</p><p>➲ রক্ত সঞ্চালন প্রক্রিয়া উন্নত করে এবং সেলুলার নিরাময়কে উৎসাহিত করে।</p>', NULL, NULL, NULL, '2021-08-17 01:31:44', '2021-08-17 01:31:45'),
(21, 'Portable Folding Bookshelf 4-Tier', '1629128711new_shop_bd_555555555555555555555555555555.jpg', NULL, 1, NULL, NULL, 1021, 'portable-folding-bookshelf-4-tier-1021', 0, 2450, 660, 1790, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><p>➲ পোর্টেবল ফোল্ডিং বুক সেলফ্।<br>➲ এটি দেখতে অনেক মানানসই যা বই গুছিয়ে রাখার পাশাপাশি ঘরের সৌন্দর্যও বর্ধন করবে। এটি দৈর্ঘ্যে ৮২ মি.,প্রস্থে ৩১ মি. এবং উচ্চতায় ১২৫ সে.মি.। সেলফটিতে ৮ টি তাক রয়েছে। প্রতি তাকে ৫ কেজি করে সর্বমোট ৪০/৪৫ কেজি বই রাখতে পারবেন।&nbsp;</p><p>➲ এটি পোর্টেবল হওয়ায় সহজেই যেকোনো জায়গায় বহন করতে পারবেন। এটি পিংক ( গোলাপি) রঙের হবে।</p><p>➲ Book Shelf: Non-woven fabrics+ Powder coated steel tube + plastic joints.<br>➲ Material Fabric: Thicken waterproof non-woven fabrics.<br>➲ Tube: 13.2 mm thicken and coated steel tube, high bearing capacity.<br>➲ Weight:1.5 kg.<br>➲ Feature: Easy to assemble, functional for home storage, enclosed breathable and ➲ waterproof, high quality,elegant and nice price.</p>', NULL, NULL, NULL, '2021-08-17 01:45:11', '2021-08-17 01:45:11'),
(22, 'Portable Hanger Clothing Rack', '1629129842clocth.jpg', NULL, 1, NULL, NULL, 1022, 'portable-hanger-clothing-rack-1022', 0, 1490, 200, 1290, '1', NULL, NULL, 0, 0, '<p>➲ Clothes Rack Stainless Steel</p><p>➲ ভিতরের সেলফ&nbsp;&nbsp;কাপরের ও বডি মেটাল</p><p>➲ পণ্যের আকার: 22 x 14 x 68&nbsp;ইঞ্চি</p><p>➲ পণ্যের ওজন : ৩ কেজি</p><p>➲ উপাদান: ষ্টীল পাইপ</p><p>➲ ভারবহন: ২০/২৫ কেজি</p>', NULL, NULL, NULL, '2021-08-17 02:04:02', '2021-08-17 02:04:02'),
(23, '3 Layer Drainer Dish Rack', '16291302723-layer-disk-display-rack-green.jpg', NULL, 2, NULL, NULL, 1023, '3-layer-drainer-dish-rack-1023', 0, 2000, 200, 1800, '1', NULL, NULL, 0, 0, '<h2><strong>Description</strong></h2><ol><li><strong>স্টেইনলেস স্টিল ডিশ র‌্যাক</strong></li><li><strong>৩ টি তাকে গ্লাস, প্লেট, চামচ, কাপ সহ রান্নাঘরের বিভিন্ন সামগ্রী গুছিয়ে রাখার জন্য আকর্ষণীয় প্রোডাক্ট</strong></li><li><strong>Size:(cm) 53*44*23&nbsp;cm</strong></li><li><strong>ম্যাটেরিয়াল: স্টেইনলেস স্টিল</strong></li><li><strong>মজবুত স্ট্রাকচার</strong></li><li><strong>ডিশ ধোয়ার পর শুকানোর জন্য অালাদা জায়গা রয়েছে</strong></li><li><strong>সহজে পরিস্কার করা যায়</strong></li><li><strong>বেস্ট কোয়ালিটি</strong></li><li><strong>ব্র্যান্ড নিউ প্রোডাক্ট</strong></li></ol>', NULL, NULL, NULL, '2021-08-17 02:11:12', '2021-08-17 02:11:12'),
(24, 'Original Indian Sweet Slim Belt Plus', '162913156960ae455fb8d0a.jpg', NULL, 3, NULL, NULL, 1024, 'original-indian-sweet-slim-belt-plus-1024', 0, 650, 100, 550, '1', NULL, NULL, 0, 0, '<p>ঘরে বসেই কোনো প্রকার ব্যায়াম করা ছাড়াই আপনার বাড়তি ওজন ও মেদ কমাতে আমরা নিয়ে এসেছি সরাসরি ইন্ডিয়া থেকে আমদানি কৃত অরিজিনাল গ্রান্টেড সোয়েট স্লিম বেল্ট প্লাস । ঝটপট পেটের অতিরিক্ত মেদ + ভুঁড়ি ও চর্বি দ্রুত কমানোর জন্য এই বেলটি খুব কার্যকরী।</p><p>&nbsp;১। মহিলা ও পুরুষদের জন্য একটি অনন্য গেজেট (যা আপনার অতিরিক্ত মেদ কমাতে সাহায্য করবে)।</p><p>&nbsp;২। সবসময় আপনার ফিগার শেপ এর মধ্যে থাকবে।&nbsp;</p><p>৩। যে কোনো সময় খুব সহজেই ব্যবহার উপযোগী ।&nbsp;</p><p>৪। এটি আপনি বাসায়, হাঁটার সময়, কাজের মধ্যে, শপিং এ , জগিং এ ব্যবহার করতে পারেন ।</p><p>&nbsp;৫। এটি ব্যবহারে আপনার বিরক্তিবোধ করবেন না, স্বস্তি ও আরামদায়ক মনে হবে ।</p><p>&nbsp;৬। এটি আপনাকে আরও আকর্ষণীয় ও স্লিম করে তুলবে।</p><p>&nbsp;৭। এটি ব্যাবহারে মাত্র ৭ দিনেই ফলাফল পেতে শুরু করবেন। ৮। আপনার গোপন সমস্যার সমধান পেতে ক্লিক করুন।</p><ul><li>সাইজঃ S(28-29),&nbsp; M(30-32),&nbsp; L(33-34),&nbsp; XL(35-36),&nbsp; 2XL(37-39),&nbsp; 3XL(40-43), 4XL(44-46)</li><li>আমাদের কাছে সকল সাইজ আছে। সঠিক মাপের বেল্ট পেতে আপনার কোমরের ও পেটের&nbsp;মাপ আমাদেরকে বলতে হবে</li></ul>', NULL, NULL, NULL, '2021-08-17 02:32:49', '2021-08-17 02:32:49'),
(25, 'Electric Hot Water Bag', '162913180860ae455ecf930.jpg', NULL, 3, NULL, NULL, 1025, 'electric-hot-water-bag-1025', 0, 750, 100, 650, '1', NULL, NULL, 0, 0, '<p>➲ শরীরের যেকোন স্থানে গরম ছেক দেওয়ার জন্য।।</p><p>➲ পিরিয়ডের সময় পেট ব্যাথা কমানোর জন্য এটি অত্যান্ত কার্যকরী।।</p><p>➲ বাতের ব্যাথা, মাংস পেশীর ব্যাথা, হাড়ের ব্যাথাই ।।</p><p>➲ বৃদ্ধ বয়সের শরীরের ব্যাথাই।।</p><p>➲ ইলেকট্রিক হট ওয়াটার ব্যাগ।</p><p>➲ হিটিং টাইম: ৫-৮ মিনিট।</p><p>➲ ব্যাথা বা যন্ত্রনা উপশম করতে সাহায্য করে।</p><p>➲ পানি ভর্তি করাই আছে তাই আলাদা করে পানি ভর্তি করার প্রয়োজন নেই।</p><p>➲ ফুল চার্জে ১০ ঘন্টা ব্যবহার করা যাবে।</p><p>➲ চার্জ ফুল হয়ে গেলে ইন্ডিকেটর লাইট সয়ংক্রিয়ভাবে বন্ধ হয়ে যাবে।</p><p>➲ ব্যাথা বা যন্ত্রনা উপশম করতে সাহায্য করে।</p><p>➲ চার্জ দেয়া সহজ, প্লাগ কানেক্ট করুন এবং ইন্ডিকেটর লাইট অফ হয়ে গেলে খুলে ফেলুন।</p><p>➲ ব্যবহার এর জন্য ১০০% নিরাপদ।</p>', NULL, NULL, NULL, '2021-08-17 02:36:48', '2021-08-17 02:36:48'),
(26, 'Revoflex Xtreme Workout Set', '162913226260ae4563de260.jpg', NULL, 3, NULL, NULL, 1026, 'revoflex-xtreme-workout-set-1026', 16, 890, 200, 690, '1', NULL, NULL, 0, 0, '<p>➲ Item Type: Massage &amp; Relaxation</p><p>➲ ABS+PP+EVA</p><p>➲ Size:16*43*5m</p><p>➲ Perform up to 40 different exercises</p><p>➲ Provides up to 6 levels of training</p><p>➲ Shapes your body quickly, easily</p><p>➲ Resistance workout at home</p><p>➲ Compact design for good portability</p><p>➲ Two easy-grip handles works as guides</p><p>➲ Works every major upper body</p><p>➲ Muscle group and your abdomen</p><p>➲ 6 Training Levels and 40 Exercises</p>', NULL, NULL, NULL, '2021-08-17 02:44:22', '2021-09-22 14:35:03'),
(27, 'Rechargeable Pedicure Set', '162913268460ae456fa9b7f.jpg', NULL, 3, NULL, NULL, 1027, 'rechargeable-pedicure-set-1027', 0, 990, 240, 750, '1', NULL, NULL, 0, 0, '<ol><li>Personal Pedicure ফুট কেয়ার</li><li>হাত ও পা থেকে কঠিন কড়া-পড়া বা ফেটে যাওয়া ত্বক অনায়াসে রোল আউট করে</li><li>শীতে যাদের পা ফাটে তাদের জন্য একটি অনন্য উপকরন</li><li>এর বাফিং রোলার, হাত ও পায়ের কড়া-পড়া বা ফেটে যাওয়া অংশকে মসৃণ করে তুলে</li><li>মূল মেশিনের সাথে রোলার দুইটি সহজেই জোড়া ও খুলে ফেলা যায় এবং শুধু পানি দিয়েই রোলার গুলিকে পরিষ্কার করা যায়</li><li>পুরো সিস্টেমটাই ওয়াটারপ্রুফ তাই গোসলের সময়েও ব্যাবহার করা যায়</li><li>রিচার্জেবল ব্যাটারী</li><li>ট্রাভেল সাইজ ও স্মার্ট আউটলুক</li><li>এটি পুরুষ ও মহিলা উভয়েই ব্যাবহার করার উপযোগী, এবং গিফট হিসেবেও অনন্য</li></ol>', NULL, NULL, NULL, '2021-08-17 02:51:24', '2021-08-17 02:51:24'),
(28, 'NTFS Beauty Facial Steamer', '162913281760db7bcb65795.jpg', NULL, 3, NULL, NULL, 1028, 'ntfs-beauty-facial-steamer-1028', 0, 2490, 400, 2090, '1', NULL, NULL, 0, 0, '<p><strong>&nbsp;NTFS&nbsp;Beauty Facial Steamer</strong></p><ul><li>Skin moisturizer, full face steamer for intensive skincare, and inhalation+ T-zone attachment for the nose and mouth inhalation to clears your blocked nose, humidifier function.</li><li>Opens unclogs pores to removes dirt, oil makeup. Melts away dead skin cells, makes toner, cream and other nutrients absorbable</li><li>Facial sauna, use as part of regular skincare regime for visible results, essential oil vaporizer: add your favorite essential or aromatherapy oils.</li><li>Use as direct Skin Indulgence, treatment, or Simply let steamer run as Interior humidifier in any weather</li><li>NTFS Face steamer with Steam Inhaler offers all the benefits of a spa steam treatment at home. Featuring a full face mask, the facial sauna uses steam to open up the pores, helping to remove impurities and deeply cleanse the skin, adjustable steam level gives you complete control.</li><li>This face Moisturizer can be used before applying to make up, to soften skin for smoother, longer-lasting makes up. Deep cleansing helps to open up pores and remove makeup, dirt and oil from the skin. NTFS spa enables you to enjoy the luxury of a spa treatment at home, even on a tight schedule.</li></ul>', NULL, NULL, NULL, '2021-08-17 02:53:37', '2021-08-17 02:53:37'),
(29, 'A9 Mini WiFi Camera 1080P Full HD', '1629829556s-l400_(1).jpg', NULL, 4, NULL, NULL, 1029, 'a9-mini-wifi-camera-1080p-full-hd-1029', 200, 1490, 200, 1290, '1', NULL, NULL, 0, 0, '<p>A9 মিনি ওয়াইফাই ক্যামেরা দ্বারা বাসা, অফিস, দোকান, গ্যারেজ, লাইভ ভিডিও দেখতে ও ধারন করেও রাখতে পারবেন।</p><p>যে কেউ খুব সহজেই মোবাইলে ইন্সটল করতে পারবেন। ইনস্টল ও ব্যবহার খুবই সহজ।</p><p>নাইট ভিশন ক্যামেরাটি রাতের অন্ধকারেও স্পষ্ট ভিডিও ধারণ করতে সক্ষম।ক্যামেরাটি ২৪ ঘন্টা ভিডিও ধারণ ক্ষমতা রাখে।বিদুৎ চলে যাওয়ার পর wifi বিচ্ছিন্ন হলে ১ ঘন্টা পর্যন্ত ক্যামেরাটি তে অফলাইন ভিডিও রের্কড হবে।ক্যামেরাটি ৬৪ জিবি মেমোরি কার্ড সাপোর্টেডম্যাগনেট ওয়াল মাউন্টশার্ট ক্লিপক্যামেরা টি মোবাইলের অ্যাপ দ্বারা নিয়ন্ত্রনযোগ্য ।</p><p>Specification:</p><p>Video resolution: 1920 x 1080P</p><p>Size: 32 x 33 x 36mm/1.26 x 1.30 x 1.42inch</p><p>Weight: 13.5g</p><p>Video frame rate: 30fps</p><p>Image proportion: 16 : 9</p><p>Vmd: Support</p><p>Battery capacity: 240mAh</p><p>Working hours: Sustainable video for 60 minutes</p>', NULL, NULL, NULL, '2021-08-24 18:25:56', '2021-08-24 19:03:53'),
(30, 'Portable Aluminium Laptop Stand', '1629868675236956543_888776781991528_5881540171965726119_n.jpg', NULL, 4, NULL, NULL, 1030, 'portable-aluminium-laptop-stand-1030', 0, 990, 300, 690, '1', NULL, NULL, 0, 0, '<p>আপনার সুবিধা মত ছোট-বড় করতে পারবেন। যার ফলে ল্যাপটপের দিকে দৃষ্টিকোণ চেঞ্জ করতে পারবেন।&nbsp;<br>ফলে আপনার আর ঘাড় বা মাজা ব্যথা হবে না।</p><p>ল্যাপটপ স্ট্যান্ড ব্যবহারের ফলে ল্যাপটপের কুলিং সিস্টেম ভালো থাকে।<br>গরম হওয়া খুব সহজেই বের হয়ে যায়। যার ফলে ল্যাপটপের ব্যাটারি দীর্ঘদিন ভালো থাকে।</p><p>খুবই হালকা এবং মজবুত যা সহজে বহনযোগ্য।</p><p>আপনার শখের ল্যাপটপটি ভালো রাখতে ব্যবহার করুন ল্যাপটপ স্ট্যান্ড।</p>', NULL, NULL, NULL, '2021-08-25 05:17:55', '2021-08-25 05:17:55'),
(31, 'BESTWIN Diamond Style Quartz Watch-', '1629872260Ottwn-BESTWIN-Men-Quartz-Watch-Waterproof-Business-Watches-Stainless-Women-Wristwatch-Fashion-Band-Strap-Watch-Relogio.webp', NULL, 6, NULL, NULL, 1031, 'bestwin-diamond-style-quartz-watch--1031', 0, 1990, 400, 1590, '1', NULL, NULL, 0, 0, '<h2>Item specifics</h2><figure class=\"table\"><table><tbody><tr><td>Condition:</td><td>New with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as ... <a href=\"javascript:;\">Read more<strong>about the condition</strong></a>&nbsp;</td><td>Model:</td><td>2020</td></tr><tr><td>Band Color:</td><td>Selver, Gold</td><td>Department:</td><td>Men</td></tr><tr><td>Display:</td><td>Analog</td><td>Case Color:</td><td>Black</td></tr><tr><td>Brand:</td><td>BESTWIN™️</td><td>Case Material:</td><td>Bamboo</td></tr><tr><td>Style:</td><td>Casual, Luxury</td><td>Movement:</td><td>Quartz</td></tr><tr><td>Dial Style:</td><td>12-Hour Dial, Easy to Read/Large Numerals</td><td>Type:</td><td>Wristwatch</td></tr><tr><td>Band Material:</td><td>Leather</td><td>Customized:</td><td>No</td></tr><tr><td>Features:</td><td>Water-Resistant</td><td>Year Manufactured:</td><td>2020</td></tr></tbody></table></figure>', NULL, NULL, NULL, '2021-08-25 06:17:40', '2021-08-25 06:17:40'),
(32, 'HTC Rechargeable Trimmer', '1629874098htc.jpg', NULL, 4, NULL, NULL, 1032, 'htc-rechargeable-trimmer-1032', 100, 1000, 110, 890, '1', NULL, NULL, 0, 0, '<h4>Product Description:</h4><ul><li>Product Type: Rechargeable Trimmer</li><li>Brand: HTC</li><li>Model:AT-518B</li><li>Cutter width: 32 mm</li><li>Blade element: Stainless steel</li><li>Number of length settings: 1</li><li>Operation: Corded and cordless</li><li>Charging time: 8 hour(s)</li><li>Running time: 45 minutes</li><li>Power Consumption: 3W</li><li>Packaging Dimension : 16.20 x 8.00 x 17.90 (cm)</li></ul>', NULL, NULL, NULL, '2021-08-25 06:48:18', '2021-08-25 06:49:35'),
(33, 'Biden Waterproof Calendar Male Wristwatch Black', '16306929711619715240-BIDEN-1.jpg', NULL, 6, NULL, NULL, 1033, 'biden-waterproof-calendar-male-wristwatch-black-1033', 0, 2750, 400, 2350, '1', NULL, NULL, 0, 0, '<p>➲ Brand: Biden<br>➲ Strap: Mechanism<br>➲ Battery operated<br>➲ Warranty Period: 24 Months<br>➲ Products Have No Color Warranty<br>➲ Avoid soaking the products in water</p>', NULL, NULL, NULL, '2021-09-03 18:16:11', '2021-09-03 18:16:11'),
(34, 'Skmei 50M Waterproof Digital Watch Men Fashion Stopwatch Countdown Sport Watch Blue Red Black', '16306933731624047230-b318..jpg', NULL, 6, NULL, NULL, 1034, 'skmei-50m-waterproof-digital-watch-men-fashion-stopwatch-countdown-sport-watch-blue-red-black-1034', 0, 1290, 300, 990, '1', NULL, NULL, 0, 0, '<p>Specification<br>Brand Name: SKMEI<br>Item Type: Wrist Watch<br>Dial Window Material: Glass<br>Band Material: Silicone<br>Dial Display: Digital<br>Clasp Type: Needle Buckle<br>Style: Fashion, Sport<br>Water Resistance: 50M. Support to swim, wash hands and shower. But don\'t bath in hot water and don\'t operate in water.<br>Features: Time/Date/Week Display,Luminous,Stopwatch,Countdown,Calendar<br>Dial Diameter: about 46 mm<br>Case Thickness: about 11 mm<br>Band Width: about 22 mm<br>Band Length: about 250 mm<br>Battery Type: CR2025</p>', NULL, NULL, NULL, '2021-09-03 18:22:53', '2021-09-03 18:22:53'),
(35, 'NIBOSI Solid Stainless Steel Mens Waterproof  Watch', '16306935021619715676-b55.jpg', NULL, 6, NULL, NULL, 1035, 'nibosi-solid-stainless-steel-mens-waterproof-watch-1035', 0, 2990, 300, 2690, '1', NULL, NULL, 0, 0, '<ul><li>Imported</li><li>MATERIAL: High quality black stainless steel band with double push button clasp, Precise Japan quartz movement.</li><li>FUNCTIONS: All sub-dials and watch hands are good working, Full Functional Chronograph, 30M waterproof and Date Display</li><li>WATERPROOF: water resistant to 30 meters(99 feet),in general, withstands splashes or brief immersion in water, but not suitable for swimming or bathing</li><li>GIFT IDEAS: Sporty watch with elegant box is a great gift choice to your loved ones for Christmas, birthday, anniversary, Father\'s Day, graduation and Valentine\'s Day, Or as a business and party present.</li><li>CUSTOMER SERVICE: Please do not worry any quality problem, All watch in our store will enjoy 24 Month warranty. 30 Day money back guarantee for any reason.</li></ul>', NULL, NULL, NULL, '2021-09-03 18:25:02', '2021-09-03 18:25:02'),
(36, 'Naviforce Casual Waterproof Analog Quartz Leather Strap - 9070', '163069466458.jpg', NULL, 6, NULL, NULL, 1036, 'naviforce-casual-waterproof-analog-quartz-leather-strap-9070-1036', 0, 1250, 400, 850, '1', NULL, NULL, 0, 0, '<ul><li>Brand:NAVIFORCE</li><li>Style: Fashion &amp; Casual</li><li>Movement: Quartz Watch</li><li>Display: Analog Watch</li><li>Dial Shape: Round</li><li>Clasp Type: Buckle</li><li>CaseMaterial Type: Stainless Steel &amp; Glass</li><li>Band Material Type: PU Leather</li><li>Dial Diameter: About4.5cm</li><li>DialThickness:About1.1cm</li><li>Band Width:About2.2cm</li><li>Band Length: About 24.3cm</li><li>Weight: About 72g</li><li>Brand Name:DhakaMall.24</li></ul>', NULL, NULL, NULL, '2021-09-03 18:44:24', '2021-09-03 18:44:24'),
(37, 'Naviforce Stylish Mens Water Resistant Watch - NF-9117 (Golden)', '1630694903HTB11k9HewjN8KJjSZFkq6yboXXav (1).jpg', NULL, 6, NULL, NULL, 1037, 'naviforce-stylish-mens-water-resistant-watch-nf-9117-golden-1037', 0, 2990, 500, 2490, '1', NULL, NULL, 0, 0, '<ul><li>Product Type: Watch</li><li>Movement: Analog Quartz Movement</li><li>Dial Shape: Round</li><li>Diameter: 4.5 cm</li><li>Window Material: Hardlex Glass</li><li>Case Thickness: 1.3 cm</li><li>Case Material: Alloy</li><li>Band Material: Stainless Steel</li><li>Band Length: 24cm</li><li>Band Width: 2.2cm</li><li>Water Resistance: 30M</li></ul>', NULL, NULL, NULL, '2021-09-03 18:48:23', '2021-09-03 18:48:23'),
(38, 'Mushroom Night Light', '1631073030ZfEmf7ujeFgeXR444Fj25KEMmXExihRapOQxXjLh.jpg', NULL, 4, NULL, NULL, 1038, 'mushroom-night-light-1038', 0, 550, 200, 350, '1', NULL, NULL, 0, 0, '<ul><li>মাশরুম লাইট (৭ কালার এক লাইটে)</li><li>এই লাইটটি আলোর উপস্থিতিতে জ্বলবে না, শুধুমাত্র আধারে জ্বলবে সন্ধ্যা হলে আলো জ্বলবে, ভোর হলে আলো নিভে যাবে অটোমেটিক</li><li>Power: 220V 1/5W.</li><li>Plug type: US.</li><li>Plug LED Color: Multi-color.</li><li>Size: 135 x 55mm.</li><li>Package Content: 1X energy saving.</li></ul>', NULL, NULL, NULL, '2021-09-08 03:50:30', '2021-09-08 03:50:30'),
(39, 'Digital Instant Hot Water Tap', '1631073180KA4amcnKS2zZz8sG7piVljIXGXEA56cjhVZ5TSls.jpg', NULL, 4, NULL, NULL, 1039, 'digital-instant-hot-water-tap-1039', 0, 2990, 800, 2190, '1', NULL, NULL, 0, 0, '<p>৩-৫ সেকেন্ড এর মধ্যে পানি গরম হয়ে বের হয়।</p><p>১।গরম এবং নরমাল পানি পাবেন.<br>২।আগের টেপটি খুলে ওখানেই সেট করুন এই ইনস্ট্যান্ট হট ওয়াটার টেপ।বেসিন অথবা বাথরুমের ওয়ালে ব্যবহার করা যায়।<br>৩।বিদ্যুৎ সাশ্রয়ী একটি ওয়াটার হিটার টেপ, কারন যখন আপনি এটা ব্যবহার করবেন তখন বিদ্যুৎ বিল আসবে অন্যথায় কোন বিল আসবে না।<br>৪। Watt : 3000 watt<br>৫। Voltage : 220 volt</p>', NULL, NULL, NULL, '2021-09-08 03:53:00', '2021-09-08 03:53:00'),
(40, 'Electric Lunch Box', '1631073240fYIqo21BUdhkALx50S82G5f7Qh7e9yNRk7B9uxgx.jpg', NULL, 4, NULL, NULL, 1040, 'electric-lunch-box-1040', 0, 990, 200, 790, '1', NULL, NULL, 0, 0, '<ul><li>ইলেকট্রিক লাঞ্চ বক্স</li><li>আপনার খাবার গরম রাখবে , এবং খাবারের মান ঠিক রাখবে ।</li><li>ডাইমেনশন: 180mm x 115mm x 247mm</li><li>ডিটাচেবল কন্টেইনার সাইজ: 75mm x 135mm x 61mm</li><li>ওজন: 830g</li><li>ভোল্টেজ: 220V</li><li>ফিক্সড কারেন্ট: 40W</li><li>ক্যাপাসিটি: 600 ml</li><li>ডিটাচেবল বক্স ক্যাপাসিটি: 450 ml</li></ul>', NULL, NULL, NULL, '2021-09-08 03:54:00', '2021-09-08 03:54:00'),
(41, 'Portable weight Scale', '1631073372HjLljYDo6ICaxiYzRYixZRLtceoVBiQH3NojidW3.jpg', NULL, 4, NULL, NULL, 1041, 'portable-weight-scale-1041', 0, 590, 100, 490, '1', NULL, NULL, 0, 0, '<ul><li>পোর্টেবল ওয়েট স্কেল</li><li>LCD ডিসপ্লে</li><li>পকেট সাইজ, সহজে বহনযোগ্য</li><li>যে কোন বস্তু হুকে ঝুলিয়ে মাপা যায়</li><li>১ কেজি হতে ৫০ কেজি পর্যন্ত ওজন মাপা যায়</li><li>কেজি, আউন্স অথবা পাউন্ডে ওজন কনভার্ট করা যায় খালি পাত্রের ওজনকে শুন্য করে নেয়া যায়</li><li>মাত্র ২টি পেন্সিল (AAA সাইজের) ব্যাটারীতে চলে,</li><li>ম্যাটেরিয়াল- স্টেইনলেস ষ্টিল</li><li>120 সেকেন্ড পর অটো পাওয়ার অফ</li><li>100 ভাগ নির্ভুল ওজন ইজি টু ইউজ</li><li>পোর্টেবল ওয়েট স্কেল বাদে অন্য কোন যন্ত্র বা ইকুইপমেন্ট সাথে দেওয়া হবে না ।</li><li>&nbsp;</li><li>বিঃদ্রঃ ব্যাটারি থাকবে না সাথে</li></ul>', NULL, NULL, NULL, '2021-09-08 03:56:12', '2021-09-08 03:56:12'),
(42, 'Kinoki Cleansing Detox Foot Pads', '1631253728241229216_2076078425877555_8845885966675951058_n.jpg', NULL, 3, NULL, NULL, 1042, 'kinoki-cleansing-detox-foot-pads-1042', 0, 590, 100, 490, '1', NULL, NULL, 0, 0, '<p>KINOKI ব্যবহারে বাতের ব্যাথা, হাটু ব্যথা, কোমর ব্যথা এবং মাংসপেশীর ব্যথা কমিয়ে শরীরকে ঝরঝরে করে তুলে। সরাসরি জাপান থেকে আমদানীকৃত KINOKI (১০০% কার্যকরী )</p><p>KINOKI কাদের জন্য ব্যবহার করা দরকার ? (</p><p>১) ধূমপায়ীদের জন্য যারা শরীর থেকে নিকোটিন দূর করে সুস্থ থাকতে চান।</p><p>(২) যারা ব্রন ও একজিমা তে আক্রান্ত।</p><p>(৩) যারা জন্ডিসে আক্রান্ত।</p><p>(৪) যারা ডায়াবেটিস নিয়ন্ত্রনে রাখতে চান।</p><p>(৫) যারা Acne and Pimple এর টক্সিন বের করে ফেয়ারনেস বৃদ্ধি করতে চান।</p><p>(৬) যারা সাইনাস ও মাথা ব্যাথায় আক্রান্ত</p><p>(৭) দূর্বল লোকদের জন্য,যারা দ্রুত ক্লান্ত হয়ে যায়।</p><p>(৮) যারা শরীরের ভিতরের বিষাক্ত টক্সিন দূর করতে চান।</p><p>(৯) যাদের জয়েন্টগুলোতে ব্যাথা,ঘাড় এবং ব্যাক পেইন আছে।</p><p>(১০) যাদের মানসিক চিন্তার কারনে ঘুম কম হয়।</p>', NULL, NULL, NULL, '2021-09-08 04:09:51', '2021-09-10 06:02:08'),
(43, 'Pull Reducer Rubber Body Trimmer', '163107442081611037458.jpg', NULL, 3, NULL, NULL, 1043, 'pull-reducer-rubber-body-trimmer-1043', 0, 550, 100, 450, '1', NULL, NULL, 0, 0, '<ul><li>100% brand new and high quality.</li><li>Non-slip handle and footrest.</li><li>Four elastic bands.</li><li>It can be used horizontally or vertically.</li><li>Lightweight and easy to carry.</li><li>Perfect yoga training.</li></ul><p><strong>&nbsp;Product Specification:</strong></p><ul><li>Material: rubber</li><li>Quantity: 1</li><li>Size: 47*25 cm</li></ul>', NULL, NULL, NULL, '2021-09-08 04:13:40', '2021-09-08 04:13:40'),
(44, 'Manual Nose Trimmer', '1631074580Manual-Nose-Hair-Trimmer-Portable-Stainless-Steel-Ear-Hair-Trimmer-Shaver-Face-Care-For-Man-Women.webp', NULL, 3, NULL, NULL, 1044, 'manual-nose-trimmer-1044', 0, 650, 100, 550, '1', NULL, NULL, 0, 0, '<ul><li>Trim Nose Hair: gently move the trimmer around to trim all the unwanted hair in your nose</li><li>Materials: Stainless Steel, washable blade, LONG LASTING DEVICE</li><li>Open round head design, does not hurt the nasal cavity</li><li>Pure mechanical design, no need to charge, no battery, ready to use</li><li>Package includes: 1* trimmer +1* cleaning brush</li></ul>', NULL, NULL, NULL, '2021-09-08 04:16:20', '2021-09-08 04:16:20'),
(45, 'Vibro Shape Slimming Belt', '16310772539adc4b23444f395e2f70a539d0c540df.jpg', NULL, 3, NULL, NULL, 1045, 'vibro-shape-slimming-belt-1045', 0, 1850, 200, 1650, '1', NULL, NULL, 0, 0, '<p>Features</p><ul><li>Use for just 10 minutes per day to see a difference</li><li>This product uses the latest technology to provide you with an effective elliptical swinging massage</li><li>It has warming function and 5 levels of intensity and auto modes to provide the best flexibility in chosen workout</li><li>It can help you achieve the desired shape. With appropriate diet it will become an effective way to lose weight</li><li>The belt can also be used on the shoulders, hips, and thighs for a full body workout</li></ul><p>&nbsp;Specification:</p><ul><li>Color: black</li><li>Bag size: about 470 * 210 * 100 mm</li><li>Material: cloth</li><li>Power input: 100 V -240 V 50 HZ</li><li>Power output: DC 12 V</li><li>Power Consumption: 55 W</li><li>Plug Type: UK Plug</li></ul>', NULL, NULL, NULL, '2021-09-08 04:18:00', '2021-09-08 05:00:53'),
(46, 'Electric Foot Massager', '1631077724226.jpg', NULL, 3, NULL, NULL, 1046, 'electric-foot-massager-1046', 0, 1650, 200, 1450, '1', NULL, NULL, 0, 0, '<ul><li>Product Type: Massager</li><li>Helps in blood circulation</li><li>Highly effective for diabetics and those who cannot walk</li><li>If you use it for 10-20 minutes every day, you will get benefits</li><li>Can be used by both men and women of any age</li><li>It is completely external so there are no side effects</li></ul>', NULL, NULL, NULL, '2021-09-08 04:49:55', '2021-09-08 05:08:44'),
(47, 'Water Pump Motor Car and Bike Washer', '1631077059Site_upload.jpg', NULL, 4, NULL, NULL, 1047, 'water-pump-motor-car-and-bike-washer-1047', 0, 1290, 300, 990, '1', NULL, NULL, 0, 0, '<ul><li>আপনার সখের বাইকটি ওয়াশ করুন&nbsp; নিজের মত করে</li><li>কার পরিষ্কার করা যাবে ।</li><li>আম/লিচু বাগানে পানি/ কীটনাশক দিতে পাড়বেন।</li><li>শাক/ সবজী ক্ষেতে পানি দিতে পাড়বেন।</li><li>ড্রাম/বালতি থেকে পানি নিয়ে ব্যাবহার করা যাবে।</li><li>১২ ভোল্টের বড় মোটর ফুল সেট ওয়াটার পাম্পের সাথে যা যা পাচ্ছেনঃ</li><li>ডিসি 12V হাই প্রেসার মটর,</li><li>স্প্রে-গান, পাইপ, 12v এডাপটার,, আরো প্রয়োজনীয় যা যা দরকার।</li><li>ওয়াট: ৭৬</li><li>বিঃদ্রঃ ডিসি 12v এর ব্যাটারি দিয়েও চলবে।</li></ul>', NULL, NULL, NULL, '2021-09-08 04:57:39', '2021-09-08 04:57:39'),
(48, 'Car & Home Massage Pillow', '1631077831720x7204.jpg', NULL, 3, NULL, NULL, 1048, 'car-home-massage-pillow-1048', 0, 1650, 200, 1450, '1', NULL, NULL, 0, 0, '<ul><li>Car &amp; Home Massage Pillow</li><li>বডি ম্যাসেজ পিলো</li><li>আপনার শরীরের যে কোন জায়গায় ম্যাসেজ করতে পারবেন</li><li>ব্যাকপেইন এর বেথায় সহজেই নিজে নিজেই ম্যাসেজ করতে পারবেন</li><li>খুব অল্প সময়েই ব্যথা উপশম, পেশী ক্লান্তি দূর করার জন্য সহায়ক</li><li>চেয়ার এর সাথে লাগিয়ে সহজেই ঘাড় এর ম্যাসেজ করতে পারবেন</li><li>হাত , পা, পেট অর্থাৎ আপনার যেখানে ইচ্ছা নিজে নিজেই ম্যাসেজ করতে পারবেন</li><li>নিজে নিজেই ম্যাসেজ এর মাধ্যমে শরীরের অলসতা দূর করতে পারবেন</li><li>গাড়ী তে ব্যবহার এর জন্য ব্যাটারি জ্যাক দেয়া আছে</li><li>কারেন্টে এর মাধ্যমে ব্যাবহার করতে পারবেন&nbsp;চার্জার সাথে থাকবে,</li><li>গাড়ি এর সিট এর সাথে সহজেই লাগাতে পারবেন</li><li>সহজে বহন যোগ্য</li><li>এটি সম্পুর্ন এক্সটারনাল তাই কোন পার্শপ্রতিক্রিয়া নেই</li></ul>', NULL, NULL, NULL, '2021-09-08 05:10:31', '2021-09-08 05:10:31'),
(49, 'Nail Care Machine For Nail Repair', '1631078017Untitled-1421.jpg', NULL, 3, NULL, NULL, 1049, 'nail-care-machine-for-nail-repair-1049', 0, 890, 300, 590, '1', NULL, NULL, 0, 0, '<ul><li>আপনার হাত-পায়ের আঙ্গুলিতে কুনি ধরেছে ,</li><li>কোনা বসে গিয়ে ব্যাথা করে,</li><li>কুনি থেকে চিরতরে মুক্তি পেতে ব্যাবহার করুন নখের কোনা সোজা করার অত্যাধুনিক যন্ত্র নেইল রিপ্যায়ার কিট।</li><li>এটা আপনার নখের কোনা গুলোকে উপরে তুলে আপনার হাত-পা কে করে তুলবে আরো আকর্ষনীয় ।</li><li>ডায়াবেটিস থাকলে তাদের জন্য প্রযোজ্য নয়</li></ul>', NULL, NULL, NULL, '2021-09-08 05:13:37', '2021-09-08 05:13:37'),
(50, 'Sit Up Bar Gym Workout Fitness', '1631080937882ac7576364b2e3399206a93e2c07bf.jpg', NULL, 3, NULL, NULL, 1050, 'sit-up-bar-gym-workout-fitness-1050', 0, 990, 200, 790, '1', NULL, NULL, 0, 0, '<ul><li>Suction Sit Up Bars Situp Assist Bar Stand Gym Workout Fitness Equipment</li><li>Small and practicalit doesn\'t take up spaceand you can exercise at home.</li><li>Don\'t have to pay for equipment or go to the gym.</li><li>You don\'t have to take the time to do it at home.</li><li>A variety of fitness methodsfor different partswhere to thin where to practice.</li><li>A set of equipment can carry out a variety of sportssuch as sit-upsflat supportpush-ups and so on.</li><li>Material: plastic and sponge</li><li>Size: 27x18x14cm</li><li>Color: Multicolor</li></ul>', NULL, NULL, NULL, '2021-09-08 06:02:17', '2021-09-08 06:02:17'),
(51, 'Paint Zoom Electric Spray Painting Machine', '163108156960e241bb95576.jpg', NULL, 4, NULL, NULL, 1051, 'paint-zoom-electric-spray-painting-machine-1051', -1, 2290, 440, 1850, '1', NULL, NULL, 0, 0, '<ul><li><strong>আপনার&nbsp;বাসা&nbsp;বাড়ি,&nbsp;আসবাব&nbsp;পত্র,&nbsp;গাড়ী,&nbsp;ফ্রীজ,&nbsp;সহ&nbsp;সব&nbsp;জায়গায়&nbsp;স্প্রে&nbsp;করে&nbsp;রং&nbsp;করতে&nbsp;পারবেন</strong></li><li><strong>৩টি&nbsp;অ্যাডজাস্টেবল&nbsp;সিস্টেম,&nbsp;গ্লাস&nbsp;পেইন্ট&nbsp;সিস্টেম,</strong></li><li><strong>ডাইমেনশন:24 x 19 x 12 cm</strong></li><li><strong>টিউব&nbsp;লেন্থ: 1.6 m</strong></li><li><strong>কন্টেইনার&nbsp;ক্যাপাসিটি: 800 ml</strong></li><li><strong>মোটরপাওয়ার: 650W</strong></li></ul>', NULL, NULL, NULL, '2021-09-08 06:12:49', '2021-09-19 18:57:58'),
(52, 'Tummy Trimmer Double Spring Equipment for Men and Women', '163108209271MkEwD5r2L._SL1500_ - Copy.jpg', NULL, 3, NULL, NULL, 1052, 'tummy-trimmer-double-spring-equipment-for-men-and-women-1052', 0, 990, 100, 890, '1', NULL, NULL, 0, 0, '<ul><li>টামি ডাবল স্প্রিং বডি ট্রিমার জিম ইকুইপমেন্ট ফর ফিটনেস।</li><li>এখন খুব সহজে আপনার শরীরকে ফিট ও আকর্ষণীয় করে তুলুন।</li><li>এক্সট্রিম ব্যবহারে আপনার শরীরের অতিরিক্ত চর্বি কমাবে।</li><li>এর ফলে খুব সহজেই আপনি পাবেন আকর্ষণীয় ফিগার।</li><li>যারা ঘন্টার পর ঘন্টা জিমে গিয়ে ভারী ভারী জিনিস দিয়ে ব্যায়াম করতে ভয় পাচ্ছেন তাদের জন্য সহজ সমাধান।</li><li>এক্সট্রিম নিয়মিত ব্যবহারের ফলে অল্প কিছুদিনের মধ্যে আপনি পাবেন সিক্স প্যাক ও পেশী বহুল দেহ।</li><li>এটি বাজারের লেটেস্ট প্রডাক্ট যা আপনাদের কথাই ভেবে তৈরি করা হয়েছে ।</li><li>মেটারিয়াল: স্টেইনলেস ষ্টীল ডাবল স্প্রিং।</li><li>সাইজ: ১২ ইঞ্চি এবং লম্বা হবে ১২ ফিট পর্যন্ত।</li><li>ব্যবহারের নিয়ম: প্রতিদিন 20 মিনিট করে দুই বেলা ব্যবহার করতে হবে।</li></ul>', NULL, NULL, NULL, '2021-09-08 06:21:32', '2021-09-08 06:21:32'),
(53, 'SQ11 Mini Night Vision HD Camera', '1631082365PicsArt_10-11-01.13.46.jpg', NULL, 4, NULL, NULL, 1053, 'sq11-mini-night-vision-hd-camera-1053', 0, 990, 300, 690, '1', NULL, NULL, 0, 0, '<ul><li>এই ছোট্ট (১ ইঞ্চিরও কম) নাইট ভিশন ক্যামেরাটা দিয়ে আপনি আপনার গাড়ি, মোটরসাইকেল বা সাইকেলে ড্রাইভিং এর প্রতিটি মুহূর্ত রেকর্ড করতে পারবেন</li><li>ক্যামেরাটি অন্ধকারেও ভিডিও রেকর্ড করতে পারে</li><li>এটি আপনি আপনার ক্যাপে, গাড়ির ড্যাশবোর্ড বা পকেটে খুব সহজে লাগিয়ে রেকর্ড করতে পারবেন</li><li>SQ11, FULL HD 1080P mini ক্যামেরা</li><li>Night Vision</li><li>Video format: AVI</li><li>Video resolution ratio: 1920 x 1080P, 1280 x 720P</li><li>Image proportion: 30</li><li>Video coding: M-JPEG</li><li>Support 32GB TF card max. (not included)</li><li>TF card Class Rating Requirements: Class 10 or Above</li><li>Support system: Windows ME / 2000 / XP / 2003 / Vista, Mac OS, Linux</li><li>Battery capacity: 200mAh</li></ul>', NULL, NULL, NULL, '2021-09-08 06:26:05', '2021-09-08 06:26:05'),
(54, 'WS-858 Wireless Bluetooth HIFI Karaoke Microphone', '1631082608ws-858-microphone-wireless-speaker-portable.jpg', NULL, 4, NULL, NULL, 1054, 'ws-858-wireless-bluetooth-hifi-karaoke-microphone-1054', 0, 1200, 410, 790, '1', NULL, NULL, 0, 0, '<p>প্রোডাক্ট টাইপঃ ফুল মেটাল K সং মাইক্রোফোন</p><p>&nbsp;</p><ul><li>ফ্রিকুয়েন্সি রেঞ্জঃ 100HZ-10KZ</li><li>আউটপুট পাওয়ারঃ 3WX2 (স্পীকার)</li><li>ম্যাক্সিমাম সাউন্ড প্রেশারঃ &gt; 115db 1kz THD1%</li><li>রিভার্ব মুডঃ ইকো সাউন্ড রিভার্বেশন</li><li>ব্যাটারি ক্যাপাসিটিঃ 2600 mAh</li><li>পাওয়ার সাপ্লাইঃ বিল্ট ইন লিথিয়াম পলিমার ব্যাটারি</li><li>চার্জিং পাওয়ার সাপ্লাইঃ DC5V</li></ul>', NULL, NULL, NULL, '2021-09-08 06:30:08', '2021-09-08 06:30:08'),
(55, 'Baby Carrier Bag', '1631082785PicsArt_08-31-05.29_.06_.jpg', NULL, 5, NULL, NULL, 1055, 'baby-carrier-bag-1055', 0, 1190, 300, 890, '1', NULL, NULL, 0, 0, '<ul><li>বাহিরে ঘুরতে বের হয়েছেন কিন্তু আপনার সোনামণিকে নিয়ে কিভাবে সারাদিন বেড়াবেন ভাবছেন, কোন চিন্তা নেই আপনার ছোট্ট সোনামণি সব সময়ই থাকবে আপনার সাথে</li><li>এই বেবী ক্যারিয়ার ব্যাগ এর সাহায্যে খুব সহজে আপনার বাবুকে নিয়ে যেকোনো জায়গায় বেড়িয়ে আসতে পারবেন</li><li>৪ থেকে ১২ মাসের বেবীর জন্যে প্রযোজ্য</li><li>৪ টি পজিশনে এই ক্যারিয়ারকে ব্যবহার করা যাবে</li><li>৩ থেকে ১২ কেজি ওজনের বাচ্চাদের ক্ষেত্রে প্রযোজ্য</li><li>হেড সাপোর্ট; বাচ্চার মাথাকে দুর্ঘটনা থেকে রক্ষা করবে</li><li>সহজেই পরিষ্কার করা যায়</li><li>কালার: র‍্যান্ডম</li></ul>', NULL, NULL, NULL, '2021-09-08 06:33:05', '2021-09-08 06:33:05'),
(56, 'Baby Bouncer Chair', '1631082892Baby-Bouncer2.jpg', NULL, 5, NULL, NULL, 1056, 'baby-bouncer-chair-1056', 0, 1490, 500, 990, '1', NULL, NULL, 0, 0, '<ul><li>Baby Bouncer ( আপনার সোনা মনি থাকুক পরম যত্নে )</li><li>চমৎকার একটি পন্য যা দিয়ে আপনার বাচ্চা আনন্দের সাথে খেলা করবে</li><li>বাচ্চা পা নাড়াচাড়া করলে এটাও বাউঞ্চ (দুলতে) করতে থাকবে ।</li><li>এটা ব্যাবহারে আপনার বাচ্চা নিজে নিজে খেলতে থাকবে ঘণ্টার পর ঘণ্টা।</li><li>খেলা, ঘুম, বিশ্রাম, তিন ভাবে ব্যাবহার করতে পারবেন ।</li><li>২ কেজি থেকে যত দিন পর্যন্ত ১৫ কেজি পর্যন্ত ব্যবহার করতে পারবেন</li><li>সহজেই খুলে রাখা যায় এবং মেশিন ওয়াশের জন্য উপযোগী</li><li>কালার : লাল , মেরুন,।</li></ul>', NULL, NULL, NULL, '2021-09-08 06:34:52', '2021-09-08 06:34:52'),
(57, 'Baby Rocking Chair With toy (Best Quality)', '1631083479Cuna-de-beb-mecedora-de-beb-Silla-de-sal-n-para-ni-os-cuna-de-Interior.jpg', NULL, 5, NULL, NULL, 1057, 'baby-rocking-chair-with-toy-best-quality-1057', 0, 2490, 640, 1850, '1', NULL, NULL, 0, 0, '<p>For baby\'s comfort, soft fluffy fabrics with 6D mesh are used. The rocker can easily be turned into a stationary seat for eating or sleeping. In the rocking chair, the baby soon falls asleep. The newborn baby rocking chair has adjustable features that allow it to develop with the infant. It\'s light and compact, so easily can be taken it everywhere. When not in use, it can be folded and placed in a small room.</p>', NULL, NULL, NULL, '2021-09-08 06:44:38', '2021-09-08 06:44:39'),
(58, 'iBaby Rocker Seat Sleeper Swing Bouncer Toy Chair', '16310836434532 (1).jpg', NULL, 5, NULL, NULL, 1058, 'ibaby-rocker-seat-sleeper-swing-bouncer-toy-chair-1058', 0, 3500, 510, 2990, '1', NULL, NULL, 0, 0, '<ul><li>বেবী মিউজিক্যাল রকিং দোলনা চেয়ার</li><li>শিশুদের জন্য রকিং চেয়ার!</li><li>ঘুমানোর জন্য বিছানার স্টাইল এবং খেলা করার সময় নর্মাল চেয়ার স্টাইল করা যায়!</li><li>ভাইব্রেশন মোড রিমোভেবেল টয় বার রয়েছে!</li><li>ভাজ করে রাখা যায় সিট প্যাড!</li><li>সহজে পরিষ্কার করা যায়!</li><li>ব্যাটারী দ্বারা চালিত!</li><li>ওজন ধারণ ক্ষমতা: ১৮ কেজি</li><li>সাথে ব্যাটারি থাকবে না</li></ul>', NULL, NULL, NULL, '2021-09-08 06:47:23', '2021-09-08 06:47:23'),
(59, 'Mini Sensor Control Helicopter for Kids', '1631084245Kids-Baby-Toys-RC-Gyro-with-3D-Mini-Charging-USB-Helicoptero-Cable-Helicopter.jpg', NULL, 5, NULL, NULL, 1059, 'mini-sensor-control-helicopter-for-kids-1059', 0, 990, 240, 750, '1', NULL, NULL, 0, 0, '<p><strong>Descriptions:</strong></p><ul><li>Channel: 2CH</li><li>Flight Duration: about 4-5 mins</li><li>Remote Control Distance: 10 Meters</li><li>Recharging time: 40-60 mins</li><li>Battery for Helicopter: 3.7V&nbsp;100mAh (Included)</li><li>Main Color:&nbsp;Red / Yellow</li><li>Function: up/dowm, turn left/turn right, LED light</li><li>Product Size: 22.5 x 10.6&nbsp;x 4 CM</li></ul><p><strong>Included:</strong></p><p>1 * RC Helicopter</p><p>1 * USB Charge Cable</p>', NULL, NULL, NULL, '2021-09-08 06:57:25', '2021-09-08 06:57:25'),
(60, 'Single Buffet Burner Electric Hot Plate', '16311158932086.jpg', NULL, 2, NULL, NULL, 1060, 'single-buffet-burner-electric-hot-plate-1060', 0, 1990, 300, 1690, '1', NULL, NULL, 0, 0, '<ul><li>Cook at school, work, or wherever a stovetop is not available</li><li>Cast-iron flat heating plate</li><li>Power indicator light</li><li>Ideal for keeping dishes warm for catering events or buffets</li></ul><p><strong>Wattage: </strong>1000 Watts</p><p><strong>Controls: </strong>Adjustable Temperature</p><p><strong>Non-Stick: </strong>No</p><p><strong>Dishwasher Safe: </strong>No</p>', NULL, NULL, NULL, '2021-09-08 15:44:53', '2021-09-08 15:44:53'),
(61, 'Refrigerator and Washing Machine Movable Stand with Wheel', '1631210731720x7205.jpg', NULL, 1, NULL, NULL, 1061, 'refrigerator-and-washing-machine-movable-stand-with-wheel-1061', 0, 1590, 140, 1450, '1', NULL, NULL, 0, 0, '<ul><li>&nbsp;রঙ: কালো</li><li>&nbsp;উপকরণ: কালো শক্ত নাইলন, রাবার ইউনিভার্সাল হুইল, ব্রেক সঙ্গে মেটাল স্কয়ার টিউব (গ্যালভানাইজড)</li><li>&nbsp;গুণমান: সুপার শক্তিশালী, এন্টি-প্রেশার এবং এন্টি-সেপটিক, কখনো জং ধরবে না</li><li>&nbsp;ব্র্যাকেট উচ্চতা: প্রায় 10cm/3.94in, সর্বোচ্চ লোড: প্রায় 138kg</li><li>&nbsp;সম্প্রসারণ আকার: প্রায় 40-56cm/15.75-22.05in</li><li>&nbsp;কালার বাক্সের আকার: প্রায় 43*22*6.5cm/16.93*8.66*2.56in</li><li>&nbsp;1 এক্স রেফ্রিজারেটর&nbsp;র‍্যাক&nbsp;</li><li>&nbsp;সাইজ : 17\"* 21\"</li></ul>', NULL, NULL, NULL, '2021-09-09 18:05:31', '2021-09-09 18:05:31'),
(62, 'Portable Cloth Storage Wardrobe', '163121082160ae45641fcc4.jpg', NULL, 1, NULL, NULL, 1062, 'portable-cloth-storage-wardrobe-1062', 0, 2290, 300, 1990, '1', NULL, NULL, 0, 0, '<ul><li><strong>Cloth &amp; storage wardrobe for Home And office ( কাপড় রাখার আলমিরা)</strong></li><li><strong>Metal : Cloth and Steel PP pipe</strong></li><li><strong>বাইরের কাভারটা কাপরের ও বডি মেটাল</strong></li><li><strong>প্রতি তাকে 8 কেজি করে রাখাতে পারবেন</strong></li><li><strong>২৫-৩০ কেজি ওজন দিতে পারবেন সম্পূর্ণ আলমিরাতে ও ১০-১৫ টি শার্ট ঝুলিয়ে রাখতে পারবেন।</strong></li><li><strong>সাইজঃ লম্বাঃ 5.4 ফুট + চওড়া 4 ফুট</strong></li></ul>', NULL, NULL, NULL, '2021-09-09 18:07:01', '2021-09-09 18:26:51'),
(63, 'Double Pole Clothing Rack', '1631212951double-pole-clothing-rack-very-useful-and-modern-style-in-bd-at-bdshopcom (1).jpeg', NULL, 1, NULL, NULL, 1063, 'double-pole-clothing-rack-1063', 0, 1790, 400, 1390, '1', NULL, NULL, 0, 0, '<p>Key Features:&nbsp;<br>&nbsp;</p><ul><li>Double Pole Cloth Rack - Stainless Steel.</li><li>Heavy-Duty Straight Clothes Rack.</li><li>The classic straight shop/store room portable clothing garment rack.</li><li>These clothes hanger rack is truly industrial strength, mobile, and of exceptionally strong.</li><li>Could be used as laundry clothes rack for drying, storage, and transportation of clothes.</li><li>The perfect solution for a fashion show and Exhibition.</li><li>Small Size: 750 x 450 x 850-1500 cm, Can Hold Up To 30 Kg.</li><li>Large Size: 880 x 430 x 950-1600 cm, Can Hold Up To 35 Kg.</li></ul>', NULL, NULL, NULL, '2021-09-09 18:30:44', '2021-09-09 18:42:31');
INSERT INTO `products` (`id`, `name`, `thumbnail_img`, `merchant_id`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `product_code`, `slug`, `stock`, `sale_price`, `discount`, `price`, `status`, `campaign_id`, `expired_date`, `product_placement`, `product_position`, `details`, `size_chart`, `specification`, `delivery_policy`, `created_at`, `updated_at`) VALUES
(64, '5 In 1 Double Sofa Air Bed', '1631212831untitled-1_1_.jpg', NULL, 1, NULL, NULL, 1064, '5-in-1-double-sofa-air-bed-1064', 5, 5990, 1000, 4990, '1', NULL, NULL, 0, 0, '<ul><li>5 in 1 সোফা বেড</li><li>&nbsp;1x ইলেকট্রিক পাম্প</li><li>&nbsp;1x পিস পাম্প নজেল সেট</li><li>&nbsp;1x রিপেয়ার কিট</li><li>&nbsp;1x ট্রাভেল ক্যারি ব্যাগ</li><li>1x ইন্সট্র্যাকশন ম্যান্যুয়াল</li><li>মাল্টি-ম্যাক্স এয়ার কাউচ এক্সট্রিমলি ভার্সেটাইল</li><li>কাউচ অথবা বেড হিসেবে ব্যাবহার করা যাবে</li><li>2 আর্ম রেস্ট</li><li>পোর্টেবল</li></ul>', NULL, NULL, NULL, '2021-09-09 18:40:31', '2021-09-18 16:35:52'),
(65, 'Kitchen & Bathroom Wall Mount Shelf', '163121329660ae4563b9286.jpg', NULL, 1, NULL, NULL, 1065, 'kitchen-bathroom-wall-mount-shelf-1065', 0, 550, 100, 450, '1', NULL, NULL, 0, 0, '<ul><li>Material: ABS plastic.</li><li>Size: 25.5*10*7cm.</li><li>Perfect for storage in the corner of the kitchen and bathroom.</li><li>It can disassembly and be using most time.</li><li>It will not damage the wall and can firmly adsorbed on smooth surfaces.</li><li>Sucker design, fits to most smooth surfaces.</li></ul>', NULL, NULL, NULL, '2021-09-09 18:48:16', '2021-09-09 18:48:16'),
(66, '360 degree 8 In 1Multifunction Multi Layer Folding Clothes Hanger', '1631252885High-Quality-8-In-1-Multi-Layer-Folding-Clothes-Hanger-Multifunction-360-Anti-slip-Rotating-The.jpg', NULL, 1, NULL, NULL, 1066, '360-degree-8-in-1multifunction-multi-layer-folding-clothes-hanger-1066', 0, 990, 200, 790, '1', NULL, NULL, 0, 0, '<ul><li>ম্যাজিক হ্যাঙ্গার টিতে ৮ টি হ্যাঙ্গার থাকায় একবারে ৮ টি কাপড় রাখা যায়।</li><li>কাপড় শুকানোর পরে সরাসরি প্যাক করা যায়, যা আলমিরার জায়গা বাঁচায় এবং সরাসরি প্যাকিং করার জন্য সুবিধাজনক।</li><li>ওয়ারড্রোব-এ স্থান বাঁচায় যার ফলে পোশাক আরও পরিপাটি করে রাখা যায়।</li><li>360 ডিগ্রি ঘূর্ণন করতে পারে বলে পছন্দের কাপড় টি নিতে আর ঝামেলা থাকে না। যাতেসূর্য সর্বদা মুখোমুখি হয়।</li><li>এটি নন-স্লিপ হ্যাঙ্গার। কাপড় পিছলে যাওয়া রোধ করতে মেরুতে একটি নন-স্লিপ টিউব দিয়ে নকশা করা হয়েছে।</li><li>বোতামের চাপ দিয়ে সহজেই প্রসারিত এবং সংকুচিত করা যায়।</li><li>সহজে ভাঁজ করে ছোট বড় করা যায় বলে ভ্রমণের ক্ষেত্রে এটি পোর্টেবল।</li><li>Material: Flex PP</li><li>Code: MH- 01</li><li>Color: White</li></ul>', NULL, NULL, NULL, '2021-09-10 05:48:05', '2021-09-10 05:48:05'),
(67, 'Home Bedroom Dormitory Shoe Racks Shelf Cabinet', '1631253268Shoes-Rack-Dustproof-Large-Size-Non-Woven-Fabric-Shoes-Organizer-Home-Bedroom-Dormitory-Shoe-Racks-Shelf.jpg', NULL, 1, NULL, NULL, 1067, 'home-bedroom-dormitory-shoe-racks-shelf-cabinet-1067', 0, 1990, 240, 1750, '1', NULL, NULL, 0, 0, '<p>&nbsp;Features:<br>The&nbsp;use&nbsp;of&nbsp;environmentally&nbsp;friendly&nbsp;plastic.<br>The&nbsp;use&nbsp;of&nbsp;peace&nbsp;of&nbsp;mind&nbsp;without&nbsp;odor.<br>It&nbsp;can&nbsp;storage&nbsp;many&nbsp;shoes&nbsp;with&nbsp;the&nbsp;rack.<br>Easy&nbsp;to&nbsp;disassemble,&nbsp;no&nbsp;need&nbsp;to&nbsp;worry&nbsp;the&nbsp;installation.<br>Easy&nbsp;assembly,&nbsp;absolutely&nbsp;no&nbsp;tools&nbsp;required.<br><br>Descriptions:<br>Convenient&nbsp;to&nbsp;use,&nbsp;easy&nbsp;assembly&nbsp;and&nbsp;disassembly.<br>Large&nbsp;capacity,&nbsp;protects&nbsp;your&nbsp;shoes&nbsp;from&nbsp;dust&nbsp;and&nbsp;dirt.<br>Apply&nbsp;different&nbsp;shoes,&nbsp;make&nbsp;full&nbsp;use&nbsp;of&nbsp;space,&nbsp;so&nbsp;that&nbsp;home&nbsp;life&nbsp;clean&nbsp;and&nbsp;orderly.<br>&nbsp;<br>Specifications:<br>Material:&nbsp;Non-Woven&nbsp;Fabric<br>Color:&nbsp;coffee,&nbsp;jujube&nbsp;red,&nbsp;silver&nbsp;gray,&nbsp;rose&nbsp;red<br>Type:&nbsp;4&nbsp;layers&nbsp;3&nbsp;lattice,&nbsp;5&nbsp;layers&nbsp;4&nbsp;lattice,&nbsp;6&nbsp;layers&nbsp;5&nbsp;lattice<br>Size:&nbsp;30*60*55cm,&nbsp;30*60*72cm,&nbsp;30*60*90cm<br><br>Package&nbsp;Included:<br>1&nbsp;x&nbsp;Shoes&nbsp;Rack&nbsp;Shoes&nbsp;Organizer</p>', NULL, NULL, NULL, '2021-09-10 05:54:28', '2021-09-10 05:54:28'),
(68, 'Anti-Mosquito Killer Hurricane lamp', '163125408660ae4562d87d7.jpg', NULL, 1, NULL, NULL, 1068, 'anti-mosquito-killer-hurricane-lamp-1068', 0, 1250, 200, 1050, '1', NULL, NULL, 0, 0, '<p>✯ ইলেকট্রনিক Mosquito কিলার এর সাহায্যে এখন মশার হাত থেকে বাঁচুন&nbsp;</p><p>✯ মশা ছাড়াও অন্যান্য পোকামাকড় ধ্বংস করে&nbsp;</p><p>✯ কোনো রাসায়নিক, ধোঁয়া বা গন্ধ নেই; তাই মানব শরীরের জন্য ক্ষতিকর নয়</p><p>&nbsp;✯ একটি শক্তিশালী আলোর সাহায্যে পতঙ্গকে আকৃষ্ট করে এবং ইলেক্ট্রিক ওয়েভ দিয়ে ধ্বংস করে দেয়</p>', NULL, NULL, NULL, '2021-09-10 06:08:06', '2021-09-10 06:08:06'),
(69, 'Tobi কাপড় আয়রন করার যন্ত্র', '1631254490TOBI_Portable_Handle_Travel_Steamer_Iron.jpg', NULL, 1, NULL, NULL, 1069, 'tobi-কাপড়-আয়রন-করার-যন্ত্র-1069', 0, 2050, 200, 1850, '1', NULL, NULL, 0, 0, '<ul><li>এখন থেকে আয়রন করুন খুব সহজে ও দ্রুততার সাথে। এই আয়রন দ্বাড়া আপনি যেকোনো অবস্থায় আপনার কাপুর আয়রন করতে পারবেন।</li><li>Product Details:-</li><li>Long power cord (about 7FT).</li><li>Transparent window to check the water level.</li><li>Portable Size, Suitable for traveling.</li><li>Lite in weight and easy to carry.</li><li>Voltage: 220-240V.</li><li>Watt : 650w</li><li>Size : Approximate 33cm x 14cm</li></ul>', NULL, NULL, NULL, '2021-09-10 06:14:50', '2021-09-10 06:14:50'),
(76, 'Rechargeable USB Torch Light LED Flashlight Most Powerful Waterproof Zoom Hand Lamp', '1631512113241426940_363531268587228_1408716781744507487_n.jpg', NULL, 4, NULL, NULL, 1070, 'rechargeable-usb-torch-light-led-flashlight-most-powerful-waterproof-zoom-hand-lamp-1070', 32, 1990, 540, 1450, '1', NULL, NULL, 0, 0, '<p>Range: 300-500 meters</p><p>• Zoom mode: Telescopic zoom</p><p>• Switch mode: 5 Modes (High - Medium - Low - SOS - Flash )</p><p>• Battery type: 18650, 4200mAh, 3.7V li-ion</p><p>• Lighting time: 2-6hours</p><p>• waterproof level: IPX-6</p><p>• Body color: Black</p><p>• Material: T6063-T6 aviation aluminum</p><p>• Size: 16.8cm * 4cm * 3.3cm</p><p>• Torch net weight: 0.207kg</p><p>• Rechargeable: micro usb for computer USB, car USB, USB charging plug and&nbsp;Battery</p><p>&nbsp;* size: 7.5\"</p>', NULL, NULL, NULL, '2021-09-13 05:48:33', '2021-09-22 06:22:56'),
(77, 'Beeswax Wood Polish', '1631734071cover_1_91bd866d-0d9f-41dc-82f5-f12e1f88b70a_grande.gif', NULL, 1, NULL, NULL, 1077, 'beeswax-wood-polish-1077', 465, 550, 200, 350, '1', NULL, NULL, 0, 0, '<ul><li>Beeswax Wood Polish-দুইটি &nbsp;কিনলে একটি ফ্রি।</li><li>আপনার বাসার পুরনো ফার্নিচার নতুন করে ফেলুন নিমিষেই!!</li><li>এই মোমপলিশটি কাঠ, বাশ, বেত, লেদার, স্টিল যাবতীয় প্রয়োজনীয় যেকোন ফার্নিচারে ব্যাবহার করতে পারবেন।</li><li>Wood Seasoning Beewax – Traditional Beeswax Polish for Wood &amp; Furniture</li><li>All-Purpose Beewax for Wood Cleaner and Polish Wipes – Non Toxic for Furniture to Beautify &amp; Protect</li></ul>', NULL, NULL, NULL, '2021-09-15 19:27:51', '2021-09-19 14:12:47'),
(78, 'Mini A8 Voice & GPS Tracking Device', '1631817544600.jpg', NULL, 4, NULL, NULL, 1078, 'mini-a8-voice-gps-tracking-device-1078', 0, 1550, 300, 1250, '1', NULL, NULL, 0, 0, '<ol><li>সিম ডিভাইস লোকেশন ট্রাকার দিয়ে জেনে নিতে পারবেন আপনার গাড়িটি কোথায় আছে। ব্যবহার করতে পারেন কার, মাইক্রোবাস, সিএনজি, টমটম, মোটরবাইক, ট্রাক ইত্যাদিতে!! হারিয়ে বা চুরি হলেও জানতে পারবেন গাড়ির লোকেশন। এতে সিম ভরে</li><li>যেখানেই রেখে যাবেন সেখান কার সব কিছু শুনতে পারবেন একটা কল এর মাধ্যমেই!!</li><li>যেকোনো সিম কার্ড যুক্ত করে অ্যাকটিভ করুন, এর জন্য ইন্টারনেট সংযোগের প্রয়োজন নেই।</li><li>অবস্থান দেখার জন্য মোবাইল ফোন থেকে ” DW” লিখে SMS করতে হবে এই যন্ত্রে রাখা সিমে।</li><li>ফিরতি SMS এ Google Map এর একটি লিংক আসবে। এবার মোবাইলে ইন্টারনেট সংযোগ সচল করুন এবং লিংকে যান।–লিংকে Google Map এর মতই আসবে অবস্থান। এভাবেই জানতে পারবেন আপনার গাড়ি বা যেকোন পরিবহন কোথায় আছে।</li><li>স্ট্যান্ডবাই টাইমঃ ১ বার চার্জ দিলে ১০ থেকে ১২ ঘন্টা চলবে ।</li></ol>', NULL, NULL, NULL, '2021-09-16 18:39:04', '2021-09-16 18:39:04'),
(79, 'Electric Remote Control Switch', '16318184319qm0wdsjkqkwqjf2.jpg', NULL, 4, NULL, NULL, 1079, 'electric-remote-control-switch-1079', 0, 990, 200, 790, '1', NULL, NULL, 0, 0, '<ul><li>এই রিমোট কন্ট্রোল দিয়ে আপনার বাসা বা অফিসের দুইটি লাইট অফ/ অন</li><li>এবং একটি ফ্যান অফ/ অন, ফ্যানটির গতি নয়টি অবস্থায় নিয়ন্ত্রণ করতে সাহায্য করবে;</li><li>রিমোট টি ৪০ ফিট দূর থেকে কাজ করবে</li><li>আপনার পরিবারকে বৈদ্যুতিক শক থেকে নিরাপদ রাখবে</li><li>আপনার বাসায় যে বৃদ্ধ বাবা ,মা অথবা দাদা, দাদী তাহারা বিছানায় শুয়ে রিমোট কন্ট্রোলারটির সাহায্যে ফ্যান/লাইট অন-অফ করতে পারবে</li><li>অসুস্থ মানুষের জন্য এটি খুবই প্রয়োজনীয় মশারির ভিতর থেকে ফ্যান লাইট অফ অন করতে পারবেন</li><li>এতে মশারির মধ্যে আর মশা যাবার কোন সুযোগ নাই</li><li>দুই বছরের গ্যারান্টি</li></ul>', NULL, NULL, NULL, '2021-09-16 18:53:51', '2021-09-16 18:53:51'),
(80, 'WaxVac ইয়ার ক্লিনার', '1631818545137160815_23846904789510444_6690725542440355398_n-1024x1024.jpg', NULL, 3, NULL, NULL, 1080, 'waxvac-ইয়ার-ক্লিনার-1080', 0, 790, 200, 590, '1', NULL, NULL, 0, 0, '<p>WaxVac ইয়ার ক্লিনার আপনার কান পরিষ্কারের সহজ ও নিরাপদ উপায়কোমল suction draw আপনার কানের ভেতর থেকে ময়লা বের করে নিয়ে আসে সেফটি গাইড টিপ আপনার কানের ক্যানলকে রাখে নিরাপদ ব্যবহারযোগ্য ৮ টি কালার কোডেড সিলিকন টিপস এবং হ্যান্ডি ক্লিনিং ব্রাশ বিল্ট ইন শক্তিশালী পরীক্ষণ লাইট টিপ ম্যাটেরিয়াল: নন-টক্সিক সিলিকন পাওয়ার: ২XAA ব্যাটারি।&nbsp;পাওয়ার: ২×AA ব্যাটারি (ব্যাটারি সাথে দেওয়া নেই)</p><ul><li>প্যাকে থাকছে : ১ টি WaxVac Ear Cleaner</li><li>1 টি Cleaner Dong Brush</li><li>4 টি Non Toxic Silicone Tips ( Asso</li></ul>', NULL, NULL, NULL, '2021-09-16 18:55:45', '2021-09-16 18:55:45'),
(81, 'Siren Alarm Lock', '1631818808745cf4dca70bfeb36ecc46ccef9b6252.jpg', NULL, 4, NULL, NULL, 1081, 'siren-alarm-lock-1081', 0, 790, 100, 690, '1', NULL, NULL, 0, 0, '<p>বাইক ও হাউজ সিকিউরিটি অ্যালার্ম ক্লক<br>* অসৎ উদ্দেশে লকের গায়ে সামান্য আঘাত প্রদান মাত্রই উচ্চ শব্দে অ্যালার্ম (১১০ ডেসিবল)বেজে উঠবে<br>* ফল্স অ্যালার্ম প্রটেক্টেড,<br>*আর তাই যে কেউ ধরা মাত্রই(আঘাত প্রদান ব্যতীত)বেজে উঠে আপনাকে বিভ্রান্ত করে তুলবে না<br>* মোটরসাইকেল, বাইসাইকেল এবং বাসা বাড়ির নিরাপত্তায় বিশেষভাবে উপযোগী<br>* সম্পূর্ণ স্টেইনলেস স্টিলের তৈরি তাই যথেষ্ট মজবুত<br>* দু’ভাবেই ব্যবহারযোগ্য, আর তাই ব্যবহার করা যাবে সাধারণ তালা হিসেবেও<br>* অ্যালার্ম বিহীন দীর্ঘস্থায়ী ব্যাটারি, তাই চলে বহুদিন<br>* ব্যাটারি সহজলভ্য হওয়ায় খুব সহজেই প্রতিস্থাপনযোগ্য।</p>', NULL, NULL, NULL, '2021-09-16 19:00:08', '2021-09-16 19:00:08'),
(82, 'Agni 120 Pcs Drill Machine Set', '163181974871k2QTQc6-L._SL1500_.jpg', NULL, 4, NULL, NULL, 1082, 'agni-120-pcs-drill-machine-set-1082', 0, 2990, 340, 2650, '1', NULL, NULL, 0, 0, '<p>ব্রান্ড: Agni<br>Model: A120<br>প্যাকেটে আছে: ১ পিস ড্রিল (৫০০ ওয়ার্ট)<br>১ পিস ড্রিল মেশিনের কার্বন<br>১ পিস হ্যামার হ্যান্ডেল<br>১ পিস হাতুড়ি<br>১ পিস স্ক্রু ড্রাইভার<br>১ পিস কম্বিনেশন প্লাস<br>১ পিস সিলাই রেন্জ<br>১ পিস কেবল কাটার<br>১ পিস মেজারিং টেপ<br>৯ পিস সকেট রেন্জ (গুটি সেট)<br>১২ পিস স্ক্রু সেট (১২ রকমের)<br>১৫ পিস ড্রিল বিট<br>৫০ পিস রয়েল প্লাগ<br>১ পিস টুল বক্স</p>', NULL, NULL, NULL, '2021-09-16 19:15:48', '2021-09-16 19:15:48'),
(83, '58 In 1 Screwdriver Magnetic CRV Bits High Quality', '163182049960b54a2754f1d_JAKEMY-JM-6092A-Portable-Professional-Hardware-Tool-Set-Screwdriver-Set-57-in-1.jpg_q50-(2).jpg', NULL, 4, NULL, NULL, 1083, '58-in-1-screwdriver-magnetic-crv-bits-high-quality-1083', 0, 1690, 200, 1490, '1', NULL, NULL, 0, 0, '<p>Package included:&nbsp;</p><ul><li>Handle and accessories</li><li>2 x Screwdriver handle</li><li>1 x 123 mm Extendable Reed•1 x Pry bar</li><li>1 x 60 mm Hard extension bar65bits</li><li>7 x driver metric socket 4mm (5/ 32 inch) (M2.5, M3.0, M3.5, M4.0, M4.5, M5.0, M5.5)</li><li>9 x driver metric socket 6.3mm (1/ 4 inch) (M5.0, M6.0, M7.0, M8.0, M9.0, M10.0, M11.0, M12.0, M13.0)</li><li>7 x Torx bits (4mm - T3, T4, T5, T6, T7 / 6.3mm - T6, T10)</li><li>8 x Torx Security bits (4mm - T8, T9, T10, T15, T20 / 6.3mm -T15, T20, T30)</li><li>8 x Slotted bits (4mm-1.0, 1.5, 2.0, 3.0, 4.0 / 6.3mm-5.0, 6.0, 7.0)</li><li>8 x Phillips bits (4mm- PH000, PH00, PH0, PH1, PH2 / 6.3mm- PH1, PH2, PH3)</li><li>10 x Hex bits (4mm-H0.9, H1.3, H1.5, H2.0, H2.5, H3.0, H4.0 / 6.3mm- H4, H5, H6)</li><li>3 x Y model bits (4mm-Y2.0, Y2.5 / 6.3mm- Y3.0)</li><li>1 x U model (4mm-U2.6)</li><li>1 x O model (0.8)</li><li>1 x Triangle model (2.0)</li><li>1 x Pentalobe (five point star )model (0.8)1 x 6.3mm magnetic connectorNote: 4mm=5/ 32 inch) 6.3mm=1/ 4 inch)</li><li>Package Quantity:1 × 70 in 1 Precision screwdriver set</li></ul>', NULL, NULL, NULL, '2021-09-16 19:28:19', '2021-09-16 19:28:19'),
(84, 'Lenovo Neckband Earphone (HE05)', '1631820700Lenovo-Neckband-Earphone-5.jpg', NULL, 4, NULL, NULL, 1084, 'lenovo-neckband-earphone-he05-1084', 0, 1290, 400, 890, '1', NULL, NULL, 0, 0, '<p>• ইয়ারফোনটি মেটাল, সিলিকন এবং টি.পি ম্যাটেরিয়াল দিয়ে তৈরি।</p><p>• মোটামুটি লাইট ওয়েট।</p><p>• ব্যান্ডটি খুব বেশী ফ্ল্যাক্সিবল, তাই পেঁচিয়ে আঙুলেও বেঁধে রাখতে পারবেন।</p><p>• পাওয়ার বাটনটি মাল্টি ফ্যাংশনাল। আছে LED Indicator।</p><p>• ইয়ারবাড গুলো খুবি প্রিমিয়াম। ওজন ২.৫ গ্রাম। সুতরাং কানে খুবি কম্ফোর্টেবল হবে।</p><p>• বাড’স দুইটি তে আছে ম্যাগনেট।</p><p>• সাউন্ড এবং ভোকাল এক কথায় অসাধারণ।</p><p>• 105mAh এর ব্যাটারি৷ ২ ঘন্টা মতো সময়ে ফুল চার্জে ব্যবহার করতে পারবেন প্রায় 6-7 ঘন্টা টানা।</p>', NULL, NULL, NULL, '2021-09-16 19:31:40', '2021-09-16 19:31:40'),
(85, 'Smart Watch Fitness Tracker - M4', '1631820937240789489_2046057435559271_2958151431681987688_n.jpg', NULL, 4, NULL, NULL, 1085, 'smart-watch-fitness-tracker-m4-1085', 0, 1000, 250, 750, '1', NULL, NULL, 0, 0, '<p>যা যা পাবেন এই স্মার্ট ওয়াচেঃ</p><p>1) সময়,তারিখ তিনটি আলাদা আলাদা থিমে/ডিজাইনে।</p><p>2) হার্টবিট নির্নয়।</p><p>3) ব্লাড প্রেশার নির্নয়।</p><p>4) কত ক্যালরী বার্ন করলেন সেটা জানতে পারবেন।</p><p>5) আপনার ফোনের কল,ম্যাসেজ কিংবা ফেসবুকের নোটিফিকেশন গুলো পাবেন। কে কল দিয়েছে সেটা দেখতে পাবেন।</p><p>6) এই ঘড়িটির মাধ্যমে আপনার ফোনের ক্যামেরা দিয়ে ছবি তুলতে পারবেন।</p><p>7) কত স্টেপ হাটলেন সেটা জানতে পারবেন।</p><p>কত কিলোমিটার পথ হাটলেন সেটাও জানতে পারবেন।</p><p>9) Skype, Facebook,Twitter নোটিফিকেশন।</p><p>10) ঘড়িটি ওয়াটার রেসিস্টেন্ট ।</p><p>11) চার্জিং ব্যাকাপঃ ফোনের সাথে কানেক্ট করা থাকলে ১/২ দিন চার্জ থাকবে। ফোনের সাথে কানেক্ট না থাকলে ৩/৪ দিন চার্জ পাবেন।</p><p>12)কালারঃ শুধুমাত্র কালো ।</p><p># Specifications:</p><p>√ Color: Black,</p><p>√ Compatible OS: Android 5.1, IOS 8.0 or above</p><p>√ Operating Mode: Single Touch</p><p>√ Bluetooth Version: 4.0</p><p>√ Language: English,</p><p>√ Size: 40.4*20.1*10.5mm</p><p>√ Screen Size: 0.96inch</p><p>√ Color Screen</p><p>√ Battery Capacity: 90mAh</p><p>√ Length: 120-2mm</p><p>√ Life waterproof: can wash hands, wear in the rain, swim.</p><p>√&nbsp;Apps Name: Lefun Health</p>', NULL, NULL, NULL, '2021-09-16 19:35:37', '2021-09-16 19:35:37'),
(86, 'Smart Watch- Bracelet Heart Rate Monitor', '1631822108rsz_22.jpg', NULL, 4, NULL, NULL, 1086, 'smart-watch-bracelet-heart-rate-monitor-1086', 0, 1300, 410, 890, '1', NULL, NULL, 0, 0, '<ul><li>Smart Watch স্মার্টদের জন্য নতুন কিছু।&nbsp;</li><li>যা যা পাবেন এই স্মার্ট ওয়াচেঃ</li><li>&nbsp;সময়, দিন তারিখ থিমে/ডিজাইনে।</li><li>&nbsp;হার্টবিট নির্নয়।</li><li>ব্লাড প্রেশার নির্নয়।</li><li>&nbsp;কত ক্যালরী বার্ন করলেন সেটা জানতে পারবেন।</li><li>&nbsp;আপনার ফোনের কল,ম্যাসেজ কিংবা ফেসবুকের নোটিফিকেশন গুলো পাবেন। কে কল দিয়েছে সেটা দেখতে পাবেন।</li><li>&nbsp;এই ঘড়িটির মাধ্যমে আপনার ফোনের ক্যামেরা দিয়ে ছবি তুলতে পারবেন।</li><li>&nbsp;কত স্টেপ হাটলেন সেটা জানতে পারবেন।</li><li>&nbsp;কত কিলোমিটার পথ হাটলেন সেটাও জানতে পারবেন।</li><li>&nbsp;ঘড়িটি ওয়াটারপ্রুফ ।</li><li>&nbsp;চার্জিং ব্যাকআপঃ ফোনের সাথে কানেক্ট করা থাকলে ১/২ দিন চার্জ থাকবে। ফোনের সাথে কানেক্ট না থাকলে ৩/৪ দিন চার্জ পাবেন।</li><li>&nbsp;কালারঃ শুধুমাত্র কালো ।</li></ul>', NULL, NULL, NULL, '2021-09-16 19:40:10', '2021-09-16 19:55:08'),
(87, 'M11 TWS Wireless Earphone With 3300 mAh Power Bank', '1631821564f82132d9b47299ac7fa65a7102313a85.jpg', NULL, 4, NULL, NULL, 1087, 'm11-tws-wireless-earphone-with-3300-mah-power-bank-1087', 0, 1650, 300, 1350, '1', NULL, NULL, 0, 0, '<p>সাউন্ড কোয়ালিটি খুবই খুবই ভালো, এর ব্যাস ও ইকোর কোম্বিনেশান এক কথায় অসাধারণ, এতে 9D Stereo Sound System থাকায় আপনার গান শুনার মুহূর্তকে নিয়ে যাবে অন্য এক দুনিয়ায় ঘরের বাহিরে বা প্রচণ্ড কলোহলে এটা কানে দিয়ে রাখলে Music ছাড়া আর কিছুই শুনতে পারবেন নাহ।</p><ul><li>Using CVC8.0 digital noise reduction technology</li><li>The 5.1 chip manages battery life very well</li><li>It adopts Bluetooth V5.1 chip, 10m connection distance, stable performance, high transmission, low consumption and strong compatibility.</li><li>IPX7 waterproof and sweatproof</li><li>The left and right ears ,of the channel are free to use.</li><li>Strong compatibility, IOS/Android universal, one-button control, simple and stylish.</li><li>ফুল চার্জ দিলে ২০ ঘন্টা+ গান শুনতে পারবেন ও কথা বলতে পারবেন, Noise Cancellation আছে, যার ফলে আপনার কথা শুনা যাবে স্পষ্ট। এটাতে Standby মোড এ ৫ দিনের বেশি চার্জ থাকে।</li></ul>', NULL, NULL, NULL, '2021-09-16 19:46:04', '2021-09-16 19:50:00'),
(88, 'M19 Waterproof Headsets Bluetooth Earphone', '1631822564M19-TWS-Wireless-Earphone-Bluetooth-5-1-Hifi-Stereo-Touch-Control-Earbuds-Headphones-Waterproof-Headsets-With.jpg_Q90.jpg_.webp', NULL, 4, NULL, NULL, 1088, 'm19-waterproof-headsets-bluetooth-earphone-1088', 0, 1999, 500, 1499, '1', NULL, NULL, 0, 0, '<ul><li>LED digital power display</li><li>Intelligente touch control without compression (playback/pause, answer/hang up, switch songs, adjust volume，summon voice assistant)</li><li>Bluetooth 5.1</li><li>Hifi sound quality</li><li>Can be used as ,power bank,flashlight</li><li>HD voice assistant</li><li>Light weight</li><li>Intelligent noise reduction</li><li>Comfortable and painless to ear, light weight, no pressure, no harm to the hearing ability</li><li>Waterproof and sweatproof, strong endurance</li></ul>', NULL, NULL, NULL, '2021-09-16 20:02:44', '2021-09-16 20:02:44'),
(89, 'USB Rechargeable Lighter Watch', '1631822725OneClick.jpg', NULL, 4, NULL, NULL, 1089, 'usb-rechargeable-lighter-watch-1089', 0, 1500, 350, 1150, '1', NULL, NULL, 0, 0, '<ul><li>HUAYUE ইলেকট্রনিক সিগারেট কাম রিস্টওয়াচ</li><li>পাওয়ার: রিচার্জেবল ব্যাটারি চার্জার: USB</li><li>পরিবেশবান্ধব সহজে ব্যবহার করা যায়</li><li>উপহার হিসাবেও চমৎকার</li><li>কালার : ব্ল্যাক</li></ul>', NULL, NULL, NULL, '2021-09-16 20:05:25', '2021-09-16 20:05:25'),
(90, 'Stylish Tracksuit Trouser & T-Shirt Set (2pc)', '1632168939t6lnuzH8XkjNn4WLB8HZcNmlomfHbYDtalgCVEIe.jpg', NULL, 7, NULL, NULL, 1090, 'stylish-tracksuit-trouser-t-shirt-set-2pc-1090', 19, 990, 340, 650, '1', NULL, NULL, 0, 0, '<ul><li>Product Type: Men\'s Trouser &amp; T-Shirt</li><li>Summer Collection</li><li>Fabric: China Sweat blazer &amp; Mash Cotton</li><li>Style: Casual</li><li>Gender: Men</li><li>Production Country: Bangladesh</li><li>Measurement: &nbsp;<strong>Size:- M, L, XL</strong></li><li>M= &nbsp;Waist : 30-32, Length - 38</li><li>L= Waist : 32 - 34, Length - 39</li><li>XL= Waist : 34 - 36, Length - 40.</li></ul>', NULL, NULL, NULL, '2021-09-16 20:09:40', '2021-10-03 10:48:16'),
(91, 'PSG 2021-2022 Vapor Away Jersey T-Shirt (MESSI 30 )', '1632169213c0SRnUanUvaphwxYCATOf6aCavu8T8ZoeV496SIc.jpg', NULL, 7, NULL, NULL, 1091, 'psg-2021-2022-vapor-away-jersey-t-shirt-messi-30--1091', 0, 990, 200, 790, '1', NULL, NULL, 0, 0, '<ul><li>Product Type: Men\'s Trouser &amp; T-Shirt</li><li>Summer Collection</li><li>Fabric: China Sweat blazer &amp; Mash Cotton</li><li>Style: Casual</li><li>Gender: Men</li><li>Production Country: Bangladesh</li><li>Measurement: &nbsp;<strong>Size:- M, L, XL</strong></li><li>M= &nbsp;Waist : 30-32, Length - 38</li><li>L= Waist : 32 - 34, Length - 39</li><li>XL= Waist : 34 - 36, Length - 40.</li></ul>', NULL, NULL, NULL, '2021-09-16 20:14:47', '2021-09-20 20:20:13'),
(92, 'Stylish Comfortable Trouser & 2pc T-Shirt Set (3pcs)', '16318238663pc set.jpg', NULL, 7, NULL, NULL, 1092, 'stylish-comfortable-trouser-2pc-t-shirt-set-3pcs-1092', 0, 1550, 300, 1250, '1', NULL, NULL, 0, 0, '<ul><li>𝟮𝗽𝗰 𝗧-𝘀𝗵𝗶𝗿𝘁 (𝗪𝗵𝗶𝘁𝗲 &amp; 𝗕𝗹𝗮𝗰𝗸) 𝘄𝗶𝘁𝗵 𝟭 𝗧𝗿𝗼𝘂𝘀𝗲𝗿</li><li>Product Type: Men\'s Trouser &amp; T-Shirt</li><li>Summer Collection</li><li>Fabric: China Sweat blazer &amp; Mash Cotton</li><li>Style: Casual</li><li>Gender: Men</li><li>Production Country: Bangladesh</li><li>Measurement: &nbsp;<strong>Size:- M, L, XL</strong></li><li>M= &nbsp;Waist : 30-32, Length - 38</li><li>L= Waist : 32 - 34, Length - 39</li><li>XL= Waist : 34 - 36, Length - 40.</li></ul>', NULL, NULL, NULL, '2021-09-16 20:24:26', '2021-09-16 20:24:26'),
(93, 'Summer Men Set Casual Tracksuit Black', '1631824103Erkek-spor-e-ofman-erkekler-elastik-bel-Patchwork-mektup-2-adet-Set-ort-o-boyun-T.jpg_q50.jpg', NULL, 7, NULL, NULL, 1093, 'summer-men-set-casual-tracksuit-black-1093', 0, 1750, 500, 1250, '1', NULL, NULL, 0, 0, '<ul><li>Summer Men Set Casual Tracksuit Black</li><li>Fabric: China Sweat blazer &amp; Mash Cotton</li><li>Style: Casual</li><li>Gender: Men</li><li>Production Country: Bangladesh</li><li>Measurement: &nbsp;<strong>Size:- M, L, XL</strong></li><li>M= &nbsp;Waist : 30-32, Length - 38</li><li>L= Waist : 32 - 34, Length - 39</li><li>XL= Waist : 34 - 36, Length - 40.</li></ul>', NULL, NULL, NULL, '2021-09-16 20:28:23', '2021-09-16 20:28:23'),
(94, 'Casual Men\'s Sweatpant Trouser-1094', '1631824255u0EvLHZiVig1N0n7mE9aTPxB8eBWrTyz0qArH4yU.jpg', NULL, 7, NULL, NULL, 1094, 'casual-mens-sweatpant-trouser-1094-1094', 0, 750, 100, 650, '1', NULL, NULL, 0, 0, '<ul><li><strong>Casual Men\'s Sweatpant Trouser</strong></li><li><strong>Fabric: Terry Cotton</strong></li><li><strong>Export Quality</strong></li><li><strong>Size: M, L, XL, XXL</strong></li><li><strong>Zippered in bottom</strong></li><li><strong>Soft &amp; Comfortable</strong></li></ul>', NULL, NULL, NULL, '2021-09-16 20:30:55', '2021-09-16 20:30:55'),
(95, 'Casual Men\'s Sweatpant Trouser-1095', '1631824363YMrchuABPAUcTGwzYO4L2FRVN8xxjWQd7DRKfKYr.jpg', NULL, 7, NULL, NULL, 1095, 'casual-mens-sweatpant-trouser-1095-1095', 0, 750, 100, 650, '1', NULL, NULL, 0, 0, '<ul><li><strong>Casual Men\'s Sweatpant Trouser</strong></li><li><strong>Fabric: Terry Cotton</strong></li><li><strong>Export Quality</strong></li><li><strong>Size: M, L, XL, XXL</strong></li><li><strong>Zippered in bottom</strong></li><li><strong>Soft &amp; Comfortable</strong></li></ul>', '<p><strong>Size: M, L, XL, XXL</strong></p>', '<p><strong>Casual Men\'s Sweatpant Trouser</strong></p>', '<p>delivery info</p>', '2021-09-16 20:32:43', '2021-10-18 06:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-08-11 13:03:28', '2021-09-09 18:24:44'),
(2, 90, 1, '2021-09-16 20:09:40', '2021-09-16 20:09:40'),
(3, 91, 1, '2021-09-16 20:14:47', '2021-09-16 20:14:47'),
(4, 94, 1, '2021-09-16 20:30:55', '2021-09-16 20:30:55'),
(5, 95, 1, '2021-09-16 20:32:43', '2021-09-16 20:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_barcodes`
--

CREATE TABLE `product_barcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `barcode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_barcodes`
--

INSERT INTO `product_barcodes` (`id`, `product_id`, `barcode`, `barcode_number`, `created_at`, `updated_at`) VALUES
(1, 1, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\r\n</div>\r\n', '1001', '2021-08-10 07:04:21', '2021-08-10 07:04:21'),
(2, 2, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\r\n</div>\r\n', '1002', '2021-08-10 07:04:49', '2021-08-10 07:04:49'),
(3, 3, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1003', '2021-08-15 05:44:37', '2021-08-15 05:44:37'),
(4, 4, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1004', '2021-08-15 06:05:12', '2021-08-15 06:05:12'),
(5, 5, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1005', '2021-08-15 06:11:23', '2021-08-15 06:11:23'),
(6, 6, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1006', '2021-08-15 06:24:08', '2021-08-15 06:24:08'),
(7, 7, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1007', '2021-08-15 06:45:20', '2021-08-15 06:45:20'),
(8, 8, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1008', '2021-08-15 15:51:24', '2021-08-15 15:51:24'),
(9, 9, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1009', '2021-08-15 16:06:43', '2021-08-15 16:06:43'),
(10, 10, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1010', '2021-08-15 16:19:40', '2021-08-15 16:19:40'),
(11, 11, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1011', '2021-08-16 18:52:42', '2021-08-16 18:52:42'),
(12, 12, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1012', '2021-08-16 18:55:28', '2021-08-16 18:55:28'),
(13, 13, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1013', '2021-08-16 18:58:09', '2021-08-16 18:58:09'),
(14, 14, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1014', '2021-08-16 19:06:41', '2021-08-16 19:06:41'),
(15, 15, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1015', '2021-08-16 19:11:00', '2021-08-16 19:11:00'),
(16, 16, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1016', '2021-08-16 19:16:09', '2021-08-16 19:16:09'),
(17, 17, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1017', '2021-08-16 23:26:43', '2021-08-16 23:26:43'),
(18, 18, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1018', '2021-08-16 23:59:45', '2021-08-16 23:59:45'),
(19, 19, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1019', '2021-08-17 01:27:17', '2021-08-17 01:27:17'),
(20, 20, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1020', '2021-08-17 01:31:44', '2021-08-17 01:31:44'),
(21, 21, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1021', '2021-08-17 01:45:11', '2021-08-17 01:45:11'),
(22, 22, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1022', '2021-08-17 02:04:02', '2021-08-17 02:04:02'),
(23, 23, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1023', '2021-08-17 02:11:12', '2021-08-17 02:11:12'),
(24, 24, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1024', '2021-08-17 02:32:49', '2021-08-17 02:32:49'),
(25, 25, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1025', '2021-08-17 02:36:48', '2021-08-17 02:36:48');
INSERT INTO `product_barcodes` (`id`, `product_id`, `barcode`, `barcode_number`, `created_at`, `updated_at`) VALUES
(26, 26, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1026', '2021-08-17 02:44:22', '2021-08-17 02:44:22'),
(27, 27, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1027', '2021-08-17 02:51:24', '2021-08-17 02:51:24'),
(28, 28, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1028', '2021-08-17 02:53:37', '2021-08-17 02:53:37'),
(29, 29, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1029', '2021-08-24 18:25:56', '2021-08-24 18:25:56'),
(30, 30, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1030', '2021-08-25 05:17:55', '2021-08-25 05:17:55'),
(31, 31, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1031', '2021-08-25 06:17:40', '2021-08-25 06:17:40'),
(32, 32, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1032', '2021-08-25 06:48:18', '2021-08-25 06:48:18'),
(33, 33, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1033', '2021-09-03 18:16:11', '2021-09-03 18:16:11'),
(34, 34, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1034', '2021-09-03 18:22:53', '2021-09-03 18:22:53'),
(35, 35, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1035', '2021-09-03 18:25:02', '2021-09-03 18:25:02'),
(36, 36, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1036', '2021-09-03 18:44:24', '2021-09-03 18:44:24'),
(37, 37, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1037', '2021-09-03 18:48:23', '2021-09-03 18:48:23'),
(38, 38, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1038', '2021-09-08 03:50:30', '2021-09-08 03:50:30'),
(39, 39, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1039', '2021-09-08 03:53:00', '2021-09-08 03:53:00'),
(40, 40, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1040', '2021-09-08 03:54:00', '2021-09-08 03:54:00'),
(41, 41, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1041', '2021-09-08 03:56:12', '2021-09-08 03:56:12'),
(42, 42, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1042', '2021-09-08 04:09:51', '2021-09-08 04:09:51'),
(43, 43, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1043', '2021-09-08 04:13:40', '2021-09-08 04:13:40'),
(44, 44, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1044', '2021-09-08 04:16:20', '2021-09-08 04:16:20'),
(45, 45, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1045', '2021-09-08 04:18:00', '2021-09-08 04:18:00'),
(46, 46, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1046', '2021-09-08 04:49:55', '2021-09-08 04:49:55'),
(47, 47, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1047', '2021-09-08 04:57:39', '2021-09-08 04:57:39'),
(48, 48, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1048', '2021-09-08 05:10:31', '2021-09-08 05:10:31'),
(49, 49, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1049', '2021-09-08 05:13:37', '2021-09-08 05:13:37'),
(50, 50, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1050', '2021-09-08 06:02:17', '2021-09-08 06:02:17');
INSERT INTO `product_barcodes` (`id`, `product_id`, `barcode`, `barcode_number`, `created_at`, `updated_at`) VALUES
(51, 51, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1051', '2021-09-08 06:12:49', '2021-09-08 06:12:49'),
(52, 52, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1052', '2021-09-08 06:21:32', '2021-09-08 06:21:32'),
(53, 53, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1053', '2021-09-08 06:26:05', '2021-09-08 06:26:05'),
(54, 54, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1054', '2021-09-08 06:30:08', '2021-09-08 06:30:08'),
(55, 55, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1055', '2021-09-08 06:33:05', '2021-09-08 06:33:05'),
(56, 56, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1056', '2021-09-08 06:34:52', '2021-09-08 06:34:52'),
(57, 57, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1057', '2021-09-08 06:44:39', '2021-09-08 06:44:39'),
(58, 58, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1058', '2021-09-08 06:47:23', '2021-09-08 06:47:23'),
(59, 59, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1059', '2021-09-08 06:57:25', '2021-09-08 06:57:25'),
(60, 60, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1060', '2021-09-08 15:44:53', '2021-09-08 15:44:53'),
(61, 61, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1061', '2021-09-09 18:05:31', '2021-09-09 18:05:31'),
(62, 62, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1062', '2021-09-09 18:07:01', '2021-09-09 18:07:01'),
(63, 63, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1063', '2021-09-09 18:30:44', '2021-09-09 18:30:44'),
(64, 64, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1064', '2021-09-09 18:40:31', '2021-09-09 18:40:31'),
(65, 65, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1065', '2021-09-09 18:48:16', '2021-09-09 18:48:16'),
(66, 66, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1066', '2021-09-10 05:48:05', '2021-09-10 05:48:05'),
(67, 67, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1067', '2021-09-10 05:54:28', '2021-09-10 05:54:28'),
(68, 68, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1068', '2021-09-10 06:08:06', '2021-09-10 06:08:06'),
(69, 69, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1069', '2021-09-10 06:14:50', '2021-09-10 06:14:50'),
(76, 76, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1070', '2021-09-13 05:48:33', '2021-09-13 05:48:33'),
(77, 77, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1077', '2021-09-15 19:27:51', '2021-09-15 19:27:51'),
(78, 78, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1078', '2021-09-16 18:39:04', '2021-09-16 18:39:04'),
(79, 79, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1079', '2021-09-16 18:53:51', '2021-09-16 18:53:51'),
(80, 80, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1080', '2021-09-16 18:55:45', '2021-09-16 18:55:45'),
(81, 81, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1081', '2021-09-16 19:00:08', '2021-09-16 19:00:08');
INSERT INTO `product_barcodes` (`id`, `product_id`, `barcode`, `barcode_number`, `created_at`, `updated_at`) VALUES
(82, 82, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1082', '2021-09-16 19:15:48', '2021-09-16 19:15:48'),
(83, 83, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1083', '2021-09-16 19:28:19', '2021-09-16 19:28:19'),
(84, 84, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1084', '2021-09-16 19:31:40', '2021-09-16 19:31:40'),
(85, 85, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:74px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1085', '2021-09-16 19:35:37', '2021-09-16 19:35:37'),
(86, 86, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1086', '2021-09-16 19:40:10', '2021-09-16 19:40:10'),
(87, 87, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1087', '2021-09-16 19:46:04', '2021-09-16 19:46:04'),
(88, 88, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:62px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1088', '2021-09-16 20:02:44', '2021-09-16 20:02:44'),
(89, 89, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1089', '2021-09-16 20:05:25', '2021-09-16 20:05:25'),
(90, 90, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1090', '2021-09-16 20:09:40', '2021-09-16 20:09:40'),
(91, 91, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:60px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1091', '2021-09-16 20:14:47', '2021-09-16 20:14:47'),
(92, 92, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1092', '2021-09-16 20:24:26', '2021-09-16 20:24:26'),
(93, 93, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1093', '2021-09-16 20:28:23', '2021-09-16 20:28:23'),
(94, 94, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1094', '2021-09-16 20:30:55', '2021-09-16 20:30:55'),
(95, 95, '<div style=\"font-size:0;position:relative;width:114px;height:30px;\">\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:30px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:38px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:30px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:30px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:30px;position:absolute;left:106px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:30px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n</div>\n', '1095', '2021-09-16 20:32:43', '2021-09-16 20:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_for_prints`
--

CREATE TABLE `product_for_prints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `cost_per_qty` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/products/Yd2IeT7CKSwHtl4sovGpX6FYyKqpzbvjxslVwL84.jpg', '2021-08-10 07:04:22', '2021-08-10 07:04:22'),
(3, 2, 'images/products/Wki6CYUCUnjU61uYE9DiA23S6JgVnU1N190LanTs.jpg', '2021-08-10 07:12:27', '2021-08-10 07:12:27'),
(4, 3, 'images/products/37Ju3zcD1qYmJ1V7eveCd19PAbwQHzAbJgYTXWpw.jpg', '2021-08-15 05:44:37', '2021-08-15 05:44:37'),
(5, 4, 'images/products/KD3flVv7AXdZC1e3rKjxntpDmUx8bpqOFdrFJiuY.jpg', '2021-08-15 06:05:21', '2021-08-15 06:05:21'),
(6, 5, 'images/products/C6y06uy3M3KGTKYaQ5kmhz6KNOlZl0QPFhVZvLZf.jpg', '2021-08-15 06:11:24', '2021-08-15 06:11:24'),
(7, 6, 'images/products/xI2X20H5DS6hNfN3UUMJD5fG2AhA5PUCb54kt2gL.jpg', '2021-08-15 06:24:08', '2021-08-15 06:24:08'),
(8, 7, 'images/products/kKwI2mqUFzFRDqdZmgKUE4pWTMtfv6Ex8rSHKtf0.jpg', '2021-08-15 06:45:20', '2021-08-15 06:45:20'),
(9, 8, 'images/products/BXSMvDGDMmFIxtB4UN3iMbFUvVuGTJYxPvXDSG1R.jpg', '2021-08-15 15:51:25', '2021-08-15 15:51:25'),
(10, 9, 'images/products/1E4oqcwwzoeZvui6ECyMzxz69YrmoC5gI5qyhE2D.jpg', '2021-08-15 16:06:43', '2021-08-15 16:06:43'),
(11, 10, 'images/products/VNAL0l4iFWttrUTDgSLZSSBXei4uHV9pVPt1Q3lA.jpg', '2021-08-15 16:19:41', '2021-08-15 16:19:41'),
(12, 11, 'images/products/tUQUePryQ6PCCIxl3WeQCjP8JP9TuQlZgrmtsewO.jpg', '2021-08-16 18:52:43', '2021-08-16 18:52:43'),
(13, 12, 'images/products/E9pc52o3aKHlACxUVu50yIkdBD8YJ2Qjym2Jiilj.jpg', '2021-08-16 18:55:28', '2021-08-16 18:55:28'),
(14, 13, 'images/products/3vmpKoGipvOdfou8FDBru4raLYW5LkEWSgF0naRN.jpg', '2021-08-16 18:58:09', '2021-08-16 18:58:09'),
(15, 14, 'images/products/ScNrCAqNsivuL4H9tnHYFy1QCjNTpuqHeB89icOy.jpg', '2021-08-16 19:06:41', '2021-08-16 19:06:41'),
(16, 15, 'images/products/35VHTNuGNcskbjQnHp3RJQIm1HakJj9fW223SB9D.jpg', '2021-08-16 19:11:00', '2021-08-16 19:11:00'),
(17, 16, 'images/products/eSjQh7zr4d3JwFwyvVZRh5xXfcKRGvYxgobJ5rOQ.jpg', '2021-08-16 19:16:09', '2021-08-16 19:16:09'),
(18, 17, 'images/products/N9PdXT1H7yrG2mTtnIsUfGurQ3A0uuPeMiBV5ad0.jpg', '2021-08-16 23:26:43', '2021-08-16 23:26:43'),
(19, 18, 'images/products/naCxE5S1BoAAL4sJULJw17LINFf5tfmZofjYo9H0.jpg', '2021-08-16 23:59:45', '2021-08-16 23:59:45'),
(20, 19, 'images/products/YFdXAtfcxJxHjwMN53N0n3v6Y8HS3rCgxjoGOoQq.jpg', '2021-08-17 01:27:17', '2021-08-17 01:27:17'),
(21, 20, 'images/products/dUo1tsbyx9HUWesC4nGZHSbrkZPguW4rlcD8SLn9.jpg', '2021-08-17 01:31:45', '2021-08-17 01:31:45'),
(22, 21, 'images/products/X8TZbGMAvlHfL9zK6SJu9BkNQKUqG3aE8IO8gqqS.jpg', '2021-08-17 01:45:11', '2021-08-17 01:45:11'),
(23, 22, 'images/products/r2TvWFJR7nYmvrCl0yq80byoFb58ViBF2M7eXdB1.jpg', '2021-08-17 02:04:02', '2021-08-17 02:04:02'),
(24, 23, 'images/products/fGBADr6fmQWS0Ve0dBPalhVBxaiJx9XqEmIbEuP2.jpg', '2021-08-17 02:11:12', '2021-08-17 02:11:12'),
(25, 24, 'images/products/0C6onSO7NVvw3vae1ACLGKXrjt25pude6qXtUXkg.jpg', '2021-08-17 02:32:49', '2021-08-17 02:32:49'),
(26, 25, 'images/products/sQQZdrs5LQ7Kg6DeRUEmYsViTmuJBZYHGnieUFbf.jpg', '2021-08-17 02:36:48', '2021-08-17 02:36:48'),
(27, 26, 'images/products/oB3gNU1PoBKfofh5izE9kEX7SApCwyVJ4wJFw0f1.jpg', '2021-08-17 02:44:22', '2021-08-17 02:44:22'),
(28, 27, 'images/products/kW0bJjZCptOGsfXdQrPaeFfWXo03xFHderFG1guY.jpg', '2021-08-17 02:51:24', '2021-08-17 02:51:24'),
(29, 28, 'images/products/DJBli9j7U0E4PECOKSniDmahYJF2NjephtkFd721.jpg', '2021-08-17 02:53:37', '2021-08-17 02:53:37'),
(30, 29, 'images/products/H2dT1mftZleokU82IwuiKujEWA5yVbDuzLYksAxl.jpg', '2021-08-24 18:25:56', '2021-08-24 18:25:56'),
(31, 30, 'images/products/BRfjfw5GoD2lNAbUWDNeJIctfT4PLQveORf6RFmb.jpg', '2021-08-25 05:17:55', '2021-08-25 05:17:55'),
(32, 31, 'images/products/ZDtPAEhYURvoXZktjUAl7K4Rqe7H5e3JfI8Dewq3.webp', '2021-08-25 06:17:40', '2021-08-25 06:17:40'),
(33, 32, 'images/products/PtGKRYE7tkA3UlEiC7VjS1UzkE1xBeNQhPJ6iJFO.jpg', '2021-08-25 06:48:18', '2021-08-25 06:48:18'),
(34, 33, 'images/products/XaLNkThnnqYCcX4XxqlTIUlzJ5jlFCFEilnGdWHN.jpg', '2021-09-03 18:16:11', '2021-09-03 18:16:11'),
(35, 34, 'images/products/EVSpVwzEDMUesmvdCNAxE3nMV7crlcyBLIhUyewb.jpg', '2021-09-03 18:22:53', '2021-09-03 18:22:53'),
(36, 35, 'images/products/Kh5nbeIhEubOxcylXRWmYzFmOVjmli2ZQx98gY1U.jpg', '2021-09-03 18:25:02', '2021-09-03 18:25:02'),
(37, 36, 'images/products/o0gIDWnCQjdfo9YJiCSaUtCbzRWZWIy6Z5X4c3D0.jpg', '2021-09-03 18:44:24', '2021-09-03 18:44:24'),
(38, 37, 'images/products/HZaV128O07XG4cYl901EKMov1OzthaM3mXTiYR7n.jpg', '2021-09-03 18:48:23', '2021-09-03 18:48:23'),
(39, 38, 'images/products/PFDrn4zkgyBjEReEmKPI4UhU61tMZPkVJJwdFgE5.jpg', '2021-09-08 03:50:30', '2021-09-08 03:50:30'),
(40, 39, 'images/products/yAf8voNAwcLLVGoEgYEDLpDiosFiXm9dB23U3UBH.jpg', '2021-09-08 03:53:00', '2021-09-08 03:53:00'),
(41, 40, 'images/products/EZpcTAnQ8mxopFYSu6Ewq0e7tmkPKsaCAFUjwluc.jpg', '2021-09-08 03:54:00', '2021-09-08 03:54:00'),
(42, 41, 'images/products/0HYid4bSZt94NiVQT1soX6LhPI1XL9OrEa5t0y8r.jpg', '2021-09-08 03:56:12', '2021-09-08 03:56:12'),
(44, 43, 'images/products/49ZStro37LR2Kd2jJ5MGxSfRESlXgdQDe1jLlu8b.jpg', '2021-09-08 04:13:40', '2021-09-08 04:13:40'),
(45, 44, 'images/products/Hd1XIDz10LuRrnWUqLtuBAFLF0wZJ0xfbgbO4TeB.webp', '2021-09-08 04:16:20', '2021-09-08 04:16:20'),
(46, 45, 'images/products/gkbJnwrz6CkXQbeApMpui5HaY5Vd4utDYkF8Rp65.jpg', '2021-09-08 04:18:00', '2021-09-08 04:18:00'),
(48, 47, 'images/products/tYYNqHWokBFIcUyUZgk13dCYVxmzK0AErLbpUX1E.jpg', '2021-09-08 04:57:39', '2021-09-08 04:57:39'),
(49, 45, 'images/products/Eo7zn6U5dK2tQdASwsPplAHzRtGZGqfSdCGPfC9N.jpg', '2021-09-08 05:00:53', '2021-09-08 05:00:53'),
(50, 46, 'images/products/HCaarq1UWejoLsV3YOY4MCxeGGHRMpm58varktTm.jpg', '2021-09-08 05:08:44', '2021-09-08 05:08:44'),
(51, 48, 'images/products/PfOrCaeN9LIJr4TctJiTSDKbcXr9af7fhuzuAD2c.jpg', '2021-09-08 05:10:31', '2021-09-08 05:10:31'),
(52, 49, 'images/products/HYzCtMhAqFX5g3YUvCnM3WZ51Aeayr9wYbEl2ed7.jpg', '2021-09-08 05:13:37', '2021-09-08 05:13:37'),
(53, 50, 'images/products/ZIcaXBk9qe2XdhXqYs2OiIv9TgMfr0powy8PVnxD.jpg', '2021-09-08 06:02:17', '2021-09-08 06:02:17'),
(54, 51, 'images/products/Z3PkWuYC6czMU7HnVixh8P02cT7GUrpYSz7x8eOo.jpg', '2021-09-08 06:12:49', '2021-09-08 06:12:49'),
(55, 52, 'images/products/jvtXfqfx8z1uyWfJHUPj2l3I79nrDk5gqdujYs5N.jpg', '2021-09-08 06:21:32', '2021-09-08 06:21:32'),
(56, 53, 'images/products/FjUlltkS5C9ZqUT5ZIQYHbKsB1MK1PFl54iBwXoE.jpg', '2021-09-08 06:26:05', '2021-09-08 06:26:05'),
(57, 54, 'images/products/U508cAAwnamDPkAyYNqnKo7SJBRjbAJrmDsgmmUp.jpg', '2021-09-08 06:30:08', '2021-09-08 06:30:08'),
(58, 55, 'images/products/vVGAtvAiywqaz2dCfqZ7nTtyBkoPhnfn84mSRrlq.jpg', '2021-09-08 06:33:05', '2021-09-08 06:33:05'),
(59, 56, 'images/products/OTPvmNjzJD2qcbj7e7sSVKhtTSg9Cb4P1bzNduxt.jpg', '2021-09-08 06:34:52', '2021-09-08 06:34:52'),
(60, 6, 'images/products/yyMqszAyeDd47c8W40uLq9dgwD34nDAHtEuEkuLO.jpg', '2021-09-08 06:40:59', '2021-09-08 06:40:59'),
(61, 57, 'images/products/D6MdEdCtfVlclZQdAQQQe7wOEdDjD5vwf5YnIAiQ.jpg', '2021-09-08 06:44:39', '2021-09-08 06:44:39'),
(62, 58, 'images/products/dMsXpQOtbm6sNaQOtRLgbtq6yO6sSJdL0935ecOh.jpg', '2021-09-08 06:47:23', '2021-09-08 06:47:23'),
(63, 59, 'images/products/YzgREBXAOi3i7qWhC1q4znyoMh9pGLJIemigPhPF.jpg', '2021-09-08 06:57:25', '2021-09-08 06:57:25'),
(64, 60, 'images/products/6EByUFm3AtMFFZDMsb7HKEKIDYqtpzqUcL5R1RZj.jpg', '2021-09-08 15:44:53', '2021-09-08 15:44:53'),
(65, 61, 'images/products/rqPopdrYLS9DNEO1198J3YbwLo4HXMBtPNKplEEb.jpg', '2021-09-09 18:05:31', '2021-09-09 18:05:31'),
(66, 62, 'images/products/VA4yQeubrQfE9jXIac1McMvRpMgb4pwSNOGJOomr.jpg', '2021-09-09 18:07:01', '2021-09-09 18:07:01'),
(74, 64, 'images/products/XuJccgWXFVMsTFj7PGxQOswEdVFx7PwjHoHcMrdd.jpg', '2021-09-09 18:40:31', '2021-09-09 18:40:31'),
(75, 63, 'images/products/XGk54hwpbNaAEzfm0kQK0BiN0HyPdRdZcA8hUU1e.jpg', '2021-09-09 18:42:31', '2021-09-09 18:42:31'),
(76, 65, 'images/products/4ozu4Vj4bMZrEbJcpGezEpZhi8NUTUrTC3XFfi1v.jpg', '2021-09-09 18:48:16', '2021-09-09 18:48:16'),
(77, 66, 'images/products/1bjrJKCJuoLuoK5sCS1t28RRiuw3fGnHkrzzT7YW.jpg', '2021-09-10 05:48:05', '2021-09-10 05:48:05'),
(78, 67, 'images/products/DXa17cJIAKkfeJMZmS9BymKfMWqEkp4iYTVXJnGx.jpg', '2021-09-10 05:54:28', '2021-09-10 05:54:28'),
(79, 42, 'images/products/iSfquke8lIkPEjxI0RKkIhWVDMpUepYhtpaHIhyE.jpg', '2021-09-10 06:02:08', '2021-09-10 06:02:08'),
(80, 68, 'images/products/Iltvljf0rbkRPSpt3c9pXTWLy0goqZQvQpVo2COl.jpg', '2021-09-10 06:08:06', '2021-09-10 06:08:06'),
(81, 69, 'images/products/3k5o8rafhfKwQofnFIBZrNaiLfHwA6YB6ALjwPBr.jpg', '2021-09-10 06:14:50', '2021-09-10 06:14:50'),
(82, 76, 'images/products/mEzfdeTHonzYrPYvyV2OPtadmLz6CvMzhl9QN3r2.jpg', '2021-09-13 05:48:33', '2021-09-13 05:48:33'),
(83, 77, 'images/products/iQE2g04fRG7JSBiDlHetn7Uot4aLXDwOFznIKkcl.gif', '2021-09-15 19:27:51', '2021-09-15 19:27:51'),
(84, 78, 'images/products/ZVSEezdnh9qUVXvCfS6HC2nv4jQvRqYTKj5ZLpWd.jpg', '2021-09-16 18:39:04', '2021-09-16 18:39:04'),
(85, 79, 'images/products/NiVwwJN6qBOQTnq65a2f4V9MfQfkAzNrNkflfaPE.jpg', '2021-09-16 18:53:51', '2021-09-16 18:53:51'),
(86, 80, 'images/products/TRwBBqrNjb6CGAaLbKZp1K30cR1iB1Y5cEesP8jw.jpg', '2021-09-16 18:55:45', '2021-09-16 18:55:45'),
(87, 81, 'images/products/VrkFlpV009SUHoYfLpRX4LLrbac4kE9VSFuQ3bum.jpg', '2021-09-16 19:00:08', '2021-09-16 19:00:08'),
(88, 82, 'images/products/hz0xE8WcvlRfRLQo6qZUnZFi71eAuTwuxCFKkq31.jpg', '2021-09-16 19:15:48', '2021-09-16 19:15:48'),
(89, 83, 'images/products/XqpVc46igCi3TwMeZc1YNQZ7JUye9kNsGL1867Q4.jpg', '2021-09-16 19:28:19', '2021-09-16 19:28:19'),
(90, 84, 'images/products/BgbCO0LhV5hqI6uaY3BsT2pFSQsd9KrK1UsoGYKJ.jpg', '2021-09-16 19:31:40', '2021-09-16 19:31:40'),
(91, 85, 'images/products/b48dHWLEA3mhmGuML3zqbeVETip91Wlp2KSLWtG1.jpg', '2021-09-16 19:35:37', '2021-09-16 19:35:37'),
(93, 87, 'images/products/BJZT9YP6I9cxG0KA2qlIu0L0neb19lJhnnpqOPRk.jpg', '2021-09-16 19:46:04', '2021-09-16 19:46:04'),
(94, 86, 'images/products/N0hY2moY8vo7YNBfoRuidl9ZlqClylkyTeQKk5Id.jpg', '2021-09-16 19:55:08', '2021-09-16 19:55:08'),
(95, 88, 'images/products/LZAMcJktsAWyUQkucphvkZLpYHorvN3pZfZZ0IU7.jpg', '2021-09-16 20:02:44', '2021-09-16 20:02:44'),
(96, 89, 'images/products/fBsarl2sEjBdho5m3spyCqndVabe0Qar9WzFMH6q.jpg', '2021-09-16 20:05:25', '2021-09-16 20:05:25'),
(97, 90, 'images/products/W0S8GtfKUigXKbVHU2dN5VP5l8FahejFvAqvObCX.jpg', '2021-09-16 20:09:40', '2021-09-16 20:09:40'),
(99, 92, 'images/products/wAkvCL6lBBbrkYsknLn5nfw4VPlvfVeKu3T5uUPK.jpg', '2021-09-16 20:24:26', '2021-09-16 20:24:26'),
(100, 93, 'images/products/iiyAKiaecau1iGITxgjEN7xCBhih5qdBYa7cAbc3.jpg', '2021-09-16 20:28:23', '2021-09-16 20:28:23'),
(101, 94, 'images/products/ZVwGEqbLj2crSGaX03vIGGfmdEdvEHKNKboI3sx2.jpg', '2021-09-16 20:30:55', '2021-09-16 20:30:55'),
(102, 95, 'images/products/VuYdenwjESophxnYzLVo8BGrO1an6CBWZgtMxUxe.jpg', '2021-09-16 20:32:43', '2021-09-16 20:32:43'),
(103, 90, 'images/products/bvj65bnVWbXQuTjFwDEWjeSzerY1d73VEYdH59ah.jpg', '2021-09-20 20:15:39', '2021-09-20 20:15:39'),
(104, 90, 'images/products/h3C2nlIhyTkR5DjXHyc6iPq9ocQkhIVjKZOskQi4.jpg', '2021-09-20 20:15:39', '2021-09-20 20:15:39'),
(105, 91, 'images/products/KaY1zkqLv37Y0xZyX8cJ5OPDJFke5DPNydnPwc4A.jpg', '2021-09-20 20:20:13', '2021-09-20 20:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, '2021-09-09 18:24:44', '2021-09-09 18:24:44'),
(13, 91, 2, '2021-09-16 20:14:47', '2021-09-16 20:14:47'),
(14, 91, 3, '2021-09-16 20:14:47', '2021-09-16 20:14:47'),
(15, 91, 4, '2021-09-16 20:14:47', '2021-09-16 20:14:47'),
(16, 91, 5, '2021-09-16 20:14:47', '2021-09-16 20:14:47'),
(17, 94, 2, '2021-09-16 20:30:55', '2021-09-16 20:30:55'),
(18, 94, 3, '2021-09-16 20:30:55', '2021-09-16 20:30:55'),
(19, 94, 4, '2021-09-16 20:30:55', '2021-09-16 20:30:55'),
(20, 94, 5, '2021-09-16 20:30:55', '2021-09-16 20:30:55'),
(21, 95, 2, '2021-09-16 20:32:43', '2021-09-16 20:32:43'),
(22, 95, 3, '2021-09-16 20:32:43', '2021-09-16 20:32:43'),
(23, 95, 4, '2021-09-16 20:32:43', '2021-09-16 20:32:43'),
(24, 95, 5, '2021-09-16 20:32:43', '2021-09-16 20:32:43'),
(25, 90, 2, '2021-09-20 20:14:43', '2021-09-20 20:14:43'),
(26, 90, 3, '2021-09-20 20:14:43', '2021-09-20 20:14:43'),
(27, 90, 4, '2021-09-20 20:14:43', '2021-09-20 20:14:43'),
(28, 90, 5, '2021-09-20 20:14:43', '2021-09-20 20:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitems`
--

CREATE TABLE `purchaseitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `insert_quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchaseitems`
--

INSERT INTO `purchaseitems` (`id`, `purchase_id`, `product_id`, `price`, `insert_quantity`, `stock`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 300, 10, 10, '2021-08-10 10:41:45', '2021-08-10 10:41:45'),
(3, 5, 3, 1080, 100, 100, '2021-08-15 07:05:23', '2021-08-15 07:05:23'),
(4, 6, 4, 330, 100, 100, '2021-08-15 07:08:31', '2021-08-15 07:08:31'),
(5, 7, 5, 450, 100, 100, '2021-08-15 07:09:33', '2021-08-15 07:09:33'),
(6, 8, 7, 380, 100, 100, '2021-08-15 07:10:48', '2021-08-15 07:10:48'),
(7, 9, 6, 240, 50, 50, '2021-08-15 07:12:47', '2021-08-15 07:12:47'),
(8, 11, 29, 600, 200, 200, '2021-08-24 19:03:53', '2021-08-24 19:03:53'),
(9, 12, 32, 430, 100, 100, '2021-08-25 06:49:35', '2021-08-25 06:49:35'),
(10, 13, 7, 380, 100, 100, '2021-09-09 07:29:06', '2021-09-09 07:29:06'),
(11, 15, 76, 750, 50, 50, '2021-09-16 16:39:49', '2021-09-16 16:39:49'),
(12, 17, 77, 70, 500, 500, '2021-09-16 16:42:52', '2021-09-16 16:42:52'),
(13, 18, 64, 3500, 10, 10, '2021-09-18 16:07:56', '2021-09-18 16:07:56'),
(14, 19, 90, 380, 50, 50, '2021-09-21 14:08:03', '2021-09-21 14:08:03'),
(15, 21, 26, 300, 20, 20, '2021-09-21 14:10:06', '2021-09-21 14:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT 0,
  `purchase_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `invoice_no`, `supplier_id`, `total`, `paid`, `purchase_date`, `status`, `file`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 100, 0, '2021-08-10', 1, NULL, '2021-08-10 10:35:30', '2021-08-10 10:35:30'),
(3, 5485, 1, 3000, 200, '2021-08-10', 1, NULL, '2021-08-10 10:41:45', '2021-08-10 10:41:45'),
(4, 0, 2, 261680, 0, '2021-08-15', 1, NULL, '2021-08-15 06:59:29', '2021-08-15 06:59:29'),
(5, 2021815, 2, 108000, 0, '2021-08-15', 1, NULL, '2021-08-15 07:05:23', '2021-08-15 07:05:23'),
(6, 20210815, 2, 33000, 0, '2021-08-15', 1, NULL, '2021-08-15 07:08:31', '2021-08-15 07:08:31'),
(7, 20210815, 2, 45000, 0, '2021-08-15', 1, NULL, '2021-08-15 07:09:33', '2021-08-15 07:09:33'),
(8, 20210815, 2, 38000, 0, '2021-08-15', 1, NULL, '2021-08-15 07:10:48', '2021-08-15 07:10:48'),
(9, 20210815, 2, 12000, 0, '2021-08-15', 1, NULL, '2021-08-15 07:12:47', '2021-08-15 07:12:47'),
(10, 0, 3, 10000, 0, '2021-08-25', 1, NULL, '2021-08-24 18:57:55', '2021-08-24 18:57:55'),
(11, 20210825, 3, 120000, 20000, '2021-08-25', 1, NULL, '2021-08-24 19:03:53', '2021-08-24 19:03:53'),
(12, 1032, 2, 43000, 10000, '2021-08-25', 1, NULL, '2021-08-25 06:49:35', '2021-08-25 06:49:35'),
(13, 12454, 2, 38000, 0, '2021-09-09', 1, NULL, '2021-09-09 07:29:06', '2021-09-09 07:29:06'),
(14, 0, 4, 50000, 0, '2021-09-16', 1, NULL, '2021-09-16 16:38:02', '2021-09-16 16:38:02'),
(15, 20211001, 4, 37500, 0, '2021-09-16', 1, NULL, '2021-09-16 16:39:49', '2021-09-16 16:39:49'),
(16, 0, 5, 500, 0, '2021-09-16', 1, NULL, '2021-09-16 16:41:26', '2021-09-16 16:41:26'),
(17, 20211002, 5, 35000, 0, '2021-09-16', 1, NULL, '2021-09-16 16:42:52', '2021-09-16 16:42:52'),
(18, 11111, 4, 35000, 0, '2021-09-18', 1, NULL, '2021-09-18 16:07:56', '2021-09-18 16:07:56'),
(19, 1000001, 1, 19000, 0, '2021-09-21', 1, NULL, '2021-09-21 14:08:03', '2021-09-21 14:08:03'),
(20, 0, 6, 10000, 0, '2021-09-21', 1, NULL, '2021-09-21 14:09:31', '2021-09-21 14:09:31'),
(21, 100002, 6, 6000, 0, '2021-09-21', 1, NULL, '2021-09-21 14:10:06', '2021-09-21 14:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `receieve_printed_products`
--

CREATE TABLE `receieve_printed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice_no` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resellers`
--

CREATE TABLE `resellers` (
  `id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `email` text DEFAULT NULL,
  `phone` int(25) DEFAULT NULL,
  `password` text NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `bkash_no` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_models`
--

CREATE TABLE `reseller_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_order_details`
--

CREATE TABLE `reseller_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `reseller_id` int(11) NOT NULL,
  `total_percent` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `paid` int(11) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `paid_id` int(11) DEFAULT NULL,
  `advance` double(8,2) NOT NULL DEFAULT 0.00,
  `order_total` double(8,2) NOT NULL,
  `shipping_cost` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reseller_payments`
--

CREATE TABLE `reseller_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resller_id` int(11) NOT NULL,
  `paid_amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', 'admin', '2020-11-07 16:15:48', '2020-11-07 16:15:48'),
(2, 'Admin', 'admin', '2020-11-07 16:20:56', '2020-11-07 16:20:56'),
(3, 'Product and other\'s manager', 'admin', '2020-11-07 16:21:23', '2020-11-07 16:21:23'),
(4, 'Account Manager', 'admin', '2020-11-07 16:21:36', '2020-11-07 16:21:36'),
(5, 'Wholesale Manager', 'admin', '2020-11-21 12:53:25', '2020-11-21 12:53:25'),
(6, 'Reseller Manager', 'admin', '2020-11-29 15:54:58', '2020-11-29 15:54:58'),
(7, 'Only Wholesale Management', 'admin', '2020-12-13 09:21:07', '2020-12-13 09:21:07');

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
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 4),
(8, 5),
(9, 1),
(9, 4),
(9, 5),
(10, 1),
(10, 4),
(11, 1),
(11, 4),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(15, 1),
(16, 1),
(16, 4),
(17, 1),
(17, 4),
(18, 1),
(19, 1),
(20, 1),
(20, 4),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 4),
(26, 1),
(26, 4),
(27, 1),
(27, 3),
(28, 1),
(29, 1),
(29, 6),
(30, 1),
(30, 6),
(31, 1),
(31, 4),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 3),
(36, 1),
(37, 1),
(38, 1),
(38, 4),
(38, 5),
(38, 7);

-- --------------------------------------------------------

--
-- Table structure for table `salary_per_months`
--

CREATE TABLE `salary_per_months` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `month` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_type` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL COMMENT 'form_company_table',
  `paid_by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double(8,2) NOT NULL,
  `paid` double(8,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `create_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_campaigns`
--

CREATE TABLE `sale_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `background_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_width` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_campaigns`
--

INSERT INTO `sale_campaigns` (`id`, `name`, `expired_date`, `background_color`, `border_color`, `border_width`, `order_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Flash Sale', '2021-08-30', '#f7f7f7', '#7d57e5', '2', 1, 0, '2021-08-10 11:40:29', '2021-08-24 18:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL COMMENT 'from_sales',
  `product_id` int(11) NOT NULL COMMENT 'from_produts',
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `selling__offers`
--

CREATE TABLE `selling__offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `expire_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_infos`
--

CREATE TABLE `service_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fast_delivery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_prices` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secure_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stiching` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_infos`
--

INSERT INTO `service_infos` (`id`, `fast_delivery`, `best_prices`, `secure_payment`, `stiching`, `created_at`, `updated_at`) VALUES
(1, '<p>test</p>', '<p>tes</p>', '<p>test</p>', '<p>test</p>', NULL, '2021-10-18 07:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `url`, `slider_caption`, `status`, `position`, `created_at`, `updated_at`) VALUES
(16, 'images/slider/NxtZSVUvC7P0XdKXaGBZOdLDGXQ6KCMq3VaIUFDW.jpg', '#', NULL, 1, 1, '2021-08-15 05:52:39', '2021-09-29 12:33:12'),
(19, 'images/slider/EaoMwzXYELrZLmn2qcUkKsbebwyfCfmN4pP6XQkE.jpg', '#', NULL, 1, 1, '2021-09-29 11:38:00', '2021-09-29 12:32:59'),
(20, 'images/slider/tP4W6dRMn33uqoxxNclLll5wjlVyjBerdcCE61mE.jpg', '#', NULL, 1, 1, '2021-09-29 12:32:01', '2021-09-29 12:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `category_id`, `status`, `image`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(1, 'Panjabi', '1000-Panjabi', 7, 1, 'images/subCategory/udMAz0ssqP64HEzaNBsSZaHXnvuwAgLZ8OWPTUOf.jpg', NULL, NULL, '2021-10-05 07:20:30', '2021-10-05 07:20:30'),
(2, 'Shirt', '1001-Shirt', 7, 1, 'images/subCategory/J4Nib9fQQV7KGKWDVSmAegpCwkEqOx3wnEiutRrM.jpg', NULL, NULL, '2021-10-05 07:21:07', '2021-10-05 07:21:07'),
(3, 'Polo Shirt', '1002-Shirt', 7, 1, 'images/subCategory/C7bOXLGaF1c5NX7lnwBUsaSxJZKVaQ63iiuvsmvO.jpg', NULL, NULL, '2021-10-05 07:21:31', '2021-10-05 07:21:31'),
(4, 'Pant', '1003-Pant', 8, 1, 'images/subCategory/zdkAu7Taky2qQmSEqesO1GK86PbSEHfVbqJwudHM.jpg', NULL, NULL, '2021-10-05 07:21:54', '2021-10-05 07:21:54'),
(5, 'Hand Clock', '1004-Clock', 9, 1, 'images/subCategory/9CfxX1AhTyW7Cdls67B7PmOzyPC9QvVEzDics9Sf.jpg', NULL, NULL, '2021-10-05 07:22:37', '2021-10-05 07:22:37'),
(6, 'Bag', '1005-Bag', 9, 1, 'images/subCategory/9H0QqgWqBA2hdnN4EDPgjmYRFec1UkVUTClpg1mS.jpg', NULL, NULL, '2021-10-05 07:23:04', '2021-10-05 07:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cities`
--

CREATE TABLE `sub_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_cities`
--

INSERT INTO `sub_cities` (`id`, `city_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 63, 'Derai', 1, '2021-01-12 17:16:55', '2021-01-12 17:16:55'),
(4, 64, 'Balaganj', 1, '2021-01-12 17:38:21', '2021-01-12 17:38:21'),
(5, 64, 'Beanibazar', 1, '2021-01-12 17:38:43', '2021-01-12 17:38:43'),
(6, 64, 'Biswanath', 1, '2021-01-12 17:40:09', '2021-01-12 17:40:09'),
(7, 64, 'Companiganj', 1, '2021-01-12 17:41:43', '2021-01-12 17:41:43'),
(8, 64, 'Fenchuganj', 1, '2021-01-12 17:42:00', '2021-01-12 17:42:00'),
(9, 64, 'Golapganj', 1, '2021-01-12 17:42:16', '2021-01-12 17:42:16'),
(10, 64, 'Dakshin Surma Upazila', 1, '2021-01-12 17:44:27', '2021-01-12 17:44:27'),
(11, 64, 'Gowainghat Upazila‎', 1, '2021-01-12 17:45:02', '2021-01-12 17:45:02'),
(12, 64, 'Jaintiapur Upazila‎', 1, '2021-01-12 17:45:19', '2021-01-12 17:45:19'),
(13, 64, 'Kanaighat Upazila‎', 1, '2021-01-12 17:45:36', '2021-01-12 17:45:36'),
(14, 64, 'Osmani Nagar Upazila', 1, '2021-01-12 17:45:50', '2021-01-12 17:45:50'),
(15, 64, 'Zakiganj Upazila', 1, '2021-01-12 17:46:01', '2021-01-12 17:46:01'),
(16, 66, 'Savar', 1, '2021-01-12 17:47:47', '2021-01-13 02:06:38'),
(17, 66, 'Amin bazar', 1, '2021-01-12 17:48:00', '2021-01-13 02:15:42'),
(18, 66, 'Birulia', 1, '2021-01-12 17:48:10', '2021-01-13 02:14:46'),
(19, 66, 'Ashulia', 1, '2021-01-12 17:48:35', '2021-01-13 02:14:30'),
(20, 66, 'Shimulia', 1, '2021-01-12 17:48:45', '2021-01-13 02:14:57'),
(21, 66, 'Kaundia', 1, '2021-01-12 17:48:54', '2021-01-13 02:15:28'),
(22, 64, 'Sylhet Sadar', 1, '2021-01-12 17:49:57', '2021-01-12 17:49:57'),
(23, 63, 'Sunamganj sadar', 1, '2021-01-12 17:50:15', '2021-01-12 17:50:15'),
(24, 63, 'Chhatak Upazila‎', 1, '2021-01-12 17:53:07', '2021-01-12 17:53:07'),
(25, 63, 'Derai Upazila‎', 1, '2021-01-12 17:53:26', '2021-01-12 17:53:26'),
(26, 63, 'Dharampasha Upazila‎', 1, '2021-01-12 17:53:51', '2021-01-12 17:53:51'),
(27, 63, 'Jagannathpur Upazila‎', 1, '2021-01-12 17:55:06', '2021-01-12 17:55:06'),
(28, 62, 'Barlekha Upazila‎', 1, '2021-01-12 17:55:52', '2021-01-12 17:55:52'),
(29, 62, 'Moulvibazar sadar', 1, '2021-01-12 17:56:24', '2021-01-12 17:56:24'),
(30, 62, 'Juri Upazila‎', 1, '2021-01-12 17:56:38', '2021-01-12 17:56:38'),
(31, 62, 'Kamalganj Upazila', 1, '2021-01-12 17:56:51', '2021-01-12 17:56:51'),
(32, 62, 'Kulaura Upazila', 1, '2021-01-12 17:57:02', '2021-01-12 17:57:02'),
(33, 62, 'Rajnagar Upazila‎', 1, '2021-01-12 17:57:19', '2021-01-12 17:57:19'),
(34, 62, 'Srimangal Upazila‎', 1, '2021-01-12 17:57:30', '2021-01-12 17:57:30'),
(35, 61, 'Habiganj sadar', 1, '2021-01-12 17:58:18', '2021-01-12 17:58:18'),
(36, 61, 'Ajmiriganj Upazila', 1, '2021-01-12 17:58:28', '2021-01-12 17:58:28'),
(37, 61, 'Bahubal Upazila', 1, '2021-01-12 17:58:38', '2021-01-12 17:58:38'),
(38, 61, 'Baniachong Upazila', 1, '2021-01-12 17:58:50', '2021-01-12 17:58:50'),
(39, 61, 'Chunarughat Upazila', 1, '2021-01-12 17:59:02', '2021-01-12 17:59:02'),
(40, 61, 'Habiganj Sadar Upazila', 1, '2021-01-12 17:59:13', '2021-01-12 17:59:13'),
(41, 61, 'Lakhai Upazila', 1, '2021-01-12 17:59:23', '2021-01-12 17:59:23'),
(42, 61, 'Madhabpur Upazila', 1, '2021-01-12 17:59:34', '2021-01-12 17:59:34'),
(43, 61, 'Nabiganj Upazila', 1, '2021-01-12 17:59:53', '2021-01-12 17:59:53'),
(44, 60, 'Thakurgaon sadar', 1, '2021-01-12 18:00:49', '2021-01-12 18:00:49'),
(45, 60, 'Baliadangi Upazila', 1, '2021-01-12 18:01:00', '2021-01-12 18:01:00'),
(46, 60, 'Haripur Upazila', 1, '2021-01-12 18:01:12', '2021-01-12 18:01:12'),
(47, 60, 'Pirganj Upazila', 1, '2021-01-12 18:01:33', '2021-01-12 18:01:33'),
(48, 60, 'Ranisankail Upazila', 1, '2021-01-12 18:01:43', '2021-01-12 18:01:43'),
(49, 59, 'Rangpur sadar', 1, '2021-01-12 18:02:30', '2021-01-12 18:02:38'),
(50, 59, 'Badarganj Upazila', 1, '2021-01-12 18:02:53', '2021-01-12 18:02:53'),
(51, 59, 'Gangachara Upazila', 1, '2021-01-12 18:03:04', '2021-01-12 18:03:04'),
(52, 59, 'Kaunia Upazila', 1, '2021-01-12 18:03:16', '2021-01-12 18:03:16'),
(53, 59, 'Mithapukur Upazila', 1, '2021-01-12 18:03:28', '2021-01-12 18:03:28'),
(54, 59, 'Pirgacha Upazila', 1, '2021-01-12 18:03:44', '2021-01-12 18:03:44'),
(55, 59, 'Taraganj Upazila', 1, '2021-01-12 18:04:15', '2021-01-12 18:04:15'),
(56, 58, 'Panchagarh Sadar', 1, '2021-01-12 18:39:41', '2021-01-12 18:39:41'),
(57, 58, 'Atwari Upazila', 1, '2021-01-12 18:39:53', '2021-01-12 18:39:53'),
(58, 58, 'Boda Upazila', 1, '2021-01-12 18:40:04', '2021-01-12 18:40:04'),
(59, 58, 'Debiganj Upazila', 1, '2021-01-12 18:40:20', '2021-01-12 18:40:20'),
(60, 58, 'Tetulia Upazila', 1, '2021-01-12 18:40:32', '2021-01-12 18:40:32'),
(61, 57, 'Nilphamari Sadar Upazila', 1, '2021-01-12 18:40:59', '2021-01-12 18:40:59'),
(62, 57, 'Dimla Upazila', 1, '2021-01-12 18:41:27', '2021-01-12 18:41:27'),
(63, 57, 'Domar Upazila', 1, '2021-01-12 18:45:33', '2021-01-12 18:45:33'),
(64, 57, 'Jaldhaka Upazila', 1, '2021-01-12 18:45:51', '2021-01-12 18:45:51'),
(65, 57, 'Kishoreganj Upazila', 1, '2021-01-12 18:46:00', '2021-01-12 18:46:00'),
(66, 57, 'Saidpur Upazila', 1, '2021-01-12 18:46:12', '2021-01-12 18:46:12'),
(67, 1, 'Adabar Thana', 1, '2021-01-12 18:47:27', '2021-01-12 18:47:27'),
(68, 1, 'Azampur', 1, '2021-01-12 18:52:01', '2021-01-12 18:52:01'),
(69, 1, 'Badda Thana', 1, '2021-01-12 18:52:14', '2021-01-12 18:52:14'),
(70, 1, 'Bangsal', 1, '2021-01-12 18:52:33', '2021-01-12 18:52:33'),
(71, 1, 'Bimanbandar', 1, '2021-01-12 18:52:48', '2021-01-12 18:52:48'),
(72, 1, 'Cantonment', 1, '2021-01-12 18:53:01', '2021-01-12 18:53:01'),
(73, 1, 'Chowkbazar', 1, '2021-01-12 18:53:26', '2021-01-12 18:53:26'),
(74, 1, 'Darus Salam', 1, '2021-01-12 18:53:40', '2021-01-12 18:53:40'),
(75, 1, 'Lalmatia', 1, '2021-01-12 18:53:53', '2021-01-13 01:50:01'),
(76, 1, 'Dhanmondi', 1, '2021-01-12 18:54:07', '2021-01-12 18:54:07'),
(77, 1, 'Gendaria', 1, '2021-01-12 18:54:24', '2021-01-12 18:54:24'),
(78, 1, 'Gulshan-1', 1, '2021-01-12 18:55:25', '2021-01-12 18:55:25'),
(79, 1, 'Gulshan-2', 1, '2021-01-12 18:55:34', '2021-01-12 18:55:34'),
(80, 1, 'Hazaribagh', 1, '2021-01-12 18:56:05', '2021-01-12 18:56:05'),
(81, 1, 'Kadamtali', 1, '2021-01-12 18:57:29', '2021-01-12 18:57:29'),
(82, 1, 'Kafrul', 1, '2021-01-12 18:57:44', '2021-01-12 18:57:44'),
(83, 1, 'Kalabagan', 1, '2021-01-12 18:57:59', '2021-01-12 18:57:59'),
(84, 1, 'Khilgaon', 1, '2021-01-12 18:58:18', '2021-01-12 18:58:18'),
(85, 1, 'Khilkhet', 1, '2021-01-12 18:58:52', '2021-01-12 18:59:13'),
(86, 1, 'Kotwali', 1, '2021-01-12 18:59:32', '2021-01-12 18:59:32'),
(87, 1, 'Lalbagh', 1, '2021-01-12 18:59:50', '2021-01-12 18:59:50'),
(88, 1, 'Mirpur-1', 1, '2021-01-12 19:00:07', '2021-01-12 19:00:07'),
(89, 1, 'Mirpur-2', 1, '2021-01-12 19:00:18', '2021-01-12 19:00:18'),
(90, 1, 'Mirpur-6', 1, '2021-01-12 19:00:28', '2021-01-12 19:00:28'),
(91, 1, 'Mirpur-7', 1, '2021-01-12 19:00:41', '2021-01-12 19:00:41'),
(92, 1, 'Mirpur-10', 1, '2021-01-12 19:00:51', '2021-01-12 19:00:51'),
(93, 1, 'Mirpur-11', 1, '2021-01-12 19:01:02', '2021-01-12 19:01:02'),
(94, 1, 'Mirpur-12', 1, '2021-01-12 19:01:36', '2021-01-12 19:01:36'),
(95, 1, 'Mirpur-13', 1, '2021-01-12 19:01:56', '2021-01-12 19:01:56'),
(96, 1, 'Mirpur-14', 1, '2021-01-12 19:02:06', '2021-01-12 19:02:06'),
(97, 1, 'Mohammadpur', 1, '2021-01-12 19:02:45', '2021-01-12 19:02:45'),
(98, 1, 'Motijheel', 1, '2021-01-12 19:02:54', '2021-01-12 19:02:54'),
(99, 1, 'New Market', 1, '2021-01-12 19:03:06', '2021-01-12 19:03:06'),
(100, 1, 'Pallabi', 1, '2021-01-12 19:03:22', '2021-01-12 19:03:22'),
(101, 1, 'Paltan', 1, '2021-01-12 19:03:35', '2021-01-12 19:03:35'),
(102, 1, 'Panthapath', 1, '2021-01-12 19:03:46', '2021-01-12 19:03:46'),
(103, 1, 'Ramna', 1, '2021-01-12 19:04:08', '2021-01-12 19:04:08'),
(104, 1, 'Rampura', 1, '2021-01-12 19:04:20', '2021-01-12 19:04:20'),
(105, 1, 'Sabujbagh', 1, '2021-01-12 19:04:52', '2021-01-12 19:04:52'),
(106, 1, 'Shah Ali thana Mirpur', 1, '2021-01-12 19:05:10', '2021-01-12 19:05:10'),
(107, 1, 'Shahbagh', 1, '2021-01-12 19:05:20', '2021-01-12 19:05:20'),
(108, 1, 'Sher-e-Bangla Nagar', 1, '2021-01-12 19:07:00', '2021-01-12 19:07:00'),
(109, 1, 'Shyampur', 1, '2021-01-12 19:07:12', '2021-01-12 19:07:12'),
(110, 1, 'Nowabpur', 1, '2021-01-12 19:07:24', '2021-01-13 01:59:45'),
(111, 1, 'Tejgaon Industrial Area', 1, '2021-01-12 19:07:37', '2021-01-12 19:07:37'),
(112, 1, 'Tejgaon', 1, '2021-01-12 19:08:30', '2021-01-12 19:08:30'),
(113, 1, 'Turag Thana', 1, '2021-01-12 19:08:42', '2021-01-12 19:08:42'),
(114, 1, 'Uttar Khan', 1, '2021-01-12 19:08:56', '2021-01-12 19:08:56'),
(115, 1, 'Uttara', 1, '2021-01-12 19:09:18', '2021-01-12 19:09:18'),
(116, 1, 'Vatara Thana', 1, '2021-01-12 19:09:32', '2021-01-12 19:09:32'),
(117, 1, 'Wari', 1, '2021-01-12 19:09:43', '2021-01-12 19:09:43'),
(118, 1, 'Dhaka University', 1, '2021-01-12 19:10:03', '2021-01-12 19:10:03'),
(119, 1, 'Buet', 1, '2021-01-12 19:10:12', '2021-01-12 19:10:12'),
(120, 1, 'Bangladesh Sochibaloy', 1, '2021-01-12 19:10:29', '2021-01-12 19:10:29'),
(121, 1, 'Farmgate', 1, '2021-01-12 19:10:41', '2021-01-12 19:10:41'),
(122, 1, 'Elephant Road', 1, '2021-01-12 19:10:55', '2021-01-12 19:10:55'),
(123, 1, 'Segunbagicha', 1, '2021-01-12 19:11:12', '2021-01-12 19:11:12'),
(124, 1, 'Noya Paltan', 1, '2021-01-12 19:11:22', '2021-01-12 19:11:22'),
(125, 1, 'Purana Paltan', 1, '2021-01-12 19:11:32', '2021-01-12 19:11:32'),
(126, 1, 'Bongabazar', 1, '2021-01-12 19:11:43', '2021-01-12 19:11:43'),
(127, 1, 'Uttara Sector-1', 1, '2021-01-12 19:14:16', '2021-01-12 19:14:16'),
(128, 1, 'Uttara Sector-2', 1, '2021-01-12 19:14:23', '2021-01-12 19:14:23'),
(129, 1, 'Uttara Sector-3', 1, '2021-01-12 19:14:32', '2021-01-12 19:14:32'),
(130, 1, 'Uttara Sector-4', 1, '2021-01-12 19:14:39', '2021-01-12 19:14:39'),
(131, 1, 'Uttara Sector-5', 1, '2021-01-12 19:14:47', '2021-01-12 19:14:47'),
(132, 1, 'Uttara Sector-6', 1, '2021-01-12 19:14:54', '2021-01-12 19:14:54'),
(133, 1, 'Uttara Sector-7', 1, '2021-01-12 19:15:02', '2021-01-12 19:15:02'),
(134, 1, 'Uttara Sector-8', 1, '2021-01-12 19:15:09', '2021-01-12 19:15:09'),
(135, 1, 'Uttara Sector-9', 1, '2021-01-12 19:15:16', '2021-01-12 19:15:16'),
(136, 1, 'Uttara Sector-10', 1, '2021-01-12 19:15:23', '2021-01-12 19:15:23'),
(137, 1, 'Uttara Sector-11', 1, '2021-01-12 19:15:29', '2021-01-12 19:15:29'),
(138, 1, 'Uttara Sector-12', 1, '2021-01-12 19:15:34', '2021-01-12 19:15:34'),
(139, 1, 'Ashkona', 1, '2021-01-12 19:16:13', '2021-01-12 19:16:13'),
(140, 1, 'Jatio Songsod', 1, '2021-01-12 19:17:10', '2021-01-12 19:17:10'),
(141, 1, 'Baridhara', 1, '2021-01-12 19:17:54', '2021-01-12 19:17:54'),
(142, 1, 'Bashundhora R/A', 1, '2021-01-12 19:18:16', '2021-01-12 19:18:16'),
(143, 16, 'Kamalnagar', 1, '2021-01-12 19:18:22', '2021-01-12 19:18:22'),
(144, 16, 'Lakshmipur Sadar', 1, '2021-01-12 19:18:48', '2021-01-12 19:18:48'),
(145, 1, 'Rajarbag', 1, '2021-01-12 19:18:51', '2021-01-12 19:18:51'),
(146, 1, 'Shantinagar', 1, '2021-01-12 19:18:59', '2021-01-12 19:18:59'),
(147, 16, 'Raipur', 1, '2021-01-12 19:19:17', '2021-01-12 19:19:17'),
(148, 1, 'Shahjahanpur', 1, '2021-01-12 19:19:18', '2021-01-12 19:19:18'),
(149, 1, 'Jatrabari', 1, '2021-01-12 19:19:29', '2021-01-12 19:19:29'),
(150, 16, 'Ramgati', 1, '2021-01-12 19:19:32', '2021-01-12 19:19:32'),
(151, 1, 'Sayedabad', 1, '2021-01-12 19:19:39', '2021-01-12 19:19:39'),
(152, 16, 'Ramganj', 1, '2021-01-12 19:19:45', '2021-01-12 19:19:45'),
(153, 1, 'Basabo', 1, '2021-01-12 19:20:00', '2021-01-12 19:20:00'),
(154, 1, 'Malibagh', 1, '2021-01-12 19:20:19', '2021-01-12 19:20:19'),
(155, 1, 'Shantibagh', 1, '2021-01-12 19:20:41', '2021-01-12 19:20:41'),
(156, 1, 'Moghbazar', 1, '2021-01-12 19:20:52', '2021-01-12 19:20:52'),
(157, 1, 'Kawran bazar', 1, '2021-01-12 19:21:02', '2021-01-12 19:21:02'),
(158, 1, 'Zighatola', 1, '2021-01-12 19:21:18', '2021-01-12 19:21:18'),
(159, 12, 'Comilla Sadar', 1, '2021-01-12 19:21:20', '2021-01-12 19:21:20'),
(160, 1, 'Gulisthan', 1, '2021-01-12 19:21:32', '2021-01-12 19:21:32'),
(161, 1, 'Islampur', 1, '2021-01-12 19:21:40', '2021-01-12 19:21:40'),
(162, 1, 'Bonosri', 1, '2021-01-12 19:22:02', '2021-01-12 19:22:02'),
(163, 12, 'Debidwar', 1, '2021-01-12 19:22:10', '2021-01-12 19:22:10'),
(164, 1, 'Aftabnagar', 1, '2021-01-12 19:22:24', '2021-01-12 19:22:24'),
(165, 1, 'Mohakhali', 1, '2021-01-12 19:23:10', '2021-01-12 19:23:10'),
(166, 12, 'Brahmanpara', 1, '2021-01-12 19:23:13', '2021-01-12 19:23:13'),
(167, 1, 'Arambag', 1, '2021-01-12 19:23:21', '2021-01-12 19:23:21'),
(168, 12, 'Barura', 1, '2021-01-12 19:23:35', '2021-01-12 19:23:35'),
(169, 12, 'Chandina', 1, '2021-01-12 19:23:52', '2021-01-12 19:23:52'),
(170, 1, 'Nikunja-1', 1, '2021-01-12 19:23:55', '2021-01-12 19:23:55'),
(171, 1, 'Nikunja-2', 1, '2021-01-12 19:24:02', '2021-01-12 19:24:02'),
(172, 1, 'namapara', 1, '2021-01-12 19:24:13', '2021-01-12 19:24:13'),
(173, 1, 'Easter Housing-Mirpur', 1, '2021-01-12 19:24:43', '2021-01-12 19:24:43'),
(174, 1, 'Duaripara', 1, '2021-01-12 19:24:53', '2021-01-12 19:24:53'),
(175, 1, 'Mirpur Cantonment', 1, '2021-01-12 19:25:12', '2021-01-12 19:25:12'),
(176, 12, 'Chauddagram', 1, '2021-01-12 19:25:35', '2021-01-12 19:25:35'),
(177, 12, 'Daudkandi', 1, '2021-01-12 19:25:47', '2021-01-12 19:25:47'),
(178, 1, 'Rajabazar', 1, '2021-01-12 19:25:52', '2021-01-12 19:25:52'),
(179, 12, 'Homna', 1, '2021-01-12 19:25:58', '2021-01-12 19:25:58'),
(180, 12, 'Laksam', 1, '2021-01-12 19:26:11', '2021-01-12 19:26:11'),
(181, 1, 'Sukrabad', 1, '2021-01-12 19:26:12', '2021-01-12 19:26:12'),
(182, 12, 'Muradnagar', 1, '2021-01-12 19:26:26', '2021-01-12 19:26:26'),
(183, 1, 'Katabon', 1, '2021-01-12 19:26:30', '2021-01-12 19:26:30'),
(184, 1, 'Hatirpool', 1, '2021-01-12 19:26:39', '2021-01-12 19:26:39'),
(185, 12, 'Nangalkot', 1, '2021-01-12 19:26:53', '2021-01-12 19:26:53'),
(186, 12, 'Adarsha Sadar', 1, '2021-01-12 19:27:44', '2021-01-12 19:27:44'),
(187, 12, 'Meghna', 1, '2021-01-12 19:27:57', '2021-01-12 19:27:57'),
(188, 12, 'Monohargonj', 1, '2021-01-12 19:28:15', '2021-01-12 19:28:15'),
(189, 12, 'Sadar south upazila', 1, '2021-01-12 19:28:36', '2021-01-12 19:28:36'),
(190, 12, 'Titas', 1, '2021-01-12 19:28:48', '2021-01-12 19:28:48'),
(191, 12, 'Burichang', 1, '2021-01-12 19:29:06', '2021-01-12 19:29:06'),
(192, 12, 'Lalmai', 1, '2021-01-12 19:29:18', '2021-01-12 19:29:18'),
(193, 1, 'Mogbazar', 1, '2021-01-12 19:30:10', '2021-01-12 19:30:10'),
(194, 14, 'Feni Sadar', 1, '2021-01-12 19:30:16', '2021-01-12 19:30:16'),
(195, 1, 'Chowdhuripara', 1, '2021-01-12 19:30:20', '2021-01-12 19:30:20'),
(196, 14, 'Sonagazi', 1, '2021-01-12 19:30:29', '2021-01-12 19:30:29'),
(197, 1, 'Tejkunipara', 1, '2021-01-12 19:30:38', '2021-01-12 19:30:38'),
(198, 14, 'Fulgazi', 1, '2021-01-12 19:30:46', '2021-01-12 19:30:46'),
(199, 1, 'Mohakhali DOHS', 1, '2021-01-12 19:31:11', '2021-01-12 19:31:11'),
(200, 14, 'Parshuram', 1, '2021-01-12 19:31:15', '2021-01-12 19:31:15'),
(201, 1, 'Mirpur DOHS', 1, '2021-01-12 19:31:27', '2021-01-12 19:31:27'),
(202, 1, 'Baridhara DOHS', 1, '2021-01-12 19:31:36', '2021-01-12 19:31:36'),
(203, 14, 'Daganbhuiyan', 1, '2021-01-12 19:31:59', '2021-01-12 19:31:59'),
(204, 14, 'Feni Pourashava', 1, '2021-01-12 19:32:36', '2021-01-12 19:32:36'),
(205, 1, 'Maniknagor', 1, '2021-01-12 19:32:36', '2021-01-12 19:32:36'),
(206, 9, 'Brahmanbaria Sadar', 1, '2021-01-12 19:34:02', '2021-01-12 19:34:10'),
(207, 9, 'Kasbo', 1, '2021-01-12 19:35:06', '2021-01-12 19:35:06'),
(208, 9, 'Nasirnagar', 1, '2021-01-12 19:35:16', '2021-01-12 19:35:16'),
(209, 9, 'Sarail', 1, '2021-01-12 19:35:35', '2021-01-12 19:35:35'),
(210, 9, 'Ashuganj', 1, '2021-01-12 19:35:46', '2021-01-12 19:35:46'),
(211, 9, 'Akhaura', 1, '2021-01-12 19:36:06', '2021-01-12 19:36:06'),
(212, 9, 'Nabinagar', 1, '2021-01-12 19:36:21', '2021-01-12 19:36:21'),
(213, 9, 'Bancharampur', 1, '2021-01-12 19:36:55', '2021-01-12 19:36:55'),
(214, 9, 'Bijoynagar', 1, '2021-01-12 19:37:12', '2021-01-12 19:37:12'),
(215, 1, 'Golapbag', 1, '2021-01-12 19:37:34', '2021-01-12 19:37:34'),
(216, 1, 'Mugda', 1, '2021-01-12 19:37:55', '2021-01-12 19:37:55'),
(217, 1, 'Tikatuli', 1, '2021-01-12 19:38:08', '2021-01-12 19:38:08'),
(218, 1, 'nakhalpara', 1, '2021-01-12 19:39:16', '2021-01-12 19:39:16'),
(219, 1, 'Niketon', 1, '2021-01-12 19:39:57', '2021-01-12 19:39:57'),
(220, 1, 'Ibrahirpur', 1, '2021-01-12 19:40:19', '2021-01-12 19:40:19'),
(221, 1, 'Shewrapara', 1, '2021-01-12 19:40:37', '2021-01-12 19:40:37'),
(222, 1, 'Kazipara', 1, '2021-01-12 19:40:49', '2021-01-12 19:40:49'),
(223, 1, 'Monipur', 1, '2021-01-12 19:41:07', '2021-01-12 19:41:07'),
(224, 1, 'Ahmed Nagar', 1, '2021-01-12 19:41:36', '2021-01-12 19:41:36'),
(225, 1, 'Manikdi', 1, '2021-01-12 19:42:02', '2021-01-12 19:42:02'),
(226, 1, 'Balughat', 1, '2021-01-12 19:42:15', '2021-01-12 19:42:15'),
(227, 1, 'Kurmitola', 1, '2021-01-12 19:42:33', '2021-01-12 19:42:33'),
(228, 1, 'Azompur-South', 1, '2021-01-12 19:42:57', '2021-01-12 19:42:57'),
(229, 1, 'Azompur-North', 1, '2021-01-12 19:43:06', '2021-01-12 19:43:16'),
(230, 1, 'Mollapara', 1, '2021-01-12 19:43:29', '2021-01-12 19:43:29'),
(231, 1, 'Moddhopara', 1, '2021-01-12 19:43:39', '2021-01-12 19:43:39'),
(232, 1, 'Doyaganj', 1, '2021-01-12 19:44:37', '2021-01-12 19:44:37'),
(233, 1, 'Dhaka Cantonment', 1, '2021-01-12 19:44:46', '2021-01-13 02:01:17'),
(234, 1, 'Narinda', 1, '2021-01-12 19:44:54', '2021-01-12 19:44:54'),
(235, 1, 'TT para', 1, '2021-01-12 19:45:09', '2021-01-12 19:45:09'),
(236, 17, 'Noakhali Sadar', 1, '2021-01-12 19:45:49', '2021-01-12 19:45:49'),
(237, 1, 'Komolapur', 1, '2021-01-12 19:45:57', '2021-01-12 19:45:57'),
(238, 1, 'Baily Road', 1, '2021-01-12 19:46:20', '2021-01-12 19:46:20'),
(239, 2, 'Barguna Sadar', 1, '2021-01-12 19:48:48', '2021-01-12 19:48:48'),
(240, 2, 'Amtali', 1, '2021-01-12 19:49:06', '2021-01-12 19:49:06'),
(241, 2, 'Betagi', 1, '2021-01-12 19:49:24', '2021-01-12 19:49:24'),
(242, 2, 'Bamna', 1, '2021-01-12 19:49:34', '2021-01-12 19:49:34'),
(243, 2, 'Pathorghata', 1, '2021-01-12 19:49:51', '2021-01-12 19:49:51'),
(244, 2, 'Taltali', 1, '2021-01-12 19:50:10', '2021-01-12 19:50:10'),
(245, 3, 'Agailjhara Upazila', 1, '2021-01-12 19:51:42', '2021-01-12 19:51:42'),
(246, 3, 'Barisal Sadar', 1, '2021-01-12 19:51:55', '2021-01-12 19:51:55'),
(247, 3, 'Babuganj Upazila', 1, '2021-01-12 19:52:15', '2021-01-12 19:52:15'),
(248, 3, 'Bakerganj Upazila', 1, '2021-01-12 19:52:27', '2021-01-12 19:52:27'),
(249, 3, 'Banaripara Upazila', 1, '2021-01-12 19:52:39', '2021-01-12 19:52:39'),
(250, 3, 'Gournadi Upazila', 1, '2021-01-12 19:52:52', '2021-01-12 19:52:52'),
(251, 3, 'Hizla Upazila', 1, '2021-01-12 19:53:01', '2021-01-12 19:53:01'),
(252, 3, 'Mehendiganj Upazila', 1, '2021-01-12 19:53:13', '2021-01-12 19:53:13'),
(253, 3, 'Muladi Upazila', 1, '2021-01-12 19:53:31', '2021-01-12 19:53:31'),
(254, 3, 'Wazirpur Upazila', 1, '2021-01-12 19:53:43', '2021-01-12 19:53:43'),
(255, 17, 'Sonaimuri', 1, '2021-01-12 19:54:45', '2021-01-12 19:54:45'),
(256, 4, 'Bhola Sadar', 1, '2021-01-12 19:54:59', '2021-01-12 19:54:59'),
(257, 4, 'Borhanuddin Upazila', 1, '2021-01-12 19:55:10', '2021-01-12 19:55:10'),
(258, 17, 'Chatkhil', 1, '2021-01-12 19:55:17', '2021-01-12 19:55:17'),
(259, 4, 'Char Fasson Upazila', 1, '2021-01-12 19:55:21', '2021-01-12 19:55:21'),
(260, 4, 'Daulatkhan Upazila', 1, '2021-01-12 19:55:32', '2021-01-12 19:55:32'),
(261, 4, 'Lalmohan Upazila', 1, '2021-01-12 19:55:43', '2021-01-12 19:55:43'),
(262, 4, 'Manpura Upazila', 1, '2021-01-12 19:55:55', '2021-01-12 19:55:55'),
(263, 17, 'Senbng', 1, '2021-01-12 19:56:05', '2021-01-12 19:56:05'),
(264, 4, 'Tazumuddin Upazila', 1, '2021-01-12 19:56:06', '2021-01-12 19:56:06'),
(265, 17, 'Kabirhat', 1, '2021-01-12 19:56:45', '2021-01-12 19:56:45'),
(266, 17, 'Subarnachar', 1, '2021-01-12 19:57:36', '2021-01-12 19:57:36'),
(267, 5, 'Jhalokathi Sadar', 1, '2021-01-12 19:57:38', '2021-01-12 19:57:38'),
(268, 5, 'Kathalia', 1, '2021-01-12 19:58:04', '2021-01-12 19:58:04'),
(269, 17, 'Hatia', 1, '2021-01-12 19:58:15', '2021-01-12 19:58:15'),
(270, 5, 'Nalchity', 1, '2021-01-12 19:58:20', '2021-01-12 19:58:20'),
(271, 5, 'Rajapur', 1, '2021-01-12 19:58:36', '2021-01-12 19:58:36'),
(272, 17, 'Begumganj', 1, '2021-01-12 19:58:39', '2021-01-12 19:58:39'),
(273, 6, 'Patuakhali Sadar', 1, '2021-01-12 19:59:26', '2021-01-12 19:59:26'),
(274, 6, 'Bauphal Upazila', 1, '2021-01-12 19:59:38', '2021-01-12 19:59:38'),
(275, 6, 'Dashmina Upazila', 1, '2021-01-12 19:59:51', '2021-01-12 19:59:51'),
(276, 6, 'Dumki Upazila', 1, '2021-01-12 20:00:09', '2021-01-12 20:00:09'),
(277, 6, 'Galachipa Upazila', 1, '2021-01-12 20:00:18', '2021-01-12 20:00:18'),
(278, 6, 'Kalapara Upazila', 1, '2021-01-12 20:00:58', '2021-01-12 20:00:58'),
(279, 6, 'Mirzaganj Upazila', 1, '2021-01-12 20:01:10', '2021-01-12 20:01:10'),
(280, 6, 'Rangabali Upazila', 1, '2021-01-12 20:01:26', '2021-01-12 20:01:26'),
(281, 7, 'Pirojpur Sadar', 1, '2021-01-12 20:02:10', '2021-01-12 20:02:10'),
(282, 7, 'Bhandaria Upazila', 1, '2021-01-12 20:02:22', '2021-01-12 20:02:22'),
(283, 7, 'Indurkani Upazila', 1, '2021-01-12 20:02:36', '2021-01-12 20:02:36'),
(284, 7, 'Kawkhali Upazila', 1, '2021-01-12 20:02:54', '2021-01-12 20:02:54'),
(285, 7, 'Mathbaria Upazila', 1, '2021-01-12 20:03:06', '2021-01-12 20:03:06'),
(286, 7, 'Nazirpur Upazila', 1, '2021-01-12 20:03:19', '2021-01-12 20:03:19'),
(289, 7, 'Nesarabad', 1, '2021-01-12 20:05:49', '2021-01-12 20:05:49'),
(290, 8, 'Ali Kadam Upazila', 1, '2021-01-12 20:07:31', '2021-01-12 20:07:31'),
(291, 8, 'Bandarban Sadar', 1, '2021-01-12 20:07:58', '2021-01-12 20:07:58'),
(292, 10, 'Chandpur Sadar', 1, '2021-01-12 20:09:25', '2021-01-12 20:16:41'),
(293, 8, 'Lama Upazila', 1, '2021-01-12 20:09:41', '2021-01-12 20:09:41'),
(294, 10, 'Kachua', 1, '2021-01-12 20:09:49', '2021-01-12 20:09:49'),
(295, 10, 'Haimchar', 1, '2021-01-12 20:10:12', '2021-01-12 20:10:12'),
(296, 8, 'Naikhongchhari Upazila', 1, '2021-01-12 20:10:42', '2021-01-12 20:10:42'),
(297, 8, 'Rowangchhari Upazila', 1, '2021-01-12 20:11:19', '2021-01-12 20:11:19'),
(298, 8, 'Ruma Upazila', 1, '2021-01-12 20:11:31', '2021-01-12 20:11:31'),
(299, 8, 'Thanchi Upazila', 1, '2021-01-12 20:11:42', '2021-01-12 20:11:42'),
(300, 10, 'Matlab South', 1, '2021-01-12 20:12:30', '2021-01-12 20:12:30'),
(301, 10, 'Hajiganj', 1, '2021-01-12 20:12:58', '2021-01-12 20:12:58'),
(302, 11, 'Akbarshah Thana', 1, '2021-01-12 20:13:26', '2021-01-12 20:13:26'),
(303, 11, 'Bakoliya Thana', 1, '2021-01-12 20:13:38', '2021-01-12 20:13:38'),
(304, 11, 'Bandar Thana', 1, '2021-01-12 20:13:51', '2021-01-12 20:13:51'),
(305, 11, 'Bayazid Thana', 1, '2021-01-12 20:14:02', '2021-01-12 20:14:02'),
(306, 11, 'Bhujpur Thana', 1, '2021-01-12 20:14:13', '2021-01-12 20:14:13'),
(307, 10, 'Matlab North', 1, '2021-01-12 20:14:44', '2021-01-12 20:14:44'),
(308, 11, 'Chandgaon Thana', 1, '2021-01-12 20:14:47', '2021-01-12 20:14:47'),
(309, 11, 'Double Mooring Thana', 1, '2021-01-12 20:14:58', '2021-01-12 20:14:58'),
(310, 11, 'EPZ Thana', 1, '2021-01-12 20:15:10', '2021-01-12 20:15:10'),
(311, 11, 'Halishahar Thana', 1, '2021-01-12 20:15:20', '2021-01-12 20:15:20'),
(312, 10, 'Faridgonj', 1, '2021-01-12 20:15:31', '2021-01-12 20:15:31'),
(313, 11, 'Karnaphuli Upazila', 1, '2021-01-12 20:15:37', '2021-01-12 20:15:37'),
(314, 11, 'Khulshi Thana', 1, '2021-01-12 20:15:48', '2021-01-12 20:15:48'),
(315, 11, 'Kotwali Thana (Chittagong)', 1, '2021-01-12 20:15:58', '2021-01-12 20:15:58'),
(316, 11, 'Pahartali Thana', 1, '2021-01-12 20:16:10', '2021-01-12 20:16:10'),
(317, 11, 'Panchlaish Thana', 1, '2021-01-12 20:16:21', '2021-01-12 20:16:21'),
(318, 11, 'Patenga Thana', 1, '2021-01-12 20:16:31', '2021-01-12 20:16:31'),
(319, 13, 'Chakaria Upazila', 1, '2021-01-12 20:17:26', '2021-01-12 20:17:26'),
(320, 13, 'Cox\'s Bazar Sadar', 1, '2021-01-12 20:17:58', '2021-01-12 20:17:58'),
(321, 13, 'Kutubdia Upazila', 1, '2021-01-12 20:18:14', '2021-01-12 20:18:14'),
(322, 13, 'Moheshkhali Upazila', 1, '2021-01-12 20:18:28', '2021-01-12 20:18:28'),
(323, 13, 'Pekua Upazila', 1, '2021-01-12 20:18:44', '2021-01-12 20:18:44'),
(324, 13, 'Ramu Upazila', 1, '2021-01-12 20:19:03', '2021-01-12 20:19:03'),
(325, 13, 'Teknaf Upazila', 1, '2021-01-12 20:19:26', '2021-01-12 20:19:26'),
(326, 13, 'Ukhia Upazila', 1, '2021-01-12 20:19:38', '2021-01-12 20:19:38'),
(327, 16, 'Raipur Upazila', 1, '2021-01-12 20:21:20', '2021-01-12 20:21:20'),
(328, 16, 'Kamalnagar Upazila', 1, '2021-01-12 20:22:20', '2021-01-12 20:22:20'),
(329, 16, 'Ramganj Upazila', 1, '2021-01-12 20:23:03', '2021-01-12 20:23:03'),
(330, 16, 'Ramgati Upazila', 1, '2021-01-12 20:23:16', '2021-01-12 20:23:16'),
(331, 16, 'Chandraganj Thana', 1, '2021-01-12 20:23:32', '2021-01-12 20:23:32'),
(332, 53, 'Biral Upazila', 1, '2021-01-12 20:25:41', '2021-01-12 20:25:41'),
(333, 53, 'Birampur Upazila', 1, '2021-01-12 20:25:59', '2021-01-12 20:25:59'),
(334, 53, 'Birganj Upazila', 1, '2021-01-12 20:26:17', '2021-01-12 20:26:17'),
(335, 53, 'Bochaganj Upazila', 1, '2021-01-12 20:26:46', '2021-01-12 20:26:46'),
(336, 53, 'Chirirbandar Upazila', 1, '2021-01-12 20:26:59', '2021-01-12 20:26:59'),
(337, 53, 'Dinajpur Sadar Upazila', 1, '2021-01-12 20:27:11', '2021-01-12 20:27:11'),
(338, 53, 'Fulbari Upazila', 1, '2021-01-12 20:27:22', '2021-01-12 20:27:22'),
(339, 53, 'Ghoraghat Upazila', 1, '2021-01-12 20:27:33', '2021-01-12 20:27:33'),
(340, 53, 'Hakimpur Upazila', 1, '2021-01-12 20:27:47', '2021-01-12 20:27:47'),
(341, 53, 'Kaharole Upazila', 1, '2021-01-12 20:27:58', '2021-01-12 20:27:58'),
(342, 53, 'Khansama Upazila', 1, '2021-01-12 20:28:09', '2021-01-12 20:28:09'),
(343, 53, 'Nawabganj Upazila', 1, '2021-01-12 20:28:22', '2021-01-12 20:28:22'),
(344, 53, 'Parbatipur Upazila', 1, '2021-01-12 20:28:36', '2021-01-12 20:28:36'),
(345, 17, 'Companiganj', 1, '2021-01-12 20:33:43', '2021-01-12 20:33:43'),
(346, 55, 'Kurigram Sadar', 1, '2021-01-12 20:38:22', '2021-01-12 20:38:22'),
(347, 55, 'Bhurungamari Upazila', 1, '2021-01-12 20:39:01', '2021-01-12 20:39:01'),
(348, 55, 'Bhurungamari Upazila', 1, '2021-01-12 20:39:42', '2021-01-12 20:39:42'),
(349, 55, 'Char Rajibpur Upazila', 1, '2021-01-12 20:39:57', '2021-01-12 20:39:57'),
(350, 55, 'Chilmari Upazila', 1, '2021-01-12 20:40:23', '2021-01-12 20:40:23'),
(351, 55, 'Nageshwari Upazila', 1, '2021-01-12 20:40:49', '2021-01-12 20:40:49'),
(352, 55, 'Phulbari Upazila', 1, '2021-01-12 20:42:49', '2021-01-12 20:42:49'),
(353, 55, 'Rajarhat Upazila', 1, '2021-01-12 20:43:05', '2021-01-12 20:43:05'),
(354, 55, 'Raomari Upazila', 1, '2021-01-12 20:43:18', '2021-01-12 20:43:18'),
(355, 55, 'Ulipur Upazila', 1, '2021-01-12 20:43:32', '2021-01-12 20:43:32'),
(356, 56, 'Lalmonirhat sadar', 1, '2021-01-12 20:44:09', '2021-01-12 20:44:09'),
(357, 56, 'Aditmari Upazila‎', 1, '2021-01-12 20:44:54', '2021-01-12 20:44:54'),
(358, 56, 'Hatibandha Upazila', 1, '2021-01-12 20:45:08', '2021-01-12 20:45:08'),
(359, 56, 'Kaliganj Upazila', 1, '2021-01-12 20:45:23', '2021-01-12 20:45:23'),
(360, 56, 'Patgram Upazila', 1, '2021-01-12 20:45:37', '2021-01-12 20:45:37'),
(361, 48, 'Natore Sadar', 1, '2021-01-12 20:46:28', '2021-01-12 20:46:28'),
(362, 20, 'Gazipur Sadar', 1, '2021-01-12 20:55:26', '2021-01-12 20:55:26'),
(363, 20, 'Kapasia Upazila‎', 1, '2021-01-12 20:56:15', '2021-01-12 20:56:15'),
(364, 20, 'Kaliakair Upazila', 1, '2021-01-12 20:56:25', '2021-01-12 20:56:25'),
(365, 20, 'Kaliganj Upazila', 1, '2021-01-12 20:56:37', '2021-01-12 20:56:37'),
(366, 20, 'Kapasia Upazila', 1, '2021-01-12 20:56:47', '2021-01-12 20:56:47'),
(367, 20, 'Sreepur Upazila', 1, '2021-01-12 20:56:59', '2021-01-12 20:56:59'),
(368, 27, 'Narsingdi Sadar', 1, '2021-01-12 20:58:06', '2021-01-12 20:58:06'),
(369, 27, 'Belabo Upazila', 1, '2021-01-12 20:58:18', '2021-01-12 20:58:18'),
(370, 27, 'Monohardi Upazila', 1, '2021-01-12 20:58:29', '2021-01-12 20:58:29'),
(371, 27, 'Palash Upazila', 1, '2021-01-12 20:58:42', '2021-01-12 20:58:42'),
(372, 27, 'Raipura Upazila', 1, '2021-01-12 20:58:51', '2021-01-12 20:59:01'),
(373, 27, 'Shibpur Upazila', 1, '2021-01-12 20:59:31', '2021-01-12 20:59:31'),
(374, 51, 'Rajshahi Sadar', 1, '2021-01-12 21:02:03', '2021-01-12 21:02:03'),
(375, 51, 'Bagha Upazila', 1, '2021-01-12 21:02:22', '2021-01-12 21:02:22'),
(376, 51, 'Bagmara Upazila', 1, '2021-01-12 21:02:34', '2021-01-12 21:02:34'),
(377, 51, 'Boalia Thana', 1, '2021-01-12 21:02:45', '2021-01-12 21:02:45'),
(378, 51, 'Charghat Upazila', 1, '2021-01-12 21:02:55', '2021-01-12 21:02:55'),
(379, 51, 'Durgapur Upazila, Rajshahi', 1, '2021-01-12 21:03:09', '2021-01-12 21:03:09'),
(380, 51, 'Godagari Upazila', 1, '2021-01-12 21:03:19', '2021-01-12 21:03:19'),
(381, 51, 'Mohanpur Upazila', 1, '2021-01-12 21:03:29', '2021-01-12 21:03:29'),
(382, 51, 'Paba Upazila', 1, '2021-01-12 21:03:39', '2021-01-12 21:03:39'),
(383, 51, 'Puthia Upazila', 1, '2021-01-12 21:03:51', '2021-01-12 21:03:51'),
(384, 51, 'Shah Makhdum Thana', 1, '2021-01-12 21:04:01', '2021-01-12 21:04:01'),
(385, 51, 'Tanore Upazila', 1, '2021-01-12 21:04:14', '2021-01-12 21:04:14'),
(386, 19, 'Alfadanga Upazila', 1, '2021-01-12 21:04:45', '2021-01-12 21:04:45'),
(387, 19, 'Bhanga Upazila', 1, '2021-01-12 21:04:55', '2021-01-12 21:04:55'),
(388, 19, 'Boalmari Upazila', 1, '2021-01-12 21:05:04', '2021-01-12 21:05:04'),
(389, 19, 'Charbhadrasan Upazila', 1, '2021-01-12 21:05:14', '2021-01-12 21:05:14'),
(390, 19, 'Faridpur Sadar', 1, '2021-01-12 21:05:26', '2021-01-12 21:05:26'),
(391, 19, 'Madhukhali Upazila', 1, '2021-01-12 21:05:36', '2021-01-12 21:05:36'),
(392, 19, 'Nagarkanda Upazila', 1, '2021-01-12 21:05:46', '2021-01-12 21:05:46'),
(393, 19, 'Sadarpur Upazila', 1, '2021-01-12 21:05:54', '2021-01-12 21:05:54'),
(394, 19, 'Saltha Upazila', 1, '2021-01-12 21:06:04', '2021-01-12 21:06:04'),
(395, 45, 'Adamdighi Upazila', 1, '2021-01-12 21:06:55', '2021-01-12 21:06:55'),
(396, 45, 'Bogura Sadar', 1, '2021-01-12 21:07:12', '2021-01-12 21:07:12'),
(397, 45, 'Dhunat Upazila', 1, '2021-01-12 21:07:23', '2021-01-12 21:07:23'),
(398, 45, 'Dhupchanchia Upazila', 1, '2021-01-12 21:07:33', '2021-01-12 21:07:33'),
(399, 45, 'Gabtali Upazila', 1, '2021-01-12 21:07:43', '2021-01-12 21:07:43'),
(400, 45, 'Kahaloo Upazila', 1, '2021-01-12 21:07:54', '2021-01-12 21:07:54'),
(401, 45, 'Nandigram Upazila', 1, '2021-01-12 21:08:04', '2021-01-12 21:08:04'),
(402, 45, 'Sariakandi Upazila', 1, '2021-01-12 21:08:16', '2021-01-12 21:08:16'),
(403, 45, 'Shajahanpur Upazila', 1, '2021-01-12 21:08:26', '2021-01-12 21:08:26'),
(404, 45, 'Sherpur', 1, '2021-01-12 21:08:46', '2021-01-12 21:08:46'),
(405, 45, 'Shibganj Upazila, Bogra', 1, '2021-01-12 21:08:56', '2021-01-12 21:08:56'),
(406, 45, 'Sonatala Upazila', 1, '2021-01-12 21:09:05', '2021-01-12 21:09:05'),
(407, 49, 'Chapainawabganj Sadar', 1, '2021-01-12 21:09:46', '2021-01-12 21:09:46'),
(408, 49, 'Bholahat Upazila', 1, '2021-01-12 21:10:36', '2021-01-12 21:10:36'),
(409, 49, 'Dogachi', 1, '2021-01-12 21:10:49', '2021-01-12 21:10:49'),
(410, 49, 'Gomostapur Upazila', 1, '2021-01-12 21:10:58', '2021-01-12 21:10:58'),
(411, 49, 'Nachol Upazila', 1, '2021-01-12 21:11:08', '2021-01-12 21:11:08'),
(412, 49, 'Shibganj Upazila, Chapai Nawabganj', 1, '2021-01-12 21:11:17', '2021-01-12 21:11:17'),
(413, 9, 'Kasba Upazila', 1, '2021-01-12 21:28:00', '2021-01-12 21:28:00'),
(414, 18, 'Rangamati Sadar', 1, '2021-01-12 21:29:00', '2021-01-12 21:29:00'),
(415, 9, 'Akhaura Upazila', 1, '2021-01-12 21:29:07', '2021-01-12 21:29:07'),
(416, 9, 'Ashuganj Upazila', 1, '2021-01-12 21:29:24', '2021-01-12 21:29:24'),
(417, 18, 'Kaptai', 1, '2021-01-12 21:29:26', '2021-01-12 21:29:26'),
(418, 18, 'Kawkhali', 1, '2021-01-12 21:29:40', '2021-01-12 21:29:40'),
(419, 9, 'Bancharampur Upazila', 1, '2021-01-12 21:30:01', '2021-01-12 21:30:01'),
(420, 18, 'Baghaichari', 1, '2021-01-12 21:30:10', '2021-01-12 21:30:10'),
(421, 9, 'Bijoynagar Upazila', 1, '2021-01-12 21:30:13', '2021-01-12 21:30:13'),
(422, 18, 'Barkal', 1, '2021-01-12 21:30:27', '2021-01-12 21:30:27'),
(423, 9, 'Nasirnagar Upazila', 1, '2021-01-12 21:30:31', '2021-01-12 21:30:31'),
(424, 9, 'Sarail Upazila', 1, '2021-01-12 21:30:41', '2021-01-12 21:30:41'),
(425, 18, 'Langadu', 1, '2021-01-12 21:30:42', '2021-01-12 21:30:42'),
(426, 18, 'Rajasthali', 1, '2021-01-12 21:31:05', '2021-01-12 21:31:05'),
(427, 15, 'Khagrachari Sadar', 1, '2021-01-12 21:31:25', '2021-01-12 21:31:25'),
(428, 18, 'Belaichari', 1, '2021-01-12 21:31:28', '2021-01-12 21:31:28'),
(429, 18, 'Juraichari', 1, '2021-01-12 21:31:45', '2021-01-12 21:31:45'),
(430, 18, 'Naniarchar', 1, '2021-01-12 21:32:02', '2021-01-12 21:32:02'),
(431, 26, 'Narayanganj Sadar', 1, '2021-01-12 21:38:50', '2021-01-12 21:38:50'),
(432, 26, 'Araihajar', 1, '2021-01-12 21:39:18', '2021-01-12 21:39:18'),
(433, 26, 'Bandar', 1, '2021-01-12 21:39:33', '2021-01-12 21:39:33'),
(434, 26, 'Rupganj', 1, '2021-01-12 21:39:52', '2021-01-12 21:39:52'),
(435, 26, 'Sonargaon', 1, '2021-01-12 21:40:09', '2021-01-12 21:40:09'),
(436, 30, 'Tangail Sadar', 1, '2021-01-12 21:41:17', '2021-01-12 21:41:17'),
(437, 30, 'Sakhipur Upazila', 1, '2021-01-12 21:43:26', '2021-01-12 21:43:26'),
(438, 30, 'Basail Upazila', 1, '2021-01-12 21:43:37', '2021-01-12 21:43:37'),
(439, 30, 'Madhupur Upazila', 1, '2021-01-12 21:43:51', '2021-01-12 21:43:51'),
(440, 30, 'Ghatail', 1, '2021-01-12 21:44:07', '2021-01-12 21:44:07'),
(441, 30, 'Kalihati', 1, '2021-01-12 21:44:19', '2021-01-12 21:44:19'),
(442, 30, 'Nagarpur', 1, '2021-01-12 21:44:31', '2021-01-12 21:44:31'),
(443, 30, 'Mirzapur', 1, '2021-01-12 21:44:49', '2021-01-12 21:44:49'),
(444, 30, 'Gopalpur', 1, '2021-01-12 21:45:04', '2021-01-12 21:45:04'),
(445, 30, 'Delduar', 1, '2021-01-12 21:45:23', '2021-01-12 21:45:23'),
(446, 30, 'Bhuapur', 1, '2021-01-12 21:45:34', '2021-01-12 21:45:34'),
(447, 30, 'Dhanbari', 1, '2021-01-12 21:45:45', '2021-01-12 21:45:45'),
(448, 22, 'Kishoreganj Sadar', 1, '2021-01-12 21:48:24', '2021-01-12 21:48:24'),
(449, 22, 'Kuliarchar', 1, '2021-01-12 21:49:01', '2021-01-12 21:49:01'),
(450, 11, 'Sitakunda', 1, '2021-01-12 21:54:19', '2021-01-12 21:54:19'),
(451, 11, 'Satkania', 1, '2021-01-12 22:04:50', '2021-01-12 22:04:50'),
(452, 11, 'Satkania Upazila', 1, '2021-01-12 22:07:08', '2021-01-12 22:07:08'),
(453, 11, 'Sandwip Upazila', 1, '2021-01-12 22:07:22', '2021-01-12 22:07:22'),
(454, 11, 'Raozan Upazila', 1, '2021-01-12 22:07:37', '2021-01-12 22:07:37'),
(455, 11, 'Rangunia Upazila', 1, '2021-01-12 22:07:49', '2021-01-12 22:07:49'),
(456, 11, 'Patiya Upazila', 1, '2021-01-12 22:08:04', '2021-01-12 22:08:04'),
(457, 11, 'Mirsharai Upazila', 1, '2021-01-12 22:08:18', '2021-01-12 22:08:18'),
(458, 11, 'Lohagara Upazila', 1, '2021-01-12 22:08:29', '2021-01-12 22:08:29'),
(459, 11, 'Hathazari Upazila', 1, '2021-01-12 22:08:51', '2021-01-12 22:08:51'),
(460, 11, 'Fatikchhari Upazila', 1, '2021-01-12 22:09:05', '2021-01-12 22:09:05'),
(461, 11, 'Chandanaish Upazila', 1, '2021-01-12 22:09:16', '2021-01-12 22:09:16'),
(462, 11, 'Boalkhali Upazila', 1, '2021-01-12 22:09:27', '2021-01-12 22:09:27'),
(463, 11, 'Banshkhali Upazila', 1, '2021-01-12 22:09:35', '2021-01-12 22:09:35'),
(464, 11, 'Anwara Upazila', 1, '2021-01-12 22:09:48', '2021-01-12 22:09:48'),
(465, 22, 'Hossainpur', 1, '2021-01-12 22:14:57', '2021-01-12 22:14:57'),
(466, 22, 'Pakundia', 1, '2021-01-12 22:15:13', '2021-01-12 22:15:13'),
(467, 22, 'Bajitpur', 1, '2021-01-12 22:15:40', '2021-01-12 22:15:40'),
(468, 22, 'Austagram', 1, '2021-01-12 22:15:54', '2021-01-12 22:15:54'),
(469, 22, 'Karimganj', 1, '2021-01-12 22:16:07', '2021-01-12 22:16:07'),
(470, 22, 'Katiadi', 1, '2021-01-12 22:16:22', '2021-01-12 22:16:22'),
(471, 22, 'Tarail', 1, '2021-01-12 22:16:40', '2021-01-12 22:16:40'),
(472, 22, 'Itna', 1, '2021-01-12 22:16:53', '2021-01-12 22:16:53'),
(473, 22, 'Nikli', 1, '2021-01-12 22:17:10', '2021-01-12 22:17:10'),
(474, 22, 'Mithamain', 1, '2021-01-12 22:17:21', '2021-01-12 22:17:21'),
(475, 22, 'Bhairab', 1, '2021-01-12 22:17:34', '2021-01-12 22:17:34'),
(476, 24, 'Manikganj Sadar', 1, '2021-01-12 22:18:58', '2021-01-12 22:18:58'),
(477, 24, 'Singair', 1, '2021-01-12 22:19:46', '2021-01-12 22:19:46'),
(478, 24, 'Shivalaya', 1, '2021-01-12 22:19:58', '2021-01-12 22:19:58'),
(479, 24, 'Saturia', 1, '2021-01-12 22:20:12', '2021-01-12 22:20:12'),
(480, 24, 'Harirampur', 1, '2021-01-12 22:20:26', '2021-01-12 22:20:26'),
(481, 24, 'Ghior', 1, '2021-01-12 22:20:37', '2021-01-12 22:20:37'),
(482, 24, 'Daulatpur', 1, '2021-01-12 22:20:52', '2021-01-12 22:20:52'),
(483, 23, 'Madaripur Sadar', 1, '2021-01-12 22:22:05', '2021-01-12 22:22:05'),
(484, 23, 'Kalkini', 1, '2021-01-12 22:22:17', '2021-01-12 22:22:17'),
(485, 23, 'Rajoir', 1, '2021-01-12 22:22:39', '2021-01-12 22:22:39'),
(486, 23, 'Shibchar', 1, '2021-01-12 22:22:49', '2021-01-12 22:22:49'),
(487, 25, 'Munshiganj Sadar', 1, '2021-01-12 22:23:38', '2021-01-12 22:23:38'),
(488, 25, 'Lohajang', 1, '2021-01-12 22:23:50', '2021-01-12 22:23:50'),
(489, 25, 'Sreenagar', 1, '2021-01-12 22:24:03', '2021-01-12 22:24:03'),
(490, 25, 'Sirajdikhan', 1, '2021-01-12 22:24:13', '2021-01-12 22:24:13'),
(491, 25, 'Tongibari', 1, '2021-01-12 22:24:27', '2021-01-12 22:24:27'),
(492, 25, 'Gazaria', 1, '2021-01-12 22:24:37', '2021-01-12 22:24:37'),
(493, 28, 'Rajbari Sadar', 1, '2021-01-12 22:25:45', '2021-01-12 22:25:45'),
(494, 28, 'Baliakandi', 1, '2021-01-12 22:25:57', '2021-01-12 22:25:57'),
(495, 28, 'Goalanda', 1, '2021-01-12 22:26:13', '2021-01-12 22:26:13'),
(496, 28, 'Pangsha', 1, '2021-01-12 22:26:25', '2021-01-12 22:26:25'),
(497, 28, 'Kalukhali', 1, '2021-01-12 22:26:36', '2021-01-12 22:26:36'),
(498, 29, 'Shariatpur Sadar', 1, '2021-01-12 22:27:15', '2021-01-12 22:27:15'),
(499, 29, 'Damudya', 1, '2021-01-12 22:27:30', '2021-01-12 22:27:30'),
(500, 29, 'Naria', 1, '2021-01-12 22:27:44', '2021-01-12 22:27:44'),
(501, 29, 'Zanjira', 1, '2021-01-12 22:27:55', '2021-01-12 22:27:55'),
(502, 29, 'Bhedarganj', 1, '2021-01-12 22:28:06', '2021-01-12 22:28:06'),
(503, 29, 'Gosairhat', 1, '2021-01-12 22:28:27', '2021-01-12 22:28:27'),
(504, 29, 'Shakhipur', 1, '2021-01-12 22:28:39', '2021-01-12 22:28:39'),
(505, 41, 'Jamalpur Sadar', 1, '2021-01-12 22:46:42', '2021-01-12 22:46:42'),
(506, 41, 'Dewanganj', 1, '2021-01-12 22:47:04', '2021-01-12 22:47:04'),
(507, 41, 'Baksiganj', 1, '2021-01-12 22:47:19', '2021-01-12 22:47:19'),
(508, 41, 'Madarganj', 1, '2021-01-12 22:47:55', '2021-01-12 22:47:55'),
(509, 41, 'Melandaha', 1, '2021-01-12 22:48:06', '2021-01-12 22:48:06'),
(510, 41, 'Sarishabari', 1, '2021-01-12 22:48:19', '2021-01-12 22:48:19'),
(511, 40, 'Satkhira Sadar', 1, '2021-01-12 22:56:18', '2021-01-12 22:56:18'),
(512, 40, 'Assasuni', 1, '2021-01-12 22:56:29', '2021-01-12 22:56:29'),
(513, 40, 'Debhata', 1, '2021-01-12 22:56:45', '2021-01-12 22:56:45'),
(514, 40, 'Tala', 1, '2021-01-12 22:56:57', '2021-01-12 22:56:57'),
(515, 40, 'Kalaroa', 1, '2021-01-12 22:57:09', '2021-01-12 22:57:09'),
(516, 40, 'Kaliganj', 1, '2021-01-12 22:57:24', '2021-01-12 22:57:24'),
(517, 40, 'Shyamnagar', 1, '2021-01-12 22:57:37', '2021-01-12 22:57:37'),
(518, 33, 'Abhaynagar', 1, '2021-01-12 22:59:00', '2021-01-12 22:59:00'),
(519, 33, 'Bagherpara', 1, '2021-01-12 22:59:14', '2021-01-12 22:59:14'),
(520, 33, 'Chaugachha', 1, '2021-01-12 22:59:25', '2021-01-12 22:59:25'),
(521, 33, 'Jhikargachha', 1, '2021-01-12 22:59:35', '2021-01-12 22:59:35'),
(522, 33, 'Keshabpur', 1, '2021-01-12 22:59:45', '2021-01-12 22:59:45'),
(523, 33, 'Jessore Sadar', 1, '2021-01-12 22:59:55', '2021-01-12 22:59:55'),
(524, 33, 'Manirampur', 1, '2021-01-12 23:00:05', '2021-01-12 23:00:05'),
(525, 33, 'Sharsha', 1, '2021-01-12 23:00:24', '2021-01-12 23:00:24'),
(526, 32, 'Alamdanga', 1, '2021-01-12 23:01:41', '2021-01-12 23:01:41'),
(527, 32, 'Chuadanga Sadar', 1, '2021-01-12 23:01:55', '2021-01-12 23:01:55'),
(528, 32, 'Jibannagar', 1, '2021-01-12 23:02:10', '2021-01-12 23:02:10'),
(529, 32, 'Damurhuda', 1, '2021-01-12 23:02:30', '2021-01-12 23:02:30'),
(530, 32, 'Darsana', 1, '2021-01-12 23:02:46', '2021-01-12 23:02:46'),
(531, 31, 'Bagerhat Sadar', 1, '2021-01-12 23:03:48', '2021-01-12 23:03:48'),
(532, 31, 'Chitalmari', 1, '2021-01-12 23:04:08', '2021-01-12 23:04:08'),
(533, 31, 'Fakirhat', 1, '2021-01-12 23:04:25', '2021-01-12 23:04:25'),
(534, 31, 'Mollahat', 1, '2021-01-12 23:04:56', '2021-01-12 23:04:56'),
(535, 31, 'Kachua Upazila', 1, '2021-01-12 23:05:18', '2021-01-12 23:05:18'),
(536, 31, 'Mongla', 1, '2021-01-12 23:05:35', '2021-01-12 23:05:35'),
(537, 31, 'Morrelganj', 1, '2021-01-12 23:05:53', '2021-01-12 23:05:53'),
(538, 31, 'Rampal', 1, '2021-01-12 23:06:10', '2021-01-12 23:06:10'),
(539, 31, 'Sarankhola', 1, '2021-01-12 23:06:23', '2021-01-12 23:06:23'),
(540, 34, 'Jhenaidah Sadar', 1, '2021-01-12 23:07:52', '2021-01-12 23:07:52'),
(541, 34, 'Maheshpur', 1, '2021-01-12 23:08:05', '2021-01-12 23:08:05'),
(542, 34, 'Kaliganj  Upazila', 1, '2021-01-12 23:08:49', '2021-01-12 23:08:49'),
(543, 34, 'Kotchandpur', 1, '2021-01-12 23:09:00', '2021-01-12 23:09:00'),
(544, 34, 'Shailkupa', 1, '2021-01-12 23:09:15', '2021-01-12 23:09:15'),
(545, 34, 'Harinakunda', 1, '2021-01-12 23:09:26', '2021-01-12 23:09:26'),
(546, 36, 'Bheramara', 1, '2021-01-12 23:12:02', '2021-01-12 23:12:02'),
(547, 36, 'Daulatpur Upazila', 1, '2021-01-12 23:12:27', '2021-01-12 23:12:27'),
(548, 36, 'Khoksa', 1, '2021-01-12 23:12:40', '2021-01-12 23:12:40'),
(549, 36, 'Kumarkhali', 1, '2021-01-12 23:12:51', '2021-01-12 23:12:51'),
(550, 36, 'Kushtia Sadar', 1, '2021-01-12 23:13:06', '2021-01-12 23:13:06'),
(551, 36, 'Mirpur', 1, '2021-01-12 23:13:21', '2021-01-12 23:13:21'),
(552, 47, 'Atrai', 1, '2021-01-13 00:41:25', '2021-01-13 00:41:25'),
(553, 47, 'Badalgachhi', 1, '2021-01-13 00:41:43', '2021-01-13 00:41:43'),
(554, 47, 'Dhamoirhat', 1, '2021-01-13 00:41:58', '2021-01-13 00:41:58'),
(555, 47, 'Manda', 1, '2021-01-13 00:42:13', '2021-01-13 00:42:13'),
(556, 47, 'Mohadevpur', 1, '2021-01-13 00:42:32', '2021-01-13 00:42:32'),
(557, 47, 'Naogaon Sadar', 1, '2021-01-13 00:42:50', '2021-01-13 00:42:50'),
(558, 47, 'Niamatpur', 1, '2021-01-13 00:43:03', '2021-01-13 00:43:03'),
(559, 47, 'Patnitala', 1, '2021-01-13 00:43:18', '2021-01-13 00:43:18'),
(560, 47, 'Porsha', 1, '2021-01-13 00:43:29', '2021-01-13 00:43:29'),
(561, 47, 'Raninagar', 1, '2021-01-13 00:43:43', '2021-01-13 00:43:43'),
(562, 47, 'Sapahar', 1, '2021-01-13 00:43:57', '2021-01-13 00:43:57'),
(563, 46, 'Joypurhat Sadar', 1, '2021-01-13 00:45:10', '2021-01-13 00:45:10'),
(564, 46, 'Akkelpur', 1, '2021-01-13 00:45:24', '2021-01-13 00:45:24'),
(565, 46, 'Kalai', 1, '2021-01-13 00:45:37', '2021-01-13 00:45:37'),
(566, 46, 'Khetlal', 1, '2021-01-13 00:45:48', '2021-01-13 00:45:48'),
(567, 46, 'Panchbibi', 1, '2021-01-13 00:46:04', '2021-01-13 00:46:04'),
(568, 44, 'Jhenaigati', 1, '2021-01-13 00:46:47', '2021-01-13 00:46:47'),
(569, 44, 'Nakla Upazila', 1, '2021-01-13 00:46:58', '2021-01-13 00:46:58'),
(570, 44, 'Nalitabari', 1, '2021-01-13 00:47:11', '2021-01-13 00:47:11'),
(571, 44, 'Sherpur Sadar', 1, '2021-01-13 00:47:25', '2021-01-13 00:47:25'),
(572, 44, 'Sreebardi', 1, '2021-01-13 00:47:37', '2021-01-13 00:47:37'),
(573, 43, 'Atpara', 1, '2021-01-13 00:48:14', '2021-01-13 00:48:14'),
(574, 43, 'Barhatta', 1, '2021-01-13 00:48:26', '2021-01-13 00:48:26'),
(575, 44, 'Durgapur', 1, '2021-01-13 00:48:43', '2021-01-13 00:48:43'),
(576, 44, 'Khaliajuri', 1, '2021-01-13 00:49:01', '2021-01-13 00:49:01'),
(577, 44, 'Kalmakanda', 1, '2021-01-13 00:49:17', '2021-01-13 00:49:17'),
(578, 44, 'Kendua', 1, '2021-01-13 00:49:32', '2021-01-13 00:49:32'),
(579, 44, 'Madan', 1, '2021-01-13 00:49:45', '2021-01-13 00:49:45'),
(580, 44, 'Mohanganj', 1, '2021-01-13 00:49:59', '2021-01-13 00:49:59'),
(581, 44, 'Netrokona Sadar', 1, '2021-01-13 00:50:16', '2021-01-13 00:50:16'),
(582, 44, 'Purbadhala', 1, '2021-01-13 00:50:27', '2021-01-13 00:50:27'),
(583, 48, 'Gurudaspur', 1, '2021-01-13 00:51:44', '2021-01-13 00:51:44'),
(584, 48, 'Baraigram', 1, '2021-01-13 00:52:04', '2021-01-13 00:52:04'),
(585, 48, 'Bagatipara', 1, '2021-01-13 00:52:19', '2021-01-13 00:52:19'),
(586, 48, 'Lalpur', 1, '2021-01-13 00:52:34', '2021-01-13 00:52:34'),
(587, 48, 'Singra', 1, '2021-01-13 00:52:48', '2021-01-13 00:52:48'),
(588, 48, 'Naldanga', 1, '2021-01-13 00:53:06', '2021-01-13 00:53:06'),
(589, 21, 'Gopalganj Sadar', 1, '2021-01-13 00:55:56', '2021-01-13 00:55:56'),
(590, 21, 'Kashiani', 1, '2021-01-13 00:56:06', '2021-01-13 00:56:06'),
(591, 21, 'Kotalipara', 1, '2021-01-13 00:56:19', '2021-01-13 00:56:19'),
(592, 21, 'Muksudpur', 1, '2021-01-13 00:56:39', '2021-01-13 00:56:39'),
(593, 21, 'Tungipara', 1, '2021-01-13 00:56:52', '2021-01-13 00:56:52'),
(594, 35, 'erokhada', 0, '2021-01-13 00:58:56', '2021-01-24 15:08:46'),
(595, 35, 'Sonadanga', 1, '2021-01-13 00:59:09', '2021-01-13 00:59:09'),
(596, 35, 'Rupsa', 1, '2021-01-13 00:59:26', '2021-01-13 00:59:26'),
(597, 35, 'Phultala', 1, '2021-01-13 00:59:37', '2021-01-13 00:59:37'),
(598, 35, 'Paikgachha', 1, '2021-01-13 00:59:52', '2021-01-13 00:59:52'),
(599, 35, 'Koyra', 1, '2021-01-13 01:00:06', '2021-01-13 01:00:06'),
(600, 35, 'Kotwali Upazila', 1, '2021-01-13 01:00:32', '2021-01-13 01:00:32'),
(601, 35, 'Khan Jahan ALi', 1, '2021-01-13 01:00:44', '2021-01-13 01:00:44'),
(602, 35, 'Khalishpur', 1, '2021-01-13 01:01:01', '2021-01-13 01:01:01'),
(603, 35, 'Harintana', 1, '2021-01-13 01:01:19', '2021-01-13 01:01:19'),
(604, 35, 'Dumuria', 1, '2021-01-13 01:01:32', '2021-01-13 01:01:32'),
(605, 35, 'Dighalia', 1, '2021-01-13 01:01:45', '2021-01-13 01:01:45'),
(606, 35, 'Daulatpur  Upazila', 1, '2021-01-13 01:02:12', '2021-01-13 01:02:12'),
(607, 35, 'Dacope', 1, '2021-01-13 01:02:23', '2021-01-13 01:02:23'),
(608, 35, 'Batiaghata', 1, '2021-01-13 01:02:34', '2021-01-13 01:02:34'),
(609, 37, 'Magura Sadar', 1, '2021-01-13 01:03:37', '2021-01-13 01:03:37'),
(610, 37, 'Shalikha', 1, '2021-01-13 01:03:46', '2021-01-13 01:03:46'),
(611, 37, 'Mohammadpur Upazila', 1, '2021-01-13 01:04:00', '2021-01-13 01:04:00'),
(612, 37, 'Sreepur', 1, '2021-01-13 01:04:12', '2021-01-13 01:04:12'),
(613, 38, 'Meherpur Sadar', 1, '2021-01-13 01:04:58', '2021-01-13 01:04:58'),
(614, 38, 'Gangni', 1, '2021-01-13 01:05:15', '2021-01-13 01:05:15'),
(615, 38, 'Mujibnagar', 1, '2021-01-13 01:05:33', '2021-01-13 01:05:33'),
(616, 39, 'Narail Sadar', 1, '2021-01-13 01:06:19', '2021-01-13 01:06:19'),
(617, 39, 'Kalia', 1, '2021-01-13 01:06:35', '2021-01-13 01:06:35'),
(618, 39, 'Lohagara', 1, '2021-01-13 01:06:50', '2021-01-13 01:06:50'),
(619, 42, 'Mymensingh Sadar', 1, '2021-01-13 01:07:57', '2021-01-13 01:07:57'),
(620, 42, 'Bhaluka', 1, '2021-01-13 01:08:11', '2021-01-13 01:08:11'),
(621, 42, 'Trishal', 1, '2021-01-13 01:08:28', '2021-01-13 01:08:28'),
(622, 42, 'Haluaghat', 1, '2021-01-13 01:08:42', '2021-01-13 01:08:42'),
(623, 42, 'Muktagacha', 1, '2021-01-13 01:08:55', '2021-01-13 01:08:55'),
(624, 42, 'Dhobaura', 1, '2021-01-13 01:09:08', '2021-01-13 01:09:08'),
(625, 42, 'Fulbaria', 1, '2021-01-13 01:09:20', '2021-01-13 01:09:20'),
(626, 42, 'Gaffargaon', 1, '2021-01-13 01:09:33', '2021-01-13 01:09:33'),
(627, 42, 'Gauripur', 1, '2021-01-13 01:09:43', '2021-01-13 01:09:43'),
(628, 42, 'Ishwarganj', 1, '2021-01-13 01:09:58', '2021-01-13 01:09:58'),
(629, 42, 'Nandail', 1, '2021-01-13 01:10:10', '2021-01-13 01:10:10'),
(630, 42, 'Phulpur', 1, '2021-01-13 01:10:23', '2021-01-13 01:10:23'),
(631, 42, 'Tara Khanda', 1, '2021-01-13 01:10:34', '2021-01-13 01:10:34'),
(632, 50, 'Pabna Sadar', 1, '2021-01-13 01:13:05', '2021-01-13 01:13:05'),
(633, 50, 'Atgharia', 1, '2021-01-13 01:13:20', '2021-01-13 01:13:20'),
(634, 50, 'Bera', 1, '2021-01-13 01:13:30', '2021-01-13 01:13:30'),
(635, 50, 'Bhangura', 1, '2021-01-13 01:13:43', '2021-01-13 01:13:43'),
(636, 50, 'Chatmohar', 1, '2021-01-13 01:13:59', '2021-01-13 01:13:59'),
(637, 50, 'Faridpur', 1, '2021-01-13 01:14:15', '2021-01-13 01:14:15'),
(638, 50, 'Ishwardi', 1, '2021-01-13 01:14:29', '2021-01-13 01:14:29'),
(639, 50, 'Shathia', 1, '2021-01-13 01:14:43', '2021-01-13 01:14:43'),
(640, 50, 'Sujanagar', 1, '2021-01-13 01:14:54', '2021-01-13 01:14:54'),
(641, 52, 'Sirajganj Sadar', 1, '2021-01-13 01:15:21', '2021-01-13 01:15:21'),
(642, 52, 'Kazipur', 1, '2021-01-13 01:15:52', '2021-01-13 01:15:52'),
(643, 52, 'Ullahpara', 1, '2021-01-13 01:16:02', '2021-01-13 01:16:02'),
(644, 52, 'Shahjadpur', 1, '2021-01-13 01:16:15', '2021-01-13 01:16:15'),
(645, 52, 'Raiganj', 1, '2021-01-13 01:16:30', '2021-01-13 01:16:30'),
(646, 52, 'Kamarkhanda', 1, '2021-01-13 01:16:42', '2021-01-13 01:16:42'),
(647, 52, 'Tarash', 1, '2021-01-13 01:16:59', '2021-01-13 01:16:59'),
(648, 52, 'Belkuchi', 1, '2021-01-13 01:17:11', '2021-01-13 01:17:11'),
(649, 52, 'Chauhali', 1, '2021-01-13 01:17:23', '2021-01-13 01:17:23'),
(650, 54, 'Gaibandha Sadar', 1, '2021-01-13 01:18:10', '2021-01-13 01:18:10'),
(651, 54, 'Fulchhari', 1, '2021-01-13 01:18:24', '2021-01-13 01:18:24'),
(652, 54, 'Gobindaganj', 1, '2021-01-13 01:18:39', '2021-01-13 01:18:39'),
(653, 54, 'Palashbari', 1, '2021-01-13 01:18:51', '2021-01-13 01:18:51'),
(654, 54, 'Sadullapur', 1, '2021-01-13 01:19:03', '2021-01-13 01:19:03'),
(655, 54, 'Sundarganj', 1, '2021-01-13 01:19:19', '2021-01-13 01:19:19'),
(656, 54, 'Saghata', 1, '2021-01-13 01:19:31', '2021-01-13 01:19:31'),
(657, 66, 'Tongi Bazar', 1, '2021-01-13 01:33:49', '2021-01-13 01:33:49'),
(658, 66, 'Keraniganj', 1, '2021-01-13 01:34:03', '2021-01-13 01:54:10'),
(659, 67, 'Dohar', 1, '2021-01-13 01:47:44', '2021-01-13 01:47:44'),
(660, 66, 'Demra', 1, '2021-01-13 01:50:08', '2021-01-13 01:50:08'),
(661, 67, 'Nowabganj', 1, '2021-01-13 01:56:35', '2021-01-13 01:56:35'),
(662, 66, 'Sutrapur', 1, '2021-01-13 02:04:45', '2021-01-13 02:04:45'),
(663, 66, 'Dolaikhal', 1, '2021-01-13 02:05:01', '2021-01-13 02:05:01'),
(664, 66, 'Dolaipar', 1, '2021-01-13 02:05:13', '2021-01-13 02:05:13'),
(665, 66, 'Sonir Akhra', 1, '2021-01-13 02:08:00', '2021-01-13 02:08:00'),
(666, 66, 'Chittagong Road', 1, '2021-01-13 02:08:23', '2021-01-13 02:08:23'),
(667, 66, 'Jurain', 1, '2021-01-13 02:10:24', '2021-01-13 02:10:24'),
(668, 66, 'Postogola', 1, '2021-01-13 02:10:35', '2021-01-13 02:10:35'),
(670, 66, 'Nasirabad', 1, '2021-01-13 17:42:28', '2021-09-18 12:21:22'),
(673, 67, 'Banani', 1, '2021-01-13 21:54:48', '2021-01-14 00:46:36'),
(674, 11, 'baraiyarhat', 1, '2021-01-14 17:30:30', '2021-01-14 17:30:30'),
(675, 66, 'Kamrangichar', 1, '2021-01-16 17:11:26', '2021-01-16 17:11:26'),
(676, 43, 'Durgapur-', 1, '2021-01-18 22:40:27', '2021-01-18 22:40:27'),
(677, 43, 'Mohongonj', 1, '2021-01-18 22:46:14', '2021-01-18 22:46:14'),
(678, 43, 'Purbadhala.', 1, '2021-01-18 22:46:53', '2021-01-18 22:46:53'),
(679, 43, 'Kalmakanda.', 1, '2021-01-18 22:47:43', '2021-01-18 22:47:43'),
(680, 43, 'Khaliajuri.', 1, '2021-01-18 22:48:46', '2021-01-18 22:48:46'),
(681, 43, 'Madan.', 1, '2021-01-18 22:49:26', '2021-01-18 22:49:26'),
(682, 43, 'Kendua.', 1, '2021-01-18 22:50:04', '2021-01-18 22:50:04'),
(683, 11, 'Patenga', 1, '2021-01-19 21:47:39', '2021-01-19 21:47:39'),
(684, 1, 'Kochukhet', 1, '2021-01-20 16:12:21', '2021-01-20 16:12:21'),
(685, 1, 'Gudaraghat', 1, '2021-01-20 16:12:59', '2021-01-20 16:12:59'),
(686, 1, 'Agargaon', 1, '2021-01-20 16:14:25', '2021-01-20 16:14:25'),
(687, 1, 'Ibrahimpur', 1, '2021-01-20 16:15:28', '2021-01-20 16:15:28'),
(688, 1, 'Vashantek', 1, '2021-01-20 16:16:36', '2021-01-20 16:16:36');
INSERT INTO `sub_cities` (`id`, `city_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(689, 1, 'Matikata', 1, '2021-01-20 16:17:18', '2021-01-20 16:17:18'),
(690, 1, 'Rupnagar Residential Area', 1, '2021-01-20 16:17:40', '2021-01-20 16:17:40'),
(691, 1, 'Rainkhola', 1, '2021-01-20 16:19:21', '2021-01-20 16:19:21'),
(692, 1, 'Mirpur Diabari', 1, '2021-01-20 16:19:41', '2021-01-20 16:19:41'),
(693, 1, 'Mazar Road', 1, '2021-01-20 16:21:51', '2021-01-20 16:21:51'),
(694, 1, 'Shagufta', 1, '2021-01-20 16:23:17', '2021-01-20 16:23:17'),
(695, 1, 'Bawnia', 1, '2021-01-20 16:23:28', '2021-01-20 16:23:28'),
(696, 1, 'Baigertek', 1, '2021-01-20 16:24:25', '2021-01-20 16:24:25'),
(697, 1, 'Madina nagar', 1, '2021-01-20 16:25:29', '2021-01-20 16:25:29'),
(698, 1, 'Dewanpara', 1, '2021-01-20 16:27:13', '2021-01-20 16:27:13'),
(699, 1, 'Mastertek', 1, '2021-01-20 16:27:33', '2021-01-20 16:27:33'),
(700, 1, 'Barontek', 1, '2021-01-20 16:27:52', '2021-01-20 16:27:52'),
(701, 1, 'Goltek', 1, '2021-01-20 16:28:32', '2021-01-20 16:28:32'),
(702, 1, 'Shewra', 1, '2021-01-20 16:28:51', '2021-01-20 16:28:51'),
(703, 1, 'Uttarkhan', 1, '2021-01-20 16:29:10', '2021-01-20 16:29:10'),
(704, 1, 'Dakshinkhan', 1, '2021-01-20 16:29:29', '2021-01-20 16:29:29'),
(705, 1, 'Fayedabad', 1, '2021-01-20 16:29:42', '2021-01-20 16:29:42'),
(706, 1, 'Kuril', 1, '2021-01-20 16:32:08', '2021-01-20 16:32:08'),
(707, 1, 'Nikunja', 1, '2021-01-20 16:32:35', '2021-01-20 16:32:35'),
(708, 1, 'Hajipara', 1, '2021-01-20 16:35:42', '2021-01-20 16:35:42'),
(709, 1, 'Kawla', 1, '2021-01-20 16:35:55', '2021-01-20 16:35:55'),
(710, 1, 'Naddapara', 1, '2021-01-20 16:36:14', '2021-01-20 16:36:14'),
(711, 1, 'Bashundhara R/A', 1, '2021-01-20 16:36:38', '2021-01-20 16:36:38'),
(712, 1, 'Vatara', 1, '2021-01-20 16:36:53', '2021-01-20 16:36:53'),
(713, 1, 'Nadda', 1, '2021-01-20 16:37:05', '2021-01-20 16:37:05'),
(714, 1, 'Notun Bazar', 1, '2021-01-20 16:37:45', '2021-01-20 16:37:45'),
(715, 1, 'Uttor Badda', 1, '2021-01-20 16:38:17', '2021-01-20 16:38:17'),
(716, 1, 'Middle Badda', 1, '2021-01-20 16:38:39', '2021-01-20 16:38:39'),
(717, 1, 'South Badda', 1, '2021-01-20 16:38:49', '2021-01-20 16:38:49'),
(718, 1, 'Merul Badda', 1, '2021-01-20 16:38:59', '2021-01-20 16:38:59'),
(719, 1, 'Banani DOHS', 1, '2021-01-20 16:39:26', '2021-01-20 16:39:26'),
(720, 1, 'South Monipur', 1, '2021-01-20 16:39:53', '2021-01-20 16:39:53'),
(721, 1, 'Shah Ali Bag', 1, '2021-01-20 16:40:06', '2021-01-20 16:40:06'),
(722, 1, 'Aziz Palli', 1, '2021-01-20 16:40:17', '2021-01-20 16:40:17'),
(723, 1, 'Bashtola', 1, '2021-01-20 16:40:40', '2021-01-20 16:40:40'),
(724, 1, 'South Baridhara, DIT Project', 1, '2021-01-20 16:40:51', '2021-01-20 16:40:51'),
(725, 1, 'Bijoy Shoroni', 1, '2021-01-20 16:41:08', '2021-01-20 16:41:08'),
(726, 1, 'Indira Road', 1, '2021-01-20 16:42:51', '2021-01-20 16:42:51'),
(727, 1, 'Razabazar', 1, '2021-01-20 16:43:59', '2021-01-20 16:43:59'),
(728, 1, 'Panthopath', 1, '2021-01-20 16:44:17', '2021-01-20 16:44:17'),
(729, 1, 'Green Road', 1, '2021-01-20 16:45:02', '2021-01-20 16:45:02'),
(730, 1, 'Manik Mia Avenue', 1, '2021-01-20 16:45:18', '2021-01-20 16:45:18'),
(731, 1, 'Asad Avenue', 1, '2021-01-20 16:45:38', '2021-01-20 16:45:38'),
(732, 1, 'West Dhanmondi', 1, '2021-01-20 16:45:51', '2021-01-20 16:45:51'),
(733, 1, 'Shankar', 1, '2021-01-20 16:46:03', '2021-01-20 16:46:03'),
(734, 1, 'Rayer Bazar', 1, '2021-01-20 16:46:15', '2021-01-20 16:46:15'),
(735, 1, 'Tallabag', 1, '2021-01-20 16:46:30', '2021-01-20 16:46:30'),
(736, 1, 'Hazaribag', 1, '2021-01-20 16:46:42', '2021-01-20 16:46:42'),
(737, 1, 'Pilkhana', 1, '2021-01-20 16:47:02', '2021-01-20 16:47:02'),
(738, 1, 'Nawabgonj Puran Dhaka', 1, '2021-01-20 16:47:47', '2021-01-20 16:47:47'),
(739, 1, 'Azimpur', 1, '2021-01-20 16:48:22', '2021-01-20 16:48:22'),
(740, 1, 'Nilkhet', 1, '2021-01-20 16:48:56', '2021-01-20 16:48:56'),
(741, 1, 'Chawkbazar (Dhaka)', 1, '2021-01-20 16:49:23', '2021-01-20 16:49:23'),
(742, 1, 'Naya Bazar', 1, '2021-01-20 16:49:39', '2021-01-20 16:49:39'),
(743, 1, 'Tatibazar', 1, '2021-01-20 16:50:06', '2021-01-20 16:50:06'),
(744, 1, 'Luxmi Bazar', 1, '2021-01-20 16:50:24', '2021-01-20 16:50:24'),
(745, 1, 'Puran Dhaka', 1, '2021-01-20 16:50:36', '2021-01-20 16:50:36'),
(746, 1, 'Siddique Bazar', 1, '2021-01-20 16:51:11', '2021-01-20 16:51:11'),
(747, 1, 'Tikatuly', 1, '2021-01-20 16:51:37', '2021-01-20 16:51:37'),
(748, 1, 'Nawabpur', 1, '2021-01-20 16:52:00', '2021-01-20 16:52:00'),
(749, 1, 'Kaptan Bazar', 1, '2021-01-20 16:52:15', '2021-01-20 16:52:15'),
(750, 1, 'Gulistan', 1, '2021-01-20 16:52:27', '2021-01-20 16:52:27'),
(751, 1, 'Bongo Bazar', 1, '2021-01-20 16:52:47', '2021-01-20 16:52:47'),
(752, 1, 'Chankarpul', 1, '2021-01-20 16:53:00', '2021-01-20 16:53:00'),
(753, 1, 'Palashi', 1, '2021-01-20 17:07:59', '2021-01-20 17:07:59'),
(754, 1, 'Dhakeshwari', 1, '2021-01-20 17:12:52', '2021-01-20 17:12:52'),
(755, 1, 'Kamalapur', 1, '2021-01-20 17:13:05', '2021-01-20 17:13:05'),
(756, 1, 'Dainik Bangla Mor', 1, '2021-01-20 17:13:35', '2021-01-20 17:13:35'),
(757, 1, 'Fakirapul', 1, '2021-01-20 17:13:50', '2021-01-20 17:13:50'),
(758, 1, 'Kakrail', 1, '2021-01-20 17:14:06', '2021-01-20 17:14:06'),
(759, 1, 'Naya Paltan', 1, '2021-01-20 17:14:25', '2021-01-20 17:14:25'),
(760, 1, 'Press Club', 1, '2021-01-20 17:14:57', '2021-01-20 17:14:57'),
(761, 1, 'High Court', 1, '2021-01-20 17:15:20', '2021-01-20 17:15:20'),
(762, 1, 'Dhaka Medical', 1, '2021-01-20 17:15:44', '2021-01-20 17:15:44'),
(763, 1, 'Bongo Bondhu Avenue', 1, '2021-01-20 17:15:58', '2021-01-20 17:15:58'),
(764, 1, 'Kazi Nazrul Islam Avenue', 1, '2021-01-20 17:16:22', '2021-01-20 17:16:22'),
(765, 1, 'Shantibag', 1, '2021-01-20 17:17:23', '2021-01-20 17:17:23'),
(766, 1, 'Minto Road', 1, '2021-01-20 17:18:04', '2021-01-20 17:18:04'),
(767, 1, 'Old Elephant Road', 1, '2021-01-20 17:18:16', '2021-01-20 17:18:16'),
(768, 1, 'Eskaton Garden Road', 1, '2021-01-20 17:18:28', '2021-01-20 17:18:28'),
(769, 1, 'Eskaton', 1, '2021-01-20 17:18:42', '2021-01-20 17:18:42'),
(770, 1, 'Mouchak', 1, '2021-01-20 17:19:01', '2021-01-20 17:19:01'),
(771, 1, 'Malibag', 1, '2021-01-20 17:19:13', '2021-01-20 17:19:13'),
(772, 1, 'Shahbag', 1, '2021-01-20 17:19:33', '2021-01-20 17:19:33'),
(773, 1, 'Bashabo', 1, '2021-01-20 17:20:02', '2021-01-20 17:20:02'),
(774, 1, 'Middle Bashabo', 1, '2021-01-20 17:24:36', '2021-01-20 17:24:36'),
(775, 1, 'Goran', 1, '2021-01-20 17:25:10', '2021-01-20 17:25:10'),
(776, 1, 'Madartek', 1, '2021-01-20 17:25:21', '2021-01-20 17:25:21'),
(777, 1, 'Manik Nagar', 1, '2021-01-20 17:25:33', '2021-01-20 17:25:33'),
(778, 1, 'Banasree', 1, '2021-01-20 17:27:12', '2021-01-20 17:27:12'),
(779, 1, 'Meradia', 1, '2021-01-20 17:27:25', '2021-01-20 17:27:25'),
(780, 1, 'Khilbari Tek', 1, '2021-01-20 17:27:38', '2021-01-20 17:27:38'),
(781, 1, 'Bawaliapara', 1, '2021-01-20 17:27:50', '2021-01-20 17:27:50'),
(782, 1, 'Mughdapara', 1, '2021-01-20 17:28:01', '2021-01-20 17:28:01'),
(783, 1, 'Golapbag (Dhaka)', 1, '2021-01-20 17:28:14', '2021-01-20 17:28:14'),
(784, 1, 'Hatirjheel', 1, '2021-01-20 17:28:58', '2021-01-20 17:28:58'),
(785, 1, 'Banglamotor', 1, '2021-01-20 17:29:08', '2021-01-20 17:29:08'),
(786, 1, 'Paribag', 1, '2021-01-20 17:29:20', '2021-01-20 17:29:20'),
(787, 1, 'Bakshibazar', 1, '2021-01-20 17:29:31', '2021-01-20 17:29:31'),
(788, 1, 'Kathalbagan', 1, '2021-01-20 17:30:02', '2021-01-20 17:30:02'),
(789, 1, 'Malibagh Taltola', 1, '2021-01-20 17:30:14', '2021-01-20 17:30:14'),
(790, 1, 'Central Road', 1, '2021-01-20 17:30:25', '2021-01-20 17:30:25'),
(791, 1, 'Sabujbag', 1, '2021-01-20 17:30:38', '2021-01-20 17:30:38'),
(792, 1, 'Shiddheswari', 1, '2021-01-20 17:30:52', '2021-01-20 17:30:52'),
(793, 1, 'Shegunbagicha', 1, '2021-01-20 17:31:49', '2021-01-20 17:31:49'),
(794, 1, 'Babubazar', 1, '2021-01-20 17:32:09', '2021-01-20 17:32:09'),
(795, 1, 'Islampur(Dhaka)', 1, '2021-01-20 17:32:21', '2021-01-20 17:32:21'),
(796, 1, 'Imamgonj', 1, '2021-01-20 17:32:36', '2021-01-20 17:32:36'),
(797, 1, 'Nayabazar', 1, '2021-01-20 17:32:48', '2021-01-20 17:32:48'),
(798, 1, 'Zigatola', 1, '2021-01-20 17:33:01', '2021-01-20 17:33:01'),
(799, 1, 'Kalshi', 1, '2021-01-20 17:33:26', '2021-01-20 17:33:26'),
(800, 1, 'Dholaipar', 1, '2021-01-20 17:34:00', '2021-01-20 17:34:00'),
(801, 1, 'Monipuripara', 1, '2021-01-20 17:34:12', '2021-01-20 17:34:12'),
(802, 1, 'Bosila', 1, '2021-01-20 17:34:24', '2021-01-20 17:34:24'),
(803, 1, 'Shonir Akhra', 1, '2021-01-20 17:34:36', '2021-01-20 17:34:36'),
(804, 1, 'Bongshal', 1, '2021-01-20 17:34:59', '2021-01-20 17:34:59'),
(805, 1, 'Siddweswari', 1, '2021-01-20 17:35:11', '2021-01-20 17:35:11'),
(806, 1, 'Dokshingaon', 1, '2021-01-20 17:35:29', '2021-01-20 17:35:29'),
(807, 1, 'Joar Shahara', 1, '2021-01-20 17:35:40', '2021-01-20 17:35:40'),
(808, 1, 'Science Lab', 1, '2021-01-20 17:35:54', '2021-01-20 17:35:54'),
(809, 1, 'Sobhanbag', 1, '2021-01-20 17:36:07', '2021-01-20 17:36:07'),
(810, 1, 'ECB Chattar', 1, '2021-01-20 17:36:18', '2021-01-20 17:36:18'),
(811, 1, 'Armanitola', 1, '2021-01-20 17:36:36', '2021-01-20 17:36:36'),
(812, 1, 'Islambag', 1, '2021-01-20 17:36:48', '2021-01-20 17:36:48'),
(813, 1, 'Kamarpara', 1, '2021-01-20 17:37:02', '2021-01-20 17:37:02'),
(814, 1, 'Mitford', 1, '2021-01-20 17:37:13', '2021-01-20 17:37:13'),
(815, 1, 'Shakhari Bazar', 1, '2021-01-20 17:37:26', '2021-01-20 17:37:26'),
(816, 1, 'Katherpol', 1, '2021-01-20 17:37:38', '2021-01-20 17:37:38'),
(817, 1, 'Bangla Bazar', 1, '2021-01-20 17:38:20', '2021-01-20 17:38:20'),
(818, 1, 'Patuatuly', 1, '2021-01-20 17:38:32', '2021-01-20 17:38:32'),
(819, 1, 'Nandipara', 1, '2021-01-20 17:38:49', '2021-01-20 17:38:49'),
(820, 1, 'Nazira Bazar', 1, '2021-01-20 17:39:01', '2021-01-20 17:39:01'),
(821, 1, 'Gopibag', 1, '2021-01-20 17:39:21', '2021-01-20 17:39:21'),
(822, 1, 'Shwamibag', 1, '2021-01-20 17:39:35', '2021-01-20 17:39:35'),
(823, 1, 'Sadarghat (Dhaka)', 1, '2021-01-20 17:40:01', '2021-01-20 17:40:01'),
(824, 1, 'Kaltabazar', 1, '2021-01-20 17:40:13', '2021-01-20 17:40:13'),
(825, 1, 'Gandaria', 1, '2021-01-20 17:40:33', '2021-01-20 17:40:33'),
(826, 1, 'RayerBag', 1, '2021-01-20 17:40:45', '2021-01-20 17:40:45'),
(827, 1, 'Faridabad', 1, '2021-01-20 17:40:57', '2021-01-20 17:40:57'),
(828, 1, 'Matuail', 1, '2021-01-20 17:41:09', '2021-01-20 17:41:09'),
(829, 1, 'Donia', 1, '2021-01-20 17:41:19', '2021-01-20 17:41:19'),
(830, 1, 'Konapara', 1, '2021-01-20 17:41:40', '2021-01-20 17:41:40'),
(831, 1, 'Dhaka Uddyan', 1, '2021-01-20 17:41:55', '2021-01-20 17:41:55'),
(832, 1, 'Shekhertek', 1, '2021-01-20 17:42:07', '2021-01-20 17:42:07'),
(833, 1, 'CWH', 1, '2021-01-20 17:43:15', '2021-01-20 17:43:15'),
(834, 1, 'Mirpur Taltola', 1, '2021-01-20 17:43:28', '2021-01-20 17:43:28'),
(835, 1, 'Manda(Dhaka)', 1, '2021-01-20 17:44:03', '2021-01-20 17:44:03'),
(836, 1, 'Shahjahanpur (Dhaka)', 1, '2021-01-20 17:44:31', '2021-01-20 17:44:31'),
(837, 1, 'Haterrjheel', 1, '2021-01-20 17:44:43', '2021-01-20 17:44:43'),
(838, 1, 'Dhaka uddan', 1, '2021-01-20 17:44:54', '2021-01-20 17:44:54'),
(839, 1, 'Chad Uddan', 1, '2021-01-20 17:45:08', '2021-01-20 17:45:08'),
(840, 1, 'Mohammadia Housing', 1, '2021-01-20 17:45:23', '2021-01-20 17:45:23'),
(841, 1, 'Ring Road', 1, '2021-01-20 17:48:31', '2021-01-20 17:48:31'),
(842, 1, 'Tajmahal Road', 1, '2021-01-20 17:48:46', '2021-01-20 17:48:46'),
(843, 1, 'Nurjahan Road', 1, '2021-01-20 17:49:42', '2021-01-20 17:49:42'),
(844, 1, 'Rajia Sultana Road', 1, '2021-01-20 17:49:52', '2021-01-20 17:49:52'),
(845, 1, 'Goaltek', 1, '2021-01-20 17:50:36', '2021-01-20 17:50:36'),
(846, 1, 'Chalabon', 1, '2021-01-20 17:50:47', '2021-01-20 17:50:47'),
(847, 1, 'Azampur (East)', 1, '2021-01-20 17:51:06', '2021-01-20 17:51:06'),
(848, 1, 'Nalbhog', 1, '2021-01-20 17:51:17', '2021-01-20 17:51:17'),
(849, 1, 'Azampur (West)', 1, '2021-01-20 17:51:30', '2021-01-20 17:51:30'),
(850, 1, 'Phulbaria', 1, '2021-01-20 17:51:41', '2021-01-20 17:51:41'),
(851, 1, 'Bhatuliya', 1, '2021-01-20 17:51:59', '2021-01-20 17:51:59'),
(852, 1, 'Bamnartek', 1, '2021-01-20 17:52:11', '2021-01-20 17:52:11'),
(853, 1, 'Turag', 1, '2021-01-20 17:52:25', '2021-01-20 17:52:25'),
(854, 1, 'Kallanpur', 1, '2021-01-20 17:52:35', '2021-01-20 17:52:35'),
(855, 1, 'Lalkuthi', 1, '2021-01-20 17:52:47', '2021-01-20 17:52:47'),
(856, 1, 'Tolarbag', 1, '2021-01-20 17:53:00', '2021-01-20 17:53:00'),
(857, 1, 'Paikpara', 1, '2021-01-20 17:53:35', '2021-01-20 17:53:35'),
(858, 1, 'Pirerbag', 1, '2021-01-20 17:53:45', '2021-01-20 17:53:45'),
(859, 1, 'Taltola', 1, '2021-01-20 17:54:26', '2021-01-20 17:54:26'),
(860, 1, 'MES Colony', 1, '2021-01-20 17:54:38', '2021-01-20 17:54:38'),
(861, 1, 'Zia Colony', 1, '2021-01-20 17:54:49', '2021-01-20 17:54:49'),
(862, 1, 'Ajiz Market', 1, '2021-01-20 17:55:16', '2021-01-20 17:55:16'),
(863, 1, 'Aga Nagar', 1, '2021-01-20 17:55:28', '2021-01-20 17:55:28'),
(864, 1, 'Kunipara', 1, '2021-01-20 17:55:40', '2021-01-20 17:55:40'),
(865, 1, 'Babli Masjid', 1, '2021-01-20 17:55:54', '2021-01-20 17:55:54'),
(866, 1, 'Kaderabad Housing', 1, '2021-01-20 17:56:06', '2021-01-20 17:56:06'),
(867, 1, 'Boro Bari', 1, '2021-01-20 17:56:24', '2021-01-20 17:56:24'),
(868, 1, 'Board Bazar', 1, '2021-01-20 17:56:37', '2021-01-20 17:56:37'),
(869, 1, 'Kamarjuri', 1, '2021-01-20 17:56:52', '2021-01-20 17:56:52'),
(870, 1, 'Dattapara', 1, '2021-01-20 17:57:05', '2021-01-20 17:57:05'),
(871, 1, 'Ershadnagar', 1, '2021-01-20 17:57:19', '2021-01-20 17:57:19'),
(872, 1, 'Sataish', 1, '2021-01-20 17:57:32', '2021-01-20 17:57:32'),
(873, 1, 'Nurer Chala', 1, '2021-01-20 17:58:01', '2021-01-20 17:58:01'),
(874, 1, 'Bawaila Para', 1, '2021-01-20 17:58:13', '2021-01-20 17:58:13'),
(875, 1, 'Satarkul', 1, '2021-01-20 17:58:25', '2021-01-20 17:58:25'),
(876, 1, 'Khilbar Tek', 1, '2021-01-20 17:58:38', '2021-01-20 17:58:38'),
(877, 1, 'Buddho Mondir', 1, '2021-01-20 17:58:51', '2021-01-20 17:58:51'),
(878, 1, 'Sipahibag', 1, '2021-01-20 17:59:03', '2021-01-20 17:59:03'),
(879, 1, 'Eastern Housing', 1, '2021-01-20 17:59:24', '2021-01-20 17:59:24'),
(880, 1, 'Teskunipara', 1, '2021-01-20 17:59:37', '2021-01-20 17:59:37'),
(881, 1, 'DHAKA TENARI MORE', 1, '2021-01-20 17:59:50', '2021-01-20 17:59:50'),
(882, 1, 'Shahidnagar', 1, '2021-01-20 18:00:03', '2021-01-20 18:00:03'),
(883, 1, 'Jhigatola', 1, '2021-01-20 18:00:19', '2021-01-20 18:00:19'),
(884, 1, 'Polashi', 1, '2021-01-20 18:00:31', '2021-01-20 18:00:31'),
(885, 1, 'Satmoshjid Road', 1, '2021-01-20 18:00:44', '2021-01-20 18:00:44'),
(886, 1, 'Shukrabad', 1, '2021-01-20 18:01:58', '2021-01-20 18:01:58'),
(887, 1, 'BNP Bazar', 1, '2021-01-20 18:02:18', '2021-01-20 18:02:18'),
(888, 1, 'Kalachandpur', 1, '2021-01-20 18:03:10', '2021-01-20 18:03:10'),
(889, 1, 'Jogonnathpur', 1, '2021-01-20 18:03:53', '2021-01-20 18:03:53'),
(890, 1, 'Kuratuli', 1, '2021-01-20 18:04:30', '2021-01-20 18:04:30'),
(891, 1, 'Alatunnessa School Road', 1, '2021-01-20 18:04:46', '2021-01-20 18:04:46'),
(892, 1, 'Purbo Rampura', 1, '2021-01-20 18:04:58', '2021-01-20 18:04:58'),
(893, 1, 'Bou Bazar', 1, '2021-01-20 18:05:41', '2021-01-20 18:05:41'),
(894, 1, 'Chairman Goli', 1, '2021-01-20 18:05:54', '2021-01-20 18:05:54'),
(895, 2, 'Confidence Tower, Jhilpar', 1, '2021-01-20 18:06:09', '2021-01-20 18:06:09'),
(896, 1, 'Fuji Trade Center', 1, '2021-01-20 18:06:22', '2021-01-20 18:06:22'),
(897, 1, 'Khil Barirtek', 1, '2021-01-20 18:06:36', '2021-01-20 18:06:36'),
(898, 1, 'Korail', 1, '2021-01-20 18:06:48', '2021-01-20 18:06:48'),
(899, 1, 'Mahanogor', 1, '2021-01-20 18:07:10', '2021-01-20 18:07:10'),
(900, 1, 'Nimtola', 1, '2021-01-20 18:07:34', '2021-01-20 18:07:34'),
(901, 1, 'Nurerchala', 1, '2021-01-20 18:07:46', '2021-01-20 18:07:46'),
(902, 1, 'Pastola Bazar', 1, '2021-01-20 18:07:58', '2021-01-20 18:07:58'),
(903, 1, 'Poschim Badda', 1, '2021-01-20 18:08:13', '2021-01-20 18:08:13'),
(904, 1, 'Purbo Badda', 1, '2021-01-20 18:08:26', '2021-01-20 18:08:26'),
(905, 1, 'Sat-tola Bazar', 1, '2021-01-20 18:08:37', '2021-01-20 18:08:37'),
(906, 1, 'Shaheenbagh', 1, '2021-01-20 18:08:55', '2021-01-20 18:08:55'),
(907, 1, 'Subastu', 1, '2021-01-20 18:09:06', '2021-01-20 18:09:06'),
(908, 1, 'Satrasta', 1, '2021-01-20 18:09:21', '2021-01-20 18:09:21'),
(909, 1, 'Tekpara Adorsonagor', 1, '2021-01-20 18:09:31', '2021-01-20 18:09:31'),
(910, 1, 'Uttar Badda', 1, '2021-01-20 18:09:42', '2021-01-20 18:09:42'),
(911, 1, 'Wireless', 1, '2021-01-20 18:09:53', '2021-01-20 18:09:53'),
(912, 1, 'Solmaid', 1, '2021-01-20 18:10:05', '2021-01-20 18:10:05'),
(913, 1, '300 Feet', 1, '2021-01-20 18:10:18', '2021-01-20 18:10:18'),
(914, 1, 'Mirhazirbagh', 1, '2021-01-20 18:10:29', '2021-01-20 18:10:29'),
(915, 1, 'Mahut Tuli', 1, '2021-01-20 18:10:39', '2021-01-20 18:10:39'),
(916, 1, 'Alubazar', 1, '2021-01-20 18:10:50', '2021-01-20 18:10:50'),
(917, 1, 'Badam Toli', 1, '2021-01-20 18:11:00', '2021-01-20 18:11:00'),
(918, 1, 'Chamelibag', 1, '2021-01-20 18:11:12', '2021-01-20 18:11:12'),
(919, 1, 'Dholaikhal', 1, '2021-01-20 18:11:24', '2021-01-20 18:11:24'),
(920, 1, 'Doyagonj', 1, '2021-01-20 18:11:32', '2021-01-20 18:11:32'),
(921, 1, 'Farashgong', 1, '2021-01-20 18:11:48', '2021-01-20 18:11:48'),
(922, 1, 'Dholpur', 1, '2021-01-20 18:11:59', '2021-01-20 18:11:59'),
(923, 1, 'Kodomtoli', 1, '2021-01-20 18:12:08', '2021-01-20 18:12:08'),
(924, 1, 'Kotwali (Puran Dhaka)', 1, '2021-01-20 18:12:19', '2021-01-20 18:12:19'),
(925, 1, 'Railway Colony', 1, '2021-01-20 18:12:29', '2021-01-20 18:12:29'),
(926, 1, 'Rajar Dewri', 1, '2021-01-20 18:12:42', '2021-01-20 18:12:42'),
(927, 1, 'Sat rowja', 1, '2021-01-20 18:13:08', '2021-01-20 18:13:08'),
(928, 1, 'Tantibazar', 1, '2021-01-20 18:13:20', '2021-01-20 18:13:20'),
(929, 1, 'Rosulbagh', 1, '2021-01-20 18:13:31', '2021-01-20 18:13:31'),
(930, 1, 'College Gatev', 1, '2021-01-20 18:13:51', '2021-01-20 18:13:51'),
(931, 1, 'Badekomelosshor', 1, '2021-01-20 18:14:04', '2021-01-20 18:14:04'),
(932, 1, 'Rail Station', 1, '2021-01-20 18:14:26', '2021-01-20 18:14:26'),
(933, 1, 'Uttarkhan Mazar', 1, '2021-01-20 18:14:36', '2021-01-20 18:14:36'),
(934, 1, 'Dakshinkhan Bazar', 1, '2021-01-20 18:15:10', '2021-01-20 18:15:10'),
(935, 1, 'Ranavola', 1, '2021-01-20 18:15:43', '2021-01-20 18:15:43'),
(936, 1, 'Joynal Market', 1, '2021-01-20 18:15:55', '2021-01-20 18:15:55'),
(937, 1, 'Johura Market', 1, '2021-01-20 18:16:06', '2021-01-20 18:16:06'),
(938, 1, 'Habib Market', 1, '2021-01-20 18:16:17', '2021-01-20 18:16:17'),
(939, 1, 'BDR Market-House Building', 1, '2021-01-20 18:16:32', '2021-01-20 18:16:32'),
(940, 1, 'BDR Market-Sector 6', 1, '2021-01-20 18:16:44', '2021-01-20 18:16:44'),
(941, 1, 'Moinartek', 1, '2021-01-20 18:16:56', '2021-01-20 18:16:56'),
(942, 1, 'Atipara', 1, '2021-01-20 18:18:16', '2021-01-20 18:18:16'),
(943, 1, 'Kot Bari', 1, '2021-01-20 18:18:34', '2021-01-20 18:18:34'),
(944, 1, 'Abdullahpur', 1, '2021-01-20 18:18:44', '2021-01-20 18:18:44'),
(945, 1, 'Mollartek', 1, '2021-01-20 18:19:02', '2021-01-20 18:19:02'),
(946, 1, 'Gawair', 1, '2021-01-20 18:19:17', '2021-01-20 18:19:17'),
(947, 1, 'Kosaibari', 1, '2021-01-20 18:19:28', '2021-01-20 18:19:28'),
(948, 1, 'Prembagan', 1, '2021-01-20 18:19:40', '2021-01-20 18:19:40'),
(949, 1, 'Kachkura', 1, '2021-01-20 18:19:52', '2021-01-20 18:19:52'),
(950, 1, 'Helal Market', 1, '2021-01-20 18:20:08', '2021-01-20 18:20:08'),
(951, 1, 'Masterpara', 1, '2021-01-20 18:20:23', '2021-01-20 18:20:23'),
(952, 1, 'Munda', 1, '2021-01-20 18:20:34', '2021-01-20 18:20:34'),
(953, 1, 'Namapara-Khilkhet', 1, '2021-01-20 18:20:49', '2021-01-20 18:20:49'),
(954, 1, 'Ahalia-Uttara', 1, '2021-01-20 18:21:01', '2021-01-20 18:21:01'),
(955, 1, 'Ainusbag-Uttara', 1, '2021-01-20 18:21:13', '2021-01-20 18:21:13'),
(956, 1, 'Diabari', 1, '2021-01-20 18:21:25', '2021-01-20 18:21:25'),
(957, 1, 'Habib Market-Uttara', 1, '2021-01-20 18:25:29', '2021-01-20 18:25:29'),
(958, 1, 'Pakuria-Uttara', 1, '2021-01-20 18:26:09', '2021-01-20 18:26:09'),
(959, 1, 'Aftab Nagar', 1, '2021-01-20 18:27:29', '2021-01-20 18:27:29'),
(960, 1, 'Gulbagh', 1, '2021-01-20 18:27:40', '2021-01-20 18:27:40'),
(961, 1, 'Meradiya Bazar', 1, '2021-01-20 18:27:51', '2021-01-20 18:27:51'),
(962, 1, 'Mirbagh', 1, '2021-01-20 18:28:03', '2021-01-20 18:28:03'),
(963, 1, 'Modhubagh', 1, '2021-01-20 18:28:20', '2021-01-20 18:28:20'),
(964, 1, 'Rampura TV center', 1, '2021-01-20 18:28:30', '2021-01-20 18:28:30'),
(965, 1, 'TV gate', 1, '2021-01-20 18:28:48', '2021-01-20 18:28:48'),
(966, 1, 'Ulan road', 1, '2021-01-20 18:28:56', '2021-01-20 18:28:56'),
(967, 1, 'Gudaraghat-Mirpur', 1, '2021-01-20 18:29:08', '2021-01-20 18:29:08'),
(968, 1, 'Namapara-Mirpur', 1, '2021-01-20 18:29:20', '2021-01-20 18:29:20'),
(969, 1, 'Technical', 1, '2021-01-20 18:29:44', '2021-01-20 18:29:44'),
(970, 1, 'Beribadh-Mirpur', 1, '2021-01-20 18:30:02', '2021-01-20 18:30:02'),
(971, 1, 'Buddhijibi Road', 1, '2021-01-20 18:30:13', '2021-01-20 18:30:13'),
(972, 1, 'Rupnagor', 1, '2021-01-20 18:30:37', '2021-01-20 18:30:37'),
(973, 66, 'Savar Cantonment', 1, '2021-01-21 19:56:28', '2021-01-21 19:56:28'),
(974, 66, 'Kalatia', 1, '2021-01-21 19:56:47', '2021-01-21 19:56:47'),
(975, 66, 'Kathuria', 1, '2021-01-21 19:57:15', '2021-01-21 19:57:15'),
(976, 66, 'Goljarbag', 1, '2021-01-21 19:57:30', '2021-01-21 19:57:30'),
(977, 66, 'Nazirabag', 1, '2021-01-21 19:57:45', '2021-01-21 19:57:45'),
(978, 66, 'Nazarganj', 1, '2021-01-21 19:58:09', '2021-01-21 19:58:09'),
(979, 66, 'Zinzira', 1, '2021-01-21 19:58:26', '2021-01-21 19:58:26'),
(980, 66, 'Auchpara', 1, '2021-01-21 19:58:40', '2021-01-21 19:58:40'),
(981, 66, 'Cherag Ali', 1, '2021-01-21 19:58:54', '2021-01-21 19:58:54'),
(982, 66, 'Hasnabad', 1, '2021-01-21 19:59:48', '2021-01-21 19:59:48'),
(983, 66, 'Signboard', 1, '2021-01-21 20:00:01', '2021-01-21 20:00:01'),
(985, 14, 'Chagalnaiya', 1, '2021-01-23 18:29:56', '2021-01-23 18:29:56'),
(986, 35, 'Terokhada', 1, '2021-01-24 15:08:26', '2021-01-24 15:08:26'),
(987, 35, 'Khulna sadar', 1, '2021-01-24 15:13:11', '2021-01-24 15:13:11'),
(988, 17, 'Daganbhuiya', 1, '2021-01-24 20:27:02', '2021-01-24 20:27:02'),
(989, 11, 'Kornelhat', 1, '2021-01-31 22:15:34', '2021-01-31 22:15:34'),
(990, 43, 'Sadar', 1, '2021-02-02 20:11:12', '2021-02-02 20:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `company_name`, `phone`, `address`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Mohasagor', 'Mohasagor Limited', '01737481778', 'Dhaka,Bangladesh', 1, 1, '2021-08-10 10:35:30', '2021-08-10 10:35:30'),
(2, 'Salam Vai', 'London Bazar', '01711944795', '165,Suvro-Sagor Building (Gr. Floor) Elephant Road. Dhaka-1205', 1, 1, '2021-08-15 06:59:29', '2021-08-15 06:59:29'),
(3, 'Yasir Arafar', 'Shigning Trade', '01841677122', 'Mirpur-10', 1, 1, '2021-08-24 18:57:55', '2021-08-24 18:57:55'),
(4, 'Rejwan Vai', 'Newshopbd.com', '01676872500', 'Mirpur-10', 1, 1, '2021-09-16 16:38:02', '2021-09-16 16:38:16'),
(5, 'Nazrul Vai', 'Sheba Shop', '01932745566', 'Mirpur-10', 1, 1, '2021-09-16 16:41:26', '2021-09-16 16:41:26'),
(6, 'Smartdealbd.com', 'SMART DEAL BD', '01946224444', 'H-2, Somaj Kalla Masjid, Mirpur-10', 1, 1, '2021-09-21 14:09:31', '2021-09-21 14:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

CREATE TABLE `supplier_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `paid_by` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_payments`
--

INSERT INTO `supplier_payments` (`id`, `supplier_id`, `amount`, `paid_by`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 200, 'Cash', '2021-08-10', '2021-08-10 10:41:45', '2021-08-10 10:41:45'),
(2, 3, 20000, 'Cash', '2021-08-25', '2021-08-24 19:03:53', '2021-08-24 19:03:53'),
(3, 2, 10000, 'Cash', '2021-08-25', '2021-08-25 06:49:35', '2021-08-25 06:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile_no`, `email`, `email_verified_at`, `password`, `address`, `city`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shibbir Ahmad', '01737481778', 'shibbirahmad920229@gmail.com', NULL, '$2y$10$dWYgJCASqIeMBzV8cJ2Uz.FuNiUscpMLDomh8MsEP.X0xznTL.Mk.', 'Benaroshi Polli, Mirpur-10,Dhaka-1216', 'Dhaka', 1, NULL, '2021-10-07 08:05:38', '2021-10-07 08:05:38'),
(2, 'Shibbir Ahmad', '01759416979', 'shibbirahmad@gmail.com', NULL, '$2y$10$ceW.yc0CXUBzLmxCdL2Fv.XnBVgycrBsKvxNphkcsaf8JD3OLmNEK', 'Mirpur-10', 'Dhaka', 1, NULL, '2021-10-18 05:03:40', '2021-10-18 05:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `attribute_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'S', 1, 1, '2020-11-09 10:53:10', '2020-11-09 10:53:10'),
(2, 'L', 1, 1, '2020-11-09 10:53:21', '2020-11-09 10:53:21'),
(3, 'M', 1, 1, '2020-11-09 10:53:31', '2020-11-09 10:53:31'),
(4, 'XL', 1, 1, '2020-11-09 10:54:19', '2020-11-09 10:54:19'),
(5, 'XXL', 1, 1, '2020-11-09 10:54:26', '2020-11-09 10:54:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_and_contacts`
--
ALTER TABLE `about_and_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_purposes`
--
ALTER TABLE `account_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_name_unique` (`name`);

--
-- Indexes for table `background_and_colors`
--
ALTER TABLE `background_and_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_insert_admins`
--
ALTER TABLE `balance_insert_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_paid_statements`
--
ALTER TABLE `bill_paid_statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_per_months`
--
ALTER TABLE `bill_per_months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_statements`
--
ALTER TABLE `bill_statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_sliders`
--
ALTER TABLE `category_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_assets`
--
ALTER TABLE `company_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_sale_paids`
--
ALTER TABLE `company_sale_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cupons_code_unique` (`code`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_dues`
--
ALTER TABLE `credit_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_dues`
--
ALTER TABLE `customer_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debits`
--
ALTER TABLE `debits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factories`
--
ALTER TABLE `factories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fond_transfers`
--
ALTER TABLE `fond_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_settings`
--
ALTER TABLE `footer_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `found_transfers`
--
ALTER TABLE `found_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_returns`
--
ALTER TABLE `investment_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investor_profit_paids`
--
ALTER TABLE `investor_profit_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaners`
--
ALTER TABLE `loaners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_paids`
--
ALTER TABLE `loan_paids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_name` (`company_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `offer_banners`
--
ALTER TABLE `offer_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_barcodes`
--
ALTER TABLE `order_barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_notes`
--
ALTER TABLE `order_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_shipment_and_return_policies`
--
ALTER TABLE `order_shipment_and_return_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_houses`
--
ALTER TABLE `print_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_house_payments`
--
ALTER TABLE `print_house_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_barcodes`
--
ALTER TABLE `product_barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_for_prints`
--
ALTER TABLE `product_for_prints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseitems`
--
ALTER TABLE `purchaseitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receieve_printed_products`
--
ALTER TABLE `receieve_printed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resellers`
--
ALTER TABLE `resellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reseller_models`
--
ALTER TABLE `reseller_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reseller_order_details`
--
ALTER TABLE `reseller_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reseller_payments`
--
ALTER TABLE `reseller_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salary_per_months`
--
ALTER TABLE `salary_per_months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_campaigns`
--
ALTER TABLE `sale_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selling__offers`
--
ALTER TABLE `selling__offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_infos`
--
ALTER TABLE `service_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_cities`
--
ALTER TABLE `sub_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_and_contacts`
--
ALTER TABLE `about_and_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_purposes`
--
ALTER TABLE `account_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `background_and_colors`
--
ALTER TABLE `background_and_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `balance_insert_admins`
--
ALTER TABLE `balance_insert_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_paid_statements`
--
ALTER TABLE `bill_paid_statements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_per_months`
--
ALTER TABLE `bill_per_months`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_statements`
--
ALTER TABLE `bill_statements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_sliders`
--
ALTER TABLE `category_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_assets`
--
ALTER TABLE `company_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_sale_paids`
--
ALTER TABLE `company_sale_paids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_dues`
--
ALTER TABLE `credit_dues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_dues`
--
ALTER TABLE `customer_dues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debits`
--
ALTER TABLE `debits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factories`
--
ALTER TABLE `factories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fond_transfers`
--
ALTER TABLE `fond_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_settings`
--
ALTER TABLE `footer_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `found_transfers`
--
ALTER TABLE `found_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_returns`
--
ALTER TABLE `investment_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investor_profit_paids`
--
ALTER TABLE `investor_profit_paids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaners`
--
ALTER TABLE `loaners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_paids`
--
ALTER TABLE `loan_paids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_banners`
--
ALTER TABLE `offer_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_barcodes`
--
ALTER TABLE `order_barcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_notes`
--
ALTER TABLE `order_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_shipment_and_return_policies`
--
ALTER TABLE `order_shipment_and_return_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `print_houses`
--
ALTER TABLE `print_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `print_house_payments`
--
ALTER TABLE `print_house_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_barcodes`
--
ALTER TABLE `product_barcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `product_for_prints`
--
ALTER TABLE `product_for_prints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `purchaseitems`
--
ALTER TABLE `purchaseitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `receieve_printed_products`
--
ALTER TABLE `receieve_printed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resellers`
--
ALTER TABLE `resellers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_models`
--
ALTER TABLE `reseller_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_order_details`
--
ALTER TABLE `reseller_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reseller_payments`
--
ALTER TABLE `reseller_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `salary_per_months`
--
ALTER TABLE `salary_per_months`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_campaigns`
--
ALTER TABLE `sale_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selling__offers`
--
ALTER TABLE `selling__offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_infos`
--
ALTER TABLE `service_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_cities`
--
ALTER TABLE `sub_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
