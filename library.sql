-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2022 at 09:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`) VALUES
(1, 'Ocean', 'Master', 'Aquaman', 'DCCC3', 'dc@gmail.com', '01712798410', 'im3.jpg'),
(2, 'Dhru', 'FAI', 'Haque', '7777', 'md@gmail.com', '123', 'im3.jpg'),
(3, 'ccdc', 'cdcd', 'dcdc', 'cddc', 'dcdcd', '165165', ''),
(4, 'sxsx', 'xxd', 'cdcd', 'cdcd', 'dcdcd', 'dcdcdc', 'D.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`) VALUES
(1, 'princi', 'olala', '7th', 'hehe, haha', 10, 'hum tumare kon hae'),
(575, 'fegfgfg', 'fggfg,htgr', 'vg', 'rgg', 24, 'fbfgf'),
(5555, 'gdgdfg', 'ghfgh', '78', 'available ', 45, 'ece');

-- --------------------------------------------------------

--
-- Table structure for table `cmnts`
--

CREATE TABLE `cmnts` (
  `id` int(100) NOT NULL,
  `comment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cmnts`
--

INSERT INTO `cmnts` (`id`, `comment`) VALUES
(1, 'hi'),
(2, 'Allah'),
(3, 'Allah'),
(4, 'Allah'),
(5, 'Dhrubo'),
(6, 'dhrubo tui ekta chagol.'),
(7, 'dhrubo tui ekta chagol.'),
(8, 'this website sucks'),
(9, 'ha ha ha'),
(10, 'ha ha ha'),
(11, 'ha ha ha');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` int(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `username`, `password`, `roll`, `email`, `contact`, `pic`) VALUES
('a', 'b', 'c', 'ddd', 25, 'abcd@gmail.com', 23145, 'im3.jpg'),
('ss', 'sd', 's', '222', 45545, 'dwdd@gmail.com', 12, 'im3.jpg'),
('ss', 'sd', 's', '222', 45545, 'dwdd@gmail.com', 12, 'im3.jpg'),
('c', 'cd', 'ddd', 'cfrf', 2515, 'fhh@gmail.com', 548545, 'im3.jpg'),
('dds', 'fff', 'fsfffefe', 'fefege', 2514, 'ddj@gmail.com', 5454545, 'im3.jpg'),
('A.F.H', 'Dhrubo', 'Dhrubo', '1010', 2111026042, 'ahmed.dhrubo@northsouth.edu ', 1978870939, 'im3.jpg'),
('fahmida akand', 'nourin', 'Nourin', '212', 2031754, 'hdhferhf.@ gmail.com', 45567389, 'im3.jpg'),
('Faiza ', 'Benzir', 'Faiza24', 'faiza24', 2031740642, 'faiza.benzir24gmail.com', 65376763, 'im3.jpg'),
('abc', 'abc', 'abc', 'abc', 0, 'abc', 0, 'im3.jpg'),
('Monowara', 'Meem', 'meem', '2002', 556, 'dfs@gmail.com', 5525, ''),
('DEVIL', 'MONSTER', 'DEVIL', '1010', 5252, 'nfvd@gmail.com', 5285, '5.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmnts`
--
ALTER TABLE `cmnts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cmnts`
--
ALTER TABLE `cmnts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
