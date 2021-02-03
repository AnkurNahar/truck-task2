-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 11:43 AM
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
-- Database: `truck_task2`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `joinDate` date NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `firstName`, `lastName`, `joinDate`, `age`) VALUES
(1, 'Ankur', 'Nahar', '2021-02-01', 28),
(2, 'Rakibul', 'Hasan', '2021-01-31', 26),
(3, 'Nila', 'Nilnil', '2021-01-13', 25),
(4, 'Dhaka', 'Mafia', '2021-02-09', 30),
(5, 'Pizza', 'Guy', '2021-01-29', 20),
(6, 'Chana', 'Chur', '2021-01-01', 35),
(7, 'Tic', 'Tac', '2020-12-31', 30),
(8, 'Rahrah', 'Rusputine', '2021-02-01', 30);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `sal` double DEFAULT NULL,
  `lastIncDate` date DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`sal`, `lastIncDate`, `employeeID`) VALUES
(30000, '2021-02-01', 1),
(50000, '2020-12-31', 5),
(25000, '2021-01-21', 3),
(32000, '2021-01-29', 2),
(60000, '2020-11-01', 4),
(40000, '2021-01-30', 6),
(50000, '2021-01-30', 7),
(30000, '2021-02-01', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD KEY `employeeID` (`employeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
