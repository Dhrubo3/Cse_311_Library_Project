-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 10:27 AM
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
(1, 'Ocean', 'Master', 'Aquaman', 'D33', 'dc@gmail.com', '01712798410', 'devil.png'),
(2, 'Dhru', 'FAI', 'Haque', '7777', 'md@gmail.com', '123', '5.png'),
(3, 'ccdc', 'cdcd', 'dcdc', 'cddc', 'dcdcd', '165165', '5.png'),
(4, 'sxsx', 'xxd', 'cdcd', 'cdcd', 'dcdcd', 'dcdcdc', '5.png'),
(5, 'AFH', 'DHRUBO', 'DEVIL', '123', 'dwdw@gmai.com', '456', '5.png'),
(6, 'Ahmed', 'Haque ', 'Faizul', '3333', 'dnsdn@gmail.com', '546515', '212.png');

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
(5555, 'gdgdfg', 'ghfgh', '78', 'available ', 44, 'ece'),
(20122, 'cdfd', 'cdc', '7tj', 'cdc', -1, 'dcdc'),
(555, 'fvf', 'vfv', 'fffv', 'v', 88, 'fv');

-- --------------------------------------------------------

--
-- Table structure for table `cmnts`
--

CREATE TABLE `cmnts` (
  `id` int(100) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cmnts`
--

INSERT INTO `cmnts` (`id`, `comment`, `username`) VALUES
(1, 'hi', ''),
(2, 'Allah', ''),
(3, 'Allah', ''),
(4, 'Allah', ''),
(5, 'Dhrubo', ''),
(6, 'dhrubo tui ekta chagol.', ''),
(7, 'dhrubo tui ekta chagol.', ''),
(8, 'this website sucks', ''),
(9, 'ha ha ha', ''),
(10, 'ha ha ha', ''),
(11, 'ha ha ha', ''),
(12, 'Hey', 'Admin'),
(13, 'Hey', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `returned` varchar(100) NOT NULL,
  `day` int(50) NOT NULL,
  `fine` double NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`username`, `bid`, `returned`, `day`, `fine`, `status`) VALUES
('Dhrubo', 555, '2022-08-28', 77, 7.7, 'not paid');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('Dhrubo', 0, '', '', ''),
('', 0, '', '', ''),
('', 0, '', '', ''),
('', 0, '', '', ''),
('Nourin', 0, '', '', ''),
('Nourin', 0, '', '', ''),
('Nourin', 0, '', '', ''),
('Nourin', 0, '', '', ''),
('Nourin', 0, '', '', ''),
('Nourin', 0, '', '', ''),
('Nourin', 0, '', '', ''),
('Dhrubo', 555, '<p style=\"color:yellow;background-color:green;\">Returned</p>', '2022-04-28', '2022-06-12'),
('Dhrubo', 555, '<p style=\"color:yellow;background-color:green;\">Returned</p>', '2022-04-28', '2022-06-12'),
('Nourin', 20122, 'Yes', '22-08-25', '22-08-29'),
('meem', 5555, 'Yes', '2022-01-30', '2022-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sender` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `username`, `message`, `status`, `sender`) VALUES
(1, 'Dhrubo', 'yoo', 'yes', 'student'),
(2, 'Dhrubo', 'yoo', 'yes', 'student'),
(3, 'Dhrubo', 'lalalalala', 'yes', 'student'),
(4, 'Dhrubo', 'lalalalala', 'yes', 'student'),
(5, 'Dhrubo', 'yoooooo', 'yes', 'Admin'),
(6, 'Dhrubo', 'who are you', 'yes', 'admin'),
(7, 'Dhrubo', 'yoo', 'no', 'admin'),
(8, 'Dhrubo', 'hii', 'no', 'admin'),
(9, 'Dhrubo', 'hhhh', 'no', 'admin');

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
('a', 'b', 'c', 'ddd', 25, 'abcd@gmail.com', 23145, '5.png'),
('ss', 'sd', 's', '222', 45545, 'dwdd@gmail.com', 12, '5.png'),
('ss', 'sd', 's', '222', 45545, 'dwdd@gmail.com', 12, '5.png'),
('c', 'cd', 'ddd', 'cfrf', 2515, 'fhh@gmail.com', 548545, '5.png'),
('dds', 'fff', 'fsfffefe', 'fefege', 2514, 'ddj@gmail.com', 5454545, '5.png'),
('A.F.H', 'Dhrubo', 'Dhrubo', '1010', 2111026042, 'ahmed.dhrubo@northsouth.edu ', 1978870939, 'received_145432607756363.jpeg'),
('fahmida akand', 'nourin', 'Nourin', '212', 2031754, 'hdhferhf.@ gmail.com', 45567389, '5.png'),
('Faiza ', 'Benzir', 'Faiza24', 'faiza24', 2031740642, 'faiza.benzir24gmail.com', 65376763, '5.png'),
('abc', 'abc', 'abc', 'abc', 0, 'abc', 0, '5.png'),
('Monowara', 'Meem', 'meem', '2002', 556, 'dfs@gmail.com', 5525, '5.png'),
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
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cmnts`
--
ALTER TABLE `cmnts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
