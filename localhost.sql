-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2024 at 05:47 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21554504_practice`
--
CREATE DATABASE IF NOT EXISTS `id21554504_practice` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id21554504_practice`;

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `email`, `password`, `img`) VALUES
(1, 'a', 'a@gmail.com', '1234', 'https://topsapi.000webhostapp.com/task/aimage/photo.jpg'),
(2, 'a', 'a', 'a', 'https://topsapi.000webhostapp.com/task/aimage/photo.jpg'),
(3, 'harshida', 'harshida@gmail.com', '1234', 'https://topsapi.000webhostapp.com/task/aimage/photo.jpg'),
(4, '', '', '', 'https://topsapi.000webhostapp.com/db_files/animal/aimage/.');

-- --------------------------------------------------------

--
-- Table structure for table `cart_gift`
--

CREATE TABLE `cart_gift` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `pdes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart_gift`
--

INSERT INTO `cart_gift` (`id`, `c_id`, `pname`, `pprice`, `pimage`, `pdes`) VALUES
(3, 1, 'Chocolate1', 500, 'https://topsapi.000webhostapp.com/gift_shop_project/images/c1.jpg', 'a1'),
(4, 2, 'flower1', 200, 'https://topsapi.000webhostapp.com/gift_shop_project/images/f1.jpg', 'a1'),
(5, 2, 'flower1', 200, 'https://topsapi.000webhostapp.com/gift_shop_project/images/f1.jpg', 'a1'),
(6, 2, 'flower1', 200, 'https://topsapi.000webhostapp.com/gift_shop_project/images/f1.jpg', 'a1'),
(7, 1, 'Chocolate1', 500, 'https://topsapi.000webhostapp.com/gift_shop_project/images/c1.jpg', 'a1'),
(8, 2, 'flower1', 200, 'https://topsapi.000webhostapp.com/gift_shop_project/images/f1.jpg', 'a1');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `category_name`, `category_img`) VALUES
(1, 'Electronic Products', 'https://topsapi.000webhostapp.com/FlutterProject/images/elec1.jpg'),
(2, 'Furniture Products1', 'https://amisha1299.000webhostapp.com/Ewishes/Images/image_8732.jpg'),
(5, 'a2', 'https://topsapi.000webhostapp.com/FlutterProject/Upload_category/Images/image_3662.jpg'),
(12, '', 'https://topsapi.000webhostapp.com//flutter_project_morning/Images/image_7898.'),
(13, '', 'https://topsapi.000webhostapp.com//flutter_project_morning/Images/image_4169.');

-- --------------------------------------------------------

--
-- Table structure for table `Category_Images`
--

CREATE TABLE `Category_Images` (
  `id` int(11) NOT NULL,
  `c_id` varchar(11) NOT NULL,
  `c_images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category_Images`
--

INSERT INTO `Category_Images` (`id`, `c_id`, `c_images`) VALUES
(1, '2', 'https://topsapi.000webhostapp.com/FlutterProject/images/f1.jpg'),
(2, '2', 'https://topsapi.000webhostapp.com/FlutterProject/images/f2.jpg'),
(3, '2', 'https://topsapi.000webhostapp.com/FlutterProject/images/f3.jpg'),
(4, '1', 'https://topsapi.000webhostapp.com/FlutterProject/images/ele1.jpg'),
(5, '1', 'https://topsapi.000webhostapp.com/FlutterProject/images/ele2.jpg'),
(6, '1', 'https://topsapi.000webhostapp.com/FlutterProject/Images/image_5210.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cricket`
--

CREATE TABLE `cricket` (
  `id` int(11) NOT NULL,
  `cricketer_name` varchar(255) NOT NULL,
  `cricketer_hscore` varchar(255) NOT NULL,
  `cricketer_wickets` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cricket`
--

INSERT INTO `cricket` (`id`, `cricketer_name`, `cricketer_hscore`, `cricketer_wickets`, `age`) VALUES
(3, 'p', '100', '200', '25'),
(4, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_category`
--

CREATE TABLE `gift_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gift_category`
--

INSERT INTO `gift_category` (`id`, `category_name`, `category_img`) VALUES
(1, 'Chocolates', 'https://topsapi.000webhostapp.com/gift_shop_project/images/chocolates.jpg'),
(2, 'Flowers', 'https://topsapi.000webhostapp.com/gift_shop_project/images/flowers.jpg'),
(3, 'mobile', 'https://img.freepik.com/premium-photo/mobile-phone-hand-purple-background-with-sample-home-screen-icons-screen_746318-434.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gift_category_images`
--

CREATE TABLE `gift_category_images` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `pdes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gift_category_images`
--

INSERT INTO `gift_category_images` (`id`, `c_id`, `pname`, `pprice`, `pimage`, `pdes`) VALUES
(1, 1, 'Chocolate1', 500, 'https://topsapi.000webhostapp.com/gift_shop_project/images/c1.jpg', 'a1'),
(2, 1, 'Chocolate2', 700, 'https://topsapi.000webhostapp.com/gift_shop_project/images/c2.jpg', 'a1'),
(3, 2, 'flower1', 200, 'https://topsapi.000webhostapp.com/gift_shop_project/images/f1.jpg', 'a1'),
(4, 3, 'Mobile1', 15000, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/uk/advisor/wp-content/uploads/2020/11/phones-switch-apps.jpg', 'a'),
(5, 3, 'Mobile2', 20000, 'https://images.pexels.com/photos/1786433/pexels-photo-1786433.jpeg?cs=srgb&dl=pexels-hammad-khalid-1786433.jpg&fm=jpg', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `gift_chocolate`
--

CREATE TABLE `gift_chocolate` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `pdes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gift_chocolate`
--

INSERT INTO `gift_chocolate` (`id`, `pname`, `pprice`, `pimage`, `pdes`) VALUES
(1, 'Chocolate1', 500, 'https://topsapi.000webhostapp.com/gift_shop_project/images/c1.jpg', 'good product'),
(2, 'Chocolate2', 800, 'https://topsapi.000webhostapp.com/gift_shop_project/images/c2.jpg', 'good product');

-- --------------------------------------------------------

--
-- Table structure for table `gift_flower`
--

CREATE TABLE `gift_flower` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `pdes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gift_flower`
--

INSERT INTO `gift_flower` (`id`, `pname`, `pprice`, `pimage`, `pdes`) VALUES
(1, 'Flower1', 200, 'https://topsapi.000webhostapp.com/gift_shop_project/images/f1.jpg', 'Flower Products1'),
(2, 'Flower2', 100, 'https://topsapi.000webhostapp.com/gift_shop_project/images/f2.jpg', 'Flower Products2');

-- --------------------------------------------------------

--
-- Table structure for table `gift_shop_category`
--

CREATE TABLE `gift_shop_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gift_shop_category`
--

INSERT INTO `gift_shop_category` (`id`, `category_name`, `category_img`) VALUES
(1, 'Chocolates', 'https://topsapi.000webhostapp.com/gift_shop_project/images/chocolates.jpg'),
(2, 'Flowers', 'https://topsapi.000webhostapp.com/gift_shop_project/images/flowers.jpg'),
(3, 'a', 'https://topsapi.000webhostapp.com/gift_shop_project/images/chocolates.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gift_shop_signup`
--

CREATE TABLE `gift_shop_signup` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gift_shop_signup`
--

INSERT INTO `gift_shop_signup` (`id`, `fname`, `lname`, `gender`, `email`, `phone`, `password`) VALUES
(1, 'a', 'a', 'Male', 'a', '1', 'a'),
(2, 'Harshida', 'Ganatra', 'Female', 'haganatra25@gmail.com', '+919327100525', '12345'),
(3, 'Harshida', 'Ganatra', 'Female', 'haganatra25@gmail.com', '+919327100525', '12345'),
(4, '+917069793454', 'jagani', 'Male', 'smjagani6585@gmail.com', '+917069793454', '1234'),
(5, '', '', '', 'smjagani6585@gmail.com', '', ''),
(6, '', '', '', 'smjagani6585@gmail.com', '', ''),
(7, 'a', 'a', 'Male', 'a@gmail.com', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_mobile` varchar(255) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_pass` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `emp_name`, `emp_mobile`, `emp_email`, `emp_pass`, `img`) VALUES
(3, 'a', '1', 'a', '1', 'https://topsapi.000webhostapp.com/serverimage/image/a.png'),
(4, 'milan', 'milan', 'milan', 'milan', 'https://topsapi.000webhostapp.com/serverimage/image/milan.png'),
(5, 'milan ', '9099972756', 'nimavatmilan155@gmail.com', '12345', 'https://topsapi.000webhostapp.com/serverimage/image/milan .png'),
(6, 'milan ', '9099972756', 'nimavatmilan155@gmail.com', '12345', 'https://topsapi.000webhostapp.com/serverimage/image/milan .png'),
(7, 'hiy', '21', 'a', '123', 'https://topsapi.000webhostapp.com/serverimage/image/hiy.png'),
(8, 'hiy', '21', 'a', '123', 'https://topsapi.000webhostapp.com/serverimage/image/hiy.png'),
(9, '', '', '', '', 'https://topsapi.000webhostapp.com/serverimage/image/.'),
(10, 'fd', 'hfd', 'jgf', 'je', 'https://topsapi.000webhostapp.com/serverimage/image/fd.png'),
(11, '', '', '', '', 'https://topsapi.000webhostapp.com/serverimage/image/.'),
(12, '', '', '', '', 'https://topsapi.000webhostapp.com/serverimage/image/.'),
(13, '', '', '', '', 'https://topsapi.000webhostapp.com/serverimage/image/.'),
(14, '', '', '', '', 'https://topsapi.000webhostapp.com/serverimage/image/.');

-- --------------------------------------------------------

--
-- Table structure for table `info2`
--

CREATE TABLE `info2` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info2`
--

INSERT INTO `info2` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'bansi', 'xyz', 'bansi@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`id`, `p_name`, `p_price`) VALUES
(2, 'samsung s10', '15000'),
(3, 'mobile', '100000'),
(4, 'oneplus', '26000');

-- --------------------------------------------------------

--
-- Table structure for table `Registration`
--

CREATE TABLE `Registration` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Registration`
--

INSERT INTO `Registration` (`id`, `username`, `password`, `mobile_no`, `confirm_password`, `identifier`) VALUES
(1, 'a', 'a', '9275003605', 'a', 'User'),
(2, 'bansi', '1', '1', '1', 'User'),
(3, 'bansi', '1234', '9913481971', '1234', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fname`, `lname`, `email`, `pass`) VALUES
(1, 'nikhil', 'xyz', 'n@gmail.com', '1'),
(2, 'suzan', 'jam', 's@gmail.com', '123456'),
(3, 'suzan', 'jam', 's@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_gift`
--

CREATE TABLE `wishlist_gift` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pprice` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `pdes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_gift`
--
ALTER TABLE `cart_gift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Category_Images`
--
ALTER TABLE `Category_Images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `cricket`
--
ALTER TABLE `cricket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_category`
--
ALTER TABLE `gift_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_category_images`
--
ALTER TABLE `gift_category_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `gift_chocolate`
--
ALTER TABLE `gift_chocolate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_flower`
--
ALTER TABLE `gift_flower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_shop_category`
--
ALTER TABLE `gift_shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_shop_signup`
--
ALTER TABLE `gift_shop_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info2`
--
ALTER TABLE `info2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Registration`
--
ALTER TABLE `Registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist_gift`
--
ALTER TABLE `wishlist_gift`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart_gift`
--
ALTER TABLE `cart_gift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Category_Images`
--
ALTER TABLE `Category_Images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cricket`
--
ALTER TABLE `cricket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_category`
--
ALTER TABLE `gift_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gift_category_images`
--
ALTER TABLE `gift_category_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gift_chocolate`
--
ALTER TABLE `gift_chocolate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gift_flower`
--
ALTER TABLE `gift_flower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gift_shop_category`
--
ALTER TABLE `gift_shop_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gift_shop_signup`
--
ALTER TABLE `gift_shop_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `info2`
--
ALTER TABLE `info2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Registration`
--
ALTER TABLE `Registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist_gift`
--
ALTER TABLE `wishlist_gift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
