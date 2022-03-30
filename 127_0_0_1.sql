-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 30. 12:51
-- Kiszolgáló verziója: 10.4.19-MariaDB
-- PHP verzió: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `s4_project_m`
--
CREATE DATABASE IF NOT EXISTS `s4_project_m` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `s4_project_m`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ertekeles`
--

CREATE TABLE `ertekeles` (
  `ertekeles_id` int(11) NOT NULL,
  `ertekeles_nev` varchar(50) CHARACTER SET utf16 COLLATE utf16_hungarian_ci NOT NULL,
  `ertekeles_uzenet` varchar(100) CHARACTER SET utf16 COLLATE utf16_hungarian_ci NOT NULL,
  `ertekeles_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `ertekeles`
--

INSERT INTO `ertekeles` (`ertekeles_id`, `ertekeles_nev`, `ertekeles_uzenet`, `ertekeles_date`) VALUES
(4, 'test', 'test', '2022-01-18'),
(7, 'Alma', 'Alma', '2022-01-18'),
(8, 'Alma', 'Alma', '2022-01-18'),
(19, '6', 'undefined', '2022-02-01'),
(20, '18', 'undefined', '2022-02-01'),
(23, '22', 'undefined', '2022-02-04'),
(24, '21', 'undefined', '2022-02-04'),
(25, 'hello', '', '2022-02-07'),
(26, 'Daniel', 'ez ', '2022-02-28'),
(28, 'dwad', 'wdadaw', '2022-03-04'),
(29, 'Daniel', '10/10', '2022-03-06'),
(30, 'Józsi', ' Legjobb játék', '2022-03-28'),
(31, 'Péter', 'Túlságosan nehéz de ezért szeretem', '2022-03-28'),
(32, 'Marci', 'Hogyan kell tovább jutni a második pályán? ', '2022-03-28');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hirek`
--

CREATE TABLE `hirek` (
  `hirek_id` int(11) NOT NULL,
  `hirek_cim` varchar(50) NOT NULL,
  `hirek_szoveg` text NOT NULL,
  `hirek_datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `hirek`
--

INSERT INTO `hirek` (`hirek_id`, `hirek_cim`, `hirek_szoveg`, `hirek_datum`) VALUES
(1, 'Testt', 'Ez egy Teszt szöveg 12345', '2022-03-11'),
(2, 'Lonley Kinght DEMO', 'A Lonley Knight Demo Megjelent\r\n\r\n-Játszható 3 külön témájú pálya\r\n-Hozzá adott Új hang effektek\r\n', '2022-03-11'),
(3, 'Hír: Valheim Patch 0.207.20', 'Újdonságok:\r\n -Jég barlangok\r\n -Évfordulós Szarv kupa\r\nFix:\r\n * Pause function in singleplayer\r\n* Full controller support! (Gamepad legend and alternative glyphs)\r\n* Gamepad text input when running through in steam big picture mode\r\n* UI, settings and Steam Deck fixes\r\n* FPS Limiter and reduced background performance\r\n* Split dialog can take numeric input\r\n* Signs can now be built without a workbench\r\n* Bug fixes and quality of life improvements\r\n* Armour stand now supports atgeirs and shield styles\r\n* Nomap mode tweaks\r\n', '2022-03-11'),
(5, 'undefined', 'undefined', '2022-03-27'),
(6, '1234', '1234 proba szöveg 12345452545454534534', '2022-03-27');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `statisztika`
--

CREATE TABLE `statisztika` (
  `statisztika_id` int(11) NOT NULL,
  `statisztika_nev` varchar(50) NOT NULL,
  `statisztika_pont` int(11) NOT NULL,
  `statisztika_halal` int(11) NOT NULL,
  `statisztika_ido` int(11) NOT NULL,
  `statisztika_date` date NOT NULL,
  `statisztika_level_id` int(11) NOT NULL,
  `part_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `statisztika`
--

INSERT INTO `statisztika` (`statisztika_id`, `statisztika_nev`, `statisztika_pont`, `statisztika_halal`, `statisztika_ido`, `statisztika_date`, `statisztika_level_id`, `part_id`) VALUES
(1, 'wqewq', 5000, 35, 15, '2021-12-03', 0, 0),
(2, 'János', 5001, 21, 23, '2022-01-19', 0, 0),
(8, 'Shatest', 250, 0, 9, '2022-02-09', 1, 0),
(9, 'Shatest', 500, 0, 19, '2022-02-09', 2, 0),
(10, 'Shatest', 1125, 2, 27, '2022-02-09', 3, 0),
(19, 'ZetTesT', 375, 0, 7, '2022-02-21', 1, 0),
(20, 'sda', 375, 0, 9, '2022-02-21', 1, 0),
(21, 'afs', 625, 1, 8, '2022-02-21', 1, 0),
(22, 'dfa', 375, 0, 11, '2022-02-21', 1, 0),
(24, 'dsa', 375, 0, 6, '2022-02-21', 1, 0),
(25, 'rge', 250, 1, 8, '2022-02-21', 1, 0),
(26, 'sad', 125, 0, 6, '2022-02-21', 1, 0),
(27, 'Zeto', 125, 0, 8, '2022-02-21', 1, 0),
(28, 'fds', 375, 0, 8, '2022-02-21', 1, 0),
(29, 'fds', 500, 0, 8, '2022-02-21', 1, 0),
(30, 'fsda', 125, 1, 7, '2022-02-21', 1, 0),
(31, 'Zeto', 250, 0, 7, '2022-02-21', 1, 0),
(32, 'Zeto', 250, 1, 17, '2022-02-21', 2, 0),
(33, 'asd', 625, 1, 14, '2022-02-21', 1, 0),
(34, 'asd', 250, 1, 18, '2022-02-21', 2, 0),
(35, 'fdsa', 375, 0, 10, '2022-02-22', 1, 0),
(36, 'fdsa', 750, 0, 25, '2022-02-22', 2, 0),
(37, 'fdsa', 1125, 0, 31, '2022-02-22', 3, 0),
(38, 'dmgtest', 375, 0, 13, '2022-02-22', 1, 0),
(39, 'dmgtest', 500, 6, 23, '2022-02-22', 2, 0),
(40, 'dmgtest', 1125, 1, 35, '2022-02-22', 3, 0),
(41, 'ani', 125, 1, 19, '2022-02-22', 1, 0),
(42, 'ani', 500, 0, 40, '2022-02-22', 2, 0),
(43, 'ani', 375, 10, 15, '2022-02-22', 3, 0),
(44, 'thicctest', 875, 23, 32, '2022-02-22', 3, 0),
(46, 'jkb', 250, 0, 36, '2022-02-23', 1, 0),
(47, 'jkb', 875, 6, 24, '2022-02-23', 2, 0),
(48, 'Zeto', 375, 0, 24, '2022-02-23', 1, 0),
(49, 'sda', 250, 4, 8, '2022-02-23', 1, 0),
(50, 'Daniel', 375, 3, 23, '2022-02-23', 1, 0),
(51, 'test', 375, 0, 25, '2022-02-23', 1, 0),
(52, 'test', 875, 0, 25, '2022-02-23', 2, 0),
(53, 'ááááááááááááá', 375, 4, 17, '2022-02-23', 1, 0),
(55, 'Zeto', 375, 0, 10, '2022-02-24', 1, 0),
(56, 'Zeto', 875, 0, 22, '2022-02-24', 2, 0),
(57, 's', 250, 1, 7, '2022-02-24', 1, 0),
(60, 'kml', 500, 1, 24, '2022-02-24', 2, 0),
(61, 'setT', 375, 0, 17, '2022-02-25', 1, 0),
(62, 'setT', 250, 1, 20, '2022-02-25', 2, 0),
(63, 'sad', 125, 0, 7, '2022-02-25', 1, 0),
(70, 'hg', 250, 0, 9, '2022-02-27', 1, 0),
(71, 'hg', 250, 0, 9, '2022-02-27', 1, 0),
(72, 'fd', 125, 0, 9, '2022-02-27', 1, 0),
(73, 'xb', 375, 0, 9, '2022-02-27', 1, 0),
(74, 'nv ', 250, 0, 8, '2022-02-27', 1, 0),
(75, 'nv ', 250, 0, 8, '2022-02-27', 1, 0),
(76, 'hmn', 250, 0, 10, '2022-02-27', 1, 0),
(77, 'hmn', 250, 0, 10, '2022-02-27', 1, 0),
(78, 'dsa', 250, 1, 8, '2022-02-27', 1, 0),
(79, 'nhg', 125, 0, 13, '2022-02-27', 1, 0),
(80, 'nhg', 125, 0, 13, '2022-02-27', 1, 0),
(81, 'n', 250, 0, 14, '2022-02-27', 1, 0),
(82, 'ZtheT', 375, 0, 48, '2022-02-28', 1, 0),
(83, 'ZtheT', 250, 1, 30, '2022-02-28', 2, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59'),
(14, 'gdancso', 'enyedidani@gmail.com', '$2a$08$cTph/81zm/9jwNwLRWL7ruoLd7afxblop1t5Ke.dWn6PeTEc7VXii', '2022-01-21 10:42:21', '2022-01-21 10:42:21');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3),
('2022-01-21 10:42:21', '2022-01-21 10:42:21', 3, 14);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ertekeles`
--
ALTER TABLE `ertekeles`
  ADD PRIMARY KEY (`ertekeles_id`);

--
-- A tábla indexei `hirek`
--
ALTER TABLE `hirek`
  ADD PRIMARY KEY (`hirek_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `statisztika`
--
ALTER TABLE `statisztika`
  ADD PRIMARY KEY (`statisztika_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ertekeles`
--
ALTER TABLE `ertekeles`
  MODIFY `ertekeles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT a táblához `hirek`
--
ALTER TABLE `hirek`
  MODIFY `hirek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `statisztika`
--
ALTER TABLE `statisztika`
  MODIFY `statisztika_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
