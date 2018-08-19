-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2018 at 08:53 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnigmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `langc`
--

CREATE TABLE `langc` (
  `langc_id` int(11) NOT NULL,
  `langc_name` varchar(30) NOT NULL,
  `langc_path` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `langc`
--

INSERT INTO `langc` (`langc_id`, `langc_name`, `langc_path`, `name`) VALUES
(1, '3._Staks_and_Queues (1).pptx', 'D:/3._Staks_and_Queues (1).pptx', 'first lesson in computing '),
(2, '6._Linked_Lists (2).pptx', 'D:/6._Linked_Lists (2).pptx', 'lecture 2'),
(4, '3._Tutorial_Search_2.docx', 'D:/3._Tutorial_Search_2.docx', 'first lesson in computing '),
(5, '2._Tutorial_Search_1.docx', 'D:/2._Tutorial_Search_1.docx', 'second lesson in computing '),
(6, 'SE101.3_Lec8_JDBC.pptx', 'D:/SE101.3_Lec8_JDBC.pptx', 'the first lesson');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lec_id` varchar(15) NOT NULL,
  `lec_name` varchar(60) NOT NULL,
  `st_id` varchar(25) NOT NULL,
  `lec_password` varchar(20) NOT NULL,
  `food` varchar(40) NOT NULL,
  `place` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lec_id`, `lec_name`, `st_id`, `lec_password`, `food`, `place`) VALUES
('com-001', 'S.A.M.Jayawardana', 'bsc-ucd-csc-1-001', 'qwe', 'pizza', 'kandy'),
('com-002', 'U.G.Sirimewan', 'bsc-ugc-mis-2-001', '345', '', ''),
('com-003', 'A.R.Gunathilaka', 'bsc-ugc-mis-2-001', '567', '', ''),
('com-1', 'A.M.silva', 'bsc-ucd-csc-1-001', '12345', 'milkrice', '');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `mod_name` varchar(40) NOT NULL,
  `paths` varchar(50) NOT NULL,
  `mod_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`mod_name`, `paths`, `mod_id`) VALUES
('Lecture-10_Integration_.pptx', 'E:/Lecture-10_Integration_.pptx', 1),
('Set_Theory.pptx', 'E:/Set_Theory.pptx', 2),
('Propositional_Logic_II.pptx', 'E:/Propositional_Logic_II.pptx', 3),
('Lecture-4_Matrices (1).pptx', 'E:/Lecture-4_Matrices (1).pptx', 4),
('Lecture-7_Inequalities_.pptx', 'E:/Lecture-7_Inequalities_.pptx', 5),
('Lecture-5_Statistics.pptx', 'E:/Lecture-5_Statistics.pptx', 6),
('Lecture-9_Differentiation_.pptx', 'E:/Lecture-9_Differentiation_.pptx', 7),
('Lecture-3_Coordinate_Geometry.pptx', 'E:/Lecture-3_Coordinate_Geometry.pptx', 8),
('MA1-Solving_linear_equations-Matrix_inve', 'E:/MA1-Solving_linear_equations-Matrix_inversion.p', 9),
('Lecture-4_Matrices (1).pptx', 'E:/Lecture-4_Matrices (1).pptx', 10);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` varchar(25) NOT NULL,
  `st_name` varchar(50) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `food` varchar(40) NOT NULL,
  `place` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `st_name`, `batch`, `password`, `email`, `food`, `place`) VALUES
('bsc-ucd-csc-1-001', 'P.I.B.Ranaweera', 'csc-1', '12', 'neranjanshalinda@gma', 'rice', 'colombo'),
('bsc-ucd-csc-1-002', 'P.I.B.wijekoon', '1', '123', 'wijekoon@gmail.com', 'rice', ''),
('bsc-ugc-mis-2-001', 'M.K.Gunathilake', 'mis-2', 'mis-2-001', '', '', ''),
('mng-ply-im-1-001', 'K.E.Withana', 'im-1', 'im-1-001', '', '', ''),
('mng-ugc-bm-2-001', 'S.R.siriwardane', 'bm-2', 'bm-2-001', '', '', ''),
('mng-ugc-bm-3-001', 'W.C.Perera', 'im-1', 'im-3-001', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `time_id` int(11) NOT NULL,
  `time_name` varchar(40) NOT NULL,
  `paths` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`time_id`, `time_name`, `paths`) VALUES
(1, '1st year  class time table', 'E:/BACM-LMK_14.1_Year_III_Sem_2.pdf'),
(2, '2nd year class time table', 'E:/BACM-LMK_15.1_Year_II_Sem_2.pdf'),
(3, '3rd year class time table ', 'E:/BACM-LMK_14.1_Year_III_Sem_2.pdf'),
(4, '4th year class time table', 'E:/BACM-LMK_15.1_Year_II_Sem_2.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `langc`
--
ALTER TABLE `langc`
  ADD PRIMARY KEY (`langc_id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lec_id`),
  ADD KEY `st_id` (`st_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`time_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `langc`
--
ALTER TABLE `langc`
  MODIFY `langc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `mod_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `st_id` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
