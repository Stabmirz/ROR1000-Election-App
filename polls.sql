-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2018 at 05:46 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polls`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `program` enum('web','cna','cyb','') NOT NULL,
  `platform` varchar(200) NOT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `program`, `platform`, `inserted`) VALUES
(1027, 'Gabriel', 'web', 'get new chairs\r\nmandate hairstyle', '2018-12-20 03:14:20'),
(1234567, 'Kat', 'web', 'lksdnaslkdnsald sa csa\r\nsa;asmd;asda', '2018-12-20 03:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `studentid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`studentid`, `name`) VALUES
(89, 'abi'),
(90, 'abi'),
(91, 'a'),
(92, 'a'),
(93, 'a'),
(94, 'a'),
(95, 's'),
(96, 'a'),
(97, 'a'),
(98, 'a'),
(100, 'g'),
(101, 'a'),
(107, 'a'),
(108, 'a'),
(109, 'g'),
(110, 'g'),
(111, 'a'),
(112, 'q'),
(114, 'a'),
(115, 'q'),
(201, 'd'),
(202, 'c'),
(203, 'd'),
(204, 'c'),
(777, 'Brian'),
(901, 'a'),
(902, 'a'),
(903, 'g'),
(904, 'h'),
(905, 'k'),
(911, 'Lisset'),
(1027, 'Gabriel'),
(2011, 'Randy'),
(5363, 'Jawad, Nijhum'),
(5427, 'Zakia'),
(7242, 'Ashrafi, Rasif M.'),
(9001, 'Abi'),
(1234567, 'Kat');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `studentid` int(11) NOT NULL,
  `cantidateid` int(11) NOT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`studentid`, `cantidateid`, `inserted`) VALUES
(100, 1234567, '2018-12-22 13:08:02'),
(101, 1027, '2018-12-22 15:03:01'),
(111, 1234567, '2018-12-22 15:03:43'),
(112, 1234567, '2018-12-22 13:07:34'),
(115, 1027, '2018-12-22 15:28:06'),
(777, 1027, '2018-12-22 15:35:41'),
(911, 1234567, '2018-12-22 15:35:50'),
(1027, 1234567, '2018-12-22 15:27:43'),
(5363, 1234567, '2018-12-22 16:43:00'),
(5427, 1027, '2018-12-22 16:41:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`studentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234568;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
