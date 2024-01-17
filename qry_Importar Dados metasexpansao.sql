-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2020 at 03:58 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siste075_hbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `metasexpansao`
--

CREATE TABLE `metasexpansao` (
  `id_metasexpansao` int(11) NOT NULL COMMENT 'Código da Meta de Expansao',
  `ano_meta` int(11) NOT NULL COMMENT 'Ano da Meta de Expansao',
  `id_templo` int(11) NOT NULL COMMENT 'Código do Templo',
  `ostentacao` int(11) NOT NULL COMMENT 'Ostentação de Gohozon',
  `conversoes` int(11) NOT NULL COMMENT 'Conversões de Fieis',
  `visitas` int(11) NOT NULL COMMENT 'Visitas Assistênciais a Fieis',
  `situacao_meta` char(1) COLLATE latin1_general_ci NOT NULL COMMENT 'Situação da Meta de Expansão (A/I)'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `metasexpansao`
--

INSERT INTO `metasexpansao` (`id_metasexpansao`, `ano_meta`, `id_templo`, `ostentacao`, `conversoes`, `visitas`, `situacao_meta`) VALUES
(1, 2019, 2, 5, 15, 300, 'A'),
(2, 2019, 1, 20, 80, 1000, 'A'),
(3, 2019, 5, 6, 17, 360, 'A'),
(4, 2019, 4, 10, 55, 1500, 'A'),
(5, 2019, 9, 4, 16, 160, 'A'),
(6, 2019, 3, 9, 30, 900, 'A'),
(7, 2019, 18, 4, 14, 140, 'A'),
(8, 2019, 22, 7, 16, 170, 'A'),
(9, 2019, 21, 2, 4, 40, 'A'),
(10, 2019, 8, 4, 14, 300, 'A'),
(11, 2019, 20, 2, 10, 300, 'A'),
(12, 2019, 19, 5, 20, 200, 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `metasexpansao`
--
ALTER TABLE `metasexpansao`
  ADD PRIMARY KEY (`id_metasexpansao`) COMMENT 'id_metasexpansao';

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `metasexpansao`
--
ALTER TABLE `metasexpansao`
  MODIFY `id_metasexpansao` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Meta de Expansao', AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
