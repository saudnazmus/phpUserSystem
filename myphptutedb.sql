-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 06:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myphptutedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
(1, 'Ahnaf', 'Sabir', 'ahnaf@gmail.com', '2022-05-27 19:14:59'),
(2, 'Nazmus', 'Saud', 'saudnazmus@gmail.com', '2022-05-27 19:17:40'),
(3, 'Rakib', 'Hasan', 'masud@gmail.com', '2022-06-11 09:03:34'),
(4, 'Lition', 'Khan', 'liton@gmail.com', '2022-06-23 15:44:18'),
(7, 'Nurul', 'Haque', 'nurul@gmail.com', '2022-06-11 09:35:42'),
(8, 'Asad', 'Hossain', 'asad@gmail.com', '2022-06-11 09:35:43'),
(9, 'Mahbub', 'Alam', 'mahbub@gmail.com', '2022-06-11 09:35:43'),
(10, 'Nurul', 'Haque', 'nurul@gmail.com', '2022-06-11 09:37:12'),
(11, 'Asad', 'Hossain', 'asad@gmail.com', '2022-06-11 09:37:12'),
(12, 'Mahbub', 'Alam', 'mahbub@gmail.com', '2022-06-11 09:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_first_name` varchar(30) NOT NULL,
  `user_last_name` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_first_name`, `user_last_name`, `user_email`, `user_password`) VALUES
(1, 'Nazmus', 'Saud', 'saud@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Ahnaf', 'Sabir', 'ahnaf@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Nurul', 'Haque', 'nurul@gmail.com', '6968a2c57c3a4fee8fadc79a80355e4d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
