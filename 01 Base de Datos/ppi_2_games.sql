-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2024 a las 22:51:00
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
-- Base de datos: `ppi_2_games`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_carrito`
--

CREATE TABLE `tb_carrito` (
  `id_carrito` int(11) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `estado` bit(1) NOT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_carrito`
--

INSERT INTO `tb_carrito` (`id_carrito`, `id_usuario`, `id_producto`, `estado`, `id_pedido`) VALUES
(1, 1, 1, b'1', 1),
(2, 2, 3, b'1', 2),
(3, 3, 5, b'1', 3),
(4, 4, 7, b'1', 4),
(5, 5, 9, b'1', 5),
(6, 6, 11, b'1', 6),
(7, 7, 13, b'1', 7),
(8, 8, 15, b'1', 8),
(9, 9, 17, b'1', 9),
(10, 10, 19, b'1', 10),
(11, 11, 2, b'1', 11),
(12, 12, 4, b'1', 12),
(13, 13, 6, b'1', 13),
(14, 14, 8, b'1', 14),
(15, 15, 10, b'1', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categorias`
--

CREATE TABLE `tb_categorias` (
  `id_categoria` int(4) NOT NULL,
  `nombre_categoria` varchar(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_categorias`
--

INSERT INTO `tb_categorias` (`id_categoria`, `nombre_categoria`, `descripcion`, `estado`) VALUES
(1, 'RTS', 'Juegos de estrategia en tiempo real', b'1'),
(2, 'Shooter', 'Juegos de disparos en primera persona', b'1'),
(3, 'Deportes', 'Juegos que tienen algún deporte', b'1'),
(4, 'TBS', 'Juegos de estrategia por turnos', b'1'),
(5, 'Conduccion', 'Juegos de manejo de autos', b'1'),
(6, 'Arcade', 'Juegos antiguos o considerados clasicos', b'1'),
(7, 'De mesa', 'Descontinuados solo jeugos online', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ciudad`
--

CREATE TABLE `tb_ciudad` (
  `id_ciudad` int(4) NOT NULL,
  `nombre_ciudad` varchar(45) NOT NULL,
  `cobertura` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ciudad`
--

INSERT INTO `tb_ciudad` (`id_ciudad`, `nombre_ciudad`, `cobertura`) VALUES
(1, 'Bogota', b'1'),
(2, 'Bogota', b'1'),
(3, 'Medellin', b'1'),
(4, 'Cali', b'1'),
(5, 'USA', b'0'),
(6, 'Barranquilla', b'1'),
(7, 'Bucaramanga', b'1'),
(8, 'Mocoa', b'1'),
(9, 'Cartagena', b'1'),
(10, 'Cajamarca', b'0'),
(11, 'Tocaima', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_medios_pago`
--

CREATE TABLE `tb_medios_pago` (
  `id_medio_pago` int(11) NOT NULL,
  `nombre_medio_pago` varchar(45) NOT NULL DEFAULT '0',
  `estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_medios_pago`
--

INSERT INTO `tb_medios_pago` (`id_medio_pago`, `nombre_medio_pago`, `estado`) VALUES
(1, 'Tarjeta de crédito', b'1'),
(2, 'Transferencia bancaria', b'1'),
(3, 'Efectivo', b'1'),
(4, 'PayPal', b'1'),
(5, 'Cheque', b'1'),
(6, 'Tarjeta de débito', b'1'),
(7, 'cruce de cuentas', b'0'),
(8, 'trueque', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_oferta`
--

CREATE TABLE `tb_oferta` (
  `id_oferta` int(11) NOT NULL,
  `nombre_oferta` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `estado` bit(1) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_productos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_oferta`
--

INSERT INTO `tb_oferta` (`id_oferta`, `nombre_oferta`, `descripcion`, `estado`, `fecha_inicio`, `fecha_fin`, `id_productos`) VALUES
(1, 'Oferta RTS', 'Descuento especial en juegos de estrategia en', b'1', '2024-02-21', '2024-02-28', 1),
(2, 'Oferta Shooter', 'Oferta imperdible en juegos de disparos en pr', b'1', '2024-02-22', '2024-02-29', 2),
(3, 'Oferta Deportes', 'Promoción en juegos que tienen algún deporte', b'1', '2024-02-23', '2024-02-28', 3),
(4, 'Oferta TBS', 'Descuento exclusivo en juegos de estrategia p', b'1', '2024-02-24', '2024-02-29', 4),
(5, 'Oferta Conduccion', 'Oferta especial en juegos de manejo de autos', b'1', '2024-02-25', '2024-02-28', 5),
(6, 'Oferta Arcade', 'Descuento único en juegos antiguos o consider', b'1', '2024-02-26', '2024-02-29', 6),
(7, 'Oferta De mesa', 'Promoción exclusiva en juegos de mesa descont', b'0', '2024-02-27', '2024-02-28', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedido`
--

CREATE TABLE `tb_pedido` (
  `id_pedido` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `id_medio_pago` int(11) NOT NULL DEFAULT 0,
  `estado` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_pedido`
--

INSERT INTO `tb_pedido` (`id_pedido`, `fecha_pago`, `id_medio_pago`, `estado`) VALUES
(1, '2024-02-21', 1, 'Pagado'),
(2, '2024-02-20', 3, 'En espera'),
(3, '2024-02-19', 2, 'Entregado'),
(4, '2024-02-18', 5, 'Pagado'),
(5, '2024-02-17', 4, 'En espera'),
(6, '2024-02-16', 3, 'Entregado'),
(7, '2024-02-15', 6, 'Pagado'),
(8, '2024-02-14', 1, 'En espera'),
(9, '2024-02-13', 1, 'Entregado'),
(10, '2024-02-12', 3, 'Pagado'),
(11, '2024-02-11', 4, 'En espera'),
(12, '2024-02-10', 2, 'Entregado'),
(13, '2024-02-09', 6, 'Pagado'),
(14, '2024-02-08', 5, 'En espera'),
(15, '2024-02-07', 5, 'Entregado'),
(16, '2024-02-06', 4, 'Pagado'),
(17, '2024-02-05', 2, 'En espera'),
(18, '2024-02-04', 1, 'Entregado'),
(19, '2024-02-03', 3, 'Pagado'),
(20, '2024-02-02', 4, 'En espera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `id_productos` int(11) NOT NULL,
  `descripcion_producto` varchar(45) NOT NULL,
  `id_categoria` int(4) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(4) NOT NULL,
  `id_oferta` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`id_productos`, `descripcion_producto`, `id_categoria`, `precio`, `cantidad`, `id_oferta`) VALUES
(1, 'Age of Empires III', 1, 50000, 150, 1),
(2, 'Counter-Strike: Global Offensive', 2, 45000, 300, NULL),
(3, 'FIFA 22', 3, 80000, 200, NULL),
(4, 'Civilization VI', 4, 60000, 120, NULL),
(5, 'Need for Speed: Heat', 5, 70000, 250, NULL),
(6, 'Pac-Man', 6, 10000, 500, NULL),
(7, 'Chess Online', 7, 15000, 50, NULL),
(8, 'StarCraft II', 1, 55000, 180, 1),
(9, 'Call of Duty: Warzone', 2, 70000, 280, 2),
(10, 'Pro Evolution Soccer 2023', 3, 75000, 150, NULL),
(11, 'XCOM 2', 4, 65000, 100, NULL),
(12, 'Forza Horizon 4', 5, 90000, 200, NULL),
(13, 'Street Fighter II', 6, 12000, 400, NULL),
(14, 'Online Poker', 7, 20000, 30, NULL),
(15, 'World of Warcraft', 1, 55000, 150, NULL),
(16, 'Apex Legends', 2, 65000, 200, 2),
(17, 'NBA 2K22', 3, 85000, 180, NULL),
(18, 'Sid Meier\'s Pirates!', 4, 40000, 80, NULL),
(19, 'Mario Kart 8 Deluxe', 5, 95000, 120, NULL),
(20, 'Galaga', 6, 8000, 300, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rol`
--

CREATE TABLE `tb_rol` (
  `id_rol` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_rol`
--

INSERT INTO `tb_rol` (`id_rol`, `descripcion`, `nombre`) VALUES
(1, 'Administrador super usuario', 'admin'),
(2, 'Usser que puede comprar y jugarcon la platafo', 'player'),
(3, 'Usser que puede interactuar y consultar, pero', 'spect'),
(4, 'Usser que puede ofertar sus juegos ', 'creator'),
(5, 'Usser que oferta juegos en otras plataformas,', 'reseller');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(60) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `id_refiere` int(10) DEFAULT NULL,
  `estado` bit(1) NOT NULL,
  `contraseña_usuario` varchar(10) NOT NULL,
  `correo_usuario` varchar(45) NOT NULL,
  `telefono_usuario` int(13) UNSIGNED ZEROFILL DEFAULT NULL,
  `id_ciudad` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nombre_usuario`, `direccion`, `id_refiere`, `estado`, `contraseña_usuario`, `correo_usuario`, `telefono_usuario`, `id_ciudad`) VALUES
(1, 'Legna', 'Diagonal 57', NULL, b'1', 'contraseña', 'Legna@example.com', 0003138521949, 1),
(2, 'Siul', 'Avenida 56', 1, b'1', 'contraseña', 'Siul@example.com', 0000000152025, 2),
(3, 'Nabetse', 'calle 25', 1, b'1', 'contraseña', 'Nabetse@example.com', 0004294967295, 3),
(4, 'Ordnajela', 'carrera 50', NULL, b'1', 'contraseña', 'Ordnajela@example.com', NULL, 3),
(5, 'Ana', 'Carrera 200, Bogota', 3, b'0', 'contraseña', 'Ana@hotmail.com', NULL, 1),
(6, 'Carlos', 'Calle 100, Medellin', NULL, b'1', 'contraseña', 'Carlos@hotmail.com', NULL, 2),
(7, 'Laura', 'Carrera 200, Cali', 1, b'1', 'contraseña', 'Laura@hotmail.com', 0004294967295, 3),
(8, 'David', 'Calle 100, Barranquilla', NULL, b'1', 'contraseña', 'David@hotmail.com', NULL, 5),
(9, 'Isabel', 'Carrera 200, Bucaramanga', NULL, b'1', 'contraseña', 'Isabel@hotmail.com', 0000235055464, 6),
(10, 'Mateo', 'Calle 100, Mocoa', 3, b'1', 'contraseña', 'Mateo@hotmail.com', NULL, 7),
(11, 'Camila', 'Carrera 200, Cartagena', NULL, b'1', 'contraseña', 'Camila@hotmail.com', 0004294967295, 8),
(12, 'Diego', 'Calle 100, Tocaima', NULL, b'1', 'contraseña', 'Diego@hotmail.com', NULL, 10),
(13, 'Valentina', 'Carrera 200, Bogota', NULL, b'0', 'contraseña', 'Valentina@hotmail.com', NULL, 1),
(14, 'Alejandro', 'Calle 100, Medellin', NULL, b'1', 'contraseña', 'Alejandro@hotmail.com', NULL, 2),
(15, 'Sofia', 'Carrera 200, Cali', 2, b'1', 'contraseña', 'Sofia@hotmail.com', 0004294967295, 3),
(16, 'Daniel', 'Calle 100, Barranquilla', NULL, b'1', 'contraseña', 'Daniel@hotmail.com', NULL, 5),
(17, 'Mariana', 'Carrera 200, Bucaramanga', 1, b'1', 'contraseña', 'Mariana@hotmail.com', 0004294967295, 6),
(18, 'Juan', 'Calle 100, Mocoa', NULL, b'1', 'contraseña', 'Juan@hotmail.com', NULL, 7),
(19, 'Gabriela', 'Carrera 200, Cartagena', 3, b'1', 'contraseña', 'Gabriela@hotmail.com', NULL, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario_rol`
--

CREATE TABLE `tb_usuario_rol` (
  `id_usuario` int(10) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_usuario_rol`
--

INSERT INTO `tb_usuario_rol` (`id_usuario`, `id_rol`, `estado`) VALUES
(1, 1, b'1'),
(1, 2, b'1'),
(1, 3, b'1'),
(1, 4, b'1'),
(1, 5, b'1'),
(2, 2, b'1'),
(3, 1, b'1'),
(3, 3, b'1'),
(3, 4, b'1'),
(4, 4, b'1'),
(5, 5, b'1'),
(6, 2, b'1'),
(7, 2, b'1'),
(8, 2, b'1'),
(9, 2, b'1'),
(10, 3, b'1'),
(11, 2, b'1'),
(12, 3, b'1'),
(13, 2, b'1'),
(14, 3, b'1'),
(15, 2, b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `tb_carrito_ibfk_3` (`id_producto`);

--
-- Indices de la tabla `tb_categorias`
--
ALTER TABLE `tb_categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `tb_ciudad`
--
ALTER TABLE `tb_ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `tb_medios_pago`
--
ALTER TABLE `tb_medios_pago`
  ADD PRIMARY KEY (`id_medio_pago`);

--
-- Indices de la tabla `tb_oferta`
--
ALTER TABLE `tb_oferta`
  ADD PRIMARY KEY (`id_oferta`),
  ADD KEY `id_productos` (`id_productos`);

--
-- Indices de la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_medio_pago` (`id_medio_pago`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `tb_rol`
--
ALTER TABLE `tb_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_ciudad` (`id_ciudad`),
  ADD KEY `fk_usuario_refiere` (`id_refiere`);

--
-- Indices de la tabla `tb_usuario_rol`
--
ALTER TABLE `tb_usuario_rol`
  ADD PRIMARY KEY (`id_usuario`,`id_rol`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tb_categorias`
--
ALTER TABLE `tb_categorias`
  MODIFY `id_categoria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tb_ciudad`
--
ALTER TABLE `tb_ciudad`
  MODIFY `id_ciudad` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tb_medios_pago`
--
ALTER TABLE `tb_medios_pago`
  MODIFY `id_medio_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tb_oferta`
--
ALTER TABLE `tb_oferta`
  MODIFY `id_oferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tb_rol`
--
ALTER TABLE `tb_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tb_usuario_rol`
--
ALTER TABLE `tb_usuario_rol`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  ADD CONSTRAINT `tb_carrito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`),
  ADD CONSTRAINT `tb_carrito_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedido` (`id_pedido`),
  ADD CONSTRAINT `tb_carrito_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_productos`);

--
-- Filtros para la tabla `tb_oferta`
--
ALTER TABLE `tb_oferta`
  ADD CONSTRAINT `tb_oferta_ibfk_1` FOREIGN KEY (`id_productos`) REFERENCES `tb_productos` (`id_productos`);

--
-- Filtros para la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD CONSTRAINT `tb_medios_pago_ibfk_1` FOREIGN KEY (`id_medio_pago`) REFERENCES `tb_medios_pago` (`id_medio_pago`);

--
-- Filtros para la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD CONSTRAINT `tb_productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`);

--
-- Filtros para la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `fk_usuario_refiere` FOREIGN KEY (`id_refiere`) REFERENCES `tb_usuarios` (`id_usuario`),
  ADD CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `tb_ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `tb_usuario_rol`
--
ALTER TABLE `tb_usuario_rol`
  ADD CONSTRAINT `tb_usuario_rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`),
  ADD CONSTRAINT `tb_usuario_rol_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `tb_rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
