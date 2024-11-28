-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 28. 06:30
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `csopi`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film`
--

CREATE TABLE `film` (
  `id` int(2) NOT NULL,
  `cim` varchar(250) CHARACTER SET latin2 COLLATE latin2_hungarian_ci DEFAULT NULL,
  `ev` int(4) DEFAULT NULL,
  `hossz` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `film`
--

INSERT INTO `film` (`id`, `cim`, `ev`, `hossz`) VALUES
(1, 'A Pogány Madonna', 1980, 98),
(2, 'Csak semmi pánik', 1982, 83),
(3, 'Az elvarázsolt dollár', 1985, 86),
(4, 'Hamis a baba', 1991, 78),
(5, 'Zsaruvér és Csigavér 1: A királyné nyakéke', 2001, 60),
(6, 'Zsaruvér és Csigavér 2: Több tonna kámfor', 2002, 60),
(7, 'Zsaruvér és Csigavér 3: A szerencse fia', 2008, 55);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `stab`
--

CREATE TABLE `stab` (
  `id` int(11) NOT NULL,
  `filmid` int(11) NOT NULL,
  `szereploid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `stab`
--

INSERT INTO `stab` (`id`, `filmid`, `szereploid`) VALUES
(1, 3, 1),
(2, 6, 3),
(3, 3, 4),
(4, 4, 4),
(5, 7, 4),
(6, 6, 4),
(7, 4, 5),
(8, 5, 6),
(9, 2, 7),
(10, 2, 8),
(11, 1, 8),
(12, 1, 9),
(13, 3, 10),
(14, 3, 11),
(15, 1, 13),
(16, 1, 14),
(17, 1, 15),
(18, 5, 16),
(19, 6, 17),
(20, 2, 18),
(21, 5, 19),
(22, 2, 20),
(23, 2, 21),
(24, 3, 21),
(25, 4, 21),
(26, 5, 21),
(27, 1, 21),
(28, 7, 21),
(29, 6, 21),
(30, 2, 22),
(31, 6, 23),
(32, 5, 24),
(33, 3, 25),
(34, 3, 26),
(35, 2, 27),
(36, 5, 28),
(37, 2, 29),
(38, 3, 30),
(39, 2, 32),
(40, 3, 33),
(41, 5, 34),
(42, 6, 34),
(43, 3, 36),
(44, 3, 37),
(45, 1, 38),
(46, 2, 39),
(47, 3, 40),
(48, 1, 42),
(49, 5, 43),
(50, 4, 44),
(51, 6, 45),
(52, 1, 46),
(53, 4, 47),
(54, 7, 48),
(55, 1, 49),
(56, 4, 50),
(57, 3, 51),
(58, 2, 52),
(59, 3, 53),
(60, 6, 54),
(61, 5, 55),
(62, 4, 56),
(63, 1, 57),
(64, 1, 58),
(65, 5, 59),
(66, 6, 59),
(67, 4, 60),
(68, 4, 62),
(69, 5, 63),
(70, 6, 63),
(71, 4, 64),
(72, 5, 65),
(73, 7, 65),
(74, 4, 66),
(75, 4, 67),
(76, 2, 68),
(77, 3, 68),
(78, 4, 68),
(79, 5, 68),
(80, 1, 68),
(81, 7, 68),
(82, 6, 68),
(83, 2, 69),
(84, 2, 70),
(85, 7, 71),
(86, 3, 72),
(87, 3, 73),
(88, 5, 73),
(89, 2, 74),
(90, 7, 75),
(91, 4, 76),
(92, 4, 77),
(93, 5, 78),
(94, 2, 80),
(95, 1, 81),
(96, 2, 82),
(97, 1, 83),
(98, 2, 84),
(99, 3, 85),
(100, 4, 85),
(101, 4, 87),
(102, 5, 88),
(103, 6, 88),
(104, 4, 89),
(105, 4, 90),
(106, 3, 91),
(107, 3, 92),
(108, 6, 93),
(109, 7, 94),
(110, 1, 96),
(111, 3, 97),
(112, 4, 98),
(113, 4, 99),
(114, 1, 100),
(115, 4, 101),
(116, 4, 102),
(117, 5, 103),
(118, 4, 104),
(119, 5, 105),
(120, 2, 106),
(121, 4, 107),
(122, 7, 108),
(123, 2, 109),
(124, 5, 110),
(125, 6, 110),
(126, 5, 111),
(127, 2, 112),
(128, 5, 113),
(129, 1, 114),
(130, 1, 115),
(131, 3, 116),
(132, 4, 117),
(133, 2, 119),
(134, 1, 120),
(135, 1, 121),
(136, 4, 122),
(137, 1, 123),
(138, 2, 124),
(139, 4, 125),
(140, 2, 126),
(141, 1, 127),
(142, 5, 128),
(143, 4, 129),
(144, 4, 130),
(145, 4, 131),
(146, 5, 132),
(147, 3, 133),
(148, 2, 134),
(149, 5, 135),
(150, 4, 136),
(151, 2, 137),
(152, 6, 138),
(153, 5, 139),
(154, 5, 140),
(155, 6, 140),
(156, 6, 141),
(157, 6, 142),
(158, 6, 143),
(159, 4, 144),
(160, 7, 145),
(161, 4, 146),
(162, 1, 147),
(163, 4, 148),
(164, 2, 149),
(165, 3, 150),
(166, 4, 150),
(167, 1, 150),
(168, 7, 151),
(169, 5, 152),
(170, 7, 153),
(171, 2, 154),
(172, 1, 156),
(173, 3, 157),
(174, 5, 158),
(175, 1, 159),
(176, 4, 160),
(177, 5, 162),
(178, 6, 163),
(179, 1, 164),
(180, 2, 165),
(181, 4, 166),
(182, 1, 167),
(183, 7, 168),
(184, 1, 169),
(185, 2, 170),
(186, 6, 171),
(187, 4, 172),
(188, 4, 174),
(189, 5, 175),
(190, 2, 176),
(191, 5, 177),
(192, 5, 178),
(193, 4, 179),
(194, 5, 181),
(195, 7, 182),
(196, 7, 183),
(197, 6, 183),
(198, 1, 185),
(199, 6, 186),
(200, 3, 187),
(201, 4, 188),
(202, 2, 189),
(203, 3, 189),
(204, 5, 189),
(205, 1, 189),
(206, 6, 189),
(207, 4, 190);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szereplo`
--

CREATE TABLE `szereplo` (
  `id` int(11) NOT NULL,
  `szinesz` varchar(100) NOT NULL,
  `szerep` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `szereplo`
--

INSERT INTO `szereplo` (`id`, `szinesz`, `szerep`) VALUES
(1, 'Albert Flórián', 'Albert Flórián'),
(3, 'Áts Gyula', 'Szabó Ferenc'),
(4, 'Avar István', 'Tolnai Béla, balatonfüredi rendőrkapitány'),
(5, 'Bács Kati', 'Szekér \"Pipi\" Ilona'),
(6, 'Balla Ica', 'Zamoreczkyné'),
(7, 'Balogh Menyhért', 'Gengszter'),
(8, 'Bánhidi László', 'Matuska'),
(9, 'Bars József', 'Szerelmespár'),
(10, 'Basilides Zoltán', 'Kapa bácsi'),
(11, 'Bay Gyula', 'Johann'),
(13, 'Benedek Miklós', 'Mr. P. Smith, angol ékszerész'),
(14, 'Benkő Márta', 'Pincérnő a diszkóhajón'),
(15, 'Benkő Péter', 'Szemere nyomozó (\"Csapos\")'),
(16, 'Bessenyei Ferenc', 'Öreg színész'),
(17, 'Beszterczey Attila', 'Autótolvaj'),
(18, 'Bodrogi Gyula', 'Boros hadnagy'),
(19, 'Borbás Erika', 'Nő a hostessképzőben'),
(20, 'Boros Sándor', 'Gengszter'),
(21, 'Bujtor István', 'Ötvös Csöpi'),
(22, 'Csányi János', 'Piri'),
(23, 'Csizmadia Gergely', 'Venyige'),
(24, 'Csomor Ágnes', 'Recepciós Pécselyen'),
(25, 'Derzsi János', 'Gagyi'),
(26, 'Detre Annamária', 'Konsumex bolt vezetője'),
(27, 'Đoko Rosić', 'Alex/Heinrich Romfeld'),
(28, 'Dósa Zsuzsanna', 'Kovács Réka'),
(29, 'Dózsa László', 'Szörfös Dodi'),
(30, 'Dzsupin Ibolya', 'Kaszinó pénztáros'),
(32, 'Farkas Antal', 'Gengszter'),
(33, 'Fekete András', 'Gyula bácsi, rendőr'),
(34, 'Fekete Linda', 'Rendőrlány'),
(36, 'Földessy Margit', 'Vidámparki pénztáros'),
(37, 'Frajt Edit', 'Tacsányiné, a kastély igazgatója'),
(38, 'Fridenzi Éva', 'Frau Borg, teniszezőnő'),
(39, 'Galambos György', 'Benzinkutas'),
(40, 'Gálvölgyi János', 'Tangóharmonikás'),
(42, 'Gór Nagy Mária', 'Csíkné Zsuzsa'),
(43, 'Gór Nagy Mária', 'Mária, főhadnagy'),
(44, 'Gór Nagy Mária', 'Micike, titkárnő'),
(45, 'Hagara Alexa', 'Rendőrlány'),
(46, 'Halász László', 'Nagy Vilmos, szántódi rendőr'),
(47, 'Halász László', 'Utas a reptéren'),
(48, 'Harsay Gábor', 'Kardos embere'),
(49, 'Hernádi Judit', 'Vályi Zoltánné'),
(50, 'Hollósi Frigyes', 'Babaszállító'),
(51, 'Horesnyi László', 'Tacsányi Ferenc'),
(52, 'Hunyadkürti István', 'Gengszter'),
(53, 'Hunyadkürti István', 'Veréb'),
(54, 'Igó Éva', 'Bea, főhadnagy'),
(55, 'Janisch Éva', 'Molnár Irén'),
(56, 'Juhász Illés', 'Kardos embere'),
(57, 'Juhász Tamás', 'Kisfiú'),
(58, 'Kállai Ferenc', 'Csík István, vitorlázó'),
(59, 'Kállai Ferenc', 'Havilúd'),
(60, 'Kállay Ilona', 'Árverési kikiáltó'),
(62, 'Kamuthy Jenő', 'Orvos'),
(63, 'Karácsonyi Melinda', 'Rendőrlány'),
(64, 'Kárász Zénó', 'Kardos embere'),
(65, 'Kari Györgyi', 'Madame'),
(66, 'Kaszás Géza', 'Purci úr félszemű embere'),
(67, 'Kerekes József', 'Purci úr embere'),
(68, 'Kern András', 'Kardos doktor'),
(69, 'Kibédi Ervin', 'Éttermi dolgozó'),
(70, 'Kiss Jenő', 'Szállodaigazgató'),
(71, 'Kiss Zoltán', 'Prézli'),
(72, 'Kivés György', 'Galagonya'),
(73, 'Kocsis György', 'Rendőr'),
(74, 'Koncz Gábor', 'Bandavezér'),
(75, 'Konrád Antal', 'Dávid'),
(76, 'Konrád Antal', 'Kamiontelep-vezető'),
(77, 'Kopekin Györgyi', 'Bögyös Maca'),
(78, 'Koppány Zoltán', 'Szakács'),
(80, 'Kossovits Mónika', 'Matuska Ilona (az unoka)'),
(81, 'Kovács István', 'Soltész Gábor, Csík mannschaftja'),
(82, 'Kovács János', 'Kovács József'),
(83, 'Kovács Károly', 'Öreg horgász'),
(84, 'Kozák László', 'Gondnok'),
(85, 'Kozák László', 'Purci úr'),
(87, 'Kökényessy Ági', 'Pincérnő'),
(88, 'Köllő Babett', 'Panni'),
(89, 'Könyves Zsuzsa', 'Lány a jachton'),
(90, 'Körtvélyessy Zsolt', 'Igazgató'),
(91, 'Körtvélyessy Zsolt', 'Pista, a badeni kaszinó magyar alkalmazottja'),
(92, 'Kristály Barbara', 'Topolino'),
(93, 'Kun Vilmos', 'Guszti bácsi'),
(94, 'Labancz Lilla', 'Ilonka'),
(96, 'Láng József', 'Bárdos'),
(97, 'Leisen Antal', 'Cövek'),
(98, 'Lippai László', 'Sebes Jenő, Gonda Béla kamionos társa'),
(99, 'Lugosi György', 'Megfigyelő'),
(100, 'Márta András', 'Öcsi, helikopterpilóta'),
(101, 'Martin Márta', 'Feleség a reptéren'),
(102, 'Márton István', 'kábítószercsempész'),
(103, 'Márton István', 'Szalmakalapos turista Dugó mellett'),
(104, 'Maszlay István', 'Étteremvezető'),
(105, 'Maszlay István', 'Kálló Ferenc'),
(106, 'Medveczky Ilona', 'Horváth Éva'),
(107, 'Méhes László', 'Szenes, kamionsofőr'),
(108, 'Mézes Violetta', 'Mezei Vivi, riporternő'),
(109, 'Miklósy György', 'Térképész'),
(110, 'Milka Julianna', 'Rendőrlány'),
(111, 'Molnár Judit', 'Gizi'),
(112, 'Mucsi Sándor', 'Gengszter'),
(113, 'Nagy Balázs', 'Varga Richárd'),
(114, 'Németh László', 'Bélai alhadnagy'),
(115, 'Némethy Ferenc', 'Főapát'),
(116, 'Nyakó Júlia', 'Arany'),
(117, 'Nyertes Zsuzsa', 'Zsuzsi'),
(119, 'Orosz István', 'Rendőr a tavasbarlangban'),
(120, 'Paláncz Ferenc', 'Járőr'),
(121, 'Pálok Gábor', 'Bence (Matuska unokája)'),
(122, 'Papadimitriu Athina', 'Nikosz Sztálikisz felesége'),
(123, 'Pető János', 'Szántó János \"Jana\", vitorlázó'),
(124, 'Petra Hinze', 'Sybille Gudrat'),
(125, 'Piroch Gábor', '\"Nokedli\"'),
(126, 'Piroch Gábor', 'Gengszter'),
(127, 'Pituk István', 'Kanyó István, vitorlázó'),
(128, 'Posonyi Takács László', 'Muki'),
(129, 'Posta Lajos', 'Benzinkutas'),
(130, 'Prókai Éva', 'Ági'),
(131, 'Prókay Annamária', 'Stewardess'),
(132, 'Psota Irén', 'Lukrécia'),
(133, 'Puskás Ferenc', 'Puskás Ferenc'),
(134, 'Rák Kati', 'Kati, Alex titkos barátnője'),
(135, 'Rák Kati', 'Mariska bárónő'),
(136, 'Raksányi Gellért', 'Berger'),
(137, 'Reviczky Gábor', 'A kiemelést vezető matróz'),
(138, 'Rupnik Károly', 'Zsidai Imre'),
(139, 'Sáfár Anikó', 'Wágner Helga'),
(140, 'Schwimmer János', 'Dugó'),
(141, 'Siklósi Örs', 'Guriga'),
(142, 'Simon Géza', 'Dinnye'),
(143, 'Simonkovits Ákos', 'Autótolvaj'),
(144, 'Sipka László', 'Férfi a kaszinónál'),
(145, 'Sipos Eszter Anna', 'Rendőrlány'),
(146, 'Sipos István', 'Taxiutas'),
(147, 'Solti Bertalan', 'Siminszki, tihanyi horgász és a hotel éjjeliőre'),
(148, 'Sörös Sándor', 'Színész Bob / Oszkár'),
(149, 'Sunyovszky Szilvia', 'Kovács Ibi'),
(150, 'Szabó Géza', 'Buci'),
(151, 'Szabó Győző', 'Buga János'),
(152, 'Szántó Szandra', 'Rendőrlány'),
(153, 'Szegő András', 'Kardos embere'),
(154, 'Székhelyi József', 'Pötyi, dadogós'),
(156, 'Szerencsi Hugó', 'Imre bácsi, templomszolga'),
(157, 'Szilágyi István', 'Dinnyeárus'),
(158, 'Szilágyi István', 'Ékszerész'),
(159, 'Szilágyi István', 'Schumann, osztrák vitorlázó'),
(160, 'Szilágyi István', 'Szivar, Purci úr embere'),
(162, 'Szoboszlai Sándor', 'Zamoreczky'),
(163, 'Szulák Andrea', 'Vörösbegy'),
(164, 'Szűr Mari', 'Szerelmespár'),
(165, 'Temessy Hédi', 'Alex felesége'),
(166, 'Téri Sándor', 'Günter'),
(167, 'Téri Sándor', 'Jani, szántódi rendőr'),
(168, 'Timkó János', 'Védelmi pénzt szedő maffiózó'),
(169, 'Tolnai Miklós', 'Somos János tiszteletes'),
(170, 'Tóth Enikő', 'Márta'),
(171, 'Tóth-Tahi Máté', 'Részeg teherautó-sofőr'),
(172, 'Tóth-Tahi Máté', 'Szabó Jocó, kamionsofőr'),
(174, 'Tuza Bálint', 'Ricsi'),
(175, 'Tuza Bálint', 'Szabó Géza Béla, államtitkár'),
(176, 'Tyll Attila', 'Kardos főnöke'),
(177, 'Ullmann Mónika', 'Rendőrlány'),
(178, 'Ungvári István', 'Gengszter'),
(179, 'Urmai Gábor', 'Kardos embere'),
(181, 'Vándor Attila', 'Ékszerrabló'),
(182, 'Vanya Tímea', 'Lukács őrmester'),
(183, 'Várfi Sándor', '\"Rozoga\" Jenei Botond'),
(185, 'Varga Katalin', 'Zsuzsi, fiatal nő a zsűrihajón'),
(186, 'Vincze Gábor Péter', 'Szabó úr'),
(187, 'Wichmann Tamás', 'Popej'),
(188, 'Závodszky Noémi', 'Keramikus'),
(189, 'Zenthe Ferenc', 'Záray István, balatonfüredi rendőrkapitány, később államtitkár'),
(190, 'Zsebők János', 'Hans');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `stab`
--
ALTER TABLE `stab`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szereplo`
--
ALTER TABLE `szereplo`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
