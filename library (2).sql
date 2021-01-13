-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 05:16 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `addbook`
--

CREATE TABLE `addbook` (
  `bid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `b_code` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `book_type` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `price` double(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addbook`
--

INSERT INTO `addbook` (`bid`, `name`, `b_code`, `date`, `category`, `book_type`, `publisher`, `price`) VALUES
('1', 'txt', 'vtbt', '453', 'Labguage', 'Read Only', 'tre', 654.00);

-- --------------------------------------------------------

--
-- Table structure for table `addmember`
--

CREATE TABLE `addmember` (
  `mid` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `nic` varchar(200) NOT NULL,
  `birthday` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contac` int(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addmember`
--

INSERT INTO `addmember` (`mid`, `name`, `nic`, `birthday`, `gender`, `address`, `email`, `contac`, `type`) VALUES
('1', 'shadhin', '566', '45454', 'Male', '46/b', 'ghshsh', 15262, 'Student'),
('2', 'monzur', '263', '2/3/17', 'Male', 'we23', 'w@gsh', 10282, 'Other'),
('3', 'alu', '676', '4/6/1997', 'Male', 'malibag', 'alu@2525', 282, 'Student'),
('5', 'shadhin1', '3', '5/5/5', 'Male', 'rrr', 'wer', 1772829, 'Student'),
('13', 'futu', 'we', '23/23', 'Male', '23d', '34343', 1212, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `booklend`
--

CREATE TABLE `booklend` (
  `record_no` varchar(50) NOT NULL,
  `mid` varchar(50) NOT NULL,
  `bid` varchar(50) NOT NULL,
  `i_date` varchar(50) NOT NULL,
  `r_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booklend`
--

INSERT INTO `booklend` (`record_no`, `mid`, `bid`, `i_date`, `r_date`) VALUES
('1', '1', '1', '2019-03-24', '2019-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `bookreturn`
--

CREATE TABLE `bookreturn` (
  `tid` int(10) NOT NULL,
  `bid` varchar(50) DEFAULT NULL,
  `mid` varchar(50) DEFAULT NULL,
  `late_days` varchar(50) DEFAULT NULL,
  `fine` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookreturn`
--

INSERT INTO `bookreturn` (`tid`, `bid`, `mid`, `late_days`, `fine`) VALUES
(1, '1', '1', '0', '0'),
(2, '1', '1', '0', '0'),
(3, '1', '1', '0', '0'),
(4, '1', '1', '0', '0'),
(5, '1', '1', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookreturn`
--
ALTER TABLE `bookreturn`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookreturn`
--
ALTER TABLE `bookreturn`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
