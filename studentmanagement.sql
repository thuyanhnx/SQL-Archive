-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 07:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ClassID` varchar(15) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `DepartmentID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ClassID`, `ClassName`, `DepartmentID`) VALUES
('25CCDH02', 'Data Analysis', 'DA'),
('25CCHT01', 'Network Management', 'NM'),
('25CCLM03', 'Software Development', 'SE'),
('25CCTU04', 'Forensic Science', 'CBS'),
('25CHTU05', 'Database Management', 'DA'),
('25CXHU06', 'UI/UX Insights', 'NM');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` varchar(15) NOT NULL,
  `DepartmentName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `DepartmentName`) VALUES
('CBS', 'Cyber Security'),
('DA', 'Data Analytics'),
('NM', 'Network and Med'),
('SE', 'Software Engine');

-- --------------------------------------------------------

--
-- Table structure for table `examscore`
--

CREATE TABLE `examscore` (
  `StudentID` bigint(20) DEFAULT NULL,
  `SubjectID` varchar(15) DEFAULT NULL,
  `AttemptTime` int(2) DEFAULT NULL,
  `ExamScore` float DEFAULT NULL CHECK (`ExamScore` > 0 and `ExamScore` <= 10)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examscore`
--

INSERT INTO `examscore` (`StudentID`, `SubjectID`, `AttemptTime`, `ExamScore`) VALUES
(91110010003, 'NTW', 1, 8),
(91110010004, 'PNT', 1, 9),
(91110010005, 'DBS', 2, 6),
(93510010006, 'PYD', 3, 10),
(91110010007, 'NTW', 1, 3.5),
(91110010008, 'PNT', 2, 9),
(91110010009, 'MLQ', 1, 6.5),
(93510010010, 'PYD', 3, 5.5),
(91110010011, 'NTW', 2, 9),
(91110010012, 'PNT', 1, 10),
(91110010013, 'MLQ', 1, 4),
(93510010014, 'PYD', 1, 7.5),
(91110010003, 'PYD', 1, 7.5),
(91110010004, 'MLQ', 1, 4.8),
(91110010005, 'PNT', 1, 10),
(93510010006, 'NTW', 2, 9),
(91110010007, 'PYD', 3, 5.5),
(91110010008, 'MLQ', 1, 6.5),
(91110010009, 'PNT', 2, 9),
(93510010010, 'NTW', 1, 7),
(91110010011, 'PYD', 3, 10),
(91110010012, 'PYD', 1, 10),
(91110010013, 'PNT', 1, 6),
(93510010014, 'MLQ', 1, 7.5);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `LecturerID` varchar(15) NOT NULL,
  `LecturerName` varchar(50) DEFAULT NULL,
  `Major` varchar(50) DEFAULT NULL,
  `DepartmentID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`LecturerID`, `LecturerName`, `Major`, `DepartmentID`) VALUES
('AllenR', 'Rachel Allen', 'Information Technology', 'NM'),
('MorganJ', 'Janet Morgan', 'Information Technology', 'DA'),
('RiveraN', 'Nancy Rivera', 'Information Technology', 'DA'),
('ScottD', 'Daniel Scott', 'Information Technology', 'CBS'),
('WrightB', 'Billy Wright', 'Information Technology', 'SE');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` bigint(20) NOT NULL,
  `StudentName` varchar(50) DEFAULT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `ClassID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `StudentName`, `Gender`, `DoB`, `ClassID`) VALUES
(91110010003, 'Amelia Nguyen', 'Femal', '0000-00-00', '25CCHT01'),
(91110010004, 'Louis Nguyen', 'Male', '0000-00-00', '25CCTU04'),
(91110010005, 'Wanda Phillips', 'Male', '0000-00-00', '25CCDH02'),
(91110010007, 'Judy Rodriguez', 'Femal', '0000-00-00', '25CCHT01'),
(91110010008, 'Willie Miller', 'Male', '0000-00-00', '25CCTU04'),
(91110010009, 'Christopher Williams', 'Male', '0000-00-00', '25CCDH02'),
(91110010011, 'Irene Walker', 'Femal', '0000-00-00', '25CCHT01'),
(91110010012, 'Ryan Clark', 'Male', '0000-00-00', '25CCTU04'),
(91110010013, 'Phillip Henderson', 'Male', '0000-00-00', '25CCDH02'),
(93510010006, 'Diana Hill', 'Femal', '0000-00-00', '25CCLM03'),
(93510010010, 'Dennis Roberts', 'Male', '0000-00-00', '25CCLM03'),
(93510010014, 'Mildred Flores', 'Femal', '0000-00-00', '25CCLM03');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjectID` varchar(15) NOT NULL,
  `SubjectName` varchar(20) DEFAULT NULL,
  `Duration` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectID`, `SubjectName`, `Duration`) VALUES
('DBS', 'Database System', 30),
('MLQ', 'Machine Learning Adv', 45),
('NTW', 'Network Foundation', 30),
('PNT', 'Penetration Testing', 45),
('PYD', 'Python Development', 45);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_36hrs`
-- (See below for the actual view)
--
CREATE TABLE `v_36hrs` (
`SubjectID` varchar(15)
,`SubjectName` varchar(20)
,`Duration` int(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_below5`
-- (See below for the actual view)
--
CREATE TABLE `v_below5` (
`StudentID` bigint(20)
,`StudentName` varchar(50)
,`Gender` varchar(5)
,`DOb` date
,`ClassID` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_fstudents`
-- (See below for the actual view)
--
CREATE TABLE `v_fstudents` (
`StudentID` bigint(20)
,`StudentName` varchar(50)
,`Gender` varchar(5)
,`DoB` date
,`ClassID` varchar(15)
);

-- --------------------------------------------------------

--
-- Structure for view `v_36hrs`
--
DROP TABLE IF EXISTS `v_36hrs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_36hrs`  AS SELECT `subject`.`SubjectID` AS `SubjectID`, `subject`.`SubjectName` AS `SubjectName`, `subject`.`Duration` AS `Duration` FROM `subject` WHERE `subject`.`Duration` >= 36 ;

-- --------------------------------------------------------

--
-- Structure for view `v_below5`
--
DROP TABLE IF EXISTS `v_below5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_below5`  AS SELECT `examscore`.`StudentID` AS `StudentID`, `student`.`StudentName` AS `StudentName`, `student`.`Gender` AS `Gender`, `student`.`DoB` AS `DOb`, `student`.`ClassID` AS `ClassID` FROM (`examscore` join `student` on(`examscore`.`StudentID` = `student`.`StudentID`)) WHERE `examscore`.`AttemptTime` = 1 AND `examscore`.`ExamScore` < 5 ;

-- --------------------------------------------------------

--
-- Structure for view `v_fstudents`
--
DROP TABLE IF EXISTS `v_fstudents`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fstudents`  AS SELECT `student`.`StudentID` AS `StudentID`, `student`.`StudentName` AS `StudentName`, `student`.`Gender` AS `Gender`, `student`.`DoB` AS `DoB`, `student`.`ClassID` AS `ClassID` FROM `student` WHERE `student`.`Gender` = 'Female' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `examscore`
--
ALTER TABLE `examscore`
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `SubjectID` (`SubjectID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LecturerID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `ClassID` (`ClassID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`);

--
-- Constraints for table `examscore`
--
ALTER TABLE `examscore`
  ADD CONSTRAINT `examscore_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `examscore_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subject` (`SubjectID`);

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `class` (`ClassID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
