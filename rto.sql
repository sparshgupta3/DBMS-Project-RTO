-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2018 at 11:26 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rto`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`, `Password`) VALUES
('sparsh', 'abc123'),
('tanmay', 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `applies_for_permanent`
--

CREATE TABLE `applies_for_permanent` (
  `Application_No` int(11) NOT NULL,
  `Learning_ID` int(11) DEFAULT NULL,
  `Application_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apply_for_learning`
--

CREATE TABLE `apply_for_learning` (
  `Application_Date` date DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `Application_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apply_for_registration`
--

CREATE TABLE `apply_for_registration` (
  `Engine_No` varchar(20) NOT NULL,
  `Chassis_No` varchar(20) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `Application_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lla`
--

CREATE TABLE `lla` (
  `Application_No` int(11) NOT NULL,
  `TestSlot` datetime DEFAULT NULL,
  `Result` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lli`
--

CREATE TABLE `lli` (
  `Learning_ID` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Valid_Upto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `lli`
--
DELIMITER $$
CREATE TRIGGER `T2` BEFORE INSERT ON `lli` FOR EACH ROW BEGIN
SET NEW.Valid_Upto = TIMESTAMPADD(MONTH,6,NEW.Issue_Date);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `nvr`
--

CREATE TABLE `nvr` (
  `Temporary_No` varchar(10) DEFAULT NULL,
  `Engine_No` varchar(20) NOT NULL,
  `Chassis_No` varchar(20) NOT NULL,
  `Vehicle_Name` varchar(20) DEFAULT NULL,
  `Vehicle_Color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `own`
--

CREATE TABLE `own` (
  `Vehicle_No` varchar(10) NOT NULL,
  `ID` int(11) NOT NULL,
  `Buy_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `own`
--

INSERT INTO `own` (`Vehicle_No`, `ID`, `Buy_Date`) VALUES
('RJ050001', 3, NULL),
('RJ051234', 24, NULL),
('RJ051457', 4, NULL),
('RJ051552', 1, NULL),
('RJ052323', 2, NULL),
('RJ052689', 3, NULL),
('RJ054586', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `Pincode` int(6) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Mobile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ID`, `Name`, `DOB`, `Address`, `Pincode`, `Email`, `Mobile`) VALUES
(1, 'Shubham', '1998-12-14', 'Xyz Colony', 305002, 'shubh@gmail.com', 654321),
(2, 'Amelia Borg', '1994-10-14', 'Xxyz Colony', 305001, 'amebo@gmail.com', 654120),
(3, 'Stuart Wolf', '1978-12-19', 'Xxxyz Colony', 305006, 'stuoll@gmail.com', 654222),
(4, 'Jlota', '1985-02-01', 'Abc Colony', 305005, 'jlotasama@gmail.com', 564321),
(5, 'Bulla', '1995-12-14', 'abxy Colony', 305010, 'bulla@gg.com', 653421),
(22, 'Superman', '2003-12-15', 'Glim 2', 256345, 'supery@gamil.com', 5478),
(23, 'Saumya Jain', '1991-07-19', 'Patrakar Colony', 564213, 'saumyaj@yahoo.com', 2147483647),
(24, 'Sudhanshu Arya', '1999-11-18', 'Gwalior', 352021, 'sarya@gmail.com', 84523698);

-- --------------------------------------------------------

--
-- Table structure for table `pla`
--

CREATE TABLE `pla` (
  `Application_No` int(11) NOT NULL,
  `TestSlot` datetime DEFAULT NULL,
  `Result` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pli`
--

CREATE TABLE `pli` (
  `License_No` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Valid_Upto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `pli`
--
DELIMITER $$
CREATE TRIGGER `T1` BEFORE INSERT ON `pli` FOR EACH ROW BEGIN
DECLARE DD DATE;
SELECT TIMESTAMPADD(YEAR,20,NEW.Issue_Date) INTO DD FROM PLI;
SET NEW.Valid_Upto = DD;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `plr`
--

CREATE TABLE `plr` (
  `License_No` int(11) NOT NULL,
  `Renewal_Date` date DEFAULT NULL,
  `Valid_Upto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `plr`
--
DELIMITER $$
CREATE TRIGGER `T3` BEFORE INSERT ON `plr` FOR EACH ROW BEGIN
SET NEW.Valid_Upto = TIMESTAMPADD(YEAR,20,NEW.Renewal_Date);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `prv`
--

CREATE TABLE `prv` (
  `Vehicle_No` varchar(10) NOT NULL,
  `Engine_No` varchar(20) NOT NULL,
  `Chassis_No` varchar(20) NOT NULL,
  `Vehicle_Name` varchar(20) DEFAULT NULL,
  `Vehicle_Color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prv`
--

INSERT INTO `prv` (`Vehicle_No`, `Engine_No`, `Chassis_No`, `Vehicle_Name`, `Vehicle_Color`) VALUES
('RJ050001', 'QW789', 'CH789', 'SX4', 'Blue'),
('RJ051234', 'QW457', 'CH457', 'Lamborgini', 'Red'),
('RJ051457', 'QW432', 'CH432', 'Mauti Alto', 'Silver'),
('RJ051552', 'QW289', 'CH289', 'Hyundai I20', 'White'),
('RJ052323', 'QW234', 'CH234', 'Hyundai I10', 'Red'),
('RJ052689', 'QW298', 'CH298', 'Hyundai Grand I10', 'Black'),
('RJ054586', 'QW342', 'CH342', 'Toyota Etios', 'Grey');

-- --------------------------------------------------------

--
-- Table structure for table `renewal`
--

CREATE TABLE `renewal` (
  `License_No` int(11) NOT NULL,
  `Application_Date` date DEFAULT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_of_ownership`
--

CREATE TABLE `transfer_of_ownership` (
  `Vehicle_No` varchar(20) DEFAULT NULL,
  `Application_Date` date DEFAULT NULL,
  `Buyer_ID` int(11) NOT NULL,
  `Seller_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_of_ownership`
--

INSERT INTO `transfer_of_ownership` (`Vehicle_No`, `Application_Date`, `Buyer_ID`, `Seller_ID`) VALUES
('RJ050001', '2015-12-25', 3, 4),
('RJ050001', NULL, 4, 3),
('RJ050001', NULL, 3, 4),
('RJ051234', NULL, 23, 4),
('RJ052323', '2018-11-14', 2, 1),
('RJ051234', '2018-11-14', 3, 23),
('RJ051234', '2018-11-14', 24, 3),
('RJ052689', '2018-11-16', 3, 2);

--
-- Triggers `transfer_of_ownership`
--
DELIMITER $$
CREATE TRIGGER `T4` BEFORE INSERT ON `transfer_of_ownership` FOR EACH ROW BEGIN
UPDATE Own SET ID = NEW.Buyer_ID WHERE Own.ID = New.Seller_ID AND Vehicle_No=NEW.Vehicle_No;
SET NEW.Application_Date = CURRENT_DATE();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `applies_for_permanent`
--
ALTER TABLE `applies_for_permanent`
  ADD PRIMARY KEY (`Application_No`),
  ADD KEY `Learning_ID` (`Learning_ID`);

--
-- Indexes for table `apply_for_learning`
--
ALTER TABLE `apply_for_learning`
  ADD PRIMARY KEY (`Application_No`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `apply_for_registration`
--
ALTER TABLE `apply_for_registration`
  ADD PRIMARY KEY (`Engine_No`,`Chassis_No`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `lla`
--
ALTER TABLE `lla`
  ADD PRIMARY KEY (`Application_No`);

--
-- Indexes for table `lli`
--
ALTER TABLE `lli`
  ADD PRIMARY KEY (`Learning_ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `nvr`
--
ALTER TABLE `nvr`
  ADD PRIMARY KEY (`Engine_No`,`Chassis_No`);

--
-- Indexes for table `own`
--
ALTER TABLE `own`
  ADD PRIMARY KEY (`Vehicle_No`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pla`
--
ALTER TABLE `pla`
  ADD PRIMARY KEY (`Application_No`);

--
-- Indexes for table `pli`
--
ALTER TABLE `pli`
  ADD PRIMARY KEY (`License_No`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `plr`
--
ALTER TABLE `plr`
  ADD PRIMARY KEY (`License_No`);

--
-- Indexes for table `prv`
--
ALTER TABLE `prv`
  ADD PRIMARY KEY (`Vehicle_No`);

--
-- Indexes for table `renewal`
--
ALTER TABLE `renewal`
  ADD PRIMARY KEY (`License_No`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `transfer_of_ownership`
--
ALTER TABLE `transfer_of_ownership`
  ADD KEY `Buyer_ID` (`Buyer_ID`),
  ADD KEY `Seller_ID` (`Seller_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applies_for_permanent`
--
ALTER TABLE `applies_for_permanent`
  MODIFY `Application_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apply_for_learning`
--
ALTER TABLE `apply_for_learning`
  MODIFY `Application_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lla`
--
ALTER TABLE `lla`
  MODIFY `Application_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lli`
--
ALTER TABLE `lli`
  MODIFY `Learning_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pla`
--
ALTER TABLE `pla`
  MODIFY `Application_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pli`
--
ALTER TABLE `pli`
  MODIFY `License_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applies_for_permanent`
--
ALTER TABLE `applies_for_permanent`
  ADD CONSTRAINT `applies_for_permanent_ibfk_1` FOREIGN KEY (`Learning_ID`) REFERENCES `lli` (`Learning_ID`);

--
-- Constraints for table `apply_for_learning`
--
ALTER TABLE `apply_for_learning`
  ADD CONSTRAINT `apply_for_learning_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`);

--
-- Constraints for table `apply_for_registration`
--
ALTER TABLE `apply_for_registration`
  ADD CONSTRAINT `apply_for_registration_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`);

--
-- Constraints for table `lli`
--
ALTER TABLE `lli`
  ADD CONSTRAINT `lli_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`);

--
-- Constraints for table `own`
--
ALTER TABLE `own`
  ADD CONSTRAINT `own_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`);

--
-- Constraints for table `pli`
--
ALTER TABLE `pli`
  ADD CONSTRAINT `pli_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`);

--
-- Constraints for table `renewal`
--
ALTER TABLE `renewal`
  ADD CONSTRAINT `renewal_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `person` (`ID`);

--
-- Constraints for table `transfer_of_ownership`
--
ALTER TABLE `transfer_of_ownership`
  ADD CONSTRAINT `transfer_of_ownership_ibfk_1` FOREIGN KEY (`Buyer_ID`) REFERENCES `person` (`ID`),
  ADD CONSTRAINT `transfer_of_ownership_ibfk_2` FOREIGN KEY (`Seller_ID`) REFERENCES `person` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
