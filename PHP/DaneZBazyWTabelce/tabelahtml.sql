SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tabelahtml` (
  `id_osoby` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(100) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tabelahtml` (`id_osoby`, `imie`, `nazwisko`, `pesel`) VALUES
(1, 'Andrzej', 'no', '1926639456'),
(2, 'macku', 'pomusz', '1029384756'),
(3, 'podaje', 'pesel', '0248765435');

ALTER TABLE `tabelahtml`
  ADD PRIMARY KEY (`id_osoby`),
  ADD UNIQUE KEY `pesel` (`pesel`);

ALTER TABLE `tabelahtml`
  MODIFY `id_osoby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
