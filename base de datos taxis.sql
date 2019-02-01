-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2019 a las 20:53:40
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_radio_taxis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chofer`
--

CREATE TABLE `chofer` (
  `ID_chofer` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `tipo_taxi` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chofer`
--

INSERT INTO `chofer` (`ID_chofer`, `nombre`, `apellido`, `tipo_taxi`, `direccion`, `celular`, `telefono`, `fecha`, `hora`) VALUES
(2, 'aaaaaa', 'dsadsad', 'transporte', 'dsadasd', 12321321, 3213213, '24/01/19', '1:54pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_cliente` int(11) NOT NULL,
  `nit_ci` int(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `razon_social` varchar(50) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_cliente`, `nit_ci`, `nombre`, `apellido`, `razon_social`, `direccion`, `celular`, `telefono`, `fecha`, `hora`) VALUES
(4, 222222, 'Juan qqq', 'SolizH', 'enquelugar', 'av. Padroww', 774512121, 4555521, '31/01/19', '4:41pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `ID_empresa` int(11) NOT NULL,
  `razon_social` varchar(50) DEFAULT NULL,
  `encargado` varchar(200) DEFAULT NULL,
  `nit` int(11) DEFAULT NULL,
  `num_autorizacion` int(11) DEFAULT NULL,
  `fecha_limite` varchar(50) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`ID_empresa`, `razon_social`, `encargado`, `nit`, `num_autorizacion`, `fecha_limite`, `fecha`, `hora`) VALUES
(1, 'EL Ltda.', 'lucio', 2132321, 21321321, '20/01/19', '24/01/19', '6:36pm'),
(2, 'devesa', 'miguel', 21321111, 11111, '01/02/19', '01/02/19', '12:12pm'),
(3, 'Susañeo srl.', 'pedro', 4445454, 657657, '02/02/19', '01/02/19', '12:15pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_Factura` int(11) NOT NULL,
  `servicio` varchar(200) DEFAULT NULL,
  `chofer` varchar(50) DEFAULT NULL,
  `cliente` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `pago` int(11) DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL,
  `nit_cliente` int(11) DEFAULT NULL,
  `fecha_emision` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID_Factura`, `servicio`, `chofer`, `cliente`, `descripcion`, `tipo`, `total`, `pago`, `saldo`, `nit_cliente`, `fecha_emision`, `hora`) VALUES
(4, 'servicioprueba', 'albatro', 'pedrio', 'qwqwqw', 'transporte', 12, 12, 9999, 123123, '2019-01-02', '2:44pm'),
(5, 'transporte', 'pifio', 'lucano', 'descanguro', 'servicio', 123213, 123213, 123213, 21321323, '2019-01-01', '8:06pm'),
(6, 'carrera', 'aaaaaa', 'Juan qqq', 'sin descripcion no para que', 'servicio', 321, 123, 111, 111111, '01/02/19', '8:08pm'),
(7, 'carrera', 'aaaaaa', 'Juan qqq SolizH', 'sdffsdf', 'servicio', 65, 56, 55, 3333, '01/02/19', '2:40pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `ID_reporte` int(11) NOT NULL,
  `cliente` varchar(50) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fecha_inicio` varchar(50) DEFAULT NULL,
  `fecha_fin` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`ID_reporte`, `cliente`, `celular`, `telefono`, `fecha_inicio`, `fecha_fin`, `hora`) VALUES
(1, 'eustacio', 123213, 4444545, '2019-12-12', '2019-02-23', '7:31pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `ID_servicio` int(11) NOT NULL,
  `servicio` varchar(200) DEFAULT NULL,
  `chofer` varchar(50) DEFAULT NULL,
  `cliente` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `pago` int(11) DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`ID_servicio`, `servicio`, `chofer`, `cliente`, `descripcion`, `tipo`, `total`, `pago`, `saldo`, `fecha`, `hora`) VALUES
(4, 'transporte', 'edigardo', 'llasmi', 'aasasas', 'transporte', 23, 12, 11, '24/01/19', '7:25pm'),
(5, 'carrera', 'aaaaaa', 'Juan qqq', 'prueba', 'servicio', 213, 123, 23, '01/02/19', '8:22pm'),
(6, 'transporte', 'aaaaaa', 'Juan qqq', '                                                                                     ya para que la amole  ggg                                                                        ', 'transporte', 2137, 3217, 127, '01/02/19', '8:37pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxi`
--

CREATE TABLE `taxi` (
  `ID_taxi` int(11) NOT NULL,
  `numero_movil` int(11) DEFAULT NULL,
  `placa` varchar(200) DEFAULT NULL,
  `modelo` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `taxi`
--

INSERT INTO `taxi` (`ID_taxi`, `numero_movil`, `placa`, `modelo`, `marca`, `descripcion`, `fecha`, `hora`) VALUES
(1, 12321321, 'sadsadsad', 'caldina', 'toyota', 'sadsadad', '24/01/19', '1:57pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `ID_tipo` int(11) NOT NULL,
  `tipo_taxi` varchar(200) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`ID_tipo`, `tipo_taxi`, `fecha`, `hora`) VALUES
(1, 'servicio', '24/01/19', '6:49pm'),
(2, 'transporte', '26/01/19', '7:08pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_administrador`
--

CREATE TABLE `usuario_administrador` (
  `ID_usuario_administrador` int(11) NOT NULL,
  `email` varchar(300) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `cargo` varchar(200) DEFAULT NULL,
  `alias` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_administrador`
--

INSERT INTO `usuario_administrador` (`ID_usuario_administrador`, `email`, `password`, `cargo`, `alias`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'tooreentezXXXXXXT', 'mazamorra');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chofer`
--
ALTER TABLE `chofer`
  ADD PRIMARY KEY (`ID_chofer`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_cliente`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`ID_empresa`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_Factura`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`ID_reporte`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`ID_servicio`);

--
-- Indices de la tabla `taxi`
--
ALTER TABLE `taxi`
  ADD PRIMARY KEY (`ID_taxi`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`ID_tipo`);

--
-- Indices de la tabla `usuario_administrador`
--
ALTER TABLE `usuario_administrador`
  ADD PRIMARY KEY (`ID_usuario_administrador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chofer`
--
ALTER TABLE `chofer`
  MODIFY `ID_chofer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `ID_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_Factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `ID_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `ID_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `taxi`
--
ALTER TABLE `taxi`
  MODIFY `ID_taxi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `ID_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario_administrador`
--
ALTER TABLE `usuario_administrador`
  MODIFY `ID_usuario_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
