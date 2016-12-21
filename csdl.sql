-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2016 at 10:55 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csdl`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `role` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Username`, `pass`, `fullname`, `role`, `image`, `email`) VALUES
(1, 'HieuLV', '123456', 'Ly Van Hieu', 0, '', '13520269@gm.uit.edu.vn');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Price` float NOT NULL,
  `Category` varchar(20) NOT NULL,
  `ImageUrl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `ProductName`, `Price`, `Category`, `ImageUrl`) VALUES
(1, 'Giày 1', 100000, 'Giay the thao 1', '\nimages/shoes-1.png'),
(2, 'Giày 2', 200000, 'Giay the thao 2', 'images/shoes-2.png'),
(3, 'Giày 3', 300000, 'Giay the thao 3', 'images/shoes-3.png'),
(4, 'Giày 4', 400000, 'Giay the thao 4', 'images/shoes-15.png'),
(5, 'Giày 5', 500000, 'Giay the thao 5', 'images/shoes-5.png'),
(6, 'Giày 6', 600000, 'Giay the thao 6', 'images/shoes-6.png'),
(7, 'Giày 7', 700000, 'Giay the thao 7', 'images/shoes-7.png'),
(8, 'Giày 8', 800000, 'Giay the thao 8', 'images/shoes-8.png'),
(9, 'Giày 9', 900000, 'Giay the thao 9', 'images/shoes-9.png'),
(10, 'Giày 10', 1000000, 'Giay the thao 10', 'images/shoes-10.png'),
(11, 'Giày 11', 1100000, 'Giay the thao 11', 'images/shoes-11.png'),
(12, 'Giày 12', 1200000, 'Giay the thao 12', 'images/shoes-12.png'),
(13, 'Giày 13', 1300000, 'Giay the thao 13', 'images/shoes-1.png\n'),
(14, 'Giày 14', 100000, 'Giay the thao 14', 'images/shoes-1.png'),
(15, 'Giày 15', 100000, 'Giay the thao 15', 'images/shoes-1.png'),
(16, 'Giày 16', 100000, 'Giay the thao 16', 'images/shoes-1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
