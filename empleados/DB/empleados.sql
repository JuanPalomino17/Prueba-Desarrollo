-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2021 a las 19:07:30
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `cedula` int(25) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellidos`, `cedula`, `correo`, `telefono`) VALUES
(66, 'JUAN ELIAS', 'PALOMINO MARQUEZ', 1082938730, 'PALOMINO@GMAIL.COM', '3017500969'),
(67, ' TOMAS', 'ORTIZ CAMPOS', 123456789, 'CARLOSORTIZ@GMAIL.COM', '4322222'),
(68, 'ALEJANDRO RAFAEL', 'GOMEZ PARODI', 12345876, 'ALEJANDROGOMEZ@GMAIL.COM', '301789654'),
(69, 'LUIS VEGA', 'PEREZ COTEZ', 54321876, 'PAULAPEREZ@GMAIL.COM', '321987654'),
(70, 'CARLOS ANDRES', 'MARTINEZ CUELLO', 8965412, 'carlosmartinez@gmail.com', '313987654'),
(71, 'JULIANA VANESSA', 'VALDERRAMA CAMACHO', 98123765, 'julianavaladerrama@gmail.com', '323987567'),
(72, 'KALETH ', 'CUELLO PEÑALVER', 1089234576, 'KALETHCUELLO@GMAIL.COM', '311098765'),
(74, 'LUISA FERNANDA', 'PATERNINA LOPEZ', 7654398, 'luisapaternina@gmail.com', '4300987'),
(75, 'PAOLA CAROLINA', 'NUÑEZ GONSALEZ', 1083987654, 'paolanuñez@gmail.com', '323789654'),
(77, 'LUZ ESTELA', 'ALVAREZ JIMENEZ', 67890543, 'luzalvarez@gmail.com', '302876345'),
(80, 'VALENTINA SOFIA', 'TORRES ORTIZ', 12345, 'VALENTINAMEJIA@GMAIL.COM', '320789457'),
(81, 'CAMILO ANDRES', 'gomez', 383624, 'CAMILOGOMEZ@GMAIL.COM', '313245678'),
(82, 'ismael', 'torres', 123456, 'ismaelbotello@gmail.com', '320987654'),
(83, 'matias ', 'quintero', 3456789, 'matias@gmail.com', '5432134'),
(85, 'carmen maria', 'perez perez', 12345678, 'carmenguerrero@gmail.com', '324098654'),
(87, 'luis', 'polo', 123987, 'luspolo@gmail.com', '32145678'),
(97, 'lorena', 'mejia', 900123456, 'lorena@gmail.com', '87654322'),
(98, 'Arnulfo', 'quintero', 1002003000, 'arnulfo@gmail.com', '100200300');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `cedula` (`cedula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
