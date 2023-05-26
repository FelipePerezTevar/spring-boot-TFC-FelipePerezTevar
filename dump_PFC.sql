-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 08:28:57
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `macetas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` int(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `nombre`) VALUES
(1, 'Blanco'),
(2, 'Amarillo'),
(3, 'Rojo'),
(4, 'Naranja'),
(5, 'Negro'),
(6, 'Verde'),
(7, 'Violeta'),
(8, 'Azul');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagens`
--

CREATE TABLE `imagens` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `imagens`
--

INSERT INTO `imagens` (`id`, `nombre`, `url`, `tipo`) VALUES
(1, '530-AM', 'assets/imagenes/macetas/530-/530-AM.jpg', 'jpg'),
(2, '530-B', 'assets/imagenes/macetas/530-/530-B.jpg', 'jpg'),
(3, '530-N', 'assets/imagenes/macetas/530-/530-N.jpg', 'jpg'),
(4, '530-NA', 'assets/imagenes/macetas/530-/530-NA.jpg', 'jpg'),
(5, '530-R', 'assets/imagenes/macetas/530-/530-R.jpg', 'jpg'),
(6, '530-V', 'assets/imagenes/macetas/530-/530-V.jpg', 'jpg'),
(7, '530-VL', 'assets/imagenes/macetas/530-/530-VL.jpg', 'jpg'),
(8, '715-AM', 'assets/imagenes/macetas/715-/715-AM.jpg', 'jpg'),
(9, '715-B', 'assets/imagenes/macetas/715-/715-B.jpg', 'jpg'),
(10, '715-N', 'assets/imagenes/macetas/715-/715-N.jpg', 'jpg'),
(11, '715-NA', 'assets/imagenes/macetas/715-/715-NA.jpg', 'jpg'),
(12, '715-R', 'assets/imagenes/macetas/715-/715-R.png', 'png'),
(13, '715-V', 'assets/imagenes/macetas/715-/715-V.jpg', 'jpg'),
(14, '715-VL', 'assets/imagenes/macetas/715-/715-VL.jpg', 'jpg'),
(15, '614-AM', 'assets/imagenes/macetas/614-/614-AM.jpg', 'jpg'),
(16, '614-B', 'assets/imagenes/macetas/614-/614-B.jpg', 'jpg'),
(17, '614-N', 'assets/imagenes/macetas/614-/614-N.jpg', 'jpg'),
(18, '614-NA', 'assets/imagenes/macetas/614-/614-NA.jpg', 'jpg'),
(19, '614-R', 'assets/imagenes/macetas/614-/614-R.jpg', 'jpg'),
(20, '614-V', 'assets/imagenes/macetas/614-/614-V.jpg', 'jpg'),
(21, '614-VL', 'assets/imagenes/macetas/614-/614-VL.jpg', 'jpg'),
(22, '701-B', 'assets/imagenes/macetas/701-/701-B.png', 'png'),
(23, '701-N', 'assets/imagenes/macetas/701-/701-N.jpg', 'jpg'),
(24, '708-B', 'assets/imagenes/macetas/708-/708-B.jpg', 'jpg'),
(25, '708-N', 'assets/imagenes/macetas/708-/708-N.jpg', 'jpg'),
(26, '708-NA', 'assets/imagenes/macetas/708-/708-NA.jpg', 'jpg'),
(27, '708-R', 'assets/imagenes/macetas/708-/708-R.jpg', 'jpg'),
(28, '708-V', 'assets/imagenes/macetas/708-/708-V.jpg', 'jpg'),
(29, '708-VL', 'assets/imagenes/macetas/708-/708-VL.jpg', 'jpg'),
(30, '115-B', 'assets/imagenes/macetas/115-/115-B.png', 'png'),
(31, '115-N', 'assets/imagenes/macetas/115-/115-N.png', 'png'),
(32, '115-NA', 'assets/imagenes/macetas/115-/115-NA.png', 'png'),
(33, '115-R', 'assets/imagenes/macetas/115-/115-R.png', 'png'),
(34, '115-V', 'assets/imagenes/macetas/115-/115-V.png', 'png'),
(35, '115-VL', 'assets/imagenes/macetas/115-/115-VL.png', 'png'),
(36, '610-AM', 'assets/imagenes/macetas/610-/610-AM.jpg', 'jpg'),
(37, '610-B', 'assets/imagenes/macetas/610-/610-B.jpg', 'jpg'),
(38, '610-N', 'assets/imagenes/macetas/610-/610-N.jpg', 'jpg'),
(39, '610-NA', 'assets/imagenes/macetas/610-/610-NA.jpg', 'jpg'),
(40, '610-R', 'assets/imagenes/macetas/610-/610-R.jpg', 'jpg'),
(41, '610-V', 'assets/imagenes/macetas/610-/610-V.jpg', 'jpg'),
(42, '610-VL', 'assets/imagenes/macetas/610-/610-VL.jpg', 'jpg'),
(43, '619-AM', 'assets/imagenes/macetas/619-/619-AM.jpg', 'jpg'),
(44, '619-B', 'assets/imagenes/macetas/619-/619-B.jpg', 'jpg'),
(45, '619-N', 'assets/imagenes/macetas/619-/619-N.jpg', 'jpg'),
(46, '619-NA', 'assets/imagenes/macetas/619-/619-NA.jpg', 'jpg'),
(47, '619-R', 'assets/imagenes/macetas/619-/619-R.jpg', 'jpg'),
(48, '619-V', 'assets/imagenes/macetas/619-/619-V.jpg', 'jpg'),
(49, '619-VL', 'assets/imagenes/macetas/619-/619-VL.jpg', 'jpg'),
(50, '630-AM', 'assets/imagenes/macetas/630-/630-AM.jpg', 'jpg'),
(51, '630-B', 'assets/imagenes/macetas/630-/630-B.jpg', 'jpg'),
(52, '630-N', 'assets/imagenes/macetas/630-/630-N.jpg', 'jpg'),
(53, '630-NA', 'assets/imagenes/macetas/630-/630-NA.jpg', 'jpg'),
(54, '630-R', 'assets/imagenes/macetas/630-/630-R.jpg', 'jpg'),
(55, '630-V', 'assets/imagenes/macetas/630-/630-V.jpg', 'jpg'),
(56, '700-B', 'assets/imagenes/macetas/700-/700-B.jpg', 'jpg'),
(57, '700-N', 'assets/imagenes/macetas/700-/700-N.jpg', 'jpg'),
(58, '700-R', 'assets/imagenes/macetas/700-/700-R.jpg', 'jpg'),
(59, '716-B', 'assets/imagenes/macetas/716-/716-B.jpg', 'jpg'),
(60, '716-N', 'assets/imagenes/macetas/716-/716-N.jpg', 'jpg'),
(61, '716-R', 'assets/imagenes/macetas/716-/716-R.jpg', 'jpg'),
(62, '711-AM', 'assets/imagenes/macetas/711-/711-AM.jpg', 'jpg'),
(63, '711-B', 'assets/imagenes/macetas/711-/711-B.jpg', 'jpg'),
(64, '711-N', 'assets/imagenes/macetas/711-/711-N.jpg', 'jpg'),
(65, '711-NA', 'assets/imagenes/macetas/711-/711-NA.jpg', 'jpg'),
(66, '711-R', 'assets/imagenes/macetas/711-/711-R.jpg', 'jpg'),
(67, '711-V', 'assets/imagenes/macetas/711-/711-V.jpg', 'jpg'),
(68, '711-VL', 'assets/imagenes/macetas/711-/711-VL.jpg', 'jpg'),
(69, '902-AM', 'assets/imagenes/macetas/902-/902-AM.jpg', 'jpg'),
(70, '902-B', 'assets/imagenes/macetas/902-/902-B.jpg', 'jpg'),
(71, '902-N', 'assets/imagenes/macetas/902-/902-N.png', 'png'),
(72, '902-NA', 'assets/imagenes/macetas/902-/902-NA.jpg', 'jpg'),
(73, '902-R', 'assets/imagenes/macetas/902-/902-R.png', 'png'),
(74, '902-V', 'assets/imagenes/macetas/902-/902-V.jpg', 'jpg'),
(75, '902-VL', 'assets/imagenes/macetas/902-/902-VL.jpg', 'jpg'),
(76, '903-AM', 'assets/imagenes/macetas/903-/903-AM.jpg', 'jpg'),
(77, '903-B', 'assets/imagenes/macetas/903-/903-B.jpg', 'jpg'),
(78, '903-N', 'assets/imagenes/macetas/903-/903-N.jpg', 'jpg'),
(79, '903-NA', 'assets/imagenes/macetas/903-/903-NA.png', 'png'),
(80, '903-R', 'assets/imagenes/macetas/903-/903-R.jpg', 'jpg'),
(81, '903-V', 'assets/imagenes/macetas/903-/903-V.jpg', 'jpg'),
(82, '903-VL', 'assets/imagenes/macetas/903-/903-VL.jpg', 'jpg'),
(83, '616-B', 'assets/imagenes/macetas/616-/616-B.jpg', 'jpg'),
(84, '616-N', 'assets/imagenes/macetas/616-/616-N.jpg', 'jpg'),
(85, '616-NA', 'assets/imagenes/macetas/616-/616-NA.jpg', 'jpg'),
(86, '616-R', 'assets/imagenes/macetas/616-/616-R.jpg', 'jpg'),
(87, '616-V', 'assets/imagenes/macetas/616-/616-V.jpg', 'jpg'),
(88, '616-VL', 'assets/imagenes/macetas/616-/616-VL.jpg', 'jpg'),
(89, '618-B', 'assets/imagenes/macetas/618-/618-B.png', 'png'),
(90, '618-N', 'assets/imagenes/macetas/618-/618-N.jpg', 'jpg'),
(91, '618-NA', 'assets/imagenes/macetas/618-/618-NA.png', 'png'),
(92, '618-R', 'assets/imagenes/macetas/618-/618-R.png', 'png'),
(93, '618-V', 'assets/imagenes/macetas/618-/618-V.png', 'png'),
(94, '618-VL', 'assets/imagenes/macetas/618-/618-VL.png', 'png'),
(95, '611-B', 'assets/imagenes/macetas/611-/611-B.jpg', 'jpg'),
(96, '611-N', 'assets/imagenes/macetas/611-/611-N.jpg', 'jpg'),
(97, '611-NA', 'assets/imagenes/macetas/611-/611-NA.jpg', 'jpg'),
(98, '611-R', 'assets/imagenes/macetas/611-/611-R.jpg', 'jpg'),
(99, '611-V', 'assets/imagenes/macetas/611-/611-V.jpg', 'jpg'),
(100, '611-VL', 'assets/imagenes/macetas/611-/611-VL.jpg', 'jpg'),
(101, '612-B', 'assets/imagenes/macetas/612-/612-B.jpg', 'jpg'),
(102, '612-N', 'assets/imagenes/macetas/612-/612-N.jpg', 'jpg'),
(103, '612-NA', 'assets/imagenes/macetas/612-/612-NA.jpg', 'jpg'),
(104, '612-R', 'assets/imagenes/macetas/612-/612-R.jpg', 'jpg'),
(105, '612-V', 'assets/imagenes/macetas/612-/612-V.jpg', 'jpg'),
(106, '612-VL', 'assets/imagenes/macetas/612-/612-VL.jpg', 'jpg'),
(107, '236-B', 'assets/imagenes/macetas/236-/236-B.jpg', 'jpg'),
(108, '236-N', 'assets/imagenes/macetas/236-/236-N.jpg', 'jpg'),
(109, '236-R', 'assets/imagenes/macetas/236-/236-R.jpg', 'jpg'),
(110, '722-B', 'assets/imagenes/macetas/722-/722-B.jpg', 'jpg'),
(111, '912-B', 'assets/imagenes/macetas/912-/912-B.jpg', 'jpg'),
(112, '525-B', 'assets/imagenes/macetas/525-/525-B.jpg', 'jpg'),
(113, '533-B', 'assets/imagenes/macetas/533-/533-B.png', 'png'),
(114, '510-B', 'assets/imagenes/macetas/510-/510-B.png', 'png'),
(115, '301-AZ', 'assets/imagenes/macetas/301-/301-AZ.jpg', 'jpg'),
(116, '301-B', 'assets/imagenes/macetas/301-/301-B.jpg', 'jpg'),
(117, '301-N', 'assets/imagenes/macetas/301-/301-N.jpg', 'jpg'),
(118, '301-V', 'assets/imagenes/macetas/301-/301-V.jpg', 'jpg'),
(119, '303-AZ', 'assets/imagenes/macetas/303-/303-AZ.jpg', 'jpg'),
(120, '303-B', 'assets/imagenes/macetas/303-/303-B.jpg', 'jpg'),
(121, '303-N', 'assets/imagenes/macetas/303-/303-N.png', 'png'),
(122, '303-V', 'assets/imagenes/macetas/303-/303-V.jpg', 'jpg'),
(123, '1004-B', 'assets/imagenes/macetas/1004-/1004-B.jpg', 'jpg'),
(124, '515-B', 'assets/imagenes/macetas/515-/515-B.jpg', 'jpg'),
(125, '718-B', 'assets/imagenes/macetas/718-/718-B.png', 'png'),
(126, '904-B', 'assets/imagenes/macetas/904-/904-B.png', 'png'),
(127, '905-B', 'assets/imagenes/macetas/905-/905-B.jpg', 'jpg'),
(128, '717-B', 'assets/imagenes/macetas/717-/717-B.jpg', 'jpg'),
(129, '717-N', 'assets/imagenes/macetas/717-/717-N.jpg', 'jpg'),
(130, '717-NA', 'assets/imagenes/macetas/717-/717-NA.jpg', 'jpg'),
(131, '717-R', 'assets/imagenes/macetas/717-/717-R.jpg', 'jpg'),
(132, '717-V', 'assets/imagenes/macetas/717-/717-V.jpg', 'jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medidas`
--

CREATE TABLE `medidas` (
  `id` int(11) NOT NULL,
  `ancho` double DEFAULT NULL,
  `alto` double DEFAULT NULL,
  `diametro` double DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `medidas`
--

INSERT INTO `medidas` (`id`, `ancho`, `alto`, `diametro`, `precio`, `id_producto`) VALUES
(1, 18, 18, 18, 8.55, 1),
(2, 14, 14, 14, 3.8, 1),
(3, 16, 13, 13, 3.85, 2),
(4, 6, 6, 6.5, 0.8, 3),
(5, 10, 9, 10, 1.3, 3),
(6, 12, 10, 12, 1.9, 3),
(7, 30, 10, 27, 7.25, 4),
(8, 25, 8, 23, 4.38, 4),
(9, 20, 7, 18, 2.85, 4),
(10, 18, 9, 18, 4.6, 5),
(11, 14, 7, 14, 3.15, 5),
(12, 14, 5, 14, 1.45, 6),
(13, 10.5, 21, 10.5, 3.46, 7),
(14, 14.5, 12, 15, 2.1, 8),
(15, 16, 12, 16, 3.55, 9),
(16, 11, 9, 11, 1.7, 9),
(17, 18, 7, 20, 2.85, 10),
(18, 20, 8, 20, 3.85, 11),
(19, 10, 9.5, 10, 1.84, 12),
(20, 6.5, 6, 6.5, 0.95, 12),
(21, 10, 9.5, 10, 1.95, 13),
(22, 7.5, 7, 7.5, 1.34, 13),
(23, 13, 11, 10, 1.95, 14),
(24, 10, 9, 7, 1.15, 14),
(25, 10.5, 19, 10.5, 3.98, 15),
(26, 16.5, 23.5, 16.5, 5.15, 16),
(27, 16.5, 24, 16.5, 4.69, 17),
(28, 10.5, 20, 10.5, 3.46, 18),
(29, 10.5, 25.5, 10.5, 3.59, 19),
(30, 7.5, 19.5, 7.5, 1.9, 19),
(31, 13, 7, 8, 2.65, 20),
(32, 16.5, 24, 16.5, 7.2, 21),
(33, 10.5, 19, 10.5, 5.85, 21),
(34, 16, 17, 33, 5.35, 22),
(35, 13, 14, 27, 3.7, 22),
(36, 10, 11, 20, 1.96, 22),
(37, 18, 18, 18, 5.7, 23),
(38, 14, 14, 14, 3.95, 23),
(39, 19, 25, 23, 6.08, 24),
(40, 15, 21, 19, 3.99, 24),
(41, 11, 18, 16, 2.56, 24),
(42, 12, 50, 23.5, 15.22, 25),
(43, 10, 40, 19, 10.49, 25),
(44, 12, 46, 23, 15.47, 26),
(45, 10, 34, 19.5, 10.71, 26),
(46, 9, 33.5, 17, 9.51, 26),
(47, 7.5, 28.5, 14, 8.32, 26),
(48, 21, 8, 32, 4.75, 27),
(49, 19, 23, 23, 3.82, 28),
(50, 15, 19, 19, 2.5, 28),
(51, 11, 16, 16, 1.4, 28),
(52, 16.5, 24, 16.5, 4.3, 29),
(53, 10.5, 19, 10.5, 3.49, 29),
(54, 9, 17, 22, 3.65, 30),
(55, 9, 18, 21, 3.65, 31),
(56, 12, 18, 16, 2.4, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` int(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `nombre`) VALUES
(1, 'Cuadrado'),
(2, 'Esferico'),
(3, 'Vaso'),
(4, 'Bollo'),
(5, 'Pequeño'),
(6, 'Redondo'),
(7, 'Cilindro'),
(8, 'Ovni'),
(9, 'Hexagono'),
(10, 'Rectangular'),
(11, 'Agujeros'),
(12, 'Pileta'),
(13, 'Clasico'),
(14, 'Ovalado'),
(15, 'Plano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productocolors`
--

CREATE TABLE `productocolors` (
  `id_producto` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `id_imagen` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productocolors`
--

INSERT INTO `productocolors` (`id_producto`, `id_color`, `id_imagen`, `id`) VALUES
(1, 2, 1, 1),
(1, 1, 2, 2),
(1, 5, 3, 3),
(1, 4, 4, 4),
(1, 3, 5, 5),
(1, 6, 6, 6),
(1, 7, 7, 7),
(2, 2, 8, 8),
(2, 1, 9, 9),
(2, 5, 10, 10),
(2, 4, 11, 11),
(2, 3, 12, 12),
(2, 6, 13, 13),
(2, 7, 14, 14),
(3, 2, 15, 15),
(3, 1, 16, 16),
(3, 5, 17, 17),
(3, 4, 18, 18),
(3, 3, 19, 19),
(3, 6, 20, 20),
(3, 7, 21, 21),
(4, 1, 22, 22),
(4, 5, 23, 23),
(5, 1, 24, 24),
(5, 5, 25, 25),
(5, 4, 26, 26),
(5, 3, 27, 27),
(5, 6, 28, 28),
(5, 7, 29, 29),
(6, 1, 30, 30),
(6, 5, 31, 31),
(6, 4, 32, 32),
(6, 3, 33, 33),
(6, 6, 34, 34),
(6, 7, 35, 35),
(7, 1, 37, 36),
(7, 5, 38, 37),
(7, 4, 39, 38),
(7, 3, 40, 39),
(7, 6, 41, 40),
(7, 7, 42, 41),
(8, 2, 43, 42),
(8, 1, 44, 43),
(8, 5, 45, 44),
(8, 4, 46, 45),
(8, 3, 47, 46),
(8, 6, 48, 47),
(8, 7, 49, 48),
(9, 2, 50, 49),
(9, 1, 51, 50),
(9, 5, 52, 51),
(9, 4, 53, 52),
(9, 3, 54, 53),
(9, 6, 55, 54),
(10, 1, 56, 55),
(10, 5, 57, 56),
(10, 3, 58, 57),
(11, 1, 59, 58),
(11, 5, 60, 59),
(11, 3, 61, 60),
(12, 2, 62, 61),
(12, 1, 63, 62),
(12, 5, 64, 63),
(12, 4, 65, 64),
(12, 3, 66, 65),
(12, 6, 67, 66),
(12, 7, 68, 67),
(13, 2, 69, 68),
(13, 1, 70, 69),
(13, 5, 71, 70),
(13, 4, 72, 71),
(13, 3, 73, 72),
(13, 6, 74, 73),
(13, 7, 75, 74),
(14, 2, 76, 75),
(14, 1, 77, 76),
(14, 5, 78, 77),
(14, 4, 79, 78),
(14, 3, 80, 79),
(14, 6, 81, 80),
(14, 7, 82, 81),
(15, 1, 83, 82),
(15, 5, 84, 83),
(15, 4, 85, 84),
(15, 3, 86, 85),
(15, 6, 87, 86),
(15, 7, 88, 87),
(16, 1, 89, 88),
(16, 5, 90, 89),
(16, 4, 91, 90),
(16, 3, 92, 91),
(16, 6, 93, 92),
(16, 7, 94, 93),
(17, 1, 95, 94),
(17, 5, 96, 95),
(17, 4, 97, 96),
(17, 3, 98, 97),
(17, 6, 99, 98),
(17, 7, 100, 99),
(18, 1, 101, 100),
(18, 5, 102, 101),
(18, 4, 103, 102),
(18, 3, 104, 103),
(18, 6, 105, 104),
(18, 7, 106, 105),
(19, 1, 107, 106),
(19, 5, 108, 107),
(19, 3, 109, 108),
(20, 1, 110, 109),
(21, 1, 111, 110),
(22, 1, 112, 111),
(23, 1, 113, 112),
(24, 1, 114, 113),
(25, 8, 115, 114),
(25, 1, 116, 115),
(25, 5, 117, 116),
(25, 6, 118, 117),
(26, 8, 119, 118),
(26, 1, 120, 119),
(26, 5, 121, 120),
(26, 6, 122, 121),
(27, 1, 123, 122),
(28, 1, 124, 123),
(29, 1, 125, 124),
(30, 1, 126, 125),
(31, 1, 127, 126),
(32, 1, 128, 127),
(32, 5, 129, 128),
(32, 4, 130, 129),
(32, 3, 131, 130),
(32, 6, 132, 131),
(7, 1, 36, 132);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `referencia` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `referencia`, `id_modelo`, `id_tipo`) VALUES
(1, '530-Reina', 1, 1),
(2, '715-Bola', 2, 1),
(3, '614/615/901-Italia', 3, 2),
(4, '701-Cordoba', 4, 3),
(5, '708-Reina', 1, 3),
(6, '115-Sevilla', 5, 3),
(7, '610-Moscu', 1, 4),
(8, '619-Africa', 6, 1),
(9, '630-Paraiso', 7, 1),
(10, '701-Ovni', 8, 3),
(11, '716-Paraiso', 7, 3),
(12, '711/900-Moscu', 1, 2),
(13, '902-Bola', 2, 2),
(14, '903-Berlin', 9, 2),
(15, '616-Valencia', 7, 5),
(16, '618-Baleares', 2, 5),
(17, '611-Baleares', 2, 4),
(18, '612-Valencia', 7, 4),
(19, '236-Prisma', 10, 3),
(20, '722-Roma', 6, 6),
(21, '912/913-Victor', 11, 6),
(22, '525-Pileta', 12, 6),
(23, '533-Reina', 1, 6),
(24, '510-Burgos', 13, 6),
(25, '301-Pico', 9, 7),
(26, '304-Pico', 6, 7),
(27, '1004-Cuenca', 14, 3),
(28, '515-Burgos', 13, 1),
(29, '718/719-Victor', 11, 4),
(30, '904-Suecia', 15, 4),
(31, '905-Checa', 14, 4),
(32, '717-Oval', 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(20) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `descripcion`) VALUES
(1, 'Maceta'),
(2, 'MiniMaceta'),
(3, 'Tarrina'),
(4, 'BaseAlta'),
(5, 'BaseAltaCortada'),
(6, 'Colgante'),
(7, 'Farol');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productocolors`
--
ALTER TABLE `productocolors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productocolors_ibfk_1` (`id_producto`),
  ADD KEY `productocolors_ibfk_2` (`id_color`),
  ADD KEY `productocolors_ibfk_3` (`id_imagen`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_ibfk_1` (`id_modelo`),
  ADD KEY `producto_ibfk_2` (`id_tipo`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medidas`
--
ALTER TABLE `medidas`
  ADD CONSTRAINT `medidas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `productocolors`
--
ALTER TABLE `productocolors`
  ADD CONSTRAINT `productocolors_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `productocolors_ibfk_2` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `productocolors_ibfk_3` FOREIGN KEY (`id_imagen`) REFERENCES `imagens` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
