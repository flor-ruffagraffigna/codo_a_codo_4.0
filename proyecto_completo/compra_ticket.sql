-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2022 a las 00:13:25
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `compraticket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `cantidad` varchar(10) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `confirmado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id`, `nombre`, `apellido`, `mail`, `cantidad`, `categoria`, `confirmado`) VALUES
(3, 'Mauro', 'Lopez', 'maulopez@gmail.com', '1', 'Sin Categoria', 1),
(4, 'Jorge', 'Ruli', 'jruli@gmail.com', '2', 'Estudiante', 1),
(5, 'Silvia', 'Jerez', 'jerezzz@gamil.com', '3', 'Estudiante', 1),
(6, 'Carla', 'Rodriguez', 'crodri@gmail.com', '2', 'Trainee', 0),
(7, 'Esteban', 'Wright', 'eswright@gmail.com', '3', 'Junior', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
