-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2024 at 11:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `password`) VALUES
('admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `vid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` varchar(10) NOT NULL,
  `party` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`vid`, `name`, `age`, `party`, `logo`, `password`, `status`, `region`) VALUES
(1, 'Mousumi', '44', 'RBD', '1download.png', '123', 0, 'khardaha'),
(14789, 'Vikrant Banerjee', '21', 'GYM', '14789best-gyms-in-singapore-Andrea-Piacquadio-via-', 'vik@123', 1, 'Naihati'),
(109001, 'Mamata Banerjee', '65', 'TMC', '109001tmc.png', '123', 1, 'khardaha'),
(109002, 'Subho Das', '30', 'CPIM', '115002cpim.png', '123', 1, 'khardaha'),
(115001, 'Somnath Shyam', '49', 'TMC', '115001tmc.png', '123', 1, 'Shyamnagar'),
(115002, 'Jayanta Saha', '65', 'CPIM', '115002cpim.png', '123', 1, 'Shyamnagar'),
(202020, 'Vikrant', '20', 'ABCD', '202020Screenshot (1).png', '123', 1, 'Naihati'),
(202306, 'Avirup C', '21', 'Mark', '202306mark-logo.jpg', 'Avi@123', 1, 'Uttarpara'),
(202328, 'Sagar Das', '22', 'Alice', '202328alice-logo.png', 'Sag@123', 1, 'Uttarpara'),
(202374, 'Subhratanu Saha', '23', 'Apna', '202374aboodi-vesakaran--PO0wm3Rrig-unsplash.jpg', '123', 1, 'khardah');

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `id` int(11) NOT NULL,
  `party` varchar(50) NOT NULL,
  `counter` int(11) NOT NULL,
  `region` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `count`
--

INSERT INTO `count` (`id`, `party`, `counter`, `region`, `flag`) VALUES
(14, 'TMC', 2, 'khardaha', 1),
(15, 'CPIM', 2, 'khardaha', 1),
(16, 'TMC', 2, 'Shyamnagar', 1),
(17, 'CPIM', 1, 'Shyamnagar', 0),
(18, 'RBD', 0, 'khardaha', 0),
(19, 'ABCD', 1, 'Naihati', 1),
(20, 'GYM', 1, 'Naihati', 1),
(21, 'Apna', 1, 'khardah', 1),
(22, 'Mark', 2, 'Uttarpara', 1),
(23, 'Alice', 1, 'Uttarpara', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `vid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `region` varchar(20) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`vid`, `fname`, `password`, `status`, `region`, `pic`) VALUES
(7474, 'Sneha S', 's@123', 0, 'Naihati', '7474WhatsApp Image 2022-05-25 at 7.29.11 PM.jpeg'),
(55665, 'Kapo Biswas', 'kap@123', 1, 'Naihati', '55665MY_PIC - Kapataksha Biswas.jpg'),
(109003, 'Subhratanu Saha', '123', 1, 'khardaha', '109003WhatsApp Image 2021-03-16 at 12.53.30 AM.jpeg'),
(109004, 'Debjani Saha', '123', 1, 'khardaha', '109004163571855_1400636633607836_862540227063500484_n.jpg'),
(109006, 'Subrata Kumar Saha', '123', 1, 'khardaha', '10900674662465_2390434971274652_7299596944492462080_n.jpg'),
(202021, 'Sneha', '123', 1, 'Naihati', '202021Screenshot (3).png'),
(202302, 'Aditi N', 'Adi@123', 1, 'Uttarpara', '202302aditi.jpg'),
(202308, 'Rajdip Saha', 'raj123', 1, 'khardah', '202308WhatsApp Image 2023-05-28 at 6.08.54 PM.jpeg'),
(202312, 'Krishnendu M', 'Kri@123', 1, 'Uttarpara', '202312krishnendu.jpg'),
(202317, 'Papiya Paul', 'Pap@123', 1, 'Uttarpara', '202317papipiy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `voter-count`
--

CREATE TABLE `voter-count` (
  `id` int(11) NOT NULL,
  `region` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter-count`
--

INSERT INTO `voter-count` (`id`, `region`, `count`) VALUES
(4, 'khardaha', 3),
(5, 'Shyamnagar', 3),
(6, 'Naihati', 3),
(7, 'khardah', 1),
(8, 'Uttarpara', 3);

-- --------------------------------------------------------

--
-- Table structure for table `voting-count`
--

CREATE TABLE `voting-count` (
  `id` int(11) NOT NULL,
  `region` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting-count`
--

INSERT INTO `voting-count` (`id`, `region`, `count`) VALUES
(4, 'khardaha', 4),
(5, 'Shyamnagar', 3),
(6, 'Naihati', 2),
(7, 'khardah', 1),
(8, 'Uttarpara', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `count`
--
ALTER TABLE `count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `voter-count`
--
ALTER TABLE `voter-count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting-count`
--
ALTER TABLE `voting-count`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `count`
--
ALTER TABLE `count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `voter-count`
--
ALTER TABLE `voter-count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `voting-count`
--
ALTER TABLE `voting-count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
