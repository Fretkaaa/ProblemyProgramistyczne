-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2026 at 08:11 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egzaminbaza`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tabelahtml`
--

CREATE TABLE `tabelahtml` (
  `id_osoby` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(100) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabelahtml`
--

INSERT INTO `tabelahtml` (`id_osoby`, `imie`, `nazwisko`, `pesel`) VALUES
(1, 'Andrzej', 'no', '1926639456'),
(2, 'macku', 'pomusz', '1029384756'),
(3, 'podaje', 'pesel', '0248765435');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tabelahtml`
--
ALTER TABLE `tabelahtml`
  ADD PRIMARY KEY (`id_osoby`),
  ADD UNIQUE KEY `pesel` (`pesel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabelahtml`
--
ALTER TABLE `tabelahtml`
  MODIFY `id_osoby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
