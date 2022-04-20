-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 08:08 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawyer_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `ID` int(11) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `ID` int(11) NOT NULL,
  `Time` time NOT NULL,
  `Venue` varchar(90) NOT NULL,
  `Law_Id` int(11) NOT NULL,
  `Cust_Id` int(11) NOT NULL,
  `Status` enum('Pending','Approved','','') NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `C_ID` int(11) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Contact_No` bigint(20) NOT NULL,
  `C_NIC` varchar(16) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_tb`
--

CREATE TABLE `lawyer_tb` (
  `L_ID` int(11) NOT NULL,
  `Lawyer_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Contact_No` varchar(50) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Avaible_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Image` varchar(500) NOT NULL,
  `Ser_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services_tb`
--

CREATE TABLE `services_tb` (
  `S_ID` int(11) NOT NULL,
  `Services` varchar(50) NOT NULL,
  `Descpriction` varchar(150) NOT NULL,
  `Image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Cust_Id` (`Cust_Id`),
  ADD KEY `Law_Id` (`Law_Id`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `lawyer_tb`
--
ALTER TABLE `lawyer_tb`
  ADD PRIMARY KEY (`L_ID`),
  ADD KEY `Ser_Id` (`Ser_Id`);

--
-- Indexes for table `services_tb`
--
ALTER TABLE `services_tb`
  ADD PRIMARY KEY (`S_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lawyer_tb`
--
ALTER TABLE `lawyer_tb`
  MODIFY `L_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_tb`
--
ALTER TABLE `services_tb`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer_tb` (`C_ID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Law_Id`) REFERENCES `lawyer_tb` (`L_ID`);

--
-- Constraints for table `lawyer_tb`
--
ALTER TABLE `lawyer_tb`
  ADD CONSTRAINT `lawyer_tb_ibfk_1` FOREIGN KEY (`Ser_Id`) REFERENCES `services_tb` (`S_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
