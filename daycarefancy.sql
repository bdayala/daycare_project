-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2017 at 03:24 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `daycare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE IF NOT EXISTS `child` (
  `parent_SSN` varchar(9) NOT NULL,
  `child_SSN` varchar(9) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`parent_SSN`, `child_SSN`, `firstName`, `lastName`, `DOB`, `address`) VALUES
('123123123', '456456456', 'Micheal', 'Garcia', '2010-02-20', '1234 Triangle Dr.'),
('123123123', '456585811', 'Jackie', 'Garcia', '2010-02-14', '1234 Triangle Dr.'),
('456456888', '456784555', 'Wendy', 'Hurta', '2008-01-12', '1487 University Dr.'),
('456456990', '458548744', 'Olivia', 'Reyes', '2003-02-10', '9998 Chicago St.'),
('456456888', '701215481', 'William', 'Hurta', '2014-01-08', '1487 University Dr'),
('121212121', '777777777', 'Alexis', 'Gonzalez', '2012-03-12', '4567 Ring Dr.'),
('123123123', '777777789', 'Jackson', 'Garcia', '2011-06-18', '1234 Triangle Dr.'),
('121212121', '888777125', 'Luis', 'Gonzalez', '2016-05-07', '4567 Ring Dr.'),
('121212121', '989898989', 'Ryan', 'Gonzalez', '2009-09-21', '4567 Ring Dr.'),
('456456990', '999944013', 'Oliver', 'Reyes', '1999-02-02', '9998 Chicago St.');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_SSN` varchar(9) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_SSN`, `firstName`, `lastName`, `phone_number`, `email_address`, `DOB`, `address`) VALUES
('555888777', 'Bianca', 'Ayala', '956-888-1231', 'bianca.ayala01@utrgv.edu', '1996-08-18', '1234 Dragon Rd.'),
('999999999', 'Linda', 'Smith', '956-789-2222', 'lindaSmith@gmail.com', '1985-01-27', '4444 Austin\r\nSt.'),
('888888888', 'Nicole', 'Woods', '956-789-2365', 'NicWoods@gmail.com', '1980-10-03', '7945 Square\r\nRd.');

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE IF NOT EXISTS `medical_history` (
  `parent_SSN` varchar(9) NOT NULL,
  `child_SSN` varchar(9) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `allergies` tinyint(1) DEFAULT NULL,
  `allergy_description` varchar(50) DEFAULT NULL,
  `medicine_name` varchar(50) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_history`
--

INSERT INTO `medical_history` (`parent_SSN`, `child_SSN`, `firstName`, `lastName`, `allergies`, `allergy_description`, `medicine_name`, `time`, `date`) VALUES
('123123123', '456456456', 'Micheal', 'Garcia', 1, 'Allergic to nuts & banana', 'Benadryl', '2017-11-28 19:09:47', '2017-11-28'),
('121212121', '777777777', 'Alexis', 'Gonzalez', 0, 'N/A', 'N/A', '2017-11-28 21:48:05', '2017-11-28'),
('121212121', '888777125', 'Luis', 'Gonzalez', 1, 'Bananas', 'Loratadine', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `owner_ssn` varchar(9) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_ssn`, `firstName`, `lastName`, `email_address`, `phoneNumber`) VALUES
('111111111', 'John', 'Smith', 'Jsmith@gmail.com', '956-123-4567');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `email_address` varchar(50) NOT NULL,
  `parent_SSN` varchar(9) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`email_address`, `parent_SSN`, `firstName`, `lastName`, `DOB`, `phone_number`, `address`) VALUES
('', '', '', '', '0000-00-00', '', ''),
('agonz12@gmail.com', '121212121', 'Alexandra', 'Gonzalez', '2017-05-20', '956-789-2020', '4567 Ring\r\nDr.'),
('alex@gmail.com', '457844571', 'Alexandra', 'Garza', '0000-00-00', '124-457-4587', '55555 Bronco Dr.'),
('kay@gmail.com', '456456888', 'kay', 'hurta', '0000-00-00', '956-487-7788', '1487 University Dr.'),
('mgarcia@gmail.com', '123123123', 'Maria', 'Garcia', '1979-02-17', '956-555-5555', '1234 Triangle\r\nDr.'),
('oreys@gmail.com', '456456990', 'Oscar', 'Reyes', '0000-00-00', '154-568-8989', '9998 Chicago St.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`child_SSN`), ADD UNIQUE KEY `child_SSN` (`child_SSN`), ADD KEY `parent_SSN` (`parent_SSN`), ADD KEY `child_SSN_2` (`child_SSN`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`email_address`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD UNIQUE KEY `child_SSN` (`child_SSN`), ADD KEY `child_SSN_2` (`child_SSN`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_ssn`), ADD UNIQUE KEY `owner_id` (`owner_ssn`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`email_address`), ADD UNIQUE KEY `parent_SSN` (`parent_SSN`), ADD UNIQUE KEY `email_address` (`email_address`), ADD UNIQUE KEY `parent_SSN_3` (`parent_SSN`), ADD KEY `parent_SSN_2` (`parent_SSN`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child`
--
ALTER TABLE `child`
ADD CONSTRAINT `child_ibfk_1` FOREIGN KEY (`parent_SSN`) REFERENCES `parent` (`parent_SSN`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
