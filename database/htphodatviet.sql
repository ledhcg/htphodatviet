-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 04:13 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `htphodatviet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('MALE','FEMALE','OTHER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MALE',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `gender`, `phone`, `address`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'HT PHO DAT VIET', 'MALE', '', '', 'avatar_default.png', 'mail@htphodatviet.com', NULL, '$2y$10$GEzCf.JwXA5aNJZGZIqdzeu0iTMYXDyLQaeAgGctcnfZujYSWfpbi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_vi`, `category_name_ru`, `category_image`, `category_status`, `created_at`, `updated_at`) VALUES
(1, '????? ??n', '??????', 'htphodatviet-1.jpg', 'ACTIVE', '2021-10-14 12:20:03', '2021-10-14 12:20:03'),
(2, '????? u???ng', '??????????????', 'htphodatviet-2.jpg', 'ACTIVE', '2021-10-14 12:20:03', '2021-10-14 12:20:03'),
(3, 'T???p h??a', '??????????????', 'htphodatviet-3.jpg', 'ACTIVE', '2021-10-14 12:20:03', '2021-10-14 12:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_16_115901_create_products_table', 1),
(6, '2021_09_16_115920_create_categories_table', 1),
(7, '2021_09_28_212425_create_shoppingcart_table', 1),
(8, '2021_10_01_021535_create_orders_table', 1),
(9, '2021_10_01_022901_create_order_details_table', 1),
(10, '2021_10_05_120026_create_shipping_fees_table', 1),
(11, '2021_10_05_205918_create_payment_methods_table', 1),
(12, '2021_10_08_143209_add_description_to_orders', 1),
(15, '2022_02_16_133028_admin', 2),
(16, '2021_10_17_150759_create_admins_table', 3),
(17, '2021_10_23_123447_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0fa73717-7bb7-43fc-ae68-ede9f76a29d3', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5556412753\",\"status\":\"CREATED\"}', '2022-02-22 21:43:59', '2022-02-22 21:43:21', '2022-02-22 21:43:59'),
('165dab07-d5e0-446b-bf30-31cf2f4698ca', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5647595060\"}', NULL, '2022-02-23 17:20:05', '2022-02-23 17:20:05'),
('1819c4d2-ae3e-4170-b7a1-517258c11949', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5542085809\",\"status\":\"DELIVERING\"}', '2022-02-22 19:42:38', '2022-02-22 19:40:27', '2022-02-22 19:42:38'),
('1af1e9eb-231b-4a33-8058-5bbf6d070d61', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5713312682\"}', NULL, '2022-02-24 11:35:38', '2022-02-24 11:35:38'),
('25b1f405-aef5-42ee-b625-c76be1083da1', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5556412753\",\"status\":\"RECEIVED\"}', NULL, '2022-02-23 15:58:38', '2022-02-23 15:58:38'),
('31b430bc-7ce4-49af-9e8b-7feb3a779ab0', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5542085809\",\"status\":\"RECEIVED\"}', '2022-02-22 21:44:10', '2022-02-22 21:43:12', '2022-02-22 21:44:10'),
('48574c7f-3836-4e57-a20d-1b447ef9cd4d', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"DELIVERED\"}', '2022-02-22 19:15:23', '2022-02-22 19:15:06', '2022-02-22 19:15:23'),
('4dba95b5-0673-4c21-a461-71c1126a2fc4', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5558877595\"}', '2022-02-22 21:50:27', '2022-02-22 16:41:27', '2022-02-22 21:50:27'),
('5c8c199e-5c45-4c91-8c29-0750f65fd0c7', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"DELIVERING\"}', '2022-02-22 19:37:51', '2022-02-22 19:37:20', '2022-02-22 19:37:51'),
('5e220140-42e2-4ee9-8227-33caa398d87b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5642040276\"}', '2022-02-23 15:57:18', '2022-02-23 15:47:31', '2022-02-23 15:57:18'),
('5f62c1f1-a5b4-4d48-97c1-bb0c7439e980', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5639252579\"}', '2022-02-23 15:18:25', '2022-02-23 15:01:06', '2022-02-23 15:18:25'),
('5f7fa700-e7f4-4bc9-ac71-3d73b82f83fe', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5556412753\",\"status\":\"DELIVERING\"}', '2022-02-23 15:58:56', '2022-02-23 15:57:59', '2022-02-23 15:58:56'),
('5fb235d4-562e-49f8-8689-aab9faa03764', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5542085809\",\"status\":\"RECEIVED\"}', '2022-02-22 19:43:26', '2022-02-22 19:43:23', '2022-02-22 19:43:26'),
('6068f93b-f173-4051-aaa3-28c3b66a118b', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5556412753\",\"status\":\"RECEIVED\"}', '2022-02-22 19:42:38', '2022-02-22 19:40:31', '2022-02-22 19:42:38'),
('696f6fea-240b-4068-a56a-f50f7894eb76', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5556412753\",\"status\":\"DELIVERING\"}', '2022-02-22 19:40:15', '2022-02-22 19:39:56', '2022-02-22 19:40:15'),
('6a8b1aa5-b50d-44a3-a6f0-4fb0ae641233', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"RECEIVED\"}', '2022-02-22 19:10:22', '2022-02-22 19:10:04', '2022-02-22 19:10:22'),
('6b19ca17-6d6f-40ff-9ff1-10553c0b75d1', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5647534252\"}', NULL, '2022-02-23 17:19:16', '2022-02-23 17:19:16'),
('7515671a-82b0-4247-9cb6-5eb1b043abc8', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5642656624\"}', '2022-02-23 15:57:53', '2022-02-23 15:57:45', '2022-02-23 15:57:53'),
('758707dd-95ca-474d-95bc-ea2ca27649b2', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5641862459\"}', '2022-02-23 15:57:18', '2022-02-23 15:44:31', '2022-02-23 15:57:18'),
('7c938c03-79ec-4411-bd7d-80dc1805a447', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 2, '{\"user_id\":2,\"order_tracking\":\"5552230650\",\"status\":\"DELIVERED\"}', NULL, '2022-02-22 21:43:17', '2022-02-22 21:43:17'),
('8384c11c-3f70-4824-a755-87419443620b', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"RECEIVED\"}', '2022-02-22 19:06:35', '2022-02-22 18:17:10', '2022-02-22 19:06:35'),
('83959abc-bef3-4d20-b06c-d69fdf81514d', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"CREATED\"}', '2022-02-22 19:37:51', '2022-02-22 19:37:26', '2022-02-22 19:37:51'),
('8551e8fb-20b5-4265-8444-90d52a8dc863', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5713169578\"}', NULL, '2022-02-24 11:34:59', '2022-02-24 11:34:59'),
('95b0d6c3-bced-4f4a-a8bb-360fc5817f63', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5642065748\"}', '2022-02-23 15:57:18', '2022-02-23 15:47:59', '2022-02-23 15:57:18'),
('99e3565b-89cf-410e-8c09-009fedff5d3e', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5640401275\"}', '2022-02-23 15:33:56', '2022-02-23 15:20:13', '2022-02-23 15:33:56'),
('9b8e7739-2ea4-4d8c-8272-115834274fa2', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"DELIVERING\"}', NULL, '2022-02-23 15:58:34', '2022-02-23 15:58:34'),
('a647e72b-4c43-4260-a054-cff078c494e4', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"DELIVERING\"}', '2022-02-22 19:05:33', '2022-02-22 18:18:12', '2022-02-22 19:05:33'),
('afb5e870-bd3b-4b72-809b-655d9ab1c274', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5640401275\",\"status\":\"DELIVERING\"}', NULL, '2022-02-23 15:58:43', '2022-02-23 15:58:43'),
('b6a9e5cb-3f39-4ce1-ab08-961d880f369d', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"DELIVERING\"}', '2022-02-22 19:06:07', '2022-02-22 18:16:47', '2022-02-22 19:06:07'),
('b71340d9-2379-4d55-a999-8d565f475d3b', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5556412753\",\"status\":\"DELIVERING\"}', '2022-02-22 19:43:26', '2022-02-22 19:43:18', '2022-02-22 19:43:26'),
('b8f15946-ec9c-4a73-b8af-8c0932ab50d6', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"DELIVERING\"}', '2022-02-22 19:15:37', '2022-02-22 19:13:50', '2022-02-22 19:15:37'),
('c0d9d77f-9ffd-47b3-ae7d-5e298bdd25be', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Admin', 1, '{\"order_tracking\":\"5641828497\"}', '2022-02-23 15:57:18', '2022-02-23 15:44:00', '2022-02-23 15:57:18'),
('d0b1f6e2-9d19-4291-b10d-41630a311476', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5557436499\",\"status\":\"DELIVERING\"}', '2022-02-22 19:36:51', '2022-02-22 19:36:22', '2022-02-22 19:36:51'),
('e3d4d94f-bedb-427f-9d5f-6d68cd5537c8', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5556412753\",\"status\":\"DELIVERED\"}', NULL, '2022-02-23 15:58:16', '2022-02-23 15:58:16'),
('e4c50f7d-516b-47a0-9a60-bdd3907e58f3', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"order_tracking\":\"5532128979\",\"status\":\"RECEIVED\"}', '2022-02-22 19:42:38', '2022-02-22 19:40:36', '2022-02-22 19:42:38'),
('ee4b0a75-46ab-4c4e-9963-7d30c3f44a01', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"RECEIVED\"}', '2022-02-22 19:07:00', '2022-02-22 18:14:30', '2022-02-22 19:07:00'),
('ff00b343-8a7d-4bf9-a384-2a72fa6d7ad6', 'App\\Notifications\\ChangeOrderStatusNotification', 'App\\Models\\User', 3, '{\"user_id\":3,\"order_tracking\":\"5558877595\",\"status\":\"RECEIVED\"}', '2022-02-22 19:36:51', '2022-02-22 19:36:16', '2022-02-22 19:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` enum('CREATED','RECEIVED','DELIVERING','DELIVERED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CREATED',
  `order_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double(8,2) NOT NULL,
  `order_discount` double(8,2) NOT NULL,
  `order_payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_payment_status` enum('CREATED','CANCELED','SUCCEEDED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CREATED',
  `order_ship` double(8,2) NOT NULL,
  `order_tracking` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `client_name`, `client_email`, `client_phone`, `client_address`, `order_status`, `order_note`, `order_total`, `order_discount`, `order_payment`, `order_payment_status`, `order_ship`, `order_tracking`, `created_at`, `updated_at`, `order_description`) VALUES
(35, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'RECEIVED', 'Nothing', 87699.00, 0.00, '1', 'CREATED', 86950.00, '5532128979', '2022-02-22 09:18:55', '2022-02-22 19:40:35', 'Order ID: 5532128979'),
(36, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'RECEIVED', 'Nothing', 87049.00, 0.00, '1', 'CREATED', 86650.00, '5542085809', '2022-02-22 12:01:42', '2022-02-22 21:43:08', 'Order ID: 5542085809'),
(37, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'RECEIVED', 'Nothing', 87049.00, 0.00, '1', 'CREATED', 86650.00, '5542085809', '2022-02-22 12:02:31', '2022-02-22 19:43:22', 'Order ID: 5542085809'),
(38, 2, 'Le', 'hi@ledinhcuong.com', '+79857225151', '????????????, ????????????, 11-?? ???????????????? ??????????, 32', 'DELIVERED', 'Nothing', 849.00, 0.00, '1', 'CREATED', 100.00, '5552230650', '2022-02-22 14:50:50', '2022-02-22 21:43:16', 'Order ID: 5552230650'),
(39, 2, 'Le', 'hi@ledinhcuong.com', '+79857225151', '????????????, ????????????, 11-?? ???????????????? ??????????', 'DELIVERING', 'Nothing', 499.00, 0.00, '1', 'CREATED', 100.00, '5552629618', '2022-02-22 14:57:21', '2022-02-22 15:49:59', 'Order ID: 5552629618'),
(40, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'RECEIVED', 'Nothing', 86799.00, 0.00, '1', 'CREATED', 86400.00, '5556412753', '2022-02-22 16:00:24', '2022-02-23 15:58:37', 'Order ID: 5556412753'),
(41, 2, 'Le', 'hi@ledinhcuong.com', '+79857225151', '????????????, ????????????, 11-?? ???????????????? ??????????', 'DELIVERED', 'Nothing', 849.00, 0.00, '1', 'CREATED', 100.00, '5556549059', '2022-02-22 16:02:40', '2022-02-22 16:40:43', 'Order ID: 5556549059'),
(42, 3, 'C', 'dinhcuong.firewin99@gmail.com', '+79857336161', '????????????, ????????????, 11-?? ???????????????? ??????????', 'DELIVERING', 'Nothing', 450.00, 0.00, '1', 'CREATED', 100.00, '5557436499', '2022-02-22 16:17:27', '2022-02-22 19:36:22', 'Order ID: 5557436499'),
(43, 3, 'C', 'dinhcuong.firewin99@gmail.com', '+79857336161', '????????????, ????????????, 11-?? ???????????????? ??????????', 'DELIVERING', 'Nothing', 450.00, 0.00, '1', 'CREATED', 100.00, '5558877595', '2022-02-22 16:41:27', '2022-02-23 15:58:33', 'Order ID: 5558877595'),
(44, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'CREATED', 'Nothing', 87050.00, 0.00, '1', 'CREATED', 86700.00, '5639252579', '2022-02-23 15:01:03', '2022-02-23 15:01:03', 'Order ID: 5639252579'),
(45, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'DELIVERING', 'Nothing', 86900.00, 0.00, '1', 'CREATED', 86600.00, '5640401275', '2022-02-23 15:20:13', '2022-02-23 15:58:43', 'Order ID: 5640401275'),
(46, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'CREATED', 'Nothing', 86800.00, 0.00, '1', 'CREATED', 86450.00, '5641828497', '2022-02-23 15:43:59', '2022-02-23 15:43:59', 'Order ID: 5641828497'),
(47, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'CREATED', 'Nothing', 86750.00, 0.00, '1', 'CREATED', 86450.00, '5641862459', '2022-02-23 15:44:31', '2022-02-23 15:44:31', 'Order ID: 5641862459'),
(48, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'CREATED', 'Nothing', 86800.00, 0.00, '1', 'CREATED', 86450.00, '5642040276', '2022-02-23 15:47:31', '2022-02-23 15:47:31', 'Order ID: 5642040276'),
(49, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'CREATED', 'Nothing', 86800.00, 0.00, '1', 'CREATED', 86450.00, '5642065748', '2022-02-23 15:47:59', '2022-02-23 15:47:59', 'Order ID: 5642065748'),
(50, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'CREATED', 'Nothing', 87500.00, 0.00, '1', 'CREATED', 87200.00, '5642656624', '2022-02-23 15:57:45', '2022-02-23 15:57:45', 'Order ID: 5642656624'),
(51, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'CREATED', 'Nothing', 86800.00, 0.00, '1', 'CREATED', 86450.00, '5647534252', '2022-02-23 17:19:15', '2022-02-23 17:19:15', 'Order ID: 5647534252'),
(52, 1, 'Le Dinh Cuong', 'mail@dinhcuong.me', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'CREATED', 'Nothing', 86849.00, 0.00, '1', 'CREATED', 86450.00, '5647595060', '2022-02-23 17:20:04', '2022-02-23 17:20:04', 'Order ID: 5647595060'),
(53, 4, 'HT Pho Dat Viet', 'mail@htphodatviet.com', '+79857336161', '????????????, ????????, ?????????????????? ??????????, 47', 'CREATED', 'Nothing', 350.00, 0.00, '1', 'CREATED', 0.00, '5713169578', '2022-02-24 11:34:55', '2022-02-24 11:34:55', 'Order ID: 5713169578'),
(54, 4, 'HT Pho Dat Viet', 'mail@htphodatviet.com', '+79857336161', '????????????, ????????, ?????????????????? ??????????, 47', 'CREATED', '34', 350.00, 0.00, '1', 'CREATED', 0.00, '5713312682', '2022-02-24 11:35:37', '2022-02-24 11:35:37', 'Order ID: 5713312682');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(26, '5100612553', 24, 300.00, 1, '2022-02-17 09:30:54', '2022-02-17 09:30:54'),
(27, '5100612553', 24, 300.00, 1, '2022-02-17 09:32:02', '2022-02-17 09:32:02'),
(28, '5102901150', 2, 399.00, 1, '2022-02-17 10:01:50', '2022-02-17 10:01:50'),
(29, '5102901150', 2, 399.00, 1, '2022-02-17 10:03:30', '2022-02-17 10:03:30'),
(30, '5103928433', 2, 399.00, 1, '2022-02-17 10:18:57', '2022-02-17 10:18:57'),
(31, '5103928433', 2, 399.00, 1, '2022-02-17 10:19:50', '2022-02-17 10:19:50'),
(32, '5103928433', 2, 399.00, 1, '2022-02-17 10:20:16', '2022-02-17 10:20:16'),
(33, '5106572411', 2, 399.00, 1, '2022-02-17 11:03:02', '2022-02-17 11:03:02'),
(34, '5106642871', 25, 300.00, 1, '2022-02-17 11:04:12', '2022-02-17 11:04:12'),
(35, '5106870403', 2, 399.00, 1, '2022-02-17 11:08:00', '2022-02-17 11:08:00'),
(36, '5108494401', 2, 399.00, 1, '2022-02-17 11:35:05', '2022-02-17 11:35:05'),
(37, '5137941965', 2, 399.00, 2, '2022-02-17 19:45:54', '2022-02-17 19:45:54'),
(38, '5137941965', 4, 300.00, 1, '2022-02-17 19:45:54', '2022-02-17 19:45:54'),
(39, '5137941965', 5, 150.00, 2, '2022-02-17 19:45:54', '2022-02-17 19:45:54'),
(40, '5137941965', 3, 350.00, 1, '2022-02-17 19:45:54', '2022-02-17 19:45:54'),
(41, '5138064880', 2, 399.00, 1, '2022-02-17 19:47:56', '2022-02-17 19:47:56'),
(42, '5138064880', 5, 150.00, 1, '2022-02-17 19:47:56', '2022-02-17 19:47:56'),
(43, '5138103942', 1, 300.00, 1, '2022-02-17 19:48:33', '2022-02-17 19:48:33'),
(44, '5138103942', 5, 150.00, 1, '2022-02-17 19:48:33', '2022-02-17 19:48:33'),
(45, '5138103942', 4, 300.00, 1, '2022-02-17 19:48:33', '2022-02-17 19:48:33'),
(46, '5532128979', 2, 399.00, 1, '2022-02-22 09:18:55', '2022-02-22 09:18:55'),
(47, '5532128979', 3, 350.00, 1, '2022-02-22 09:18:55', '2022-02-22 09:18:55'),
(48, '5542085809', 2, 399.00, 1, '2022-02-22 12:01:42', '2022-02-22 12:01:42'),
(49, '5542085809', 2, 399.00, 1, '2022-02-22 12:02:31', '2022-02-22 12:02:31'),
(50, '5552230650', 2, 399.00, 1, '2022-02-22 14:50:50', '2022-02-22 14:50:50'),
(51, '5552230650', 3, 350.00, 1, '2022-02-22 14:50:50', '2022-02-22 14:50:50'),
(52, '5552629618', 2, 399.00, 1, '2022-02-22 14:57:21', '2022-02-22 14:57:21'),
(53, '5556412753', 2, 399.00, 1, '2022-02-22 16:00:24', '2022-02-22 16:00:24'),
(54, '5556549059', 2, 399.00, 1, '2022-02-22 16:02:40', '2022-02-22 16:02:40'),
(55, '5556549059', 3, 350.00, 1, '2022-02-22 16:02:40', '2022-02-22 16:02:40'),
(56, '5557436499', 3, 350.00, 1, '2022-02-22 16:17:27', '2022-02-22 16:17:27'),
(57, '5558877595', 3, 350.00, 1, '2022-02-22 16:41:27', '2022-02-22 16:41:27'),
(58, '5639252579', 3, 350.00, 1, '2022-02-23 15:01:03', '2022-02-23 15:01:03'),
(59, '5640401275', 24, 300.00, 1, '2022-02-23 15:20:13', '2022-02-23 15:20:13'),
(60, '5641828497', 3, 350.00, 1, '2022-02-23 15:43:59', '2022-02-23 15:43:59'),
(61, '5641862459', 11, 300.00, 1, '2022-02-23 15:44:31', '2022-02-23 15:44:31'),
(62, '5642040276', 3, 350.00, 1, '2022-02-23 15:47:31', '2022-02-23 15:47:31'),
(63, '5642065748', 3, 350.00, 1, '2022-02-23 15:47:59', '2022-02-23 15:47:59'),
(64, '5642656624', 27, 300.00, 1, '2022-02-23 15:57:45', '2022-02-23 15:57:45'),
(65, '5647534252', 3, 350.00, 1, '2022-02-23 17:19:15', '2022-02-23 17:19:15'),
(66, '5647595060', 2, 399.00, 1, '2022-02-23 17:20:04', '2022-02-23 17:20:04'),
(67, '5713169578', 3, 350.00, 1, '2022-02-24 11:34:55', '2022-02-24 11:34:55'),
(68, '5713312682', 3, 350.00, 1, '2022-02-24 11:35:37', '2022-02-24 11:35:37');

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pay by cash on delivery', '2021-10-14 11:09:16', '2021-10-14 11:09:16'),
(2, 'Pay with Credit Card', '2021-10-14 11:09:16', '2021-10-14 11:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price_last` double(8,2) NOT NULL,
  `product_price_fix` double(8,2) NOT NULL,
  `product_price_discount` double(8,2) NOT NULL,
  `product_quantity_to_discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name_vi`, `product_name_ru`, `product_description_vi`, `product_description_ru`, `product_image`, `product_unit_vi`, `product_unit_ru`, `product_price_last`, `product_price_fix`, `product_price_discount`, `product_quantity_to_discount`, `category_id`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'B??n Ch???', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-1.jpg', 'b??t', '??????????', 399.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:27:52'),
(2, 'T??m Yam', '?????? ????', '(Nothing)', '????????????????, ?????????????????? ???????????? ??????????, ??????????, ??????', 'htphodatviet-2.jpg', '600ml', '600????', 399.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:31:25'),
(3, 'T??m Chi??n X??', '?????? ???????? ????', '(Nothing)', '?????????????? ???????????????? ?? ??????????????', 'htphodatviet-3.jpg', '6 c??i', '6 ????.', 350.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:31:45'),
(4, 'Steak C?? H???i', '???????????? ??????????', '(Nothing)', '(Nothing)', 'htphodatviet-4.jpg', 'b??t', '??????????', 399.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:37:07'),
(5, 'B??nh Bao', '???????? ??????', '(Nothing)', '????????, ??????????, ????????????, ??????????????', 'htphodatviet-5.jpg', '200gr', '200????', 150.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:31:59'),
(6, 'B?? B??t T???t', '???? ?????? ??????', '(Nothing)', '????????????????, ????????, ????????????, ??????????????, ????????', 'htphodatviet-6.jpg', '500gr', '500????', 399.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:32:17'),
(7, 'Ph??? tr???n', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-7.jpg', 'b??t', '??????????', 399.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:37:47'),
(8, 'H??u n?????ng m??? h??nh', '?????????????? ???? ?????????? ?? ?????????????? ??????????', '(Nothing)', '(Nothing)', 'htphodatviet-8.jpg', 'b??t', '??????????', 399.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:41:20'),
(9, 'Ph??? b??', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-9.jpg', 'b??t', '??????????', 399.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:46:36'),
(10, 'S??p t??m', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-10.jpg', 'b??t', '??????????', 399.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:46:52'),
(11, 'Mi???n g??', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-11.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:47:15'),
(12, 'M?? g??', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-12.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:47:44'),
(13, 'Nem r??n', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-13.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:48:16'),
(14, 'Nem r??n', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-14.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'INACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:49:48'),
(15, 'N???m t??m', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-15.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:49:07'),
(16, 'N???m t??m', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-16.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'INACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:49:38'),
(17, 'C??m H???i S???n', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-17.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:51:04'),
(18, 'C??m rang g??', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-18.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:51:22'),
(19, 'M?? b??', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-19.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:51:46'),
(20, 'G???i cu???n', '?????? ????????', '(Nothing)', '????????????????, ?????????????? ??????????, ?????????????? ????????????, ??????????, ??????????, ????????', 'htphodatviet-20.jpg', '2 c??i', '2 ????.', 220.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:45:52'),
(21, 'B??n Tr???n', '?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-21.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:45:27'),
(22, 'B??n Tr???n', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-22.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'INACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:52:05'),
(23, 'N?????c xo??i', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-23.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:43:48'),
(24, 'N?????c b??', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-24.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:43:25'),
(25, 'N?????c chanh', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-25.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:43:02'),
(26, 'N?????c chanh leo', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-26.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:42:45'),
(27, 'N?????c cam', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-27.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:42:31'),
(28, 'C?? ph??', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-28.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:42:09'),
(29, 'Tr??', '??????', '(Nothing)', '(Nothing)', 'htphodatviet-29.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2022-02-24 08:30:08'),
(30, 'Ph??? b??', '???? ???? ?? ??????????????????', '(Nothing)', '(Nothing)', 'htphodatviet-30.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(31, 'B??n Ch???', '?????? ?????? ????????', '(Nothing)', '(Nothing)', 'htphodatviet-31.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(32, 'Ph??? b?? v???i t??m', '???? ???? ?? ????????????????????', '(Nothing)', '(Nothing)', 'htphodatviet-32.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(33, 'C??m T??m Yum', '?????? ???? ?? ??????????', '(Nothing)', '(Nothing)', 'htphodatviet-33.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(34, 'Ph??? b?? s???t vang', '???? ???? ?????? ????????', '(Nothing)', '(Nothing)', 'htphodatviet-34.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(35, 'Ramen T??m Yum', '?????????? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-35.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(36, 'C??m x??o g??', '?????? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-36.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(37, 'C??m x??o b??', '?????? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-37.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(38, 'C??m x??o h???i s???n', '?????? ?????? ?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-38.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(39, 'B??n nem', '?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-39.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(40, 'B??n nem cua', '?????? ?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-40.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(41, 'Ph??? x??o g??', '???? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-41.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(42, 'Ph??? x??o b??', '???? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-42.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(43, 'Ph??? x??o h???i s???n', '???? ?????? ?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-43.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(44, 'Mi???n x??o g??', '???????? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-44.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(45, 'B??n ch???', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-45.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(46, 'C??m rang', '?????? ????????', '(Nothing)', '(Nothing)', 'htphodatviet-46.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(47, 'G???i t??m', '?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-47.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(48, 'Nem g??', '?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-48.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(49, 'Nem cua', '?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-49.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(50, 'Mi???n x??o h???i s???n', '???????? ?????? ?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-50.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(51, 'Mi???n x??o b??', '???????? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-51.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(52, 'N???m xo??i', '?????? ????????', '(Nothing)', '(Nothing)', 'htphodatviet-52.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(53, 'M?? t??m x??o g??', '???? ?????? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-53.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(54, 'M?? t??m x??o b??', '???? ?????? ?????? ????', '(Nothing)', '(Nothing)', 'htphodatviet-54.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(55, 'M?? t??m x??o h???i s???n', '???? ?????? ?????? ?????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-55.jpg', 'b??t', '??????????', 300.00, 0.00, 0.00, 0, 1, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(56, 'C?? ph?? Vi???t', '???????? ????-????????????????????', '(Nothing)', '(Nothing)', 'htphodatviet-56.jpg', 'c???c', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(57, 'N?????c chanh leo', '???????????????? ??????', '(Nothing)', '(Nothing)', 'htphodatviet-57.jpg', 'c???c', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(58, 'C?? ph?? Vi???t Nam', '???????? ??????????????????????', '(Nothing)', '(Nothing)', 'htphodatviet-58.jpg', 'c???c', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(59, 'Sinh t??? b??', '?????????????? ????????', '(Nothing)', '(Nothing)', 'htphodatviet-59.jpg', 'c???c', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(60, 'N?????c chanh', '?????????????? ??????????', '(Nothing)', '(Nothing)', 'htphodatviet-60.jpg', 'c???c', '??????????', 300.00, 0.00, 0.00, 0, 2, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(61, 'Vinut 330ml - Xo??i', 'Vinut 330ml - Mango', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(62, 'Vinut 330ml - M??ng c???t', 'Vinut 330ml - Mangosteen', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(63, 'Vinut 330ml - B??', 'Vinut 330ml - Avocado', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(64, 'Vinut 330ml - Thanh long', 'Vinut 330ml - Dragon fruit', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(65, 'Vinut 330ml - M??t', 'Vinut 330ml - Jack fruit', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(66, 'Vinut 330ml - ???i', 'Vinut 330ml - Guava', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(67, 'Vinut 330ml - D??a h???u', 'Vinut 330ml - Watermelon', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(68, 'Vinut 330ml - D???a', 'Vinut 330ml - Coconut water', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(69, 'Vinut 330ml - ??u ?????', 'Vinut 330ml - Papaya', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(70, 'Vinut 330ml - D???a', 'Vinut 330ml - Pineapple', '(Nothing)', '(Nothing)', 'htphodatviet-66.jpg', 'lon', '????.', 99.00, 0.00, 79.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(71, 'Vinut 490ml - Xo??i', 'Vinut 490ml - Mango', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(72, 'Vinut 490ml - M??ng c???t', 'Vinut 490ml - Mangosteen', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(73, 'Vinut 490ml - B??', 'Vinut 490ml - Avocado', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(74, 'Vinut 490ml - Thanh long', 'Vinut 490ml - Dragon fruit', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(75, 'Vinut 490ml - M??t', 'Vinut 490ml - Jack fruit', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(76, 'Vinut 490ml - ???i', 'Vinut 490ml - Guava', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(77, 'Vinut 490ml - D??a h???u', 'Vinut 490ml - Watermelon', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(78, 'Vinut 490ml - D???a', 'Vinut 490ml - Coconut water', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(79, 'Vinut 490ml - ??u ?????', 'Vinut 490ml - Papaya', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(80, 'Vinut 490ml - D???a', 'Vinut 490ml - Pineapple', '(Nothing)', '(Nothing)', 'htphodatviet-67.jpg', 'lon', '????.', 150.00, 0.00, 120.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(81, 'B?? h??c Redbull Th??i', 'Redbull Thailand', '(Nothing)', '(Nothing)', 'htphodatviet-65.jpg', 'lon', '????.', 160.00, 0.00, 130.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(82, 'Bia S??i G??n', '???????? Saigon', '(Nothing)', '(Nothing)', 'htphodatviet-63.jpg', 'lon', '????.', 200.00, 0.00, 170.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(83, 'Bia H?? N???i', '???????? Hanoi', '(Nothing)', '(Nothing)', 'htphodatviet-64.jpg', 'lon', '????.', 180.00, 0.00, 150.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(84, 'N?????c l???c (Kh??ng ga)', 'Aqua Minerale - ????????????????????????????', '(Nothing)', '(Nothing)', 'htphodatviet-62.jpg', 'lon', '????.', 60.00, 0.00, 45.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10'),
(85, 'N?????c l???c (C?? ga)', 'Aqua Minerale - ????????????????????????', '(Nothing)', '(Nothing)', 'htphodatviet-70.jpg', 'lon', '????.', 60.00, 0.00, 45.00, 6, 3, 'ACTIVE', '2021-10-14 12:26:10', '2021-10-14 12:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_fees`
--

CREATE TABLE `shipping_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `MINIMUM_COST` double(8,2) NOT NULL,
  `SHIPPING_CHARGES` double(8,2) NOT NULL,
  `MIN_TOTAL_TO_GET_FREE` double(8,2) NOT NULL,
  `MAX_DISTANCE_TO_GET_FREE` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_fees`
--

INSERT INTO `shipping_fees` (`id`, `MINIMUM_COST`, `SHIPPING_CHARGES`, `MIN_TOTAL_TO_GET_FREE`, `MAX_DISTANCE_TO_GET_FREE`, `created_at`, `updated_at`) VALUES
(1, 100.00, 50.00, 2000.00, 1.00, '2021-10-14 11:09:16', '2021-10-14 11:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('dinhcuong.firewin99@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-02-22 16:41:27', NULL),
('dinhcuong.firewin99@gmail.com', 'checkout', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-02-22 16:41:27', NULL),
('dinhcuong.firewin99@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-02-22 17:57:48', NULL),
('hi@ledinhcuong.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-02-22 16:02:41', NULL),
('hi@ledinhcuong.com', 'checkout', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-02-22 16:02:41', NULL),
('mail@dinhcuong.me', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"156f4036e5adeda9c5855fc16796d9b3\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":10:{s:5:\"rowId\";s:32:\"156f4036e5adeda9c5855fc16796d9b3\";s:2:\"id\";i:71;s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:19:\"Vinut 490ml - Xo??i\";s:5:\"price\";d:150;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:11:{s:15:\"product_name_ru\";s:19:\"Vinut 490ml - Mango\";s:15:\"product_name_vi\";s:19:\"Vinut 490ml - Xo??i\";s:16:\"category_name_vi\";s:10:\"T???p h??a\";s:16:\"category_name_ru\";s:14:\"??????????????\";s:15:\"product_unit_vi\";s:3:\"lon\";s:15:\"product_unit_ru\";s:5:\"????.\";s:18:\"product_price_last\";d:150;s:17:\"product_price_fix\";d:0;s:22:\"product_price_discount\";d:120;s:28:\"product_quantity_to_discount\";i:6;s:13:\"product_image\";s:19:\"htphodatviet-67.jpg\";}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;s:8:\"priceTax\";d:181.5;}}}', '2022-02-24 10:52:31', NULL),
('mail@dinhcuong.me', 'checkout', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:2:{s:32:\"a58d51c55e5c7a06410a9ba18e09003e\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a58d51c55e5c7a06410a9ba18e09003e\";s:2:\"id\";s:1:\"1\";s:3:\"qty\";i:1;s:4:\"name\";s:1:\"1\";s:5:\"price\";d:1;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:10:{s:11:\"client_name\";s:13:\"Le Dinh Cuong\";s:12:\"client_email\";s:17:\"mail@dinhcuong.me\";s:12:\"client_phone\";s:12:\"+79837336161\";s:14:\"client_address\";s:114:\"????????????, ?????????????????????????? ??????????, ???????? ????????-????????, ?????????????????? ??????????, 47\";s:10:\"order_note\";s:7:\"Nothing\";s:10:\"order_ship\";s:6:\"179000\";s:14:\"order_discount\";s:1:\"0\";s:14:\"order_tracking\";s:10:\"5710676265\";s:13:\"order_payment\";s:1:\"1\";s:11:\"description\";s:20:\"Order ID: 5710676265\";}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"6396c4692b17d16659562636326da647\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"6396c4692b17d16659562636326da647\";s:2:\"id\";s:1:\"1\";s:3:\"qty\";i:1;s:4:\"name\";s:1:\"1\";s:5:\"price\";d:1;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:10:{s:11:\"client_name\";s:13:\"Le Dinh Cuong\";s:12:\"client_email\";s:17:\"mail@dinhcuong.me\";s:12:\"client_phone\";s:12:\"+79837336161\";s:14:\"client_address\";s:80:\"????????????, ???????????????? ??????????????, ?????????????????? ??????????, 46\";s:10:\"order_note\";s:7:\"Nothing\";s:10:\"order_ship\";s:3:\"550\";s:14:\"order_discount\";s:1:\"0\";s:14:\"order_tracking\";s:10:\"5710821132\";s:13:\"order_payment\";s:1:\"1\";s:11:\"description\";s:20:\"Order ID: 5710821132\";}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}}', '2022-02-24 10:55:10', NULL),
('mail@htphodatviet.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-02-24 11:35:38', NULL),
('mail@htphodatviet.com', 'checkout', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-02-24 11:35:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('MALE','FEMALE','OTHER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MALE',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `phone`, `address`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Le Dinh Cuong', 'MALE', '+79837336161', '??????????????????, ????????????, 11-?? ????????????????????', 'default/avatar_default.png', 'mail@dinhcuong.me', NULL, '$2y$10$GEzCf.JwXA5aNJZGZIqdzeu0iTMYXDyLQaeAgGctcnfZujYSWfpbi', NULL, '2021-10-14 11:09:16', '2021-10-14 11:09:16'),
(2, 'Le', 'MALE', '+79857225151', '????????????, ????????????, 11-?? ???????????????? ??????????', 'default/avatar_default.png', 'hi@ledinhcuong.com', NULL, '$2y$10$pMZbZf83FA0gdASw44EGMO/9Ps7KFqOcBbN3o58aYGZwT9wI.ouAu', NULL, '2022-02-22 14:49:04', '2022-02-22 14:49:04'),
(3, 'C', 'MALE', '+79857336161', '????????????, ????????????, 11-?? ???????????????? ??????????', 'default/avatar_default.png', 'dinhcuong.firewin99@gmail.com', NULL, '$2y$10$Ae0mSsks3dX6eJT5mQLCPO/P5Dgt6FAETLieGYFn8new9nykOfdP.', NULL, '2022-02-22 16:16:50', '2022-02-22 16:16:50'),
(4, 'HT Pho Dat Viet', 'MALE', '+79857336161', '????????????, ????????, ?????????????????? ??????????, 47', 'default/avatar_default.png', 'mail@htphodatviet.com', NULL, '$2y$10$eMryh5rX/TV2/.RH3YgtZ.ONVFkUbh5WWXI6Ew0cLJdPG4tVsxaDu', NULL, '2022-02-24 10:57:36', '2022-02-24 10:57:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_fees`
--
ALTER TABLE `shipping_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `shipping_fees`
--
ALTER TABLE `shipping_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
