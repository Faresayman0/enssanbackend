-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2024 at 03:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylolo`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'macaddress', 'text', 'Macaddress', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'longitude', 'text', 'Longitude', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'latitude', 'text', 'Latitude', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'bloodpressure', 'text', 'Bloodpressure', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(4, 'devices', 'devices', 'Device', 'Devices', 'voyager-magnet', 'App\\Models\\Device', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-02-09 17:20:39', '2024-02-09 17:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint UNSIGNED NOT NULL,
  `macaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bloodpressure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `macaddress`, `longitude`, `latitude`, `bloodpressure`, `created_at`, `updated_at`) VALUES
(1, 'DC:3D:C5:AD:43:E8', '142.314232', '-56.417908', '41', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(2, 'DB:C9:BA:5C:34:F5', '-173.319188', '-72.927797', '144', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(3, 'E0:02:67:0E:C4:E8', '-49.991262', '-57.218679', '114', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(4, '9D:15:AD:C0:9B:CD', '139.804572', '-8.262769', '26', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(5, '77:1E:9C:69:77:8C', '-91.499062', '-46.142677', '56', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(6, '37:CD:E0:B5:59:28', '106.991493', '48.626934', '89', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(7, 'B0:81:AB:FD:C6:7F', '-62.057587', '-75.64961', '131', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(8, '31:6D:86:6E:94:FE', '13.61525', '27.736668', '119', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(9, 'FB:60:AE:CF:65:AD', '-139.078434', '-5.488998', '65', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(10, 'F2:A7:0A:15:F3:30', '-23.700708', '-4.093049', '120', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(11, 'd32dd1', 's21s12s1', 'sd32s32s', '100', '2024-02-09 14:30:13', '2024-02-09 14:33:08'),
(12, 'your_macaddress_value', 'your_longitude_value', 'your_latitude_value', 'your_bloodpressure_value', '2024-02-09 14:52:20', '2024-02-09 14:52:20'),
(13, 'DC:3D:C5:AD:43:E8', '142.314232', '-56.417908', '41', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(14, 'DC:3D:C5:AD:43:E8', '142.314232', '-56.417908', '41', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(15, 'DC:3D:C5:AD:43:E8', '142.314232', '-56.417908', '41', '2024-02-09 14:16:54', '2024-02-09 14:16:54'),
(16, '21sd21s2d1', '21d15s', 'kjdsjjsd', '120', '2024-02-09 16:42:08', '2024-02-09 16:42:08'),
(17, '21sd21s2d1', '21d15s', 'kjdsjjsd', '120', '2024-02-09 17:15:54', '2024-02-09 17:15:54'),
(18, '21sd21s2d1', '21d15s', 'kjdsjjsd', '120', '2024-02-09 18:48:06', '2024-02-09 18:48:06'),
(19, '21sd21s2d1', '21d15s', 'kjdsjjsd', '120', '2024-02-09 18:57:17', '2024-02-09 18:57:17');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-02-09 17:15:40', '2024-02-09 17:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-02-09 17:15:40', '2024-02-09 17:15:40', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2024-02-09 17:15:40', '2024-02-09 17:15:40', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-02-09 17:15:40', '2024-02-09 17:15:40', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-02-09 17:15:40', '2024-02-09 17:15:40', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2024-02-09 17:15:40', '2024-02-09 17:28:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-02-09 17:15:40', '2024-02-09 17:28:05', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-02-09 17:15:40', '2024-02-09 17:28:05', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-02-09 17:15:40', '2024-02-09 17:28:05', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-02-09 17:15:40', '2024-02-09 17:28:05', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2024-02-09 17:15:40', '2024-02-09 17:28:05', 'voyager.settings.index', NULL),
(11, 1, 'Devices', '', '_self', 'voyager-magnet', NULL, NULL, 4, '2024-02-09 17:20:39', '2024-02-09 17:28:05', 'voyager.devices.index', NULL);

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
(5, '2024_02_09_160503_create_devices_table', 2),
(6, '2024_02_09_160730_add_device_to_users', 3),
(7, '2016_01_01_000000_add_voyager_user_fields', 4),
(8, '2016_01_01_000000_create_data_types_table', 4),
(9, '2016_05_19_173453_create_menu_table', 4),
(10, '2016_10_21_190000_create_roles_table', 4),
(11, '2016_10_21_190000_create_settings_table', 4),
(12, '2016_11_30_135954_create_permission_table', 4),
(13, '2016_11_30_141208_create_permission_role_table', 4),
(14, '2016_12_26_201236_data_types__add__server_side', 4),
(15, '2017_01_13_000000_add_route_to_menu_items_table', 4),
(16, '2017_01_14_005015_create_translations_table', 4),
(17, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 4),
(18, '2017_03_06_000000_add_controller_to_data_types_table', 4),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 4),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 4),
(21, '2017_08_05_000000_add_group_to_settings_table', 4),
(22, '2017_11_26_013050_add_user_role_relationship', 4),
(23, '2017_11_26_015000_create_user_roles_table', 4),
(24, '2018_03_11_000000_add_user_settings', 4),
(25, '2018_03_14_000000_add_details_to_data_types_table', 4),
(26, '2018_03_16_000000_make_settings_value_nullable', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(2, 'browse_bread', NULL, '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(3, 'browse_database', NULL, '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(4, 'browse_media', NULL, '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(5, 'browse_compass', NULL, '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(6, 'browse_menus', 'menus', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(7, 'read_menus', 'menus', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(8, 'edit_menus', 'menus', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(9, 'add_menus', 'menus', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(10, 'delete_menus', 'menus', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(11, 'browse_roles', 'roles', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(12, 'read_roles', 'roles', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(13, 'edit_roles', 'roles', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(14, 'add_roles', 'roles', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(15, 'delete_roles', 'roles', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(16, 'browse_users', 'users', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(17, 'read_users', 'users', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(18, 'edit_users', 'users', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(19, 'add_users', 'users', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(20, 'delete_users', 'users', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(21, 'browse_settings', 'settings', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(22, 'read_settings', 'settings', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(23, 'edit_settings', 'settings', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(24, 'add_settings', 'settings', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(25, 'delete_settings', 'settings', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(26, 'browse_devices', 'devices', '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(27, 'read_devices', 'devices', '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(28, 'edit_devices', 'devices', '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(29, 'add_devices', 'devices', '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(30, 'delete_devices', 'devices', '2024-02-09 17:20:39', '2024-02-09 17:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-02-09 17:15:40', '2024-02-09 17:15:40'),
(2, 'user', 'Normal User', '2024-02-09 17:15:40', '2024-02-09 17:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Admin Panel', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Managment of Our App', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\February2024\\xke9NcKme760kvsfHFwM.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `device`) VALUES
(2, NULL, 'Alyson O\'Reilly', 'shemar38@example.org', 'users/default.png', '2024-02-09 14:13:23', '$2y$12$gvNwkX66A4vJcHSncnQYJuxtw299cswbuyYLQL4f7oGJwA7NequNO', 'B0MDyrHEWT', NULL, '2024-02-09 14:13:23', '2024-02-09 14:13:23', '0E:B7:07:74:94:6C'),
(3, NULL, 'Prof. Shad Schmidt Jr.', 'elvis47@example.net', 'users/default.png', '2024-02-09 14:13:23', '$2y$12$gvNwkX66A4vJcHSncnQYJuxtw299cswbuyYLQL4f7oGJwA7NequNO', 'N4cc9UJYEm', NULL, '2024-02-09 14:13:23', '2024-02-09 14:13:23', '22:91:A9:2F:3B:20'),
(7, NULL, 'Terrence Armstrong', 'powlowski.kailee@example.org', 'users/default.png', '2024-02-09 14:13:23', '$2y$12$gvNwkX66A4vJcHSncnQYJuxtw299cswbuyYLQL4f7oGJwA7NequNO', 'lhtn1GgXln', NULL, '2024-02-09 14:13:23', '2024-02-09 14:13:23', '1D:26:04:95:F1:CC'),
(8, NULL, 'Earnestine Crona', 'linnea.wunsch@example.org', 'users/default.png', '2024-02-09 14:13:23', '$2y$12$gvNwkX66A4vJcHSncnQYJuxtw299cswbuyYLQL4f7oGJwA7NequNO', '70D4UUMTRY', NULL, '2024-02-09 14:13:23', '2024-02-09 14:13:23', 'E6:A5:6D:67:B4:C3'),
(9, NULL, 'Matilde Barrows', 'ugibson@example.com', 'users/default.png', '2024-02-09 14:13:23', '$2y$12$gvNwkX66A4vJcHSncnQYJuxtw299cswbuyYLQL4f7oGJwA7NequNO', 'fIb71MeLob', NULL, '2024-02-09 14:13:23', '2024-02-09 14:13:23', '72:39:96:29:F0:EB'),
(10, NULL, 'Dr. Victor Kutch Sr.', 'graham.nelle@example.org', 'users/default.png', '2024-02-09 14:13:23', '$2y$12$gvNwkX66A4vJcHSncnQYJuxtw299cswbuyYLQL4f7oGJwA7NequNO', 'IkxXwLtolI', NULL, '2024-02-09 14:13:23', '2024-02-09 14:13:23', '5F:85:AC:D9:C8:F8'),
(11, NULL, 'abdelaziz', 'ahmed10@gmail.com', 'users/default.png', NULL, '$2y$12$Yn.38aduYQKkP2K9V3uAKuTJsSEoz8heO2ZBmDr2dEdYMUGq9AZzK', NULL, NULL, '2024-02-09 15:59:59', '2024-02-09 15:59:59', 'DC:3D:C5:AD:43:E8'),
(12, NULL, 'eslam', 'eslam@gmail.com', 'users/default.png', NULL, '$2y$12$rBjb9jQeiFtjxe/rP93JaevnvoLuXnQ.fpEELMkX4csaNu3ozrYj6', NULL, NULL, '2024-02-09 16:28:01', '2024-02-09 16:28:01', 'DC:3D:C5:AD:43:E8'),
(14, 2, 'eslam', 'eslsam@gmail.com', 'users/default.png', NULL, '$2y$12$7b3TRXqtbuYrHHAJDYKHWe5RT3yRHJvhW0R/blGtdO2uZK3ojsGla', NULL, NULL, '2024-02-09 17:16:39', '2024-02-09 17:16:39', 'DC:3D:C5:AD:43:E8'),
(15, 1, 'admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$12$JU7TdjcY2zX.0T8pNV3r/Ov4sauegVuwta.RArp7paz4oYnpPk85W', NULL, NULL, '2024-02-09 17:17:13', '2024-02-09 17:17:13', NULL),
(16, 2, 'eslam', 'eslsamdf@gmail.com', 'users/default.png', NULL, '$2y$12$D.iDo9fOzR8bmq4WYvffy.4lOKqZcghOJTyN8agTk6JYpwYCHlsw2', NULL, NULL, '2024-02-09 18:16:22', '2024-02-09 18:16:22', 'DC:3D:C5:AD:43:E8'),
(18, 2, 'eslam', 'eslsamsdf@gmail.com', 'users/default.png', NULL, '$2y$12$Rz80jd.wkc6XGoA1tqlJ3eyvYA0hJ4uNioGbIx8Mu05cLlO6foJd6', NULL, NULL, '2024-02-09 18:38:48', '2024-02-09 18:38:48', 'DC:3D:C5:AD:43:E8'),
(20, 2, 'eslam', 'eslsa000msdf@gmail.com', 'users/default.png', NULL, '$2y$12$PVFzbuza5ayaQ7GN0bkq..lNbJdENVKc9/7vKtHkIl9ndNOfNHPE.', NULL, NULL, '2024-02-09 19:07:54', '2024-02-09 19:07:54', 'DC:3D:C5:AD:43:E8'),
(21, 2, 'eslam', 'eslsa00000msdf@gmail.com', 'users/default.png', NULL, '$2y$12$Ce1ghlmqajEdH9cTK0OpC.PRSEfDDjr/sy0tYErOBEwOadw1T37nC', NULL, NULL, '2024-02-09 21:09:40', '2024-02-09 21:09:40', 'DC:3D:C5:AD:43:E8'),
(22, 2, 'eslam', 'eslsa0000000msdf@gmail.com', 'users/default.png', NULL, '$2y$12$RuidMjuG5j5xOi7qwdFki.yoPQOmd9SAkK45uhTzw.BBdefuPCNCu', NULL, NULL, '2024-02-10 16:49:11', '2024-02-10 16:49:11', 'DC:3D:C5:AD:43:E8'),
(24, 2, 'eslam', 'eslsa0hfh00msdf@gmail.com', 'users/default.png', NULL, '$2y$12$IoF7RaclEj/ANs62/clqWuGxVnWfCAyFt7vXRBJBWmbu30rSRM2D6', NULL, NULL, '2024-02-10 16:49:40', '2024-02-10 16:49:40', 'DC:3D:C5:AD:43:E8'),
(27, 2, 'eslam', 'eslrgffgevsd0msdf@gmail.com', 'users/default.png', NULL, '$2y$12$8syLCxGVceU1IVQsuGn3GOdnnOF2q.yN5Q0QbIyhw/chFKd8UhVgO', NULL, NULL, '2024-02-10 16:57:16', '2024-02-10 16:57:16', 'DC:3D:C5:AD:43:E8'),
(28, 2, 'maz10', 'maz@gmail.com', 'users/default.png', NULL, '$2y$12$h9lGGWHYIHoM4BVWbHUXqO.BetfXP6EIUuszq2GmdoJCq.KHxzBZi', NULL, '{\"locale\":\"en\"}', '2024-02-10 17:29:13', '2024-02-10 17:32:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(28, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
