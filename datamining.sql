-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2017 at 01:41 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `datamining`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE IF NOT EXISTS `activations` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'CVeyj9GnJsaI7gZFjci5dniN3zKMzODg', 1, '2017-01-18 23:25:32', '2017-01-18 23:25:32', '2017-01-18 23:25:32'),
(2, 3, 'SYb9qDCgB46aCb7JtcBbQMlmteXS1cD5', 1, '2017-01-19 00:02:28', '2017-01-19 00:02:28', '2017-01-19 00:02:28'),
(3, 4, 'iSJYWIfBxGWXOO0FPXOah1M6qQYtOajd', 1, '2017-01-19 20:33:32', '2017-01-19 20:33:32', '2017-01-19 20:33:32'),
(4, 5, 'e1p1FXyqRtbif6p1IzY10SK2DwYb1Icy', 1, '2017-01-19 20:34:33', '2017-01-19 20:34:33', '2017-01-19 20:34:33'),
(5, 6, 'bxUtFNZgbu1ooKmsZPnuf7dSuwp9Z5E4', 1, '2017-01-19 20:47:50', '2017-01-19 20:47:50', '2017-01-19 20:47:50'),
(6, 7, 'jfuXUfnz40Px3d1dkhfCM45IP8XhYQgu', 1, '2017-01-19 20:50:14', '2017-01-19 20:50:14', '2017-01-19 20:50:14'),
(7, 8, 'HfEF7GuEfZWEz27G91Mvn9i0mUjM123s', 1, '2017-01-19 20:53:39', '2017-01-19 20:53:39', '2017-01-19 20:53:39'),
(8, 9, 'KDuDYnGesYT7Ti62DNsqGfIMRtU4AwGn', 1, '2017-01-19 20:55:39', '2017-01-19 20:55:39', '2017-01-19 20:55:39'),
(9, 10, '8WQVqHmBX6dCx4ldDMrBaDT2AWBOxGUw', 1, '2017-01-19 20:57:00', '2017-01-19 20:57:00', '2017-01-19 20:57:00'),
(10, 11, '3beoLuBneBn91pRAbog7DQp4BXF8jrGz', 1, '2017-01-19 20:58:12', '2017-01-19 20:58:12', '2017-01-19 20:58:12'),
(11, 12, 'mnIqYA6LkcwQS62kaGXqpLOI23bmQwNg', 1, '2017-01-19 20:59:39', '2017-01-19 20:59:39', '2017-01-19 20:59:39'),
(12, 13, 'pske6UoqceHvEVMKq8ET04lxyaQ0tDv8', 1, '2017-01-19 21:01:54', '2017-01-19 21:01:54', '2017-01-19 21:01:54'),
(13, 14, 'KhOzub1S7pyZo8xvbAxhQzOMguxfbbsF', 1, '2017-01-20 00:29:38', '2017-01-20 00:29:38', '2017-01-20 00:29:38'),
(14, 15, 'EhTA5XiqsNbRof978cc1CmzR8jM6Sr6h', 1, '2017-01-22 07:47:29', '2017-01-22 07:47:28', '2017-01-22 07:47:29'),
(15, 17, '4DW1gri7JSRSEaQ2qeQdwbfZLJ6e0rlL', 1, '2017-01-26 23:40:37', '2017-01-26 23:40:37', '2017-01-26 23:40:37'),
(16, 18, 'k0bwcIkTEt7fLDVFx8EmDFNm7p3c3iSN', 1, '2017-01-28 06:58:28', '2017-01-28 06:58:28', '2017-01-28 06:58:28'),
(17, 19, 'lrGcZB6Rs0DkZ5EDsnfOAHNZYdRI2j0P', 1, '2017-02-10 12:19:00', '2017-02-10 12:18:59', '2017-02-10 12:19:00'),
(18, 20, 'PxlX3m6I9eDQajS2uJ3kJ64czlXM3I59', 1, '2017-02-12 03:42:47', '2017-02-12 03:42:47', '2017-02-12 03:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `employer_profile`
--

CREATE TABLE IF NOT EXISTS `employer_profile` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `job_category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_sub_category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skill_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employer_profile`
--

INSERT INTO `employer_profile` (`id`, `user_id`, `job_title`, `job_description`, `job_category_id`, `job_sub_category_id`, `skill_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 3, 'web developer', 'searching for web developer', '1', '1', '1,2,3', '', '2017-02-04 03:17:38', '2017-02-04 03:25:49'),
(3, 3, 'Web developer', 'mssnjskj jsd', '3', '1', '2,3', '', '2017-02-05 03:26:44', '2017-02-05 03:26:44'),
(5, 2, 'rftgjhjk', 'hello ramesh k chha', '1', '1', '1,2,3', '', '2017-02-06 21:45:34', '2017-02-06 21:45:34'),
(6, 5, 'new', 'mamm', '1', '3', '2,4', '', '2017-02-07 10:12:17', '2017-02-07 10:12:17'),
(7, 4, 'fghjk', 'hy', '4', '2', '1,5', '', '2017-02-07 10:13:41', '2017-02-07 10:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_profile`
--

CREATE TABLE IF NOT EXISTS `freelancer_profile` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `resume_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resume_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `job_category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_sub_category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skill_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `web_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fb_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twtr_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gogpls_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lindin_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `exprns_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exprns_cname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exprns_start_date` datetime NOT NULL,
  `exprns_end_date` datetime NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `freelancer_profile`
--

INSERT INTO `freelancer_profile` (`id`, `user_id`, `resume_title`, `resume_description`, `job_category_id`, `job_sub_category_id`, `skill_id`, `location`, `web_url`, `fb_url`, `twtr_url`, `gogpls_url`, `lindin_url`, `school_name`, `start_date`, `end_date`, `exprns_title`, `exprns_cname`, `exprns_start_date`, `exprns_end_date`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, 'web developer', 'i am web developer from nepal', '1', '1', '1,2', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-02-04 08:47:14', '2017-02-04 08:51:04'),
(3, 1, 'web developer', 'hello ramesh k', '3', '1', '1,4,5', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-02-05 03:25:33', '2017-02-05 03:25:33'),
(4, 5, 'mamma', 'hy', '1', '4', '3,5', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-02-07 00:09:01', '2017-02-12 05:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE IF NOT EXISTS `job_category` (
`id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2017-01-19 00:19:56', '2017-01-19 00:19:56', 'web'),
(2, '2017-01-27 12:46:26', '2017-01-27 12:46:26', 'mm'),
(3, '2017-02-05 03:22:23', '2017-02-05 03:22:23', 'web development'),
(4, '2017-02-05 03:22:34', '2017-02-05 03:22:34', 'Writing');

-- --------------------------------------------------------

--
-- Table structure for table `job_sub_category`
--

CREATE TABLE IF NOT EXISTS `job_sub_category` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_sub_category`
--

INSERT INTO `job_sub_category` (`id`, `name`, `job_category_id`, `created_at`, `updated_at`) VALUES
(1, 'template development', 2, '2017-01-19 00:20:16', '2017-02-01 09:57:24'),
(2, 'test', 1, '2017-01-27 12:44:38', '2017-01-27 12:44:38'),
(3, 'website develoment', 1, '2017-02-01 09:53:33', '2017-02-01 09:53:33'),
(4, 'web site development', 3, '2017-02-05 03:23:02', '2017-02-05 03:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_category_id` int(10) unsigned NOT NULL,
  `job_sub_category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `name`, `job_category_id`, `job_sub_category_id`, `created_at`, `updated_at`) VALUES
(1, 'CSS', 1, 1, '2017-01-19 09:19:46', '2017-02-04 03:13:43'),
(2, 'Php', 1, 1, '2017-02-04 03:13:10', '2017-02-04 03:13:10'),
(3, 'HTML', 1, 1, '2017-02-04 03:13:29', '2017-02-04 03:13:29'),
(4, 'Html', 3, 3, '2017-02-05 03:23:33', '2017-02-05 03:23:33'),
(5, 'PHP', 3, 1, '2017-02-05 03:23:45', '2017-02-05 03:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('employer','freelancer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'freelancer',
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `remember_token`, `type`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'ramesh_adhikari95@yahoo.com', 'ramesh', '$2y$10$zExR5MML/vKIpHOK49ChN.CnLwD5LnHDn1ejSoI6NFeFCOVdgcCQy', '6XlooAqkVYPsYRXid04Am0nXufXma9DSvWKgMBpGbsOwgxz6SlNQrrqowarK', 'employer', NULL, NULL, NULL, NULL, '2017-01-18 20:37:55', '2017-02-10 11:47:21'),
(2, 'mama@m.com', 'mama', '$2y$10$z.mXK8jIpdpt5wtpDkCnOOYwarhzh61QhyNHtK3y9h4kLqv.a4r4u', NULL, 'employer', NULL, '2017-01-19 00:10:00', NULL, NULL, NULL, NULL),
(3, 'ramesh_adhikari90@yahoo.com', 'Ramesh Adhikari', 'dfgjh', NULL, 'freelancer', NULL, '2017-02-12 02:08:03', NULL, NULL, NULL, NULL),
(4, 'kalpan@k.com', 'kalpan', '$2y$10$J5Zk4vBjPZqi/Aac/P6kYeiV/PY/jsxWx3qi9VPEjFj7KgFk4zbwa', NULL, 'freelancer', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'kalpan@a.com', 'kalpan', '$2y$10$RWfgLuvG9lNoK3A/LzDhfedrwFe55R4gjXjaMKdmFQHwWdJDBIxUG', NULL, 'freelancer', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'apsar@a.com', 'apsar', '$2y$10$YKicZE/fDw9ziD/rXW2KGu0njyaz1xo3BcVliVZKxfRqr2F4kHdTi', NULL, 'freelancer', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'rambo@r.com', 'rambo', '$2y$10$5KwG//b7KmDjzkk1YMzqZe4jW0.VeVITng9TvpMjJ8TOofOyTEuci', NULL, 'freelancer', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'admin@a.com', 'admin', '$2y$10$Ur91fIjwE9OyyP7IYY...OSD2xV8WHp6BPKbssxNiRmWmO3UeYxi2', NULL, 'freelancer', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'hari@h.com', 'Hari', 'adramesh', NULL, 'freelancer', NULL, '2017-02-01 03:44:57', NULL, NULL, NULL, NULL),
(18, 'test@t.com', 'test', '$2y$10$UR7bhBsZyMWO933CVQLwT.qBfTPXTTXnR9Vood704vGeU6rv1qnui', NULL, 'freelancer', NULL, '2017-01-28 08:57:45', NULL, NULL, NULL, NULL),
(19, 'fafa@f.com', 'fafafaf', '$2y$10$N6GhVr4.P8h03TdpoV3FEeE6HU707jqb9PW3cXIdZ6HpXbQxI0ZEG', 'XgBOnwuFSxJW2ylZp3bpGccMkZ3V2jaDLj2ymu4SdLXAgU9TqHXMh5kcnIxq', 'freelancer', NULL, '2017-02-10 12:21:02', NULL, NULL, NULL, '2017-02-10 12:24:48'),
(20, 'user@u.com', 'user', '$2y$10$poGC9sUYt/I2epmddbhbZuE1u6ijKuK0FPEAanIeSFrSm2VtaE.2G', NULL, 'employer', NULL, '2017-02-12 03:42:56', NULL, NULL, NULL, NULL),
(21, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'df', 'ramesh', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'mama', 'mam', 'maam', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer_profile`
--
ALTER TABLE `employer_profile`
 ADD PRIMARY KEY (`id`), ADD KEY `employer_profile_user_id_foreign` (`user_id`);

--
-- Indexes for table `freelancer_profile`
--
ALTER TABLE `freelancer_profile`
 ADD PRIMARY KEY (`id`), ADD KEY `freelancer_profile_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_sub_category`
--
ALTER TABLE `job_sub_category`
 ADD PRIMARY KEY (`id`), ADD KEY `job_sub_category_job_category_id_foreign` (`job_category_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
 ADD PRIMARY KEY (`id`), ADD KEY `skill_job_category_id_foreign` (`job_category_id`), ADD KEY `skill_job_sub_category_id_foreign` (`job_sub_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `employer_profile`
--
ALTER TABLE `employer_profile`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `freelancer_profile`
--
ALTER TABLE `freelancer_profile`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `job_sub_category`
--
ALTER TABLE `job_sub_category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employer_profile`
--
ALTER TABLE `employer_profile`
ADD CONSTRAINT `employer_profile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `freelancer_profile`
--
ALTER TABLE `freelancer_profile`
ADD CONSTRAINT `freelancer_profile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `job_sub_category`
--
ALTER TABLE `job_sub_category`
ADD CONSTRAINT `job_sub_category_job_category_id_foreign` FOREIGN KEY (`job_category_id`) REFERENCES `job_category` (`id`);

--
-- Constraints for table `skill`
--
ALTER TABLE `skill`
ADD CONSTRAINT `skill_job_category_id_foreign` FOREIGN KEY (`job_category_id`) REFERENCES `job_category` (`id`),
ADD CONSTRAINT `skill_job_sub_category_id_foreign` FOREIGN KEY (`job_sub_category_id`) REFERENCES `job_sub_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
