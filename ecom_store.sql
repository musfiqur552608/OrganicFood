-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 07:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Musfiqur Rahman', 'musfiq552608@gmail.com', 'admin2021', 'admin.jpg', 'Bangladesh', 'This application is created by Triangle Bee IT, if you willing to contact me, please click this link. <br/>\r\n                        <a href=\"#\"> Organic Food </a> <br/>\r\n                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam.', '01638352180', 'Web Developer'),
(3, 'Antara', 'antara@gmail.com', 'admin2021', 'admin2.jpg', 'Bangladesh', 'This application is created by Triangle Bee IT, if you willing to contact me, please click this link. <br/>\r\n                        <a href=\"#\"> Organic Food </a> <br/>\r\n                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam.', '01722200811', 'Web Developer');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'Best Products', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(2, 'Best Offers', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(3, '100% Satisfy', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(21, '::1', 2, '80', 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Bangladeshi', 'yes', 'bd.jpg'),
(2, 'Foreign', 'no', 'foreign.jpg'),
(5, 'Indian', 'no', 'indian.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(2, 38, 'Coupon For Lentils BD', '50', '552608552608', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'Musfiqur Rahman', 'musfiq552608@gmailcom', '552608', 'Bangladesh', 'Cumilla', '01638352180', 'Ghaniar Char,Homna', 'musfiq.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_ammount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_ammount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(7, 5, 420, 344462616, 3, 'Small', '2021-04-11', 'Complete'),
(8, 5, 150, 344462616, 3, 'Small', '2021-04-11', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Triangle Food', 'yes', 'musfiq.jpg'),
(2, 'Priony Food', 'yes', 'admin2.jpg'),
(3, 'Grow Food', 'no', '122037039_1089352268147159_5554527462540134979_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(6, 696463364, 80, 'Bikash', 123, 321, '27/03/2021'),
(8, 52214986, 100, 'Bikash', 123, 321, '26/03/2021'),
(9, 344462616, 420, 'Bikash', 123, 321, '01/04/2021');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(7, 5, 344462616, '7', 3, 'Small', 'Complete'),
(8, 5, 344462616, '15', 3, 'Small', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_features`, `product_video`, `product_label`, `product_sale`) VALUES
(18, 1, 1, 1, '2021-04-10 19:01:28', 'Mango', 'mango-bd', 'mango2.jpg', 'mango3.jpg', 'mango1.jpg', 100, 'Fruits', '<p>Good</p>', '<p>good</p>', '                                                                        <iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/fgxhPIo1mrk?list=TLPQMTAwNDIwMjHKJf-7J95EcA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>                                                                ', 'sale', 20),
(19, 2, 1, 2, '2021-04-10 19:06:18', 'Mango Juice', 'mango-juice', 'mangoj1.jpg', 'mangoj3.jpg', 'magoj2.jpg', 140, 'Juice', '<p>Good and Healthy.</p>', '<p>Good</p>', '                                                                        <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/ptwaI_yUabY?list=TLPQMTAwNDIwMjHKJf-7J95EcA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                                                ', 'sale', 60),
(20, 3, 1, 3, '2021-04-11 09:37:06', 'Lentils BD', 'Lentils-BD', 'Lentils3.jpg', 'Lentils1.jpg', 'Lentils3.jpg', 140, 'Groceries', '<p>Quality Products</p>', '<p>1. BD product</p>\r\n<p>2. Size Medium</p>', '<p>&lt;iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/aKw1WPNx8d0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen&gt;&lt;/iframe&gt;</p>', 'new', 60),
(21, 4, 1, 1, '2021-04-11 09:50:22', 'Tomato', 'Tomato-bd', 'tomato1.jpg', 'tomato2.jpg', 'tomato3.jpg', 80, 'Vegetables', '<p>Quality Products.</p>', '<p>Good and healthy</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/qXdw-hBiu1A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 60),
(22, 2, 2, 1, '2021-04-11 09:50:37', 'Mango Juice', 'mango-juice', 'mangoj3.jpg', 'mangoj1.jpg', 'magoj2.jpg', 120, 'Juice', '<p>Pure Organic.</p>', '<p>Good.</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/ptwaI_yUabY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 60),
(23, 1, 5, 2, '2021-04-11 09:50:52', 'Java Plum', 'Java-Plum', 'Java Plum1.jpg', 'Java Plum2.jpg', 'Java Plum3.jpg', 100, 'Fruits', '<p>Organic</p>', '<p>Good.</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/i6yzR8FTgE8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 60),
(24, 4, 1, 3, '2021-04-11 09:51:14', 'Water Spinach', 'Water-Spinach', 'Water Spinach3.jpg', 'Water Spinach1.jpg', 'Water Spinach2.jpg', 50, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/d5t07J7wxhg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 20),
(25, 4, 5, 2, '2021-04-11 09:51:23', 'Sweet Potato', 'Sweet-Potato', 'Sweet Potato3.jpg', 'Sweet Potato2.jpg', 'Sweet Potato1.jpg', 80, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/E9zFX9zcFFo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 20),
(26, 1, 2, 1, '2021-04-11 10:51:01', 'Strawberry', 'Strawberry-F', 'Strawberry3.jpg', 'Strawberry2.jpg', 'Strawberry1.jpg', 200, 'Fruits', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/1IwKWYNycj8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'sale', 150),
(27, 1, 5, 1, '2021-04-11 10:50:51', 'Sapodilla', 'Sapodilla-i', 'Sapodilla1.jpg', 'Sapodilla2.jpg', 'Sapodilla3.jpg', 140, 'Fruits', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/wLWT0EZEG1E\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'sale', 120),
(28, 4, 1, 2, '2021-04-11 10:50:26', 'Pumkin', 'Pumkin-bd', 'Pumkin1.jpg', 'Pumkin2.jpg', 'Pumkin3.jpg', 80, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/x69p5_BlZB8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 60),
(29, 4, 1, 2, '2021-04-11 10:50:09', 'Potato', 'Potato-bd', 'Potato1.jpg', 'Potato2.jpg', 'Potato3.jpg', 25, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/3SZ5jzrO0QY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'sale', 10),
(30, 4, 5, 3, '2021-04-11 10:42:34', 'Pea', 'pea-i', 'Pea1.jpg', 'pea2.jpg', 'pea3.jpg', 60, 'Vegetables', '<p>Organic</p>', '<p>good</p>', '<p>&lt;iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/4JFqio9hVcI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen&gt;&lt;/iframe&gt;</p>', 'new', 55),
(31, 4, 1, 2, '2021-04-11 10:49:54', 'Basella Leaf', 'Basella-Leaf', 'Basella Leaf1.jpg', 'Basella Leaf2.jpg', 'Basella Leaf3.jpg', 20, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/siohcgmLxFA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 10),
(32, 4, 1, 1, '2021-04-11 10:49:40', 'Bitter Melon', 'Bitter-Melon', 'Bitter melon1.jpg', 'Bitter melon2.jpg', 'Bitter melon3.jpg', 60, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/E5YK_34vdA8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'sale', 50),
(33, 4, 1, 1, '2021-04-11 11:17:17', 'Brinjal', 'Brinjal-bd', 'Brinjal1.jpg', 'Brinjal2.jpg', 'Brinjal3.jpg', 75, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/zjU-nSZxMJU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 60),
(34, 4, 5, 3, '2021-04-11 11:17:07', 'Brocoli', 'Brocoli-i', 'Brocoli1.jpg', 'Brocoli2.jpg', 'Brocoli3.jpg', 60, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                                                        <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/zk8jMlvO4NI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                                                ', 'sale', 55),
(35, 4, 1, 2, '2021-04-11 11:16:38', 'Cabbage', 'Cabbage-bd', 'Cabbage1.jpg', 'Cabbage2.jpg', 'Cabbage3.jpg', 160, 'Vegetables', '<p>Organic</p>', '<p>Food</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/8ddMwIE4sqI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 150),
(36, 4, 1, 1, '2021-04-11 11:16:15', 'Cauliflower', 'Cauliflower-bd', 'Cauliflower1.jpg', 'Cauliflower2.jpg', 'Cauliflower3.jpg', 100, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/Kfktp3QBgIs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'sale', 90),
(37, 4, 1, 2, '2021-04-11 11:15:56', 'Coriander Leaf', 'Coriander-Leaf', 'Coriander Leaf1.jpg', 'Coriander Leaf2.jpg', 'Coriander Leaf3.jpg', 20, 'Vegetables', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/LAA8Aj3-6fg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 10),
(38, 1, 1, 1, '2021-04-11 11:15:37', 'Jackfruit', 'Jackfruit-bd', 'Jackfruit1.jpg', 'Brocoli2.jpg', 'Jackfruit3.jpg', 140, 'Fruits', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/pOBad7s7ML4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 120),
(39, 1, 1, 1, '2021-04-11 11:15:19', 'Mango', 'mango-bd', 'mango1.jpg', 'mango2.jpg', 'mango3.jpg', 100, 'Fruits', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/fgxhPIo1mrk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'sale', 60),
(40, 5, 1, 3, '2021-04-11 11:15:10', 'Milk', 'milk-bd', 'milk1.jpg', 'milk2.jpg', 'milk3.jpg', 80, 'Milks', '<p>Organic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/KZE5OpK7dII\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'sale', 60),
(41, 1, 1, 2, '2021-04-11 11:14:55', 'Papaya', 'Papaya-bd', 'Papaya1.jpg', 'Papaya2.jpg', 'Papaya3.jpg', 60, 'Fruits', '<p>Oragnic</p>', '<p>Good</p>', '                                    <p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/dVqC4M_6EDg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'sale', 55),
(42, 4, 1, 1, '2021-04-11 13:51:32', 'Parwar', 'Parwar-bd', 'Parwar1.jpg', 'Parwar2.jpg', 'Parwar3.jpg', 60, 'Vegetables', '<p>Oragnic</p>', '<p>Good</p>', '<p><iframe width=\"560\" height=\"340\" src=\"https://www.youtube.com/embed/KhdyOrZtXsI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></p>                                ', 'new', 55);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, '    Fruits', 'yes', 'fruit.jpg'),
(2, 'Juices', 'no', 'juices.jpg'),
(3, 'Groceries', 'no', 'groceries.jpg'),
(4, 'Vegetables', 'no', 'vegetable.jpg'),
(5, 'Milks', 'yes', 'milk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(10) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_name`, `slider_image`, `slide_url`) VALUES
(17, 'slide 1', 'slide1.jpg', 'slide-1'),
(18, 'slide2', 'slide2.jpg', 'slide-2'),
(19, 'slide3', 'slide3.jpg', 'slide-3'),
(20, 'slide4', 'slide4.jpg', 'slide-4');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Terms & Conditions', 'termLink', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae ipsam qui consectetur ipsa ratione maxime eaque consequatur a debitis ullam?'),
(2, ' Refund Policy ', 'refundLink', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae ipsam qui consectetur ipsa ratione maxime eaque consequatur a debitis ullam?'),
(3, 'Promo & Other Term & Conditions', 'promoTermCondittions', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae ipsam qui consectetur ipsa ratione maxime eaque consequatur a debitis ullam?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
