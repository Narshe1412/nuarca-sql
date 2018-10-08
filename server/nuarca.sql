-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2018 a las 11:14:09
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nuarca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custlist`
--

CREATE TABLE `custlist` (
  `custId` tinyint(4) UNSIGNED NOT NULL,
  `custName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `custlist`
--

INSERT INTO `custlist` (`custId`, `custName`) VALUES
(1, 'Diarmuid McCarthy'),
(2, 'Thomas Mcloughlin'),
(3, 'Paul Leahy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orderlist`
--

CREATE TABLE `orderlist` (
  `orderId` tinyint(3) UNSIGNED NOT NULL,
  `item` varchar(40) NOT NULL,
  `units` int(11) NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `orderDate` varchar(50) NOT NULL,
  `repId` tinyint(4) UNSIGNED NOT NULL,
  `custId` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orderlist`
--

INSERT INTO `orderlist` (`orderId`, `item`, `units`, `unitPrice`, `orderDate`, `repId`, `custId`) VALUES
(2, 'Pencil', 95, '1.99', '01/06/2016', 2, 1),
(3, 'Binder', 50, '19.99', '01/23/2016', 3, 2),
(4, 'Pencil', 36, '4.99', '02/09/2016', 4, 3),
(5, 'Pen', 27, '19.99', '02/26/2016', 5, 1),
(6, 'Pencil', 56, '2.99', '03/15/2016', 6, 2),
(7, 'Binder', 60, '4.99', '04/01/2016', 2, 3),
(8, 'Pencil', 75, '1.99', '04/18/2016', 7, 1),
(9, 'Pencil', 90, '4.99', '05/05/2016', 4, 2),
(10, 'Pencil', 32, '1.99', '05/22/2016', 8, 3),
(11, 'Binder', 60, '8.99', '06/08/2016', 2, 1),
(12, 'Pencil', 90, '4.99', '06/25/2016', 9, 2),
(13, 'Binder', 29, '1.99', '07/12/2016', 10, 3),
(14, 'Binder', 81, '19.99', '07/29/2016', 11, 1),
(15, 'Pencil', 35, '4.99', '08/15/2016', 2, 2),
(16, 'Desk', 2, '125.00', '09/01/2016', 12, 3),
(17, 'Pen Set', 16, '15.99', '09/18/2016', 2, 1),
(18, 'Binder', 28, '8.99', '10/05/2016', 9, 2),
(19, 'Pen', 64, '8.99', '10/22/2016', 2, 3),
(20, 'Pen', 15, '19.99', '11/08/2016', 11, 1),
(21, 'Pen Set', 96, '4.99', '11/25/2016', 3, 2),
(22, 'Pencil', 67, '1.29', '12/12/2016', 12, 3),
(23, 'Pen Set', 74, '15.99', '12/29/2016', 11, 1),
(24, 'Binder', 46, '8.99', '01/15/2017', 5, 2),
(25, 'Binder', 87, '15.00', '02/01/2017', 12, 3),
(26, 'Binder', 4, '4.99', '02/18/2017', 2, 1),
(27, 'Binder', 7, '19.99', '03/07/2017', 6, 2),
(28, 'Pen Set', 50, '4.99', '03/24/2017', 4, 3),
(29, 'Pencil', 66, '1.99', '04/10/2017', 7, 1),
(30, 'Pen', 96, '4.99', '04/27/2017', 10, 2),
(31, 'Pencil', 53, '1.29', '05/14/2017', 5, 3),
(32, 'Binder', 80, '8.99', '05/31/2017', 5, 1),
(33, 'Desk', 5, '125.00', '06/17/2017', 3, 2),
(34, 'Pen Set', 62, '4.99', '07/04/2017', 2, 3),
(35, 'Pen Set', 55, '12.49', '07/21/2017', 9, 1),
(36, 'Pen Set', 42, '23.95', '08/07/2017', 3, 2),
(37, 'Desk', 3, '275.00', '08/24/2017', 6, 3),
(38, 'Pencil', 7, '1.29', '09/10/2017', 5, 1),
(39, 'Pen', 76, '1.99', '09/27/2017', 6, 2),
(40, 'Binder', 57, '19.99', '10/14/2017', 8, 3),
(41, 'Pencil', 14, '1.29', '10/31/2017', 7, 1),
(42, 'Binder', 11, '4.99', '11/17/2017', 4, 2),
(43, 'Binder', 94, '19.99', '12/04/2017', 4, 3),
(44, 'Binder', 28, '4.99', '12/21/2017', 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `replist`
--

CREATE TABLE `replist` (
  `repId` tinyint(3) UNSIGNED NOT NULL,
  `repName` varchar(50) NOT NULL,
  `region` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `replist`
--

INSERT INTO `replist` (`repId`, `repName`, `region`) VALUES
(2, 'Thomas Jones', 'East'),
(3, 'Jane Kivell', 'Central'),
(4, 'Micheal Jardine', 'Central'),
(5, 'Jane Gill', 'Central'),
(6, 'Mira Sorvino', 'West'),
(7, 'John Andrews', 'Central'),
(8, 'Thompson Hurt', 'West'),
(9, 'Morgan Chase', 'Central'),
(10, 'Howard Stern', 'East'),
(11, 'Parent Joe', 'East'),
(12, 'Smithers John', 'Central');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `custlist`
--
ALTER TABLE `custlist`
  ADD PRIMARY KEY (`custId`);

--
-- Indices de la tabla `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `repFK` (`repId`),
  ADD KEY `custFK` (`custId`);

--
-- Indices de la tabla `replist`
--
ALTER TABLE `replist`
  ADD PRIMARY KEY (`repId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `custlist`
--
ALTER TABLE `custlist`
  MODIFY `custId` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `orderId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `replist`
--
ALTER TABLE `replist`
  MODIFY `repId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `custFK` FOREIGN KEY (`custId`) REFERENCES `custlist` (`custId`),
  ADD CONSTRAINT `repFK` FOREIGN KEY (`repId`) REFERENCES `replist` (`repId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
