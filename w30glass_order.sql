-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2019 年 08 月 21 日 14:47
-- 伺服器版本： 10.2.25-MariaDB
-- PHP 版本： 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `w30glass_order`
--

-- --------------------------------------------------------

--
-- 資料表結構 `barons`
--

CREATE TABLE `barons` (
  `id` int(11) NOT NULL,
  `name` varchar(31) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `barons`
--

INSERT INTO `barons` (`id`, `name`, `address`, `deleted_at`) VALUES
(3, 'Silverton Baron', '485 Moreleta Street, Bellevue, Silverton', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `baskets`
--

CREATE TABLE `baskets` (
  `id` int(11) NOT NULL,
  `uid` varchar(31) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(31) CHARACTER SET utf8 NOT NULL,
  `customer_address` varchar(127) CHARACTER SET utf8 NOT NULL,
  `customer_id` varchar(31) CHARACTER SET utf8 DEFAULT NULL,
  `customer_phone` varchar(31) CHARACTER SET utf8 NOT NULL,
  `data` text CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `baskets`
--

INSERT INTO `baskets` (`id`, `uid`, `user_id`, `customer_name`, `customer_address`, `customer_id`, `customer_phone`, `data`, `created_at`, `updated_at`, `deleted_at`) VALUES
(35, '2019/07.AA/0005', 9, 'dummy', 'carl', NULL, '0720243720', '[{\"type\":\"glass\",\"type_id\":\"234\",\"type_name\":\"Monolithic 5mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":345,\"height\":789,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"yes\",\"hard_arising_fee\":6.5,\"drilling\":2,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":308,\"price\":317.16228,\"id\":\"46ccfac4ef6b\"}]', '2019-08-08 16:51:09', '2019-08-20 05:12:57', '2019-08-08 16:51:45'),
(40, '2019/07.AA/9899', 1, 'Brian', 'na', NULL, '0837386582', '[{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"31170d934f86\"}]', '2019-08-12 10:24:56', '2019-08-20 05:17:52', '2019-08-12 10:26:12'),
(41, '2019/07.AA/3121', 1, 'Emalia', 'na', NULL, '0761109344', '[{\"type\":\"glass\",\"type_id\":\"235\",\"type_name\":\"Monolithic 6mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":560,\"height\":270,\"quantity\":4,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"yes\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":355,\"price\":257.86400000000003,\"id\":\"f978783e5ca6\"}]', '2019-08-13 07:20:22', '2019-08-20 05:17:56', '2019-08-13 12:01:07'),
(42, '2019/07.AA/9307', 1, 'Gordon Parker', 'na', NULL, '0727217755', '[{\"type\":\"glass\",\"type_id\":\"1\",\"type_name\":\"Laminated 6.38\",\"category\":2,\"category_name\":\"Clear Laminated\",\"width\":710,\"height\":995,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":493,\"price\":696.5597,\"id\":\"4243b7f5f237\"}]', '2019-08-13 08:21:46', '2019-08-20 05:17:59', '2019-08-13 08:26:10'),
(44, '2019/07.AA/1137', 1, 'd', 'd', NULL, 'd', '[{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"a2df578ef159\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"d8ea1254a1b1\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"8a48656f93fc\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"a5e3876e99fa\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"3ec608153bb1\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"ecdd89dd63be\"},{\"type\":\"tool\",\"type_id\":\"103\",\"type_name\":\"Miscellaneous putty 1kg\",\"type_price\":17,\"quantity\":1,\"price\":17,\"id\":\"51c7298def7f\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"aa527c0f1c41\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"790bc5d3d5bf\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"186da35ae691\"},{\"type\":\"tool\",\"type_id\":\"103\",\"type_name\":\"Miscellaneous putty 1kg\",\"type_price\":17,\"quantity\":1,\"price\":17,\"id\":\"686e40408a4d\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"538d93a493b0\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"9ad4e5e176df\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"421962d4ee07\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"86f9835ab3f4\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"e5f7f99c8cad\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"1dbbcc1dbeba\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"f1b952889101\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"565d606ba2e6\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"b170de7867ac\"},{\"type\":\"tool\",\"type_id\":\"103\",\"type_name\":\"Miscellaneous putty 1kg\",\"type_price\":17,\"quantity\":1,\"price\":17,\"id\":\"7d15fdb8c1b1\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"a30aeb4fa51b\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"500024cb973c\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"91221af99bc4\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"dfeb9c7f8107\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"7992e91943a1\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"f7a0c5341870\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"7567ad121261\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"7fd3a50ea064\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"1821cfa06970\"}]', '2019-08-13 10:12:20', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(75, '2019/07.AA/8234', 9, 'Patrick', 'na', NULL, '0780936325', '[{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":274,\"height\":443,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":50.494912,\"id\":\"f9cae0efaa3a\"},{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":285,\"height\":470,\"quantity\":1,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":27.8616,\"id\":\"a680865ea4f1\"}]', '2019-08-15 08:24:15', '2019-08-16 07:46:15', '2019-08-16 07:46:15'),
(96, '2019/07.AA/1764', 9, 'carl grobbelaar', 'na', NULL, '720243720', '[{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":345,\"height\":45,\"quantity\":34,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":109.7928,\"id\":\"a0a88fd7e343\"},{\"type\":\"glass\",\"type_id\":\"2\",\"type_name\":\"Laminated s10 bronze\",\"category\":2,\"category_name\":\"Clear Laminated\",\"width\":435,\"height\":435,\"quantity\":4,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":1469,\"price\":1111.8861,\"id\":\"8d77996a1405\"},{\"type\":\"glass\",\"type_id\":\"261\",\"type_name\":\"Obscure Pacific\",\"category\":3,\"category_name\":\"Obscure\",\"width\":435,\"height\":435,\"quantity\":3,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":228,\"price\":129.4299,\"id\":\"46a8d6661045\"},{\"type\":\"glass\",\"type_id\":\"52\",\"type_name\":\"Tinted amber 4mm\",\"category\":4,\"category_name\":\"Tinted\",\"width\":455,\"height\":453,\"quantity\":7,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":469,\"price\":676.675545,\"id\":\"9ead7d7f6348\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"6ce6110e7541\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"6974eb3476a7\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"55a72b4ac2bd\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"78a0bac39e16\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"8ecfe9e1b214\"},{\"type\":\"tool\",\"type_id\":\"103\",\"type_name\":\"Miscellaneous putty 1kg\",\"type_price\":17,\"quantity\":1,\"price\":17,\"id\":\"89008b33cc1e\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"16be327b89f4\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"1c7afb66e2a8\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"5d1c3399c5ca\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"ee5877f161ac\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"dba12216fb8a\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"d7c192bd8326\"},{\"type\":\"tool\",\"type_id\":\"101\",\"type_name\":\"Miscellaneous putty 5kg\",\"type_price\":58,\"quantity\":1,\"price\":58,\"id\":\"479fb91a89ba\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"727ff1a4eb99\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"6f91d87e4046\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"53275eb2f9d1\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"a38170a2a22f\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"3f1f485ca523\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"495abb2d8418\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"84d110a657d7\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"3aab19d62afd\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"9b85d4abc908\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"b9f41a6f879d\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"77929a441367\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"9055395ab557\"},{\"type\":\"tool\",\"type_id\":\"103\",\"type_name\":\"Miscellaneous putty 1kg\",\"type_price\":17,\"quantity\":1,\"price\":17,\"id\":\"d9da115bd830\"},{\"type\":\"tool\",\"type_id\":\"102\",\"type_name\":\"Miscellaneous putty 2kg\",\"type_price\":30,\"quantity\":1,\"price\":30,\"id\":\"b9b41ecb2d0f\"}]', '2019-08-16 05:22:55', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(97, '2019/07.AA/3336', 9, 'carl grobbelaar', 'na', NULL, '720243720', '[{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":345,\"height\":353,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"yes\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":68.81056,\"id\":\"c05b98436964\"}]', '2019-08-16 05:24:53', '2019-08-16 05:24:55', '2019-08-16 05:24:55'),
(118, '2019/07.AA/6495', 9, 'Lucas', 'na', NULL, '0825466377', '[{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":1915,\"height\":570,\"quantity\":1,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"yes\",\"type_price\":208,\"price\":327.0424,\"special_cut_amount\":100,\"id\":\"be5ae9ed15b0\"}]', '2019-08-16 10:10:40', '2019-08-16 10:13:39', '2019-08-16 10:13:39'),
(126, '2019/07.AA/4697', 9, 'Jeffery', 'na', NULL, '0832485262', '[{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":965,\"height\":285,\"quantity\":3,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":171.6156,\"id\":\"dace568eacc5\"},{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":930,\"height\":560,\"quantity\":8,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":866.6112,\"id\":\"21a572648c05\"},{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":475,\"height\":285,\"quantity\":3,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":84.474,\"id\":\"8a2897b818a4\"},{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":120,\"height\":475,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":23.712,\"id\":\"5d82d52284a9\"},{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":120,\"height\":470,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":23.4624,\"id\":\"2a83fc383c4f\"},{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":470,\"height\":295,\"quantity\":1,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":28.8392,\"id\":\"d22768676566\"},{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":960,\"height\":285,\"quantity\":1,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":56.9088,\"id\":\"bc8121a6a3cc\"}]', '2019-08-16 12:30:22', '2019-08-16 12:33:16', '2019-08-16 12:33:16'),
(145, '2019/07.AA/6742', 11, 'lionel', 'na', NULL, '0832711285', '[{\"type\":\"glass\",\"type_id\":\"232\",\"type_name\":\"Monolithic 3mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":427,\"height\":1079,\"quantity\":4,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":134,\"price\":246.952888,\"id\":\"cdfd562f3ab4\"},{\"type\":\"glass\",\"type_id\":\"235\",\"type_name\":\"Monolithic 6mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":2019,\"height\":1079,\"quantity\":7,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":4,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":355,\"price\":6253.574985,\"id\":\"cb3e711d761e\"}]', '2019-08-19 08:06:33', '2019-08-20 09:53:06', '2019-08-20 09:53:06'),
(185, '2019/08.AA/0002', 11, 'rock', 'na', NULL, '0192652187', '[{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":1027,\"height\":212,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":2,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":210.573184,\"id\":\"f297aa0d7d26\"},{\"type\":\"glass\",\"type_id\":\"52\",\"type_name\":\"Tinted amber 4mm\",\"category\":4,\"category_name\":\"Tinted\",\"width\":1065,\"height\":123,\"quantity\":3,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":469,\"price\":184.309965,\"id\":\"e3121ffce1d4\"}]', '2019-08-20 06:17:12', '2019-08-20 06:17:51', '2019-08-20 06:17:51'),
(187, '2019/08.AA/0005', 11, 'bouldep', 'na', NULL, '0279652179', '[{\"type\":\"glass\",\"type_id\":\"236\",\"type_name\":\"Monolithic 8mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":1089,\"height\":489,\"quantity\":1,\"arising\":\"yes\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":493,\"price\":275.156853,\"id\":\"ca0946045f90\"},{\"type\":\"glass\",\"type_id\":\"232\",\"type_name\":\"Monolithic 3mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":1027,\"height\":1724,\"quantity\":6,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"yes\",\"type_price\":134,\"price\":1903.520592,\"special_cut_amount\":80,\"id\":\"8f3148849ff4\"}]', '2019-08-20 06:22:10', '2019-08-20 06:24:54', '2019-08-20 06:24:54'),
(205, '2019/08.AA/0025', 1, '234', '234', '23', '32432', '[{\"type\":\"glass\",\"type_id\":\"3\",\"type_name\":\"Laminated s10 silver\",\"category\":2,\"category_name\":\"Clear Laminated\",\"width\":12,\"height\":12,\"quantity\":12,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":1469,\"price\":2.538432,\"id\":\"604814afdf44\"}]', '2019-08-20 07:41:25', '2019-08-20 07:42:22', '2019-08-20 07:42:22'),
(211, '2019/08.AA/0032', 11, 'rock', 'na', NULL, '0192652187', '[{\"type\":\"glass\",\"type_id\":\"233\",\"type_name\":\"Monolithic 4mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":1027,\"height\":212,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":2,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":208,\"price\":210.573184,\"id\":\"87a707168061\"},{\"type\":\"glass\",\"type_id\":\"52\",\"type_name\":\"Tinted amber 4mm\",\"category\":4,\"category_name\":\"Tinted\",\"width\":1065,\"height\":123,\"quantity\":3,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":469,\"price\":184.309965,\"id\":\"3d5d1e38c537\"}]', '2019-08-20 09:47:43', '2019-08-20 09:50:52', '2019-08-20 09:50:52'),
(258, '2019/08.AA/0082', 11, 'Mike', 'na', NULL, '0723459965', '[{\"type\":\"glass\",\"type_id\":\"1\",\"type_name\":\"Laminated 6.38\",\"category\":2,\"category_name\":\"Clear Laminated\",\"width\":685,\"height\":995,\"quantity\":1,\"arising\":\"yes\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":493,\"price\":349.456475,\"id\":\"2dd66f411ee1\"},{\"type\":\"glass\",\"type_id\":\"1\",\"type_name\":\"Laminated 6.38\",\"category\":2,\"category_name\":\"Clear Laminated\",\"width\":685,\"height\":565,\"quantity\":1,\"arising\":\"yes\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":493,\"price\":200.803325,\"id\":\"8a8967e8ecfc\"},{\"type\":\"glass\",\"type_id\":\"1\",\"type_name\":\"Laminated 6.38\",\"category\":2,\"category_name\":\"Clear Laminated\",\"width\":435,\"height\":1145,\"quantity\":1,\"arising\":\"yes\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":493,\"price\":258.190975,\"id\":\"ecc550d4aac2\"},{\"type\":\"glass\",\"type_id\":\"261\",\"type_name\":\"Obscure Pacific\",\"category\":3,\"category_name\":\"Obscure\",\"width\":150,\"height\":865,\"quantity\":1,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":228,\"price\":29.583,\"id\":\"cb5667c0705b\"},{\"type\":\"glass\",\"type_id\":\"261\",\"type_name\":\"Obscure Pacific\",\"category\":3,\"category_name\":\"Obscure\",\"width\":150,\"height\":555,\"quantity\":1,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":228,\"price\":18.981,\"id\":\"785d8e02d80f\"}]', '2019-08-21 12:46:01', '2019-08-21 12:48:09', '2019-08-21 12:48:09'),
(261, '2019/08.AA/0083', 1, 'www', 'www', 'ww', 'wwww', '[{\"type\":\"glass\",\"type_id\":\"3\",\"type_name\":\"Laminated s10 silver\",\"category\":2,\"category_name\":\"Clear Laminated\",\"width\":12,\"height\":12,\"quantity\":12,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"no\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":1469,\"price\":2.538432,\"id\":\"3b8330d124eb\"}]', '2019-08-21 14:05:03', '2019-08-21 14:05:03', NULL),
(262, '2019/08.AA/0084', 11, 'victor', 'na', NULL, '0715054848', '[{\"type\":\"glass\",\"type_id\":\"235\",\"type_name\":\"Monolithic 6mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":2040,\"height\":730,\"quantity\":1,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"yes\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":355,\"price\":564.676,\"id\":\"956cc67cf98f\"},{\"type\":\"glass\",\"type_id\":\"235\",\"type_name\":\"Monolithic 6mm\",\"category\":1,\"category_name\":\"Clear Monolithic\",\"width\":985,\"height\":720,\"quantity\":2,\"arising\":\"no\",\"arising_fee\":4,\"hard_arising\":\"yes\",\"hard_arising_fee\":6.5,\"drilling\":0,\"drilling_fee\":30,\"hardening\":\"no\",\"hardening_fee\":400,\"special_cut\":\"no\",\"type_price\":355,\"price\":547.862,\"id\":\"99e5baec6897\"}]', '2019-08-21 14:23:37', '2019-08-21 14:23:37', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `glass_types`
--

CREATE TABLE `glass_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `quantity` int(7) NOT NULL DEFAULT 0,
  `price` varchar(15) NOT NULL DEFAULT '0',
  `category` varchar(31) CHARACTER SET utf8 NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `glass_types`
--

INSERT INTO `glass_types` (`id`, `name`, `width`, `height`, `quantity`, `price`, `category`, `deleted_at`) VALUES
(1, 'Laminated 6.38', 2000, 2440, 1, '493', 'Clear Laminated', NULL),
(2, 'Laminated s10 bronze', 0, 0, 0, '1469', 'Clear Laminated', NULL),
(3, 'Laminated s10 silver', 0, 0, 0, '1469', 'Clear Laminated', NULL),
(4, 'Laminated shadow light 25', 0, 0, 0, '930', 'Clear Laminated', NULL),
(5, 'Laminated cool bronze', 0, 0, 0, '930', 'Clear Laminated', NULL),
(6, 'Laminated Low e Glass', 0, 0, 0, '1120', 'Clear Laminated', NULL),
(7, 'Laminated 8.38', 0, 0, 0, '830', 'Clear Laminated', NULL),
(8, 'Laminated  obscure snow white', 0, 0, 0, '1054', 'Clear Laminated', NULL),
(9, 'Laminated cool grey', 0, 0, 0, '930', 'Clear Laminated', NULL),
(10, 'Laminated Type10', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(11, 'Laminated Type11', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(12, 'Laminated Type12', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(13, 'Laminated Type13', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(14, 'Laminated Type14', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(15, 'Laminated Type15', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(16, 'Laminated Type16', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(17, 'Laminated Type17', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(18, 'Laminated Type18', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(19, 'Laminated Type19', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(20, 'Laminated Type20', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(21, 'Laminated Type21', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(22, 'Laminated Type22', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(23, 'Laminated Type23', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(24, 'Laminated Type24', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(25, 'Laminated Type25', 0, 0, 0, '0', 'Clear Laminated', '2019-07-29 07:30:45'),
(51, 'Tinted bronze 4mm', 0, 0, 0, '386', 'Tinted', NULL),
(52, 'Tinted amber 4mm', 0, 0, 0, '469', 'Tinted', NULL),
(53, 'Tinted Type3', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(54, 'Tinted Type4', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(55, 'Tinted Type5', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(56, 'Tinted Type6', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(57, 'Tinted Type7', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(58, 'Tinted Type8', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(59, 'Tinted Type9', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(60, 'Tinted Type10', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(61, 'Tinted Type11', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(62, 'Tinted Type12', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(63, 'Tinted Type13', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(64, 'Tinted Type14', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(65, 'Tinted Type15', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(66, 'Tinted Type16', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(67, 'Tinted Type17', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(68, 'Tinted Type18', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(69, 'Tinted Type19', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(70, 'Tinted Type20', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(71, 'Tinted Type21', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(72, 'Tinted Type22', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(73, 'Tinted Type23', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(74, 'Tinted Type24', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(75, 'Tinted Type25', 0, 0, 0, '0', 'Tinted', '2019-07-29 13:16:38'),
(101, 'Miscellaneous putty 5kg', 0, 0, 0, '58', 'Miscellaneous', NULL),
(102, 'Miscellaneous putty 2kg', 0, 0, 0, '30', 'Miscellaneous', NULL),
(103, 'Miscellaneous putty 1kg', 0, 0, 0, '17', 'Miscellaneous', NULL),
(104, 'Miscellaneous Type4', 0, 0, 0, '0', 'Miscellaneous', '2019-07-30 12:01:34'),
(105, 'Miscellaneous Type5', 0, 0, 0, '0', 'Miscellaneous', '2019-07-30 12:01:34'),
(106, 'Miscellaneous Type6', 0, 0, 0, '0', 'Miscellaneous', '2019-07-30 12:01:34'),
(107, 'Miscellaneous Type7', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:44:09'),
(108, 'Miscellaneous Type8', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:44:09'),
(109, 'Miscellaneous Type9', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:43:55'),
(110, 'Miscellaneous Type10', 0, 0, 0, '0', 'Miscellaneous', '2019-07-29 13:17:45'),
(111, 'Miscellaneous Type11', 0, 0, 0, '0', 'Miscellaneous', '2019-07-29 13:17:45'),
(112, 'Miscellaneous Type12', 0, 0, 0, '0', 'Miscellaneous', '2019-07-29 13:17:45'),
(113, 'Miscellaneous Type13', 0, 0, 0, '0', 'Miscellaneous', '2019-07-29 13:17:45'),
(114, 'Miscellaneous Type14', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:43:55'),
(115, 'Miscellaneous Type15', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:43:55'),
(116, 'Miscellaneous Type16', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:44:09'),
(117, 'Miscellaneous Type17', 0, 0, 0, '0', 'Miscellaneous', '2019-07-30 12:02:01'),
(118, 'Miscellaneous Type18', 0, 0, 0, '0', 'Miscellaneous', '2019-07-30 12:02:01'),
(119, 'Miscellaneous Type19', 0, 0, 0, '0', 'Miscellaneous', '2019-07-30 12:02:01'),
(120, 'Miscellaneous Type20', 0, 0, 0, '0', 'Miscellaneous', '2019-07-30 12:02:01'),
(121, 'Miscellaneous Type21', 0, 0, 0, '0', 'Miscellaneous', '2019-07-30 12:02:01'),
(122, 'Miscellaneous Type22', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:43:55'),
(123, 'Miscellaneous Type23', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:44:09'),
(124, 'Miscellaneous Type24', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:44:09'),
(125, 'Miscellaneous Type25', 0, 0, 0, '0', 'Miscellaneous', '2019-07-31 06:44:09'),
(232, 'Monolithic 3mm', 3254, 3543, 7, '134', 'Clear Monolithic', NULL),
(233, 'Monolithic 4mm', 2440, 1830, 34, '208', 'Clear Monolithic', NULL),
(234, 'Monolithic 5mm', 0, 0, 0, '308', 'Clear Monolithic', NULL),
(235, 'Monolithic 6mm', 0, 0, 0, '355', 'Clear Monolithic', NULL),
(236, 'Monolithic 8mm', 0, 0, 0, '493', 'Clear Monolithic', NULL),
(260, 'Obscure Winter View', 0, 0, 0, '228', 'Obscure', NULL),
(261, 'Obscure Pacific', 0, 0, 0, '228', 'Obscure', NULL),
(262, 'Obscure Stipolite', 0, 0, 0, '228', 'Obscure', NULL),
(263, 'Obscure mirror 4mm', 0, 0, 0, '355', 'Obscure', '2019-07-29 07:32:08'),
(264, 'Obscure Type5', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(265, 'Obscure Type6', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(266, 'Obscure Type7', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(267, 'Obscure Type8', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(268, 'Obscure Type9', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(269, 'Obscure Type10', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(270, 'Obscure Type11', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(271, 'Obscure Type12', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(272, 'Obscure Type13', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(273, 'Obscure Type14', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(274, 'Obscure Type15', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(275, 'Obscure Type16', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(276, 'Obscure Type17', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(277, 'Obscure Type18', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(278, 'Obscure Type19', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(279, 'Obscure Type20', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(280, 'Obscure Type21', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(281, 'Obscure Type22', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(282, 'Obscure Type23', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(283, 'Obscure Type24', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(284, 'Obscure Type25', 0, 0, 0, '0', 'Obscure', '2019-07-29 07:32:08'),
(285, 'New Type', 0, 0, 0, '1', 'Miscellaneous', '2019-07-31 06:44:16'),
(286, 'Mirror 4mm', NULL, NULL, 0, '355', 'Tinted', NULL),
(287, 'asd', NULL, NULL, 0, '111', 'Obscure', '2019-08-05 09:44:59'),
(288, 'Mirror 6mm', NULL, NULL, 0, '500', 'Tinted', '2019-08-08 03:02:08'),
(289, 'Mirror 6mm', NULL, NULL, 0, '500', 'Tinted', '2019-08-08 03:02:08'),
(290, 'Extra Cutting', NULL, NULL, 0, '10', 'Miscellaneous', NULL),
(291, 'Drilling', NULL, NULL, 0, '30', 'Miscellaneous', NULL),
(292, 'bubble wrap', NULL, NULL, 0, '8', 'Miscellaneous', NULL),
(293, 'Cut and Polish', NULL, NULL, 0, '30', 'Miscellaneous', NULL),
(294, 'Round corners', NULL, NULL, 0, '20', 'Miscellaneous', NULL),
(295, 'Large round corners', NULL, NULL, 0, '30', 'Miscellaneous', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_07_12_122628_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 9),
(2, 'App\\User', 2),
(3, 'App\\User', 11);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `baron_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `uid` varchar(31) CHARACTER SET utf8 NOT NULL,
  `customer_name` varchar(31) CHARACTER SET utf8 NOT NULL,
  `customer_address` varchar(63) CHARACTER SET utf8 DEFAULT NULL,
  `customer_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `customer_phone` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `delivery` varchar(3) NOT NULL,
  `delivery_fee` varchar(15) DEFAULT '0',
  `delivery_distance` varchar(15) DEFAULT NULL,
  `payment_method` varchar(15) NOT NULL,
  `price` varchar(15) DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8 DEFAULT 'delivered',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `baron_id`, `user_id`, `uid`, `customer_name`, `customer_address`, `customer_id`, `customer_phone`, `delivery`, `delivery_fee`, `delivery_distance`, `payment_method`, `price`, `status`, `created_at`, `updated_at`) VALUES
(64, NULL, 9, '2019/07.AA/0001', 'Tsepo', 'na', NULL, '0832600976', 'no', '15', NULL, 'cash', '277.584125', 'delivered', '2019-08-08 14:51:02', '2019-08-08 14:51:02'),
(65, 3, 9, '2019/07.AA/0002', 'dummy', 'carl', NULL, '0720243720', 'no', '15', NULL, 'cash', '317.16228', 'complete', '2019-08-08 16:51:45', '2019-08-08 16:52:08'),
(66, NULL, 1, '2019/07.AA/8777', 'Wang', 'Sanhao jie shenyang', NULL, '1708324231', 'yes', '15', '12', 'cash', '182.538432', 'complete', '2019-08-08 21:09:34', '2019-08-12 06:08:45'),
(67, NULL, 1, '2019/07.AA/1637', 'Wang', 'asdf', NULL, 'asdf', 'yes', '15', '12', 'cash', '180.000493', 'complete', '2019-08-08 21:11:46', '2019-08-12 06:08:47'),
(68, 3, 1, '2019/07.AA/1221', 'carl grobbelaar', 'test', NULL, '720243720', 'no', '15', NULL, 'cash', '1105.662736', 'complete', '2019-08-12 05:58:56', '2019-08-12 06:08:46'),
(69, 3, 1, '2019/07.AA/9014', 'Brian', 'na', NULL, '0837386582', 'no', '15', NULL, 'cash', '2150.552275', 'complete', '2019-08-12 07:31:52', '2019-08-12 08:01:10'),
(70, 3, 1, '2019/07.AA/6122', 'Brian', 'na', NULL, '0837386582', 'no', '15', NULL, 'cash', '1204.718', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:56:05'),
(71, 3, 1, '2019/07.AA/1242', 'Jimmy', 'na', NULL, '0724059076', 'no', '15', NULL, 'credit', '379.2048', 'complete', '2019-08-12 08:16:30', '2019-08-12 08:29:11'),
(72, 3, 1, '2019/07.AA/6809', 'Brian', 'na', NULL, '0837386582', 'no', '15', NULL, 'credit', '399.744', 'complete', '2019-08-12 08:33:46', '2019-08-12 08:56:09'),
(73, 3, 1, '2019/07.AA/1004', 'Brian', 'na', NULL, '0837386582', 'no', '15', NULL, 'credit', '4667.562614', 'complete', '2019-08-12 08:53:18', '2019-08-13 11:52:10'),
(74, 3, 1, '2019/07.AA/6172', 'Bernard', 'na', NULL, '0604211399', 'no', '15', NULL, 'cash', '161.75', 'complete', '2019-08-12 09:12:49', '2019-08-12 09:33:59'),
(75, 3, 1, '2019/07.AA/7845', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'credit', '209.5808', 'complete', '2019-08-12 09:31:14', '2019-08-12 10:06:19'),
(76, 3, 1, '2019/07.AA/4737', 'Brian', 'na', NULL, '0837386582', 'no', '15', NULL, 'cash', '20', 'complete', '2019-08-12 10:20:45', '2019-08-12 10:20:45'),
(77, 3, 1, '2019/07.AA/9899', 'Brian', 'na', NULL, '0837386582', 'no', '15', NULL, 'cash', '58', 'complete', '2019-08-12 10:26:12', '2019-08-12 10:26:12'),
(78, 3, 1, '2019/07.AA/7536', 'Pael New Invest', 'New Invest PTY LTD', NULL, '0767638622', 'no', '15', NULL, 'credit', '240', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(79, 3, 1, '2019/07.AA/4708', 'Pael New Invest 247 pty ltd', '323 Lynwood rd Pretoria Vat 4400252351', NULL, '0767638622', 'no', '15', NULL, 'credit', '3106.26507', 'complete', '2019-08-12 13:19:31', '2019-08-13 10:37:50'),
(80, NULL, 10, '2019/07.AA/4342', 'Denise', 'na', NULL, '0738202610', 'yes', '15', '33', 'credit', '5370.872', 'complete', '2019-08-13 06:35:06', '2019-08-14 05:23:47'),
(81, 3, 1, '2019/07.AA/7409', 'jeff', 'na', NULL, '0729636796', 'no', '15', NULL, 'cash', '71.289504', 'complete', '2019-08-13 06:51:06', '2019-08-13 07:06:30'),
(82, 3, 1, '2019/07.AA/7659', 'Vernon', 'na', NULL, '0832858110', 'no', '15', NULL, 'cash', '125.7664', 'complete', '2019-08-13 07:02:14', '2019-08-13 11:51:47'),
(83, 3, 1, '2019/07.AA/3629', 'Brian', 'na', NULL, '0837386582', 'no', '15', NULL, 'credit', '473.2145', 'complete', '2019-08-13 07:50:11', '2019-08-14 05:23:49'),
(84, 3, 1, '2019/07.AA/9701', 'Brian', 'na', NULL, '0837386582', 'no', '15', NULL, 'credit', '258.4016', 'complete', '2019-08-13 07:58:21', '2019-08-13 08:27:56'),
(85, 3, 1, '2019/07.AA/9307', 'Gordon Parker', 'na', NULL, '0727217755', 'no', '15', NULL, 'credit', '696.5597', 'complete', '2019-08-13 08:26:10', '2019-08-13 10:38:03'),
(86, 3, 1, '2019/07.AA/1760', 'Tommas', 'na', NULL, '0722145772', 'no', '15', NULL, 'credit', '68.9832', 'complete', '2019-08-13 08:37:55', '2019-08-13 11:53:55'),
(87, 3, 1, '2019/07.AA/6713', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'cash', '85.8624', 'complete', '2019-08-13 09:19:21', '2019-08-13 09:23:52'),
(88, 3, 1, '2019/07.AA/1827', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'cash', '85.8624', 'complete', '2019-08-13 09:22:02', '2019-08-13 10:37:33'),
(89, 3, 1, '2019/07.AA/1137', 'd', 'd', NULL, 'd', 'no', '15', NULL, 'cash', '1057', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(90, 3, 10, '2019/07.AA/6550', 'AB', 'na', NULL, '0827572598', 'no', '15', NULL, 'cash', '138.411', 'complete', '2019-08-13 10:34:50', '2019-08-13 11:52:32'),
(91, NULL, 1, '2019/07.AA/4524', 'Denise', '492 Cedar Creek Estate Fourways', NULL, '0738202610', 'yes', '15', '33', 'credit', '5371.68', 'complete', '2019-08-13 11:06:43', '2019-08-14 05:24:18'),
(92, 3, 1, '2019/07.AA/3866', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'cash', '136.189872', 'complete', '2019-08-13 11:40:34', '2019-08-13 11:51:34'),
(93, 3, 1, '2019/07.AA/9444', 'Frana F&A drywall en ceilings', 'na', NULL, '0628479252', 'no', '15', NULL, 'credit', '258.5024', 'complete', '2019-08-13 11:48:19', '2019-08-13 12:03:49'),
(94, 3, 1, '2019/07.AA/3121', 'Emalia', 'na', NULL, '0761109344', 'no', '15', NULL, 'credit', '257.864', 'complete', '2019-08-13 12:01:07', '2019-08-14 05:24:22'),
(95, 3, 1, '2019/07.AA/1393', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'cash', '133.12', 'complete', '2019-08-13 12:51:39', '2019-08-14 05:24:20'),
(96, 3, 1, '2019/07.AA/3426', 'Carl Print', 'na', NULL, 'na', 'no', '15', NULL, 'credit', '2012.43638', 'complete', '2019-08-14 08:37:15', '2019-08-14 09:38:38'),
(97, 3, 1, '2019/07.AA/7846', 'JEFE contractots', 'na', NULL, '0760411632', 'no', '15', NULL, 'credit', '215.487125', 'complete', '2019-08-14 08:43:27', '2019-08-14 09:35:52'),
(98, 3, 1, '2019/07.AA/8271', 'Musa', 'na', NULL, '0839695972', 'no', '15', NULL, 'credit', '163.1109', 'complete', '2019-08-14 09:35:19', '2019-08-14 09:38:23'),
(99, 3, 1, '2019/07.AA/6825', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'cash', '24', 'complete', '2019-08-14 10:28:33', '2019-08-14 10:28:33'),
(100, 3, 1, '2019/07.AA/4838', 'pieter', 'na', NULL, '0824659940', 'no', '15', NULL, 'cash', '201.1368', 'complete', '2019-08-14 11:25:20', '2019-08-14 14:55:10'),
(101, 3, 1, '2019/07.AA/4259', 'Douglas', 'na', NULL, '0832930212', 'no', '15', NULL, 'cash', '870.9371', 'complete', '2019-08-14 12:08:19', '2019-08-14 14:55:14'),
(102, 3, 1, '2019/07.AA/9565', 'Delano', 'na', NULL, '0760172538', 'no', '15', NULL, 'cash', '90.000355', 'complete', '2019-08-14 13:24:19', '2019-08-14 14:55:15'),
(103, 3, 11, '2019/07.AA/4188', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'credit', '66.3936', 'complete', '2019-08-15 06:25:44', '2019-08-15 07:42:43'),
(104, NULL, 9, '2019/07.AA/1546', 'Dawie Maas', 'na', NULL, '0836534642', 'yes', '15', '10', 'credit', '1250.7385', 'complete', '2019-08-15 07:31:10', '2019-08-15 09:55:39'),
(105, 3, 9, '2019/07.AA/8131', 'Vusi', 'na', NULL, '0735923003', 'no', '15', NULL, 'cash', '95.0612', 'complete', '2019-08-15 08:08:40', '2019-08-15 09:55:48'),
(106, 3, 9, '2019/07.AA/4292', 'Lettie', 'na', NULL, '0834402615', 'no', '15', NULL, 'credit', '156.2432', 'complete', '2019-08-15 08:46:24', '2019-08-15 09:56:07'),
(107, 3, 9, '2019/07.AA/1595', 'Shadrack', 'na', NULL, '0824757716', 'no', '15', NULL, 'credit', '306.72', 'complete', '2019-08-15 09:50:51', '2019-08-15 09:56:13'),
(108, 3, 9, '2019/07.AA/7685', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'credit', '153.3376', 'complete', '2019-08-15 10:28:44', '2019-08-16 10:15:41'),
(109, 3, 9, '2019/07.AA/7333', 'AB', 'na', NULL, '0827572598', 'no', '15', NULL, 'cash', '386.594', 'complete', '2019-08-15 10:31:10', '2019-08-16 10:15:43'),
(110, 3, 9, '2019/07.AA/1886', 'William', 'na', 'na', '0791170186', 'no', '15', NULL, 'credit', '182.574912', 'complete', '2019-08-15 11:46:07', '2019-08-16 10:15:51'),
(111, 3, 9, '2019/07.AA/1764', 'carl grobbelaar', 'na', NULL, '720243720', 'no', '15', NULL, 'cash', '2895.784345', 'complete', '2019-08-16 05:23:12', '2019-08-16 10:18:23'),
(112, 3, 9, '2019/07.AA/3336', 'carl grobbelaar', 'na', NULL, '720243720', 'no', '15', NULL, 'cash', '68.81056', 'complete', '2019-08-16 05:24:55', '2019-08-16 10:18:24'),
(113, 3, 1, '2019/07.AA/8234', 'Patrick', 'na', NULL, '0780936325', 'no', '15', NULL, 'cash', '78.356512', 'complete', '2019-08-16 07:46:15', '2019-08-16 10:18:35'),
(114, 3, 1, '2019/07.AA/6994', 'Justice', 'na', NULL, '0835181591', 'no', '15', NULL, 'credit', '491.4059', 'complete', '2019-08-16 07:58:17', '2019-08-16 10:19:33'),
(115, 3, 1, '2019/07.AA/2811', 'Musa', 'na', NULL, '0839695972', 'no', '15', NULL, 'credit', '283.2167', 'complete', '2019-08-16 08:02:56', '2019-08-16 10:19:45'),
(116, 3, 1, '2019/07.AA/7865', 'issac', 'na', NULL, '0797893530', 'no', '15', NULL, 'credit', '172.9728', 'complete', '2019-08-16 08:59:26', '2019-08-16 10:19:46'),
(117, 3, 1, '2019/07.AA/5538', 'Justicena', 'na', NULL, '0835181591', 'no', '15', NULL, 'cash', '219.1072', 'complete', '2019-08-16 09:30:24', '2019-08-16 10:19:50'),
(118, 3, 1, '2019/07.AA/3697', 'willard', 'na', NULL, '0627994243', 'no', '15', NULL, 'cash', '213.1168', 'complete', '2019-08-16 09:37:17', '2019-08-16 10:19:52'),
(119, 3, 9, '2019/07.AA/6495', 'Lucas', 'na', NULL, '0825466377', 'no', '15', NULL, 'eft', '327.0424', 'complete', '2019-08-16 10:13:39', '2019-08-16 10:18:17'),
(120, 3, 9, '2019/07.AA/5874', 'James', 'na', NULL, '083250804', 'no', '15', NULL, 'cash', '20', 'complete', '2019-08-16 12:17:26', '2019-08-16 12:17:26'),
(121, 3, 9, '2019/07.AA/4697', 'Jeffery', 'na', NULL, '0832485262', 'no', '15', NULL, 'cash', '1255.6232', 'complete', '2019-08-16 12:33:16', '2019-08-16 13:30:19'),
(122, 3, 9, '2019/07.AA/5796', 'Jeffery', 'na', NULL, '0832485262', 'no', '15', NULL, 'cash', '116', 'complete', '2019-08-16 12:40:04', '2019-08-16 12:40:04'),
(123, 3, 9, '2019/07.AA/5570', 'Jeffery', 'na', NULL, '0832485262', 'no', '15', NULL, 'cash', '471.744', 'complete', '2019-08-16 13:26:30', '2019-08-16 13:30:21'),
(124, 3, 9, '2019/07.AA/9981', 'Tsepo', 'na', NULL, '0832600976', 'no', '15', NULL, 'credit', '99.0912', 'complete', '2019-08-16 14:15:37', '2019-08-19 07:05:21'),
(125, 3, 1, '2019/07.AA/3520', 'lourence', 'na', NULL, '0728986071', 'no', '15', NULL, 'cash', '62.72', 'complete', '2019-08-19 06:15:51', '2019-08-19 07:05:25'),
(126, 3, 9, '2019/07.AA/2998', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'credit', '245.1072', 'complete', '2019-08-19 06:47:08', '2019-08-19 07:05:34'),
(127, 3, 9, '2019/07.AA/1319', 'TC cooling', 'na', NULL, '0826190899', 'no', '15', NULL, 'credit', '298.6744', 'complete', '2019-08-19 08:40:12', '2019-08-19 08:44:05'),
(128, 3, 11, '2019/07.AA/1479', 'eana', 'na', NULL, '0824905667', 'no', '15', NULL, 'credit', '442.65', 'complete', '2019-08-19 09:19:51', '2019-08-19 09:23:04'),
(129, 3, 11, '2019/07.AA/1915', 'Riaan', 'na', NULL, '0813364046', 'no', '15', NULL, 'credit', '27.4832', 'complete', '2019-08-19 09:35:42', '2019-08-19 09:41:06'),
(130, 3, 9, '2019/07.AA/5470', 'lebogang', 'na', NULL, '0832544802', 'no', '15', NULL, 'credit', '644.9969', 'complete', '2019-08-19 10:20:35', '2019-08-19 14:27:12'),
(131, 3, 9, '2019/07.AA/3732', 'rian', 'na', NULL, '0813364046', 'no', '15', NULL, 'cash', '10.436608', 'complete', '2019-08-19 10:49:04', '2019-08-19 10:59:40'),
(132, 3, 9, '2019/07.AA/8105', 'Edward EM Carpenters', 'na', NULL, '0787453914', 'no', '15', NULL, 'credit', '2281.6438', 'complete', '2019-08-19 12:29:59', '2019-08-20 08:19:11'),
(133, 3, 9, '2019/07.AA/8944', 'Jimmy', 'na', NULL, '0724059076', 'no', '15', NULL, 'credit', '428.6256', 'complete', '2019-08-19 13:29:00', '2019-08-19 14:27:36'),
(134, 3, 9, '2019/07.AA/2213', 'Bond Furniture', 'na', NULL, '0761629346', 'no', '15', NULL, 'credit', '556.9', 'complete', '2019-08-19 14:29:02', '2019-08-20 09:47:02'),
(135, 3, 9, '2019/08.AA/0002', 'rock', 'na', NULL, '0192652187', 'no', '15', NULL, 'cash', '394.883149', 'complete', '2019-08-20 06:17:51', '2019-08-20 09:47:14'),
(136, 3, 9, '2019/08.AA/0004', 'Jimmy', 'na', NULL, '0724059076', 'no', '15', NULL, 'cash', '0.005616', 'complete', '2019-08-20 06:19:24', '2019-08-20 09:46:40'),
(137, 3, 9, '2019/08.AA/0005', 'bouldep', 'na', NULL, '0279652179', 'no', '15', NULL, 'cash', '2178.677445', 'complete', '2019-08-20 06:24:54', '2019-08-20 09:46:54'),
(138, 3, 9, '2019/08.AA/0008', 'Khloi', 'na', NULL, '0829454314', 'no', '15', NULL, 'credit', '287.6825', 'complete', '2019-08-20 06:35:57', '2019-08-20 08:20:07'),
(139, 3, 9, '2019/08.AA/0024', 'David', 'na', NULL, '0726729125', 'no', '15', NULL, 'cash', '161.7888', 'complete', '2019-08-20 07:38:36', '2019-08-20 08:19:43'),
(140, 3, 1, '2019/08.AA/0025', '234', '234', '23', '32432', 'no', '15', NULL, 'cash', '2.538432', 'complete', '2019-08-20 07:42:22', '2019-08-20 08:20:05'),
(141, 3, 11, '2019/08.AA/0031', 'africa   sandblast', 'na', NULL, '0128043612', 'no', '15', NULL, 'credit', '332.165575', 'complete', '2019-08-20 09:03:39', '2019-08-20 09:47:19'),
(142, 3, 9, '2019/08.AA/0032', 'rock', 'na', NULL, '0192652187', 'no', '15', NULL, 'cash', '394.883149', 'complete', '2019-08-20 09:50:52', '2019-08-21 07:40:01'),
(143, 3, 9, '2019/07.AA/6742', 'lionel', 'na', NULL, '0832711285', 'no', '15', NULL, 'cash', '6500.527873', 'complete', '2019-08-20 09:53:06', '2019-08-21 07:40:17'),
(144, 3, 1, '2019/08.AA/0036', 'xx', 'xxx', 'xx', 'xx', 'no', '15', NULL, 'cash', '1.955239', 'complete', '2019-08-20 10:02:28', '2019-08-21 07:40:25'),
(145, 3, 11, '2019/08.AA/0037', 'awrance', 'na', NULL, '0737935330', 'no', '15', NULL, 'cash', '65.0624', 'complete', '2019-08-20 11:24:37', '2019-08-21 07:40:27'),
(146, 3, 11, '2019/08.AA/0057', 'fikille', 'na', NULL, '0843504716', 'no', '15', NULL, 'cash', '162.88', 'complete', '2019-08-20 13:39:24', '2019-08-21 07:40:45'),
(147, 3, 11, '2019/08.AA/0057', 'fikille', 'na', NULL, '0843504716', 'no', '15', NULL, 'cash', '162.88', 'complete', '2019-08-20 13:40:03', '2019-08-21 07:40:46'),
(148, 3, 9, '2019/08.AA/0065', 'Jethro', 'na', NULL, '0723977261', 'no', '15', NULL, 'cash', '1722.6914', 'complete', '2019-08-21 07:37:32', '2019-08-21 09:33:12'),
(149, 3, 9, '2019/08.AA/0068', 'Karabo', 'na', NULL, '0664017649', 'no', '15', NULL, 'credit', '658.5838', 'complete', '2019-08-21 08:00:17', '2019-08-21 09:33:17'),
(150, 3, 9, '2019/08.AA/0069', 'mashilo', 'na', NULL, '0793493009', 'no', '15', NULL, 'cash', '111.2192', 'complete', '2019-08-21 08:37:43', '2019-08-21 09:33:28'),
(151, 3, 11, '2019/08.AA/0070', 'tt', 't', NULL, 't', 'no', '15', NULL, 'cash', '0.000134', 'complete', '2019-08-21 08:39:34', '2019-08-21 09:33:25'),
(152, 3, 11, '2019/08.AA/0075', 'KHOTA', 'NA', NULL, '0829615400', 'no', '15', NULL, 'cash', '147.0784', 'complete', '2019-08-21 09:25:59', '2019-08-21 11:11:02'),
(153, 3, 9, '2019/08.AA/0076', 'africa sandblast', 'na', NULL, '0833020383', 'no', '15', NULL, 'credit', '101.92', 'complete', '2019-08-21 10:05:29', '2019-08-21 12:03:40'),
(154, 3, 11, '2019/08.AA/0078', 'P', 'P', NULL, 'P', 'no', '15', NULL, 'cash', '0.006432', 'complete', '2019-08-21 10:13:24', '2019-08-21 12:03:37'),
(155, 3, 11, '2019/08.AA/0079', 'NKOSI', 'NA', NULL, '0768619233', 'no', '15', NULL, 'credit', '173.9754', 'complete', '2019-08-21 10:22:14', '2019-08-21 12:03:48'),
(156, 3, 11, '2019/08.AA/0080', 'AFRICA SANDBLAST', 'NA', NULL, '0128043612', 'no', '15', NULL, 'credit', '548.44758', 'complete', '2019-08-21 10:54:59', '2019-08-21 12:03:53'),
(157, 3, 11, '2019/08.AA/0081', 'VINCENT', 'NA', NULL, '0796750034', 'no', '15', NULL, 'cash', '221.52', 'complete', '2019-08-21 11:26:11', '2019-08-21 12:03:52'),
(158, 3, 11, '2019/08.AA/0082', 'Mike', 'na', NULL, '0723459965', 'no', '15', NULL, 'credit', '857.014775', 'processing', '2019-08-21 12:48:09', '2019-08-21 14:16:48'),
(159, 3, 11, '2019/08.AA/0085', 'phinius', 'na', NULL, '0611453962', 'no', '15', NULL, 'credit', '38.563875', 'delivered', '2019-08-21 14:30:03', '2019-08-21 14:30:03');

-- --------------------------------------------------------

--
-- 資料表結構 `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `completed_by` int(11) DEFAULT NULL,
  `type` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT 'glass',
  `type_id` int(11) DEFAULT NULL,
  `type_name` varchar(31) CHARACTER SET utf8 DEFAULT NULL,
  `type_price` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `category_name` varchar(31) CHARACTER SET utf8 DEFAULT NULL,
  `width` varchar(7) CHARACTER SET utf8 DEFAULT '0',
  `height` varchar(7) CHARACTER SET utf8 DEFAULT '0',
  `quantity` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `arising` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `arising_fee` varchar(15) DEFAULT NULL,
  `hard_arising` varchar(3) DEFAULT NULL,
  `hard_arising_fee` varchar(15) DEFAULT NULL,
  `drilling` varchar(3) DEFAULT NULL,
  `drilling_fee` varchar(15) DEFAULT NULL,
  `hardening` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `hardening_fee` varchar(15) DEFAULT NULL,
  `special_cut` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `special_cut_amount` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `printed` varchar(3) NOT NULL DEFAULT 'no',
  `status` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'delivered',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `processed_by`, `completed_by`, `type`, `type_id`, `type_name`, `type_price`, `category_name`, `width`, `height`, `quantity`, `arising`, `arising_fee`, `hard_arising`, `hard_arising_fee`, `drilling`, `drilling_fee`, `hardening`, `hardening_fee`, `special_cut`, `special_cut_amount`, `price`, `printed`, `status`, `created_at`, `updated_at`) VALUES
(175, 65, 9, 9, 'glass', 234, 'Monolithic 5mm', '308', 'Clear Monolithic', '345', '789', '2', 'no', '4', 'yes', '6.5', '2', '30', 'no', '400', 'no', NULL, 317, 'yes', 'complete', '2019-08-08 16:51:45', '2019-08-08 16:52:08'),
(176, 66, 1, 1, 'glass', 2, 'Laminated s10 bronze', '1469', 'Clear Laminated', '12', '12', '12', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 3, 'yes', 'complete', '2019-08-08 21:09:34', '2019-08-12 06:08:45'),
(177, 67, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '1', '1', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 0, 'yes', 'complete', '2019-08-08 21:11:46', '2019-08-12 06:08:47'),
(178, 68, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '458', '687', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 161, 'yes', 'complete', '2019-08-12 05:58:56', '2019-08-12 06:08:46'),
(179, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(180, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(181, 68, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(182, 68, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(183, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(184, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(185, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(186, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(187, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(188, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(189, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(190, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(191, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(192, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(193, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(194, 68, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(195, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(196, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(197, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(198, 68, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(199, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(200, 68, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(201, 68, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(202, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(203, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(204, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(205, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(206, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(207, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(208, 68, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 05:58:56', '2019-08-12 05:58:56'),
(209, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '315', '405', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 252, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 07:45:54'),
(210, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '315', '410', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 64, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 07:46:07'),
(211, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '305', '405', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 244, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 07:46:30'),
(212, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '305', '410', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 62, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 07:46:30'),
(213, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '315', '345', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 107, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 07:46:32'),
(214, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '315', '405', '6', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 377, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 07:47:04'),
(215, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '315', '375', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 116, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 07:47:06'),
(216, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '310', '405', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 248, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 07:47:05'),
(217, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '310', '400', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 245, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 08:00:36'),
(218, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '310', '410', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 125, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 08:01:07'),
(219, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '325', '355', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 57, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 08:01:08'),
(220, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '325', '405', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 195, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 08:01:09'),
(221, 69, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '325', '375', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 60, 'yes', 'complete', '2019-08-12 07:31:52', '2019-08-12 08:01:10'),
(222, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '325', '490', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 33, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:01:10'),
(223, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '305', '490', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 31, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:01:29'),
(224, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '380', '490', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 39, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:01:30'),
(225, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '370', '490', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 38, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:01:31'),
(226, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '375', '490', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 76, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:01:31'),
(227, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '315', '490', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 32, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:55:24'),
(228, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '310', '490', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 32, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:55:25'),
(229, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1420', '560', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '100', 265, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:55:21'),
(230, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1430', '555', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '100', 265, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:55:20'),
(231, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '360', '475', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 142, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:56:05'),
(232, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '360', '470', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 70, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:55:16'),
(233, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '360', '465', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 70, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:55:18'),
(234, 70, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '375', '475', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 111, 'yes', 'complete', '2019-08-12 07:41:08', '2019-08-12 08:55:17'),
(235, 71, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '900', '300', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 112, 'yes', 'complete', '2019-08-12 08:16:30', '2019-08-12 08:29:09'),
(236, 71, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '900', '260', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 97, 'yes', 'complete', '2019-08-12 08:16:30', '2019-08-12 08:29:06'),
(237, 71, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '766', '275', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 88, 'yes', 'complete', '2019-08-12 08:16:30', '2019-08-12 08:29:11'),
(238, 71, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '716', '275', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 82, 'yes', 'complete', '2019-08-12 08:16:30', '2019-08-12 08:29:05'),
(239, 72, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '400', '320', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 189, 'yes', 'complete', '2019-08-12 08:33:46', '2019-08-12 08:55:19'),
(240, 72, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '350', '320', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '50', 210, 'yes', 'complete', '2019-08-12 08:33:46', '2019-08-12 08:56:09'),
(241, 73, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '1100', '550', '11', 'no', '4', 'yes', '6.5', '0', '20', 'no', '400', 'no', NULL, 2598, 'yes', 'complete', '2019-08-12 08:53:18', '2019-08-13 11:52:08'),
(242, 73, 1, 1, 'glass', 232, 'Monolithic 3mm', '134', 'Clear Monolithic', '1', '1', '21', 'no', '4', 'no', '6.5', '4', '20', 'no', '400', 'no', NULL, 1680, 'yes', 'complete', '2019-08-12 08:53:18', '2019-08-13 11:52:09'),
(243, 73, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '840', '460', '4', 'no', '4', 'yes', '6.5', '0', '20', 'no', '400', 'no', NULL, 389, 'yes', 'complete', '2019-08-12 08:53:18', '2019-08-13 11:52:10'),
(244, 74, 1, 1, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '1010', '400', '1', 'no', '4', 'yes', '6.5', '0', '20', 'no', '400', 'no', NULL, 162, 'yes', 'complete', '2019-08-12 09:12:49', '2019-08-12 09:33:59'),
(245, 75, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '880', '280', '2', 'no', '4', 'no', '6.5', '0', '20', 'no', '400', 'no', NULL, 103, 'yes', 'complete', '2019-08-12 09:31:14', '2019-08-12 10:06:14'),
(246, 75, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '880', '265', '1', 'no', '4', 'no', '6.5', '0', '20', 'no', '400', 'no', NULL, 49, 'yes', 'complete', '2019-08-12 09:31:14', '2019-08-12 10:06:17'),
(247, 75, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '880', '320', '1', 'no', '4', 'no', '6.5', '0', '20', 'no', '400', 'no', NULL, 59, 'yes', 'complete', '2019-08-12 09:31:14', '2019-08-12 10:06:19'),
(248, 76, NULL, NULL, 'tool', 290, 'Extra Cutting', '10', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'no', 'complete', '2019-08-12 10:20:45', '2019-08-12 10:20:45'),
(249, 76, NULL, NULL, 'tool', 290, 'Extra Cutting', '10', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'no', 'complete', '2019-08-12 10:20:45', '2019-08-12 10:20:45'),
(250, 77, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-12 10:26:12', '2019-08-12 10:26:12'),
(251, 78, NULL, NULL, 'tool', 291, 'Drilling', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(252, 78, NULL, NULL, 'tool', 291, 'Drilling', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(253, 78, NULL, NULL, 'tool', 291, 'Drilling', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(254, 78, NULL, NULL, 'tool', 291, 'Drilling', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(255, 78, NULL, NULL, 'tool', 291, 'Drilling', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(256, 78, NULL, NULL, 'tool', 291, 'Drilling', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(257, 78, NULL, NULL, 'tool', 291, 'Drilling', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(258, 78, NULL, NULL, 'tool', 291, 'Drilling', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-12 13:11:07', '2019-08-12 13:11:07'),
(259, 79, 1, 1, 'glass', 234, 'Monolithic 5mm', '308', 'Clear Monolithic', '240', '487', '8', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 364, 'yes', 'complete', '2019-08-12 13:19:31', '2019-08-13 10:37:48'),
(260, 79, 1, 1, 'glass', 234, 'Monolithic 5mm', '308', 'Clear Monolithic', '580', '150', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 73, 'yes', 'complete', '2019-08-12 13:19:31', '2019-08-13 10:37:41'),
(261, 79, 1, 1, 'glass', 234, 'Monolithic 5mm', '308', 'Clear Monolithic', '1195', '150', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 145, 'yes', 'complete', '2019-08-12 13:19:31', '2019-08-13 10:37:41'),
(262, 79, 1, 1, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '645', '545', '18', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 2525, 'yes', 'complete', '2019-08-12 13:19:31', '2019-08-13 10:37:50'),
(263, 80, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '2468', '1100', '4', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 4041, 'yes', 'complete', '2019-08-13 06:35:06', '2019-08-14 05:23:44'),
(264, 80, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '2200', '490', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 835, 'yes', 'complete', '2019-08-13 06:35:06', '2019-08-14 05:23:47'),
(265, 81, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '577', '594', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 71, 'yes', 'complete', '2019-08-13 06:51:06', '2019-08-13 07:06:30'),
(266, 82, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '660', '220', '2', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 74, 'yes', 'complete', '2019-08-13 07:02:14', '2019-08-13 11:51:45'),
(267, 82, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '560', '170', '2', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 51, 'yes', 'complete', '2019-08-13 07:02:14', '2019-08-13 11:51:47'),
(268, 83, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '190', '235', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 22, 'yes', 'complete', '2019-08-13 07:50:11', '2019-08-14 05:23:46'),
(269, 83, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '195', '280', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 27, 'yes', 'complete', '2019-08-13 07:50:11', '2019-08-14 05:23:49'),
(270, 83, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '955', '1170', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 424, 'yes', 'complete', '2019-08-13 07:50:11', '2019-08-14 05:23:48'),
(271, 84, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1420', '560', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '35', 200, 'yes', 'complete', '2019-08-13 07:58:21', '2019-08-13 08:27:56'),
(272, 84, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-13 07:58:21', '2019-08-13 07:58:21'),
(273, 85, 1, 1, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '710', '995', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 697, 'yes', 'complete', '2019-08-13 08:26:10', '2019-08-13 10:38:03'),
(274, 86, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '165', '670', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 69, 'yes', 'complete', '2019-08-13 08:37:55', '2019-08-13 11:53:55'),
(275, 87, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '480', '430', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 86, 'yes', 'complete', '2019-08-13 09:19:21', '2019-08-13 09:23:52'),
(276, 88, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '480', '430', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 86, 'yes', 'complete', '2019-08-13 09:22:02', '2019-08-13 10:37:33'),
(277, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(278, 89, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(279, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(280, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(281, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(282, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(283, 89, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(284, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(285, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(286, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(287, 89, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(288, 89, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(289, 89, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(290, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(291, 89, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(292, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(293, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(294, 89, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(295, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(296, 89, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(297, 89, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(298, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(299, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(300, 89, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(301, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(302, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(303, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(304, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(305, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(306, 89, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-13 10:12:30', '2019-08-13 10:12:30'),
(307, 90, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '520', '325', '3', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 138, 'yes', 'complete', '2019-08-13 10:34:50', '2019-08-13 11:52:32'),
(308, 91, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '2440', '1100', '4', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'yes', '11.5', 4041, 'yes', 'complete', '2019-08-13 11:06:43', '2019-08-14 05:24:09'),
(309, 91, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '2200', '490', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 835, 'yes', 'complete', '2019-08-13 11:06:43', '2019-08-14 05:24:18'),
(310, 92, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1197', '547', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 136, 'yes', 'complete', '2019-08-13 11:40:34', '2019-08-13 11:51:34'),
(311, 93, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1040', '1195', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 259, 'yes', 'complete', '2019-08-13 11:48:19', '2019-08-13 12:03:49'),
(312, 94, 1, 1, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '560', '270', '4', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 258, 'yes', 'complete', '2019-08-13 12:01:07', '2019-08-14 05:24:22'),
(313, 95, 1, 1, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '800', '200', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 133, 'yes', 'complete', '2019-08-13 12:51:39', '2019-08-14 05:24:20'),
(314, 96, 1, 1, 'glass', 234, 'Monolithic 5mm', '308', 'Clear Monolithic', '200', '300', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 50, 'yes', 'complete', '2019-08-14 08:37:15', '2019-08-14 09:38:37'),
(315, 96, 1, 1, 'glass', 3, 'Laminated s10 silver', '1469', 'Clear Laminated', '567', '938', '2', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 1587, 'yes', 'complete', '2019-08-14 08:37:15', '2019-08-14 09:38:38'),
(316, 96, 1, 1, 'glass', 261, 'Obscure Pacific', '228', 'Obscure', '768', '879', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '34', 376, 'yes', 'complete', '2019-08-14 08:37:15', '2019-08-14 09:38:38'),
(317, 97, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '595', '445', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 108, 'yes', 'complete', '2019-08-14 08:43:27', '2019-08-14 09:35:51'),
(318, 97, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '820', '320', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 108, 'yes', 'complete', '2019-08-14 08:43:27', '2019-08-14 09:35:52'),
(319, 98, 1, 1, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '717', '270', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 163, 'yes', 'complete', '2019-08-14 09:35:19', '2019-08-14 09:38:23'),
(320, 99, NULL, NULL, 'tool', 292, 'bubble wrap', '8', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'no', 'complete', '2019-08-14 10:28:33', '2019-08-14 10:28:33'),
(321, 99, NULL, NULL, 'tool', 292, 'bubble wrap', '8', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'no', 'complete', '2019-08-14 10:28:33', '2019-08-14 10:28:33'),
(322, 99, NULL, NULL, 'tool', 292, 'bubble wrap', '8', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'no', 'complete', '2019-08-14 10:28:33', '2019-08-14 10:28:33'),
(323, 100, 1, 1, 'glass', 260, 'Obscure Winter View', '228', 'Obscure', '440', '555', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 111, 'yes', 'complete', '2019-08-14 11:25:20', '2019-08-14 14:55:05'),
(324, 100, 1, 1, 'glass', 260, 'Obscure Winter View', '228', 'Obscure', '285', '460', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 60, 'yes', 'complete', '2019-08-14 11:25:20', '2019-08-14 14:55:10'),
(325, 100, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-14 11:25:20', '2019-08-14 11:25:20'),
(326, 101, 1, 1, 'glass', 234, 'Monolithic 5mm', '308', 'Clear Monolithic', '540', '425', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 83, 'yes', 'complete', '2019-08-14 12:08:19', '2019-08-14 14:55:11'),
(327, 101, 1, 1, 'glass', 232, 'Monolithic 3mm', '134', 'Clear Monolithic', '505', '705', '6', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 286, 'yes', 'complete', '2019-08-14 12:08:19', '2019-08-14 14:55:12'),
(328, 101, 1, 1, 'glass', 234, 'Monolithic 5mm', '308', 'Clear Monolithic', '962', '500', '3', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 501, 'yes', 'complete', '2019-08-14 12:08:19', '2019-08-14 14:55:14'),
(329, 102, NULL, NULL, 'tool', 290, 'Extra Cutting', '10', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'no', 'complete', '2019-08-14 13:24:19', '2019-08-14 13:24:19'),
(330, 102, NULL, NULL, 'tool', 290, 'Extra Cutting', '10', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'no', 'complete', '2019-08-14 13:24:19', '2019-08-14 13:24:19'),
(331, 102, NULL, NULL, 'tool', 290, 'Extra Cutting', '10', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'no', 'complete', '2019-08-14 13:24:19', '2019-08-14 13:24:19'),
(332, 102, 1, 1, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '1', '1', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '60', 60, 'yes', 'complete', '2019-08-14 13:24:19', '2019-08-14 14:55:15'),
(333, 103, 11, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '840', '190', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 66, 'yes', 'complete', '2019-08-15 06:25:44', '2019-08-15 07:42:43'),
(334, 104, 9, 9, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '900', '2085', '1', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 949, 'yes', 'complete', '2019-08-15 07:31:10', '2019-08-15 09:55:38'),
(335, 104, 9, 9, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '900', '320', '1', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 152, 'yes', 'complete', '2019-08-15 07:31:10', '2019-08-15 09:55:39'),
(336, 105, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '905', '505', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 95, 'yes', 'complete', '2019-08-15 08:08:40', '2019-08-15 09:55:48'),
(337, 106, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '520', '520', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '100', 156, 'yes', 'complete', '2019-08-15 08:46:24', '2019-08-15 09:56:06'),
(338, 107, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '500', '500', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 102, 'yes', 'complete', '2019-08-15 09:50:51', '2019-08-15 09:56:10'),
(339, 107, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '1500', '340', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 205, 'yes', 'complete', '2019-08-15 09:50:51', '2019-08-15 09:56:13'),
(340, 108, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '970', '380', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 153, 'yes', 'complete', '2019-08-15 10:28:44', '2019-08-16 10:15:41'),
(341, 109, 9, 9, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '910', '540', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 387, 'yes', 'complete', '2019-08-15 10:31:10', '2019-08-16 10:15:43'),
(342, 110, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '758', '1158', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 183, 'yes', 'complete', '2019-08-15 11:46:07', '2019-08-16 10:15:51'),
(343, 111, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '345', '45', '34', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 110, 'yes', 'complete', '2019-08-16 05:23:12', '2019-08-16 10:16:16'),
(344, 111, 9, 9, 'glass', 2, 'Laminated s10 bronze', '1469', 'Clear Laminated', '435', '435', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 1112, 'yes', 'complete', '2019-08-16 05:23:12', '2019-08-16 10:16:17'),
(345, 111, 9, 9, 'glass', 261, 'Obscure Pacific', '228', 'Obscure', '435', '435', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 129, 'yes', 'complete', '2019-08-16 05:23:12', '2019-08-16 10:16:18'),
(346, 111, 9, 9, 'glass', 52, 'Tinted amber 4mm', '469', 'Tinted', '455', '453', '7', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 677, 'yes', 'complete', '2019-08-16 05:23:12', '2019-08-16 10:18:23'),
(347, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(348, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(349, 111, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(350, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(351, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(352, 111, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(353, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(354, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(355, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(356, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(357, 111, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(358, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(359, 111, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(360, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(361, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(362, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(363, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(364, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(365, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(366, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(367, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(368, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(369, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(370, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(371, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(372, 111, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(373, 111, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-16 05:23:12', '2019-08-16 05:23:12'),
(374, 112, 1, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '345', '353', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 69, 'yes', 'complete', '2019-08-16 05:24:55', '2019-08-16 10:18:24'),
(375, 113, 1, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '274', '443', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 50, 'yes', 'complete', '2019-08-16 07:46:15', '2019-08-16 10:18:29'),
(376, 113, 1, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '285', '470', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 28, 'yes', 'complete', '2019-08-16 07:46:15', '2019-08-16 10:18:35'),
(377, 114, 1, 9, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '414', '280', '4', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 201, 'yes', 'complete', '2019-08-16 07:58:17', '2019-08-16 10:19:30'),
(378, 114, 1, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '875', '414', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 291, 'yes', 'complete', '2019-08-16 07:58:17', '2019-08-16 10:19:33'),
(379, 115, 9, 9, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '767', '270', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 174, 'yes', 'complete', '2019-08-16 08:02:56', '2019-08-16 10:19:44'),
(380, 115, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '890', '295', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 109, 'yes', 'complete', '2019-08-16 08:02:56', '2019-08-16 10:19:45'),
(381, 116, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '630', '330', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 173, 'yes', 'complete', '2019-08-16 08:59:26', '2019-08-16 10:19:46'),
(382, 117, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '920', '325', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 62, 'yes', 'complete', '2019-08-16 09:30:24', '2019-08-16 10:19:47'),
(383, 117, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '920', '280', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 54, 'yes', 'complete', '2019-08-16 09:30:24', '2019-08-16 10:19:47'),
(384, 117, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '920', '220', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 42, 'yes', 'complete', '2019-08-16 09:30:24', '2019-08-16 10:19:49'),
(385, 117, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '920', '320', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 61, 'yes', 'complete', '2019-08-16 09:30:24', '2019-08-16 10:19:50'),
(386, 118, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1220', '340', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 213, 'yes', 'complete', '2019-08-16 09:37:17', '2019-08-16 10:19:52'),
(387, 119, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1915', '570', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '100', 327, 'yes', 'complete', '2019-08-16 10:13:39', '2019-08-16 10:18:17'),
(388, 120, NULL, NULL, 'tool', 290, 'Extra Cutting', '10', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'no', 'complete', '2019-08-16 12:17:26', '2019-08-16 12:17:26'),
(389, 120, NULL, NULL, 'tool', 290, 'Extra Cutting', '10', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'no', 'complete', '2019-08-16 12:17:26', '2019-08-16 12:17:26'),
(390, 121, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '965', '285', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 172, 'yes', 'complete', '2019-08-16 12:33:16', '2019-08-16 13:30:16'),
(391, 121, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '930', '560', '8', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 867, 'yes', 'complete', '2019-08-16 12:33:16', '2019-08-16 13:30:17'),
(392, 121, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '475', '285', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 84, 'yes', 'complete', '2019-08-16 12:33:16', '2019-08-16 13:30:17'),
(393, 121, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '120', '475', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 24, 'yes', 'complete', '2019-08-16 12:33:16', '2019-08-16 13:30:18'),
(394, 121, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '120', '470', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 23, 'yes', 'complete', '2019-08-16 12:33:16', '2019-08-16 13:30:18'),
(395, 121, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '470', '295', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 29, 'yes', 'complete', '2019-08-16 12:33:16', '2019-08-16 13:30:18'),
(396, 121, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '960', '285', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 57, 'yes', 'complete', '2019-08-16 12:33:16', '2019-08-16 13:30:19'),
(397, 122, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-16 12:40:04', '2019-08-16 12:40:04'),
(398, 122, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-16 12:40:04', '2019-08-16 12:40:04'),
(399, 123, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1200', '475', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 237, 'yes', 'complete', '2019-08-16 13:26:30', '2019-08-16 13:30:20'),
(400, 123, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1200', '470', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 235, 'yes', 'complete', '2019-08-16 13:26:30', '2019-08-16 13:30:21'),
(401, 124, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '855', '155', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 41, 'yes', 'complete', '2019-08-16 14:15:37', '2019-08-19 07:05:15');
INSERT INTO `order_items` (`id`, `order_id`, `processed_by`, `completed_by`, `type`, `type_id`, `type_name`, `type_price`, `category_name`, `width`, `height`, `quantity`, `arising`, `arising_fee`, `hard_arising`, `hard_arising_fee`, `drilling`, `drilling_fee`, `hardening`, `hardening_fee`, `special_cut`, `special_cut_amount`, `price`, `printed`, `status`, `created_at`, `updated_at`) VALUES
(402, 124, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '490', '250', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 35, 'yes', 'complete', '2019-08-16 14:15:37', '2019-08-19 07:05:18'),
(403, 124, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '115', '275', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 23, 'yes', 'complete', '2019-08-16 14:15:37', '2019-08-19 07:05:21'),
(404, 125, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '600', '200', '2', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 63, 'yes', 'complete', '2019-08-19 06:15:51', '2019-08-19 07:05:25'),
(405, 126, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '560', '540', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 63, 'yes', 'complete', '2019-08-19 06:47:08', '2019-08-19 07:05:28'),
(406, 126, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '900', '300', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 112, 'yes', 'complete', '2019-08-19 06:47:08', '2019-08-19 07:05:32'),
(407, 126, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '840', '200', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 70, 'yes', 'complete', '2019-08-19 06:47:08', '2019-08-19 07:05:34'),
(408, 127, 9, 9, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '930', '560', '1', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 269, 'yes', 'complete', '2019-08-19 08:40:12', '2019-08-19 08:44:05'),
(409, 127, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-19 08:40:12', '2019-08-19 08:40:12'),
(410, 128, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '575', '500', '6', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 443, 'yes', 'complete', '2019-08-19 09:19:51', '2019-08-19 09:23:03'),
(411, 129, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '225', '224', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 10, 'yes', 'complete', '2019-08-19 09:35:42', '2019-08-19 09:41:06'),
(412, 129, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-19 09:35:42', '2019-08-19 09:35:42'),
(413, 130, 9, 9, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '667', '290', '4', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 324, 'yes', 'complete', '2019-08-19 10:20:35', '2019-08-19 14:27:10'),
(414, 130, 9, 9, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '417', '290', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 104, 'yes', 'complete', '2019-08-19 10:20:35', '2019-08-19 14:27:11'),
(415, 130, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '800', '340', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 57, 'yes', 'complete', '2019-08-19 10:20:35', '2019-08-19 14:27:12'),
(416, 130, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '800', '240', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 160, 'yes', 'complete', '2019-08-19 10:20:35', '2019-08-19 14:27:06'),
(417, 131, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '224', '224', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 10, 'yes', 'complete', '2019-08-19 10:49:04', '2019-08-19 10:59:40'),
(418, 132, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '1700', '500', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 330, 'yes', 'complete', '2019-08-19 12:29:59', '2019-08-19 14:27:00'),
(419, 132, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '2440', '877', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 803, 'yes', 'complete', '2019-08-19 12:29:59', '2019-08-20 08:04:25'),
(420, 132, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '1850', '500', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 359, 'yes', 'complete', '2019-08-19 12:29:59', '2019-08-20 08:19:10'),
(421, 132, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '2440', '862', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 790, 'yes', 'complete', '2019-08-19 12:29:59', '2019-08-20 08:19:11'),
(422, 133, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '360', '260', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 39, 'yes', 'complete', '2019-08-19 13:29:00', '2019-08-19 14:27:34'),
(423, 133, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '566', '275', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 130, 'yes', 'complete', '2019-08-19 13:29:00', '2019-08-19 14:27:32'),
(424, 133, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '916', '275', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 52, 'yes', 'complete', '2019-08-19 13:29:00', '2019-08-19 14:27:36'),
(425, 133, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1050', '180', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 118, 'yes', 'complete', '2019-08-19 13:29:00', '2019-08-19 14:27:30'),
(426, 133, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '800', '180', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 90, 'yes', 'complete', '2019-08-19 13:29:00', '2019-08-19 14:27:31'),
(427, 134, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '500', '500', '2', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'yes', '70', 344, 'yes', 'complete', '2019-08-19 14:29:02', '2019-08-20 08:19:12'),
(428, 134, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '600', '600', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'yes', '70', 213, 'yes', 'complete', '2019-08-19 14:29:02', '2019-08-20 09:47:02'),
(429, 135, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1027', '212', '2', 'no', '4', 'no', '6.5', '2', '30', 'no', '400', 'no', NULL, 211, 'yes', 'complete', '2019-08-20 06:17:51', '2019-08-20 09:47:12'),
(430, 135, 9, 9, 'glass', 52, 'Tinted amber 4mm', '469', 'Tinted', '1065', '123', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 184, 'yes', 'complete', '2019-08-20 06:17:51', '2019-08-20 09:47:14'),
(431, 136, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '3', '3', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 0, 'yes', 'complete', '2019-08-20 06:19:24', '2019-08-20 09:46:40'),
(432, 137, 9, 9, 'glass', 236, 'Monolithic 8mm', '493', 'Clear Monolithic', '1089', '489', '1', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 275, 'yes', 'complete', '2019-08-20 06:24:54', '2019-08-20 08:20:20'),
(433, 137, 9, 9, 'glass', 232, 'Monolithic 3mm', '134', 'Clear Monolithic', '1027', '1724', '6', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'yes', '80', 1904, 'yes', 'complete', '2019-08-20 06:24:54', '2019-08-20 09:46:54'),
(434, 138, NULL, NULL, 'tool', 103, 'Miscellaneous putty 1kg', '17', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 'no', 'complete', '2019-08-20 06:35:57', '2019-08-20 06:35:57'),
(435, 138, 9, 9, 'glass', 51, 'Tinted bronze 4mm', '386', 'Tinted', '275', '425', '6', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 271, 'yes', 'complete', '2019-08-20 06:35:57', '2019-08-20 08:20:07'),
(436, 139, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1440', '440', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 132, 'yes', 'complete', '2019-08-20 07:38:36', '2019-08-20 08:19:43'),
(437, 139, NULL, NULL, 'tool', 102, 'Miscellaneous putty 2kg', '30', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 'no', 'complete', '2019-08-20 07:38:36', '2019-08-20 07:38:36'),
(438, 140, 9, 9, 'glass', 3, 'Laminated s10 silver', '1469', 'Clear Laminated', '12', '12', '12', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 3, 'yes', 'complete', '2019-08-20 07:42:22', '2019-08-20 08:20:05'),
(439, 141, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1370', '470', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 134, 'yes', 'complete', '2019-08-20 09:03:39', '2019-08-20 09:47:17'),
(440, 141, 9, 9, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '565', '275', '3', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 198, 'yes', 'complete', '2019-08-20 09:03:39', '2019-08-20 09:47:19'),
(441, 142, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1027', '212', '2', 'no', '4', 'no', '6.5', '2', '30', 'no', '400', 'no', NULL, 211, 'yes', 'complete', '2019-08-20 09:50:52', '2019-08-21 07:40:00'),
(442, 142, 9, 9, 'glass', 52, 'Tinted amber 4mm', '469', 'Tinted', '1065', '123', '3', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 184, 'yes', 'complete', '2019-08-20 09:50:52', '2019-08-21 07:40:01'),
(443, 143, 9, 9, 'glass', 232, 'Monolithic 3mm', '134', 'Clear Monolithic', '427', '1079', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 247, 'yes', 'complete', '2019-08-20 09:53:06', '2019-08-21 07:40:16'),
(444, 143, 9, 9, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '2019', '1079', '7', 'no', '4', 'no', '6.5', '4', '30', 'no', '400', 'no', NULL, 6254, 'yes', 'complete', '2019-08-20 09:53:06', '2019-08-21 07:40:17'),
(445, 144, 9, 9, 'glass', 3, 'Laminated s10 silver', '1469', 'Clear Laminated', '11', '11', '11', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 2, 'yes', 'complete', '2019-08-20 10:02:28', '2019-08-21 07:40:25'),
(446, 145, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '680', '230', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 65, 'yes', 'complete', '2019-08-20 11:24:37', '2019-08-21 07:40:27'),
(447, 146, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1000', '340', '2', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 163, 'yes', 'complete', '2019-08-20 13:39:24', '2019-08-21 07:40:45'),
(448, 147, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1000', '340', '2', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 163, 'yes', 'complete', '2019-08-20 13:40:03', '2019-08-21 07:40:46'),
(449, 148, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '285', '465', '12', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 331, 'yes', 'complete', '2019-08-21 07:37:32', '2019-08-21 09:33:07'),
(450, 148, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '560', '920', '5', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 536, 'yes', 'complete', '2019-08-21 07:37:32', '2019-08-21 09:33:07'),
(451, 148, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '1800', '960', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 359, 'yes', 'complete', '2019-08-21 07:37:32', '2019-08-21 09:33:08'),
(452, 148, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '850', '440', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 156, 'yes', 'complete', '2019-08-21 07:37:32', '2019-08-21 09:33:09'),
(453, 148, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '585', '480', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 117, 'yes', 'complete', '2019-08-21 07:37:32', '2019-08-21 09:33:10'),
(454, 148, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '435', '265', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 24, 'yes', 'complete', '2019-08-21 07:37:32', '2019-08-21 09:33:10'),
(455, 148, 9, 9, 'glass', 262, 'Obscure Stipolite', '228', 'Obscure', '850', '435', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 84, 'yes', 'complete', '2019-08-21 07:37:32', '2019-08-21 09:33:12'),
(456, 148, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-21 07:37:32', '2019-08-21 07:37:32'),
(457, 148, NULL, NULL, 'tool', 101, 'Miscellaneous putty 5kg', '58', NULL, '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 'no', 'complete', '2019-08-21 07:37:32', '2019-08-21 07:37:32'),
(458, 149, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '310', '965', '4', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 290, 'yes', 'complete', '2019-08-21 08:00:17', '2019-08-21 09:33:14'),
(459, 149, 9, 9, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '270', '815', '4', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 369, 'yes', 'complete', '2019-08-21 08:00:17', '2019-08-21 09:33:17'),
(460, 150, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '780', '290', '2', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 111, 'yes', 'complete', '2019-08-21 08:37:43', '2019-08-21 09:33:28'),
(461, 151, 9, 9, 'glass', 232, 'Monolithic 3mm', '134', 'Clear Monolithic', '1', '1', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 0, 'yes', 'complete', '2019-08-21 08:39:34', '2019-08-21 09:33:25'),
(462, 152, 9, 9, 'glass', 232, 'Monolithic 3mm', '134', 'Clear Monolithic', '980', '280', '4', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 147, 'yes', 'complete', '2019-08-21 09:25:59', '2019-08-21 11:11:02'),
(463, 153, 9, 9, 'glass', 233, 'Monolithic 4mm', '208', 'Clear Monolithic', '700', '350', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 102, 'yes', 'complete', '2019-08-21 10:05:29', '2019-08-21 12:03:40'),
(464, 154, 9, 9, 'glass', 232, 'Monolithic 3mm', '134', 'Clear Monolithic', '2', '12', '2', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 0, 'yes', 'complete', '2019-08-21 10:13:24', '2019-08-21 12:03:37'),
(465, 155, 9, 9, 'glass', 262, 'Obscure Stipolite', '228', 'Obscure', '440', '570', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 57, 'yes', 'complete', '2019-08-21 10:22:14', '2019-08-21 12:03:43'),
(466, 155, 9, 9, 'glass', 262, 'Obscure Stipolite', '228', 'Obscure', '440', '550', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 55, 'yes', 'complete', '2019-08-21 10:22:14', '2019-08-21 12:03:45'),
(467, 155, 9, 9, 'glass', 262, 'Obscure Stipolite', '228', 'Obscure', '470', '575', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 62, 'yes', 'complete', '2019-08-21 10:22:14', '2019-08-21 12:03:48'),
(468, 156, 9, 9, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '1755', '612', '1', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 548, 'yes', 'complete', '2019-08-21 10:54:59', '2019-08-21 12:03:53'),
(469, 157, 9, 9, 'glass', 286, 'Mirror 4mm', '355', 'Tinted', '780', '800', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 222, 'yes', 'complete', '2019-08-21 11:26:11', '2019-08-21 12:03:52'),
(470, 158, 9, 9, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '685', '995', '1', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 349, 'yes', 'complete', '2019-08-21 12:48:09', '2019-08-21 14:16:49'),
(471, 158, 9, 9, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '685', '565', '1', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 201, 'yes', 'complete', '2019-08-21 12:48:09', '2019-08-21 14:16:53'),
(472, 158, 9, 9, 'glass', 1, 'Laminated 6.38', '493', 'Clear Laminated', '435', '1145', '1', 'yes', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 258, 'yes', 'complete', '2019-08-21 12:48:09', '2019-08-21 14:16:54'),
(473, 158, NULL, NULL, 'glass', 261, 'Obscure Pacific', '228', 'Obscure', '150', '865', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 30, 'yes', 'delivered', '2019-08-21 12:48:09', '2019-08-21 12:50:45'),
(474, 158, NULL, NULL, 'glass', 261, 'Obscure Pacific', '228', 'Obscure', '150', '555', '1', 'no', '4', 'no', '6.5', '0', '30', 'no', '400', 'no', NULL, 19, 'yes', 'delivered', '2019-08-21 12:48:09', '2019-08-21 12:50:40'),
(475, 159, NULL, NULL, 'glass', 235, 'Monolithic 6mm', '355', 'Clear Monolithic', '295', '295', '1', 'no', '4', 'yes', '6.5', '0', '30', 'no', '400', 'no', NULL, 39, 'no', 'delivered', '2019-08-21 14:30:03', '2019-08-21 14:30:03');

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'modify-order', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17'),
(2, 'create-order', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17'),
(3, 'depot-manage', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17'),
(4, 'record-receipt', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17'),
(5, 'add-stock', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17'),
(6, 'change-stock', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17'),
(7, 'count-stock', 'web', '2019-07-17 00:00:00', '2019-07-17 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'glass',
  `type_id` int(11) NOT NULL,
  `type_name` varchar(31) CHARACTER SET utf8 NOT NULL,
  `width` int(10) NOT NULL,
  `height` int(10) NOT NULL,
  `quantity` int(7) NOT NULL,
  `cost` varchar(15) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `purchases`
--

INSERT INTO `purchases` (`id`, `type`, `type_id`, `type_name`, `width`, `height`, `quantity`, `cost`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'glass', 232, 'Monopolistic 4mm', 345, 345, 3, '344', 1, '2019-07-26 06:00:42', '2019-07-26 06:00:42'),
(3, 'glass', 232, 'Monopolistic 3mm', 3254, 3543, 4, '2000', 1, '2019-07-29 12:40:13', '2019-07-29 12:40:13'),
(4, 'glass', 233, 'Monopolistic 4mm', 1830, 2000, 23, '5324.39', 1, '2019-07-29 15:46:56', '2019-07-29 15:46:56'),
(5, 'glass', 233, 'Monolithic 4mm', 2000, 2440, 1, '2345.00', 1, '2019-08-06 16:28:35', '2019-08-06 16:28:35'),
(6, 'glass', 1, 'Laminated 6.38', 2000, 2440, 1, '2345.90', 1, '2019-08-06 16:28:59', '2019-08-06 16:28:59'),
(7, 'glass', 233, 'Monolithic 4mm', 2440, 1830, 10, '2000', 1, '2019-08-14 05:21:02', '2019-08-14 05:21:02');

-- --------------------------------------------------------

--
-- 資料表結構 `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `baron_id` int(11) NOT NULL,
  `cash` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `receipts`
--

INSERT INTO `receipts` (`id`, `baron_id`, `cash`, `credit`, `created_at`, `updated_at`) VALUES
(26, 3, '4000', '4000', '2019-08-21 12:14:29', '2019-08-21 12:14:29');

-- --------------------------------------------------------

--
-- 資料表結構 `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17'),
(2, 'depot', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17'),
(3, 'sales-person', 'web', '2019-07-12 13:51:17', '2019-07-12 13:51:17');

-- --------------------------------------------------------

--
-- 資料表結構 `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'delivery-per-km', '15'),
(2, 'arising-per-m', '4'),
(3, 'hard-arising-per-m', '6.5'),
(4, 'drilling-per-hole', '30'),
(5, 'hardening-per-m', '400');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `baron_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `baron_id`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, 0, '$2y$10$23XvsuzSp.0KC1M9mMRneek6Hm7DSQ/6OAYjhvF8gUDt8XBM3Gmuq', NULL, '2019-07-12 13:51:17', '2019-08-08 07:04:31', NULL),
(2, 'depotmanager', 'depotmanager@example.com', NULL, 1, '$2y$10$FpFni8Qlc2N5n3cCPT9O..ASjQKV1KTXJVVGzgp.rlluyH4E8H04O', NULL, '2019-07-12 13:51:17', '2019-08-05 05:17:51', NULL),
(3, 'worker', 'worker@example.com', NULL, 1, '$2y$10$YekbxMRjD7vWfqifXne0HOefH5y8sANImenjHauTTeZyRYsUOD3j2', NULL, '2019-07-12 13:51:17', '2019-08-13 05:41:19', '2019-08-13 05:41:19'),
(4, 'fang', 'kingstarboy@outlook.com', NULL, 1, '$2y$10$YjDwXpwaf9ezzMbOXq/Xw.EnSrcO8yrYBLfCCh04foJBZKIOJGys.', NULL, '2019-07-30 10:20:11', '2019-08-13 05:41:53', '2019-08-13 05:41:53'),
(5, 'carlgrobbelaar', 'carl.grobbelaar@yahoo.com', NULL, 2, '$2y$10$V9Q6RcCH6QfQahsHXpd8W.P5Xl9t4vPvkDFpWZF2JwkP3bYdMnDHi', NULL, '2019-07-30 18:42:02', '2019-08-12 05:56:37', '2019-08-12 05:56:37'),
(6, 'Pieter', 'jan@ppp.com', NULL, 2, '$2y$10$CBSxMLUuk/O7i/E5jsoEu.gP/uM8GZGZ1QD5RzXNRfslIiIstzq6e', NULL, '2019-07-30 18:42:50', '2019-08-12 05:56:32', '2019-08-12 05:56:32'),
(7, 'cam', 'cam@anno.com', NULL, 2, '$2y$10$9iW3Swt/I0wt80uTqeR8t.RQ1x.l/pRW6X0umMhPm1xPzndBW5sUa', NULL, '2019-08-05 09:51:27', '2019-08-12 05:56:26', '2019-08-12 05:56:26'),
(9, 'Carl Grobbelaar', 'carl@anno.com', NULL, NULL, '$2y$10$ox.bNK2RmebE/ehN4Rb5Su6IBnkj07vaY65mq9gcOWpmN77oHCL2W', NULL, '2019-08-08 07:05:46', '2019-08-12 05:56:16', NULL),
(10, 'Surprise Moagi', 'Surprise@anno.com', NULL, 3, '$2y$10$vhvZFtXguUTDsbIBub4/IuEzjHKNZzpQc/7WqQZoII7C0y1vLPiU2', NULL, '2019-08-13 05:43:41', '2019-08-14 10:01:42', '2019-08-14 10:01:42'),
(11, 'Surprise Moagi', 'surorisem@gmail.com', NULL, 3, '$2y$10$h6PMukligWQ9tEJsFtN.IOD4GeWqM5//rRULMEVCt55A82yC64RAO', NULL, '2019-08-15 06:07:35', '2019-08-15 06:07:35', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `barons`
--
ALTER TABLE `barons`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `glass_types`
--
ALTER TABLE `glass_types`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- 資料表索引 `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- 資料表索引 `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動增長(AUTO_INCREMENT)
--

--
-- 使用資料表自動增長(AUTO_INCREMENT) `barons`
--
ALTER TABLE `barons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `glass_types`
--
ALTER TABLE `glass_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 已傾印資料表的限制(constraint)
--

--
-- 資料表的限制(constraint) `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制(constraint) `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制(constraint) `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
