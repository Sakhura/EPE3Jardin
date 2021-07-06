-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2021 a las 02:56:40
-- Versión del servidor: 10.1.8-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `modelo2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `rut_a` varchar(12) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `consideraciones` varchar(200) NOT NULL,
  `diagnostico` varchar(200) NOT NULL,
  `neep` varchar(45) NOT NULL,
  `neet` varchar(45) NOT NULL,
  `nivel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`rut_a`, `nombres`, `apellidos`, `fecha_nacimiento`, `consideraciones`, `diagnostico`, `neep`, `neet`, `nivel`) VALUES
('24123123-1', 'Maximo', 'Machuca Mejilla', '2018-06-06', 'mejorar el lenguaje problema con las s', 'normal', 'SL', 'XL', 'Medio Menor'),
('25123123-4', 'Merlina Maria', 'Diuca Trujillo', '2018-02-10', 'retraido aun valvuseos', 'lentitud', 'nepp1', 'neet2', 'Medio Menor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_has_apoderado`
--

CREATE TABLE `alumno_has_apoderado` (
  `alumno_rut` varchar(12) NOT NULL,
  `apoderado_rut` varchar(12) NOT NULL,
  `registro_de_atencion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno_has_apoderado`
--

INSERT INTO `alumno_has_apoderado` (`alumno_rut`, `apoderado_rut`, `registro_de_atencion`) VALUES
('24123123-1', '19123456-1', 'Realcionado por la completa se le entrega la informacion'),
('25123123-4', '12111222-1', 'arroja comida en el pelo de los otros niÃ±os ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_has_parvularia`
--

CREATE TABLE `alumno_has_parvularia` (
  `alumno_rut` varchar(12) NOT NULL,
  `parvularia_rut` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_has_parvularia1`
--

CREATE TABLE `alumno_has_parvularia1` (
  `alumno_rut` varchar(12) NOT NULL,
  `parvularia_rut` varchar(12) NOT NULL,
  `apoderado_rut` varchar(12) NOT NULL,
  `nombre_nivel` varchar(45) DEFAULT NULL,
  `detalle` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_has_parvularia1_has_apoderado`
--

CREATE TABLE `alumno_has_parvularia1_has_apoderado` (
  `alumno_has_parvularia1_alumno_rut` varchar(12) NOT NULL,
  `alumno_has_parvularia1_parvularia_rut` varchar(12) NOT NULL,
  `apoderado_rut` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE `apoderado` (
  `rut` varchar(12) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo_personal` varchar(45) NOT NULL,
  `fono_trabajo` varchar(45) NOT NULL,
  `domicilio` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fono_personal` varchar(45) NOT NULL,
  `fono_otro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `apoderado`
--

INSERT INTO `apoderado` (`rut`, `nombres`, `apellidos`, `correo_personal`, `fono_trabajo`, `domicilio`, `fecha_nacimiento`, `fono_personal`, `fono_otro`) VALUES
('12111222-1', 'Roxana Maria', 'Trujillo', 'rtrujillo@gmail.com', '225412356', 'Aaa 123', '2000-04-04', '991234567', '981234567'),
('19123456-1', 'Maria', 'Mejilla', 'mmejilla@ipchile.cl', '225412345', 'las diucas 123', '2000-02-02', '993555777', '993555666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado_has_alumno_has_parvularia`
--

CREATE TABLE `apoderado_has_alumno_has_parvularia` (
  `apoderado_rut` varchar(12) NOT NULL,
  `alumno_has_parvularia_alumno_rut` varchar(12) NOT NULL,
  `alumno_has_parvularia_parvularia_rut` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado_has_alumno_has_parvularia1`
--

CREATE TABLE `apoderado_has_alumno_has_parvularia1` (
  `apoderado_rut` varchar(12) NOT NULL,
  `alumno_has_parvularia1_alumno_rut` varchar(12) NOT NULL,
  `alumno_has_parvularia1_parvularia_rut` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorizo_retiro`
--

CREATE TABLE `autorizo_retiro` (
  `rut_r` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `autorizo_retiro`
--

INSERT INTO `autorizo_retiro` (`rut_r`, `nombres`, `apellidos`, `telefono`, `edad`) VALUES
('11123123-6', 'Camilo', 'Machuca', '993555666', 54),
('15897123-3', 'Juan', 'Diucas', '981234567', 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicaciones_masivas`
--

CREATE TABLE `comunicaciones_masivas` (
  `id` int(11) NOT NULL,
  `asunto` varchar(45) NOT NULL,
  `mensaje_a_enviar` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_progreso_estudiante`
--

CREATE TABLE `historial_progreso_estudiante` (
  `id` int(11) NOT NULL,
  `periodo_variable` varchar(45) DEFAULT NULL,
  `semana1` varchar(45) DEFAULT NULL,
  `semana2` varchar(45) DEFAULT NULL,
  `semana3` varchar(45) DEFAULT NULL,
  `semana4` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parvularia`
--

CREATE TABLE `parvularia` (
  `rut` varchar(12) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo_personal` varchar(45) NOT NULL,
  `fono_personal` varchar(45) NOT NULL,
  `domicilio` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parvularia`
--

INSERT INTO `parvularia` (`rut`, `nombres`, `apellidos`, `correo_personal`, `fono_personal`, `domicilio`, `fecha_nacimiento`, `nivel`) VALUES
('17123456-3', 'Monica', 'Amorosa', 'moamorosa@ipchile.cl', '993123123', 'Colina Amor 123', '1995-03-01', 'Medio Menor'),
('18123123-1', 'Claudia', 'Castillo', 'ccastillo@gmail.com', '987654321', 'Rucaraqui 423', '1997-09-09', 'Medio Mayor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progeso_estudiante`
--

CREATE TABLE `progeso_estudiante` (
  `alumno_rut` varchar(12) NOT NULL,
  `periodo_variable` varchar(45) NOT NULL,
  `semana1` varchar(45) NOT NULL,
  `semana2` varchar(45) NOT NULL,
  `semana3` varchar(45) NOT NULL,
  `semana4` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `aforo` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `clave_usuario` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `clave_usuario`) VALUES
(1, 'Admin', 'admin1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`rut_a`);

--
-- Indices de la tabla `alumno_has_apoderado`
--
ALTER TABLE `alumno_has_apoderado`
  ADD PRIMARY KEY (`alumno_rut`,`apoderado_rut`),
  ADD KEY `fk_alumno_has_apoderado_apoderado1_idx` (`apoderado_rut`),
  ADD KEY `fk_alumno_has_apoderado_alumno_idx` (`alumno_rut`);

--
-- Indices de la tabla `alumno_has_parvularia`
--
ALTER TABLE `alumno_has_parvularia`
  ADD PRIMARY KEY (`alumno_rut`,`parvularia_rut`),
  ADD KEY `fk_alumno_has_parvularia_parvularia1_idx` (`parvularia_rut`),
  ADD KEY `fk_alumno_has_parvularia_alumno1_idx` (`alumno_rut`);

--
-- Indices de la tabla `alumno_has_parvularia1`
--
ALTER TABLE `alumno_has_parvularia1`
  ADD PRIMARY KEY (`alumno_rut`,`parvularia_rut`,`apoderado_rut`),
  ADD KEY `fk_alumno_has_parvularia1_parvularia1_idx` (`parvularia_rut`),
  ADD KEY `fk_alumno_has_parvularia1_alumno1_idx` (`alumno_rut`),
  ADD KEY `fk_alumno_has_parvularia1_apoderado1_idx` (`apoderado_rut`);

--
-- Indices de la tabla `alumno_has_parvularia1_has_apoderado`
--
ALTER TABLE `alumno_has_parvularia1_has_apoderado`
  ADD PRIMARY KEY (`alumno_has_parvularia1_alumno_rut`,`alumno_has_parvularia1_parvularia_rut`,`apoderado_rut`),
  ADD KEY `fk_alumno_has_parvularia1_has_apoderado_apoderado1_idx` (`apoderado_rut`),
  ADD KEY `fk_alumno_has_parvularia1_has_apoderado_alumno_has_parvular_idx` (`alumno_has_parvularia1_alumno_rut`,`alumno_has_parvularia1_parvularia_rut`);

--
-- Indices de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `apoderado_has_alumno_has_parvularia`
--
ALTER TABLE `apoderado_has_alumno_has_parvularia`
  ADD PRIMARY KEY (`apoderado_rut`,`alumno_has_parvularia_alumno_rut`,`alumno_has_parvularia_parvularia_rut`),
  ADD KEY `fk_apoderado_has_alumno_has_parvularia_alumno_has_parvulari_idx` (`alumno_has_parvularia_alumno_rut`,`alumno_has_parvularia_parvularia_rut`),
  ADD KEY `fk_apoderado_has_alumno_has_parvularia_apoderado1_idx` (`apoderado_rut`);

--
-- Indices de la tabla `apoderado_has_alumno_has_parvularia1`
--
ALTER TABLE `apoderado_has_alumno_has_parvularia1`
  ADD PRIMARY KEY (`apoderado_rut`,`alumno_has_parvularia1_alumno_rut`,`alumno_has_parvularia1_parvularia_rut`),
  ADD KEY `fk_apoderado_has_alumno_has_parvularia1_alumno_has_parvular_idx` (`alumno_has_parvularia1_alumno_rut`,`alumno_has_parvularia1_parvularia_rut`),
  ADD KEY `fk_apoderado_has_alumno_has_parvularia1_apoderado1_idx` (`apoderado_rut`);

--
-- Indices de la tabla `autorizo_retiro`
--
ALTER TABLE `autorizo_retiro`
  ADD PRIMARY KEY (`rut_r`);

--
-- Indices de la tabla `comunicaciones_masivas`
--
ALTER TABLE `comunicaciones_masivas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_progreso_estudiante`
--
ALTER TABLE `historial_progreso_estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parvularia`
--
ALTER TABLE `parvularia`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `progeso_estudiante`
--
ALTER TABLE `progeso_estudiante`
  ADD PRIMARY KEY (`alumno_rut`),
  ADD KEY `fk_progeso_estudiante_alumno1_idx` (`alumno_rut`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_has_apoderado`
--
ALTER TABLE `alumno_has_apoderado`
  ADD CONSTRAINT `fk_alumno_has_apoderado_alumno` FOREIGN KEY (`alumno_rut`) REFERENCES `alumno` (`rut_a`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_has_apoderado_apoderado1` FOREIGN KEY (`apoderado_rut`) REFERENCES `apoderado` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno_has_parvularia`
--
ALTER TABLE `alumno_has_parvularia`
  ADD CONSTRAINT `fk_alumno_has_parvularia_alumno1` FOREIGN KEY (`alumno_rut`) REFERENCES `alumno` (`rut_a`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_has_parvularia_parvularia1` FOREIGN KEY (`parvularia_rut`) REFERENCES `parvularia` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno_has_parvularia1`
--
ALTER TABLE `alumno_has_parvularia1`
  ADD CONSTRAINT `fk_alumno_has_parvularia1_alumno1` FOREIGN KEY (`alumno_rut`) REFERENCES `alumno` (`rut_a`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_has_parvularia1_apoderado1` FOREIGN KEY (`apoderado_rut`) REFERENCES `apoderado` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_has_parvularia1_parvularia1` FOREIGN KEY (`parvularia_rut`) REFERENCES `parvularia` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumno_has_parvularia1_has_apoderado`
--
ALTER TABLE `alumno_has_parvularia1_has_apoderado`
  ADD CONSTRAINT `fk_alumno_has_parvularia1_has_apoderado_alumno_has_parvularia11` FOREIGN KEY (`alumno_has_parvularia1_alumno_rut`,`alumno_has_parvularia1_parvularia_rut`) REFERENCES `alumno_has_parvularia1` (`alumno_rut`, `parvularia_rut`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_has_parvularia1_has_apoderado_apoderado1` FOREIGN KEY (`apoderado_rut`) REFERENCES `apoderado` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `apoderado_has_alumno_has_parvularia`
--
ALTER TABLE `apoderado_has_alumno_has_parvularia`
  ADD CONSTRAINT `fk_apoderado_has_alumno_has_parvularia_alumno_has_parvularia1` FOREIGN KEY (`alumno_has_parvularia_alumno_rut`,`alumno_has_parvularia_parvularia_rut`) REFERENCES `alumno_has_parvularia` (`alumno_rut`, `parvularia_rut`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_apoderado_has_alumno_has_parvularia_apoderado1` FOREIGN KEY (`apoderado_rut`) REFERENCES `apoderado` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `apoderado_has_alumno_has_parvularia1`
--
ALTER TABLE `apoderado_has_alumno_has_parvularia1`
  ADD CONSTRAINT `fk_apoderado_has_alumno_has_parvularia1_alumno_has_parvularia11` FOREIGN KEY (`alumno_has_parvularia1_alumno_rut`,`alumno_has_parvularia1_parvularia_rut`) REFERENCES `alumno_has_parvularia1` (`alumno_rut`, `parvularia_rut`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_apoderado_has_alumno_has_parvularia1_apoderado1` FOREIGN KEY (`apoderado_rut`) REFERENCES `apoderado` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `progeso_estudiante`
--
ALTER TABLE `progeso_estudiante`
  ADD CONSTRAINT `fk_progeso_estudiante_alumno1` FOREIGN KEY (`alumno_rut`) REFERENCES `alumno` (`rut_a`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
