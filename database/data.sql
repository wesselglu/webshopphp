-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 mrt 2020 om 08:50
-- Serverversie: 10.1.35-MariaDB
-- PHP-versie: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(1) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(2, 'wesselnagt', 'wessel', 'wesselnagtegaal@hotmail.com'),
(3, 'wesselnagtegaal', 'wessel', 'wesselnagtegaal@hotmail.com'),
(7, 'wesselnagtegaal', 'wessel', 'wesselnagtegaal@hotmail.com'),
(8, 'wezel', 'toko', 'noob@hotmail.com'),
(9, 'awdawd', 'toko', 'noob@hotmail.com'),
(10, 'qwdawd', 'd41d8cd98f00b204e9800998ecf8427e', 'noob@hotmail.com'),
(11, 'dqwdqw', 'bbb48314e5e6ee68d2d8bc1364b8599b', 'noob@hotmail.com');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `active`) VALUES
(1, 'tafellamp', 'Tafellampen zijn binnenlampen voor op tafel.', 1),
(2, 'buitenlamp', 'buitenlampen zijn lampen voor voor buiten.', 1),
(3, 'designlamp', 'designlampen zijn lampen die door een designer zijn gemaakt.', 1),
(4, 'bureaulamp', 'bureaulampen zijn lampen voor op het bureau.', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `infixName` varchar(10) DEFAULT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthDate` date NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `customer`
--

INSERT INTO `customer` (`id`, `firstName`, `infixName`, `lastName`, `email`, `birthDate`, `password`) VALUES
(1, 'jan', 'van', 'os', 'jos@glu.nl', '0000-00-00', 'jan'),
(9, 'klant', NULL, 'twee', 'klant@klant.nl', '0000-00-00', '123456');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `color` varchar(50) NOT NULL,
  `weight` int(10) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `category_id`, `price`, `color`, `weight`, `active`) VALUES
(4, 'Arstid', 'De lampenkap van textiel geeft een zacht en decoratief licht.\r\n<br><br>\r\nLichtbron wordt apart verkocht. IKEA adviseert de led-lamp E27 globevorm opaalwit.\r\n<br><b>\r\nGebruik een opalen lichtbron als je een gewone lampenkap of lamp hebt en je een gelijkmatig, gespreid licht wilt.\r\n<br><br>\r\nVoorzien van trekschakelaar.\r\n<br><br>\r\nDit product is CE-gecertificeerd.\r\n\r\nGoed te completeren met andere lampen uit dezelfde serie.', 1, '39.95', 'wit', 300, 1),
(5, 'buitenlamp', 'Een lamp voor buiten.', 1, '59.95', 'zwart', 105, 1),
(6, 'gans-lamp', 'Een lamp.', 1, '29.95', 'zwart', 200, 1),
(7, 'giraf-lamp', 'Een lamp.', 1, '49.95', 'zwart', 150, 1),
(8, 'hektar', 'Een lamp.', 1, '19.95', 'zwart', 180, 1),
(9, 'jesse', 'Een lamp.', 1, '19.95', 'wit', 150, 1),
(10, 'lampje', 'Een lampje.', 1, '25.95', 'zwart', 150, 1),
(11, 'llahra', 'Een lamp.', 1, '29.95', 'wit', 150, 1),
(13, 'struisvogel-lamp', 'Een stuisvogel-lamp.', 1, '59.95', 'geel', 200, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_image`
--

CREATE TABLE `product_image` (
  `id` int(100) NOT NULL,
  `product_id` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image`, `active`) VALUES
(1, 1, 'arstid.jpg', 1),
(2, 1, 'buitenlamp.jpg', 1),
(3, 1, 'buitenlamp2.jpg', 1),
(4, 1, 'gans.jpg', 1),
(5, 1, 'giraf.jpg', 1),
(6, 1, 'giraf2.jpg', 1),
(7, 1, 'hektar.jpg', 1),
(8, 1, 'jesse.png', 1),
(9, 1, 'lampje.jpg', 1),
(10, 1, 'llahra.png', 1),
(11, 1, 'struisvogel.jpg', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `infixName` varchar(10) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `street` varchar(10) NOT NULL,
  `houseNumber` varchar(10) NOT NULL,
  `houseNumber_addon` varchar(10) NOT NULL,
  `zipCode` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `newsletter_subscription` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
