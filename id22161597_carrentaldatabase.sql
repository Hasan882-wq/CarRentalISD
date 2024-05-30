-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2024 at 10:10 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22161597_carrentaldatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `ID` decimal(5,0) NOT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Phone` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`ID`, `Name`, `Email`, `Phone`) VALUES
(40505, 'Hasan', 'hasanhammoud.x.1234@gmail.com', 81808401),
(77525, 'Hasan', 'hasanhammoud.x.1234@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Black_List`
--

CREATE TABLE `Black_List` (
  `ID` decimal(5,0) NOT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `CID` decimal(5,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Car`
--

CREATE TABLE `Car` (
  `ID` decimal(6,0) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Description` varchar(1500) DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Price` decimal(5,0) DEFAULT NULL,
  `Image1` varchar(255) DEFAULT NULL,
  `Image2` varchar(255) DEFAULT NULL,
  `Image3` varchar(255) DEFAULT NULL,
  `Image4` varchar(255) DEFAULT NULL,
  `Image5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Car`
--

INSERT INTO `Car` (`ID`, `Name`, `Description`, `Color`, `Price`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`) VALUES
(18815, 'MERCEDES GLC', '300\n4matic\n2016', 'White/Black', 70, '6647dfdf77cff_Mercedes-GLC.jpg', '6647dfe096ff0_Mercedes-GLC1.jpg', '6647dfe3d18ef_Mercedes-GLC2.jpg', '6647dfe772b55_Mercedes-GLC3.jpg', '6647dfe8cba37_Mercedes-GLC4.jpg'),
(48756, 'Mercedes Benz', 'C 400\n2015\n4-Matci', 'Black/Black', 90, '6647ce055b51b_Mercedes1.jpg', '6647ce05bb38e_Mercedes2.jpg', '6647ce062f210_Mercedes3.jpg', '6647ce066967c_Mercedes4.jpg', NULL),
(102325, 'Range Rover SVR 2019', 'CARBON FIBER EDITION\r\nExperience the epitome of performance and sophistication in our 2019 Range Rover SVR Carbon Fiber Edition, blending pristine white with bold black accents. ', 'White/Black', 200, 'SVR.jpg', 'SVR1.jpg', 'SVR2.jpg', 'SVR3.jpg', 'SVR4.jpg'),
(402122, 'JAGUAR F-PACE ', '35T PREMIUM 2017\nSADCJ2BV1HA072320\nSHIPPED FROM USA', 'White/Black', 150, 'Jaguar-F.jpg', 'Jaguar-F-2.jpg', 'Jaguar-F-3.jpg', 'Jaguar-F-4.jpg', 'Jaguar-F-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Credentials`
--

CREATE TABLE `Credentials` (
  `ID` decimal(5,0) NOT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Credentials`
--

INSERT INTO `Credentials` (`ID`, `Password`, `user_type`) VALUES
(19300, 'Nadinee.81', 0),
(40505, 'Hammoudd@81$', 1),
(41699, 'Hammoudd@71$', 0),
(77525, 'Hammoud@71$', 1),
(77955, 'Hammoudd@81$', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `ID` decimal(5,0) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `phone` decimal(8,0) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`ID`, `Email`, `phone`, `Name`) VALUES
(19300, 'nadinehussein@gmail.com', 81545528, 'Nadine'),
(41699, 'hasanhammoud.x.888@gmail.com', 71146714, 'Hasan'),
(77955, 'hasanhammoud.x.444@gmail.com', 81520053, 'Ahmad');

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE `News` (
  `ID` decimal(5,0) NOT NULL,
  `Title` varchar(20) DEFAULT NULL,
  `News` varchar(1500) DEFAULT NULL,
  `IMG` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `News`
--

INSERT INTO `News` (`ID`, `Title`, `News`, `IMG`) VALUES
(58616, 'New Car!!!', 'Check out our new SUV Mercedes GLC 400 2016 . A new car just arrived and available for rent be the first to ride this amazing car for only 70$', 'Mercedes-GLC.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Out_Of_Order`
--

CREATE TABLE `Out_Of_Order` (
  `ID` decimal(6,0) NOT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `CID` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pending`
--

CREATE TABLE `Pending` (
  `ID` decimal(6,0) NOT NULL,
  `Days` decimal(3,0) DEFAULT NULL,
  `Price` int(4) NOT NULL,
  `CID` decimal(5,0) DEFAULT NULL,
  `RID` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Reservation`
--

CREATE TABLE `Reservation` (
  `Id` decimal(6,0) NOT NULL,
  `Days` decimal(3,0) DEFAULT NULL,
  `Price` decimal(4,0) DEFAULT NULL,
  `RID` decimal(6,0) DEFAULT NULL,
  `CID` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Reservation_History`
--

CREATE TABLE `Reservation_History` (
  `ID` decimal(6,0) NOT NULL,
  `Days` decimal(3,0) NOT NULL,
  `Price` decimal(4,0) NOT NULL,
  `CID` decimal(6,0) NOT NULL,
  `RID` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Reservation_History`
--

INSERT INTO `Reservation_History` (`ID`, `Days`, `Price`, `CID`, `RID`) VALUES
(99408, 10, 2000, 41699, 102325),
(315135, 10, 2000, 41699, 102325),
(344507, 15, 2000, 41699, 402122),
(457015, 5, 600, 19300, 402122),
(658851, 20, 1400, 41699, 18815),
(676242, 20, 1400, 41699, 18815),
(906985, 20, 1800, 41699, 48756),
(909362, 10, 500, 41699, 18815);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Black_List`
--
ALTER TABLE `Black_List`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `Car`
--
ALTER TABLE `Car`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Credentials`
--
ALTER TABLE `Credentials`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Out_Of_Order`
--
ALTER TABLE `Out_Of_Order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `Pending`
--
ALTER TABLE `Pending`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CID` (`CID`),
  ADD KEY `RID` (`RID`);

--
-- Indexes for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CID` (`RID`),
  ADD KEY `RID` (`CID`);

--
-- Indexes for table `Reservation_History`
--
ALTER TABLE `Reservation_History`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CID` (`CID`,`RID`),
  ADD KEY `RID` (`RID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Black_List`
--
ALTER TABLE `Black_List`
  ADD CONSTRAINT `Black_List_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `Customer` (`ID`);

--
-- Constraints for table `Out_Of_Order`
--
ALTER TABLE `Out_Of_Order`
  ADD CONSTRAINT `Out_Of_Order_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `Car` (`ID`);

--
-- Constraints for table `Pending`
--
ALTER TABLE `Pending`
  ADD CONSTRAINT `Pending_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `Customer` (`ID`),
  ADD CONSTRAINT `Pending_ibfk_2` FOREIGN KEY (`RID`) REFERENCES `Car` (`ID`);

--
-- Constraints for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD CONSTRAINT `Reservation_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `Car` (`ID`),
  ADD CONSTRAINT `Reservation_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `Customer` (`ID`);

--
-- Constraints for table `Reservation_History`
--
ALTER TABLE `Reservation_History`
  ADD CONSTRAINT `Reservation_History_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `Customer` (`ID`),
  ADD CONSTRAINT `Reservation_History_ibfk_2` FOREIGN KEY (`RID`) REFERENCES `Car` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
