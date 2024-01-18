-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2023 at 09:59 AM
-- Server version: 5.7.37
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_area`
--

CREATE TABLE `cms_area` (
  `ID` int(5) UNSIGNED NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `number_table` int(10) DEFAULT '0',
  `store_id` int(5) NOT NULL,
  `user_init` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `user_upd` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_area`
--

INSERT INTO `cms_area` (`ID`, `area_name`, `number_table`, `store_id`, `user_init`, `deleted`, `user_upd`, `created`, `updated`) VALUES
(1, 'Tầng trệt', 10, 1, 1, 0, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cms_canreturn`
--

CREATE TABLE `cms_canreturn` (
  `ID` int(13) NOT NULL,
  `store_id` int(5) NOT NULL,
  `order_id` int(10) NOT NULL DEFAULT '0',
  `input_id` int(10) NOT NULL DEFAULT '0',
  `product_id` int(10) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_canreturn`
--

INSERT INTO `cms_canreturn` (`ID`, `store_id`, `order_id`, `input_id`, `product_id`, `price`, `quantity`, `user_init`, `user_upd`, `created`, `updated`) VALUES
(1, 1, 1, 0, 1, 15000, 1, 1, NULL, '2023-09-05 19:36:45', NULL),
(2, 1, 0, 1, 1, 5000, 100, 1, NULL, '2023-10-27 12:57:17', NULL),
(3, 1, 2, 0, 1, 15000, 4, 1, NULL, '2023-10-27 13:08:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_customers`
--

CREATE TABLE `cms_customers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_code` varchar(10) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_addr` varchar(255) NOT NULL,
  `customer_image` text,
  `customer_group` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `customer_birthday` date NOT NULL,
  `customer_gender` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_customers`
--

INSERT INTO `cms_customers` (`ID`, `customer_name`, `customer_code`, `customer_phone`, `customer_email`, `customer_addr`, `customer_image`, `customer_group`, `notes`, `customer_birthday`, `customer_gender`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(36, 'Khách lẻ', 'KH000001', '0900000000', '', '', '', 0, '', '2000-06-09', 0, '2023-06-26 20:45:45', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_customers_group`
--

CREATE TABLE `cms_customers_group` (
  `ID` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `sell_price_id` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_input`
--

CREATE TABLE `cms_input` (
  `ID` int(10) UNSIGNED NOT NULL,
  `input_code` varchar(9) NOT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  `order_id` int(10) NOT NULL DEFAULT '0',
  `input_date` datetime NOT NULL,
  `notes` varchar(255) NOT NULL,
  `payment_method` tinyint(4) NOT NULL,
  `total_price` int(13) NOT NULL,
  `total_origin_price_return` int(13) NOT NULL DEFAULT '0',
  `total_quantity` int(9) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_money` int(13) NOT NULL,
  `payed` int(11) NOT NULL,
  `lack` int(13) NOT NULL,
  `detail_input` text NOT NULL,
  `input_status` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `canreturn` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_input`
--

INSERT INTO `cms_input` (`ID`, `input_code`, `supplier_id`, `store_id`, `order_id`, `input_date`, `notes`, `payment_method`, `total_price`, `total_origin_price_return`, `total_quantity`, `discount`, `total_money`, `payed`, `lack`, `detail_input`, `input_status`, `created`, `updated`, `user_init`, `user_upd`, `deleted`, `canreturn`) VALUES
(1, 'PN0000001', 0, 1, 0, '2023-10-27 19:57:17', '', 1, 500000, 0, 100, 0, 500000, 500000, 0, '[{\"id\":\"1\",\"quantity\":\"100\",\"price\":\"5000\"}]', 1, '2023-10-27 12:57:17', '0000-00-00 00:00:00', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_inventory`
--

CREATE TABLE `cms_inventory` (
  `store_id` int(5) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_inventory`
--

INSERT INTO `cms_inventory` (`store_id`, `product_id`, `quantity`, `user_init`, `user_upd`, `created`, `updated`) VALUES
(1, 1, 195, 1, 1, '2023-09-05 19:36:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_orders`
--

CREATE TABLE `cms_orders` (
  `ID` int(10) UNSIGNED NOT NULL,
  `output_code` varchar(9) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  `input_id` int(10) NOT NULL DEFAULT '0',
  `sell_date` datetime NOT NULL,
  `notes` varchar(255) NOT NULL,
  `payment_method` tinyint(4) NOT NULL,
  `total_price` int(13) NOT NULL,
  `total_origin_price` int(11) NOT NULL,
  `discount_item` int(13) NOT NULL DEFAULT '0',
  `coupon` int(11) NOT NULL,
  `customer_pay` int(11) NOT NULL,
  `table_id` int(5) NOT NULL DEFAULT '0',
  `vat` int(3) NOT NULL DEFAULT '0',
  `total_money` int(13) NOT NULL,
  `total_quantity` int(9) NOT NULL,
  `lack` int(13) NOT NULL,
  `detail_order` text NOT NULL,
  `order_status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0',
  `sale_id` int(5) NOT NULL DEFAULT '0',
  `canreturn` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_orders`
--

INSERT INTO `cms_orders` (`ID`, `output_code`, `customer_id`, `store_id`, `input_id`, `sell_date`, `notes`, `payment_method`, `total_price`, `total_origin_price`, `discount_item`, `coupon`, `customer_pay`, `table_id`, `vat`, `total_money`, `total_quantity`, `lack`, `detail_order`, `order_status`, `deleted`, `created`, `updated`, `user_init`, `user_upd`, `sale_id`, `canreturn`) VALUES
(1, 'PX0000001', 0, 1, 0, '2023-09-06 10:36:45', 'Bàn: 1 - KV: Tầng trệt', 1, 15000, 5000, 0, 0, 15000, 1, 0, 15000, 1, 0, '[{\"id\":\"1\",\"quantity\":\"1\",\"price\":\"15000\",\"discount\":\"0\",\"note\":\"\"}]', 1, 0, '2023-09-05 19:36:45', '0000-00-00 00:00:00', 1, 0, 0, 1),
(2, 'PX0000002', 0, 1, 0, '2023-10-27 20:08:01', 'Bàn: 2 - KV: Tầng trệt', 1, 60000, 20000, 0, 0, 60000, 2, 0, 60000, 4, 0, '[{\"id\":\"1\",\"quantity\":\"4\",\"price\":\"15000\",\"discount\":\"0\",\"note\":\"\"}]', 1, 0, '2023-10-27 13:08:01', '0000-00-00 00:00:00', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_payment`
--

CREATE TABLE `cms_payment` (
  `ID` int(10) UNSIGNED NOT NULL,
  `input_id` int(10) NOT NULL DEFAULT '0',
  `payment_code` varchar(9) NOT NULL,
  `payment_image` text,
  `type_id` tinyint(1) NOT NULL,
  `store_id` int(11) NOT NULL,
  `payment_date` datetime NOT NULL,
  `notes` varchar(255) NOT NULL,
  `payment_method` tinyint(4) NOT NULL,
  `total_money` int(13) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_payment`
--

INSERT INTO `cms_payment` (`ID`, `input_id`, `payment_code`, `payment_image`, `type_id`, `store_id`, `payment_date`, `notes`, `payment_method`, `total_money`, `deleted`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(1, 1, 'PC0000001', NULL, 2, 1, '2023-10-27 19:57:17', '', 1, 500000, 0, '2023-10-27 12:57:17', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_permissions`
--

CREATE TABLE `cms_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_url` varchar(255) NOT NULL,
  `permission_name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_permissions`
--

INSERT INTO `cms_permissions` (`id`, `permission_url`, `permission_name`) VALUES
(1, 'backend/dashboard', 'Tổng quan'),
(2, 'backend/order', 'Đơn hàng'),
(3, 'backend/product', 'Hàng Hóa'),
(4, 'backend/customer', 'Khách hàng'),
(5, 'backend/import', 'Nhập kho'),
(6, 'backend/transfer', 'Chuyển kho'),
(7, 'backend/inventory', 'Tồn kho'),
(8, 'backend/revenue', 'Doanh số'),
(9, 'backend/receipt', 'Phiếu thu'),
(10, 'backend/profit', 'Lợi nhuận'),
(11, 'backend/config', 'Thiết lập'),
(12, '', 'Sửa đơn hàng'),
(13, '', 'Xóa đơn hàng'),
(14, '', 'Tạo đơn hàng'),
(15, '', 'Sửa phiếu nhập'),
(16, '', 'Xóa phiếu nhập'),
(17, '', 'Tạo phiếu nhập'),
(18, '', 'phiếu chi'),
(19, '', 'Pos'),
(20, '', 'Sổ quỹ'),
(21, '', 'Xóa phiếu thu'),
(22, '', 'Xóa phiếu chi'),
(23, '', 'Sửa phiếu thu'),
(24, '', 'Sửa phiếu chi'),
(25, '', 'Sửa sản phẩm'),
(26, '', 'Xóa sản phẩm');

-- --------------------------------------------------------

--
-- Table structure for table `cms_products`
--

CREATE TABLE `cms_products` (
  `ID` int(10) UNSIGNED NOT NULL,
  `prd_code` varchar(15) NOT NULL,
  `prd_name` varchar(255) NOT NULL,
  `prd_sls` int(11) NOT NULL,
  `prd_origin_price` int(11) NOT NULL,
  `infor` varchar(100) DEFAULT NULL,
  `prd_sell_price` int(11) NOT NULL DEFAULT '0',
  `prd_sell_price2` int(11) NOT NULL DEFAULT '0',
  `prd_status` tinyint(1) NOT NULL DEFAULT '1',
  `prd_inventory` tinyint(1) NOT NULL,
  `prd_allownegative` tinyint(1) NOT NULL DEFAULT '0',
  `prd_edit_price` tinyint(1) NOT NULL DEFAULT '1',
  `prd_manufacture_id` int(11) NOT NULL,
  `prd_unit_id` int(11) NOT NULL DEFAULT '0',
  `prd_group_id` int(11) NOT NULL,
  `prd_image_url` text,
  `prd_descriptions` text NOT NULL,
  `prd_hot` tinyint(1) NOT NULL,
  `prd_new` tinyint(1) NOT NULL,
  `prd_highlight` tinyint(1) NOT NULL,
  `display_website` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_products`
--

INSERT INTO `cms_products` (`ID`, `prd_code`, `prd_name`, `prd_sls`, `prd_origin_price`, `infor`, `prd_sell_price`, `prd_sell_price2`, `prd_status`, `prd_inventory`, `prd_allownegative`, `prd_edit_price`, `prd_manufacture_id`, `prd_unit_id`, `prd_group_id`, `prd_image_url`, `prd_descriptions`, `prd_hot`, `prd_new`, `prd_highlight`, `display_website`, `created`, `updated`, `user_init`, `user_upd`, `deleted`) VALUES
(1, 'SP00001', 'Nước ép Cam', 195, 5000, '', 15000, 9000, 1, 0, 1, 1, 13, -1, 24, '', '', 0, 0, 0, 0, '2023-09-05 19:36:37', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_products_group`
--

CREATE TABLE `cms_products_group` (
  `ID` int(10) UNSIGNED NOT NULL,
  `prd_group_name` varchar(255) NOT NULL,
  `parentid` int(11) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` tinyint(4) NOT NULL,
  `user_upd` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_products_group`
--

INSERT INTO `cms_products_group` (`ID`, `prd_group_name`, `parentid`, `level`, `lft`, `rgt`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(24, 'Thức uống', -1, 0, 0, 0, '2023-08-16 17:01:32', '2023-08-17 08:01:32', 1, 1),
(25, 'Đồ ăn', -1, 0, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(26, 'Đồ nướng', 25, 1, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(27, 'Nước ngọt', 24, 1, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(28, 'Bia', 24, 1, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(29, 'Lẩu', 25, 1, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(30, 'Gỏi', 25, 1, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(31, 'Đồ chiên, xào', 25, 1, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(32, 'Đồ luột, hấp', 25, 1, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(34, 'Nước suối', 24, 1, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(35, 'Dịch vụ', -1, 0, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0),
(38, 'camera', -1, 0, 0, 0, '2023-08-16 17:01:32', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_products_manufacture`
--

CREATE TABLE `cms_products_manufacture` (
  `ID` int(10) UNSIGNED NOT NULL,
  `prd_manuf_name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_products_manufacture`
--

INSERT INTO `cms_products_manufacture` (`ID`, `prd_manuf_name`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(13, 'NXS1', '2023-05-23 21:08:34', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_products_unit`
--

CREATE TABLE `cms_products_unit` (
  `ID` int(10) UNSIGNED NOT NULL,
  `prd_unit_name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_products_unit`
--

INSERT INTO `cms_products_unit` (`ID`, `prd_unit_name`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(26, 'Giờ', '2023-02-27 22:25:11', '0000-00-00 00:00:00', 1, 0),
(27, 'lon', '2023-02-27 22:25:11', '0000-00-00 00:00:00', 1, 0),
(28, 'cái', '2023-02-27 22:25:11', '0000-00-00 00:00:00', 1, 0),
(29, 'Ly', '2023-09-05 19:36:22', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_receipt`
--

CREATE TABLE `cms_receipt` (
  `ID` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) NOT NULL DEFAULT '0',
  `receipt_code` varchar(9) NOT NULL,
  `receipt_image` text,
  `type_id` tinyint(1) NOT NULL,
  `store_id` int(11) NOT NULL,
  `receipt_date` datetime NOT NULL,
  `notes` varchar(255) NOT NULL,
  `receipt_method` tinyint(4) NOT NULL,
  `total_money` int(13) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_receipt`
--

INSERT INTO `cms_receipt` (`ID`, `order_id`, `receipt_code`, `receipt_image`, `type_id`, `store_id`, `receipt_date`, `notes`, `receipt_method`, `total_money`, `deleted`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(1, 1, 'PT0000001', NULL, 3, 1, '2023-09-06 10:36:45', 'Bàn: 1 - KV: Tầng trệt', 0, 15000, 0, '2023-09-05 19:36:45', '0000-00-00 00:00:00', 1, 0),
(2, 2, 'PT0000002', NULL, 3, 1, '2023-10-27 20:08:01', 'Bàn: 2 - KV: Tầng trệt', 0, 60000, 0, '2023-10-27 13:08:01', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_report`
--

CREATE TABLE `cms_report` (
  `ID` int(10) UNSIGNED NOT NULL,
  `transaction_code` varchar(9) NOT NULL,
  `transaction_id` int(10) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(5) NOT NULL,
  `date` datetime NOT NULL,
  `notes` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `total_money` int(13) NOT NULL DEFAULT '0',
  `origin_price` int(11) NOT NULL DEFAULT '0',
  `input` int(11) NOT NULL DEFAULT '0',
  `output` int(9) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0',
  `sale_id` int(5) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_report`
--

INSERT INTO `cms_report` (`ID`, `transaction_code`, `transaction_id`, `customer_id`, `store_id`, `date`, `notes`, `product_id`, `discount`, `total_money`, `origin_price`, `input`, `output`, `price`, `deleted`, `created`, `updated`, `user_init`, `user_upd`, `sale_id`, `supplier_id`, `type`, `stock`) VALUES
(1, 'SP00001', 0, 0, 1, '0000-00-00 00:00:00', 'Khai báo hàng hóa', 1, 0, 0, 0, 100, 0, 0, 0, '2023-09-05 19:36:37', '0000-00-00 00:00:00', 1, 0, 0, 0, 1, 100),
(2, 'PX0000001', 1, 0, 1, '2023-09-06 10:36:45', 'Bàn: 1 - KV: Tầng trệt', 1, 0, 15000, 5000, 0, 1, 15000, 0, '2023-09-05 19:36:45', '0000-00-00 00:00:00', 1, 0, 0, 0, 3, 99),
(3, 'PN0000001', 1, 0, 1, '2023-10-27 19:57:17', '', 1, 0, 500000, 0, 100, 0, 5000, 0, '2023-10-27 12:57:17', '0000-00-00 00:00:00', 1, 0, 0, 0, 2, 199),
(4, 'PX0000002', 2, 0, 1, '2023-10-27 20:08:01', 'Bàn: 2 - KV: Tầng trệt', 1, 0, 60000, 20000, 0, 4, 15000, 0, '2023-10-27 13:08:01', '0000-00-00 00:00:00', 1, 0, 0, 0, 3, 195);

-- --------------------------------------------------------

--
-- Table structure for table `cms_stores`
--

CREATE TABLE `cms_stores` (
  `ID` int(5) UNSIGNED NOT NULL,
  `store_image` varchar(100) DEFAULT NULL,
  `store_name` varchar(255) NOT NULL,
  `store_manager` varchar(50) DEFAULT NULL,
  `store_phone` varchar(30) DEFAULT NULL,
  `store_address` varchar(200) DEFAULT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_stores`
--

INSERT INTO `cms_stores` (`ID`, `store_image`, `store_name`, `store_manager`, `store_phone`, `store_address`, `user_init`, `user_upd`, `created`, `updated`) VALUES
(1, NULL, 'Cửa hàng số 1', NULL, NULL, NULL, 1, 1, '2023-05-10 16:00:00', '2021-11-08 21:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `cms_suppliers`
--

CREATE TABLE `cms_suppliers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `supplier_code` varchar(10) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_phone` varchar(30) NOT NULL,
  `supplier_email` varchar(150) NOT NULL,
  `supplier_addr` varchar(255) NOT NULL,
  `supplier_image` text,
  `tax_code` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_suppliers`
--

INSERT INTO `cms_suppliers` (`ID`, `supplier_code`, `supplier_name`, `supplier_phone`, `supplier_email`, `supplier_addr`, `supplier_image`, `tax_code`, `notes`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(5, 'NCC00001', 'NCC00001', '0868896944', 'poswebvn@gmail.com', '', '', '', '', '2023-05-16 06:45:01', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_table`
--

CREATE TABLE `cms_table` (
  `ID` int(5) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `table_status` tinyint(1) NOT NULL DEFAULT '0',
  `area_id` int(5) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_table`
--

INSERT INTO `cms_table` (`ID`, `table_name`, `table_status`, `area_id`, `deleted`, `user_init`, `user_upd`, `created`, `updated`) VALUES
(1, '1', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(2, '2', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(3, '3', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(4, '4', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(5, '5', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(6, '6', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(7, '7', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(8, '8', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(9, '9', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00'),
(10, '10', 0, 1, 0, 1, 0, '2023-09-05 19:35:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cms_table_order`
--

CREATE TABLE `cms_table_order` (
  `ID` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(9) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `table_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `notes` varchar(255) NOT NULL,
  `coupon` int(11) NOT NULL,
  `customer_pay` int(11) NOT NULL,
  `detail_order` text NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_templates`
--

CREATE TABLE `cms_templates` (
  `id` int(5) NOT NULL,
  `type` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL,
  `user_upd` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_templates`
--

INSERT INTO `cms_templates` (`id`, `type`, `name`, `content`, `created`, `updated`, `user_upd`) VALUES
(1, 1, 'Hóa đơn bán hàng (Pos)', '<table style=\"width:100%\"> 	<tbody> 		<tr> 			<td>Mỹ Phẩm POSBASIC</td> 		</tr> 		<tr> 			<td>Địa chỉ: 210 L&ecirc; Hồng Phong, P. L&yacute; Thường Kiệt, TP. Hồ Ch&iacute; Minh</td> 		</tr> 		<tr> 			<td>Điện thoại: 08 68896944,&nbsp;Mở cửa: 08:00 - 21:00 h&agrave;ng ng&agrave;y</td> 		</tr> 	</tbody> </table>  <div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br /> <strong>{Ma_Don_Hang}</strong></div>  <div> <p><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}<br /> <strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}<br /> <strong>Địa Chỉ:</strong> {DC_Khach_Hang}<br /> <strong>ĐT: </strong>{DT_Khach_Hang}</p> </div>  <div>{Chi_Tiet_San_Pham}</div>  <div>&nbsp;</div>  <table style=\"width:100%\"> 	<tbody> 		<tr> 			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td> 			<td style=\"text-align:right\">{Tong_Tien_Hang}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Giảm gi&aacute;:</td> 			<td style=\"text-align:right\">{Chiec_Khau}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Đặt cọc</td> 			<td style=\"text-align:right\">{Khach_Dua}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Tổng thanh to&aacute;n:</td> 			<td style=\"text-align:right\"><strong>{Con_No}</strong></td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Tổng c&ocirc;ng nợ</td> 			<td style=\"text-align:right\">{Cong_No}</td> 		</tr> 	</tbody> </table>  <p style=\"text-align:center\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>  <p>Ghi ch&uacute;: Qu&yacute; kh&aacute;ch kiểm tra đơn h&agrave;ng trước khi ra khỏi cửa h&agrave;ng.</p>  <p style=\"text-align:right\">&nbsp;<strong>NGƯỜI B&Aacute;N H&Agrave;NG</strong></p>  <p style=\"text-align:right\">&nbsp;</p>  <p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {Thu_Ngan}</strong></p>', '2019-11-07 02:00:05', '2021-08-19 14:27:13', 1),
(2, 2, 'Hóa đơn bán hàng (order)', '<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>Mỹ Phẩm POSBASIC</td>\n		</tr>\n		<tr>\n			<td>Địa chỉ: 210 L&ecirc; Hồng Phong, P. L&yacute; Thường Kiệt, TP. Hồ Ch&iacute; Minh</td>\n		</tr>\n		<tr>\n			<td>Điện thoại: 08 68896944</td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br />\n<strong>{Ma_Don_Hang}</strong></div>\n\n<div><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}</div>\n\n<div><strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}</div>\n\n<div><strong>Thu ng&acirc;n:</strong> {Thu_Ngan}</div>\n\n<p>&nbsp;</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:35%\"><strong>Đơn gi&aacute;</strong></td>\n			<td style=\"text-align:center; width:30%\"><strong>SL</strong></td>\n			<td style=\"text-align:right\"><strong>TT</strong></td>\n		</tr>\n		<tr>\n			<td colspan=\"3\">{Ten_Hang_Hoa}</td>\n		</tr>\n		<tr>\n			<td>{Don_Gia}</td>\n			<td style=\"text-align:center\">{So_Luong}</td>\n			<td style=\"text-align:right\">{Thanh_Tien}</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td>\n			<td style=\"text-align:right\">{Tong_Tien_Hang}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Giảm gi&aacute;:</td>\n			<td style=\"text-align:right\">{Chiec_Khau}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Th&agrave;nh tiền:</td>\n			<td style=\"text-align:right\">{Tong_Tien}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Kh&aacute;ch đưa</td>\n			<td style=\"text-align:right\">{Khach_Dua}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Tổng thanh to&aacute;n:</td>\n			<td style=\"text-align:right\"><strong>{Con_No}</strong></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:left\">Ghi ch&uacute;: {Ghi_Chu}</p>\n\n<div style=\"text-align:left\">Xin cảm ơn v&agrave; hẹn gặp lại!</div>\n', '2019-11-07 02:00:05', '2022-02-02 16:27:43', 1),
(3, 3, 'Hóa đơn phiếu nhập', '<table style=\"width:100%\"> 	<tbody> 		<tr> 			<td>Mỹ Phẩm POSBASIC</td> 		</tr> 		<tr> 			<td>Địa chỉ: 210 L&ecirc; Hồng Phong, P. L&yacute; Thường Kiệt, TP. Hồ Ch&iacute; Minh</td> 		</tr> 		<tr> 			<td>Điện thoại: 08 68896944</td> 		</tr> 	</tbody> </table>  <div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN NHẬP H&Agrave;NG</strong><br /> <strong>{Ma_Phieu_Nhap}</strong></div>  <div><strong>Ng&agrave;y nhập:</strong> {Ngay_Nhập}</div>  <div><strong>Nh&agrave; cung cấp:</strong> {Nha_Cung_Cap}</div>  <div><strong>Người nhập:</strong> {Thu_Ngan}</div>  <div>&nbsp;</div>  <p>{Chi_Tiet_San_Pham}</p>  <table style=\"width:100%\"> 	<tbody> 		<tr> 			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td> 			<td style=\"text-align:right\">{Tong_Tien_Hang}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Giảm gi&aacute;:</td> 			<td style=\"text-align:right\">{Chiec_Khau}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Th&agrave;nh tiền:</td> 			<td style=\"text-align:right\">{Tong_Tien}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Thanh to&aacute;n</td> 			<td style=\"text-align:right\">{Tra_Tien}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">C&ograve;n nợ:</td> 			<td style=\"text-align:right\"><strong>{Con_No}</strong></td> 		</tr> 	</tbody> </table>  <p>Số tiền bằng chữ: {So_Tien_Bang_Chu}</p>  <p>Ghi ch&uacute;: vui l&ograve;ng lấy h&oacute;a đơn</p>  <div style=\"text-align:left\">Xin cảm ơn v&agrave; hẹn gặp lại!</div>', '2019-11-07 02:00:05', '2021-08-15 23:00:49', 1),
(4, 4, 'Phiếu chuyển kho', '<table style=\"width:100%\"> 	<tbody> 		<tr> 			<td>Mỹ Phẩm POSBASIC</td> 		</tr> 		<tr> 			<td>Địa chỉ: 210 L&ecirc; Hồng Phong, P. L&yacute; Thường Kiệt, TP. Hồ Ch&iacute; Minh</td> 		</tr> 		<tr> 			<td>Điện thoại: 08 68896944</td> 		</tr> 	</tbody> </table>  <div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br /> <strong>{Ma_Don_Hang}</strong></div>  <div> <p><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}<br /> <strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}<br /> <strong>Địa Chỉ:</strong> {DC_Khach_Hang}<br /> <strong>ĐT: </strong>{DT_Khach_Hang}</p> </div>  <div>{Chi_Tiet_San_Pham}</div>  <div>&nbsp;</div>  <table style=\"width:100%\"> 	<tbody> 		<tr> 			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td> 			<td style=\"text-align:right\">{Tong_Tien_Hang}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Giảm gi&aacute;:</td> 			<td style=\"text-align:right\">{Chiec_Khau}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Đặt cọc</td> 			<td style=\"text-align:right\">{Khach_Dua}</td> 		</tr> 		<tr> 			<td style=\"text-align:right\">Tổng thanh to&aacute;n:</td> 			<td style=\"text-align:right\"><strong>{Con_No}</strong></td> 		</tr> 	</tbody> </table>  <p style=\"text-align:center\">Số tiền bằng chữ: {So_Tien_Bang_Chu}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>  <p style=\"text-align:right\">&nbsp;<strong>NGƯỜI B&Aacute;N H&Agrave;NG</strong></p>  <p style=\"text-align:right\">&nbsp;</p>  <p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>', '2019-11-07 02:00:05', '2021-08-15 23:00:51', 1),
(5, 5, 'Phiếu thu', '<table xss=removed>  <tbody>   <tr>    <td><span xss=removed>DI ĐỘNG THÔNG MINH</span></td>   </tr>   <tr>    <td>Địa chỉ: 338 CMT P14, Q10</td>   </tr>   <tr>    <td>Điện thoại: 0868896944</td>   </tr>  </tbody> </table>  <div xss=removed><strong>Phiếu thu (Liên 1)</strong><br> <strong>{Ma_Phieu_Thu}</strong></div>  <div> <p><strong>Ngày Thu:</strong> {Ngay_Thu}</p>  <p><strong>Người Thu:</strong> {Thu_Ngan}</p> </div>  <div><strong>Hình Thức Thu:</strong> {Hinh_Thuc_Thu}</div>  <div> </div>  <div><strong>Số Tiền Thu:</strong> {Tong_Tien}</div>  <div> </div>  <div>Số tiền bằng chữ: {So_Tien_Bang_Chu} </div>  <div> </div>  <div>Ghi Chú: {Ghi_Chu} </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> </div>  <div> <table xss=removed>  <tbody>   <tr>    <td><span xss=removed>Sơn Nano smart - Văn phòng đại diện khu vực tây nguyên</span></td>   </tr>   <tr>    <td>Địa chỉ: 32A, Lê Hồng Phong, TT Phước An, Krông Pắc, Đắk Lắk</td>   </tr>   <tr>    <td>Điện thoại: 0911 6666 17</td>   </tr>  </tbody> </table>  <div xss=removed><strong>Phiếu thu (Liên 2)</strong><br> <strong>{Ma_Phieu_Thu}</strong></div>  <div> <p><strong>Ngày Thu:</strong> {Ngay_Thu}</p>  <p><strong>Người Thu:</strong> {Thu_Ngan}</p> </div>  <div><strong>Hình Thức Thu:</strong> {Hinh_Thuc_Thu}</div>  <div> </div>  <div><strong>Số Tiền Thu:</strong> {Tong_Tien}</div>  <div> </div>  <div>Số tiền bằng chữ: {So_Tien_Bang_Chu} </div>  <div> </div>  <div>Ghi Chú: {Ghi_Chu} </div>  <div>                          </div>  <p xss=removed> </p>  <p xss=removed><strong>                                                                                                                                                                                                                                </strong></p> </div>  <div>                          </div>  <p xss=removed> </p>  <p xss=removed><strong>                                                                                                                                                                                                                                </strong></p>', '2019-11-07 02:00:05', '2021-08-15 23:00:54', 1),
(6, 6, 'Phiếu chi', '<table xss=removed>\n <tbody>\n  <tr>\n   <td><span xss=removed>CAFE MIMOSA</span></td>\n  </tr>\n  <tr>\n   <td>Địa chỉ: 335 DƯƠNG TỬ P5 Q6</td>\n  </tr>\n  <tr>\n   <td>Điện thoại: 0868896944</td>\n  </tr>\n </tbody>\n</table>\n\n<div xss=removed><strong>Phiếu Chi (Liên 1)</strong></div>\n\n<div xss=removed><strong>{Ma_Phieu_Chi}</strong></div>\n\n<div>\n<p><strong>Ngày Chi:</strong> {Ngay_Chi}</p>\n\n<p><strong>Người Chi:</strong> {Thu_Ngan}</p>\n</div>\n\n<div><strong>Hình Thức Chi:</strong> {Hinh_Thuc_Chi}</div>\n\n<div> </div>\n\n<div><strong>Số Tiền Chi:</strong> {Tong_Tien}</div>\n\n<div> </div>\n\n<div>Số tiền bằng chữ: {So_Tien_Bang_Chu} </div>\n\n<div> </div>\n\n<div>Ghi Chú: {Ghi_Chu} </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div> </div>\n\n<div>\n<table xss=removed>\n <tbody>\n  <tr>\n   <td><span xss=removed>Sơn Nano smart - Văn phòng đại diện khu vực tây nguyên</span></td>\n  </tr>\n  <tr>\n   <td>Địa chỉ: 32A, Lê Hồng Phong, TT Phước An, Krông Pắc, Đắk Lắk</td>\n  </tr>\n  <tr>\n   <td>Điện thoại: 0911 6666 17</td>\n  </tr>\n </tbody>\n</table>\n\n<div xss=removed><strong>Phiếu Chi (Liên 2)</strong></div>\n\n<div xss=removed><strong>{Ma_Phieu_Chi}</strong></div>\n\n<div>\n<p><strong>Ngày Chi:</strong> {Ngay_Chi}</p>\n\n<p><strong>Người Chi:</strong> {Thu_Ngan}</p>\n</div>\n\n<div><strong>Hình Thức Chi:</strong> {Hinh_Thuc_Chi}</div>\n\n<div> </div>\n\n<div><strong>Số Tiền Chi:</strong> {Tong_Tien}</div>\n\n<div> </div>\n\n<div>Số tiền bằng chữ: {So_Tien_Bang_Chu} </div>\n\n<div> </div>\n\n<div>Ghi Chú: {Ghi_Chu} </div>\n</div>\n\n<div>                          </div>\n\n<p xss=removed> </p>\n\n<p xss=removed><strong>                                                                                                                                                                                                                                </strong></p>\n', '2019-11-07 02:00:05', '2022-02-02 16:27:55', 1),
(7, 7, 'Báo bếp', '<div style=\"text-align:center\"><strong>In b&aacute;o bếp</strong><br /> <strong>{Ma_Don_Hang}</strong></div>  <div> <p><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}</p>  <p><strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}</p>  <p><strong>Phục vụ:</strong> {Phuc_Vu}</p>  <p><strong>B&agrave;n:</strong> {Ban}</p> </div>  <div><span style=\"font-size:11px\">{Chi_Tiet_San_Pham2}</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>  <p>Ghi ch&uacute;: {Ghi_Chu}</p>', '2019-11-07 02:00:05', '2021-08-15 23:00:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_transfer`
--

CREATE TABLE `cms_transfer` (
  `ID` int(10) UNSIGNED NOT NULL,
  `transfer_code` varchar(9) NOT NULL,
  `from_store` int(11) NOT NULL,
  `to_store` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `total_quantity` int(9) NOT NULL,
  `detail_transfer` text NOT NULL,
  `transfer_status` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL,
  `user_init` int(11) NOT NULL,
  `user_upd` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_transfer`
--

INSERT INTO `cms_transfer` (`ID`, `transfer_code`, `from_store`, `to_store`, `notes`, `total_quantity`, `detail_transfer`, `transfer_status`, `deleted`, `created`, `updated`, `user_init`, `user_upd`) VALUES
(4, 'CK0000001', 121, 1, 'aa', 2, '[{\"id\":\"902\",\"quantity\":\"1\"},{\"id\":\"905\",\"quantity\":\"1\"}]', 0, 0, '2019-11-09 18:03:54', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `display_name` varchar(120) NOT NULL,
  `user_status` tinyint(4) NOT NULL DEFAULT '1',
  `group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `logined` datetime(1) DEFAULT NULL,
  `ip_logged` varchar(255) NOT NULL DEFAULT '1',
  `recode` varchar(255) DEFAULT NULL,
  `code_time_out` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `username`, `password`, `salt`, `email`, `display_name`, `user_status`, `group_id`, `store_id`, `created`, `updated`, `logined`, `ip_logged`, `recode`, `code_time_out`) VALUES
(1, 'admin', 'f7b140c3d390d302ff341e1c7f58104e', 'Y1QVahERXDncetBJ6tpVpWSKW6qx8254rvhpKzaoPJijbZdVWKxptEcFh8BFFLVuCBGF7', 'admin@gmail.com', 'admin', 1, 1, 1, '2023-09-25 14:53:08', '2023-06-11 19:08:31', '2023-10-27 19:50:52.0', '146.196.67.250', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users_group`
--

CREATE TABLE `cms_users_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_permission` varchar(255) NOT NULL,
  `group_registered` datetime NOT NULL,
  `group_updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_users_group`
--

INSERT INTO `cms_users_group` (`id`, `group_name`, `group_permission`, `group_registered`, `group_updated`) VALUES
(1, 'Ban Giám đốc', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]', '2023-01-22 02:58:58', '2023-01-22 02:58:58'),
(19, 'Nhân viên', '', '2023-05-26 10:55:30', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_area`
--
ALTER TABLE `cms_area`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_canreturn`
--
ALTER TABLE `cms_canreturn`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_customers`
--
ALTER TABLE `cms_customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_customers_group`
--
ALTER TABLE `cms_customers_group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_input`
--
ALTER TABLE `cms_input`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_inventory`
--
ALTER TABLE `cms_inventory`
  ADD PRIMARY KEY (`store_id`,`product_id`);

--
-- Indexes for table `cms_orders`
--
ALTER TABLE `cms_orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_payment`
--
ALTER TABLE `cms_payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_permissions`
--
ALTER TABLE `cms_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_products`
--
ALTER TABLE `cms_products`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prd_name` (`prd_name`);
ALTER TABLE `cms_products` ADD FULLTEXT KEY `prd_name_2` (`prd_name`);

--
-- Indexes for table `cms_products_group`
--
ALTER TABLE `cms_products_group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_products_manufacture`
--
ALTER TABLE `cms_products_manufacture`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_products_unit`
--
ALTER TABLE `cms_products_unit`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_receipt`
--
ALTER TABLE `cms_receipt`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_report`
--
ALTER TABLE `cms_report`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_stores`
--
ALTER TABLE `cms_stores`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_suppliers`
--
ALTER TABLE `cms_suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_table`
--
ALTER TABLE `cms_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_table_order`
--
ALTER TABLE `cms_table_order`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_templates`
--
ALTER TABLE `cms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_transfer`
--
ALTER TABLE `cms_transfer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users_group`
--
ALTER TABLE `cms_users_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_area`
--
ALTER TABLE `cms_area`
  MODIFY `ID` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_canreturn`
--
ALTER TABLE `cms_canreturn`
  MODIFY `ID` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_customers`
--
ALTER TABLE `cms_customers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cms_customers_group`
--
ALTER TABLE `cms_customers_group`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_input`
--
ALTER TABLE `cms_input`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_orders`
--
ALTER TABLE `cms_orders`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_payment`
--
ALTER TABLE `cms_payment`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_permissions`
--
ALTER TABLE `cms_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cms_products`
--
ALTER TABLE `cms_products`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_products_group`
--
ALTER TABLE `cms_products_group`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cms_products_manufacture`
--
ALTER TABLE `cms_products_manufacture`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_products_unit`
--
ALTER TABLE `cms_products_unit`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cms_receipt`
--
ALTER TABLE `cms_receipt`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_report`
--
ALTER TABLE `cms_report`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_stores`
--
ALTER TABLE `cms_stores`
  MODIFY `ID` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_suppliers`
--
ALTER TABLE `cms_suppliers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_table`
--
ALTER TABLE `cms_table`
  MODIFY `ID` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_table_order`
--
ALTER TABLE `cms_table_order`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_templates`
--
ALTER TABLE `cms_templates`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms_transfer`
--
ALTER TABLE `cms_transfer`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_users_group`
--
ALTER TABLE `cms_users_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
