-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2024 at 03:32 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab-3`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` datetime(2) NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `thumbnail`, `author`, `publisher`, `publication`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Eos modi repudiandae sunt sunt et nostrum.', 'https://via.placeholder.com/640x480.png/00bbee?text=hic', 'Mrs. Viviane Dach', 'Bradtke-Howe', '2017-11-06 15:20:24.00', 4.7, 21, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(2, 'Possimus labore unde doloremque voluptatem et.', 'https://via.placeholder.com/640x480.png/00dd00?text=aut', 'Prof. Anabel Gottlieb Jr.', 'Nitzsche Group', '1984-10-29 15:30:24.00', 68.58, 10, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(3, 'Earum aut ut itaque.', 'https://via.placeholder.com/640x480.png/007755?text=accusamus', 'Frida Pouros V', 'Heathcote-Bernier', '1993-03-07 00:19:20.00', 10.4, 43, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(4, 'Quaerat deserunt consequatur iure voluptas aut.', 'https://via.placeholder.com/640x480.png/00eeee?text=nemo', 'Susanna Berge', 'Dietrich, Becker and Roberts', '1972-06-22 20:35:21.00', 47.52, 74, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(5, 'Velit delectus deserunt necessitatibus.', 'https://via.placeholder.com/640x480.png/0055dd?text=dolores', 'Henderson O\'Connell V', 'Legros, Toy and Keeling', '2006-06-05 01:15:06.00', 61.16, 47, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(6, 'Et nihil sequi necessitatibus et non itaque repudiandae odit.', 'https://via.placeholder.com/640x480.png/0033bb?text=consequuntur', 'Prof. Rosalee Prosacco', 'Skiles, Schinner and Kirlin', '2008-10-18 14:04:52.00', 17.57, 68, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(7, 'Quia amet tempora ipsa commodi officiis ducimus.', 'https://via.placeholder.com/640x480.png/0077bb?text=iste', 'Ciara Auer MD', 'Collier Inc', '2021-10-09 01:52:33.00', 4.07, 30, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(8, 'Sequi necessitatibus est quisquam sed asperiores.', 'https://via.placeholder.com/640x480.png/001188?text=sit', 'Mrs. Tamara Monahan DDS', 'Jakubowski-Lakin', '1982-12-26 12:35:58.00', 12.37, 54, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(9, 'Modi excepturi praesentium mollitia atque.', 'https://via.placeholder.com/640x480.png/0022dd?text=incidunt', 'Dr. Katrina Durgan', 'VonRueden, Gottlieb and Osinski', '1982-04-21 08:59:17.00', 51.83, 81, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(10, 'Suscipit nisi in nisi nulla fugit quisquam.', 'https://via.placeholder.com/640x480.png/00ff22?text=natus', 'Jerrold Dicki', 'Lehner-Wolf', '1980-11-20 02:19:57.00', 35.77, 61, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(11, 'Reiciendis debitis aut et distinctio deleniti.', 'https://via.placeholder.com/640x480.png/004411?text=rerum', 'Kaycee Gerhold', 'Mayer-Strosin', '2019-11-08 01:19:49.00', 39.77, 5, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(12, 'Alias laudantium laudantium cumque et enim sit voluptatem similique.', 'https://via.placeholder.com/640x480.png/00bbaa?text=ea', 'Prof. Johnny Lynch', 'Harris PLC', '1970-11-04 04:41:55.00', 85.93, 6, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(13, 'Modi quidem et quo.', 'https://via.placeholder.com/640x480.png/00ff99?text=officia', 'Nikita Jacobs', 'Dickens LLC', '1989-05-22 09:10:01.00', 21.67, 31, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(14, 'At temporibus est nostrum dolore facilis illo autem.', 'https://via.placeholder.com/640x480.png/00ee99?text=eum', 'Helen Wiegand', 'Schowalter PLC', '1984-01-30 19:11:20.00', 52.09, 25, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(15, 'Dolor quae labore exercitationem nihil sit recusandae nobis.', 'https://via.placeholder.com/640x480.png/006633?text=et', 'Silas Nader', 'Mraz Inc', '2005-04-20 08:51:53.00', 90.72, 34, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(16, 'Aut perspiciatis quibusdam dolores ratione.', 'https://via.placeholder.com/640x480.png/009988?text=sit', 'Maximo Grant', 'Mayer Inc', '2013-08-10 00:05:33.00', 69.01, 96, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(17, 'Harum vitae eveniet vero alias qui.', 'https://via.placeholder.com/640x480.png/000088?text=veritatis', 'Miss Minnie Nicolas I', 'Feil-Hagenes', '2022-07-24 07:05:20.00', 83.67, 2, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(18, 'Labore corrupti et eos ut.', 'https://via.placeholder.com/640x480.png/0022aa?text=ipsum', 'Cameron Schimmel', 'Schmeler, Schimmel and Heller', '2012-02-24 01:09:58.00', 51.37, 97, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(19, 'Earum non omnis perferendis dolorum quae temporibus quae.', 'https://via.placeholder.com/640x480.png/003322?text=ut', 'Prof. Adan Koch Sr.', 'Stark PLC', '2017-04-29 09:36:11.00', 4.15, 23, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(20, 'Cum ut occaecati quae vitae rerum aut consequuntur aperiam.', 'https://via.placeholder.com/640x480.png/00ff88?text=quia', 'Mrs. Ashleigh Dach III', 'Predovic, Lebsack and Ledner', '2010-04-06 09:37:38.00', 64.23, 90, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(21, 'Perferendis iste repellat illum dolores nam velit.', 'https://via.placeholder.com/640x480.png/0088bb?text=et', 'Mr. Lorenzo Rodriguez', 'Muller, Cronin and Thiel', '1987-10-28 17:13:09.00', 16.4, 67, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(22, 'Tempora consectetur quaerat voluptas quas dignissimos et libero.', 'https://via.placeholder.com/640x480.png/00bbaa?text=sint', 'Jacinto Schaefer', 'Moore Group', '2010-05-21 23:40:40.00', 28.34, 24, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(23, 'Nisi rerum quod quod iusto necessitatibus modi.', 'https://via.placeholder.com/640x480.png/005544?text=cum', 'Ms. Ludie Wunsch IV', 'Keeling, Hermann and Block', '2023-10-16 11:24:52.00', 50.2, 47, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(24, 'Ut vero sit numquam placeat.', 'https://via.placeholder.com/640x480.png/0066dd?text=quo', 'Joe Metz DDS', 'Mitchell, Gottlieb and Powlowski', '1996-06-04 20:40:19.00', 24.76, 85, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(25, 'Non dolores excepturi iste eum ex rerum.', 'https://via.placeholder.com/640x480.png/00ee99?text=esse', 'Brian Jacobs', 'Wyman-Hessel', '1988-11-13 09:45:58.00', 80.57, 65, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(26, 'Cum placeat pariatur et atque.', 'https://via.placeholder.com/640x480.png/008877?text=nostrum', 'Prof. Jacey Gislason', 'Hodkiewicz-Renner', '1989-01-02 08:38:16.00', 7.38, 85, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(27, 'Pariatur consequuntur omnis laboriosam dolores error sit voluptatem.', 'https://via.placeholder.com/640x480.png/00dd55?text=quo', 'Jacynthe Ullrich', 'Wilderman-Yost', '1991-05-24 13:01:21.00', 67.41, 57, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(28, 'Quibusdam et asperiores quod excepturi eum ad praesentium.', 'https://via.placeholder.com/640x480.png/00bbbb?text=blanditiis', 'Aniya Wuckert', 'Miller-Nicolas', '2000-02-13 20:09:11.00', 62.34, 72, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(29, 'Et dolorum ducimus ut assumenda quisquam et.', 'https://via.placeholder.com/640x480.png/000033?text=saepe', 'Brionna Ullrich DVM', 'Schmitt Ltd', '1995-06-29 00:48:00.00', 92.22, 64, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(30, 'Cum ut harum modi nihil culpa cumque.', 'https://via.placeholder.com/640x480.png/00aacc?text=consequatur', 'Christopher Dooley', 'Botsford, Kovacek and Breitenberg', '2011-06-16 08:13:56.00', 16.77, 74, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(31, 'Optio dolorem ut similique consequatur.', 'https://via.placeholder.com/640x480.png/006644?text=alias', 'Ms. Arvilla Wehner IV', 'Greenfelder, Romaguera and Dare', '1979-06-08 15:30:05.00', 76.85, 18, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(32, 'In voluptas maxime dolorem optio rerum est.', 'https://via.placeholder.com/640x480.png/00dd55?text=vitae', 'Miss Petra Padberg III', 'Haag-Connelly', '1977-07-28 16:49:22.00', 39.54, 78, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(33, 'Officiis velit quia et voluptas commodi.', 'https://via.placeholder.com/640x480.png/005500?text=aut', 'Rodrick Kshlerin', 'Price Inc', '2019-06-14 15:22:44.00', 86.55, 16, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(34, 'Facere officia voluptatem aspernatur impedit.', 'https://via.placeholder.com/640x480.png/00bbee?text=pariatur', 'Gwendolyn Pacocha II', 'Cruickshank-Ritchie', '2020-03-05 15:57:08.00', 77.4, 75, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(35, 'Accusantium saepe rerum explicabo et laborum.', 'https://via.placeholder.com/640x480.png/000033?text=enim', 'Dr. Grayson Connelly', 'Nitzsche Group', '1975-12-22 15:08:55.00', 90.77, 36, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(36, 'Sunt qui veniam quia voluptas aut omnis.', 'https://via.placeholder.com/640x480.png/002266?text=fugiat', 'Mrs. Scarlett McClure', 'Gerlach LLC', '2024-04-20 12:39:26.00', 60.51, 19, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(37, 'Qui aut ducimus culpa est.', 'https://via.placeholder.com/640x480.png/0022ee?text=repudiandae', 'Jody Bashirian II', 'Nikolaus and Sons', '1978-06-20 04:11:11.00', 42.92, 3, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(38, 'Rerum accusamus cum nostrum deserunt consequuntur.', 'https://via.placeholder.com/640x480.png/007777?text=facilis', 'Neva Tremblay', 'Sawayn and Sons', '1986-10-09 06:52:52.00', 56.78, 51, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(39, 'Id ipsum dignissimos accusantium perspiciatis magnam.', 'https://via.placeholder.com/640x480.png/0066ff?text=quia', 'Michael Fadel', 'Roob-Mills', '2012-04-25 18:17:21.00', 7.87, 88, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(40, 'Ut sint dolor amet quidem.', 'https://via.placeholder.com/640x480.png/00aa77?text=molestiae', 'Prof. Cecile Terry III', 'Gerhold-Erdman', '2004-07-31 03:47:09.00', 61.09, 61, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(41, 'Voluptatibus ea ducimus qui deserunt dignissimos sed ut.', 'https://via.placeholder.com/640x480.png/00aa55?text=ratione', 'Mitchell Huels', 'Kiehn, O\'Kon and Carroll', '1984-04-08 10:43:48.00', 20.71, 9, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(42, 'Placeat aperiam nesciunt ratione dolorem tenetur nam.', 'https://via.placeholder.com/640x480.png/009900?text=commodi', 'Veronica Ferry V', 'Halvorson-Connelly', '1989-09-29 22:31:01.00', 27.88, 8, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(43, 'Blanditiis soluta minima velit vero est omnis.', 'https://via.placeholder.com/640x480.png/00eeee?text=nemo', 'Hilma Mosciski', 'McDermott PLC', '2001-10-07 18:51:54.00', 33.93, 72, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(44, 'Dignissimos fuga in repudiandae vel velit eius dolorem consequatur.', 'https://via.placeholder.com/640x480.png/006600?text=alias', 'Clotilde Carter II', 'Gleichner Inc', '1993-05-09 08:05:50.00', 75.52, 81, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(45, 'Fugit doloremque quo esse deleniti soluta distinctio molestiae.', 'https://via.placeholder.com/640x480.png/0055cc?text=officia', 'Kirsten Wehner', 'Thompson-Stark', '2001-11-06 07:03:24.00', 50.55, 91, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(46, 'Eligendi ex culpa eum officiis sequi repudiandae veniam.', 'https://via.placeholder.com/640x480.png/00dd22?text=minus', 'Jaden McGlynn', 'Nitzsche, Ernser and Weimann', '2005-06-10 01:03:33.00', 71.08, 63, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(47, 'Tenetur doloribus blanditiis sit.', 'https://via.placeholder.com/640x480.png/002244?text=voluptatem', 'Finn Howell', 'Bailey, Gleason and Breitenberg', '2022-05-03 19:31:42.00', 88.77, 71, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(48, 'Aliquam et distinctio quis cumque ullam alias.', 'https://via.placeholder.com/640x480.png/0055dd?text=sit', 'Aylin Ernser DDS', 'Rath Ltd', '2008-02-24 19:49:09.00', 70.64, 85, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(49, 'Eos qui nam quo.', 'https://via.placeholder.com/640x480.png/00bbff?text=sunt', 'Dr. Queenie Howe III', 'Bauch Group', '1980-10-25 08:56:29.00', 33.42, 82, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(50, 'Voluptas debitis assumenda alias nihil qui unde dolorem.', 'https://via.placeholder.com/640x480.png/00aa33?text=dolores', 'Dr. Narciso Cruickshank PhD', 'Boyle LLC', '1975-05-18 14:29:28.00', 52.09, 96, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(51, 'Dolorem est incidunt velit possimus ad ducimus.', 'https://via.placeholder.com/640x480.png/009988?text=accusamus', 'Isai Heathcote', 'Carter-Dickinson', '2018-12-30 01:04:12.00', 82.16, 8, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(52, 'Consequatur assumenda occaecati a a voluptatem exercitationem.', 'https://via.placeholder.com/640x480.png/00bb44?text=nostrum', 'Junius Thompson', 'Bailey, Bahringer and Greenfelder', '2023-06-21 17:18:51.00', 12.03, 63, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(53, 'Illo magnam quia praesentium sit enim.', 'https://via.placeholder.com/640x480.png/00ff66?text=ab', 'Casper Stracke', 'Nicolas, Daniel and Schultz', '1985-08-12 16:09:55.00', 28.4, 63, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(54, 'Repellendus aut asperiores dignissimos ut.', 'https://via.placeholder.com/640x480.png/0044bb?text=et', 'Miss Tomasa Morar', 'Waters Group', '1979-11-30 10:03:13.00', 21.75, 56, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(55, 'Ea ea pariatur necessitatibus.', 'https://via.placeholder.com/640x480.png/009966?text=dolor', 'Casandra Corkery', 'Feeney, Lubowitz and Paucek', '2006-05-15 15:00:10.00', 51.82, 74, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(56, 'Quasi nesciunt officia tempore asperiores quas quod voluptate.', 'https://via.placeholder.com/640x480.png/00ff00?text=ut', 'Yesenia Nitzsche Sr.', 'Herman-Hessel', '1992-04-16 02:51:17.00', 77.67, 48, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(57, 'Nesciunt ipsum rem sequi deserunt perferendis.', 'https://via.placeholder.com/640x480.png/00bbbb?text=quia', 'Larry Hammes', 'Kreiger Group', '2012-09-13 18:09:55.00', 27.95, 83, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(58, 'Numquam velit qui dignissimos temporibus.', 'https://via.placeholder.com/640x480.png/0022bb?text=cum', 'Liza Lesch', 'Brown-Dickens', '1980-12-31 18:07:11.00', 71.57, 28, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(59, 'Incidunt consectetur voluptas sunt voluptatibus qui.', 'https://via.placeholder.com/640x480.png/00bb88?text=exercitationem', 'Leon Spencer Jr.', 'Hirthe LLC', '2000-12-08 21:15:05.00', 39.72, 6, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(60, 'Quisquam nostrum cum debitis necessitatibus.', 'https://via.placeholder.com/640x480.png/00aa00?text=voluptate', 'Isabelle Streich', 'Schneider, Borer and Terry', '2007-11-19 19:01:26.00', 69.1, 53, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(61, 'Animi sed ut beatae odit quia soluta aliquid magni.', 'https://via.placeholder.com/640x480.png/00eebb?text=illo', 'Clemens Pollich Jr.', 'Wolf-Toy', '2015-05-28 05:35:03.00', 13.67, 98, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(62, 'Atque quo omnis neque facilis.', 'https://via.placeholder.com/640x480.png/0011ee?text=quisquam', 'Eloy Skiles V', 'Cummerata, Roob and Lueilwitz', '2020-11-09 19:10:44.00', 61.58, 36, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(63, 'Quisquam ea ipsa voluptas deleniti minus repellat unde nesciunt.', 'https://via.placeholder.com/640x480.png/004455?text=aspernatur', 'Asa Kovacek Jr.', 'Hauck-Kilback', '2012-10-20 23:10:21.00', 74.22, 50, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(64, 'Veritatis quo at et animi inventore ut esse.', 'https://via.placeholder.com/640x480.png/004455?text=illo', 'Jaquelin Wolff', 'Volkman-Stokes', '2022-04-25 09:35:04.00', 20.87, 52, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(65, 'Laudantium aut quas asperiores quis sed est id.', 'https://via.placeholder.com/640x480.png/006666?text=voluptate', 'Ms. Aletha Mosciski II', 'Mitchell, Reilly and Kovacek', '1990-03-28 03:03:26.00', 96.51, 92, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(66, 'Hic et enim accusamus voluptatum.', 'https://via.placeholder.com/640x480.png/005588?text=animi', 'Bernardo Hoeger', 'Buckridge Ltd', '2021-07-29 08:16:11.00', 62.42, 84, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(67, 'Aut quasi et cumque sit iusto.', 'https://via.placeholder.com/640x480.png/00eecc?text=tenetur', 'Darrin Fay', 'Emmerich Inc', '2012-12-26 08:54:44.00', 88.35, 14, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(68, 'At harum ipsa ut.', 'https://via.placeholder.com/640x480.png/00bb00?text=et', 'Miss Chelsie Waelchi', 'Hoppe LLC', '2018-04-10 06:13:21.00', 66.33, 91, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(69, 'Eaque ullam odit iure illo vel eveniet mollitia voluptates.', 'https://via.placeholder.com/640x480.png/00dd88?text=temporibus', 'Dr. Terrell Anderson DDS', 'Schuppe-Aufderhar', '1973-06-14 00:44:19.00', 18.3, 26, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(70, 'Molestias deserunt nesciunt illum quasi.', 'https://via.placeholder.com/640x480.png/004433?text=sed', 'Mrs. Jolie Ferry', 'Ullrich PLC', '1993-06-05 11:49:44.00', 58.18, 57, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(71, 'Pariatur esse qui pariatur architecto aliquam iure.', 'https://via.placeholder.com/640x480.png/0088aa?text=praesentium', 'Toni Runolfsdottir', 'Lindgren Inc', '2014-05-22 23:37:41.00', 96.92, 41, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(72, 'Accusantium omnis et omnis ipsum.', 'https://via.placeholder.com/640x480.png/005577?text=vel', 'Terry Barton IV', 'Dicki, Champlin and Lemke', '1985-03-30 01:35:16.00', 44.1, 70, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(73, 'Ut quam omnis blanditiis reprehenderit.', 'https://via.placeholder.com/640x480.png/00ffcc?text=dolor', 'Miss Fabiola Schuppe', 'Dietrich-Jacobi', '1980-06-23 19:35:20.00', 91.83, 21, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(74, 'Perspiciatis aliquid recusandae voluptatem eaque.', 'https://via.placeholder.com/640x480.png/00aacc?text=ut', 'General Kirlin', 'Gorczany-Blanda', '2006-04-16 05:32:44.00', 96.08, 60, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(75, 'Recusandae quis nobis magni nostrum eum voluptas est iure.', 'https://via.placeholder.com/640x480.png/002211?text=est', 'Ari D\'Amore', 'Johns Inc', '1996-06-26 09:31:14.00', 37.96, 9, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(76, 'Amet quod et exercitationem facere.', 'https://via.placeholder.com/640x480.png/00cc44?text=quasi', 'Dr. Alfredo Kuphal PhD', 'Hills-Stanton', '1993-03-17 19:06:19.00', 36.25, 90, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(77, 'Rerum repudiandae consequatur tenetur illum temporibus autem et quia.', 'https://via.placeholder.com/640x480.png/0033ee?text=molestias', 'Garrison Medhurst', 'Steuber and Sons', '2007-04-07 20:57:08.00', 95.13, 58, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(78, 'Commodi eos quae ad laboriosam necessitatibus eius.', 'https://via.placeholder.com/640x480.png/00ccee?text=eum', 'Prof. Zelda Jerde MD', 'Schmidt-Krajcik', '1997-05-20 13:19:09.00', 4.38, 77, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(79, 'Placeat exercitationem quasi error sit saepe.', 'https://via.placeholder.com/640x480.png/00ddee?text=repellat', 'Mr. Samson Stamm', 'Gorczany Inc', '1988-01-08 19:46:28.00', 34.2, 62, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(80, 'Aut cum sapiente est qui et assumenda.', 'https://via.placeholder.com/640x480.png/002277?text=voluptatem', 'Dr. Domenica Collier Sr.', 'Effertz-Keebler', '2000-01-10 06:58:00.00', 71.66, 17, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(81, 'Culpa praesentium modi quod molestiae itaque nobis.', 'https://via.placeholder.com/640x480.png/008888?text=ullam', 'Lizzie Lemke', 'Connelly-Nitzsche', '2021-07-09 04:50:48.00', 81.32, 69, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(82, 'Velit consequatur dolorem molestiae id harum voluptate.', 'https://via.placeholder.com/640x480.png/00ccaa?text=voluptas', 'Kasandra Waters', 'Ullrich-Dach', '1973-11-19 17:40:08.00', 48.97, 27, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(83, 'Dolores id quia asperiores et aut.', 'https://via.placeholder.com/640x480.png/0000ee?text=esse', 'Dr. Sibyl Rosenbaum PhD', 'Beahan-Walter', '2019-08-30 20:45:48.00', 59.69, 63, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(84, 'Dolores nostrum fugit non nihil molestiae voluptatibus numquam.', 'https://via.placeholder.com/640x480.png/00aadd?text=quia', 'Wiley Renner', 'Hauck, Funk and Hessel', '2006-07-20 20:48:08.00', 25.52, 87, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(85, 'Enim et cum eum repudiandae quo vel delectus.', 'https://via.placeholder.com/640x480.png/0044cc?text=laboriosam', 'Carmel Watsica', 'Zieme-Ebert', '2012-08-03 14:52:54.00', 92.42, 94, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(86, 'Ex sed ut adipisci unde voluptates sunt vel.', 'https://via.placeholder.com/640x480.png/0088bb?text=quisquam', 'Mr. Larue Bins', 'Hand LLC', '1978-06-18 07:52:56.00', 61.03, 96, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(87, 'Rerum hic nam voluptatibus voluptatum quo amet.', 'https://via.placeholder.com/640x480.png/008888?text=consectetur', 'Lynn Zboncak', 'Balistreri and Sons', '1992-05-13 05:06:37.00', 65.67, 79, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(88, 'Et nisi porro et earum cumque eum quo.', 'https://via.placeholder.com/640x480.png/000066?text=labore', 'Aurelio Labadie', 'Marks-Reinger', '1986-02-04 11:53:08.00', 62.09, 49, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(89, 'Eligendi impedit ipsum eos sed optio autem.', 'https://via.placeholder.com/640x480.png/0055ee?text=minima', 'Dr. Xander Flatley Jr.', 'Goldner Ltd', '1986-01-12 12:57:27.00', 11.92, 43, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(90, 'Sint qui dicta quia maxime et quas voluptas odio.', 'https://via.placeholder.com/640x480.png/003355?text=voluptates', 'Gussie Lynch', 'Conn, Mann and Brakus', '2018-05-13 23:46:16.00', 52.56, 25, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(91, 'Dicta molestiae sit aut doloremque fuga non ut sed.', 'https://via.placeholder.com/640x480.png/003399?text=sed', 'Gene Mills', 'Hauck, Sipes and Tremblay', '2017-10-19 20:36:39.00', 98.59, 93, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(92, 'In consectetur consectetur quia ut hic consequuntur odit.', 'https://via.placeholder.com/640x480.png/000055?text=illo', 'Prof. Rhoda Hahn', 'Heaney LLC', '2015-12-15 03:55:32.00', 82.06, 39, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(93, 'Ea rem voluptatibus adipisci accusamus quidem omnis sunt.', 'https://via.placeholder.com/640x480.png/005533?text=dolorem', 'Mrs. Lauryn Stokes', 'Graham-Renner', '2000-05-17 22:26:07.00', 18.5, 100, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(94, 'Voluptatem aperiam officia error omnis similique in.', 'https://via.placeholder.com/640x480.png/006677?text=officia', 'Ms. Dolores Jacobi III', 'Adams, Pollich and Rolfson', '2007-08-22 08:16:32.00', 74.72, 40, 2, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(95, 'Ea ut eius dolorem non molestiae assumenda.', 'https://via.placeholder.com/640x480.png/00ffff?text=nihil', 'Dr. Kristofer Torphy Jr.', 'Mraz Group', '2005-12-14 21:51:38.00', 87.91, 35, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(96, 'Hic aliquam sit deserunt nulla ut dolores sunt.', 'https://via.placeholder.com/640x480.png/0055ee?text=et', 'Titus Bernhard', 'Jacobson-Jacobson', '1994-05-12 14:58:42.00', 14.72, 74, 4, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(97, 'Nihil voluptatem qui perspiciatis accusantium.', 'https://via.placeholder.com/640x480.png/004400?text=neque', 'Palma Green', 'Bradtke, Lakin and Cremin', '1975-10-23 14:53:13.00', 82.48, 63, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(98, 'Porro voluptates aut maxime quia dolorem quia.', 'https://via.placeholder.com/640x480.png/004488?text=nostrum', 'Prof. Samara Hamill', 'Muller-Ebert', '2014-02-21 03:50:59.00', 42.25, 75, 5, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(99, 'Natus autem non eaque dolorem ea sed porro.', 'https://via.placeholder.com/640x480.png/00ee66?text=asperiores', 'Reina Mosciski', 'Ryan and Sons', '1989-08-09 06:13:19.00', 34.08, 18, 3, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(100, 'Suscipit earum aut quidem sunt pariatur unde odio.', 'https://via.placeholder.com/640x480.png/001100?text=earum', 'Mr. Julien Gorczany IV', 'Koss, Schinner and Stiedemann', '1975-06-11 06:55:24.00', 81.86, 37, 1, '2024-07-20 01:36:34', '2024-07-20 01:36:34'),
(105, 'sàasfasfa', 'books/GBpYmcSvyHB17MvgNtUb4KzDvX9RiQxytS7WNCSP.jpg', 'fasfasfa', 'fasfasf', '2025-03-12 00:00:00.00', 123, 123123, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Angelo Wyman', '2024-07-20 01:36:44', '2024-07-20 01:36:44'),
(2, 'Prof. Willard Reichert', '2024-07-20 01:36:44', '2024-07-20 01:36:44'),
(3, 'Amir Heidenreich', '2024-07-20 01:36:44', '2024-07-20 01:36:44'),
(4, 'Nicolette Terry', '2024-07-20 01:36:44', '2024-07-20 01:36:44'),
(5, 'Ms. Karina Block', '2024-07-20 01:36:44', '2024-07-20 01:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dapartment_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_10_185252_create_books_table', 1),
(6, '2024_07_10_185322_create_categories_table', 1),
(7, '2024_07_13_072610_create_departments_table', 1),
(8, '2024_07_13_075358_create_employees_table', 1),
(9, '2024_07_13_081251_add_phone_to_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dapartment_id_foreign` (`dapartment_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dapartment_id_foreign` FOREIGN KEY (`dapartment_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
