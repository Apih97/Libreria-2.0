-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2020 a las 05:43:06
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreriatres`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `identificador_cliente` varchar(11) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `identificador_cliente`, `firstname`, `lastname`) VALUES
(1, '11111111', 'Cliente', 'NoRegistrado'),
(2, '17100001', 'Bob', 'Baker'),
(3, '17100002', 'Tim', 'Thomas'),
(4, '17100003', 'Rachel', 'Roberts'),
(5, '17110004', 'Sam', 'Smith'),
(7, '17110005', 'Juan', 'Peralta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `sub_total`, `vat`, `total_amount`, `discount`, `grand_total`, `paid`, `due`, `payment_type`, `payment_status`, `order_status`) VALUES
(1, '2016-08-01', 'Indra', '19208130', '1200.00', '156.00', '1356.00', '1000.00', '356.00', '356', '0.00', 2, 1, 2),
(2, '2016-07-16', 'John Doe', '9808767689', '3600.00', '468.00', '4068.00', '500.00', '3568.00', '3568', '0', 2, 1, 2),
(3, '2017-11-25', 'Aldair', '82659114', '3600.00', '540.00', '4140.00', '0', '4140.00', '5000', '-860.00', 3, 1, 2),
(7, '2017-11-26', 'Juan', '12345678', '2400.00', '360.00', '2760.00', '0', '2760.00', '2760', '0.00', 1, 1, 1),
(8, '2017-11-26', 'Jack', '12451245', '132.00', '19.80', '151.80', '0', '151.80', '152', '-0.20', 2, 1, 1),
(9, '2017-11-26', 'Juana', '12457845', '264.00', '39.60', '303.60', '0', '303.60', '310', '-6.40', 2, 1, 1),
(10, '2017-11-26', 'John', '12457896', '60.00', '9.00', '69.00', '50', '19.00', '20', '-1.00', 2, 1, 1),
(11, '2017-11-26', 'Rose', '12459632', '90.00', '13.50', '103.50', '100', '3.50', '5', '-1.50', 2, 1, 1),
(12, '2017-11-26', 'Karen', '12345678', '240.00', '36.00', '276.00', '50', '226.00', '250', '-24.00', 3, 1, 2),
(13, '2017-11-27', 'odaly', '12345678', '9600.00', '1440.00', '11040.00', '9000', '2040.00', '2040', '0.00', 3, 1, 1),
(14, '2017-11-27', 'Aaa', '1234', '9600.00', '1440.00', '11040.00', '0', '11040.00', '11040', '0.00', 3, 1, 1),
(15, '2017-11-27', 'Reyna', '1234', '120.00', '18.00', '138.00', '38', '100.00', '100', '0.00', 2, 1, 1),
(16, '2017-11-27', 'Alison', '12345689', '1020.00', '153.00', '1173.00', '500', '673.00', '680', '-7.00', 2, 1, 1),
(17, '2017-11-27', 'Dell', '12345678', '180.00', '27.00', '207.00', '50', '157.00', '160', '-3.00', 2, 1, 1),
(18, '2017-11-27', 'Michell', '12345678', '180.00', '27.00', '207.00', '100', '107.00', '110', '-3.00', 2, 1, 1),
(19, '2017-11-27', 'Jack', '87654321', '12600.00', '1890.00', '14490.00', '10000', '4490.00', '5000', '-510.00', 1, 1, 1),
(20, '2017-11-27', 'Mich', '123456', '24450.00', '3667.50', '28117.50', '20000', '8117.50', '8117.50', '0.00', 3, 1, 1),
(21, '2017-11-27', 'Rosa', '98745623', '480.00', '72.00', '552.00', '100', '452.00', '452', '0.00', 3, 1, 1),
(22, '2017-11-27', 'Mildred', '96321458', '5400.00', '810.00', '6210.00', '5000', '1210.00', '1210', '0.00', 3, 1, 1),
(23, '2017-11-27', 'Olga', '45781245', '3000.00', '450.00', '3450.00', '3000', '450.00', '500', '-50.00', 2, 1, 1),
(24, '2018-04-14', 'bperalta', '435465789', '96.00', '14.40', '110.40', '10', '100.40', '100.40', '0.00', 3, 1, 1),
(25, '2020-06-20', 'Cliente', '0', '1260.00', '189.00', '1449.00', '499', '950.00', '1000', '-50.00', 2, 1, 1),
(26, '2020-06-20', 'Cliente', '0', '120.00', '18.00', '138.00', '0', '138.00', '138', '0.00', 3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_item_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`) VALUES
(10, 6, 7, '1', '1200', '1200.00', 1),
(11, 6, 8, '1', '1200', '1200.00', 1),
(12, 6, 7, '1', '1200', '1200.00', 1),
(13, 7, 7, '1', '1200', '1200.00', 1),
(14, 7, 8, '1', '1200', '1200.00', 1),
(15, 8, 7, '1', '60', '60.00', 1),
(16, 8, 8, '2', '18', '36.00', 1),
(17, 8, 10, '2', '18', '36.00', 1),
(18, 9, 10, '8', '18', '144.00', 1),
(19, 9, 11, '10', '12', '120.00', 1),
(20, 10, 7, '1', '60', '60.00', 1),
(21, 11, 7, '1', '60', '60.00', 1),
(22, 11, 8, '1', '18', '18.00', 1),
(23, 11, 11, '1', '12', '12.00', 1),
(27, 14, 7, '100', '60', '6000.00', 1),
(28, 14, 8, '100', '18', '1800.00', 1),
(29, 14, 8, '100', '18', '1800.00', 1),
(30, 15, 11, '10', '12', '120.00', 1),
(31, 16, 11, '20', '12', '240.00', 1),
(32, 16, 8, '10', '18', '180.00', 1),
(33, 16, 7, '10', '60', '600.00', 1),
(34, 17, 12, '10', '18', '180.00', 1),
(35, 13, 7, '100', '60', '6000.00', 1),
(36, 13, 8, '100', '18', '1800.00', 1),
(37, 13, 10, '100', '18', '1800.00', 1),
(38, 18, 12, '10', '18', '180.00', 1),
(39, 19, 7, '100', '60', '6000.00', 1),
(40, 19, 8, '100', '18', '1800.00', 1),
(41, 19, 10, '100', '18', '1800.00', 1),
(42, 19, 11, '100', '12', '1200.00', 1),
(43, 19, 12, '100', '18', '1800.00', 1),
(44, 20, 8, '405', '18', '7290.00', 1),
(45, 20, 7, '286', '60', '17160.00', 1),
(46, 21, 11, '10', '12', '120.00', 1),
(47, 21, 10, '10', '18', '180.00', 1),
(48, 21, 8, '10', '18', '180.00', 1),
(49, 22, 12, '100', '18', '1800.00', 1),
(50, 22, 8, '100', '18', '1800.00', 1),
(51, 22, 10, '100', '18', '1800.00', 1),
(52, 23, 11, '100', '12', '1200.00', 1),
(53, 23, 10, '100', '18', '1800.00', 1),
(54, 24, 7, '1', '60', '60.00', 1),
(55, 24, 8, '3', '18', '18.00', 1),
(56, 24, 10, '1', '18', '18.00', 1),
(57, 25, 7, '10', '60', '600.00', 1),
(58, 25, 12, '10', '18', '180.00', 1),
(59, 25, 8, '10', '18', '180.00', 1),
(60, 25, 10, '10', '18', '180.00', 1),
(61, 25, 11, '10', '12', '120.00', 1),
(62, 26, 7, '2', '60', '120.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(7, 'Calculadora CASIO', '../assests/images/stock/1770257893463579bf.jpg', 11, 7, '189', '60', 1, 1),
(8, 'Lapicero rojo', '../assests/images/stock/136715789347d1aea6.jpg', 12, 7, '303', '18', 1, 1),
(10, 'Lapicero verde', 'No hay imagen', 0, 0, '241', '18', 1, 1),
(11, 'Lapiz de grafito', 'No hay imagen', 0, 0, '209', '12', 1, 1),
(12, 'Lapicero azul', 'No hay imagen', 0, 0, '270', '18', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provider`
--

CREATE TABLE `provider` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_prov` char(255) NOT NULL,
  `direccion` char(255) NOT NULL,
  `contacto_prov` char(255) NOT NULL,
  `contacto_num` char(30) NOT NULL,
  `status_prov` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provider`
--

INSERT INTO `provider` (`id_proveedor`, `nombre_prov`, `direccion`, `contacto_prov`, `contacto_num`, `status_prov`) VALUES
(1, 'Libreria Arcoiris', 'Cruz 1/2 cuadra al norte', 'Milena Alvarez', '86520131', 1),
(2, 'Grupo ABC', 'De la estatua de Montoya 3 cuadras al sur', 'Juan Perez', '82659111', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sfrlogs`
--

CREATE TABLE `sfrlogs` (
  `id_log` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `vMaquina_IP` varchar(45) DEFAULT NULL,
  `dtFechaAcceso` datetime DEFAULT NULL,
  `dtFechaSalida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sfrlogs`
--

INSERT INTO `sfrlogs` (`id_log`, `id_usuario`, `vMaquina_IP`, `dtFechaAcceso`, `dtFechaSalida`) VALUES
(1, 9, '::1', '2021-06-20 07:18:00', '0000-00-00 00:00:00'),
(2, 9, '::1', '2021-06-20 07:34:00', '0000-00-00 00:00:00'),
(5, 9, '::1', '0000-00-00 00:00:00', '2021-06-20 07:39:00'),
(6, 3, '::1', '2021-06-20 07:39:00', '0000-00-00 00:00:00'),
(7, 3, '::1', '0000-00-00 00:00:00', '2021-06-20 08:21:00'),
(8, 3, '::1', '2021-06-20 08:21:00', '0000-00-00 00:00:00'),
(9, 3, '::1', '0000-00-00 00:00:00', '2021-06-20 08:21:00'),
(10, 7, '::1', '2021-06-20 08:21:00', '0000-00-00 00:00:00'),
(11, 7, '::1', '0000-00-00 00:00:00', '2021-06-20 08:21:00'),
(12, 9, '::1', '2021-06-20 08:22:00', '0000-00-00 00:00:00'),
(13, 9, '::1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 7, '::1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 7, '::1', '0000-00-00 00:00:00', '2021-06-20 08:59:00'),
(16, 3, '::1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, '::1', '0000-00-00 00:00:00', '2021-06-20 09:00:00'),
(18, 9, '::1', '2021-06-20 09:00:00', '0000-00-00 00:00:00'),
(19, 9, '::1', '0000-00-00 00:00:00', '2021-06-20 09:00:00'),
(20, 7, '::1', '2021-06-20 09:01:00', '0000-00-00 00:00:00'),
(21, 7, '::1', '0000-00-00 00:00:00', '2021-06-20 09:02:00'),
(22, 9, '::1', '2021-06-20 09:02:00', '0000-00-00 00:00:00'),
(23, 9, '::1', '0000-00-00 00:00:00', '2021-06-20 11:08:00'),
(24, 3, '::1', '2021-06-20 11:08:00', '0000-00-00 00:00:00'),
(25, 3, '::1', '0000-00-00 00:00:00', '2021-06-20 11:09:00'),
(26, 10, '::1', '2021-06-20 11:09:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `email`, `password`, `created_at`) VALUES
(3, 'Aldair Peralta', 'aldair', 'apih97@outlook.es', 'aldair', '2017-11-23 16:45:12'),
(7, 'Mildred Cantillano', 'Mildred', 'mil@correo.com', 'mildred', '2017-11-23 18:54:11'),
(9, 'Usuario admin', 'admin', 'admin@libreriamary.com', 'admin', '2020-06-21 18:01:24'),
(10, 'Rigoberto Lopez', 'Rigoberto', 'rigo@libreriamary.com', 'rigo', '2020-06-21 21:09:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identificador_cliente` (`identificador_cliente`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indices de la tabla `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `sfrlogs`
--
ALTER TABLE `sfrlogs`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_usuario_idx` (`id_usuario`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `provider`
--
ALTER TABLE `provider`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sfrlogs`
--
ALTER TABLE `sfrlogs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sfrlogs`
--
ALTER TABLE `sfrlogs`
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
