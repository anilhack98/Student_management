-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 12:51 PM
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
-- Database: `student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `c_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`c_id`, `title`, `code`, `duration`, `created_at`, `updated_at`) VALUES
(2, 'BCA', 'SC101', '', '2024-11-11 15:21:42', '2024-11-14 15:53:09'),
(3, 'BIM', 'CS20', '', '2024-11-13 09:42:48', '2024-11-13 09:42:48'),
(5, 'CSIT', 'SF32', '', '2024-11-13 12:25:07', '2024-11-13 12:25:07'),
(6, 'BSW', 'SG23', '', '2024-11-13 12:25:21', '2024-11-13 12:25:21'),
(8, 'HM', 'HM45', '', '2024-11-14 15:56:53', '2024-11-14 15:56:53'),
(9, 'MBS', 'MB121', '', '2024-11-15 00:53:29', '2024-11-15 00:53:29'),
(10, 'BBS', 'BS100', '', '2024-11-15 00:54:03', '2024-11-15 00:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `e_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`e_id`, `s_id`, `c_id`) VALUES
(18, 9, 2),
(19, 10, 5),
(20, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` char(5) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_id`, `name`, `date_of_birth`, `gender`, `phone`, `email`, `address`, `created_at`, `update_at`) VALUES
(8, 'Bhusal', '2024-11-18', 'm', 9704743458, 'bhusal@gmail.com', 'Pokhara', '2024-11-15 00:53:06', '2024-11-15 00:53:06'),
(9, 'Anil', '2024-11-12', 'm', 9817243758, 'chaudhary98.sc@gmail.com', 'Kathmandu', '2024-11-15 00:54:29', '2024-11-15 00:54:29'),
(10, 'Sunit', '2024-11-20', 'm', 9836463634, 'sunit@gmail.com', 'Kathmandu', '2024-11-15 00:55:27', '2024-11-15 00:55:27'),
(11, 'Rakesh', '2024-11-25', 'm', 9857561234, 'rakesh@gmail.com', 'Kathmandu', '2024-11-15 00:55:56', '2024-11-15 00:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `email`, `password`) VALUES
(1, 'rakesh@gmail.com', 'rakesh'),
(3, 'chaudhary98.sc@gmail.com', 'chaudhary');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `enrollments_ibfk_1` (`c_id`),
  ADD KEY `enrollments_ibfk_2` (`s_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `courses` (`c_id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `students` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
