-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 02:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'd03c3e93d5c5a27603d927f95a86fa0f', '2022-01-01 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'SYBcom', 1, 'A', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(2, 'TYBCA', 2, 'A', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(3, 'TYBCA', 3, 'B', '2022-01-01 10:30:57', '2022-01-01 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(5, 'Online Result System...........\r\nA Project By Ziyad And Umer', 'TYBCA (B) Abeda Inamdar Senior College', '2022-05-04 15:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 1, 1, 100, '2022-01-01 10:30:57', NULL),
(2, 1, 1, 2, 80, '2022-01-01 10:30:57', NULL),
(3, 1, 1, 3, 78, '2022-01-01 10:30:57', NULL),
(4, 1, 1, 4, 60, '2022-01-01 10:30:57', NULL),
(5, 1, 1, 5, 70, '2022-01-01 10:30:57', NULL),
(6, 1, 1, 6, 80, '2022-01-01 10:30:57', NULL),
(7, 1, 1, 7, 90, '2022-01-01 10:30:57', NULL),
(22, 3, 2, 12, 80, '2022-05-04 16:15:18', NULL),
(23, 3, 2, 13, 70, '2022-05-04 16:15:18', NULL),
(24, 3, 2, 14, 85, '2022-05-04 16:15:18', NULL),
(25, 3, 2, 15, 75, '2022-05-04 16:15:18', NULL),
(26, 3, 2, 11, 90, '2022-05-04 16:15:18', NULL),
(27, 2, 3, 12, 90, '2022-05-04 16:15:44', NULL),
(28, 2, 3, 13, 80, '2022-05-04 16:15:44', NULL),
(29, 2, 3, 14, 70, '2022-05-04 16:15:44', NULL),
(30, 2, 3, 15, 75, '2022-05-04 16:15:44', NULL),
(31, 2, 3, 11, 85, '2022-05-04 16:15:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Ali', '1', 'Ali@gmail.com', 'Male', '2003-07-21', 1, '2022-01-01 10:30:57', NULL, 1),
(2, 'Ziyad Javed', '226', 'ziyadsk00@gmail.com', 'Male', '2001-07-21', 3, '2022-01-01 10:30:57', NULL, 1),
(3, 'Azifa Khan', '3', 'azifakhan@gmail.com', 'Female', '2002-3-20', 2, '2022-01-01 10:30:57', NULL, 1),
(4, 'Umer Shaikh', '224', 'umershaikh@gmail.com', 'Male', '1998-01-01', 3, '2022-01-01 15:19:40', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 1, '2022-01-01 10:30:57', '2022-05-04 15:59:05'),
(2, 1, 2, 1, '2022-01-01 10:30:57', NULL),
(3, 1, 3, 1, '2022-01-01 10:30:57', NULL),
(4, 1, 4, 1, '2022-01-01 10:30:57', NULL),
(5, 1, 5, 1, '2022-01-01 10:30:57', NULL),
(6, 1, 6, 1, '2022-01-01 10:30:57', NULL),
(7, 1, 7, 1, '2022-01-01 10:30:57', NULL),
(32, 2, 11, 1, '2022-05-04 16:11:40', NULL),
(33, 2, 12, 1, '2022-05-04 16:11:50', NULL),
(34, 2, 13, 1, '2022-05-04 16:12:00', NULL),
(35, 2, 14, 1, '2022-05-04 16:12:10', NULL),
(36, 2, 15, 1, '2022-05-04 16:12:19', NULL),
(37, 3, 11, 1, '2022-05-04 16:13:11', NULL),
(38, 3, 12, 1, '2022-05-04 16:13:18', NULL),
(39, 3, 13, 1, '2022-05-04 16:13:24', NULL),
(40, 3, 14, 1, '2022-05-04 16:13:31', NULL),
(41, 3, 15, 1, '2022-05-04 16:13:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'M01', '2022-01-01 10:30:57', NULL),
(2, 'English', 'ENG11', '2022-01-01 10:30:57', NULL),
(3, 'Bussiness Management', 'BM1', '2022-01-01 10:30:57', NULL),
(4, 'Principle Of Management', 'POM1', '2022-01-01 10:30:57', NULL),
(5, 'Social Studies', 'SS01', '2022-01-01 10:30:57', NULL),
(6, 'Digital Marketting', 'DM1', '2022-01-01 10:30:57', NULL),
(7, 'Management', 'M1', '2022-01-01 10:30:57', NULL),
(11, 'Java', 'J1', '2022-05-04 16:10:24', NULL),
(12, 'Python', 'P1', '2022-05-04 16:10:44', NULL),
(13, 'OOSE', 'OOSE1', '2022-05-04 16:10:56', NULL),
(14, 'Cyber Security', 'CS1', '2022-05-04 16:11:09', NULL),
(15, 'IOT', 'IT01', '2022-05-04 16:11:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
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
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
