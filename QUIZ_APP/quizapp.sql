-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 17, 2020 at 11:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(49, 4, 'Preprocessed Hypertext Page', 0, '2019-12-15 20:31:25', '2019-12-15 20:31:25'),
(50, 4, 'Hypertext Markup Language', 0, '2019-12-15 20:31:25', '2019-12-15 20:31:25'),
(51, 4, '. PHP: Hypertext Preprocessor', 1, '2019-12-15 20:31:25', '2019-12-15 20:31:25'),
(52, 4, 'Hypertext Transfer Protocol', 0, '2019-12-15 20:31:25', '2019-12-15 20:31:25'),
(53, 5, '10', 0, '2019-12-15 21:32:09', '2019-12-15 21:32:09'),
(54, 5, '20', 0, '2019-12-15 21:32:09', '2019-12-15 21:32:09'),
(55, 5, '30', 1, '2019-12-15 21:32:09', '2019-12-15 21:32:09'),
(56, 5, '40', 0, '2019-12-15 21:32:09', '2019-12-15 21:32:09'),
(57, 6, 'Used to register a global variable', 0, '2019-12-15 21:33:58', '2019-12-15 21:33:58'),
(58, 6, 'Used to initialize a session', 0, '2019-12-15 21:33:58', '2019-12-15 21:33:58'),
(59, 6, 'Used to store variables of the current session', 1, '2019-12-15 21:33:58', '2019-12-15 21:33:58'),
(60, 6, 'none of the above', 0, '2019-12-15 21:33:58', '2019-12-15 21:33:58'),
(61, 7, '16', 1, '2019-12-15 21:35:02', '2019-12-15 21:35:02'),
(62, 7, '17', 0, '2019-12-15 21:35:02', '2019-12-15 21:35:02'),
(63, 7, '18', 0, '2019-12-15 21:35:02', '2019-12-15 21:35:02'),
(64, 7, '20', 0, '2019-12-15 21:35:02', '2019-12-15 21:35:02'),
(69, 8, 'CMS', 1, '2019-12-17 19:21:01', '2019-12-17 19:21:01'),
(70, 8, 'Set of library enriched with fucntions', 0, '2019-12-17 19:21:01', '2019-12-17 19:21:01'),
(71, 8, 'Framework for designing dynamic pages', 0, '2019-12-17 19:21:01', '2019-12-17 19:21:01'),
(72, 8, 'Framework and distribution system for reusable PHP components', 0, '2019-12-17 19:21:01', '2019-12-17 19:21:01'),
(73, 9, 'unset()', 1, '2019-12-17 22:38:53', '2019-12-17 22:38:53'),
(74, 9, 'delete()', 0, '2019-12-17 22:38:53', '2019-12-17 22:38:53'),
(75, 9, 'unlink()', 0, '2019-12-17 22:38:53', '2019-12-17 22:38:53'),
(76, 9, 'delete()', 0, '2019-12-17 22:38:53', '2019-12-17 22:38:53'),
(77, 10, '1MB', 0, '2019-12-17 22:41:15', '2019-12-17 22:41:15'),
(78, 10, '2MB', 1, '2019-12-17 22:41:15', '2019-12-17 22:41:15'),
(79, 10, '2.5MB', 0, '2019-12-17 22:41:15', '2019-12-17 22:41:15'),
(80, 10, '3MB', 0, '2019-12-17 22:41:15', '2019-12-17 22:41:15'),
(81, 11, 'Horizon', 0, '2020-04-14 15:33:55', '2020-04-14 15:33:55'),
(82, 11, 'Dusk', 0, '2020-04-14 15:33:55', '2020-04-14 15:33:55'),
(83, 11, 'Artisan', 1, '2020-04-14 15:33:55', '2020-04-14 15:33:55'),
(84, 11, 'Kernel', 0, '2020-04-14 15:33:55', '2020-04-14 15:33:55'),
(85, 12, 'average', 0, '2020-04-14 15:36:59', '2020-04-14 15:36:59'),
(86, 12, 'avg', 1, '2020-04-14 15:36:59', '2020-04-14 15:36:59'),
(87, 12, 'median', 0, '2020-04-14 15:36:59', '2020-04-14 15:36:59'),
(88, 12, 'avg_val', 0, '2020-04-14 15:36:59', '2020-04-14 15:36:59'),
(89, 13, 'split()', 0, '2020-04-14 15:38:00', '2020-04-14 15:38:00'),
(90, 13, 'chunk()', 1, '2020-04-14 15:38:00', '2020-04-14 15:38:00'),
(91, 13, 'explode()', 0, '2020-04-14 15:38:00', '2020-04-14 15:38:00'),
(92, 13, 'break()', 0, '2020-04-14 15:38:00', '2020-04-14 15:38:00'),
(93, 14, 'cache:flush', 0, '2020-04-14 15:40:57', '2020-04-14 15:40:57'),
(94, 14, 'cache:clear', 1, '2020-04-14 15:40:57', '2020-04-14 15:40:57'),
(95, 14, 'cache:forget', 0, '2020-04-14 15:40:57', '2020-04-14 15:40:57'),
(96, 14, 'cache:remove', 0, '2020-04-14 15:40:57', '2020-04-14 15:40:57'),
(97, 15, 'paragraph', 0, '2020-04-14 15:42:20', '2020-04-14 15:42:20'),
(98, 15, 'heading', 0, '2020-04-14 15:42:20', '2020-04-14 15:42:20'),
(99, 15, 'list', 0, '2020-04-14 15:42:20', '2020-04-14 15:42:20'),
(100, 15, 'All', 1, '2020-04-14 15:42:20', '2020-04-14 15:42:20'),
(101, 16, 'Hyper Text Markup Language', 1, '2020-04-14 15:43:13', '2020-04-14 15:43:13'),
(102, 16, 'High Text Markup Language', 0, '2020-04-14 15:43:13', '2020-04-14 15:43:13'),
(103, 16, 'Hyper Tabular Markup Language', 0, '2020-04-14 15:43:13', '2020-04-14 15:43:13'),
(104, 16, 'None', 0, '2020-04-14 15:43:13', '2020-04-14 15:43:13'),
(105, 17, '<TD>', 0, '2020-04-14 15:44:07', '2020-04-14 15:44:07'),
(106, 17, '<br>', 0, '2020-04-14 15:44:07', '2020-04-14 15:44:07'),
(107, 17, '<P>', 1, '2020-04-14 15:44:07', '2020-04-14 15:44:07'),
(108, 17, '<TR>', 0, '2020-04-14 15:44:07', '2020-04-14 15:44:07'),
(109, 18, '<LL>', 0, '2020-04-14 15:44:53', '2020-04-14 15:44:53'),
(110, 18, '<DD>', 0, '2020-04-14 15:44:53', '2020-04-14 15:44:53'),
(111, 18, '<DL>', 1, '2020-04-14 15:44:53', '2020-04-14 15:44:53'),
(112, 18, '<DS>', 0, '2020-04-14 15:44:53', '2020-04-14 15:44:53'),
(113, 19, '<head>', 0, '2020-04-14 15:45:33', '2020-04-14 15:45:33'),
(114, 19, '<h6>', 0, '2020-04-14 15:45:33', '2020-04-14 15:45:33'),
(115, 19, '<heading>', 0, '2020-04-14 15:45:33', '2020-04-14 15:45:33'),
(116, 19, '<h1>', 1, '2020-04-14 15:45:33', '2020-04-14 15:45:33'),
(117, 20, 'Method', 0, '2020-04-14 15:46:11', '2020-04-14 15:46:11'),
(118, 20, 'Action', 0, '2020-04-14 15:46:11', '2020-04-14 15:46:11'),
(119, 20, 'Both (a)&(b)', 1, '2020-04-14 15:46:11', '2020-04-14 15:46:11'),
(120, 20, 'None of these', 0, '2020-04-14 15:46:11', '2020-04-14 15:46:11'),
(129, 21, 'size', 0, '2020-04-14 16:10:00', '2020-04-14 16:10:00'),
(130, 21, 'len', 0, '2020-04-14 16:10:00', '2020-04-14 16:10:00'),
(131, 21, 'maxlength', 0, '2020-04-14 16:10:00', '2020-04-14 16:10:00'),
(132, 21, 'all of these', 1, '2020-04-14 16:10:00', '2020-04-14 16:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_024239_create_quizzes_table', 1),
(5, '2019_12_14_024303_create_questions_table', 1),
(6, '2019_12_14_024322_create_answers_table', 1),
(7, '2019_12_14_024438_create_quiz_user_table', 1),
(8, '2019_12_14_025713_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `quiz_id`, `created_at`, `updated_at`) VALUES
(4, 'What does PHP stand for?', 1, '2019-12-13 22:55:26', '2019-12-14 22:52:21'),
(5, 'What is the default execution time set in set_time_limit()?', 1, '2019-12-15 21:32:09', '2019-12-15 21:32:09'),
(6, 'What is the purpose of $_SESSION[]?', 1, '2019-12-15 21:33:58', '2019-12-15 21:33:58'),
(7, 'How many error levels are available in PHP ?', 1, '2019-12-15 21:35:02', '2019-12-15 21:35:02'),
(8, 'What is Joomla in PHP?', 1, '2019-12-15 21:36:51', '2019-12-15 21:36:51'),
(9, '______ is used to unset a variable in PHP ?', 1, '2019-12-17 22:38:53', '2019-12-17 22:38:53'),
(10, 'What is the default size of a file set in upload_max_filesize ?', 1, '2019-12-17 22:41:15', '2019-12-17 22:41:15'),
(11, 'What is the name of the command-line interface provided by Laravel that provides a number of helpful commands?', 2, '2020-04-14 15:33:55', '2020-04-14 15:33:55'),
(12, 'Which method returns the average value of a given key ?', 2, '2020-04-14 15:36:59', '2020-04-14 15:36:59'),
(13, 'Which method breaks the collection into multiple, smaller collections of a given size', 2, '2020-04-14 15:38:00', '2020-04-14 15:38:00'),
(14, 'Artisan command to flush the application cache:', 2, '2020-04-14 15:40:57', '2020-04-14 15:40:57'),
(15, 'The common element which describe the web page, is ?', 3, '2020-04-14 15:42:20', '2020-04-14 15:42:20'),
(16, 'HTML stands for?', 3, '2020-04-14 15:43:13', '2020-04-14 15:43:13'),
(17, 'Which of the following tag is used to mark a beginning of paragraph ?', 3, '2020-04-14 15:44:07', '2020-04-14 15:44:07'),
(18, 'From which tag descriptive list starts ?', 3, '2020-04-14 15:44:53', '2020-04-14 15:44:53'),
(19, 'Correct HTML tag for the largest heading is', 3, '2020-04-14 15:45:33', '2020-04-14 15:45:33'),
(20, 'The attribute of <form> tag', 3, '2020-04-14 15:46:11', '2020-04-14 15:46:11'),
(21, 'Which of the following attributes of text box control allow to limit the maximum character?', 3, '2020-04-14 15:47:47', '2020-04-14 15:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `minutes`, `created_at`, `updated_at`) VALUES
(1, 'php quiz', 'This contains PHP questions', 10, NULL, '2020-03-27 16:45:42'),
(2, 'Laravel Quiz', 'This includes LARAVEL questions', 10, '2020-04-14 15:32:19', '2020-04-14 15:32:19'),
(3, 'HTML exam', 'Only html', 10, '2020-04-14 15:41:27', '2020-04-14 15:41:27'),
(4, 'JS Quiz', 'includes js questions', 10, '2020-04-14 15:49:02', '2020-04-14 15:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_user`
--

INSERT INTO `quiz_user` (`id`, `quiz_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 1, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `question_id`, `quiz_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(39, 9, 4, 1, 51, '2020-04-14 16:15:09', '2020-04-14 16:15:26'),
(40, 9, 5, 1, 54, '2020-04-14 16:15:32', '2020-04-14 16:15:32'),
(41, 9, 6, 1, 57, '2020-04-14 16:15:38', '2020-04-14 16:15:38'),
(42, 9, 7, 1, 61, '2020-04-14 16:15:40', '2020-04-14 16:15:40'),
(43, 9, 8, 1, 69, '2020-04-14 16:15:42', '2020-04-14 16:15:42'),
(44, 9, 9, 1, 73, '2020-04-14 16:15:44', '2020-04-14 16:15:44'),
(45, 9, 10, 1, 78, '2020-04-14 16:15:46', '2020-04-14 16:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `visible_password`, `occupation`, `address`, `phone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'nick', 'nick@gmail.com', '2019-12-17 13:00:00', '$2y$10$2Fcg3ajV/EAYxbbUKYJOWOvWI.Pifr2CtiLg.6spy.ZLKnvrjcPma', '   apple123', 'php programmer', 'melbourne', '32423423', 0, NULL, '2019-12-15 23:40:32', '2019-12-15 23:40:32'),
(7, 'admin', 'admin123@gmail.com', '2019-12-17 01:01:22', '$2y$10$qN9L6ZbB1d0RQHNEI1ls/O9MU.M606AXtvypm5033Rajsse41lxGK', 'password', 'CEO', 'Australia', '03453494', 1, NULL, '2019-12-17 01:01:22', '2019-12-17 01:01:22'),
(9, 'louis', 'louis@gmail.com', '2019-12-17 13:00:00', '$2y$10$0FAPoOXyqatO8cnOHBOo8O9f5gdTHL.G6xeJaP8Q3eWIB4annOgAm', 'apple123', 'programmer', 'melbourne', '32423423', 0, 'PUI66OsH5BinqnXdrCPeNYkLf2JmDqZIj656Vzkq84GpELiOhvvmTiGdtzua', '2019-12-17 21:36:20', '2019-12-17 21:36:20'),
(10, 'RIchard', 'richard@gmail.com', '2019-12-17 13:00:00', '$2y$10$NUWGfzRHkoF53QJV.RCdLODII4sA5JLxVbPpUmzviLBupYTyIn4Au', 'apple123     ', 'programmer', 'Melbourne', '3423423', 0, NULL, '2019-12-17 21:39:32', '2020-03-27 12:24:54'),
(11, 'ranjeet', 'ranjeet@gmail.com', NULL, '$2y$10$2Ty.tkFM6kGhWsePqXHX3uAbmLh0/dHVkDxxk45bKzalhUdCNRxny', ' apple123  ', 'Apps Developer', 'Melbourne', '989892332', 0, NULL, '2020-03-27 12:23:03', '2020-03-27 17:08:26'),
(12, 'david doe', 'david@gmail.com', NULL, '$2y$10$JzyZuixpzlgxKX1OLrLxFOJ2wMPQBJ3KZglJofMsty9..3Qc7vz/2', 'apple123', 'intern', 'australia', '77965999', 0, NULL, '2020-03-27 12:26:02', '2020-03-27 12:26:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_user`
--
ALTER TABLE `quiz_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
