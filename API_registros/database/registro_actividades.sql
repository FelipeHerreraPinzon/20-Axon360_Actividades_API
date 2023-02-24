-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2022 a las 06:53:48
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
-- Base de datos: `registro_actividades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `nombre_actividad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `nombre_actividad`) VALUES
(1, 'LAVADO CAJAS TERMICAS'),
(2, 'LAVADO DE TERMOS'),
(3, 'LAVADO DE TERMOS'),
(4, 'RECEPCION DE JERINGAS'),
(5, 'DESPACHO DE JERINGAS'),
(6, 'ASEO Y LIMPIEZA ESTANTERIA'),
(7, 'ASEO Y DESINFECCION DE CUARTOS FRIOS'),
(8, 'OPERACION DE CUARTOS FRIOS'),
(9, 'LIMPIEZA ESTIBAS'),
(10, 'LIMPIEZA Y MANTENIMIENTO EQUIPOS'),
(11, 'OTRA ACTIVIDAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf32_spanish_ci NOT NULL,
  `documento` bigint(30) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `hora` time NOT NULL DEFAULT current_timestamp(),
  `actividad` varchar(100) COLLATE utf32_spanish_ci NOT NULL,
  `otra` varchar(50) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `nombre`, `documento`, `fecha`, `hora`, `actividad`, `otra`) VALUES
(1, 'Richard castro', 79245391, '2022-01-12', '11:49:57', 'LIMPIEZA Y MANTENIMIENTO EQUIPOS', ''),
(2, 'Flor Jenny Guerrero Asprilla ', 39428397, '2022-01-12', '11:55:08', 'ASEO Y DESINFECCION DE CUARTOS FRIOS', ''),
(3, 'Alexandra', 1019026313, '2022-01-12', '16:21:18', 'OTRA ACTIVIDAD', ''),
(4, 'Nestor Pérez ', 80228673, '2022-01-13', '14:23:24', 'OTRA ACTIVIDAD', ''),
(5, 'Flor Jenny Guerrero Asprilla ', 39428397, '2022-01-13', '14:24:37', 'OTRA ACTIVIDAD', ''),
(6, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-01-13', '14:24:47', 'OTRA ACTIVIDAD', ''),
(7, 'Nicolas Ramirez', 1024588640, '2022-01-13', '14:34:01', 'OTRA ACTIVIDAD', 'Re cambio de Ice pack'),
(8, 'David Martínez', 1014307517, '2022-01-13', '14:34:51', 'OTRA ACTIVIDAD', 'Re cambio de Ice pack'),
(9, 'Jeison Daniel Hernández Beltrán ', 1010217565, '2022-01-13', '14:40:16', 'OTRA ACTIVIDAD', ''),
(10, 'Steven Castañeda', 1000021067, '2022-01-14', '09:05:02', 'OTRA ACTIVIDAD', 'Lavado ice pack'),
(11, 'Flor Jenny Guerrero Asprilla ', 39428397, '2022-01-14', '09:12:47', 'OTRA ACTIVIDAD', ''),
(12, 'David Martinez', 1014307517, '2022-01-14', '16:51:23', 'OTRA ACTIVIDAD', ''),
(13, 'David Martinez', 1014307517, '2022-01-17', '07:47:56', 'LAVADO CAJAS TERMICAS', ''),
(14, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-01-17', '07:48:49', 'OTRA ACTIVIDAD', ''),
(15, 'Juan González', 1014250824, '2022-01-17', '08:39:33', 'OTRA ACTIVIDAD', 'Inspección de escalera tipo avión'),
(16, 'Nestor Pérez ', 80228673, '2022-01-17', '08:40:06', 'OTRA ACTIVIDAD', ''),
(17, 'Jeison Daniel Hernández Beltrán ', 1010217565, '2022-01-17', '10:54:13', 'RECEPCION DE JERINGAS', ''),
(18, 'Julián Arevalo ', 1019082602, '2022-01-17', '10:57:50', 'DESPACHO DE JERINGAS', ''),
(19, 'Germán David Villamarin ', 1016091736, '2022-01-17', '15:30:11', 'DESPACHO DE JERINGAS', ''),
(20, 'Fredy vera', 80066044, '2022-01-17', '16:12:48', 'DESPACHO DE JERINGAS', ''),
(21, 'Steven Castañeda', 1000021067, '2022-01-19', '10:01:07', 'LAVADO CAJAS TERMICAS', ''),
(22, 'LUIS PRIETO', 1010038451, '2022-01-19', '16:35:45', 'DESPACHO DE JERINGAS', ''),
(23, 'Luis Humberto Gamba Villaraga', 3163305, '2022-01-19', '16:36:14', 'DESPACHO DE JERINGAS', ''),
(24, 'Luis Humberto Gamba Villaraga', 3163305, '2022-01-19', '16:36:39', 'DESPACHO DE JERINGAS', ''),
(25, 'Humberto Gamba', 3163305, '2022-01-19', '16:37:32', 'DESPACHO DE JERINGAS', ''),
(26, 'Andrés Navarrete', 1024554732, '2022-01-19', '16:37:37', 'DESPACHO DE JERINGAS', ''),
(27, 'Victor Humberto vera González', 79908456, '2022-01-19', '16:40:36', 'RECEPCION DE JERINGAS', ''),
(28, 'Germán David Villamarin ', 1016091736, '2022-01-19', '16:42:03', 'DESPACHO DE JERINGAS', ''),
(29, 'Jorge David Sánchez Ramírez', 1001043753, '2022-01-20', '08:47:01', 'DESPACHO DE JERINGAS', ''),
(30, 'Andrés Fernando Navas Flores', 79899592, '2022-01-20', '08:47:59', 'RECEPCION DE JERINGAS', ''),
(31, 'Fabián Arévalo Yanquen ', 1019082626, '2022-01-20', '08:48:36', 'DESPACHO DE JERINGAS', ''),
(32, 'Germán David Villamarin ', 1016091736, '2022-01-20', '08:51:02', 'DESPACHO DE JERINGAS', ''),
(33, 'Andrés Navarrete', 1024554732, '2022-01-20', '08:51:26', 'DESPACHO DE JERINGAS', ''),
(34, 'David Martinez', 1014307517, '2022-01-20', '08:53:39', 'DESPACHO DE JERINGAS', ''),
(35, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-01-20', '08:53:41', 'DESPACHO DE JERINGAS', ''),
(36, 'Juan david gomez ', 1015464410, '2022-01-20', '08:57:32', 'DESPACHO DE JERINGAS', ''),
(37, 'Norbey Velasco Morales', 1000622268, '2022-01-20', '09:15:43', 'DESPACHO DE JERINGAS', ''),
(38, 'Andres camilo cely', 1031174508, '2022-01-20', '09:15:49', 'DESPACHO DE JERINGAS', ''),
(39, 'David Martinez', 1014307514, '2022-01-24', '16:16:11', 'OTRA ACTIVIDAD', ''),
(40, 'David Martinez', 1014307517, '2022-01-25', '10:17:27', 'OTRA ACTIVIDAD', ''),
(41, 'Félix Amaury', 1201235301, '2022-01-25', '10:18:13', 'OTRA ACTIVIDAD', ''),
(42, 'Edwin Vargas', 80767520, '2022-01-25', '16:40:56', 'OTRA ACTIVIDAD', 'Verificación de aseo'),
(43, 'LUIS PRIETO', 1010038451, '2022-01-26', '16:31:10', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(44, 'Andres camilo cely', 1031174508, '2022-01-27', '02:44:39', 'OTRA ACTIVIDAD', ''),
(45, 'LUIS PRIETO', 1010038451, '2022-01-27', '12:29:01', 'DESPACHO DE JERINGAS', ''),
(46, 'David Martinez', 1014307517, '2022-01-27', '14:21:32', 'DESPACHO DE JERINGAS', ''),
(47, 'Germán David Villamarin ', 1016091736, '2022-01-27', '14:28:36', 'DESPACHO DE JERINGAS', ''),
(48, 'Norbey Velasco Morales ', 1000622268, '2022-01-27', '14:31:07', 'RECEPCION DE JERINGAS', ''),
(49, 'LUIS PRIETO', 1010038451, '2022-01-27', '16:54:40', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(50, 'LUIS PRIETO', 1010038451, '2022-01-28', '14:57:43', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(51, 'Humberto Gamba', 3163305, '2022-01-28', '16:52:37', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(52, 'David Martinez', 1014307517, '2022-01-28', '16:54:44', 'OTRA ACTIVIDAD', ''),
(53, 'Luis prieto', 1010038451, '2022-01-31', '07:02:58', 'OTRA ACTIVIDAD', 'Verificación de aseó '),
(54, 'Edixon Vargas Carvajal', 80751400, '2022-02-01', '11:02:46', 'OTRA ACTIVIDAD', 'Inventario'),
(55, 'Marcela Tatiana Gacha', 1018435704, '2022-02-01', '11:03:12', 'OTRA ACTIVIDAD', 'Inventario'),
(56, 'Jorge duran ', 91255974, '2022-02-01', '11:05:08', 'OTRA ACTIVIDAD', 'Conteo jeringas '),
(57, 'Yanneth Forero', 52235239, '2022-02-01', '11:05:52', 'OTRA ACTIVIDAD', 'Conteo jeringas '),
(58, 'Juan Sebastian González', 1014250824, '2022-02-01', '11:30:04', 'OTRA ACTIVIDAD', 'Inspección Coad'),
(59, 'David Martinez', 1014307514, '2022-02-01', '12:30:19', 'OTRA ACTIVIDAD', ''),
(60, 'Laura Hernández ', 1000622337, '2022-02-02', '11:41:37', 'OTRA ACTIVIDAD', 'Verificación de aseo'),
(61, 'Mayerli Arévalo', 1022929237, '2022-02-02', '11:41:48', 'OTRA ACTIVIDAD', 'Verificación de aseo y desinfección'),
(62, 'Mayerli Arévalo', 1022929237, '2022-02-02', '11:42:48', 'OTRA ACTIVIDAD', 'Verificación de aseo y desinfección'),
(63, 'Félix Amaury Herrera Pajoy', 1201235301, '2022-02-03', '09:43:16', 'LAVADO CAJAS TERMICAS', ''),
(64, 'Luis Humberto Gamba Villaraga', 3163305, '2022-02-03', '11:22:21', 'OTRA ACTIVIDAD', 'Verificar aseo y desinfección de COAD'),
(65, 'Fredy vera', 80066044, '2022-02-03', '11:22:34', 'OTRA ACTIVIDAD', 'Aseo '),
(66, 'David Martinez', 1014307517, '2022-02-03', '15:11:44', 'DESPACHO DE JERINGAS', ''),
(67, 'Nicolas Ramirez', 1024588640, '2022-02-03', '15:11:52', 'DESPACHO DE JERINGAS', ''),
(68, 'Julián Arevalo ', 1019082602, '2022-02-03', '15:11:53', 'DESPACHO DE JERINGAS', ''),
(69, 'Flor Jenny Guerrero Asprilla ', 39428397, '2022-02-03', '15:20:33', 'DESPACHO DE JERINGAS', ''),
(70, 'Jorge David Sánchez Ramirez', 1001043753, '2022-02-04', '11:38:21', 'OTRA ACTIVIDAD', 'Verificación aseo '),
(71, 'Angela Barragán', 52110214, '2022-02-04', '11:39:57', 'OTRA ACTIVIDAD', 'Verificación aseo y desinfeccion'),
(72, 'Fredy vera', 80066044, '2022-02-05', '15:28:14', 'OTRA ACTIVIDAD', 'Aseo '),
(73, 'David Martinez', 1014307517, '2022-02-07', '10:08:00', 'LAVADO CAJAS TERMICAS', ''),
(74, 'Steven castañeda', 1000021067, '2022-02-07', '10:08:39', 'LAVADO CAJAS TERMICAS', ''),
(75, 'Luis Humberto Gamba Villaraga', 3163305, '2022-02-07', '17:02:19', 'OTRA ACTIVIDAD', 'Verificación de aseo y desinfección '),
(76, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-02-08', '10:25:44', 'OTRA ACTIVIDAD', 'Lavado de ice packs'),
(77, 'Jorge David Sánchez Ramírez', 1001043753, '2022-02-08', '15:59:37', 'OTRA ACTIVIDAD', 'Verificación aseo y desinfección'),
(78, 'LUIS PRIETO', 1010038451, '2022-02-09', '17:27:22', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(79, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-02-10', '09:59:51', 'OTRA ACTIVIDAD', 'Charla '),
(80, 'Camilo correa ', 1000389963, '2022-02-10', '10:00:47', 'OTRA ACTIVIDAD', 'Reunión '),
(81, 'Nicolas Ramirez', 1024588640, '2022-02-10', '10:02:35', 'OTRA ACTIVIDAD', 'Capacitación '),
(82, 'Félix Amaury Herrera Pajoy', 1201235301, '2022-02-10', '10:04:15', 'OTRA ACTIVIDAD', 'Reunión Área Técnica y Logísticos '),
(83, 'Flor Jenny Guerrero Asprilla ', 39428397, '2022-02-10', '10:05:06', 'OTRA ACTIVIDAD', ''),
(84, 'Andrés Fernando Navas Flores', 79899592, '2022-02-10', '12:24:11', 'OTRA ACTIVIDAD', 'Traslado de cajas'),
(85, 'Jorge David Sánchez Ramírez', 1001043753, '2022-02-10', '12:57:29', 'DESPACHO DE JERINGAS', ''),
(86, 'Julián Arévalo ', 1019082602, '2022-02-10', '12:57:44', 'DESPACHO DE JERINGAS', ''),
(87, 'David Leonardo Vergara', 1023918489, '2022-02-10', '12:57:55', 'OTRA ACTIVIDAD', 'Traslado de cajas '),
(88, 'Angela Barragán', 52110214, '2022-02-10', '12:58:02', 'DESPACHO DE JERINGAS', ''),
(89, 'Andres Navarrete ', 1024554732, '2022-02-10', '12:58:12', 'DESPACHO DE JERINGAS', ''),
(90, 'LUIS PRIETO', 1010038451, '2022-02-10', '15:00:14', 'OTRA ACTIVIDAD', 'Estacionar motos'),
(91, 'Andres Navarrete ', 1024554732, '2022-02-10', '15:01:04', 'OTRA ACTIVIDAD', ''),
(92, 'MAURO', 3217178, '2022-02-10', '15:19:41', 'OTRA ACTIVIDAD', ''),
(93, 'Víctor vera', 79908456, '2022-02-10', '16:38:19', 'OTRA ACTIVIDAD', 'Aseo y desinfecccion'),
(94, 'Flor Jenny Guerrero Asprilla ', 39428397, '2022-02-11', '09:29:23', 'OTRA ACTIVIDAD', ''),
(95, 'Julián Arévalo ', 1019082602, '2022-02-11', '12:53:24', 'DESPACHO DE JERINGAS', ''),
(96, 'Germán David Villamarin ', 1016091736, '2022-02-11', '17:00:13', 'OTRA ACTIVIDAD', ''),
(97, 'Steven Castañeda', 1000021067, '2022-02-14', '10:48:39', 'ASEO Y LIMPIEZA ESTANTERIA', 'Desinfección raick'),
(98, 'Félix Amaury Herrera Pajoy', 1201235301, '2022-02-14', '10:48:41', 'ASEO Y LIMPIEZA ESTANTERIA', ''),
(99, 'Fredy vera', 80066044, '2022-02-15', '09:56:33', 'OTRA ACTIVIDAD', ''),
(100, 'Andrés Fernando Navas Flores', 79899592, '2022-02-16', '16:21:15', 'OTRA ACTIVIDAD', ''),
(101, 'Jorge David Sánchez Ramírez', 1001043753, '2022-02-16', '16:21:24', 'OTRA ACTIVIDAD', 'Verificación aseo y desinfección'),
(102, 'Luis Humberto Gamba Villaraga', 3163305, '2022-02-19', '14:56:20', 'OTRA ACTIVIDAD', 'Verificación de aseo y desinfección '),
(103, 'Fredy vera', 80066044, '2022-02-20', '16:26:12', 'OTRA ACTIVIDAD', 'Verificación aseo'),
(104, 'Juan Sebastian González', 1014250824, '2022-02-21', '11:11:21', 'OTRA ACTIVIDAD', 'Inspección HSE'),
(105, 'Paulq Vega ', 1033693792, '2022-02-21', '11:12:35', 'OTRA ACTIVIDAD', 'Inspección HSEQ'),
(106, 'Andrés Fernando Navas Flores', 79899592, '2022-02-22', '15:37:31', 'OTRA ACTIVIDAD', ''),
(107, 'Angela Barragán', 52110214, '2022-02-22', '15:37:45', 'OTRA ACTIVIDAD', 'Verificación aseo y desinfeccion'),
(108, 'Nicolas Ramirez', 1024588640, '2022-02-22', '15:38:13', 'LAVADO CAJAS TERMICAS', ''),
(109, 'David Martinez', 1014307517, '2022-02-22', '15:55:15', 'LAVADO CAJAS TERMICAS', ''),
(110, 'Juan Sebastian González Sarmiento', 1014250824, '2022-02-23', '10:38:03', 'OTRA ACTIVIDAD', 'Inspección HSE'),
(111, 'LUIS PRIETO', 1010038451, '2022-02-23', '16:58:02', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(112, 'Luis Humberto Gamba Villaraga', 3163305, '2022-02-24', '16:42:55', 'OTRA ACTIVIDAD', 'Verificar aseo y desinfección de COAD'),
(113, 'Félix Amaury Herrera Pajoy', 1201235301, '2022-02-25', '07:05:10', 'LAVADO CAJAS TERMICAS', ''),
(114, 'Jorge David Sánchez Ramírez', 1001043753, '2022-02-25', '15:47:45', 'OTRA ACTIVIDAD', 'Verificación aseo y desinfección'),
(115, 'David Martinez', 1014307517, '2022-02-25', '16:58:09', 'LAVADO CAJAS TERMICAS', ''),
(116, 'Nicolas Ramirez', 1024588640, '2022-02-25', '16:58:12', 'LAVADO CAJAS TERMICAS', ''),
(117, 'LUIS PRIETO', 1010038451, '2022-03-01', '11:24:04', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(118, 'LUIS PRIETO', 1010038451, '2022-03-05', '15:46:46', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(119, 'FREDY VERA ', 80066044, '2022-03-07', '17:32:46', 'OTRA ACTIVIDAD', ''),
(120, 'Jorge David Sánchez Ramírez', 1001043753, '2022-03-08', '17:29:43', 'OTRA ACTIVIDAD', 'Verificación aseo y desinfección'),
(121, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-03-10', '08:56:34', 'LAVADO CAJAS TERMICAS', ''),
(122, 'Brayan David Martinez ', 1014307517, '2022-03-10', '09:01:06', 'LAVADO CAJAS TERMICAS', ''),
(123, 'Nicolas Ramirez', 1024588640, '2022-03-10', '09:11:49', 'LAVADO CAJAS TERMICAS', ''),
(124, 'Humberto Gamba', 3163305, '2022-03-10', '17:28:09', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(125, 'Fredy vera', 80066044, '2022-03-11', '17:15:13', 'OTRA ACTIVIDAD', ''),
(126, 'Fredy vera', 80066044, '2022-03-15', '08:38:35', 'OTRA ACTIVIDAD', ''),
(127, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-03-15', '10:21:41', 'ASEO Y LIMPIEZA ESTANTERIA', ''),
(128, 'Steven Castañeda', 1000021067, '2022-03-15', '10:22:44', 'ASEO Y LIMPIEZA ESTANTERIA', 'Desinfección raick'),
(129, 'Olmedo londoño morales ', 79978510, '2022-03-17', '10:59:43', 'OTRA ACTIVIDAD', 'Recepción de jeringas '),
(130, 'Juan Pablo Espejo Murcia ', 1001315437, '2022-03-17', '11:00:20', 'OTRA ACTIVIDAD', 'Recepción de Jeringas '),
(131, 'Daniel salazar', 1013644250, '2022-03-17', '11:00:32', 'RECEPCION DE JERINGAS', ''),
(132, 'Fredy vera', 80066044, '2022-03-17', '11:03:20', 'DESPACHO DE JERINGAS', ''),
(133, 'David Martinez ', 1014307517, '2022-03-17', '16:02:15', 'RECEPCION DE JERINGAS', ''),
(134, 'Juan Pablo Espejo Murcia ', 1001315437, '2022-03-17', '22:01:48', 'OTRA ACTIVIDAD', 'Recepción de Jeringas '),
(135, 'Steven Castañeda', 1000021067, '2022-03-18', '08:01:28', 'LAVADO CAJAS TERMICAS', 'Termos'),
(136, 'Flor Jenny Guerrero Asprilla ', 39428397, '2022-03-23', '10:11:55', 'OTRA ACTIVIDAD', ''),
(137, 'LUIS PRIETO', 1010038451, '2022-03-23', '17:30:16', 'OTRA ACTIVIDAD', 'Verificación de aseo '),
(138, 'Rafael Cabra', 7711832, '2022-03-24', '09:41:42', 'OTRA ACTIVIDAD', 'Ingeniero '),
(139, 'Luis Prieto ', 1010038451, '2022-03-25', '17:19:43', 'OTRA ACTIVIDAD', 'Verificación de aseos'),
(140, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-03-28', '07:42:55', 'LAVADO CAJAS TERMICAS', ''),
(141, 'Fredy vera', 80066044, '2022-03-28', '07:47:33', 'OTRA ACTIVIDAD', ''),
(142, 'Flor Jenny Guerrero Asprilla ', 39428397, '2022-03-28', '08:32:02', 'LAVADO CAJAS TERMICAS', ''),
(143, 'Nicolas Ramirez', 1024588640, '2022-03-28', '08:39:26', 'LAVADO CAJAS TERMICAS', ''),
(144, 'LUIS PRIETO', 1010038451, '2022-03-30', '05:50:36', 'OTRA ACTIVIDAD', 'Descargar piso'),
(145, 'Linda yuneidi Sanchez Rodríguez', 1012371482, '2022-03-30', '07:52:23', 'LAVADO CAJAS TERMICAS', ''),
(146, 'Fredy vera', 80066044, '2022-03-30', '08:59:10', 'LAVADO CAJAS TERMICAS', ''),
(147, 'Nicolas Ramirez', 1024588640, '2022-04-05', '11:29:38', 'OTRA ACTIVIDAD', 'Re cambio de Ice pack'),
(148, 'David Martinez', 1014307517, '2022-04-05', '11:29:43', 'OTRA ACTIVIDAD', 'Recambio ive packs '),
(149, 'Juan Sebastian González', 1014250824, '2022-04-08', '10:11:21', 'OTRA ACTIVIDAD', 'Inspección HSE'),
(150, 'Juan Sebastian González Sarmiento', 1014250824, '2022-04-12', '08:26:21', 'OTRA ACTIVIDAD', 'Inspección Unidad Móvil'),
(151, 'Félix Amaury Herrera Pajoy', 1201235301, '2022-04-18', '10:10:22', 'OTRA ACTIVIDAD', 'Lavado de pilas '),
(152, 'Jorge David Sánchez Ramírez', 1001043753, '2022-04-21', '15:31:21', 'OTRA ACTIVIDAD', 'Verificación aseo y desinfección'),
(153, 'Angela Barragán', 52110214, '2022-04-21', '15:31:41', 'OTRA ACTIVIDAD', 'Verificación aseo y desinfección'),
(154, 'David Martinez', 1014307517, '2022-04-27', '10:17:29', 'LIMPIEZA Y MANTENIMIENTO EQUIPOS', ''),
(155, 'Nicolas Ramirez', 1024588640, '2022-04-27', '10:17:47', 'LIMPIEZA ESTIBAS', ''),
(156, 'Félix Herrera ', 1201235301, '2022-04-27', '10:21:07', 'LIMPIEZA ESTIBAS', ''),
(157, 'Linda Sánchez ', 1012371482, '2022-04-28', '08:29:28', 'LAVADO CAJAS TERMICAS', ''),
(158, 'Fredy vera', 80066044, '2022-05-03', '15:28:18', 'OTRA ACTIVIDAD', ''),
(159, 'Rafael Cabra', 7711832, '2022-05-12', '12:42:27', 'OTRA ACTIVIDAD', 'Ingeniero '),
(160, 'German Sotelo', 79274110, '2022-09-05', '15:22:47', 'LIMPIEZA Y MANTENIMIENTO EQUIPOS', 'Limpieza'),
(161, 'Luis Alejandro', 1005710310, '2022-09-07', '09:05:05', 'OTRA ACTIVIDAD', 'Calibración cuartos fríos '),
(162, 'Andrés Felipe Barón ', 1001056948, '2022-09-07', '09:06:48', 'OTRA ACTIVIDAD', 'Calibración cuantos fríos '),
(163, 'Luis Alejandro Herazo ', 1005710310, '2022-09-08', '08:25:10', 'OTRA ACTIVIDAD', 'Calibración y Calificación de cuartos '),
(164, 'Andrés Felipe Barón ', 1001056948, '2022-09-09', '08:13:30', 'OTRA ACTIVIDAD', 'Calificación de cuatro frío '),
(165, 'Luis Alejandro Herazo ', 1005710310, '2022-09-09', '12:15:40', 'OTRA ACTIVIDAD', 'Calibración '),
(166, 'Luis Alejandro Herazo ', 1005710310, '2022-09-09', '20:18:20', 'OTRA ACTIVIDAD', 'Calibración '),
(167, 'Isabel agudelo', 1144048353, '2022-10-19', '09:43:41', 'OTRA ACTIVIDAD', 'Apertura vacunacion'),
(168, 'Efrain guerrero ', 91161959, '2022-10-24', '15:01:38', 'OTRA ACTIVIDAD', 'Entrega vacunas acopio '),
(169, 'MÓNICA DEL PILAR MUÑOZ BAQUERO', 20392321, '2022-11-11', '10:01:28', 'OTRA ACTIVIDAD', 'Inspección ARL');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
