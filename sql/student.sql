-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2024 at 02:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`, `Password`) VALUES
('Admin', 'admin'),
('admin@sggs.ac.in', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `Admin_users`
--

CREATE TABLE `Admin_users` (
  `Username` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Admin_users`
--

INSERT INTO `Admin_users` (`Username`, `Password`) VALUES
('a', 'b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9'),
('ad', '70ba33708cbfb103f1a8e34afef333ba7dc021022b2d9aaa583aabb8058d8d67'),
('b', '2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6'),
('c', '252f10c83610ebca1a059c0bae8255eba2f95be4d1d7bcfa89d7248a82d9f111'),
('pratham', '2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824');

-- --------------------------------------------------------

--
-- Table structure for table `all_stu`
--

CREATE TABLE `all_stu` (
  `Year` int(5) NOT NULL,
  `Sem` int(2) NOT NULL,
  `Reg.No.` varchar(10) NOT NULL,
  `Sub_1` varchar(5) NOT NULL,
  `Sub_2` varchar(5) NOT NULL,
  `Sub_3` varchar(5) NOT NULL,
  `Sub_4` varchar(5) NOT NULL,
  `Sub_5` varchar(5) NOT NULL,
  `Sub_6` varchar(5) NOT NULL,
  `Sub_7` varchar(5) NOT NULL,
  `Sub_8` varchar(5) NOT NULL,
  `Sub_9` varchar(5) NOT NULL,
  `Sub_10` varchar(5) NOT NULL,
  `Sub_11` varchar(5) NOT NULL,
  `Sub_12` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_stu`
--

INSERT INTO `all_stu` (`Year`, `Sem`, `Reg.No.`, `Sub_1`, `Sub_2`, `Sub_3`, `Sub_4`, `Sub_5`, `Sub_6`, `Sub_7`, `Sub_8`, `Sub_9`, `Sub_10`, `Sub_11`, `Sub_12`) VALUES
(1, 1, '2020BCS151', 'B+', 'B+', 'A', 'B', 'A+', 'A', 'C+', 'A', 'Audit', '8.00', '', ''),
(1, 2, '2020BCS151', 'B', 'B', 'A', 'B', 'A+', 'B', 'A', 'C+', 'A+', '7.65', '', ''),
(1, 2, '2020BCS556', 'A+', 'B+', 'B+', 'B+', 'A', 'A', 'C+', 'C+', 'A', '8.5', '', ''),
(2, 1, '2020BCS151', 'B+', 'A', 'C+', 'A', 'B+', 'B+', 'A', 'B+', 'A', 'A', 'A', '8.38'),
(2, 1, '2020BCS555', 'A', 'B+', 'A+', 'A+', 'A+', 'A+', 'A+', 'A+', 'A+', '9.95', '', ''),
(2, 2, '2020BCS028', 'A+', 'B+', 'B+', 'B+', 'B', 'A+', 'A+', 'A+', 'B+', '10.00', '', ''),
(2, 2, '2020BCS151', 'A', 'B', 'B+', 'B', 'B+', 'B+', 'B+', 'A', 'Audit', '7.89', '', ''),
(2, 2, '2020BCS556', 'A+', 'B', 'A+', 'A+', 'A+', 'A+', 'A+', 'A+', 'A', '4.00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `res_cse_2_2`
--

CREATE TABLE `res_cse_2_2` (
  `Reg.No.` varchar(10) NOT NULL,
  `Mathematics` varchar(5) NOT NULL,
  `MI_Theory` varchar(5) NOT NULL,
  `MI_Practical` varchar(5) NOT NULL,
  `COA` varchar(5) NOT NULL,
  `DAA_Theory` varchar(5) NOT NULL,
  `DAA_Practical` varchar(5) NOT NULL,
  `PP_Theory` varchar(5) NOT NULL,
  `PP_Practical` varchar(5) NOT NULL,
  `Indian Constitution` varchar(5) NOT NULL DEFAULT 'Audit',
  `SGPA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_cse_2_2`
--

INSERT INTO `res_cse_2_2` (`Reg.No.`, `Mathematics`, `MI_Theory`, `MI_Practical`, `COA`, `DAA_Theory`, `DAA_Practical`, `PP_Theory`, `PP_Practical`, `Indian Constitution`, `SGPA`) VALUES
('2020BCS004', 'B+', 'B', 'B+', 'B', 'B+', 'A', 'B+', 'A', 'Audit', 7.78),
('2020BCS028', 'A+', 'B+', 'B+', 'B+', 'B+', 'A', 'B+', 'A', 'Audit', 8.44),
('2020BCS037', 'A', 'B', 'B+', 'B+', 'A', 'B+', 'A', 'A+', 'Audit', 8.44),
('2020BCS052', 'B+', 'C', 'B+', 'B', 'B+', 'B+', 'B+', 'A', 'Audit', 7.39),
('2020BCS131', 'B+', 'D', 'B', 'C+', 'B', 'B', 'B+', 'B+', 'Audit', 6.72),
('2020BCS151', 'A', 'B', 'B+', 'B', 'B+', 'B+', 'B+', 'A', 'Audit', 7.89),
('2020BCS153', 'A+', 'B', 'C+', 'A', 'A', 'C+', 'B+', 'A', 'Audit', 8.33);

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE `stu_info` (
  `Sr.No.` int(11) NOT NULL,
  `Reg.No.` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Department` text NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`Sr.No.`, `Reg.No.`, `Name`, `Department`, `Password`) VALUES
(2, '2020BCS028', 'Prathmesh Sanjayrao Nikam', 'CSE', '2020BCS028'),
(3, '2020BCS052', 'Chinmay Sanjay Beedkar', 'CSE', '2020BCS052'),
(1, '2020BCS151', 'Prathamesh Manikrao Jadhav', 'CSE', '2020BCS151'),
(4, '2020BCS153', 'Rohit Venkant Patil', 'CSE', '2020BCS153'),
(6, '2020BCS555', 'Virat Kohli', 'CSE', '2020BCS555'),
(5, '2020BCS556', 'Mahendrasingh Dhoni', 'CSE', '2020BCS556'),
(7, '2020BCS557', 'Arjun', 'CSE', '2020BCS557');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `Year` int(11) NOT NULL,
  `Sem` int(2) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `No_of_courses` int(11) NOT NULL,
  `Sub_1` varchar(20) NOT NULL,
  `Sub_2` varchar(20) NOT NULL,
  `Sub_3` varchar(20) NOT NULL,
  `Sub_4` varchar(20) NOT NULL,
  `Sub_5` varchar(20) NOT NULL,
  `Sub_6` varchar(20) NOT NULL,
  `Sub_7` varchar(20) NOT NULL,
  `Sub_8` varchar(20) NOT NULL,
  `Sub_9` varchar(20) NOT NULL,
  `Sub_10` varchar(20) NOT NULL,
  `Sub_11` varchar(20) NOT NULL,
  `Sub_12` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Year`, `Sem`, `Department`, `No_of_courses`, `Sub_1`, `Sub_2`, `Sub_3`, `Sub_4`, `Sub_5`, `Sub_6`, `Sub_7`, `Sub_8`, `Sub_9`, `Sub_10`, `Sub_11`, `Sub_12`) VALUES
(1, 1, 'CSE', 9, 'Mathematics-I', 'Chemistry_T', 'Chemistry_P', 'PPS_T', 'PPS_P', 'Workshop', 'PC_T', 'PC_P', 'Env.Sci.', 'SGPA', '', ''),
(1, 2, 'CSE', 9, 'Mathematics-II', 'Physics_T', 'Physics_P', 'BEE_T', 'BEE_P', 'EG_T', 'EG_P', 'EM_T', 'EE', 'SGPA', '', ''),
(2, 1, 'CSE', 11, 'Mathematics-III', 'DE_T', 'DE_P', 'HVPE', 'DM', 'DS_T', 'DS_P', 'OOP_T', 'OOP_P', 'NSC_T', 'NSC_P', 'SGPA'),
(2, 2, 'CSE', 9, 'Mathematics-IV', 'MI_Theory', 'MI_Practical', 'COA', 'DAA_Theory', 'DAA_Practical', 'PP_Theory', 'PP_Practical', 'Indian Constitution', 'SGPA', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin_users`
--
ALTER TABLE `Admin_users`
  ADD PRIMARY KEY (`Username`(40));

--
-- Indexes for table `all_stu`
--
ALTER TABLE `all_stu`
  ADD PRIMARY KEY (`Year`,`Sem`,`Reg.No.`);

--
-- Indexes for table `res_cse_2_2`
--
ALTER TABLE `res_cse_2_2`
  ADD PRIMARY KEY (`Reg.No.`);

--
-- Indexes for table `stu_info`
--
ALTER TABLE `stu_info`
  ADD PRIMARY KEY (`Reg.No.`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`Year`,`Sem`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
