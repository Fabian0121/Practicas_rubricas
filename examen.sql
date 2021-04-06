-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2021 a las 22:01:25
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_preguntas`
--

CREATE TABLE `examen_preguntas` (
  `id` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `examen_preguntas`
--

INSERT INTO `examen_preguntas` (`id`, `id_pregunta`, `pregunta`, `respuesta`, `created_at`, `updated_at`) VALUES
(1, 1, '1-En caso de incendio que haria', 'Llamar a los bomberos', '2021-04-03 18:30:16', '0000-00-00 00:00:00'),
(2, 2, '2-Si veo a alguien mal', 'Llamo a los medicos', '2021-04-03 18:30:16', '0000-00-00 00:00:00'),
(3, 3, '3-En caso de terremoto que haria', 'Mantener la calma y salir en fila', '2021-04-03 18:30:16', '0000-00-00 00:00:00'),
(4, 4, '4-Si ve una agresion como reaccionaria', 'Intervengo para deternerlo', '2021-04-03 18:30:16', '0000-00-00 00:00:00'),
(5, 5, '5-Si es testigo de algo ilegal que haria', 'Reportarlo', '2021-04-03 18:30:16', '0000-00-00 00:00:00'),
(6, 6, '6-En caso de una explocion que haria', 'Llamar al 911', '2021-04-03 18:30:16', '0000-00-00 00:00:00'),
(7, 7, '7-Si estas en peligro que harias', 'Mantener la calma', '2021-04-03 18:30:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_puntuacion`
--

CREATE TABLE `examen_puntuacion` (
  `id` int(11) NOT NULL,
  `correo` text NOT NULL,
  `puntuacion` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `examen_puntuacion`
--

INSERT INTO `examen_puntuacion` (`id`, `correo`, `puntuacion`, `created_at`, `updated_at`) VALUES
(14, 'prueba@gmail.com', 6, '2021-04-04 08:44:18', '2021-04-04 08:44:18'),
(15, 'prueba2@gmail.com', 4, '2021-04-04 19:51:34', '2021-04-04 19:51:34'),
(16, 'prueba3@gmail.com', 3, '2021-04-04 19:52:56', '2021-04-04 19:52:56'),
(17, 'prueba4@gmail.com', 4, '2021-04-04 19:53:34', '2021-04-04 19:53:34'),
(18, 'prueba5@gmail.com', 2, '2021-04-04 19:54:26', '2021-04-04 19:54:26'),
(19, 'Prueba6@gmail.com', 4, '2021-04-04 19:57:21', '2021-04-04 19:57:21'),
(20, 'Prueba6@gmail.com', 3, '2021-04-04 23:02:47', '2021-04-04 23:02:47'),
(21, 'Prueba6@gmail.com', 4, '2021-04-04 23:09:27', '2021-04-04 23:09:27'),
(22, 'Prueba6@gmail.com', 3, '2021-04-04 23:10:47', '2021-04-04 23:10:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_usuario`
--

CREATE TABLE `respuestas_usuario` (
  `id` int(11) NOT NULL,
  `correo` text NOT NULL,
  `id_pregunta1` text NOT NULL,
  `respuesta_usuario1` text NOT NULL,
  `id_pregunta2` int(11) NOT NULL,
  `respuesta_usuario2` text NOT NULL,
  `id_pregunta3` int(11) NOT NULL,
  `respuesta_usuario3` text NOT NULL,
  `id_pregunta4` int(11) NOT NULL,
  `respuesta_usuario4` text NOT NULL,
  `id_pregunta5` int(11) NOT NULL,
  `respuesta_usuario5` text NOT NULL,
  `id_pregunta6` int(11) NOT NULL,
  `respuesta_usuario6` text NOT NULL,
  `id_pregunta7` int(11) NOT NULL,
  `respuesta_usuario7` text NOT NULL,
  `estatus` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuestas_usuario`
--

INSERT INTO `respuestas_usuario` (`id`, `correo`, `id_pregunta1`, `respuesta_usuario1`, `id_pregunta2`, `respuesta_usuario2`, `id_pregunta3`, `respuesta_usuario3`, `id_pregunta4`, `respuesta_usuario4`, `id_pregunta5`, `respuesta_usuario5`, `id_pregunta6`, `respuesta_usuario6`, `id_pregunta7`, `respuesta_usuario7`, `estatus`, `created_at`, `updated_at`) VALUES
(26, 'prueba@gmail.com', '1', 'Llamar a los bomberos', 2, 'Llamo a los medicos', 3, 'Ayudar a manrtener la calma', 4, 'Intervengo para deternerlo', 5, 'Reportarlo', 6, 'Llamar al 911', 7, 'Mantener la calma', 'Concluido', '2021-04-04 08:44:18', '2021-04-04 08:44:18'),
(27, 'prueba2@gmail.com', '1', 'Escapar', 2, 'Llamo a los medicos', 3, 'Ir al tejado', 4, 'Me uno a la agresion', 5, 'Reportarlo', 6, 'Llamar al 911', 7, 'Mantener la calma', 'Concluido', '2021-04-04 19:51:34', '2021-04-04 19:51:34'),
(28, 'prueba3@gmail.com', '1', 'Escapar', 2, 'Ignoro la situacion', 3, 'Ir al tejado', 4, 'Intervengo para deternerlo', 5, 'Reportarlo', 6, 'Causar el panico', 7, 'Reportarlo', 'Concluido', '2021-04-04 19:52:55', '2021-04-04 19:52:55'),
(29, 'prueba4@gmail.com', '1', 'Llamar a los bomberos', 2, 'Llamo a los medicos', 3, 'Ayudar a manrtener la calma', 4, 'Me uno a la agresion', 5, 'Ignorarlo<', 6, 'Llamar al 911', 7, 'Mantener la calma', 'Concluido', '2021-04-04 19:53:34', '2021-04-04 19:53:34'),
(30, 'prueba5@gmail.com', '1', 'Ayudar', 2, 'Llamo a los medicos', 3, 'Ir al tejado', 4, 'Me uno a la agresion', 5, 'Ignorarlo<', 6, 'Causar el panico', 7, 'Mantener la calma', 'Concluido', '2021-04-04 19:54:26', '2021-04-04 19:54:26'),
(34, 'Prueba6@gmail.com', '1', 'Llamar a los bomberos', 2, 'Ignoro la situacion', 3, 'Ayudar a manrtener la calma', 4, 'Me uno a la agresion', 5, 'Reportarlo', 6, 'Llamar al 911', 7, 'Ocasionar el panico', 'Concluido', '2021-04-04 23:10:47', '2021-04-04 23:10:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido_p` text NOT NULL,
  `apellido_m` text NOT NULL,
  `edad` int(2) NOT NULL,
  `correo` varchar(32) NOT NULL,
  `puesto` varchar(20) NOT NULL,
  `sexo` text NOT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `apellido_p`, `apellido_m`, `edad`, `correo`, `puesto`, `sexo`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Prueba', 'Prueba', 'Prueba', 26, 'prueba@gmail.com', 'empleado', 'masculino', '$2y$10$ZpEHMkdIBO9sWhtbes777eG2gRGxAaAKyUorPhL8Y2T671hskLwYm', '2021-04-03 20:38:58', '2021-04-03 02:45:59'),
(3, 'Admin', 'Admin', 'Admin', 35, 'admin@gmail.com', 'administrador', 'Masculino', '$2y$10$lZOXas.JNs.TOIdJ7XcOqe.p78SDvAWnZAOPcKDtKx1.za/lhIRSi', '2021-04-04 11:07:19', '2021-04-04 11:07:19'),
(4, 'Admin', 'Admin', 'Admin', 35, 'admin@gmail.com', 'administrador', 'Masculino', '$2y$10$sBTEZu2pvX0DGfLqAUeO2e4xT8bV5hpsSVcH4g.s3J23hrHA2Ya8a', '2021-04-04 11:15:39', '2021-04-04 11:15:39'),
(5, 'Admin', 'Admin', 'Admin', 35, 'admin@gmail.com', 'administrador', 'Masculino', '$2y$10$nia4JOmshfmgBCtQh04P7eBx2KUvhgQmPK.Y4tmN1spnumpN2ZDrG', '2021-04-04 11:18:53', '2021-04-04 11:18:53'),
(6, 'Admin', 'Admin', 'Admin', 35, 'admin@gmail.com', 'administrador', 'Masculino', '$2y$10$dcthdiKiHkTXnme4XPVisO6BuhPp8zyIYcCJ5sqfjBZVlSbsKpdpS', '2021-04-04 11:19:42', '2021-04-04 11:19:42'),
(7, 'Prueba2', 'Prueba2', 'Prueba2', 26, 'prueba2@gmail.com', 'empleado', 'Masculino', '$2y$10$ahcyBV1ubUj.vgQpfr45GOKP85hxcd9LorTny0Qwb4uy9e74i.O0K', '2021-04-04 19:49:31', '2021-04-04 19:49:31'),
(8, 'Prueba3', 'Prueba3', 'Prueba3', 26, 'prueba3@gmail.com', 'empleado', 'Masculino', '$2y$10$WCnIpsdkqSvqDCFKdTGPPOBiYzhltZG/Nzy9ENz2yaNnEmjsZitd6', '2021-04-04 19:49:59', '2021-04-04 19:49:59'),
(9, 'Prueba4', 'Prueba4', 'Prueba4', 26, 'prueba4@gmail.com', 'empleado', 'Masculino', '$2y$10$Vov8n0En6BmlSVeJ5qp.u.RrxPFGH4UWkBbbJ6P21df3cEPC2Oh9G', '2021-04-04 19:50:30', '2021-04-04 19:50:30'),
(10, 'Prueba5', 'Prueba5', 'Prueba5', 35, 'prueba5@gmail.com', 'empleado', 'Masculino', '$2y$10$Jw4wpGTH4.26szbcfcT8JOKavTDIKYEt3Rbf67z0ypjwvNIgNcXwG', '2021-04-04 19:50:56', '2021-04-04 19:50:56'),
(11, 'Prueba6', 'Prueba6', 'Prueba6', 26, 'Prueba6@gmail.com', 'empleado', 'Masculino', '$2y$10$JOFsVyov6iMDMXeLlq8IC.TxZFGScD.zz3u6R0e0x.3BuqFglTHPm', '2021-04-04 19:55:25', '2021-04-04 19:55:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `examen_preguntas`
--
ALTER TABLE `examen_preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examen_puntuacion`
--
ALTER TABLE `examen_puntuacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas_usuario`
--
ALTER TABLE `respuestas_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `examen_preguntas`
--
ALTER TABLE `examen_preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `examen_puntuacion`
--
ALTER TABLE `examen_puntuacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `respuestas_usuario`
--
ALTER TABLE `respuestas_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
