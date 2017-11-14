-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2017 a las 17:18:36
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciudades`
--
CREATE DATABASE IF NOT EXISTS `ciudades` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ciudades`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbciudades`
--

CREATE TABLE `tbciudades` (
  `id` int(3) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `descripcion` varchar(800) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbciudades`
--

INSERT INTO `tbciudades` (`id`, `ciudad`, `descripcion`, `activo`) VALUES
(1, 'Londres', 'descripcion Londres', 1),
(2, 'Paris', 'descripcion Paris', 1),
(3, 'Roma', 'descripcion Roma', 1),
(6, 'Praga', 'descripcion praga', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbimagenes`
--

CREATE TABLE `tbimagenes` (
  `id` int(3) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `idciudad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbimagenes`
--

INSERT INTO `tbimagenes` (`id`, `imagen`, `idciudad`) VALUES
(7, 'uploads/7_Londres_1.jpg', 1),
(8, 'uploads/8_Londres_2.jpg', 1),
(9, 'uploads/9_Londres_3.jpg', 1),
(10, 'uploads/10_Paris_1.jpg', 2),
(11, 'uploads/11_Paris_2.jpg', 2),
(12, 'uploads/12_Roma_1.jpg', 3),
(13, 'uploads/13_Roma_2.jpg', 3),
(14, 'uploads/14_Roma_3.jpg', 3),
(15, 'uploads/15_praga.jpg', 6),
(16, 'uploads/16_praga.jpg', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `id` int(3) NOT NULL,
  `nombreCompleto` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbusuarios`
--

INSERT INTO `tbusuarios` (`id`, `nombreCompleto`, `user`, `pass`) VALUES
(25, 'Pedro López', 'plopez', '81dc9bdb52d04dc20036dbd8313ed055'),
(27, 'María Ruíz', 'mruiz', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbciudades`
--
ALTER TABLE `tbciudades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbimagenes`
--
ALTER TABLE `tbimagenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbciudades`
--
ALTER TABLE `tbciudades`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbimagenes`
--
ALTER TABLE `tbimagenes`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
