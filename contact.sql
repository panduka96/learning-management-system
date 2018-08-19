-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2018 at 08:53 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `st_id` varchar(25) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `comment` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`st_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
('111', 'aaa', 'ddd', 'xxx', 'ccc'),
('122', 'lol', 'lol', 'lol', 'lol'),
('1234', 'pandu', 'soo', 'qwer', 'goooooooood'),
('12345', 'pop', 'lol', 'qqq', 'ffff'),
('aaaaa', 'aaaaa', 'aaaa', 'aaaa', 'aaaa'),
('bsc-ucd-csc-16.2-028', 'panduka', 'wijekoon', 'wijekoonpremio@gmail.com', 'hello world'),
('ded', 'ded', 'ded', 'ded', 'ded'),
('ede', 'frf', '4t', '4tg', '4tg'),
('qqqq', 'qqqqqq', 'qqqq', 'qqqq', 'qqqq'),
('rtrtr', '5yb', '5yb', '5tb', '5tb'),
('werwf', 'wfwrg', 'wfwr', 'wefwrwfg', 'wr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`st_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
