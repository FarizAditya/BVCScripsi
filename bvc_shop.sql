-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 04:04 PM
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
-- Database: `bvc_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'sony', 1, '2023-11-03 17:51:19', '2023-11-03 17:51:19'),
(3, 'Dr Juice Liquid', 'dr-juice-liquid', 1, '2024-02-20 03:13:38', '2024-02-20 03:13:38'),
(4, 'Roback', 'roback', 1, '2024-02-20 03:16:27', '2024-02-20 03:16:27'),
(5, 'Alden Juice', 'alden-juice', 1, '2024-02-20 03:19:58', '2024-02-20 03:19:58'),
(6, 'Uwell', 'uwell', 1, '2024-02-20 03:22:34', '2024-02-20 03:22:34'),
(7, 'JVS x JH', 'jvs-x-jh', 1, '2024-02-20 03:22:55', '2024-02-20 03:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(1, 'Device', 'device', '1-1703586355.jpeg', 1, 'Yes', '2023-10-21 02:14:46', '2023-12-26 03:25:55'),
(2, 'Atomizer', 'atomizer', '2-1703586231.jpg', 1, 'Yes', '2023-10-21 02:31:46', '2023-12-26 03:23:55'),
(3, 'Battery', 'battery', '3-1703585581.jpg', 1, 'Yes', '2023-10-21 02:34:42', '2023-12-26 03:13:02'),
(34, 'Liquid', 'liquid', '34-1703585475.jpg', 1, 'Yes', '2023-10-22 21:51:49', '2023-12-26 03:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'US', NULL, NULL),
(2, 'Canada', 'CA', NULL, NULL),
(3, 'Afghanistan', 'AF', NULL, NULL),
(4, 'Albania', 'AL', NULL, NULL),
(5, 'Algeria', 'DZ', NULL, NULL),
(6, 'American Samoa', 'AS', NULL, NULL),
(7, 'Andorra', 'AD', NULL, NULL),
(8, 'Angola', 'AO', NULL, NULL),
(9, 'Anguilla', 'AI', NULL, NULL),
(10, 'Antarctica', 'AQ', NULL, NULL),
(11, 'Antigua and/or Barbuda', 'AG', NULL, NULL),
(12, 'Argentina', 'AR', NULL, NULL),
(13, 'Armenia', 'AM', NULL, NULL),
(14, 'Aruba', 'AW', NULL, NULL),
(15, 'Australia', 'AU', NULL, NULL),
(16, 'Austria', 'AT', NULL, NULL),
(17, 'Azerbaijan', 'AZ', NULL, NULL),
(18, 'Bahamas', 'BS', NULL, NULL),
(19, 'Bahrain', 'BH', NULL, NULL),
(20, 'Bangladesh', 'BD', NULL, NULL),
(21, 'Barbados', 'BB', NULL, NULL),
(22, 'Belarus', 'BY', NULL, NULL),
(23, 'Belgium', 'BE', NULL, NULL),
(24, 'Belize', 'BZ', NULL, NULL),
(25, 'Benin', 'BJ', NULL, NULL),
(26, 'Bermuda', 'BM', NULL, NULL),
(27, 'Bhutan', 'BT', NULL, NULL),
(28, 'Bolivia', 'BO', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British lndian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Cape Verde', 'CV', NULL, NULL),
(41, 'Cayman Islands', 'KY', NULL, NULL),
(42, 'Central African Republic', 'CF', NULL, NULL),
(43, 'Chad', 'TD', NULL, NULL),
(44, 'Chile', 'CL', NULL, NULL),
(45, 'China', 'CN', NULL, NULL),
(46, 'Christmas Island', 'CX', NULL, NULL),
(47, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(48, 'Colombia', 'CO', NULL, NULL),
(49, 'Comoros', 'KM', NULL, NULL),
(50, 'Congo', 'CG', NULL, NULL),
(51, 'Cook Islands', 'CK', NULL, NULL),
(52, 'Costa Rica', 'CR', NULL, NULL),
(53, 'Croatia (Hrvatska)', 'HR', NULL, NULL),
(54, 'Cuba', 'CU', NULL, NULL),
(55, 'Cyprus', 'CY', NULL, NULL),
(56, 'Czech Republic', 'CZ', NULL, NULL),
(57, 'Democratic Republic of Congo', 'CD', NULL, NULL),
(58, 'Denmark', 'DK', NULL, NULL),
(59, 'Djibouti', 'DJ', NULL, NULL),
(60, 'Dominica', 'DM', NULL, NULL),
(61, 'Dominican Republic', 'DO', NULL, NULL),
(62, 'East Timor', 'TP', NULL, NULL),
(63, 'Ecudaor', 'EC', NULL, NULL),
(64, 'Egypt', 'EG', NULL, NULL),
(65, 'El Salvador', 'SV', NULL, NULL),
(66, 'Equatorial Guinea', 'GQ', NULL, NULL),
(67, 'Eritrea', 'ER', NULL, NULL),
(68, 'Estonia', 'EE', NULL, NULL),
(69, 'Ethiopia', 'ET', NULL, NULL),
(70, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(71, 'Faroe Islands', 'FO', NULL, NULL),
(72, 'Fiji', 'FJ', NULL, NULL),
(73, 'Finland', 'FI', NULL, NULL),
(74, 'France', 'FR', NULL, NULL),
(75, 'France, Metropolitan', 'FX', NULL, NULL),
(76, 'French Guiana', 'GF', NULL, NULL),
(77, 'French Polynesia', 'PF', NULL, NULL),
(78, 'French Southern Territories', 'TF', NULL, NULL),
(79, 'Gabon', 'GA', NULL, NULL),
(80, 'Gambia', 'GM', NULL, NULL),
(81, 'Georgia', 'GE', NULL, NULL),
(82, 'Germany', 'DE', NULL, NULL),
(83, 'Ghana', 'GH', NULL, NULL),
(84, 'Gibraltar', 'GI', NULL, NULL),
(85, 'Greece', 'GR', NULL, NULL),
(86, 'Greenland', 'GL', NULL, NULL),
(87, 'Grenada', 'GD', NULL, NULL),
(88, 'Guadeloupe', 'GP', NULL, NULL),
(89, 'Guam', 'GU', NULL, NULL),
(90, 'Guatemala', 'GT', NULL, NULL),
(91, 'Guinea', 'GN', NULL, NULL),
(92, 'Guinea-Bissau', 'GW', NULL, NULL),
(93, 'Guyana', 'GY', NULL, NULL),
(94, 'Haiti', 'HT', NULL, NULL),
(95, 'Heard and Mc Donald Islands', 'HM', NULL, NULL),
(96, 'Honduras', 'HN', NULL, NULL),
(97, 'Hong Kong', 'HK', NULL, NULL),
(98, 'Hungary', 'HU', NULL, NULL),
(99, 'Iceland', 'IS', NULL, NULL),
(100, 'India', 'IN', NULL, NULL),
(101, 'Indonesia', 'ID', NULL, NULL),
(102, 'Iran (Islamic Republic of)', 'IR', NULL, NULL),
(103, 'Iraq', 'IQ', NULL, NULL),
(104, 'Ireland', 'IE', NULL, NULL),
(105, 'Israel', 'IL', NULL, NULL),
(106, 'Italy', 'IT', NULL, NULL),
(107, 'Ivory Coast', 'CI', NULL, NULL),
(108, 'Jamaica', 'JM', NULL, NULL),
(109, 'Japan', 'JP', NULL, NULL),
(110, 'Jordan', 'JO', NULL, NULL),
(111, 'Kazakhstan', 'KZ', NULL, NULL),
(112, 'Kenya', 'KE', NULL, NULL),
(113, 'Kiribati', 'KI', NULL, NULL),
(114, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(115, 'Korea, Republic of', 'KR', NULL, NULL),
(116, 'Kuwait', 'KW', NULL, NULL),
(117, 'Kyrgyzstan', 'KG', NULL, NULL),
(118, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(119, 'Latvia', 'LV', NULL, NULL),
(120, 'Lebanon', 'LB', NULL, NULL),
(121, 'Lesotho', 'LS', NULL, NULL),
(122, 'Liberia', 'LR', NULL, NULL),
(123, 'Libyan Arab Jamahiriya', 'LY', NULL, NULL),
(124, 'Liechtenstein', 'LI', NULL, NULL),
(125, 'Lithuania', 'LT', NULL, NULL),
(126, 'Luxembourg', 'LU', NULL, NULL),
(127, 'Macau', 'MO', NULL, NULL),
(128, 'Macedonia', 'MK', NULL, NULL),
(129, 'Madagascar', 'MG', NULL, NULL),
(130, 'Malawi', 'MW', NULL, NULL),
(131, 'Malaysia', 'MY', NULL, NULL),
(132, 'Maldives', 'MV', NULL, NULL),
(133, 'Mali', 'ML', NULL, NULL),
(134, 'Malta', 'MT', NULL, NULL),
(135, 'Marshall Islands', 'MH', NULL, NULL),
(136, 'Martinique', 'MQ', NULL, NULL),
(137, 'Mauritania', 'MR', NULL, NULL),
(138, 'Mauritius', 'MU', NULL, NULL),
(139, 'Mayotte', 'TY', NULL, NULL),
(140, 'Mexico', 'MX', NULL, NULL),
(141, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(142, 'Moldova, Republic of', 'MD', NULL, NULL),
(143, 'Monaco', 'MC', NULL, NULL),
(144, 'Mongolia', 'MN', NULL, NULL),
(145, 'Montserrat', 'MS', NULL, NULL),
(146, 'Morocco', 'MA', NULL, NULL),
(147, 'Mozambique', 'MZ', NULL, NULL),
(148, 'Myanmar', 'MM', NULL, NULL),
(149, 'Namibia', 'NA', NULL, NULL),
(150, 'Nauru', 'NR', NULL, NULL),
(151, 'Nepal', 'NP', NULL, NULL),
(152, 'Netherlands', 'NL', NULL, NULL),
(153, 'Netherlands Antilles', 'AN', NULL, NULL),
(154, 'New Caledonia', 'NC', NULL, NULL),
(155, 'New Zealand', 'NZ', NULL, NULL),
(156, 'Nicaragua', 'NI', NULL, NULL),
(157, 'Niger', 'NE', NULL, NULL),
(158, 'Nigeria', 'NG', NULL, NULL),
(159, 'Niue', 'NU', NULL, NULL),
(160, 'Norfork Island', 'NF', NULL, NULL),
(161, 'Northern Mariana Islands', 'MP', NULL, NULL),
(162, 'Norway', 'NO', NULL, NULL),
(163, 'Oman', 'OM', NULL, NULL),
(164, 'Pakistan', 'PK', NULL, NULL),
(165, 'Palau', 'PW', NULL, NULL),
(166, 'Panama', 'PA', NULL, NULL),
(167, 'Papua New Guinea', 'PG', NULL, NULL),
(168, 'Paraguay', 'PY', NULL, NULL),
(169, 'Peru', 'PE', NULL, NULL),
(170, 'Philippines', 'PH', NULL, NULL),
(171, 'Pitcairn', 'PN', NULL, NULL),
(172, 'Poland', 'PL', NULL, NULL),
(173, 'Portugal', 'PT', NULL, NULL),
(174, 'Puerto Rico', 'PR', NULL, NULL),
(175, 'Qatar', 'QA', NULL, NULL),
(176, 'Republic of South Sudan', 'SS', NULL, NULL),
(177, 'Reunion', 'RE', NULL, NULL),
(178, 'Romania', 'RO', NULL, NULL),
(179, 'Russian Federation', 'RU', NULL, NULL),
(180, 'Rwanda', 'RW', NULL, NULL),
(181, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(182, 'Saint Lucia', 'LC', NULL, NULL),
(183, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(184, 'Samoa', 'WS', NULL, NULL),
(185, 'San Marino', 'SM', NULL, NULL),
(186, 'Sao Tome and Principe', 'ST', NULL, NULL),
(187, 'Saudi Arabia', 'SA', NULL, NULL),
(188, 'Senegal', 'SN', NULL, NULL),
(189, 'Serbia', 'RS', NULL, NULL),
(190, 'Seychelles', 'SC', NULL, NULL),
(191, 'Sierra Leone', 'SL', NULL, NULL),
(192, 'Singapore', 'SG', NULL, NULL),
(193, 'Slovakia', 'SK', NULL, NULL),
(194, 'Slovenia', 'SI', NULL, NULL),
(195, 'Solomon Islands', 'SB', NULL, NULL),
(196, 'Somalia', 'SO', NULL, NULL),
(197, 'South Africa', 'ZA', NULL, NULL),
(198, 'South Georgia South Sandwich Islands', 'GS', NULL, NULL),
(199, 'Spain', 'ES', NULL, NULL),
(200, 'Sri Lanka', 'LK', NULL, NULL),
(201, 'St. Helena', 'SH', NULL, NULL),
(202, 'St. Pierre and Miquelon', 'PM', NULL, NULL),
(203, 'Sudan', 'SD', NULL, NULL),
(204, 'Suriname', 'SR', NULL, NULL),
(205, 'Svalbarn and Jan Mayen Islands', 'SJ', NULL, NULL),
(206, 'Swaziland', 'SZ', NULL, NULL),
(207, 'Sweden', 'SE', NULL, NULL),
(208, 'Switzerland', 'CH', NULL, NULL),
(209, 'Syrian Arab Republic', 'SY', NULL, NULL),
(210, 'Taiwan', 'TW', NULL, NULL),
(211, 'Tajikistan', 'TJ', NULL, NULL),
(212, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(213, 'Thailand', 'TH', NULL, NULL),
(214, 'Togo', 'TG', NULL, NULL),
(215, 'Tokelau', 'TK', NULL, NULL),
(216, 'Tonga', 'TO', NULL, NULL),
(217, 'Trinidad and Tobago', 'TT', NULL, NULL),
(218, 'Tunisia', 'TN', NULL, NULL),
(219, 'Turkey', 'TR', NULL, NULL),
(220, 'Turkmenistan', 'TM', NULL, NULL),
(221, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(222, 'Tuvalu', 'TV', NULL, NULL),
(223, 'Uganda', 'UG', NULL, NULL),
(224, 'Ukraine', 'UA', NULL, NULL),
(225, 'United Arab Emirates', 'AE', NULL, NULL),
(226, 'United Kingdom', 'GB', NULL, NULL),
(227, 'United States minor outlying islands', 'UM', NULL, NULL),
(228, 'Uruguay', 'UY', NULL, NULL),
(229, 'Uzbekistan', 'UZ', NULL, NULL),
(230, 'Vanuatu', 'VU', NULL, NULL),
(231, 'Vatican City State', 'VA', NULL, NULL),
(232, 'Venezuela', 'VE', NULL, NULL),
(233, 'Vietnam', 'VN', NULL, NULL),
(234, 'Virgin Islands (British)', 'VG', NULL, NULL),
(235, 'Virgin Islands (U.S.)', 'VI', NULL, NULL),
(236, 'Wallis and Futuna Islands', 'WF', NULL, NULL),
(237, 'Western Sahara', 'EH', NULL, NULL),
(238, 'Yemen', 'YE', NULL, NULL),
(239, 'Yugoslavia', 'YU', NULL, NULL),
(240, 'Zaire', 'ZR', NULL, NULL),
(241, 'Zambia', 'ZM', NULL, NULL),
(242, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `appartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `user_id`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `appartment`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(1, 4, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', 'asdasd', 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', '2024-01-11 15:20:42', '2024-01-11 17:16:37'),
(2, 5, 'adity', 'yaa', 'adit1@gmail.com', '0812345678', 101, 'Jln kemiri selatan, no 54 dekat kos simbah', 'rumah', 'purworejo', 'jawa tengah', '54262', '2024-01-23 23:19:30', '2024-01-24 00:07:39'),
(3, 6, 'Farhan 1', 'farhan 1', 'aditya@gmail.com', '000000', 101, 'lockunknown, purworejo, central java , indonesia\r\n6252222', NULL, 'purworejo', 'jawa tengah', '54262', '2024-01-24 19:31:23', '2024-02-04 02:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `max_uses_user` int(11) DEFAULT NULL,
  `type` enum('percent','fixed') NOT NULL DEFAULT 'fixed',
  `discount_amount` double(10,2) NOT NULL,
  `min_amount` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_coupons`
--

INSERT INTO `discount_coupons` (`id`, `code`, `name`, `description`, `max_uses`, `max_uses_user`, `type`, `discount_amount`, `min_amount`, `status`, `starts_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'IN2024', 'Indonesia', 'asdasdas', 10, 3, 'fixed', 10.00, 900.00, 1, '2024-01-16 14:55:37', '2024-01-30 14:55:40', '2024-01-16 07:55:48', '2024-01-18 16:24:33'),
(2, 'ID255', 'Dummy name 255', 'dummy name', 10, 1, 'percent', 25.00, 100.00, 1, '2024-01-17 15:54:27', '2024-01-31 15:54:30', '2024-01-16 08:54:40', '2024-01-18 15:36:18');

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_17_133524_alter_users_table', 2),
(7, '2023_10_21_054114_create_categories_table', 3),
(8, '2023_10_23_063424_create_temp_images_table', 4),
(9, '2023_10_30_081548_create_sub_categories_table', 5),
(10, '2023_11_02_130540_create_brands_table', 6),
(11, '2023_11_04_015829_create_products_table', 7),
(12, '2023_11_04_015936_create_product_images_table', 7),
(13, '2023_11_27_160448_alter_categories_table', 8),
(14, '2023_11_27_162205_alter_products_table', 9),
(15, '2023_11_27_164754_alter_sub_categories_table', 10),
(16, '2023_12_20_183114_alter_products_table', 11),
(17, '2024_01_09_131742_alter_users_table', 12),
(18, '2024_01_11_193036_create_countries_table', 13),
(19, '2024_01_11_204355_create_orders_table', 14),
(20, '2024_01_11_204423_create_items_table', 14),
(21, '2024_01_11_204515_create_customer_addresses_table', 14),
(22, '2024_01_11_233307_create_order_items_table', 15),
(23, '2024_01_12_153512_create_shipping_charges_table', 16),
(24, '2024_01_15_135359_create_discount_coupons_table', 17),
(25, '2024_01_22_023714_alter_orders_table', 18),
(26, '2024_01_24_071554_alter_orders_table', 19),
(27, '2024_01_27_093111_create_wishlists_table', 20),
(28, '2024_02_06_040322_alter_users_table', 21),
(29, '2024_02_10_052951_create_pages_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` double(10,2) NOT NULL,
  `shipping` double(10,2) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) NOT NULL,
  `payment_status` enum('paid','not paid') NOT NULL DEFAULT 'not paid',
  `status` enum('pending','shipped','delivered','cancelled') NOT NULL DEFAULT 'pending',
  `shipped_date` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `appartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `noted` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `shipping`, `coupon_code`, `discount`, `grand_total`, `payment_status`, `status`, `shipped_date`, `first_name`, `last_name`, `email`, `mobile`, `country_id`, `address`, `appartment`, `city`, `state`, `zip`, `noted`, `created_at`, `updated_at`, `coupon_code_id`) VALUES
(3, 4, 837.00, 0.00, NULL, NULL, 837.00, 'not paid', 'delivered', NULL, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', NULL, 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', NULL, '2024-01-11 16:37:38', '2024-01-11 16:37:38', 0),
(4, 4, 1674.00, 0.00, NULL, NULL, 1674.00, 'not paid', 'pending', NULL, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', 'asdasd', 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', '2024-01-11 17:16:38', '2024-01-11 17:16:38', 0),
(5, 4, 837.00, 101.00, NULL, NULL, 938.00, 'not paid', 'pending', NULL, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', 'asdasd', 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', 'haha', '2024-01-15 00:43:27', '2024-01-15 00:43:27', 0),
(6, 4, 837.00, 101.00, NULL, NULL, 938.00, 'not paid', 'pending', NULL, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', 'asdasd', 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', NULL, '2024-01-17 23:23:46', '2024-01-17 23:23:46', 0),
(7, 4, 482.00, 101.00, NULL, NULL, 583.00, 'not paid', 'pending', NULL, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', 'asdasd', 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', NULL, '2024-01-17 23:57:06', '2024-01-17 23:57:06', 0),
(8, 4, 494.00, 101.00, 'ID255', 123.50, 471.50, 'not paid', 'pending', NULL, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', 'asdasd', 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', NULL, '2024-01-18 01:18:25', '2024-01-18 01:18:25', 2),
(9, 4, 1782.00, 202.00, 'IN2024', 10.00, 1974.00, 'not paid', 'pending', NULL, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', 'asdasd', 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', NULL, '2024-01-18 16:12:41', '2024-01-18 16:12:41', 1),
(10, 4, 1674.00, 202.00, '', 0.00, 1876.00, 'not paid', 'pending', NULL, 'fariz1', 'adit', 'fariz@gmail.com', '12345678', 101, 'adasgh gsdsdf\r\nefdfsdfsdfdf adasgh gsdsdf\r\nefdfsdfsdfdfadasgh gsdsdf\r\nefdfsdfsdfdf', 'asdasd', 'KOTA YOGYAKARTA', 'DI YOGYAKARTA', '353456', 'asd', '2024-01-23 17:23:48', '2024-01-23 17:23:48', NULL),
(11, 5, 837.00, 101.00, '', 0.00, 938.00, 'not paid', 'pending', NULL, 'adity', 'yaa', 'adit1@gmail.com', '0812345678', 101, 'lockunknown, purworejo, central java , indonesia\r\n625222', NULL, 'purworejo', 'jawa tengah', '54262', 'hehe', '2024-01-23 23:19:30', '2024-01-23 23:19:30', NULL),
(12, 5, 1736.00, 202.00, 'IN2024', 10.00, 1928.00, 'not paid', 'shipped', '2024-01-28 18:00:08', 'adity', 'yaa', 'adit1@gmail.com', '0812345678', 101, 'Jln kemiri selatan, no 54 dekat kos simbah', 'rumah', 'purworejo', 'jawa tengah', '54262', 'new order', '2024-01-24 00:07:39', '2024-01-24 01:28:54', 1),
(13, 6, 837.00, 101.00, '', 0.00, 938.00, 'not paid', 'pending', NULL, 'Farhan', 'farhan', 'aditya.laravel@gmail.com', '8456780', 101, 'lockunknown, purworejo, central java , indonesia\r\n625222', NULL, 'purworejo', 'jawa tengah', '54262', 'new order btw', '2024-01-24 19:31:23', '2024-01-24 19:31:23', NULL),
(14, 6, 837.00, 101.00, '', 0.00, 938.00, 'not paid', 'pending', NULL, 'Farhan', 'farhan', 'aditya.laravel@gmail.com', '8456780', 101, 'lockunknown, purworejo, central java , indonesia\r\n625222', NULL, 'purworejo', 'jawa tengah', '54262', NULL, '2024-01-25 11:40:29', '2024-01-25 11:40:29', NULL),
(15, 6, 482.00, 101.00, '', 0.00, 583.00, 'not paid', 'pending', NULL, 'Farhan', 'farhan', 'aditya.laravel@gmail.com', '8456780', 101, 'lockunknown, purworejo, central java , indonesia\r\n625222', NULL, 'purworejo', 'jawa tengah', '54262', NULL, '2024-01-25 11:51:38', '2024-01-25 11:51:38', NULL),
(16, 6, 482.00, 101.00, '', 0.00, 583.00, 'not paid', 'pending', NULL, 'Farhan', 'farhan', 'aditya.laravel@gmail.com', '8456780', 101, 'lockunknown, purworejo, central java , indonesia\r\n625222', NULL, 'purworejo', 'jawa tengah', '54262', NULL, '2024-01-25 11:59:27', '2024-01-25 18:21:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 3, 46, 'Delores Mohr', 1, 837.00, 837.00, '2024-01-11 16:37:39', '2024-01-11 16:37:39'),
(2, 4, 46, 'Delores Mohr', 2, 837.00, 1674.00, '2024-01-11 17:16:39', '2024-01-11 17:16:39'),
(3, 5, 46, 'Delores Mohr', 1, 837.00, 837.00, '2024-01-15 00:43:29', '2024-01-15 00:43:29'),
(4, 6, 46, 'Delores Mohr', 1, 837.00, 837.00, '2024-01-17 23:23:46', '2024-01-17 23:23:46'),
(5, 7, 45, 'Dr. Terence Cormier', 1, 482.00, 482.00, '2024-01-17 23:57:07', '2024-01-17 23:57:07'),
(6, 8, 44, 'Simeon Ward', 1, 494.00, 494.00, '2024-01-18 01:18:26', '2024-01-18 01:18:26'),
(7, 9, 46, 'Delores Mohr', 1, 837.00, 837.00, '2024-01-18 16:12:41', '2024-01-18 16:12:41'),
(8, 9, 42, 'Owen Daugherty', 1, 945.00, 945.00, '2024-01-18 16:12:43', '2024-01-18 16:12:43'),
(9, 10, 46, 'Delores Mohr', 2, 837.00, 1674.00, '2024-01-23 17:23:48', '2024-01-23 17:23:48'),
(10, 11, 46, 'Delores Mohr', 1, 837.00, 837.00, '2024-01-23 23:19:31', '2024-01-23 23:19:31'),
(11, 12, 46, 'Delores Mohr', 1, 837.00, 837.00, '2024-01-24 00:07:40', '2024-01-24 00:07:40'),
(12, 12, 43, 'Prof. Constantin Ullrich', 1, 899.00, 899.00, '2024-01-24 00:07:40', '2024-01-24 00:07:40'),
(13, 13, 46, 'Delores Mohr', 1, 837.00, 837.00, '2024-01-24 19:31:24', '2024-01-24 19:31:24'),
(14, 14, 46, 'Delores Mohr', 1, 837.00, 837.00, '2024-01-25 11:40:30', '2024-01-25 11:40:30'),
(15, 15, 45, 'Dr. Terence Cormier', 1, 482.00, 482.00, '2024-01-25 11:51:39', '2024-01-25 11:51:39'),
(16, 16, 45, 'Dr. Terence Cormier', 1, 482.00, 482.00, '2024-01-25 11:59:28', '2024-01-25 11:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '<p style=\"text-align: justify;\">BARISS VAPE CORNER adalah salah satu vape store di Purworejo, </p><p style=\"text-align: justify;\">terdapat 3 tempat di Purworejo yaitu Grabag, Kuotarjo dan Purwodadi.</p><p style=\"text-align: justify;\">konsep dari Bariss Vape Corner ini berbeda dari kebanyakan vape store di Purworejo</p><p style=\"text-align: justify;\">karena berkonsep seperti warung tongkrongan.</p><p><br></p>', '2024-02-10 00:41:44', '2024-02-20 06:20:10'),
(3, 'Contact Us', 'contact-us', '<p>Jl. Grabag-Ngombol,Grabag (Timur pasar grabag 100m, sebrang toko meuble)</p><p>,Purworejo, Jawa Tengah, Indonesia 54262</p><p>WA Grabag : 0895325401701</p><p>WA Kutoarjo : 089609953371</p><p><br></p>', '2024-02-11 06:26:45', '2024-02-20 06:16:47');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `related_products` text DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(2, 'RDA COILTURD AN RDA V2', 'rda-coilturd-an-rda-v2', NULL, NULL, NULL, '', 750000.00, NULL, 2, NULL, NULL, 'Yes', 'CO-AN-RD-V2', NULL, 'Yes', 12, 1, '2023-11-15 02:36:36', '2024-02-20 04:53:30'),
(6, 'KAYON V2 RDA', 'kayon-v2-rda', '<p><br></p>', NULL, NULL, '2', 365000.00, NULL, 2, NULL, NULL, 'Yes', 'KY-RD-V2-AU', NULL, 'Yes', 15, 1, '2023-11-28 05:39:52', '2024-02-20 05:01:58'),
(7, 'ASTON RDA ATOMIZER', 'aston-rda-atomizer', '<p>ini adalah liquid freebased fanta</p>', NULL, NULL, '6,2', 65000.00, NULL, 2, NULL, NULL, 'Yes', 'AS-RD-AT-SC', NULL, 'Yes', 14, 1, '2023-11-28 05:45:11', '2024-02-20 05:06:24'),
(9, 'NITROUS RDA', 'nitrous-rda', '<p><br></p>', NULL, NULL, '', 350000.00, NULL, 2, NULL, NULL, 'Yes', 'NT-RD-AT-DC', NULL, 'Yes', 10, 1, '2023-12-17 10:27:18', '2024-02-20 05:12:20'),
(17, 'ICE PEDIA WATERMELON', 'ice-pedia-watermelon', NULL, NULL, NULL, '', 80000.00, NULL, 34, 5, NULL, 'Yes', 'IC-PE-WM-LQ', NULL, 'Yes', 10, 1, '2023-12-20 05:49:47', '2024-02-20 05:32:44'),
(19, 'JELLY JUICE PASSION MANGO', 'jelly-juice-passion-mango', NULL, NULL, NULL, '', 30000.00, NULL, 34, 5, NULL, 'Yes', 'JL-JC-PM', NULL, 'Yes', 10, 1, '2023-12-20 05:49:48', '2024-02-20 06:12:59'),
(20, 'SONY VTC 4', 'sony-vtc-4', NULL, NULL, NULL, '', 42000.00, NULL, 3, NULL, 1, 'Yes', 'SO-VT-B4', NULL, 'Yes', 8, 1, '2023-12-20 05:49:48', '2024-02-20 05:39:06'),
(21, 'SONY VTC 5', 'sony-vtc-5', NULL, NULL, NULL, '', 60000.00, NULL, 3, NULL, 1, 'Yes', 'SO-VT-B5', NULL, 'Yes', 8, 1, '2023-12-20 05:49:48', '2024-02-20 05:40:02'),
(27, 'COIL GEAR BATTERY 40a', 'coil-gear-battery-40a', NULL, NULL, NULL, '', 84000.00, NULL, 3, NULL, NULL, 'Yes', 'CO-GE-BT-40A', NULL, 'Yes', 10, 1, '2023-12-20 05:49:49', '2024-02-20 05:41:54'),
(36, 'JELLY JUICE APPLE SPLASH', 'jelly-juice-apple-splash', NULL, NULL, NULL, '', 30000.00, NULL, 34, 5, NULL, 'Yes', 'JL-JC-AS', NULL, 'Yes', 10, 1, '2023-12-20 05:49:50', '2024-02-20 05:48:41'),
(38, 'SMOK RPM 80 KIT', 'smok-rpm-80-kit', NULL, NULL, NULL, '', 300000.00, NULL, 1, NULL, NULL, 'Yes', 'SK-RP-DV-80', NULL, 'Yes', 10, 1, '2023-12-20 05:49:50', '2024-02-20 05:26:53'),
(39, 'VAPSNOW PISTOL 80W', 'vapsnow-pistol-80w', NULL, NULL, NULL, '', 350000.00, NULL, 1, NULL, NULL, 'Yes', 'VS-PS-DV-80', NULL, 'Yes', 10, 1, '2023-12-20 05:49:50', '2024-02-20 05:22:52'),
(40, 'UWELL CALIBURN GZ2', 'uwell-caliburn-gz2', NULL, NULL, NULL, '', 240000.00, NULL, 1, NULL, 6, 'Yes', 'UC-GZ-DV-POT', NULL, 'Yes', 10, 1, '2023-12-20 05:49:51', '2024-02-20 05:20:01'),
(41, 'LOST VAPE URSA BABY 2', 'lost-vape-ursa-baby-2', NULL, NULL, NULL, '', 260000.00, NULL, 1, NULL, NULL, 'Yes', 'LS-VA-UR-B2', NULL, 'Yes', 10, 1, '2023-12-20 05:49:51', '2024-02-20 05:18:07'),
(42, 'ROBACKS KEDJOE', 'robacks-kedjoe', '<p>Flavour : Roti Bakar Kedjoe/ Chizzu French Toast (ada asin asinnya)</p><p>Nicotine : 3/6/9 MG</p><p>Volume : 60ML</p><p>premium local E-liquid By Robacks</p>', '<p>Flavour : Roti Bakar Kedjoe</p><p>Nicotine : 3/6/9 MG</p><p>Volume : 60ML</p>', NULL, '43', 110000.00, NULL, 34, 4, 4, 'Yes', 'RB-KJ-LIQ-FB-60ML', NULL, 'Yes', 15, 1, '2023-12-20 05:49:51', '2024-02-20 03:32:20'),
(43, 'ROBACKS KLASIK', 'robacks-klasik', '<p>Flavour : Roti Bakar Klasik</p><p>Nicotine : 3/6/9 MG</p><p>Volume : 60ML</p><p>Premium Local E-Liquid By Robacks</p>', '<p>Flavour : Roti Bakar Klasik</p><p>Nicotine : 3/6/9 MG</p><p>Volume : 60ML</p>', NULL, '', 110000.00, NULL, 34, 4, 4, 'Yes', 'RB-KL-LIQ-FB-60ML', NULL, 'Yes', 15, 1, '2023-12-20 05:49:51', '2024-02-20 03:29:34'),
(44, 'MONALISA CEREAL', 'monalisa-cereal', '<p>MONALISA 100% AUTHENTIC BY DR JUICE VOL :<span style=\"font-size: 1rem;\">60ML</span></p><p><span style=\"font-size: 1rem;\">NIC:3MG / 6MG FLAVOUR: CHOCOLATE MILK CEREAL</span></p>', '<p>MONALISA 100% AUTHENTIC BY DR JUICE VOL :<span style=\"font-size: 1rem;\">60ML</span></p><p><span style=\"font-size: 1rem;\">NIC:3MG / 6MG FLAVOUR: CHOCOLATE MILK CEREAL</span></p>', '<p>MONALISA 100% AUTHENTIC BY DR JUICE VOL :<span style=\"font-size: 1rem;\">60ML</span></p><p><span style=\"font-size: 1rem;\">NIC:3MG / 6MG FLAVOUR: CHOCOLATE MILK CEREAL</span></p><p><span style=\"font-size: 1rem;\">HEAVY: 0,2 KG</span></p>', '', 120000.00, NULL, 34, 4, 3, 'Yes', 'DJ-MC-LIQ-FB-60ML', NULL, 'Yes', 18, 1, '2023-12-20 05:49:51', '2024-02-20 03:24:59'),
(45, 'CALIBURN G3 POD KIT', 'caliburn-g3-pod-kit', NULL, NULL, NULL, '', 260000.00, NULL, 1, NULL, 6, 'Yes', 'UC-G3-DV-POT', NULL, 'Yes', 14, 1, '2023-12-20 05:49:51', '2024-02-20 04:25:55'),
(46, 'FCUKIN DONUTS STRAWBERRY', 'fcukin-donuts-strawberry', '<p>Fcukin Donuts Strawberry</p><p>100% Authentic By JVS Distribution x Juice Heaven</p><p>Flavour : Strawberry Donuts</p><p>Nicotine: 15 MG</p><p>Volume : 30ML</p><p>Premium Local E-Liquid</p>', '<p>Fcukin Donuts Strawberry</p><p>100% Authentic By JVS Distribution x Juice Heaven</p><p>Volume : 30ML</p>', '<p><br></p>', '44,43,42', 90000.00, NULL, 34, 4, 7, 'Yes', 'JV-FDS-LIQ-30ML', NULL, 'Yes', 15, 1, '2023-12-20 05:49:51', '2024-02-20 04:15:17'),
(47, 'JELLY JUICE GRAPE SODA', 'jelly-juice-grape-soda', NULL, NULL, NULL, '', 30000.00, NULL, 34, 5, NULL, 'No', 'JL-JC-GS', NULL, 'Yes', 10, 1, '2024-02-20 06:09:02', '2024-02-20 06:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(9, 46, '46-9-1703581408.jpg', NULL, '2023-12-26 02:03:27', '2023-12-26 02:03:28'),
(11, 47, '47-11-1708437075.jpg', NULL, '2024-02-20 06:51:15', '2024-02-20 06:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country_id`, `amount`, `created_at`, `updated_at`) VALUES
(4, '101', 101.00, '2024-01-12 10:16:11', '2024-01-12 10:16:11'),
(5, 'rest_of_world', 50.00, '2024-01-12 10:59:29', '2024-01-12 10:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 'Freebased', 'freebased', 1, 'No', 34, '2023-11-05 00:38:00', '2023-11-05 00:38:00'),
(5, 'Saltnic', 'saltnic', 1, 'No', 34, '2023-11-05 00:38:31', '2023-11-05 00:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, 2, 1, NULL, '$2y$10$4yLlpeYzrQBBIg0bKAHCv.NyJ8rsBJPBkPG/Sh6B7ZT7/ZZ48KSRe', NULL, '2023-10-17 06:53:07', '2023-10-17 06:53:07'),
(2, 'Adit', 'adit@gmail.com', NULL, 1, 1, NULL, '$2y$10$9WM7U21CQZXvnHvryr61a.yaLgS.zmPBEiXVv6cJgbYtdnub3Vhum', NULL, '2023-10-17 06:56:48', '2023-10-17 06:56:48'),
(3, 'dummy', 'dummy@gmail.com', '123456789', 1, 1, NULL, '$2y$10$F3g8VK7MiA5grbC6ct.rye3BBg6qysfplBRZnNVJCYXv94xL5LBDS', NULL, '2024-01-09 06:38:19', '2024-01-09 06:38:19'),
(4, 'fariz', 'fariz@gmail.com', '12345678', 1, 1, NULL, '$2y$10$D/3JWJj.hptkFHnesB7cF..kvz5wbXFTwwZ62gmFoOFY5INcl107q', NULL, '2024-01-09 06:48:13', '2024-01-09 06:48:13'),
(5, 'adit', 'adit1@gmail.com', '081234567', 1, 1, NULL, '$2y$10$jMqBK/hQOdftMq2ClV8niOnb/ZTIwLoGLPnKvoTtMR4q3Yos1n.Ry', NULL, '2024-01-23 23:16:51', '2024-01-23 23:16:51'),
(6, 'farhan Rizky', 'aditya.laravel@gmail.com', '084567800', 1, 1, NULL, '$2y$10$uMvuVxkh0HNo20Qn0VUlgOmVx5l4YtLkd2n8nGjPkcYCFGhQM/B6e', NULL, '2024-01-24 19:29:38', '2024-02-04 01:09:03'),
(7, 'Rizky', 'rizky@gmail.com', '12345678', 1, 1, NULL, '$2y$10$r3C/Ka/RgcDffIA9p./xVu2sbDWT9nwPSokCC5W8iRIEJAnn9ciYC', NULL, '2024-02-05 22:34:05', '2024-02-05 22:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_user_id_foreign` (`user_id`),
  ADD KEY `customer_addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_order_id_foreign` (`order_id`),
  ADD KEY `items_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
