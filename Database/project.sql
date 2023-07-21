-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 28, 2022 at 07:11 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodmenu`
--

DROP TABLE IF EXISTS `foodmenu`;
CREATE TABLE IF NOT EXISTS `foodmenu` (
  `fno` int(5) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`fno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodmenu`
--

INSERT INTO `foodmenu` (`fno`, `fname`, `price`) VALUES
(4, 'Chicken Rice', 400),
(5, 'Chicken Kottu', 550),
(3, 'Egg Rice', 250),
(2, 'Fish Rice', 300),
(1, 'Fried Rice', 450),
(6, 'Egg Kottu', 350),
(7, 'Seafood Rice', 600),
(8, 'Mixed Rice', 650),
(9, 'Chicken Biriyani', 650),
(10, 'Mutton Biriyani', 700),
(11, 'Ice Cream Kottu', 500),
(12, 'Spaghetti', 800),
(13, 'Chicken Devilled', 900),
(14, 'Vegetable Chopsuey', 600),
(15, 'Chicken Chopsuey', 800),
(16, 'Fried Noodles', 550);

-- --------------------------------------------------------

--
-- Table structure for table `foodorder`
--

DROP TABLE IF EXISTS `foodorder`;
CREATE TABLE IF NOT EXISTS `foodorder` (
  `ono` int(11) NOT NULL,
  `foodname` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  PRIMARY KEY (`ono`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`ono`, `foodname`, `price`, `quantity`, `totalprice`) VALUES
(1, 'Chicken Kottu', 550, 2, 1100),
(2, 'Fish Rice', 300, 2, 600),
(3, 'Fried Noodles', 550, 3, 1650),
(4, 'Mutton Biriyani', 700, 1, 700),
(5, 'Seafood Rice', 600, 2, 1200),
(6, 'Spaghetti', 800, 1, 800),
(7, 'Chicken Biriyani', 650, 2, 1300),
(8, 'Fried Rice', 450, 3, 1350),
(9, 'Ice Cream Kottu', 500, 2, 1000),
(10, 'Fried Noodles', 550, 2, 1100);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
