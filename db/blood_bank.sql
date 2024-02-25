-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 12:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `AREA_ID` int(11) NOT NULL,
  `CITY_ID` int(11) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  `AREA_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `DONOR_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FATHER_NAME` varchar(150) NOT NULL,
  `GENDER` varchar(150) NOT NULL,
  `DOB` date NOT NULL,
  `BLOOD` varchar(150) NOT NULL,
  `BODY_WEIGHT` int(11) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `ADDRESS` text NOT NULL,
  `AREA` varchar(150) NOT NULL,
  `CITY` varchar(150) NOT NULL,
  `PINCODE` varchar(150) NOT NULL,
  `STATE` varchar(150) NOT NULL,
  `COUNTRY` varchar(150) NOT NULL,
  `CONTACT_1` varchar(150) NOT NULL,
  `CONTACT_2` varchar(150) NOT NULL,
  `VOLUNTARY` text NOT NULL,
  `VOLUNTARY_GROUP` text NOT NULL,
  `NEW_DONOR` varchar(150) NOT NULL,
  `LAST_D_DATE` date NOT NULL,
  `DONOR_PIC` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`DONOR_ID`, `NAME`, `FATHER_NAME`, `GENDER`, `DOB`, `BLOOD`, `BODY_WEIGHT`, `EMAIL`, `ADDRESS`, `AREA`, `CITY`, `PINCODE`, `STATE`, `COUNTRY`, `CONTACT_1`, `CONTACT_2`, `VOLUNTARY`, `VOLUNTARY_GROUP`, `NEW_DONOR`, `LAST_D_DATE`, `DONOR_PIC`, `STATUS`) VALUES
(1, 'rohan sapkota', 'Jayaram Sapkota', 'Male', '2024-02-06', 'A+', 50, 'rohansapkota12345@gmail.com', 'Banepa-5', 'Banepa-5', 'Nepal', '123', 'Nepal', 'Nepal', '9869414106', '9831442122', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/noimage.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CITY_ID` int(11) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  `CITY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CITY_ID`, `STATE_ID`, `CITY_NAME`) VALUES
(75, 62, 'Banepa'),
(76, 62, 'Panauti'),
(77, 62, 'Dhulikhel'),
(78, 62, 'Panchkhal'),
(79, 62, 'Banepa');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`COUNTRY_ID`, `COUNTRY_NAME`) VALUES
(10, 'Nepal');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `CONTACT` text NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `MESSAGE` text NOT NULL,
  `STATUS` text NOT NULL,
  `LOGS` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `NAME`, `CONTACT`, `EMAIL`, `MESSAGE`, `STATUS`, `LOGS`) VALUES
(5, 'Rohan Sapkota', '9869414106', 'rohansapkota12345@gmail.com', 'Update the page\r\n', '1', '2024-02-25 15:23:20'),
(6, 'Thomas', '987772', 'thomas@gmail.com', 'this is blood bank management system', '1', '2024-02-25 15:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `request_blood`
--

CREATE TABLE `request_blood` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `GENDER` varchar(150) NOT NULL,
  `BLOOD` varchar(150) NOT NULL,
  `BUNIT` int(11) NOT NULL,
  `HOSP` text NOT NULL,
  `CITY` varchar(150) NOT NULL,
  `PIN` varchar(150) NOT NULL,
  `DOC` varchar(150) NOT NULL,
  `RDATE` date NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CADDRESS` text NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `CON1` varchar(150) NOT NULL,
  `CON2` varchar(150) NOT NULL,
  `REASON` text NOT NULL,
  `PIC` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `STATE_ID` int(11) NOT NULL,
  `STATE_NAME` varchar(150) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`STATE_ID`, `STATE_NAME`, `COUNTRY_ID`) VALUES
(55, 'Lalitpur', 10),
(56, 'Kaski', 10),
(57, 'Mustang', 10),
(58, 'Sindhuli', 10),
(59, 'Dolakha', 10),
(60, 'Rasuwa', 10),
(61, 'Nuwakot', 10),
(62, 'Kavrepalanchok ', 10),
(63, 'Bhaktapur', 10),
(64, 'Kathmandu', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`AREA_ID`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`DONOR_ID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CITY_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `request_blood`
--
ALTER TABLE `request_blood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`STATE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `AREA_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `DONOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request_blood`
--
ALTER TABLE `request_blood`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `STATE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
