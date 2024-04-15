-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2023 a las 00:37:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b', '2017-01-24 16:21:18', '22-06-2020 10:14:35 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'Laptops', 'Laptops de todo tipo y marca', '2017-01-24 19:19:32', '24-07-2023 12:07:31 PM'),
(7, 'Perifericos', 'Dispositivos externos que se conectan a una computadora portátil para mejorar su funcionalidad y experiencia de usuario. Estos periféricos permiten ampliar las capacidades de la laptop y facilitan tareas específicas.', '2023-07-26 20:03:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(27, 8, '24', 1, '2023-07-26 20:22:26', 'Debit / Credit card', NULL),
(28, 8, '25', 1, '2023-07-26 20:22:26', 'Debit / Credit card', NULL),
(29, 8, '27', 1, '2023-07-30 20:02:29', 'Debit / Credit card', 'En proceso'),
(30, 8, '24', 1, '2023-07-30 20:20:49', 'Debit / Credit card', NULL),
(31, 8, '26', 2, '2023-07-30 20:23:37', 'Debit / Credit card', 'Entregado'),
(32, 8, '26', 2, '2023-07-30 20:25:42', 'Debit / Credit card', 'Entregado'),
(33, 8, '25', 1, '2023-07-30 20:35:53', 'Debit / Credit card', NULL),
(34, 1, '26', 1, '2023-07-30 20:39:42', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(24, 4, 4, 'ASUS ROG Strix G17', 'ASUS', 5999, 6125, '<table class=\"a-normal a-spacing-micro\" style=\"width: 666.963px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Marca</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">ASUS</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Nombre del modelo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">ASUS Rog Strix</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de pantalla</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">17,3 Pulgadas</span></td></tr><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Color</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Gris</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">1 TB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Modelo de CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Ryzen 9</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de la memoria RAM instalada</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">64 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Sistema operativo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Windows 10 Home</span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción de la tarjeta gráfica</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Dedicada</span></td></tr><tr class=\"a-spacing-small po-graphics_coprocessor\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Coprocesador de gráficos</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">NVIDIA GeForce RTX 3070</span></td></tr></tbody></table>', '61-9iJ6W3KS._AC_SL1280_.jpg', '61ou1QVwlrS._AC_SL1500_.jpg', '51okgaVHQpS._AC_SL1280_.jpg', 30, 'En Stock', '2023-07-26 19:31:37', NULL),
(25, 4, 4, 'Lenovo Legion Ultimate', 'Lenovo', 4999, 5107, '<table class=\"a-normal a-spacing-micro\" style=\"width: 666.963px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Marca</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Lenovo</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Nombre del modelo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Legion</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de pantalla</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">17,3 Pulgadas</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">1 TB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Modelo de CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Apple ci7</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de la memoria RAM instalada</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">32 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Sistema operativo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Windows 11</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Características especiales</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Teclado retroiluminado RGB</span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción de la tarjeta gráfica</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Dedicada</span></td></tr><tr class=\"a-spacing-small po-graphics_coprocessor\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Coprocesador de gráficos</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">NVIDIA GeForce RTX 2070</span></td></tr></tbody></table>', '71YCPoR+HmL._AC_SL1500_.jpg', '51HLZSklzsL._AC_SL1336_.jpg', '51+vhNeivqL._AC_SL1365_.jpg', 0, 'En Stock', '2023-07-26 19:40:39', NULL),
(26, 4, 4, 'MSI Raider GE68Hx', 'MSI', 9050, 9370, '<table class=\"a-normal a-spacing-micro\" style=\"width: 666.963px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Marca</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">MSI</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Nombre del modelo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Raider GE68HX 13VG-047US</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de pantalla</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">16 Pulgadas</span></td></tr><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Color</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Negro -</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">2 TB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Modelo de CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Core i9</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de la memoria RAM instalada</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">32 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Sistema operativo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Windows 11 Pro</span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción de la tarjeta gráfica</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">RTX 4070</span></td></tr><tr class=\"a-spacing-small po-graphics_coprocessor\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Coprocesador de gráficos</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">NVIDIA GeForce RTX 4070</span></td></tr></tbody></table>', '71dcPsygRhL._AC_SL1500_.jpg', '71ss4V-vfDL._AC_SL1500_.jpg', '61U1PFHUTRL._AC_SL1500_.jpg', 0, 'En Stock', '2023-07-26 19:42:25', NULL),
(27, 4, 4, 'Acer Predator Helios 16', 'Acer', 5500, 5949, '<table class=\"a-normal a-spacing-micro\" style=\"width: 666.963px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Marca</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Acer</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Nombre del modelo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">PH16-71-74UU</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de pantalla</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">16 Pulgadas</span></td></tr><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Color</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Negro -</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">1 TB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Modelo de CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Apple ci7</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de la memoria RAM instalada</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">16 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Sistema operativo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Windows 11 Home</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Características especiales</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Ranura de tarjeta de memoria, Teclado retroiluminado</span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción de la tarjeta gráfica</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Dedicada</span></td></tr></tbody></table>', '71SuqDPUeUL._AC_SL1500_.jpg', '71nVBsuZE8L._AC_SL1500_.jpg', '61LCTNF8zXL._AC_SL1500_.jpg', 0, 'En Stock', '2023-07-26 19:56:25', NULL),
(28, 4, 2, 'HP Portátil', 'HP', 890, 706, '<table class=\"a-normal a-spacing-micro\" style=\"width: 666.963px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Marca</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">HP</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Nombre del modelo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">HP Laptop de 14\"</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de pantalla</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">14</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">64 GB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Modelo de CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Celeron N</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de la memoria RAM instalada</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">8 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Sistema operativo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Windows 11</span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción de la tarjeta gráfica</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Integrada</span></td></tr><tr class=\"a-spacing-small po-cpu_model.speed\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Velocidad de la CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">2,6 GHz</span></td></tr><tr class=\"a-spacing-small po-hard_disk.description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">SSD</span></td></tr></tbody></table>', '616olwN1KDL._AC_SL1058_.jpg', '61bDbrBMGxL._AC_SL1056_.jpg', '61GMrrQIc-L._AC_SL1056_.jpg', 30, 'En Stock', '2023-07-26 20:01:33', NULL),
(29, 4, 3, 'MacBook Air 2020', 'Apple', 4600, 4799, '<div class=\"ui-vpp-highlighted-specs__attribute-columns__column\" style=\"box-sizing: border-box; overflow: hidden; width: 339px; color: rgb(0, 0, 0); font-family: &quot;Proxima Nova&quot;, -apple-system, Roboto, Arial, sans-serif; font-size: 16px;\"><div class=\"ui-pdp-container__row ui-vpp-highlighted-specs__attribute-columns__row\" style=\"box-sizing: border-box; display: flex; flex: 0 1 auto; flex-flow: row wrap; margin-bottom: 24px;\"><div class=\"ui-vpp-highlighted-specs__key-value\" style=\"box-sizing: border-box; width: 339px; align-items: center; display: flex;\"><div class=\"ui-vpp-highlighted-specs__key-value__labels\" style=\"box-sizing: border-box; align-items: center; display: flex; margin-left: 16px; overflow: hidden;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 675.025px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Marca</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Apple</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Nombre del modelo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">MacBook Air</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de pantalla</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">13,3 Pulgadas</span></td></tr><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Color</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Plateado</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">256 GB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Modelo de CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Desconocido</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de la memoria RAM instalada</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">8 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Sistema operativo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Mac OS</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Características especiales</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Teclado retroiluminado</span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 161.675px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción de la tarjeta gráfica</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 513.35px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Integrada</span></td></tr></tbody></table></div></div></div></div>', '71TPda7cwUL._AC_SL1500_.jpg', '719BHaUQ46L._AC_SL1500_.jpg', '6155Fp7yaSL._AC_SL1500_.jpg', 0, 'En Stock', '2023-07-26 20:12:25', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(30, 4, 3, 'LG gram (2022) 17Z90Q', 'LG', 7500, 7560, '<table class=\"a-normal a-spacing-micro\" style=\"width: 666.963px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Marca</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">LG</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Nombre del modelo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">17Z90Q-K.ADB9U1</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de pantalla</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">17</span></td></tr><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Color</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Negro -</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">2 TB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Modelo de CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Core i7</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de la memoria RAM instalada</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">32 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Sistema operativo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Windows 11 Home</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Características especiales</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Lightweight</span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción de la tarjeta gráfica</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Intel XE</span></td></tr></tbody></table>', '71Wbbw-Nd4L._AC_SL1500_.jpg', '61JY9KlwDmL._AC_SL1500_.jpg', '71A675KW6YL._AC_SL1500_.jpg', 0, 'En Stock', '2023-07-26 20:16:25', NULL),
(31, 4, 3, 'Galaxy Book2', 'SAMSUNG', 5400, 5588, '<table class=\"a-normal a-spacing-micro\" style=\"width: 666.963px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Marca</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">SAMSUNG</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Nombre del modelo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">NP641BEF-KA3US</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de pantalla</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">14 Pulgadas</span></td></tr><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Color</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Grafito</span></td></tr><tr class=\"a-spacing-small po-hard_disk.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño del disco duro</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">1 TB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Modelo de CPU</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Core i7</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Tamaño de la memoria RAM instalada</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">16 GB</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Sistema operativo</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Windows 11 Pro</span></td></tr><tr class=\"a-spacing-small po-special_feature\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Características especiales</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base\" style=\"box-sizing: border-box; line-height: 20px !important;\"><span class=\"a-truncate po-truncate-attribute\" data-a-word-break=\"normal\" data-a-truncate-name=\"po-attribute-truncate-8\" data-a-max-rows=\"3\" data-a-overflow-marker=\"&amp;hellip;\" data-a-recalculate=\"false\" data-a-updated=\"true\" style=\"box-sizing: border-box; display: inline-block; position: relative; width: 504.225px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\"><span class=\"a-truncate-full a-offscreen\" style=\"box-sizing: border-box; display: inline-block; width: 504.225px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\">Recubrimiento antidestellos, Lector de huellas digitales, Ranura de tarjeta de memoria, TrackPoint, Teclado retroiluminado</span><span class=\"a-truncate-cut\" aria-hidden=\"true\" style=\"box-sizing: border-box; display: inline-block; width: 504.225px; word-break: break-word; height: auto;\">Recubrimiento antidestellos, Lector de huellas digitales, Ranura de tarjeta de memoria, TrackPoint, Teclado retroiluminado</span></span></span></td></tr><tr class=\"a-spacing-small po-graphics_description\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 159.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Descripción de la tarjeta gráfica</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 507.225px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Integrada</span></td></tr></tbody></table>', '519KZO0oXaL._AC_.jpg', '41FMqyAOuSL._AC_.jpg', '41z-zMTj59L._AC_.jpg', 0, 'En Stock', '2023-07-26 20:38:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Uso General', '2017-01-26 16:24:52', '26-07-2023 03:05:54 PM'),
(13, 7, 'Mouse', '2023-07-26 20:07:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'Max', 'maxraul_22mg@hotmail.com', 929370804, 'bda313358ca9daf69a08ecd18942b644', NULL, NULL, NULL, NULL, 'Av. Peru', 'Abancay', 'Abancay', 3001, '2023-07-24 16:48:33', NULL),
(7, 'Max', 'maxraul_22mg@hotmail.com', 929370804, 'bda313358ca9daf69a08ecd18942b644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-24 16:50:16', NULL),
(8, 'Jean Phol Alexis Curi Garrafa', '191204@unamba.edu.pe', 918107154, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 03:30:23', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 12, '2020-06-23 03:05:43'),
(3, 8, 23, '2023-07-25 04:29:29'),
(6, 8, 31, '2023-07-26 20:38:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
