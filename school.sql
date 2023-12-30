-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 10:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `addmission`
--

CREATE TABLE `addmission` (
  `id` int(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `adharcardno` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `student_photo` blob NOT NULL,
  `adhar_photo` blob NOT NULL,
  `Caste` varchar(40) NOT NULL,
  `caste_c` blob NOT NULL,
  `p_address` varchar(200) NOT NULL,
  `c_address` varchar(200) NOT NULL,
  `State` varchar(200) NOT NULL,
  `Disrtrict` varchar(100) NOT NULL,
  `p_cartifcate` blob NOT NULL,
  `b_cartifcate` blob NOT NULL,
  `password` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `m_name` varchar(200) NOT NULL,
  `p_no` int(20) NOT NULL,
  `m_no` int(20) NOT NULL,
  `adhar` int(50) NOT NULL,
  `profession` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addmission`
--

INSERT INTO `addmission` (`id`, `fullname`, `email`, `dob`, `contact_no`, `adharcardno`, `gender`, `student_photo`, `adhar_photo`, `Caste`, `caste_c`, `p_address`, `c_address`, `State`, `Disrtrict`, `p_cartifcate`, `b_cartifcate`, `password`, `c_password`, `f_name`, `m_name`, `p_no`, `m_no`, `adhar`, `profession`) VALUES
(1, 'ddfgg', 'g@gmail.com', '2022-09-02', '798654321', '2346876543', 'male', 0x3c46696c6553746f726167653a202732303137303130335f3230353731352e6a706727202827696d6167652f6a70656727293e, 0x3c46696c6553746f726167653a202732303137303130335f3230353731352e6a706727202827696d6167652f6a70656727293e, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, ''),
(2, 'fyg', '', '0000-00-00', '', '', '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, ''),
(3, 'Jatin', '', '0000-00-00', '', '', '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, ''),
(4, 'Sawan', '', '2022-09-08', '987654345676', '', 'male', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', 0x3c46696c6553746f726167653a202732303137303130335f3230353133352e6a706727202827696d6167652f6a70656727293e, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, ''),
(5, '', '', '0000-00-00', '', '', '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 'sadsdgdrhythfty', '', '', '', '', '', '', '', '', '', 0, 0, 0, ''),
(7, '', '', '0000-00-00', '', '', '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 'gfhjstytjuyh', 'gfhjstytjuyh', '', '', '', '', '', '', '', '', 0, 0, 0, ''),
(20, '', '', '0000-00-00', '', '', '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', '', '', '', 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, 0x3c46696c6553746f726167653a2027272028276170706c69636174696f6e2f6f637465742d73747265616d27293e, '', '', '', '', 2147483647, 897654356, 2147483647, 'ghckvhjj'),
(21, 'Jatindra Kumar Mahanta', 'j@gmial.com', '2022-09-09', '9876543455', '87654356787654365', 'male', 0x3c46696c6553746f726167653a202732303137303130335f3230353133352e6a706727202827696d6167652f6a70656727293e, 0x3c46696c6553746f726167653a202732303137303130335f3230353832322e6a706727202827696d6167652f6a70656727293e, 'GENERAL', 0x3c46696c6553746f726167653a202732303137303130335f3230353434382e6a706727202827696d6167652f6a70656727293e, 'jjdbbhfdfsfioiyufgfhgsfi', 'jjdbbhfdfsfioiyufgfhgsfi', 'Odisha', 'Khorda', 0x3c46696c6553746f726167653a202732303137303130335f3230353431372e6a706727202827696d6167652f6a70656727293e, 0x3c46696c6553746f726167653a202732303137303130335f3230353533362e6a706727202827696d6167652f6a70656727293e, '122333', '122333', 'HIM', 'HER', 2147483647, 2147483647, 2147483647, 'poiuytrewq');

-- --------------------------------------------------------

--
-- Table structure for table `add_library`
--

CREATE TABLE `add_library` (
  `id` int(200) NOT NULL,
  `Book_Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_library`
--

INSERT INTO `add_library` (`id`, `Book_Name`) VALUES
(1, 'efrt'),
(2, 'rtyu'),
(3, 'iuy');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `Password`) VALUES
(1, 'jatindra', '143');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `all_teachers`
--

CREATE TABLE `all_teachers` (
  `id` int(200) NOT NULL,
  `Full_Name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `Qualification` varchar(200) NOT NULL,
  `Expenses` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone_Number` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Date_of_Joining` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_teachers`
--

INSERT INTO `all_teachers` (`id`, `Full_Name`, `image`, `Qualification`, `Expenses`, `Email`, `Phone_Number`, `Address`, `Date_of_Joining`, `Username`, `Password`, `gender`) VALUES
(5, 'JATINDRA KUMAR  MAHANTA', '', 'MCA', '5 years', 'jatindrakumar555@gmail.com', '08917541124', 'AT BANABIR PO BHAWNARPUR', '2022-08-07', 'rohan', '1234567', 'Male'),
(8, 'JATINDRA KUMAR  MAHANTA', '', 'MCA', '5 years', 'jatindrakumar555@gmail.com', '08917541124', 'AT BANABIR PO BHAWNARPUR', '2022-08-03', 'jatin', '12345', 'Male'),
(9, '', '16.jpg', '', '', '', '', '', '', '', '', 'Male'),
(10, 'JATINDRA KUMAR  MAHANTA', '20190402174530_IMG_2365.JPG', 'MCA', '5 years', 'jatindrakumar555@gmail.com', '08917541124', 'AT BANABIR PO BHAWNARPUR', '2022-08-01', 'jatin', '12345', 'Male'),
(11, 'rtgyh', '20170103_205417.jpg', '', '', '', '', '', '', '', '', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `clas` varchar(200) NOT NULL,
  `section` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone_Number` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Addmission` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `Name`, `image`, `gender`, `clas`, `section`, `Email`, `Phone_Number`, `Address`, `Addmission`) VALUES
(3, 'kjhkgl', 'Screenshot_2022-08-27_203820.png', 'Male', 'huehdnsj', 'tryeuwiwo', 'g@gmail.com', '9745663589', 'hdgthjtsyeiwsm', 'htdgryeuwjs');

-- --------------------------------------------------------

--
-- Table structure for table `stu_register`
--

CREATE TABLE `stu_register` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `bdy` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `Phone` varchar(200) NOT NULL,
  `clas` varchar(200) NOT NULL,
  `Father_Occupation` varchar(200) NOT NULL,
  `blood_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu_register`
--

INSERT INTO `stu_register` (`id`, `name`, `fname`, `bdy`, `gender`, `email`, `password`, `Phone`, `clas`, `Father_Occupation`, `blood_type`) VALUES
(1, 'JATINDRA KUMAR  MAHANTA', 'asdfghj', '2022-08-02', 'on', 'jatindrakumar555@gmail.com', '0987654321', '08917541124', '3', 'ASASDYK', 'O+'),
(2, 'JATINDRA KUMAR  MAHANTA', 'asdfghj', '2022-08-09', 'on', 'jati@gmail.com', '123456789', '08917541124', '2', 'kjghgfhgdsxcvb', 'B+'),
(3, 'Jatindra', 'asdfghj', '2022-08-04', 'on', 'jati@gmail.com', '123', '08917541124', '2', 'oiuytrresadfghj', 'B+'),
(4, 'Tapan', '', '2022-08-31', 'Male', 'tapan@gmail.com', '1234', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tea_register`
--

CREATE TABLE `tea_register` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(200) NOT NULL,
  `Vehicle_No` varchar(200) NOT NULL,
  `Route_Name` varchar(200) NOT NULL,
  `Driver_Name` varchar(200) NOT NULL,
  `Driver_License` varchar(200) NOT NULL,
  `Contact_Number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `Vehicle_No`, `Route_Name`, `Driver_Name`, `Driver_License`, `Contact_Number`) VALUES
(2, '46747', 'patia', 'jatindra', '36375757', '2657576');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addmission`
--
ALTER TABLE `addmission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_library`
--
ALTER TABLE `add_library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_teachers`
--
ALTER TABLE `all_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_register`
--
ALTER TABLE `stu_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tea_register`
--
ALTER TABLE `tea_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addmission`
--
ALTER TABLE `addmission`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `add_library`
--
ALTER TABLE `add_library`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `all_teachers`
--
ALTER TABLE `all_teachers`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stu_register`
--
ALTER TABLE `stu_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tea_register`
--
ALTER TABLE `tea_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
