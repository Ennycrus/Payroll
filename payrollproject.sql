-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 10:59 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payrollproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Username` varchar(25) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Datee` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `Password`, `Photo`, `Datee`) VALUES
(1, 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'pass.jpg', '2022-12-07 09:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `Employee_id` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time_in` time DEFAULT NULL,
  `Time_out` time DEFAULT NULL,
  `num_hr` double DEFAULT NULL,
  `Datee` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deduction`
--

CREATE TABLE `deduction` (
  `id` int(11) NOT NULL,
  `Deduction_type` varchar(30) DEFAULT NULL,
  `deduction_amount` varchar(30) DEFAULT NULL,
  `Datee` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deduction`
--

INSERT INTO `deduction` (`id`, `Deduction_type`, `deduction_amount`, `Datee`) VALUES
(1, 'Co-Operative', '#10,000', '2022-12-07 09:45:54'),
(2, 'Muslim Community', '#100,000', '2022-12-07 09:46:06'),
(3, 'NASUP', '#190,000', '2022-12-07 09:46:14'),
(4, 'SANIP', '#10,000', '2022-12-07 09:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `Employee_id` varchar(255) DEFAULT NULL,
  `Firstname` varchar(30) DEFAULT NULL,
  `Lastname` varchar(30) DEFAULT NULL,
  `Salary` varchar(100) DEFAULT NULL,
  `BankName` varchar(30) DEFAULT NULL,
  `AccountNumber` varchar(30) DEFAULT NULL,
  `Contact_info` varchar(30) DEFAULT NULL,
  `Deduction_type` varchar(30) DEFAULT NULL,
  `Deduction_amount` varchar(30) DEFAULT NULL,
  `Loan` varchar(30) DEFAULT NULL,
  `Unit` varchar(20) DEFAULT NULL,
  `Datee` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Employee_id`, `Firstname`, `Lastname`, `Salary`, `BankName`, `AccountNumber`, `Contact_info`, `Deduction_type`, `Deduction_amount`, `Loan`, `Unit`, `Datee`) VALUES
(1, 'HEZ038275416', 'Jesutofunmi', 'Eruobodo', '20000', 'Standard Chartered', '5003713676', '08089317636', '2', '4', '10000', 'Electrical Engineeri', '2022-12-07 09:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `Employee_id` int(11) DEFAULT NULL,
  `Bank` varchar(30) DEFAULT NULL,
  `BankAcct` varchar(50) DEFAULT NULL,
  `Basic` varchar(50) DEFAULT NULL,
  `DearnessAllowance` varchar(50) DEFAULT NULL,
  `HouseRentAllowance` varchar(50) DEFAULT NULL,
  `Allowance` varchar(50) DEFAULT NULL,
  `Allcashreimbursenebts` varchar(50) DEFAULT NULL,
  `LTA` varchar(50) DEFAULT NULL,
  `MedicalAllowance` varchar(50) DEFAULT NULL,
  `PF` varchar(50) DEFAULT NULL,
  `ESI` varchar(50) DEFAULT NULL,
  `IncomeTax` varchar(50) DEFAULT NULL,
  `LoansandAdvances` varchar(50) DEFAULT NULL,
  `ProfTax` varchar(50) DEFAULT NULL,
  `Perquisites` varchar(50) DEFAULT NULL,
  `Deduction_Type` varchar(100) DEFAULT NULL,
  `Deduction_amount` varchar(100) DEFAULT NULL,
  `Datee` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `Employee_id`, `Bank`, `BankAcct`, `Basic`, `DearnessAllowance`, `HouseRentAllowance`, `Allowance`, `Allcashreimbursenebts`, `LTA`, `MedicalAllowance`, `PF`, `ESI`, `IncomeTax`, `LoansandAdvances`, `ProfTax`, `Perquisites`, `Deduction_Type`, `Deduction_amount`, `Datee`) VALUES
(1, 0, 'Standard Chartered', '5003713676', '20000', '10000', '25000', '30000', '10000', '1000', '2000', '500', '20', '500', '10000', '400', '40000', 'Housing', '19000', '2022-12-07 09:55:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction`
--
ALTER TABLE `deduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction`
--
ALTER TABLE `deduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
