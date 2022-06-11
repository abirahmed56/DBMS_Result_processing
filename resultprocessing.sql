-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 08:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resultprocessing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` varchar(36) NOT NULL,
  `course_title` varchar(70) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `course_credits` decimal(3,1) DEFAULT NULL,
  `course_type` varchar(15) DEFAULT NULL,
  `course_isMajor` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course_title`, `dept_id`, `course_credits`, `course_type`, `course_isMajor`) VALUES
('CSE 219W', 'Computer Architecture', 100, '3.0', 'Theory', 'Non-Major'),
('CSE 323W', 'Computer Networking', 100, '3.0', 'Theory', 'Non-Major'),
('CSE 324W', 'Computer Networking Lab', 100, '1.5', 'Lab', 'Non-Major'),
('CSE 333', 'Database System', 101, '3.0', 'Theory', 'Major'),
('CSE 334', 'Database System Lab', 101, '3.0', 'Lab', 'Major'),
('EEE 101', 'Electrical Circuits I', 102, '3.0', 'Theory', 'Major'),
('EEE 123', 'Electrical Circuits II', 102, '3.0', 'Theory', 'Major'),
('EEE 124', 'Electrical Circuits Lab', 102, '1.5', 'Lab', 'Major'),
('EEE 126', 'Electrical Circuit Simulation Lab', 102, '1.5', 'Lab', 'Major'),
('EEE 221', 'Electronics I', 102, '3.0', 'Theory', 'Major'),
('EEE 222', 'Electronic Circuit Simulation Lab.', 102, '1.5', 'Lab', 'Major'),
('EEE 323', 'Digital Electronics', 102, '3.0', 'Theory', 'Major'),
('EEE 324', 'Digital Electronics Lab', 102, '1.5', 'Lab', 'Major'),
('SWE 127', 'Data Structure', 100, '3.0', 'Theory', 'Major'),
('SWE 222', 'Introduction to Competitive Programming', 100, '2.0', 'Lab', 'Major'),
('SWE 223', 'Object Oriented Programming', 100, '3.0', 'Theory', 'Major'),
('SWE 224', 'Object Oriented Programming Language Lab', 100, '2.0', 'Lab', 'Major'),
('SWE 225', 'Software Requirement Engineering', 100, '2.0', 'Theory', 'Major'),
('SWE 226', 'Software Requirement Engineering Lab', 100, '1.5', 'Lab', 'Major'),
('SWE 227', 'Theory of Computation', 100, '2.0', 'Theory', 'Major'),
('SWE 229', 'Algorithm Design & Analysis', 100, '3.0', 'Theory', 'Major'),
('SWE 230', 'Algorithm Design & Analysis Lab', 100, '1.5', 'Lab', 'Major'),
('SWE 231', 'Numerical Analysis', 100, '2.0', 'Theory', 'Major'),
('SWE 232', 'Numerical Analysis Lab', 100, '1.5', 'Lab', 'Major'),
('SWE 233', 'Operating Systems and System Programming', 100, '3.0', 'Theory', 'Major'),
('SWE 234', 'Operating Systems and System Programming Lab', 100, '1.5', 'Lab', 'Major'),
('SWE 235', 'Ethics and Cyber Law', 100, '2.0', 'Theory', 'Major'),
('SWE 250', 'Project Work-II', 100, '2.0', 'Lab', 'Major'),
('SWE 321', 'Software Architecture and Design Patterns', 100, '3.0', 'Theory', 'Major'),
('SWE 322', 'Software Architecture and Design Patterns Lab', 100, '1.5', 'Lab', 'Major'),
('SWE 325', 'Distributed System', 100, '2.0', 'Theory', 'Major'),
('SWE 326', 'Distributed System Lab', 100, '1.5', 'Lab', 'Major'),
('SWE 327', 'Database Management System', 100, '3.0', 'Theory', 'Major'),
('SWE 328', 'Database Management System Lab', 100, '2.0', 'Lab', 'Major'),
('SWE 330', 'Web Technologies Lab', 100, '2.0', 'Lab', 'Major');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courseprerequisite`
--

CREATE TABLE `tbl_courseprerequisite` (
  `course_id` varchar(36) DEFAULT NULL,
  `prerequisite_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_courseprerequisite`
--

INSERT INTO `tbl_courseprerequisite` (`course_id`, `prerequisite_id`) VALUES
('EEE 323', 'EEE 221'),
('EEE 324', 'EEE 222'),
('EEE 221', 'EEE 101'),
('EEE 221', 'EEE 123'),
('EEE 222', 'EEE 124'),
('EEE 222', 'EEE 126'),
('EEE 123', 'EEE 101'),
('EEE 124', 'EEE 101'),
('EEE 126', 'EEE 101'),
('SWE 229', 'SWE 127');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `dept_name`) VALUES
(100, 'SWE'),
(101, 'CSE'),
(102, 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `reg_no` int(11) DEFAULT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  `first_teacher_id` int(11) DEFAULT NULL,
  `second_teacher_id` int(11) DEFAULT NULL,
  `class_attendance` int(11) DEFAULT NULL,
  `term_test` int(11) DEFAULT NULL,
  `class_assessment` int(11) DEFAULT NULL,
  `part_A` int(11) DEFAULT NULL,
  `part_B` int(11) DEFAULT NULL,
  `total_mark` decimal(4,1) DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  `letter_grade` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`reg_no`, `course_id`, `first_teacher_id`, `second_teacher_id`, `class_attendance`, `term_test`, `class_assessment`, `part_A`, `part_B`, `total_mark`, `gpa`, `letter_grade`) VALUES
(2018831067, 'SWE 321', 1001, 1002, 10, 18, 9, 26, 27, '90.0', '4.00', 'A+'),
(2018831067, 'SWE 325', 1002, 1001, 9, 18, 9, 26, 25, '87.0', '4.00', 'A+'),
(2018831067, 'SWE 327', 1000, 2000, 8, 17, 9, 25, 25, '84.0', '4.00', 'A+'),
(2018831067, 'CSE 323W', 2000, 1000, 9, 19, 9, 23, 27, '87.0', '4.00', 'A+'),
(2018831069, 'SWE 321', 1001, 1002, 8, 17, 9, 26, 24, '84.0', '4.00', 'A+'),
(2018831069, 'SWE 325', 1002, 1001, 9, 15, 9, 23, 22, '78.0', '3.75', 'A'),
(2018831069, 'SWE 327', 1000, 2000, 8, 17, 9, 25, 25, '84.0', '4.00', 'A+'),
(2018831069, 'CSE 323W', 2000, 1000, 9, 19, 9, 23, 23, '83.0', '4.00', 'A+'),
(2018831064, 'SWE 321', 1001, 1002, 9, 14, 8, 20, 22, '73.0', '3.50', 'A-'),
(2018831064, 'SWE 325', 1002, 1001, 6, 12, 9, 20, 20, '67.0', '3.25', 'B+'),
(2018831064, 'SWE 327', 1000, 2000, 8, 14, 9, 22, 22, '75.0', '3.75', 'A'),
(2018831064, 'CSE 323W', 2000, 1000, 9, 13, 9, 20, 21, '72.0', '3.50', 'A-'),
(2018331055, 'CSE 333', 2000, 1000, 9, 13, 9, 20, 21, '72.0', '3.50', 'A-'),
(2018831060, 'EEE 323', 3000, 2000, 9, 13, 8, 25, 21, '76.0', '3.75', 'A'),
(2018831056, 'SWE 321', 1001, 1002, 7, 15, 8, 22, 24, '76.0', '3.75', 'A'),
(2018831056, 'SWE 325', 1002, 1001, 8, 17, 5, 22, 20, '72.0', '3.50', 'A-'),
(2018831056, 'SWE 327', 1000, 2000, 9, 20, 8, 22, 24, '83.0', '4.00', 'A+'),
(2018831056, 'CSE 323W', 2000, 1000, 6, 15, 8, 22, 20, '71.0', '3.50', 'A-'),
(2018831067, 'SWE 222', 1003, 1002, 5, 15, 6, 22, 19, '67.0', '3.25', 'B+'),
(2018831067, 'SWE 223', 1004, 1001, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831067, 'SWE 225', 1003, 1001, 5, 15, 6, 12, 16, '54.0', '2.50', 'C+'),
(2018831067, 'SWE 227', 1005, 1003, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831067, 'SWE 229', 1003, 1002, 7, 18, 6, 22, 19, '72.0', '3.50', 'A-'),
(2018831067, 'SWE 231', 1000, 1001, 9, 16, 7, 22, 20, '74.0', '3.50', 'A-'),
(2018831067, 'SWE 233', 1004, 1003, 5, 8, 2, 20, 19, '54.0', '2.50', 'C+'),
(2018831067, 'SWE 235', 1004, 1002, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831067, 'CSE 219W', 2000, 1000, 5, 15, 6, 22, 19, '67.0', '3.25', 'B+'),
(2018831069, 'SWE 222', 1003, 1002, 5, 15, 6, 22, 19, '67.0', '3.25', 'B+'),
(2018831069, 'SWE 223', 1004, 1001, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831069, 'SWE 225', 1003, 1001, 5, 15, 6, 12, 16, '54.0', '2.50', 'C+'),
(2018831069, 'SWE 227', 1005, 1003, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831069, 'SWE 229', 1003, 1002, 7, 18, 6, 22, 19, '72.0', '3.50', 'A-'),
(2018831069, 'SWE 231', 1000, 1001, 9, 16, 7, 22, 20, '74.0', '3.50', 'A-'),
(2018831069, 'SWE 233', 1004, 1003, 5, 8, 2, 20, 19, '54.0', '2.50', 'C+'),
(2018831069, 'SWE 235', 1004, 1002, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831069, 'CSE 219W', 2000, 1000, 5, 15, 6, 22, 19, '67.0', '3.25', 'B+'),
(2018831064, 'SWE 222', 1003, 1002, 5, 15, 6, 22, 19, '67.0', '3.25', 'B+'),
(2018831064, 'SWE 223', 1004, 1001, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831064, 'SWE 225', 1003, 1001, 5, 15, 6, 12, 16, '54.0', '2.50', 'C+'),
(2018831064, 'SWE 227', 1005, 1003, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831064, 'SWE 229', 1003, 1002, 7, 18, 6, 22, 19, '72.0', '3.50', 'A-'),
(2018831064, 'SWE 231', 1000, 1001, 9, 16, 7, 22, 20, '74.0', '3.50', 'A-'),
(2018831064, 'SWE 233', 1004, 1003, 5, 8, 2, 20, 19, '54.0', '2.50', 'C+'),
(2018831064, 'SWE 235', 1004, 1002, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831064, 'CSE 219W', 2000, 1000, 5, 15, 6, 22, 19, '67.0', '3.25', 'B+'),
(2018831056, 'SWE 222', 1003, 1002, 5, 15, 6, 22, 19, '67.0', '3.25', 'B+'),
(2018831056, 'SWE 223', 1004, 1001, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831056, 'SWE 225', 1003, 1001, 5, 15, 6, 12, 16, '54.0', '2.50', 'C+'),
(2018831056, 'SWE 227', 1005, 1003, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831056, 'SWE 229', 1003, 1002, 7, 18, 6, 22, 19, '72.0', '3.50', 'A-'),
(2018831056, 'SWE 231', 1000, 1001, 9, 16, 7, 22, 20, '74.0', '3.50', 'A-'),
(2018831056, 'SWE 233', 1004, 1003, 5, 8, 2, 20, 19, '54.0', '2.50', 'C+'),
(2018831056, 'SWE 235', 1004, 1002, 5, 16, 2, 15, 19, '57.0', '2.75', 'B-'),
(2018831056, 'CSE 219W', 2000, 1000, 5, 15, 6, 22, 19, '67.0', '3.25', 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_lab`
--

CREATE TABLE `tbl_result_lab` (
  `reg_no` int(11) DEFAULT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  `first_teacher_id` int(11) DEFAULT NULL,
  `total_mark` decimal(4,1) DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  `letter_grade` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_result_lab`
--

INSERT INTO `tbl_result_lab` (`reg_no`, `course_id`, `first_teacher_id`, `total_mark`, `gpa`, `letter_grade`) VALUES
(2018831067, 'SWE 322', 1001, '87.0', '4.00', 'A+'),
(2018831067, 'SWE 326', 1002, '78.0', '3.75', 'A'),
(2018831067, 'SWE 328', 1000, '89.0', '4.00', 'A+'),
(2018831067, 'SWE 330', 1002, '75.0', '3.75', 'A'),
(2018831067, 'CSE 324W', 2000, '80.0', '4.00', 'A+'),
(2018831069, 'SWE 322', 1001, '90.0', '4.00', 'A+'),
(2018831069, 'SWE 326', 1002, '78.0', '3.75', 'A'),
(2018831069, 'SWE 328', 1000, '76.0', '3.75', 'A'),
(2018831069, 'SWE 330', 1002, '75.0', '3.75', 'A'),
(2018831069, 'CSE 324W', 2000, '82.0', '4.00', 'A+'),
(2018831064, 'SWE 322', 1001, '74.0', '3.50', 'A-'),
(2018831064, 'SWE 326', 1002, '70.0', '3.50', 'A-'),
(2018831064, 'SWE 328', 1000, '82.0', '4.00', 'A+'),
(2018831064, 'SWE 330', 1002, '72.0', '3.50', 'A-'),
(2018831064, 'CSE 324W', 2000, '75.0', '3.75', 'A'),
(2018831056, 'SWE 322', 1001, '87.0', '4.00', 'A+'),
(2018831056, 'SWE 326', 1002, '78.0', '3.75', 'A'),
(2018831056, 'SWE 328', 1000, '89.0', '4.00', 'A+'),
(2018831056, 'SWE 330', 1002, '75.0', '3.75', 'A'),
(2018831056, 'CSE 324W', 2000, '80.0', '4.00', 'A+'),
(2018331055, 'CSE 334', 2000, '72.0', '3.50', 'A-'),
(2018831060, 'EEE 324', 3000, '70.0', '3.50', 'A-'),
(2018831067, 'SWE 224', 1004, '65.0', '3.25', 'B+'),
(2018831067, 'SWE 226', 1003, '60.0', '3.00', 'B'),
(2018831067, 'SWE 230', 1003, '85.0', '4.00', 'A+'),
(2018831067, 'SWE 232', 1000, '80.0', '4.00', 'A+'),
(2018831067, 'SWE 234', 1004, '65.0', '3.25', 'B+'),
(2018831067, 'SWE 250', 1001, '0.0', '0.00', 'F'),
(2018831067, 'SWE 222', 1003, '65.0', '3.25', 'B+'),
(2018831069, 'SWE 224', 1004, '65.0', '3.25', 'B+'),
(2018831069, 'SWE 226', 1003, '0.0', '0.00', 'F'),
(2018831069, 'SWE 230', 1003, '85.0', '4.00', 'A+'),
(2018831069, 'SWE 232', 1000, '80.0', '4.00', 'A+'),
(2018831069, 'SWE 234', 1004, '65.0', '3.25', 'B+'),
(2018831069, 'SWE 250', 1001, '0.0', '0.00', 'F'),
(2018831069, 'SWE 222', 1003, '65.0', '3.25', 'B+'),
(2018831064, 'SWE 224', 1004, '65.0', '3.25', 'B+'),
(2018831064, 'SWE 226', 1003, '0.0', '0.00', 'F'),
(2018831064, 'SWE 230', 1003, '85.0', '4.00', 'A+'),
(2018831064, 'SWE 232', 1000, '80.0', '4.00', 'A+'),
(2018831064, 'SWE 234', 1004, '65.0', '3.25', 'B+'),
(2018831064, 'SWE 250', 1001, '80.0', '4.00', 'A+'),
(2018831064, 'SWE 222', 1003, '65.0', '3.25', 'B+'),
(2018831056, 'SWE 224', 1004, '65.0', '3.25', 'B+'),
(2018831056, 'SWE 226', 1003, '0.0', '0.00', 'F'),
(2018831056, 'SWE 230', 1003, '85.0', '4.00', 'A+'),
(2018831056, 'SWE 232', 1000, '80.0', '4.00', 'A+'),
(2018831056, 'SWE 234', 1004, '55.0', '2.75', 'B-'),
(2018831056, 'SWE 250', 1001, '0.0', '0.00', 'F'),
(2018831056, 'SWE 222', 1003, '75.0', '3.75', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `reg_no` int(11) NOT NULL,
  `std_name` varchar(40) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `std_email` varchar(40) DEFAULT NULL,
  `std_phone` varchar(15) DEFAULT NULL,
  `std_address` varchar(200) DEFAULT NULL,
  `std_dateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`reg_no`, `std_name`, `dept_id`, `std_email`, `std_phone`, `std_address`, `std_dateOfBirth`) VALUES
(2018331055, 'Abdul Kader Akash', 101, 'akash@gmail.com', '01718209515', 'Sylhet', '2000-11-11'),
(2018831056, 'Abir Ahmed', 100, 'abir@gmail.com', '01718209516', 'Meherpur', '2000-11-01'),
(2018831060, 'Kawsar Ahemmed Bappy', 102, 'bappy@gmail.com', '01864356300', 'Savar', '2000-10-20'),
(2018831064, 'Muhammad Fahim Mia', 100, 'fahim@gmail.com', '01571204201', 'Rangpur', '2000-11-02'),
(2018831067, 'Md.Abu Salman Hossain', 100, 'salman@gmail.com', '01780315793', 'Sirajganj', '2000-10-20'),
(2018831069, 'Mahmudur Rahman Sardar', 100, 'mahmudur@gmail.com', '01761651472', 'Rangpur', '2000-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_takes`
--

CREATE TABLE `tbl_takes` (
  `reg_no` int(11) DEFAULT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  `semester` varchar(15) DEFAULT NULL,
  `year` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_takes`
--

INSERT INTO `tbl_takes` (`reg_no`, `course_id`, `semester`, `year`) VALUES
(2018831056, 'SWE 321', '5th', '2021'),
(2018831056, 'SWE 322', '5th', '2021'),
(2018831056, 'CSE 323W', '5th', '2021'),
(2018831056, 'CSE 324W', '5th', '2021'),
(2018831056, 'SWE 325', '5th', '2021'),
(2018831056, 'SWE 326', '5th', '2021'),
(2018831056, 'SWE 327', '5th', '2021'),
(2018831056, 'SWE 328', '5th', '2021'),
(2018831056, 'SWE 330', '5th', '2021'),
(2018831067, 'SWE 322', '5th', '2021'),
(2018831067, 'CSE 323W', '5th', '2021'),
(2018831067, 'CSE 324W', '5th', '2021'),
(2018831067, 'SWE 325', '5th', '2021'),
(2018831067, 'SWE 326', '5th', '2021'),
(2018831067, 'SWE 327', '5th', '2021'),
(2018831067, 'SWE 328', '5th', '2021'),
(2018831067, 'SWE 330', '5th', '2021'),
(2018831069, 'SWE 322', '5th', '2021'),
(2018831069, 'CSE 323W', '5th', '2021'),
(2018831069, 'CSE 324W', '5th', '2021'),
(2018831069, 'SWE 325', '5th', '2021'),
(2018831069, 'SWE 326', '5th', '2021'),
(2018831069, 'SWE 327', '5th', '2021'),
(2018831069, 'SWE 328', '5th', '2021'),
(2018831069, 'SWE 330', '5th', '2021'),
(2018831064, 'SWE 322', '5th', '2021'),
(2018831064, 'CSE 323W', '5th', '2021'),
(2018831064, 'CSE 324W', '5th', '2021'),
(2018831064, 'SWE 325', '5th', '2021'),
(2018831064, 'SWE 326', '5th', '2021'),
(2018831064, 'SWE 327', '5th', '2021'),
(2018831064, 'SWE 328', '5th', '2021'),
(2018831064, 'SWE 330', '5th', '2021'),
(2018331055, 'CSE 323W', '5th', '2021'),
(2018331055, 'CSE 324W', '5th', '2021'),
(2018331055, 'CSE 333', '5th', '2021'),
(2018331055, 'CSE 334', '5th', '2021'),
(2018831060, 'EEE 323', '5th', '2021'),
(2018831060, 'EEE 324', '5th', '2021'),
(2018831067, 'SWE 321', '5th', '2021'),
(2018831069, 'SWE 321', '5th', '2021'),
(2018831064, 'SWE 321', '5th', '2021'),
(2018831067, 'SWE 222', '3rd', '2020'),
(2018831067, 'SWE 223', '3rd', '2020'),
(2018831067, 'SWE 224', '3rd', '2020'),
(2018831067, 'SWE 225', '3rd', '2020'),
(2018831067, 'SWE 226', '3rd', '2020'),
(2018831067, 'SWE 227', '4th', '2020'),
(2018831067, 'SWE 229', '4th', '2020'),
(2018831067, 'SWE 230', '4th', '2020'),
(2018831067, 'SWE 231', '4th', '2020'),
(2018831067, 'SWE 232', '4th', '2020'),
(2018831067, 'SWE 233', '4th', '2020'),
(2018831067, 'SWE 234', '4th', '2020'),
(2018831067, 'SWE 235', '4th', '2020'),
(2018831067, 'SWE 250', '4th', '2020'),
(2018831067, 'SWE 127', '2nd', '2020'),
(2018831067, 'CSE 219W', '3rd', '2020'),
(2018831069, 'SWE 222', '3rd', '2020'),
(2018831069, 'SWE 223', '3rd', '2020'),
(2018831069, 'SWE 224', '3rd', '2020'),
(2018831069, 'SWE 225', '3rd', '2020'),
(2018831069, 'SWE 226', '3rd', '2020'),
(2018831069, 'SWE 227', '4th', '2020'),
(2018831069, 'SWE 229', '4th', '2020'),
(2018831069, 'SWE 230', '4th', '2020'),
(2018831069, 'SWE 231', '4th', '2020'),
(2018831069, 'SWE 232', '4th', '2020'),
(2018831069, 'SWE 233', '4th', '2020'),
(2018831069, 'SWE 234', '4th', '2020'),
(2018831069, 'SWE 235', '4th', '2020'),
(2018831069, 'SWE 250', '4th', '2020'),
(2018831069, 'SWE 127', '2nd', '2020'),
(2018831069, 'CSE 219W', '3rd', '2020'),
(2018831064, 'SWE 222', '3rd', '2020'),
(2018831064, 'SWE 223', '3rd', '2020'),
(2018831064, 'SWE 224', '3rd', '2020'),
(2018831064, 'SWE 225', '3rd', '2020'),
(2018831064, 'SWE 226', '3rd', '2020'),
(2018831064, 'SWE 227', '4th', '2020'),
(2018831064, 'SWE 229', '4th', '2020'),
(2018831064, 'SWE 230', '4th', '2020'),
(2018831064, 'SWE 231', '4th', '2020'),
(2018831064, 'SWE 232', '4th', '2020'),
(2018831064, 'SWE 233', '4th', '2020'),
(2018831064, 'SWE 234', '4th', '2020'),
(2018831064, 'SWE 235', '4th', '2020'),
(2018831064, 'SWE 250', '4th', '2020'),
(2018831064, 'SWE 127', '2nd', '2020'),
(2018831064, 'CSE 219W', '3rd', '2020'),
(2018831056, 'SWE 222', '3rd', '2020'),
(2018831056, 'SWE 223', '3rd', '2020'),
(2018831056, 'SWE 224', '3rd', '2020'),
(2018831056, 'SWE 225', '3rd', '2020'),
(2018831056, 'SWE 226', '3rd', '2020'),
(2018831056, 'SWE 227', '4th', '2020'),
(2018831056, 'SWE 229', '4th', '2020'),
(2018831056, 'SWE 230', '4th', '2020'),
(2018831056, 'SWE 231', '4th', '2020'),
(2018831056, 'SWE 232', '4th', '2020'),
(2018831056, 'SWE 233', '4th', '2020'),
(2018831056, 'SWE 234', '4th', '2020'),
(2018831056, 'SWE 235', '4th', '2020'),
(2018831056, 'SWE 250', '4th', '2020'),
(2018831056, 'SWE 127', '2nd', '2020'),
(2018831056, 'CSE 219W', '3rd', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teach`
--

CREATE TABLE `tbl_teach` (
  `teacher_id` int(11) DEFAULT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  `semester` varchar(15) DEFAULT NULL,
  `year` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_teach`
--

INSERT INTO `tbl_teach` (`teacher_id`, `course_id`, `semester`, `year`) VALUES
(1000, 'SWE 327', '5th', '2021'),
(1000, 'SWE 328', '5th', '2021'),
(1001, 'SWE 321', '5th', '2021'),
(1001, 'SWE 322', '5th', '2021'),
(1002, 'SWE 325', '5th', '2021'),
(1002, 'SWE 326', '5th', '2021'),
(2000, 'CSE 323W', '5th', '2021'),
(2000, 'CSE 324W', '5th', '2021'),
(2000, 'CSE 333', '5th', '2021'),
(2000, 'CSE 334', '5th', '2021'),
(3000, 'EEE 323', '5th', '2021'),
(3000, 'EEE 324', '5th', '2021'),
(1003, 'SWE 222', '3rd', '2020'),
(1004, 'SWE 223', '3rd', '2020'),
(1004, 'SWE 224', '3rd', '2020'),
(1003, 'SWE 225', '3rd', '2020'),
(1003, 'SWE 226', '3rd', '2020'),
(1005, 'SWE 227', '4th', '2020'),
(1003, 'SWE 229', '4th', '2020'),
(1003, 'SWE 230', '4th', '2020'),
(1000, 'SWE 231', '4th', '2020'),
(1000, 'SWE 232', '4th', '2020'),
(1004, 'SWE 233', '4th', '2020'),
(1004, 'SWE 234', '4th', '2020'),
(1004, 'SWE 235', '4th', '2020'),
(1001, 'SWE 250', '4th', '2020'),
(1005, 'SWE 127', '2nd', '2020'),
(2000, 'CSE 219W', '3rd', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(40) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `teacher_email` varchar(40) DEFAULT NULL,
  `teacher_phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `dept_id`, `teacher_email`, `teacher_phone`) VALUES
(1000, 'Dr. Ahsan Habib', 100, 'ahabib-iict@sust.edu', '01915796886'),
(1001, 'Fazle Mohammed Tawsif', 100, 'tawsif-iict@sust.edu', '01841857838'),
(1002, 'Mohammed Raihan Ullah', 100, 'raihan-iict@sust.edu', '01852606036'),
(1003, 'Partho Protim Paul', 100, 'ppp@gmail.com', '017XXXXXXXX'),
(1004, 'Mr Asif Mahmud Samir', 100, 'ams@gmail.com', '01718168496'),
(1005, 'Ms Sayma Sultana Chowdhury', 100, 'ssc@gmail.com', '0174XXXXXXX'),
(2000, 'Dr. Md Forhad Rabbi', 101, 'frabbi-cse@sust.edu', '01844175805'),
(3000, 'Jibesh Kanti Saha', 102, 'jibesh-eee@sust.edu', '01680003287');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `tbl_courseprerequisite`
--
ALTER TABLE `tbl_courseprerequisite`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `prerequisite_id` (`prerequisite_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD KEY `reg_no` (`reg_no`),
  ADD KEY `first_teacher_id` (`first_teacher_id`),
  ADD KEY `second_teacher_id` (`second_teacher_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tbl_result_lab`
--
ALTER TABLE `tbl_result_lab`
  ADD KEY `reg_no` (`reg_no`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `first_teacher_id` (`first_teacher_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`reg_no`),
  ADD UNIQUE KEY `std_phone` (`std_phone`),
  ADD UNIQUE KEY `std_email` (`std_email`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `tbl_takes`
--
ALTER TABLE `tbl_takes`
  ADD KEY `reg_no` (`reg_no`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tbl_teach`
--
ALTER TABLE `tbl_teach`
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `teacher_email` (`teacher_email`),
  ADD UNIQUE KEY `teacher_phone` (`teacher_phone`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD CONSTRAINT `tbl_course_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`dept_id`);

--
-- Constraints for table `tbl_courseprerequisite`
--
ALTER TABLE `tbl_courseprerequisite`
  ADD CONSTRAINT `tbl_courseprerequisite_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`),
  ADD CONSTRAINT `tbl_courseprerequisite_ibfk_2` FOREIGN KEY (`prerequisite_id`) REFERENCES `tbl_course` (`course_id`);

--
-- Constraints for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD CONSTRAINT `tbl_result_ibfk_2` FOREIGN KEY (`reg_no`) REFERENCES `tbl_student` (`reg_no`),
  ADD CONSTRAINT `tbl_result_ibfk_3` FOREIGN KEY (`first_teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`),
  ADD CONSTRAINT `tbl_result_ibfk_4` FOREIGN KEY (`second_teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`),
  ADD CONSTRAINT `tbl_result_ibfk_5` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`);

--
-- Constraints for table `tbl_result_lab`
--
ALTER TABLE `tbl_result_lab`
  ADD CONSTRAINT `tbl_result_lab_ibfk_1` FOREIGN KEY (`reg_no`) REFERENCES `tbl_student` (`reg_no`),
  ADD CONSTRAINT `tbl_result_lab_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`),
  ADD CONSTRAINT `tbl_result_lab_ibfk_3` FOREIGN KEY (`first_teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`);

--
-- Constraints for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD CONSTRAINT `tbl_student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`dept_id`);

--
-- Constraints for table `tbl_takes`
--
ALTER TABLE `tbl_takes`
  ADD CONSTRAINT `tbl_takes_ibfk_2` FOREIGN KEY (`reg_no`) REFERENCES `tbl_student` (`reg_no`),
  ADD CONSTRAINT `tbl_takes_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`);

--
-- Constraints for table `tbl_teach`
--
ALTER TABLE `tbl_teach`
  ADD CONSTRAINT `tbl_teach_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`),
  ADD CONSTRAINT `tbl_teach_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`);

--
-- Constraints for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD CONSTRAINT `tbl_teacher_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
