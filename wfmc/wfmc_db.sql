-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql202.infinityfree.com
-- Generation Time: Dec 19, 2023 at 10:08 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_33756775_wfmc`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'ED@admin2023'),
(2, 'administrator', 'administrator@gmail.com', 'ED@admin2023'),
(4, 'Nandeshwar.s', 'Nandeshwar.s@outlook.com', 'ED@admin2023'),
(5, 'Abhishek.y', 'Abhishek.yadav@gmail.com', 'ED@admin2023'),
(6, 'Adhikar Foundation', 'adhikarfoundation2023@gmail.com', 'NGO@admin'),
(7, 'Saubraniya Nadar', 'Saubrniya.nadar@gmail.com', 'Welcome@2024'),
(8, 'Rajkumari Bande', 'Rajkumari.Bande@gmail.com', 'Welcome@2024');

-- --------------------------------------------------------

--
-- Table structure for table `assets_tb`
--

CREATE TABLE `assets_tb` (
  `pid` int(11) NOT NULL,
  `pname` varchar(60) COLLATE utf8_bin NOT NULL,
  `pdop` date NOT NULL,
  `pava` int(11) NOT NULL,
  `ptotal` int(11) NOT NULL,
  `poriginalcost` int(11) NOT NULL,
  `psellingcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assets_tb`
--

INSERT INTO `assets_tb` (`pid`, `pname`, `pdop`, `pava`, `ptotal`, `poriginalcost`, `psellingcost`) VALUES
(1, 'Delivery Bag', '2022-12-28', 12, 20, 200, 210),
(3, 'T-shirt', '2022-12-28', 13, 20, 100, 105),
(4, 'Hand-Gloves', '2022-12-28', 100, 150, 50, 55),
(5, 'BIB KIT', '2023-03-01', 50, 100, 200, 220),
(6, 'Jesry', '2023-04-24', 199, 200, 195, 200);

-- --------------------------------------------------------

--
-- Table structure for table `assignwork_tb`
--

CREATE TABLE `assignwork_tb` (
  `rno` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_add1` text COLLATE utf8_bin NOT NULL,
  `requester_add2` text COLLATE utf8_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `assign_tech` varchar(60) COLLATE utf8_bin NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assignwork_tb`
--

INSERT INTO `assignwork_tb` (`rno`, `request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `assign_tech`, `assign_date`) VALUES
(21, 98, 'i want to donate 10 food ', 'apple, rice ,etc', 'vivek dubey', 'kalwa thene ', 'bogda', 'thene', 'Maharastra ', 400603, 'vivekdu233@gmail.com', 8108155468, 'vivek', '2023-03-27'),
(22, 99, 'want to donate 50kg rice and wheat', 'i want to donate food', 'Nandeshwar soni', 'Kalwa', 'adhikar chowk (E)', 'Thane', 'maharashtra', 400605, 'nandeshwar.s@outlook.com', 7021528447, 'Araf khan', '2023-04-10'),
(24, 98, 'i want to donate 10 food ', 'apple, rice ,etc', 'vivek dubey', 'kalwa thene ', 'bogda', 'thene', 'Maharastra ', 400603, 'vivekdu233@gmail.com', 8108155468, 'Araf Khan', '2023-04-25'),
(25, 100, 'want to donate food q ki hmara app par food order nhi aa rhe h ', 'want to donate food q ki hmara app par food order nhi aa rhe h ', 'vedant sawant', 'Vijay Nagar Dombivli (E).', 'vijay nagar d e', 'dombivli', 'maharashtra', 421201, 'vedusawant123@gmail.com', 9421191422, 'Jitendra Gupta', '2023-04-25'),
(27, 101, ' i am donate vegetables & fruit', 'vegetables 10kdg and fruit 10kg', 'aman', 'ashvinayak chawl commite kalwa (e) thane ', 'adhikar chowk', 'Thane ', 'maharastra', 400605, 'abhishekyadav@gmail.com', 8108155468, 'ashutosh pal', '2023-04-25'),
(29, 100, 'want to donate food ', 'we want to to donate the leftover food.', 'vedant sawant', 'Vijay Nagar Dombivli (E).', 'vijay nagar d e', 'dombivli', 'maharashtra', 421201, 'vedusawant123@gmail.com', 9421191422, 'Araf Khan', '2023-04-22'),
(30, 103, 'i am donate vagetables and foods', '10kg foods and 20kg vagetables', 'nitin yadav', 'kalyan naaka bhaskar nagar', 'adhikar chowk (E)', 'kalyan', 'maharashtra', 400605, 'nitin233@gmail.com', 8080554685, 'abhishek ', '2023-04-25'),
(31, 104, 'Want to donate food ', 'Food donation camp', 'Harsh', 'Shiv shanked chwal bhaskar nagar', 'Adhikar chauk', 'Thane', 'Jfcvh', 400605, 'harshrajbhar563@gmail.com', 7021151252, 'Araf', '2023-04-29'),
(32, 105, 'i want to donate cake for 200 peoples', 'i want to donate cake for 200 peoples', 'salman', 'kalwa', 'kalwa', 'thane', 'Maharashtra', 400605, 'salman@gmail.com', 7045580618, 'Araf', '2023-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `custid` int(11) NOT NULL,
  `custname` varchar(60) COLLATE utf8_bin NOT NULL,
  `custadd` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpname` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpquantity` int(11) NOT NULL,
  `cpeach` int(11) NOT NULL,
  `cptotal` int(11) NOT NULL,
  `cpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`custid`, `custname`, `custadd`, `cpname`, `cpquantity`, `cpeach`, `cptotal`, `cpdate`) VALUES
(29, 'Deepak', 'kalwa', 'Delivery Bag', 1, 210, 210, '2023-01-06'),
(30, 'vivek duby', 'kalwwa', 'Delivery Bag', 1, 210, 245, '2023-01-10'),
(31, 'aman', 'kalwa', 'Delivery Bag', 1, 210, 210, '2023-03-24'),
(32, 'ayush', 'asht vinayak chowl commite kalwa ', 'T-shirt', 2, 105, 110, '2023-04-25'),
(33, 'naanu', 'majiwad street fx market', 'Jesry', 1, 200, 205, '2023-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `requesterlogin_tb`
--

CREATE TABLE `requesterlogin_tb` (
  `r_login_id` int(11) NOT NULL,
  `r_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `requesterlogin_tb`
--

INSERT INTO `requesterlogin_tb` (`r_login_id`, `r_name`, `r_email`, `r_password`) VALUES
(36, 'abhishek yadav', 'abhishekya233@gmail.com', 'Newuser123'),
(37, 'vivek dubey', 'vivekdu233@gmail.com', 'Newuser123'),
(39, 'Abhishek Gupta', 'AbhishekGupta911@gmail.com', 'Newuser123'),
(40, ' Nandeshwar Subhash soni', 'nandeshwar.s@outlook.com', 'Newuser123'),
(41, '  tanvi sawant', 'tanvisawant2312@gmail.com', '123456'),
(42, 'vedant sawant', 'vedusawant123@gmail.com', '123456'),
(43, ' aakash guha', 'aakash.g@gmail.com', '12345'),
(44, 'natasha', 'natasha232@gmail.com', '9702414717'),
(45, 'aman', 'aman233@gmail.com', '8108155468'),
(46, 'naanu', 'naanu@gmail.com', '8108155468'),
(47, 'surabh pal ', 'surabh@gmial.com', '8108155468'),
(48, 'nitin yadav', 'nitin233@gmail.com', '9892240853'),
(49, 'nileshpal', 'nileshpal@gmail.com', '8108155468'),
(50, ' Harsh gujjar', 'harshrajbhar563@gmail.com', '12345678'),
(51, 'salman', 'salman@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `riders_tb`
--

CREATE TABLE `riders_tb` (
  `empid` int(11) NOT NULL,
  `empName` varchar(60) COLLATE utf8_bin NOT NULL,
  `empCity` varchar(60) COLLATE utf8_bin NOT NULL,
  `empMobile` bigint(11) NOT NULL,
  `empEmail` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `riders_tb`
--

INSERT INTO `riders_tb` (`empid`, `empName`, `empCity`, `empMobile`, `empEmail`) VALUES
(23, 'ashutosh pal', 'thane ', 7304100109, 'ashutoshpal2334@gmail.com'),
(25, 'Vivek Dubey', 'Kalwa', 7024482537, 'vivevkdubey2004@gmail.com'),
(26, 'Jitendra Gupta', 'Thane', 7080551212, 'Jitendra.g2022@gmail.com'),
(27, 'Araf Khan', 'Ghansoli', 8080525494, 'its.araf.k@gmail.com'),
(29, 'ashish yadav', 'thane', 9892240853, 'ashishyadav233@gmail.com'),
(30, 'deepak soni ', 'kalyan', 7304100109, 'naanu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest_tb`
--

CREATE TABLE `submitrequest_tb` (
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_add1` text COLLATE utf8_bin NOT NULL,
  `requester_add2` text COLLATE utf8_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `submitrequest_tb`
--

INSERT INTO `submitrequest_tb` (`request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `request_date`) VALUES
(99, 'want to donate 50kg rice and wheat', 'i want to donate food', 'Nandeshwar soni', 'Kalwa', 'adhikar chowk (E)', 'Thane', 'maharashtra', 400605, 'nandeshwar.s@outlook.com', 7021528447, '2023-04-10'),
(100, 'want to donate food q ki hmara app par food order nhi aa rhe h ', 'want to donate food q ki hmara app par food order nhi aa rhe h ', 'vedant sawant', 'Vijay Nagar Dombivli (E).', 'vijay nagar d e', 'dombivli', 'maharashtra', 421201, 'vedusawant123@gmail.com', 9421191422, '2023-04-19'),
(101, ' i am donate vegetables & fruit', 'vegetables 10kdg and fruit 10kg', 'aman', 'ashvinayak chawl commite kalwa (e) thane ', 'adhikar chowk', 'Thane ', 'maharastra', 400605, 'abhishekyadav@gmail.com', 8108155468, '2023-04-25'),
(102, 'i am donate vegetables and foods ', 'vagetables 30 kg and foods 20kg apple 20kg banana', 'Naanu', 'jai maa mahihar chowl kalwa (E)', 'rahul restorent', 'thane', 'maharashtra', 400605, 'naanu@gmail.com', 9702414717, '2023-04-25'),
(103, 'i am donate vagetables and foods', '10kg foods and 20kg vagetables', 'nitin yadav', 'kalyan naaka bhaskar nagar', 'adhikar chowk (E)', 'kalyan', 'maharashtra', 400605, 'nitin233@gmail.com', 8080554685, '2023-04-25'),
(104, 'Want to donate food ', 'Food donation camp', 'Harsh', 'Shiv shanked chwal bhaskar nagar', 'Adhikar chauk', 'Thane', 'Jfcvh', 400605, 'harshrajbhar563@gmail.com', 7021151252, '2023-04-29'),
(105, 'i want to donate cake for 200 peoples', 'i want to donate cake for 200 peoples', 'salman', 'kalwa', 'kalwa', 'thane', 'Maharashtra', 400605, 'salman@gmail.com', 7045580618, '2023-07-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `assets_tb`
--
ALTER TABLE `assets_tb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  ADD PRIMARY KEY (`r_login_id`);

--
-- Indexes for table `riders_tb`
--
ALTER TABLE `riders_tb`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  MODIFY `a_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `assets_tb`
--
ALTER TABLE `assets_tb`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  MODIFY `r_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `riders_tb`
--
ALTER TABLE `riders_tb`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
