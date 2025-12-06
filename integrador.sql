-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2025 a las 18:42:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `DNI` int(8) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `nombre_y_apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`DNI`, `producto`, `nombre_y_apellido`, `email`, `direccion`, `ciudad`) VALUES
(12345678, 'celular', 'Juan Pérez', 'juanperez@example.com', 'Av. Libertador 1234, Piso 2', 'Buenos Aires'),
(23456789, 'tablet', 'Luis Rodríguez', 'luisrodriguez@example.com', 'Calle 8 de Octubre 456', 'Montevideo'),
(34567890, 'smartwatch', 'María López', 'marialopez@example.com', 'Av. 9 de Julio 7890', 'Santiago'),
(45678901, 'audífonos', 'Carlos Sánchez', 'carlossanchez@example.com', 'Calle Mayor 10, 1°B', 'Barcelona'),
(87654321, 'laptop', 'Ana Gómez', 'anagomez@example.com', 'Calle Falsa 567, 3° A', 'Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`) VALUES
(1, 'celular', 300000),
(2, 'laptop', 1200000),
(3, 'tablet', 600000),
(4, 'audífonos', 150000),
(5, 'smartwatch', 250000),
(6, 'teclado mecánico', 350000),
(7, 'ratón gamer', 200000),
(8, 'monitor', 800000),
(9, 'disco duro externo', 450000),
(10, 'cámara digital', 700000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
