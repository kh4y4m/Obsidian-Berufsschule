-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2023 at 01:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cia`
--

-- --------------------------------------------------------

--
-- Table structure for table `cia_2018`
--

CREATE TABLE `cia_2018` (
  `ID` int(3) NOT NULL,
  `Name` varchar(42) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `Fläche` int(8) DEFAULT NULL,
  `Einwohner` int(10) DEFAULT NULL,
  `BIP` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cia_2018`
--

INSERT INTO `cia_2018` (`Region`, `Gesamtbevölkerung`) VALUES
('Afrika', 800145374),
('Asien', 3054634511),
('Europa', 518759931),
('Mittelamerika', 73193129),
('Mittlerer Osten', 170688136),
('Nordamerika', 407263424),
('Osteuropa', 111258688),
('Ozeanien', 30804740),
('Südamerika', 346507186),
('Südostasien', 561430334);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cia_2018`
--
ALTER TABLE `cia_2018`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cia_2018`
--
ALTER TABLE `cia_2018`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
