-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-06-2017 a las 23:01:18
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `fecha` date NOT NULL,
  `turno` int(2) NOT NULL,
  `id_paciente` int(10) NOT NULL,
  `id_medico` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`fecha`, `turno`, `id_paciente`, `id_medico`) VALUES
('2017-05-10', 2, 1143, 12345),
('2017-05-10', 1, 4565767, 2343123),
('2017-06-20', 3, 4567, 1245),
('2017-06-20', 3, 4567, 1245),
('2017-05-10', 5, 5678, 4321),
('2017-06-01', 1, 1143335723, 45435336),
('2017-06-23', 2, 1143335723, 1143371013);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calendario`
--

INSERT INTO `calendario` (`fecha`) VALUES
('2017-01-01'),
('2017-01-08'),
('2017-01-09'),
('2017-01-15'),
('2017-01-22'),
('2017-01-29'),
('2017-02-05'),
('2017-02-12'),
('2017-02-19'),
('2017-02-26'),
('2017-03-05'),
('2017-03-12'),
('2017-03-19'),
('2017-03-20'),
('2017-03-26'),
('2017-04-02'),
('2017-04-09'),
('2017-04-13'),
('2017-04-14'),
('2017-04-16'),
('2017-04-23'),
('2017-04-30'),
('2017-05-01'),
('2017-05-07'),
('2017-05-14'),
('2017-05-21'),
('2017-05-28'),
('2017-05-29'),
('2017-06-04'),
('2017-06-11'),
('2017-06-18'),
('2017-06-19'),
('2017-06-25'),
('2017-06-26'),
('2017-07-02'),
('2017-07-03'),
('2017-07-09'),
('2017-07-16'),
('2017-07-20'),
('2017-07-23'),
('2017-07-30'),
('2017-08-06'),
('2017-08-07'),
('2017-08-13'),
('2017-08-20'),
('2017-08-21'),
('2017-08-27'),
('2017-09-03'),
('2017-09-10'),
('2017-09-17'),
('2017-09-24'),
('2017-10-01'),
('2017-10-08'),
('2017-10-15'),
('2017-10-16'),
('2017-10-22'),
('2017-10-29'),
('2017-11-05'),
('2017-11-06'),
('2017-11-12'),
('2017-11-13'),
('2017-11-19'),
('2017-11-26'),
('2017-12-03'),
('2017-12-08'),
('2017-12-10'),
('2017-12-17'),
('2017-12-24'),
('2017-12-25'),
('2017-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `genero` enum('M','F') NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estatura` int(3) NOT NULL,
  `peso` int(2) NOT NULL,
  `gruposanguineo` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') NOT NULL,
  `tipo_persona` enum('PACIENTE','MEDICO') NOT NULL,
  `estado` enum('VIVO','FALLECIDO') NOT NULL,
  `fecha_fallecimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `password`, `apellidos`, `nombres`, `genero`, `telefono`, `direccion`, `estatura`, `peso`, `gruposanguineo`, `tipo_persona`, `estado`, `fecha_fallecimiento`) VALUES
(45435336, 'veramon', 'GUERRERO RAMIREZ', 'VERADANIS', 'F', '123456', 'OLAYA HERRERA', 150, 95, 'A+', 'MEDICO', 'VIVO', '0000-00-00'),
(1143335723, 'Salmo150', 'OZUNA ARTEAGA', 'ESNEIDER', 'M', '3006029663', 'JARDINES DE SAN PEDRO', 175, 90, 'A+', 'PACIENTE', 'VIVO', '0000-00-00'),
(1143371013, 'colombia', 'MESTRA', 'JOSE DAVID', 'M', '300607346', 'LA CASTELLANA AL DE DE MARIA SANTODOMINGO', 167, 100, 'O+', 'MEDICO', 'VIVO', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `nro_turno` int(2) NOT NULL,
  `hora_ini` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`nro_turno`, `hora_ini`, `hora_fin`) VALUES
(1, '09:00:00', '09:29:00'),
(2, '09:30:00', '09:59:00'),
(3, '10:00:00', '10:29:00'),
(4, '10:30:00', '10:59:00'),
(5, '11:00:00', '11:29:00'),
(6, '11:30:00', '11:59:00'),
(7, '12:00:00', '12:29:00'),
(8, '12:30:00', '12:59:00'),
(9, '13:00:00', '13:29:00'),
(10, '13:30:00', '13:59:00'),
(11, '14:00:00', '14:29:00'),
(12, '14:30:00', '14:59:00'),
(13, '15:00:00', '15:29:00'),
(14, '15:30:00', '15:59:00'),
(15, '16:00:00', '16:29:00'),
(16, '16:30:00', '16:59:00'),
(17, '17:00:00', '17:29:00'),
(18, '17:30:00', '17:59:00'),
(19, '18:00:00', '18:29:00'),
(20, '18:30:00', '18:59:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`fecha`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
