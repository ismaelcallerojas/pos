-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2021 a las 03:17:02
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Reglas', '2021-11-22 19:39:26'),
(2, 'Lápices', '2021-11-22 19:39:37'),
(3, 'Plastilina', '2021-11-22 19:39:50'),
(4, 'Gomas de borrar', '2021-11-22 19:40:01'),
(5, 'Láminas', '2021-11-22 19:40:15'),
(6, 'Pinturas', '2021-11-22 19:40:25'),
(7, 'Crayones', '2021-11-22 19:41:05'),
(8, 'Marcadores', '2021-11-22 19:41:19'),
(9, 'Tajadores', '2021-11-22 19:41:29'),
(10, 'goma eva', '2021-11-22 20:11:56'),
(11, 'Colores', '2021-11-22 20:12:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(591) 793-57389', 'Calle 34 N33 -56', '1970-08-07', 7, '2018-02-02 10:57:20', '2021-11-22 20:07:42'),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(591) 789-46513', 'calle 34 # 34 - 23', '1976-03-04', 32, '2017-12-26 17:27:13', '2021-11-22 20:08:00'),
(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(591) 789-65412', 'Calle 45 # 34 - 56', '1976-11-30', 7, '2017-12-26 18:26:51', '2021-11-22 20:08:43'),
(7, 'Julian Ramirez', 786786545, 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 14, '2017-12-26 17:26:28', '2017-12-26 22:26:28'),
(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 9, '2017-12-26 17:25:55', '2017-12-26 22:25:55'),
(9, 'Eduardo López', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 12, '2017-12-26 17:25:33', '2017-12-26 22:25:33'),
(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 18, '2017-12-26 17:25:08', '2017-12-26 22:25:08'),
(11, 'David Guzman', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 10, '2017-12-26 17:24:50', '2017-12-26 22:24:50'),
(12, 'Gonzalo Pérez', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '2017-12-25 17:24:24', '2017-12-27 00:30:12'),
(13, 'ismael', 8673068, 'isamelcallerojas@gmail.com', '(591) 793-5738', 'vinto chico', '1994-08-30', 4, '2021-11-04 13:44:55', '2021-11-04 18:44:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'lapiz stabilo ', 'vistas/img/productos/101/105.png', 15, 1000, 1200, 0, '2021-11-12 23:40:41'),
(2, 1, '102', 'borradores', 'vistas/img/productos/102/940.jpg', 8, 4500, 6300, 1, '2021-11-12 23:42:56'),
(3, 1, '103', 'Compresor de Aire para pintura', 'vistas/img/productos/103/763.jpg', 14, 3000, 4200, 6, '2021-11-04 18:17:31'),
(4, 1, '104', 'Cortadora de Adobe sin Disco ', 'vistas/img/productos/104/957.jpg', 17, 4000, 5600, 3, '2021-11-04 17:07:19'),
(5, 1, '105', 'Cortadora de Piso sin Disco ', 'vistas/img/productos/105/630.jpg', 14, 1540, 2156, 6, '2021-11-04 17:07:19'),
(6, 1, '106', 'Disco Punta Diamante ', 'vistas/img/productos/106/635.jpg', 15, 1100, 1540, 5, '2017-12-26 15:04:38'),
(7, 1, '107', 'Extractor de Aire ', 'vistas/img/productos/107/848.jpg', 12, 1540, 2156, 8, '2017-12-26 15:04:11'),
(8, 1, '108', 'Guadañadora ', 'vistas/img/productos/108/163.jpg', 13, 1540, 2156, 7, '2017-12-26 15:03:52'),
(9, 1, '109', 'Hidrolavadora Eléctrica ', 'vistas/img/productos/109/769.jpg', 15, 2600, 3640, 5, '2017-12-26 15:05:09'),
(10, 1, '110', 'Hidrolavadora Gasolina', 'vistas/img/productos/110/582.jpg', 18, 2210, 3094, 2, '2017-12-26 15:05:09'),
(11, 1, '111', 'Motobomba a Gasolina', 'vistas/img/productos/default/anonymous.png', 20, 2860, 4004, 0, '2017-12-21 21:56:28'),
(12, 1, '112', 'Motobomba El?ctrica', 'vistas/img/productos/default/anonymous.png', 20, 2400, 3360, 0, '2017-12-21 21:56:28'),
(13, 1, '113', 'Sierra Circular ', 'vistas/img/productos/default/anonymous.png', 20, 1100, 1540, 0, '2017-12-21 21:56:28'),
(14, 1, '114', 'Disco de tugsteno para Sierra circular', 'vistas/img/productos/default/anonymous.png', 20, 4500, 6300, 0, '2017-12-21 21:56:28'),
(15, 1, '115', 'Soldador Electrico ', 'vistas/img/productos/default/anonymous.png', 20, 1980, 2772, 0, '2017-12-21 21:56:28'),
(16, 1, '116', 'Careta para Soldador', 'vistas/img/productos/default/anonymous.png', 20, 4200, 5880, 0, '2017-12-21 21:56:28'),
(17, 1, '117', 'colores', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, 0, '2021-11-12 23:43:42'),
(18, 2, '201', 'Martillo Demoledor de Piso 110V', 'vistas/img/productos/default/anonymous.png', 20, 5600, 7840, 0, '2017-12-21 21:56:28'),
(19, 2, '202', 'Muela o cincel martillo demoledor piso', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-21 21:56:28'),
(20, 2, '203', 'Taladro Demoledor de muro 110V', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-21 21:56:28'),
(21, 2, '204', 'Muela o cincel martillo demoledor muro', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2017-12-21 21:56:28'),
(22, 2, '205', 'Taladro Percutor de 1/2 Madera y Metal', 'vistas/img/productos/default/anonymous.png', 20, 8000, 11200, 0, '2017-12-21 22:28:24'),
(23, 2, '206', 'Taladro Percutor SDS Plus 110V', 'vistas/img/productos/default/anonymous.png', 20, 3900, 5460, 0, '2017-12-21 21:56:28'),
(24, 2, '207', 'Taladro Percutor SDS Max 110V (Mineria)', 'vistas/img/productos/default/anonymous.png', 20, 4600, 6440, 0, '2017-12-21 21:56:28'),
(25, 3, '301', 'Andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1440, 2016, 0, '2017-12-21 21:56:28'),
(26, 3, '302', 'Distanciador andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1600, 2240, 0, '2017-12-21 21:56:28'),
(27, 3, '303', 'Marco andamio modular ', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-21 21:56:28'),
(28, 3, '304', 'Marco andamio tijera', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2017-12-21 21:56:28'),
(29, 3, '305', 'Tijera para andamio', 'vistas/img/productos/default/anonymous.png', 20, 162, 226, 0, '2017-12-21 21:56:28'),
(30, 3, '306', 'Escalera interna para andamio', 'vistas/img/productos/default/anonymous.png', 20, 270, 378, 0, '2017-12-21 21:56:28'),
(31, 3, '307', 'Pasamanos de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 75, 105, 0, '2017-12-21 21:56:28'),
(32, 3, '308', 'Rueda giratoria para andamio', 'vistas/img/productos/default/anonymous.png', 20, 168, 235, 0, '2017-12-21 21:56:28'),
(33, 3, '309', 'Arnes de seguridad', 'vistas/img/productos/default/anonymous.png', 20, 1750, 2450, 0, '2017-12-21 21:56:28'),
(34, 3, '310', 'Eslinga para arnes', 'vistas/img/productos/default/anonymous.png', 20, 175, 245, 0, '2017-12-21 21:56:28'),
(35, 3, '311', 'Plataforma Met?lica', 'vistas/img/productos/default/anonymous.png', 20, 420, 588, 0, '2017-12-21 21:56:28'),
(36, 4, '401', 'Planta Electrica Diesel 6 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3500, 4900, 0, '2017-12-21 21:56:28'),
(37, 4, '402', 'Planta Electrica Diesel 10 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3550, 4970, 0, '2017-12-21 21:56:28'),
(38, 4, '403', 'Planta Electrica Diesel 20 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3600, 5040, 0, '2017-12-21 21:56:28'),
(39, 4, '404', 'Planta Electrica Diesel 30 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3650, 5110, 0, '2017-12-21 21:56:28'),
(40, 4, '405', 'Planta Electrica Diesel 60 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3700, 5180, 0, '2017-12-21 21:56:28'),
(41, 4, '406', 'Planta Electrica Diesel 75 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3750, 5250, 0, '2017-12-21 21:56:28'),
(42, 4, '407', 'Planta Electrica Diesel 100 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3800, 5320, 0, '2017-12-21 21:56:28'),
(43, 4, '408', 'Planta Electrica Diesel 120 Kva', 'vistas/img/productos/default/anonymous.png', 20, 3850, 5390, 0, '2017-12-21 21:56:28'),
(44, 5, '501', 'Escalera de Tijera Aluminio ', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, 0, '2017-12-21 21:56:28'),
(45, 5, '502', 'Extension Electrica ', 'vistas/img/productos/default/anonymous.png', 20, 370, 518, 0, '2017-12-21 21:56:28'),
(46, 5, '503', 'Gato tensor', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-21 21:56:28'),
(47, 5, '504', 'Lamina Cubre Brecha ', 'vistas/img/productos/default/anonymous.png', 20, 380, 532, 0, '2017-12-21 21:56:28'),
(48, 5, '505', 'Llave de Tubo', 'vistas/img/productos/default/anonymous.png', 20, 480, 672, 0, '2017-12-21 21:56:28'),
(49, 5, '506', 'Manila por Metro', 'vistas/img/productos/default/anonymous.png', 20, 600, 840, 0, '2017-12-21 21:56:28'),
(50, 5, '507', 'Polea 2 canales', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2017-12-21 21:56:28'),
(51, 5, '508', 'Tensor', 'vistas/img/productos/508/500.jpg', 19, 100, 140, 1, '2017-12-26 22:26:51'),
(52, 2, '509', 'Lapices Stabilo', 'vistas/img/productos/509/904.jpg', 12, 15, 15, 8, '2021-11-22 20:14:28'),
(53, 5, '510', 'Tajador', 'vistas/img/productos/510/326.jpg', 8, 2, 3, 12, '2021-11-22 20:17:20'),
(54, 5, '511', 'Marcadores Faber Castell', 'vistas/img/productos/511/643.jpg', 25, 12, 12, 4, '2021-11-22 20:22:50'),
(55, 5, '512', 'Colores Stabilo', 'vistas/img/productos/512/781.jpg', 16, 18, 18, 4, '2021-11-22 20:15:36'),
(56, 5, '513', 'Estuche Geométrico', 'vistas/img/productos/513/445.jpg', 3, 25, 35, 17, '2021-11-17 02:54:24'),
(57, 2, '514', 'Colore Faber Castell', 'vistas/img/productos/514/300.jpg', 20, 16, 22.4, 13, '2021-11-22 20:16:06'),
(58, 5, '515', 'Goma Eva', 'vistas/img/productos/515/266.jpg', 17, 3, 4.2, 3, '2021-11-22 20:10:40'),
(59, 8, '516', 'marcadores', 'vistas/img/productos/516/806.jpg', 14, 140, 196, 6, '2021-11-22 20:09:22'),
(60, 7, '517', 'crayones grandes', 'vistas/img/productos/517/426.jpg', 20, 10, 14, 10, '2021-11-22 20:11:37'),
(61, 1, '118', 'Lapiceros Stabilo', 'vistas/img/productos/118/721.jpg', 15, 4, 5.6, 0, '2021-11-22 20:23:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2021-11-22 14:37:54', '2021-11-22 19:37:54'),
(59, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 1, '2021-11-16 22:58:06', '2021-11-17 03:58:06'),
(61, 'Juanito Almacenero', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Especial', '', 1, '2021-11-16 22:55:49', '2021-11-17 03:55:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(18, 10002, 4, 59, '[{"id":"5","descripcion":"Cortadora de Piso sin Disco ","cantidad":"2","stock":"18","precio":"2156","total":"4312"},{"id":"4","descripcion":"Cortadora de Adobe sin Disco ","cantidad":"1","stock":"19","precio":"5600","total":"5600"},{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"19","precio":"1540","total":"1540"},{"id":"7","descripcion":"Extractor de Aire ","cantidad":"1","stock":"19","precio":"2156","total":"2156"}]', 2585.52, 13608, 16193.5, 'TC-34346346346', '2018-02-02 14:57:20'),
(19, 10003, 5, 59, '[{"id":"8","descripcion":"Guadañadora ","cantidad":"1","stock":"19","precio":"2156","total":"2156"},{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"19","precio":"3640","total":"3640"},{"id":"7","descripcion":"Extractor de Aire ","cantidad":"1","stock":"18","precio":"2156","total":"2156"}]', 1510.88, 7952, 9462.88, 'Efectivo', '2018-01-18 14:57:40'),
(20, 10004, 5, 59, '[{"id":"3","descripcion":"Compresor de Aire para pintura","cantidad":"5","stock":"14","precio":"4200","total":"21000"},{"id":"4","descripcion":"Cortadora de Adobe sin Disco ","cantidad":"1","stock":"18","precio":"5600","total":"5600"},{"id":"5","descripcion":"Cortadora de Piso sin Disco ","cantidad":"1","stock":"17","precio":"2156","total":"2156"}]', 5463.64, 28756, 34219.6, 'TD-454475467567', '2018-01-25 14:58:09'),
(22, 10006, 10, 1, '[{"id":"3","descripcion":"Compresor de Aire para pintura","cantidad":"1","stock":"8","precio":"4200","total":"4200"},{"id":"4","descripcion":"Cortadora de Adobe sin Disco ","cantidad":"1","stock":"16","precio":"5600","total":"5600"},{"id":"5","descripcion":"Cortadora de Piso sin Disco ","cantidad":"3","stock":"13","precio":"2156","total":"6468"},{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"18","precio":"1540","total":"1540"}]', 3383.52, 17808, 21191.5, 'Efectivo', '2018-01-26 15:03:22'),
(23, 10007, 9, 1, '[{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"17","precio":"1540","total":"1540"},{"id":"7","descripcion":"Extractor de Aire ","cantidad":"1","stock":"17","precio":"2156","total":"2156"},{"id":"8","descripcion":"Guadañadora ","cantidad":"6","stock":"13","precio":"2156","total":"12936"},{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"18","precio":"3640","total":"3640"}]', 3851.68, 20272, 24123.7, 'TC-357547467346', '2017-11-30 15:03:53'),
(24, 10008, 12, 1, '[{"id":"2","descripcion":"Plato Flotante para Allanadora","cantidad":"1","stock":"6","precio":"6300","total":"6300"},{"id":"7","descripcion":"Extractor de Aire ","cantidad":"5","stock":"12","precio":"2156","total":"10780"},{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"16","precio":"1540","total":"1540"},{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"17","precio":"3640","total":"3640"}]', 4229.4, 22260, 26489.4, 'TD-35745575', '2017-12-25 15:04:11'),
(25, 10009, 11, 1, '[{"id":"10","descripcion":"Hidrolavadora Gasolina","cantidad":"1","stock":"19","precio":"3094","total":"3094"},{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"16","precio":"3640","total":"3640"},{"id":"6","descripcion":"Disco Punta Diamante ","cantidad":"1","stock":"15","precio":"1540","total":"1540"}]', 1572.06, 8274, 9846.06, 'TD-5745745745', '2017-08-15 15:04:38'),
(26, 10010, 8, 1, '[{"id":"9","descripcion":"Hidrolavadora Eléctrica ","cantidad":"1","stock":"15","precio":"3640","total":"3640"},{"id":"10","descripcion":"Hidrolavadora Gasolina","cantidad":"1","stock":"18","precio":"3094","total":"3094"}]', 1279.46, 6734, 8013.46, 'Efectivo', '2017-12-07 15:05:09'),
(27, 10011, 7, 1, '[{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"1","stock":"19","precio":"1302","total":"1302"},{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"19","precio":"196","total":"196"},{"id":"58","descripcion":"Coche llanta neumatica","cantidad":"1","stock":"19","precio":"588","total":"588"},{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"1","stock":"19","precio":"812","total":"812"}]', 550.62, 2898, 3448.62, 'Efectivo', '2017-12-25 22:23:38'),
(28, 10012, 12, 57, '[{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"18","precio":"196","total":"196"},{"id":"58","descripcion":"Coche llanta neumatica","cantidad":"1","stock":"18","precio":"588","total":"588"},{"id":"54","descripcion":"Chapeta","cantidad":"1","stock":"19","precio":"924","total":"924"},{"id":"53","descripcion":"Bomba Hidrostatica","cantidad":"1","stock":"19","precio":"1078","total":"1078"}]', 529.34, 2786, 3315.34, 'TC-3545235235', '2017-12-25 22:24:24'),
(29, 10013, 11, 57, '[{"id":"54","descripcion":"Chapeta","cantidad":"1","stock":"18","precio":"924","total":"924"},{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"17","precio":"196","total":"196"},{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"5","stock":"14","precio":"1302","total":"6510"}]', 1449.7, 7630, 9079.7, 'TC-425235235235', '2017-12-26 22:24:50'),
(30, 10014, 10, 57, '[{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"16","precio":"196","total":"196"},{"id":"54","descripcion":"Chapeta","cantidad":"1","stock":"17","precio":"924","total":"924"},{"id":"53","descripcion":"Bomba Hidrostatica","cantidad":"10","stock":"9","precio":"1078","total":"10780"}]', 2261, 11900, 14161, 'Efectivo', '2017-12-26 22:25:09'),
(31, 10015, 9, 57, '[{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"3","stock":"16","precio":"812","total":"2436"}]', 462.84, 2436, 2898.84, 'Efectivo', '2017-12-26 22:25:33'),
(32, 10016, 8, 57, '[{"id":"58","descripcion":"Coche llanta neumatica","cantidad":"1","stock":"17","precio":"588","total":"588"},{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"5","stock":"11","precio":"812","total":"4060"},{"id":"56","descripcion":"Cizalla de Palanca","cantidad":"1","stock":"19","precio":"630","total":"630"}]', 1002.82, 5278, 6280.82, 'TD-4523523523', '2017-12-26 22:25:55'),
(33, 10017, 7, 57, '[{"id":"57","descripcion":"Cizalla de Tijera","cantidad":"4","stock":"7","precio":"812","total":"3248"},{"id":"52","descripcion":"Bascula ","cantidad":"3","stock":"17","precio":"182","total":"546"},{"id":"55","descripcion":"Cilindro muestra de concreto","cantidad":"2","stock":"18","precio":"560","total":"1120"},{"id":"56","descripcion":"Cizalla de Palanca","cantidad":"1","stock":"18","precio":"630","total":"630"}]', 1053.36, 5544, 6597.36, 'Efectivo', '2017-12-26 22:26:28'),
(34, 10018, 6, 57, '[{"id":"51","descripcion":"Tensor","cantidad":"1","stock":"19","precio":"140","total":"140"},{"id":"52","descripcion":"Bascula ","cantidad":"5","stock":"12","precio":"182","total":"910"},{"id":"53","descripcion":"Bomba Hidrostatica","cantidad":"1","stock":"8","precio":"1078","total":"1078"}]', 404.32, 2128, 2532.32, 'Efectivo', '2017-12-26 22:26:51'),
(35, 10019, 5, 57, '[{"id":"56","descripcion":"Cizalla de Palanca","cantidad":"15","stock":"3","precio":"630","total":"9450"},{"id":"55","descripcion":"Cilindro muestra de concreto","cantidad":"1","stock":"17","precio":"560","total":"560"}]', 1901.9, 10010, 11911.9, 'Efectivo', '2017-12-26 22:27:13'),
(36, 10020, 4, 57, '[{"id":"55","descripcion":"Cilindro muestra de concreto","cantidad":"1","stock":"16","precio":"560","total":"560"},{"id":"54","descripcion":"Chapeta","cantidad":"1","stock":"16","precio":"924","total":"924"}]', 281.96, 1484, 1765.96, 'TC-46346346346', '2017-12-26 22:27:42'),
(37, 10021, 3, 1, '[{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"1","stock":"13","precio":"1302","total":"1302"},{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"15","precio":"196","total":"196"}]', 149.8, 1498, 1647.8, 'Efectivo', '2018-02-06 22:47:02'),
(38, 10022, 13, 59, '[{"id":"60","descripcion":"Cortadora de Baldosin","cantidad":"3","stock":"10","precio":"1302","total":"3906"}]', 0, 3906, 3906, 'Efectivo', '2021-11-04 16:44:37'),
(39, 10023, 13, 60, '[{"id":"59","descripcion":"Cono slump","cantidad":"1","stock":"14","precio":"196","total":"196"}]', 0, 196, 196, 'Efectivo', '2021-11-04 18:44:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
