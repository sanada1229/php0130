-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2022 at 11:31 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookmark_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `ユニーク値` int(12) NOT NULL,
  `書籍名` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `書籍URL` text COLLATE utf8_unicode_ci NOT NULL,
  `書籍評価` int(11) DEFAULT NULL,
  `書籍コメント` text COLLATE utf8_unicode_ci NOT NULL,
  `登録日時` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`ユニーク値`, `書籍名`, `書籍URL`, `書籍評価`, `書籍コメント`, `登録日時`) VALUES
(1, 'PHP本', 'test@test.test', NULL, 'テスト', '2022-01-22 11:33:51'),
(2, 'JS本', 'test@test.test', NULL, 'テスト', '2022-01-22 11:35:15'),
(3, 'テスト', 'https://test.test', NULL, 'テストです', '2022-01-23 11:09:48'),
(4, 'テスト', 'https://test.test', NULL, 'テストです', '2022-01-23 11:11:06'),
(5, 'テスト', 'https://test.test', 4, '1111', '2022-01-23 12:00:34'),
(6, 'テスト0129', 'https://test.test', 4, 'xxx', '2022-01-29 22:39:50'),
(7, 'テスト220129', 'https://test.test', 4, 'xxx', '2022-01-29 22:45:05'),
(8, 'テスト', 'https://test.test', 4, '', '2022-01-29 22:46:30'),
(9, 'テスト220129', 'https://test.test', 5, '', '2022-01-29 22:53:16'),
(10, 'テスト220129', 'https://test.test', 4, '333', '2022-01-29 23:04:14'),
(11, 'テスト220129', 'https://test.test', 5, '', '2022-01-29 23:36:33'),
(12, 'テスト220129', 'https://test.test', 4, '', '2022-01-29 23:45:43'),
(13, 'テスト0129', 'https://test.test', 4, '', '2022-01-30 00:01:29'),
(14, 'テスト220129', '', 0, '', '2022-01-30 00:09:36'),
(15, 'テスト220129', 'https://test.test', 0, '', '2022-01-30 00:39:32'),
(16, 'テスト220129', 'https://test.test', 4, '', '2022-01-30 17:21:39'),
(17, 'Tencent', 'https://test.test', 10, '', '2022-01-30 18:21:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`ユニーク値`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `ユニーク値` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
