-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2025 at 05:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funstay`
--

-- --------------------------------------------------------

--
-- Table structure for table `addleads`
--

CREATE TABLE `addleads` (
  `leadid` int(5) NOT NULL,
  `lead_type` varchar(255) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `sources` enum('Website','Referral','Advertisement','Other') DEFAULT NULL,
  `another_name` varchar(200) DEFAULT NULL,
  `another_email` varchar(250) DEFAULT NULL,
  `another_phone_number` varchar(20) NOT NULL,
  `corporate_id` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'lead',
  `secondarysource` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `opportunity_status1` varchar(50) DEFAULT NULL,
  `opportunity_status2` varchar(50) DEFAULT NULL,
  `travel_type` varchar(50) DEFAULT NULL,
  `passport_number` varchar(20) DEFAULT NULL,
  `preferred_contact_method` enum('Email','Phone','WhatsApp','Other') DEFAULT NULL,
  `special_requirement` text DEFAULT NULL,
  `lead_owner` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `primaryStatus` varchar(255) DEFAULT 'New',
  `secondaryStatus` varchar(255) DEFAULT 'Yet to Contact',
  `primarySource` varchar(255) DEFAULT NULL,
  `leadcode` varchar(255) DEFAULT NULL,
  `channel` varchar(100) NOT NULL,
  `assigneeName` varchar(255) DEFAULT NULL,
  `assigneeId` varchar(255) DEFAULT NULL,
  `assignedSalesId` varchar(255) DEFAULT NULL,
  `assignedSalesName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addleads`
--

INSERT INTO `addleads` (`leadid`, `lead_type`, `name`, `email`, `country_code`, `phone_number`, `sources`, `another_name`, `another_email`, `another_phone_number`, `corporate_id`, `description`, `status`, `secondarysource`, `destination`, `created_at`, `opportunity_status1`, `opportunity_status2`, `travel_type`, `passport_number`, `preferred_contact_method`, `special_requirement`, `lead_owner`, `updated_at`, `primaryStatus`, `secondaryStatus`, `primarySource`, `leadcode`, `channel`, `assigneeName`, `assigneeId`, `assignedSalesId`, `assignedSalesName`) VALUES
(1, 'leadfromwebsite', 'Manjunatha', 'hell@gmail.com', NULL, '098239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: hjkds', 'lead', NULL, NULL, '2025-01-26 12:05:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-26 12:05:51', 'New', 'Yet to Contact', NULL, 'LD001', '', NULL, NULL, '12', 'Priya'),
(2, 'leadfromwebsite', 'Hemanth', 'hemanth@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: hjkds', 'lead', NULL, NULL, '2025-01-26 12:06:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-26 12:06:15', 'Duplicate', 'Yet to Contact', NULL, 'LD002', '', NULL, NULL, '21', 'Nitin'),
(3, 'leadfromwebsite', 'Sai123', 'sai@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message:welcome', 'opportunity', '', NULL, '2025-01-26 12:06:28', 'Cancelled', 'Force Majeure', 'bus', NULL, NULL, NULL, NULL, '2025-01-26 12:06:28', 'Lost', 'Plan Cancelled', '', 'LD003', '', NULL, NULL, '12', 'Priya'),
(4, 'leadfromwebsite', 'enquiry1', 'sai@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: hjkds', 'lead', NULL, NULL, '2025-01-26 12:17:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-26 12:17:16', 'New', 'Yet to Contact', NULL, 'LD004', '', NULL, NULL, '12', 'Priya'),
(5, 'leadfromwebsite', 'enquiry2', 'sai@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: hjkds', 'lead', NULL, NULL, '2025-01-26 12:17:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-26 12:17:22', 'New', 'Yet to Contact', NULL, 'LD005', '', NULL, NULL, '21', 'Nitin'),
(6, 'leadfromwebsite', 'enquiry3', 'sai@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: hjkds', 'lead', NULL, NULL, '2025-01-26 12:17:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-26 12:17:28', 'New', 'Yet to Contact', NULL, 'LD006', '', NULL, NULL, '12', 'Priya'),
(7, 'leadfromwebsite', 'enquiry4', 'sai@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: hjkds', 'lead', NULL, NULL, '2025-01-26 12:17:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-26 12:17:33', 'Lost', 'Yet to Contact', NULL, 'LD007', '', NULL, NULL, '21', 'Nitin'),
(8, 'leadfromwebsite', 'enquiry534', 'sai@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: welcome', 'lead', '', '', '2025-01-26 12:17:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-26 12:17:38', 'Duplicate', 'Not picking up call', '', 'LD008', '', NULL, NULL, '12', 'Priya'),
(9, 'leadfromwebsite', 'enquiry56', 'sai@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: hjkds', 'lead', NULL, NULL, '2025-01-26 17:17:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-26 17:17:29', 'Lost', 'Not picking up call', NULL, 'LD009', '', NULL, NULL, '12', 'Priya'),
(10, 'leadfromwebsite', 'enquiry567', 'sai@gmail.com', NULL, '98239080392', 'Website', '', '', '', '', 'subject: kjhkjd message: hjkds', 'opportunity', NULL, NULL, '2025-01-26 17:31:29', NULL, NULL, 'bus', NULL, NULL, NULL, NULL, '2025-01-26 17:31:29', 'New', 'Yet to Contact', NULL, 'LD010', '', NULL, NULL, '12', 'Priya');

--
-- Triggers `addleads`
--
DELIMITER $$
CREATE TRIGGER `before_insert_lead` BEFORE INSERT ON `addleads` FOR EACH ROW BEGIN
    IF NEW.leadcode IS NULL THEN
        SET NEW.leadcode = CONCAT('LD', LPAD((SELECT IFNULL(MAX(SUBSTRING(leadcode, 3)), 0) + 1 FROM addleads), 3, '0'));
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `leadid` varchar(255) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `leadid`, `timestamp`, `text`) VALUES
(1, '1', '2025-01-20 10:47:12', 'Hello'),
(2, '1', '2025-01-20 10:47:18', 'Good'),
(3, '8', '2025-01-22 09:35:48', 'hi'),
(4, '21', '2025-01-22 17:19:57', 'hello'),
(5, '19', '2025-01-22 17:20:09', 'hello'),
(6, '11', '2025-01-22 17:21:41', 'hello'),
(7, '11', '2025-01-22 17:32:40', 'hello'),
(8, '11', '2025-01-23 05:03:14', 'welcome'),
(9, '11', '2025-01-23 05:03:18', 'welcome'),
(10, '11', '2025-01-23 05:03:22', 'welcome'),
(11, '11', '2025-01-23 05:03:27', 'welcome'),
(12, '2', '2025-01-25 10:34:10', 'hello'),
(13, '1', '2025-01-25 10:35:27', 'welcome'),
(14, '2', '2025-01-25 10:36:48', 'jjkhkjh'),
(15, '3', '2025-01-25 11:32:31', ',d'),
(16, '3', '2025-01-25 14:30:00', 'This lead is interested in premium packages.'),
(17, '3', '2025-01-25 14:30:00', 'This lead is welcome in premium packages.'),
(18, '4', '2025-01-25 11:42:56', 'hello'),
(19, '4', '2025-01-25 11:48:40', 'welcome'),
(20, '3', '2025-01-25 14:30:00', 'This lead is welcome in premium packages.'),
(21, '6', '2025-01-26T11:29:29.339Z', 'hello'),
(22, '3', '2025-01-26T12:08:34.481Z', 'welcome'),
(23, '3', '2025-01-26T12:09:20.279Z', 'hello'),
(24, '10', '2025-01-26T18:03:21.280Z', 'hello'),
(25, '10', '2025-01-26T18:03:24.846Z', 'welcome');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','manager','employee') NOT NULL,
  `assign_manager` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `managerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `mobile`, `email`, `password`, `role`, `assign_manager`, `created_at`, `updated_at`, `managerId`) VALUES
(1, 'HEMANTH', '9666010238', 'uppalahemanth4@gmail.com', '$2b$10$Oe0BNkBkFxlQiLKCDz3RtOe/nHPvZ3X/INUHvxfIw404uweiK7PQ.', 'admin', NULL, '2025-01-16 07:52:58', '2025-01-16 09:32:54', NULL),
(11, 'rajesh', '9912974173', 'rajesh@gmail.com', '$2b$10$ZJep4J2N7UYzA98NnCX/guHDEUufVILzmaUENiiRvEd0rNUmWGT2O', 'manager', NULL, '2025-01-16 09:29:04', '2025-01-16 09:29:04', NULL),
(12, 'Priya', '9010053093', 'priya@gmail.com', '$2b$10$ASAxnwQ57v6PfDxb7Ndz4OGTlKZONU21r1WA8.03ZJdgasMuD5lce', 'employee', 'rajesh', '2025-01-16 09:30:08', '2025-01-16 09:30:08', 11),
(30, 'Admin', '9347905987', 'admin@gmail.com', '$2b$10$iuo4khUs4xTU7cNSn3xg4uDwv4YBBhTTsPij12bQNonXePNWcUkUG', 'admin', NULL, '2025-01-27 03:13:40', '2025-01-27 03:14:00', NULL),
(31, 'Mahim Mehta', '9347905987', 'mahim.mehta@funstay.in', '$2b$10$FNKrPWkqesvDf7vMAq2Tre8jNFBx57r70EWyl0PeKjPLyEb9b1cSO', 'manager', NULL, '2025-01-27 03:17:20', '2025-01-27 03:17:20', NULL),
(32, 'Ruchi Sarangi', '9347905987', 'ruchi.sarangi@funstay.in', '$2b$10$MT24PhgiDHq.CSUdlU39eus14GycQRUcBBvH06VbfL.8QIMm0BdRu', 'manager', NULL, '2025-01-27 03:18:30', '2025-01-27 03:18:30', NULL),
(33, 'Nitin', '9347905987', 'nitin@funstay.in', '$2b$10$JRKsnBGKxRrVXKdxH0TQveAGLTo3rq/kI6shkqmBz.aZZWu4thcT.', 'employee', 'Mahim Mehta', '2025-01-27 03:19:17', '2025-01-27 03:19:17', 31),
(34, 'Sweta Nanda', '9347905987', 'sweta.nanda@funstay.in', '$2b$10$EK/FtXXkFh4ND43khDTWxu0fjNj9yf.Ia8w/eKltnh8hkcBwR9h0.', 'employee', 'Mahim Mehta', '2025-01-27 03:19:56', '2025-01-27 03:19:56', 31),
(35, 'Priyanka', '9347905987', 'priyanka.p@funstay.in', '$2b$10$QKC5Bvn9CuaODNfjhzIlGOHcCIoj7lYxZA6/muWmUbvsIV984PTnS', 'employee', 'Mahim Mehta', '2025-01-27 03:20:32', '2025-01-27 03:20:32', 31),
(36, 'Jai Chandra', '9347905987', 'jai.chandra@funstay.in', '$2b$10$Ckd1V4LqtU0Y2JRy4ArVpO87oYx43peua8D8Nfrak07nImcb4IdGW', 'employee', 'Ruchi Sarangi', '2025-01-27 03:21:27', '2025-01-27 03:21:27', 32),
(37, 'Puspak Das', '9347905987', 'puspak.das@funstay.in', '$2b$10$dqzM0kT/TVd.zQpB1rense6/LjLXhsUnPSCCZYxeB6H6YH5ZYCSTG', 'employee', 'Ruchi Sarangi', '2025-01-27 03:22:06', '2025-01-27 03:22:06', 32),
(38, 'Manjunath', '9347905987', 'manjunath.gr@funstay.in', '$2b$10$vaQinzI5SXAdCYCRVgAm5eelz1XFOMORvozv80nkOF2jdYrKmDhHm', 'employee', 'Ruchi Sarangi', '2025-01-27 03:22:42', '2025-01-27 03:22:42', 32);

-- --------------------------------------------------------

--
-- Table structure for table `followups`
--

CREATE TABLE `followups` (
  `id` int(11) NOT NULL,
  `leadId` int(11) DEFAULT NULL,
  `tripName` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `type` enum('individual','group','corporate') NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `sources` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `leader_name` varchar(255) DEFAULT NULL,
  `leader_email` varchar(255) DEFAULT NULL,
  `another_name` varchar(255) DEFAULT NULL,
  `another_email` varchar(255) DEFAULT NULL,
  `another_phone_number` varchar(15) DEFAULT NULL,
  `corporate_id` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `type`, `name`, `email`, `phone_number`, `sources`, `group_name`, `leader_name`, `leader_email`, `another_name`, `another_email`, `another_phone_number`, `corporate_id`, `description`, `status`, `created_at`) VALUES
(2, 'individual', 'hemanth', 'hemanth@gmail.com', '9912974173', 'Website', '', '', '', '', '', '', '', 'hyd', 'Qualified', '2025-01-07 09:59:52'),
(3, 'group', 'hemanth', 'hemanth@gmail.com', '9912974173', 'Referral', '', '', '', 'hemanth', 'hemanth@gmail.com', '9912974173', '', 'hyd', 'Qualified', '2025-01-07 10:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `travel_opportunity`
--

CREATE TABLE `travel_opportunity` (
  `id` int(11) NOT NULL,
  `leadid` varchar(50) DEFAULT NULL,
  `destination` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `adults_count` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  `child_ages` varchar(255) DEFAULT NULL,
  `approx_budget` varchar(255) DEFAULT NULL,
  `assignee` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `reminder_setting` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_opportunity`
--

INSERT INTO `travel_opportunity` (`id`, `leadid`, `destination`, `start_date`, `end_date`, `duration`, `adults_count`, `children_count`, `child_ages`, `approx_budget`, `assignee`, `notes`, `comments`, `reminder_setting`, `created_at`, `updated_at`) VALUES
(1, '10', 'goa', '2025-02-01', '2025-02-08', '7 days', 1, 1, '9', '1998', NULL, 'no', NULL, '2025-01-29', '2025-01-26 23:29:19', '2025-01-26 23:29:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addleads`
--
ALTER TABLE `addleads`
  ADD PRIMARY KEY (`leadid`),
  ADD UNIQUE KEY `leadcode` (`leadcode`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `followups`
--
ALTER TABLE `followups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`leadId`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_opportunity`
--
ALTER TABLE `travel_opportunity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addleads`
--
ALTER TABLE `addleads`
  MODIFY `leadid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `followups`
--
ALTER TABLE `followups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `travel_opportunity`
--
ALTER TABLE `travel_opportunity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followups`
--
ALTER TABLE `followups`
  ADD CONSTRAINT `followups_ibfk_1` FOREIGN KEY (`leadId`) REFERENCES `leads` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
