-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 12:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`images`))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `images`) VALUES
(1, '[\"1.jpeg557064.jpeg\",\"3.jpg557064.jpg\",\"alphabets-1839737_1920.jpg557064.jpg\",\"beach-blur-clouds-dawn-462030.jpg557064.jpg\",\"cedar-trees-reflections-along-two-260nw-743524732.jpg557064.jpg\",\"fb.png557064.png\"]'),
(2, '[\"gettyimages-496595467-612x612.jpg292497.jpg\",\"gettyimages-1171714716-612x612.jpg292497.jpg\",\"sun-reflected-lake-finland-260nw-420394765.jpg292497.jpg\",\"vintage-1148940_1920.jpg292497.jpg\",\"wolf.jpg292497.jpg\",\"yipeng-4670043_1280.jpg292497.jpg\"]'),
(3, '[\"FB_IMG_15952022136773152.jpg55135.jpg\",\"FB_IMG_15952024193674186.jpg55135.jpg\",\"FB_IMG_15952024780986205.jpg55135.jpg\",\"gettyimages-587488558-612x612.jpg55135.jpg\",\"gettyimages-1063592260-612x612.jpg55135.jpg\",\"photo-1509087996179-1617607df9a5.jpeg55135.jpeg\",\"photo-1526029655228-b7ee496c7819.jpeg55135.jpeg\"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
