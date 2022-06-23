-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2022 a las 23:33:12
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `venta_carros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `precio` int(11) NOT NULL,
  `id_auto` int(11) NOT NULL,
  `año` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `unidades_disponibles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`precio`, `id_auto`, `año`, `marca`, `nombre`, `unidades_disponibles`) VALUES
(550000, 1, 2022, 'Honda', 'Civic Type R', 10),
(245000, 2, 2022, 'Dodge', 'Challenger', 6),
(660000, 3, 2022, 'Chevrolet', 'Cheyenne', 30),
(570000, 4, 2022, 'Ford', 'Mustang', 23),
(1245000, 5, 2022, 'Audi', 'A3', 16),
(120000, 6, 2022, 'Nissan', 'Poderoso Tsuru', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_vendidad`
--

CREATE TABLE `unidades_vendidad` (
  `fecha` date NOT NULL,
  `unidades_vendidas` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `id_auto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidades_vendidad`
--

INSERT INTO `unidades_vendidad` (`fecha`, `unidades_vendidas`, `pais`, `id_auto`) VALUES
('2022-05-26', 5, 'Colombia', 1),
('2022-04-27', 6, 'España', 2),
('2022-06-09', 2, 'Mexico', 3),
('2022-06-26', 8, 'Paris', 4),
('2022-06-25', 3, 'United States', 5),
('2022-05-26', 1, 'Francia', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id_auto`);

--
-- Indices de la tabla `unidades_vendidad`
--
ALTER TABLE `unidades_vendidad`
  ADD UNIQUE KEY `id_auto` (`id_auto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `unidades_vendidad`
--
ALTER TABLE `unidades_vendidad`
  ADD CONSTRAINT `unidades_vendidad_ibfk_1` FOREIGN KEY (`id_auto`) REFERENCES `modelos` (`id_auto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
