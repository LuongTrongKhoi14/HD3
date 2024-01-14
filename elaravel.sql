-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 13, 2023 lúc 03:36 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_22_081323_create_tbl_admin_table', 1),
(6, '2023_05_22_143234_create_tbl_category_product', 2),
(7, '2023_05_22_144831_create_tbl_category_product', 3),
(8, '2023_05_23_051120_create_tbl_brand_product', 4),
(9, '2023_05_23_053217_create_tbl_brand_product', 5),
(10, '2023_05_23_060916_create_tbl_product', 6),
(11, '2023_05_23_071305_create_tbl_product', 7),
(12, '2023_05_23_083004_create_tbl_product', 8),
(13, '2023_05_24_125402_create_tbl_color_product', 9),
(14, '2023_05_24_125429_create_tbl_size_product', 9),
(15, '2023_05_24_130022_create_tbl_color_product', 10),
(16, '2023_05_24_130032_create_tbl_size_product', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_size` int(10) NOT NULL,
  `product_color` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_sales_quantity` int(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_size`, `product_color`, `product_price`, `product_sales_quantity`) VALUES
(56, 72, 23, 'Giày converse 1', 39, 'Đen', 1990000, 3),
(57, 72, 17, 'Giày adidas 1', 40, 'Đen', 2990000, 3),
(58, 73, 23, 'Giày converse 1', 39, 'Đen', 1990000, 10),
(59, 74, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(60, 74, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 2),
(61, 75, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(62, 76, 23, 'Giày converse 1', 39, 'Đen', 1990000, 5),
(63, 76, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 5),
(64, 77, 23, 'Giày converse 1', 40, 'Đen', 1990000, 3),
(65, 78, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(66, 79, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(67, 79, 23, 'Giày converse 1', 40, 'Đen', 1990000, 2),
(68, 80, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(69, 81, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(70, 82, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(71, 83, 23, 'Giày converse 1', 40, 'Đen', 1990000, 2),
(72, 85, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(73, 86, 23, 'Giày converse 1', 40, 'Đen', 1990000, 2),
(74, 87, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(75, 88, 23, 'Giày converse 1', 40, 'Đen', 1990000, 1),
(76, 89, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(77, 90, 17, 'Giày adidas 1', 40, 'Đen', 2990000, 1),
(78, 90, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(79, 91, 23, 'Giày converse 1', 40, 'Đen', 1990000, 1),
(80, 93, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(81, 93, 23, 'Giày converse 1', 40, 'Đen', 1990000, 1),
(82, 94, 23, 'Giày converse 1', 40, 'Đen', 1990000, 2),
(83, 94, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(84, 95, 23, 'Giày converse 1', 40, 'Đen', 1990000, 2),
(85, 96, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(86, 97, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(87, 98, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(88, 99, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(89, 100, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(90, 101, 23, 'Giày converse 1', 40, 'Đen', 1990000, 1),
(91, 102, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(92, 102, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(93, 103, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(94, 104, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(95, 105, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(96, 106, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(97, 107, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(98, 108, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(99, 109, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(100, 110, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(101, 111, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(102, 112, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(103, 113, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(104, 114, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(105, 115, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(106, 116, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(107, 116, 23, 'Giày converse 1', 40, 'Đen', 1990000, 1),
(108, 118, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(109, 119, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(110, 120, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(111, 121, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(112, 122, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 1),
(113, 123, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(114, 124, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(115, 125, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(116, 126, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(117, 127, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(118, 128, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(119, 129, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(120, 130, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(121, 131, 23, 'Giày converse 1', 40, 'Đen', 1990000, 1),
(122, 131, 17, 'Giày adidas 1', 39, 'Nâu', 2990000, 2),
(123, 132, 23, 'Giày converse 1', 39, 'Đen', 1990000, 2),
(124, 132, 17, 'Giày adidas 1', 40, 'Đen', 2990000, 1),
(125, 133, 21, 'Giày nike air force 1 2', 42, 'Nâu', 4450000, 2),
(126, 133, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(127, 134, 23, 'Giày converse 1', 39, 'Đen', 1990000, 1),
(128, 135, 23, 'Giày converse 1', 42, 'Vàng', 1990000, 2),
(129, 136, 25, 'Giày converse 3', 41, 'Vàng', 1990000, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Truong Giang', '0377266381', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand_product`
--

CREATE TABLE `tbl_brand_product` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand_product`
--

INSERT INTO `tbl_brand_product` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Nike', 'nikeeeeeee', 1, NULL, '2023-06-26 05:41:22'),
(2, 'Adidas', 'âs dsg ggdffd', 1, NULL, NULL),
(6, 'Converse', 'ádsadsa', 1, NULL, NULL),
(7, 'Vans', 'Vans', 1, '2023-07-13 02:28:41', '2023-07-13 02:28:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Giày cổ thấp', 'shsdjfskd sdfsdfds sdfsd', 1, NULL, NULL),
(2, 'Giày cổ cao', 'ngon bo cfhfg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_color_product`
--

CREATE TABLE `tbl_color_product` (
  `color_id` int(10) UNSIGNED NOT NULL,
  `color_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_color_product`
--

INSERT INTO `tbl_color_product` (`color_id`, `color_name`, `color_status`, `created_at`, `updated_at`) VALUES
(1, 'Trắng', 1, NULL, NULL),
(2, 'Đen', 1, NULL, NULL),
(3, 'Vàng', 1, NULL, '2023-06-15 00:13:55'),
(4, 'Nâu', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_name` varchar(100) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comment_product_id` int(10) NOT NULL,
  `comment_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment`, `comment_name`, `comment_date`, `comment_product_id`, `comment_status`) VALUES
(1, 'ngon lam nha, co lam thi moi co an nha', 'Giang', '2023-07-08 02:44:13', 17, 1),
(2, 'Re qua troi, giay vua re vua ghe', 'KhoiC', '2023-07-08 02:46:01', 23, 1),
(3, 'giay qua do dep di', 'Thanh', '2023-07-08 02:46:08', 17, 1),
(5, 'Giá cả hợp lý', 'Thương', '2023-07-08 02:45:23', 17, 1),
(6, 'Sản phẩm tốt', 'Khoa', '2023-07-08 02:46:18', 23, 0),
(7, 'Chất lượng ổn', 'Liên', '2023-07-08 02:45:45', 23, 1),
(10, 'Sản phẩm tốt, giá hợp lý', 'Khoa', '2023-07-09 13:13:16', 21, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(50) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_qty` int(11) NOT NULL,
  `coupon_number` int(11) NOT NULL,
  `coupon_condition` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`coupon_id`, `coupon_name`, `coupon_code`, `coupon_qty`, `coupon_number`, `coupon_condition`) VALUES
(1, 'Mua he', 'MUAHE2023', 0, 5, 1),
(2, 'Covid19', 'COVID19', 6, 30000, 2),
(4, 'Tết 2023', 'TET2023', 3, 50000, 2),
(5, 'Sales 7/7', 'THANG7', 10, 50000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_phone` varchar(10) NOT NULL,
  `customer_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `customer_token`) VALUES
(2, 'Nguyen Van A', 'user1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', NULL),
(3, 'Nguyen Van Ber', 'user2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', NULL),
(5, 'Nguyen Van C', 'user4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0377266388', NULL),
(6, 'Nguyen Vu Truong Giang', 'nvtruonggiang02@gmail.com', '3ab674728baf795865ef67241b9db18f', '0377266381', 'agl1wXLxXDMTtofo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `shipping_id` int(5) NOT NULL,
  `payment_id` int(5) NOT NULL,
  `order_total` int(100) NOT NULL,
  `giam_gia` int(50) DEFAULT NULL,
  `so_tien_phai_tra` int(50) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  `order_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `giam_gia`, `so_tien_phai_tra`, `order_status`, `order_date_time`) VALUES
(89, 3, 51, 98, 1990000, 30000, 1960000, 'Đã gói hàng', '2023-07-02 21:05:56'),
(90, 3, 52, 99, 5980000, 299000, 5681000, 'Đã gói hàng', '2023-07-02 21:15:50'),
(94, 3, 55, 103, 7960000, 398000, 7562000, 'Đã hoàn thành', '2023-07-02 21:59:06'),
(95, 3, 56, 104, 3980000, 30000, 3950000, 'Đã gói hàng', '2023-07-02 22:01:46'),
(96, 3, 57, 105, 1990000, 30000, 1960000, 'Đang chờ xử lý', '2023-07-03 10:49:15'),
(98, 3, 59, 107, 1990000, 0, 1990000, 'Đang giao', '2023-07-03 11:30:56'),
(99, 3, 60, 108, 2990000, 149500, 2840500, 'Đang giao', '2023-07-03 11:32:04'),
(100, 3, 61, 109, 3980000, 30000, 3950000, 'Đang chờ xử lý', '2023-07-03 12:14:05'),
(101, 3, 62, 110, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-04 13:02:23'),
(102, 3, 63, 111, 6970000, 50000, 6920000, 'Đang chờ xử lý', '2023-07-07 11:19:22'),
(103, 3, 65, 112, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 10:18:11'),
(104, 3, 66, 113, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 10:19:19'),
(105, 3, 67, 114, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 10:19:50'),
(106, 3, 68, 115, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 10:20:26'),
(107, 3, 69, 116, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 10:21:05'),
(108, 6, 70, 117, 3980000, 0, 3980000, 'Đang chờ xử lý', '2023-07-08 10:36:27'),
(109, 6, 71, 118, 3980000, 0, 3980000, 'Đang chờ xử lý', '2023-07-08 10:39:37'),
(110, 6, 72, 119, 3980000, 0, 3980000, 'Đang chờ xử lý', '2023-07-08 10:41:31'),
(111, 6, 73, 120, 3980000, 0, 3980000, 'Đang chờ xử lý', '2023-07-08 10:42:12'),
(112, 6, 74, 121, 3980000, 0, 3980000, 'Đang chờ xử lý', '2023-07-08 10:42:36'),
(113, 6, 74, 122, 3980000, 0, 3980000, 'Đang chờ xử lý', '2023-07-08 10:44:18'),
(114, 6, 74, 123, 3980000, 0, 3980000, 'Đã hủy', '2023-07-08 10:44:31'),
(115, 6, 74, 124, 3980000, 0, 3980000, 'Đã hủy', '2023-07-08 10:44:46'),
(116, 6, 74, 125, 3980000, 0, 3980000, 'Đang chờ xử lý', '2023-07-08 10:45:20'),
(117, 6, 75, 126, 2990000, 0, 2990000, 'Đang chờ xử lý', '2023-07-08 10:50:43'),
(118, 6, 76, 127, 2990000, 0, 2990000, 'Đang chờ xử lý', '2023-07-08 10:53:50'),
(119, 6, 76, 128, 2990000, 0, 2990000, 'Đang chờ xử lý', '2023-07-08 10:54:29'),
(120, 6, 76, 129, 2990000, 0, 2990000, 'Đang chờ xử lý', '2023-07-08 10:55:17'),
(121, 6, 76, 130, 2990000, 0, 2990000, 'Đang chờ xử lý', '2023-07-08 10:55:37'),
(122, 6, 76, 131, 2990000, 0, 2990000, 'Đang chờ xử lý', '2023-07-08 10:55:51'),
(123, 6, 77, 132, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 10:58:18'),
(124, 6, 77, 133, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 11:54:16'),
(125, 6, 77, 134, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 11:54:43'),
(126, 6, 78, 135, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 11:59:39'),
(127, 6, 78, 136, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 12:06:48'),
(128, 6, 79, 137, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 12:20:54'),
(129, 6, 80, 138, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 12:21:49'),
(130, 6, 81, 139, 1990000, 0, 1990000, 'Đang chờ xử lý', '2023-07-08 12:23:08'),
(131, 6, 82, 140, 7970000, 50000, 7920000, 'Đã hoàn thành', '2023-07-08 12:29:18'),
(132, 3, 83, 141, 6970000, 50000, 6920000, 'Đã gói hàng', '2023-07-08 16:20:02'),
(133, 6, 84, 142, 10890000, 50000, 10840000, 'Đã hủy', '2023-07-10 10:53:18'),
(134, 6, 85, 143, 1990000, 50000, 1940000, 'Đã hoàn thành', '2023-07-11 11:43:59'),
(135, 6, 88, 144, 3980000, 0, 3980000, 'Đang chờ xử lý', '2023-07-13 18:25:10'),
(136, 6, 90, 145, 5970000, 50000, 5920000, 'Đang chờ xử lý', '2023-07-13 18:30:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_date_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `payment_date_time`) VALUES
(11, '2', 'Thanh toán tiền mặt', NULL),
(12, '2', 'Thanh toán tiền mặt', NULL),
(13, '1', 'Đã thanh toán VNPAY', NULL),
(14, '2', 'Thanh toán tiền mặt', NULL),
(15, '1', 'Đã thanh toán VNPAY', NULL),
(16, '2', 'Thanh toán tiền mặt', NULL),
(17, '2', 'Thanh toán tiền mặt', NULL),
(18, '2', 'Thanh toán tiền mặt', NULL),
(19, '2', 'Thanh toán tiền mặt', NULL),
(20, '2', 'Thanh toán tiền mặt', NULL),
(21, '2', 'Thanh toán tiền mặt', NULL),
(22, '2', 'Thanh toán tiền mặt', NULL),
(23, '2', 'Thanh toán tiền mặt', NULL),
(24, '2', 'Thanh toán tiền mặt', NULL),
(25, '2', 'Thanh toán tiền mặt', NULL),
(26, '2', 'Thanh toán tiền mặt', NULL),
(27, '2', 'Thanh toán tiền mặt', NULL),
(28, '2', 'Thanh toán tiền mặt', NULL),
(29, '2', 'Thanh toán tiền mặt', NULL),
(30, '2', 'Thanh toán tiền mặt', NULL),
(31, '2', 'Thanh toán tiền mặt', NULL),
(32, '2', 'Thanh toán tiền mặt', NULL),
(33, '2', 'Thanh toán tiền mặt', NULL),
(34, '2', 'Thanh toán tiền mặt', NULL),
(35, '2', 'Thanh toán tiền mặt', NULL),
(36, '2', 'Thanh toán tiền mặt', NULL),
(37, '1', 'Đã thanh toán VNPAY', NULL),
(38, '2', 'Thanh toán tiền mặt', NULL),
(39, '2', 'Thanh toán tiền mặt', NULL),
(40, '2', 'Thanh toán tiền mặt', NULL),
(41, '2', 'Thanh toán tiền mặt', NULL),
(42, '2', 'Thanh toán tiền mặt', NULL),
(43, '2', 'Thanh toán tiền mặt', NULL),
(44, '2', 'Thanh toán tiền mặt', NULL),
(45, '2', 'Thanh toán tiền mặt', NULL),
(46, '2', 'Thanh toán tiền mặt', NULL),
(47, '2', 'Thanh toán tiền mặt', NULL),
(48, '2', 'Thanh toán tiền mặt', NULL),
(49, '2', 'Thanh toán tiền mặt', NULL),
(50, '2', 'Thanh toán tiền mặt', NULL),
(51, '2', 'Thanh toán tiền mặt', NULL),
(52, '2', 'Thanh toán tiền mặt', NULL),
(53, '2', 'Thanh toán tiền mặt', NULL),
(54, '2', 'Thanh toán tiền mặt', NULL),
(55, '2', 'Thanh toán tiền mặt', NULL),
(56, '2', 'Thanh toán tiền mặt', NULL),
(57, '2', 'Thanh toán tiền mặt', NULL),
(58, '2', 'Thanh toán tiền mặt', NULL),
(59, '2', 'Thanh toán tiền mặt', NULL),
(60, '2', 'Thanh toán tiền mặt', NULL),
(61, '2', 'Thanh toán tiền mặt', NULL),
(62, '2', 'Thanh toán tiền mặt', NULL),
(63, '2', 'Thanh toán tiền mặt', NULL),
(64, '2', 'Thanh toán tiền mặt', NULL),
(65, '2', 'Thanh toán tiền mặt', NULL),
(66, '2', 'Thanh toán tiền mặt', NULL),
(67, '2', 'Thanh toán tiền mặt', NULL),
(68, '2', 'Thanh toán tiền mặt', NULL),
(69, '2', 'Thanh toán tiền mặt', NULL),
(70, '2', 'Thanh toán tiền mặt', NULL),
(71, '2', 'Thanh toán tiền mặt', NULL),
(72, '2', 'Thanh toán tiền mặt', NULL),
(73, '2', 'Thanh toán tiền mặt', NULL),
(74, '2', 'Thanh toán tiền mặt', NULL),
(75, '2', 'Thanh toán tiền mặt', NULL),
(76, '2', 'Thanh toán tiền mặt', NULL),
(77, '2', 'Thanh toán tiền mặt', NULL),
(78, '1', 'Đã thanh toán VNPAY', NULL),
(79, '2', 'Thanh toán tiền mặt', NULL),
(80, '1', 'Đã thanh toán VNPAY', NULL),
(81, '1', 'Đã thanh toán VNPAY', NULL),
(82, '2', 'Thanh toán tiền mặt', NULL),
(83, '2', 'Thanh toán tiền mặt', NULL),
(84, '2', 'Thanh toán tiền mặt', NULL),
(85, '2', 'Thanh toán tiền mặt', NULL),
(86, '2', 'Thanh toán tiền mặt', NULL),
(87, '2', 'Thanh toán tiền mặt', NULL),
(88, '2', 'Thanh toán tiền mặt', NULL),
(89, '2', 'Thanh toán tiền mặt', NULL),
(90, '2', 'Thanh toán tiền mặt', NULL),
(91, '2', 'Thanh toán tiền mặt', NULL),
(92, '2', 'Thanh toán tiền mặt', NULL),
(93, '2', 'Thanh toán tiền mặt', NULL),
(94, '2', 'Thanh toán tiền mặt', NULL),
(95, '2', 'Thanh toán tiền mặt', NULL),
(96, '2', 'Thanh toán tiền mặt', NULL),
(97, '2', 'Thanh toán tiền mặt', NULL),
(98, '2', 'Thanh toán tiền mặt', NULL),
(99, '2', 'Thanh toán tiền mặt', NULL),
(100, '2', 'Thanh toán tiền mặt', NULL),
(101, '2', 'Thanh toán tiền mặt', NULL),
(102, '2', 'Thanh toán tiền mặt', NULL),
(103, '2', 'Thanh toán tiền mặt', NULL),
(104, '2', 'Thanh toán tiền mặt', NULL),
(105, '2', 'Thanh toán tiền mặt', NULL),
(106, '2', 'Thanh toán tiền mặt', NULL),
(107, '2', 'Thanh toán tiền mặt', NULL),
(108, '2', 'Thanh toán tiền mặt', NULL),
(109, '1', 'Đã thanh toán VNPAY', NULL),
(110, '1', 'Đã thanh toán VNPAY', NULL),
(111, '1', 'Đã thanh toán VNPAY', NULL),
(112, '2', 'Thanh toán tiền mặt', NULL),
(113, '2', 'Thanh toán tiền mặt', NULL),
(114, '2', 'Thanh toán tiền mặt', NULL),
(115, '2', 'Thanh toán tiền mặt', NULL),
(116, '2', 'Thanh toán tiền mặt', NULL),
(117, '2', 'Thanh toán tiền mặt', NULL),
(118, '2', 'Thanh toán tiền mặt', NULL),
(119, '2', 'Thanh toán tiền mặt', NULL),
(120, '2', 'Thanh toán tiền mặt', NULL),
(121, '2', 'Thanh toán tiền mặt', NULL),
(122, '2', 'Thanh toán tiền mặt', NULL),
(123, '2', 'Thanh toán tiền mặt', NULL),
(124, '2', 'Thanh toán tiền mặt', NULL),
(125, '2', 'Thanh toán tiền mặt', NULL),
(126, '2', 'Thanh toán tiền mặt', NULL),
(127, '2', 'Thanh toán tiền mặt', NULL),
(128, '2', 'Thanh toán tiền mặt', NULL),
(129, '2', 'Thanh toán tiền mặt', NULL),
(130, '2', 'Thanh toán tiền mặt', NULL),
(131, '2', 'Thanh toán tiền mặt', NULL),
(132, '2', 'Thanh toán tiền mặt', NULL),
(133, '2', 'Thanh toán tiền mặt', NULL),
(134, '2', 'Thanh toán tiền mặt', NULL),
(135, '2', 'Thanh toán tiền mặt', NULL),
(136, '2', 'Thanh toán tiền mặt', NULL),
(137, '2', 'Thanh toán tiền mặt', NULL),
(138, '2', 'Thanh toán tiền mặt', NULL),
(139, '2', 'Thanh toán tiền mặt', NULL),
(140, '2', 'Thanh toán tiền mặt', NULL),
(141, '2', 'Thanh toán tiền mặt', NULL),
(142, '1', 'Đã thanh toán VNPAY', NULL),
(143, '2', 'Thanh toán tiền mặt', NULL),
(144, '2', 'Thanh toán tiền mặt', NULL),
(145, '2', 'Thanh toán tiền mặt', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_view` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_price`, `product_image`, `product_desc`, `product_content`, `category_id`, `brand_id`, `product_status`, `product_view`, `created_at`, `updated_at`) VALUES
(1, 'Giày adidas 2', 3800000, 'adidas592.jpg', 'Trọng lượng: 293 g (size U.K. 8.5)\r\nĐộ dày đế giữa: 10 mm (độ cao gót giày: 22 mm, độ cao mũi giày: 12 mm)\r\nĐế ngoài Continental™ Better Rubber\r\nThân giày làm từ sợi dệt có chứa tối thiểu 50% chất liệu Parley Ocean Plastic và 50% polyester tái chế / Mỗi đôi giảm tối thiểu 10% phát thải so với phiên bản trước\r\nMàu sản phẩm: Core Black / Core Black / Crystal White\r\nMã sản phẩm: GY9351', 'Trải nghiệm nguồn năng lượng vượt trội với giày Ultraboost Light mới, phiên bản Ultraboost nhẹ nhất của chúng tôi. Sự kỳ diệu nằm ở đế giữa Light BOOST, thế hệ mới của đệm adidas BOOST. Thiết kế phân tử độc đáo của mẫu giày này đạt đến chất liệu mút xốp BOOST nhẹ nhất từ trước đến nay.', 1, 2, 1, 10, NULL, '2023-07-13 06:19:12'),
(17, 'Giày adidas 1', 2990000, 'adidas433.jpg', 'Trọng lượng: 293 g (size U.K. 8.5)\r\nĐộ dày đế giữa: 10 mm (độ cao gót giày: 22 mm, độ cao mũi giày: 12 mm)\r\nĐế ngoài Continental™ Better Rubber\r\nThân giày làm từ sợi dệt có chứa tối thiểu 50% chất liệu Parley Ocean Plastic và 50% polyester tái chế / Mỗi đôi giảm tối thiểu 10% phát thải so với phiên bản trước\r\nMàu sản phẩm: Core Black / Core Black / Crystal White\r\nMã sản phẩm: GY9351', 'Trải nghiệm nguồn năng lượng vượt trội với giày Ultraboost Light mới, phiên bản Ultraboost nhẹ nhất của chúng tôi. Sự kỳ diệu nằm ở đế giữa Light BOOST, thế hệ mới của đệm adidas BOOST. Thiết kế phân tử độc đáo của mẫu giày này đạt đến chất liệu mút xốp BOOST nhẹ nhất từ trước đến nay.', 1, 2, 1, 127, NULL, '2023-07-10 07:07:27'),
(18, 'Giày adidas', 3990000, 'adidas414.png', 'Trọng lượng: 293 g (size U.K. 8.5)\r\nĐộ dày đế giữa: 10 mm (độ cao gót giày: 22 mm, độ cao mũi giày: 12 mm)\r\nĐế ngoài Continental™ Better Rubber\r\nThân giày làm từ sợi dệt có chứa tối thiểu 50% chất liệu Parley Ocean Plastic và 50% polyester tái chế / Mỗi đôi giảm tối thiểu 10% phát thải so với phiên bản trước\r\nMàu sản phẩm: Core Black / Core Black / Crystal White\r\nMã sản phẩm: GY9351', 'Trải nghiệm nguồn năng lượng vượt trội với giày Ultraboost Light mới, phiên bản Ultraboost nhẹ nhất của chúng tôi. Sự kỳ diệu nằm ở đế giữa Light BOOST, thế hệ mới của đệm adidas BOOST. Thiết kế phân tử độc đáo của mẫu giày này đạt đến chất liệu mút xốp BOOST nhẹ nhất từ trước đến nay.', 1, 2, 1, 2, NULL, '2023-06-30 01:46:05'),
(19, 'Giày nike air force 1', 4790000, 'nike-air-force-1-lv8-3-gs-white37.jpg', 'asda', 'asdas', 1, 1, 1, 100, NULL, '2023-06-25 22:59:24'),
(21, 'Giày nike air force 1 2', 4450000, 'nike-air-force-1-react-white92.jpg', 'fdgd', 'dfgdf', 1, 1, 1, 19, '0000-00-00 00:00:00', '2023-07-13 03:36:45'),
(22, 'Giày nike air force 1 1', 4300000, 'nike-air-force-1-07-photon-grey11.jpg', 'sdds', 'ádas', 1, 1, 1, 2, NULL, '2023-06-15 00:14:24'),
(23, 'Giày converse 1', 1990000, 'converse264.jpg', 'Màu sắc: Black\r\nChất liệu: Vải canvas. Đế: Cao su\r\nKiểu dáng cổ cao đặc trưng với form ôm sát cổ chân\r\nDây thắt mảnh đơn giản\r\nThiết kế logo thương hiệu nổi bật', 'Thiết kế cổ điển của Converse Chuck 70s với tone đen huyền thoại hiện đang được các bạn trẻ săn đón liên tục. Với sự thay đổi ở phần đế giày được phủ bóng và làm cao hơn, logo nền đen đặc trưng của dòng Chuck 70s mang đến điểm nhấn cho đôi giày. Chất vải Canvas dày, nhẹ ở phiên bản cổ cao giúp người dùng có được sự thoải mái, từng đường kim mũi chỉ được chăm chút tỉ mỉ hơn rất nhiều.', 2, 6, 1, 165, NULL, '2023-07-13 04:23:21'),
(24, 'Giày converse 2', 2450000, 'converse514.jpg', 'Màu sắc: White\r\nChất liệu: Vải canvas. Đế: Cao su\r\nKiểu dáng cổ cao đặc trưng với form ôm sát cổ chân\r\nDây thắt mảnh đơn giản\r\nThiết kế logo thương hiệu nổi bật', 'Thiết kế cổ điển của Converse Chuck 70s với tone đen huyền thoại hiện đang được các bạn trẻ săn đón liên tục. Với sự thay đổi ở phần đế giày được phủ bóng và làm cao hơn, logo nền đen đặc trưng của dòng Chuck 70s mang đến điểm nhấn cho đôi giày. Chất vải Canvas dày, nhẹ ở phiên bản cổ cao giúp người dùng có được sự thoải mái, từng đường kim mũi chỉ được chăm chút tỉ mỉ hơn rất nhiều.', 2, 6, 1, 2, NULL, '2023-07-03 23:13:52'),
(25, 'Giày converse 3', 1990000, 'converse40.jpg', 'Màu sắc: White\r\nChất liệu: Vải canvas. Đế: Cao su\r\nKiểu dáng cổ cao đặc trưng với form ôm sát cổ chân\r\nDây thắt mảnh đơn giản\r\nThiết kế logo thương hiệu nổi bật', 'Thiết kế cổ điển của Converse Chuck 70s với tone đen huyền thoại hiện đang được các bạn trẻ săn đón liên tục. Với sự thay đổi ở phần đế giày được phủ bóng và làm cao hơn, logo nền đen đặc trưng của dòng Chuck 70s mang đến điểm nhấn cho đôi giày. Chất vải Canvas dày, nhẹ ở phiên bản cổ cao giúp người dùng có được sự thoải mái, từng đường kim mũi chỉ được chăm chút tỉ mỉ hơn rất nhiều.', 2, 6, 1, 4, NULL, '2023-07-13 04:30:11'),
(27, 'VANS OLD SKOOL OVERT CC', 2900000, 'vans17.jpg', 'GIỚI TÍNH: Unisex\r\nMÀU SẮC: Đa dạng \r\nPHẦN THÂN: Vải - Da lộn\r\nLỚP LÓT: Vải\r\nĐẾ GIÀY: Cao Su', 'Nói Vans Old Skool là “át chủ bài” của Vans thật không có gì sai khi dòng giày này hiện đang là item cực hot được giới trẻ săn đón. Mặc dù dòng giày này đã có lịch sử gần 40 năm nhưng càng lúc càng khẳng định được vị trí của mình với các tín đồ thời trang.', 1, 7, 1, 4, NULL, '2023-07-13 04:23:09'),
(28, 'Vans Old Skool Flatform', 1665000, 'VN0A3B3UY2858.jpg', 'GIỚI TÍNH: Unisex\r\nMÀU SẮC: Đen\r\nPHẦN THÂN: Vải - Da lộn\r\nLỚP LÓT: Vải\r\nĐẾ GIÀY: Cao Su', 'Nói Vans Old Skool là “át chủ bài” của Vans thật không có gì sai khi dòng giày này hiện đang là item cực hot được giới trẻ săn đón. Mặc dù dòng giày này đã có lịch sử gần 40 năm nhưng càng lúc càng khẳng định được vị trí của mình với các tín đồ thời trang.', 1, 7, 1, 1, NULL, '2023-07-13 04:22:05'),
(29, 'Vans Eco Theory Checkerboard', 1980000, 'VN0A54F470564.jpg', 'GIỚI TÍNH: Unisex MÀU SẮC: Đen PHẦN THÂN: Vải - Da lộn LỚP LÓT: Vải ĐẾ GIÀY: Cao Su', 'Nói Vans Old Skool là “át chủ bài” của Vans thật không có gì sai khi dòng giày này hiện đang là item cực hot được giới trẻ săn đón. Mặc dù dòng giày này đã có lịch sử gần 40 năm nhưng càng lúc càng khẳng định được vị trí của mình với các tín đồ thời trang.', 1, 7, 1, 3, NULL, '2023-07-13 04:22:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_details`
--

CREATE TABLE `tbl_product_details` (
  `product_details_id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `color_name` varchar(50) NOT NULL,
  `size_name` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_details`
--

INSERT INTO `tbl_product_details` (`product_details_id`, `product_id`, `color_name`, `size_name`, `quantity`) VALUES
(4, 23, '2', '1', 156),
(5, 23, '2', '2', 81),
(6, 17, '4', '1', 73),
(7, 17, '2', '2', 95),
(9, 19, '1', '4', 100),
(11, 1, '3', '3', 100),
(12, 18, '1', '2', 108),
(13, 22, '1', '2', 100),
(14, 21, '4', '4', 100),
(15, 25, '3', '3', 97),
(17, 23, '3', '4', 68),
(18, 21, '1', '4', 99),
(19, 29, '2', '1', 100),
(20, 29, '1', '1', 100),
(21, 29, '2', '2', 100),
(22, 28, '1', '1', 100),
(23, 28, '4', '1', 100),
(24, 27, '2', '7', 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `shipping_name` varchar(50) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_phone` varchar(10) NOT NULL,
  `shipping_email` varchar(70) NOT NULL,
  `shipping_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`) VALUES
(22, 'Nguyen Vu Truong Giang', '123A NCT TPHCM', '123456789', 'user2@gmail.com', 'nhanh len'),
(23, 'Nguyen Van Mot', '111111TPHCM', '123456789', 'user1@gmail.com', 'asksa asfasf safa'),
(24, 'Nguyen Van 2', '22222222', '123456789', 'user2@gmail.com', 'aaa'),
(25, 'Nguyen Van 2', '123A NCT TPHCM', '123456789', 'user2@gmail.com', 'zzc'),
(26, 'Nguyen Van B', '123A NCT TPHCM', '0123456789', 'user2@gmail.com', 'nhffsdjs'),
(27, 'Nguyen Van A', '2 2 2 2', '0123456789', 'abcxyz3330@gmail.com', 'sasdsa'),
(28, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'aaaaaaa'),
(29, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'llk;'),
(30, 'Nguyen Vu Truong Giang', '123A NCT TPHCM', '123456789', 'user2@gmail.com', 'aSsaS'),
(31, 'Nguyen Vu Truong Giang', '2 2 2 2', '123456789', 'user2@gmail.com', 'j'),
(32, 'Nguyen Van 2', '123A NCT TPHCM', '123456789', 'user2@gmail.com', 'as'),
(33, 'Nguyen Vu Truong Giang', '123A NCT TPHCM', '123456789', 'user2@gmail.com', 'zcx'),
(34, 'Nguyen Van Hai', '123asd', '0377266381', 'nvtruonggiang02@gmail.com', 'asdaa'),
(35, 'Nguyen Van A', '123A NCT TPHCM', '222222', 'abcxyz3330@gmail.com', 'test giam gia'),
(36, 'Nguyen Van Hai', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'ere'),
(37, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'hg'),
(38, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'hg'),
(39, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'hg'),
(40, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'hg'),
(41, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'hg'),
(42, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'jhkjb'),
(43, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'jhkjb'),
(44, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'asdad'),
(45, 'Nguyen Van A', '123A NCT TPHCM', '222222', 'abcxyz3330@gmail.com', 'df'),
(46, 'Nguyen Van A', '123A NCT TPHCM', '222222', 'abcxyz3330@gmail.com', 'df'),
(47, 'Nguyen Van A', '123A NCT TPHCM', '222222', 'abcxyz3330@gmail.com', 'df'),
(48, 'Nguyen Van Hai', '2 2 2 2', '222222', 'abcxyz3330@gmail.com', 'jj'),
(49, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'tut'),
(50, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'tut'),
(51, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'm'),
(52, 'Nguyen Van C', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'fghfg'),
(53, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'jh'),
(54, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', '.kk'),
(55, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'sdsd'),
(56, 'Nguyen Van A', 'sasad', '0123456789', 'abcxyz3330@gmail.com', 'dsada'),
(57, 'asdsad', 'asdad', '0123456789', 'abc@gmail.com', 'asdasdas'),
(58, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'sdsa'),
(59, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'fhhfg'),
(60, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'sefsfdss'),
(61, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'fghfhfhfh'),
(62, 'Nguyen Van A', '123A NCT TPHCM', '0123456789', 'abcxyz3330@gmail.com', 'Âs'),
(63, 'Nguyen Vu Truong Giang', '123A Nguyễn Trãi, phường Nguyễn Cư Trinh, quận 1, TPHCM', '0377266388', 'user2@gmail.com', 'Chào'),
(64, 'áA', '22222222', '0377266381', 'nvtruonggiang02@gmail.com', 'ấd'),
(65, 'Nguyen Van C', 'asasa', '123456789', 'user2@gmail.com', 'asdasds'),
(66, 'Nguyen Van C', 'asasa', '123456789', 'user2@gmail.com', 'asdasds'),
(67, 'ZxZx', 'zxZ', '0377266381', 'nvtruonggiang02@gmail.com', 'zxx'),
(68, 'ZxZx', 'zxZ', '0377266381', 'nvtruonggiang02@gmail.com', 'zxx'),
(69, 'ZxZx', 'zxZ', '0377266381', 'nvtruonggiang02@gmail.com', 'zxx'),
(70, 'Xzx', 'Zxx', '0377266381', 'nvtruonggiang02@gmail.com', 'Zxzx'),
(71, 'Xzx', 'Zxx', '0377266381', 'nvtruonggiang02@gmail.com', 'Zxzx'),
(72, 'Xzx', 'Zxx', '0377266381', 'nvtruonggiang02@gmail.com', 'Zxzx'),
(73, 'Xzx', 'Zxx', '0377266381', 'nvtruonggiang02@gmail.com', 'Zxzx'),
(74, 'Xzx', 'Zxx', '0377266381', 'nvtruonggiang02@gmail.com', 'Zxzxd'),
(75, 'Ấ', 'ấ', '0377266381', 'nvtruonggiang02@gmail.com', 'trê'),
(76, 'Ấ', 'ấ', '0377266381', 'nvtruonggiang02@gmail.com', 'trê'),
(77, 'Nguyen Van 2', '22222222', '0377266381', 'nvtruonggiang02@gmail.com', 'gf'),
(78, 'Nguyen Van 2', '22222222', '0377266381', 'nvtruonggiang02@gmail.com', 'gf'),
(79, 'Nguyen Vu Truong Giang', '22222222', '0377266381', 'nvtruonggiang02@gmail.com', 'cxvxc'),
(80, 'Nguyen Vu Truong Giang', '123asd', '0377266381', 'nvtruonggiang02@gmail.com', 'cv'),
(81, 'Nguyen Vu Truong Giang', 'ádasd', '0377266381', 'nvtruonggiang02@gmail.com', 'ádsad'),
(82, 'Nguyen Vu Truong Giang', '123asd', '0377266381', 'nvtruonggiang02@gmail.com', 'jhhbjvhv'),
(83, 'Nguyen Vu Truong Giang', '22222222', '0377266381', 'nvtruonggiang02@gmail.com', 'sdas'),
(84, 'Nguyen Vu Truong Giang', '123F Nguyễn Trãi, phường Nguyễn Cư Trinh, quận 1, TPHCM', '0377266381', 'nvtruonggiang02@gmail.com', NULL),
(85, 'huy', '123asd', '0377266381', 'nvtruonggiang02@gmail.com', 'asa'),
(86, 'Nguyen Vu Truong Giang', '123A Nguyễn Trãi, phường Nguyễn Cư Trinh, quận 1, TPHCM', '0377266381', 'nvtruonggiang02@gmail.com', 'sadsad'),
(87, 'Nguyen Vu Truong Giang', '123A Nguyễn Trãi, phường Nguyễn Cư Trinh, quận 1, TPHCM', '0377266381', 'nvtruonggiang02@gmail.com', 'sadsad'),
(88, 'Nguyen Vu Truong Giang', '123A Nguyễn Trãi, phường Nguyễn Cư Trinh, quận 1, TPHCM', '0377266381', 'nvtruonggiang02@gmail.com', 'sadsad'),
(89, 'Nguyen Vu Truong Giang', '123A Nguyễn Trãi, phường Nguyễn Cư Trinh, quận 1, TPHCM', '0377266381', 'nvtruonggiang02@gmail.com', 'sadsad'),
(90, 'Nguyen Vu Truong Giang', '123A Nguyễn Trãi, phường Nguyễn Cư Trinh, quận 1, TPHCM', '0377266381', 'nvtruonggiang02@gmail.com', 'kiyuity456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size_product`
--

CREATE TABLE `tbl_size_product` (
  `size_id` int(10) UNSIGNED NOT NULL,
  `size_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size_product`
--

INSERT INTO `tbl_size_product` (`size_id`, `size_name`, `size_status`, `created_at`, `updated_at`) VALUES
(1, '39', 1, NULL, NULL),
(2, '40', 1, NULL, NULL),
(3, '41', 1, NULL, NULL),
(4, '42', 1, NULL, NULL),
(7, '43', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_color_product`
--
ALTER TABLE `tbl_color_product`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  ADD PRIMARY KEY (`product_details_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_size_product`
--
ALTER TABLE `tbl_size_product`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_color_product`
--
ALTER TABLE `tbl_color_product`
  MODIFY `color_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_product_details`
--
ALTER TABLE `tbl_product_details`
  MODIFY `product_details_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `tbl_size_product`
--
ALTER TABLE `tbl_size_product`
  MODIFY `size_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
