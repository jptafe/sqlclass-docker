-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2020 at 05:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--
CREATE DATABASE IF NOT EXISTS `pms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pms`;

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
CREATE TABLE `division` (
  `id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `state` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `name`, `state`) VALUES
(1, 'Kooyong', 'VIC'),
(2, 'Bennelong', 'NSW'),
(3, 'Wills', 'VIC'),
(4, 'Wannon', 'VIC'),
(5, 'West Sydney', 'NSW'),
(6, 'Bendigo', 'VIC'),
(8, 'North Sydney', 'NSW'),
(9, 'Wilmot', 'TAS'),
(10, 'Flinders', 'VIC'),
(11, 'Ballaarat', 'VIC'),
(12, 'Wide Bay', 'QLD'),
(13, 'Macquarie', 'NSW'),
(14, 'Blaxland', 'NSW'),
(15, 'Fremantle', 'WA'),
(16, 'Senate', 'VIC'),
(17, 'Lalor', 'VIC'),
(18, 'Werriwa', 'NSW'),
(19, 'Griffith', 'QLD'),
(20, 'Hunter', 'NSW'),
(21, 'Wentworth', 'NSW'),
(22, 'Yarra', 'VIC'),
(23, 'Warringah', 'NSW'),
(24, 'Higgins', 'VIC'),
(25, 'Lowe', 'NSW'),
(26, 'Parramatta', 'NSW'),
(27, 'East Sydney', 'NSW'),
(28, 'Bland', 'NSW'),
(29, 'Darling Downs', 'QLD'),
(30, 'Murray', 'VIC'),
(31, 'Cowper', 'NSW'),
(32, 'Capricornia', 'QLD'),
(33, 'Cook', 'NSW');

-- --------------------------------------------------------

--
-- Table structure for table `division_pm`
--

DROP TABLE IF EXISTS `division_pm`;
CREATE TABLE `division_pm` (
  `id` int(11) NOT NULL,
  `pm_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division_pm`
--

INSERT INTO `division_pm` (`id`, `pm_id`, `division_id`) VALUES
(1, 4, 1),
(2, 5, 2),
(3, 6, 3),
(4, 7, 4),
(5, 8, 5),
(6, 8, 6),
(7, 8, 8),
(8, 9, 9),
(9, 10, 10),
(10, 11, 11),
(11, 12, 12),
(12, 13, 13),
(13, 14, 14),
(14, 15, 15),
(15, 16, 16),
(16, 16, 24),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 29, 27),
(28, 30, 28),
(29, 31, 29),
(30, 32, 30),
(31, 33, 31),
(32, 34, 32),
(33, 35, 33);

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

DROP TABLE IF EXISTS `election`;
CREATE TABLE `election` (
  `id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `pm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`id`, `year`, `pm`) VALUES
(1, 1940, 4),
(2, 1949, 4),
(3, 1951, 4),
(4, 1954, 4),
(5, 1955, 4),
(6, 1958, 4),
(7, 1961, 4),
(8, 1963, 4),
(9, 1996, 5),
(10, 1998, 5),
(11, 2001, 5),
(12, 2004, 5),
(13, 1983, 6),
(14, 1984, 6),
(15, 1987, 6),
(16, 1990, 6),
(17, 1975, 7),
(18, 1977, 7),
(19, 1980, 7),
(20, 1917, 8),
(21, 1919, 8),
(22, 1922, 8),
(23, 1931, 9),
(24, 1934, 9),
(25, 1937, 9),
(26, 1925, 10),
(27, 1928, 10),
(28, 1903, 11),
(29, 1906, 11),
(30, 1910, 12),
(31, 1914, 12),
(32, 1946, 13),
(33, 1993, 14),
(34, 1943, 15),
(35, 1969, 15),
(36, 2010, 17),
(37, 1972, 18),
(38, 1974, 18),
(39, 1901, 20),
(40, 2007, 19),
(41, 2016, 21),
(42, 1929, 22),
(43, 2013, 23),
(44, 1966, 24),
(47, 1913, 26),
(48, 2019, 35);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `id` int(11) NOT NULL,
  `party` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`id`, `party`) VALUES
(1, 'Labor'),
(2, 'Liberal'),
(3, 'Country (National)'),
(4, 'United Australia '),
(5, 'Nationalist'),
(6, 'National Labor'),
(7, 'Commonwealth Liberal'),
(8, 'Free Trade'),
(9, 'Protectionist');

-- --------------------------------------------------------

--
-- Table structure for table `party_pm`
--

DROP TABLE IF EXISTS `party_pm`;
CREATE TABLE `party_pm` (
  `id` int(11) NOT NULL,
  `pm_id` int(11) NOT NULL,
  `party_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party_pm`
--

INSERT INTO `party_pm` (`id`, `pm_id`, `party_id`) VALUES
(5, 4, 4),
(6, 4, 2),
(7, 5, 2),
(8, 6, 1),
(9, 7, 2),
(10, 8, 1),
(11, 8, 6),
(12, 8, 5),
(13, 9, 4),
(14, 10, 5),
(15, 11, 9),
(16, 11, 7),
(17, 12, 1),
(18, 13, 1),
(19, 14, 1),
(20, 15, 1),
(21, 15, 1),
(22, 16, 2),
(23, 17, 1),
(24, 18, 1),
(25, 19, 1),
(26, 22, 1),
(27, 20, 9),
(28, 21, 2),
(29, 23, 2),
(30, 24, 2),
(31, 25, 2),
(32, 26, 7),
(34, 30, 1),
(35, 31, 3),
(36, 32, 3),
(37, 33, 3),
(38, 34, 1),
(39, 29, 8),
(40, 35, 2),
(41, 35, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

DROP TABLE IF EXISTS `pm`;
CREATE TABLE `pm` (
  `id` int(11) NOT NULL,
  `pm` varchar(128) NOT NULL,
  `birth` mediumint(9) NOT NULL,
  `death` mediumint(9) DEFAULT NULL,
  `years_office` smallint(6) NOT NULL,
  `days_office` smallint(6) NOT NULL,
  `assumend_office` date NOT NULL,
  `left_office` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pm`
--

INSERT INTO `pm` (`id`, `pm`, `birth`, `death`, `years_office`, `days_office`, `assumend_office`, `left_office`) VALUES
(4, 'Sir Robert Menzies', 1894, 1978, 18, 163, '1939-04-26', '1966-01-19'),
(5, 'John Howard', 1939, NULL, 11, 267, '1996-03-11', '2007-12-03'),
(6, 'Bob Hawke', 1929, 2019, 8, 284, '1983-03-11', '1991-12-20'),
(7, 'Malcolm Fraser', 1930, 2015, 7, 120, '1975-11-11', '1983-03-11'),
(8, 'Billy Hughes', 1862, 1952, 7, 105, '1915-10-27', '1923-02-09'),
(9, 'Joseph Lyons', 1879, 1939, 7, 91, '1932-01-06', '1939-04-07'),
(10, 'Stanley Bruce', 1883, 1967, 6, 255, '1923-02-09', '1929-10-22'),
(11, 'Alfred Deakin', 1856, 1919, 4, 313, '1903-09-24', '1910-04-29'),
(12, 'Andrew Fisher', 1862, 1928, 4, 297, '1908-11-13', '1915-10-27'),
(13, 'Ben Chifley', 1885, 1951, 4, 159, '1945-07-13', '1949-12-19'),
(14, 'Paul Keating', 1944, NULL, 4, 82, '1991-12-20', '1996-03-11'),
(15, 'John Curtin', 1885, 1945, 3, 271, '1941-10-07', '1945-07-05'),
(16, 'John Gorton', 1911, 2002, 3, 59, '1968-01-10', '1971-03-10'),
(17, 'Julia Gillard', 1961, NULL, 3, 3, '2013-06-24', '2010-06-27'),
(18, 'Gough Whitlam', 1916, 2014, 2, 341, '1972-12-05', '1975-11-11'),
(19, 'Kevin Rudd', 1957, NULL, 2, 286, '2007-12-03', '2013-09-18'),
(20, 'Sir Edmund Barton', 1849, 1920, 2, 266, '1901-01-01', '1903-09-24'),
(21, 'Malcolm Turnbull', 1954, NULL, 2, 343, '2015-09-15', '2018-08-24'),
(22, 'James Scullin', 1876, 1953, 2, 76, '1929-10-22', '1932-01-06'),
(23, 'Tony Abbott', 1957, NULL, 1, 362, '2013-09-18', '2015-09-15'),
(24, 'Harold Holt', 1908, 1967, 1, 327, '1966-01-26', '1967-12-19'),
(25, 'William McMahon', 1908, 1988, 1, 270, '1971-03-10', '1972-12-05'),
(26, 'Joseph Cook', 1860, 1947, 1, 85, '1913-06-24', '1914-09-17'),
(29, 'George Reid', 1845, 1918, 0, 321, '1904-08-18', '1905-07-05'),
(30, 'Chris Watson', 1867, 1941, 0, 113, '1904-04-27', '1904-08-18'),
(31, 'Arthur Fadden', 1894, 1973, 0, 39, '1941-08-29', '1941-10-07'),
(32, 'John McEwen', 1900, 1980, 0, 22, '1967-12-19', '1968-01-10'),
(33, 'Sir Earle Page', 1880, 1961, 0, 19, '1939-03-08', '1939-03-26'),
(34, 'Frank Forde', 1890, 1983, 0, 7, '1945-07-06', '1945-07-13'),
(35, 'Scott Morrison', 1968, NULL, 1, 169, '2019-08-24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division_pm`
--
ALTER TABLE `division_pm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pm_id` (`pm_id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pm` (`pm`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_pm`
--
ALTER TABLE `party_pm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pm_id` (`pm_id`),
  ADD KEY `party_id` (`party_id`);

--
-- Indexes for table `pm`
--
ALTER TABLE `pm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `division_pm`
--
ALTER TABLE `division_pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `party_pm`
--
ALTER TABLE `party_pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pm`
--
ALTER TABLE `pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `division_pm`
--
ALTER TABLE `division_pm`
  ADD CONSTRAINT `division_pm_ibfk_1` FOREIGN KEY (`pm_id`) REFERENCES `pm` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `division_pm_ibfk_2` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `election`
--
ALTER TABLE `election`
  ADD CONSTRAINT `election_ibfk_1` FOREIGN KEY (`pm`) REFERENCES `pm` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `party_pm`
--
ALTER TABLE `party_pm`
  ADD CONSTRAINT `party_pm_ibfk_1` FOREIGN KEY (`pm_id`) REFERENCES `pm` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `party_pm_ibfk_2` FOREIGN KEY (`party_id`) REFERENCES `party` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
