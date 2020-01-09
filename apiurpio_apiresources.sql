-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-01-2020 a las 20:05:44
-- Versión del servidor: 10.1.43-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apiurpio_apiresources`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temario_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id`, `titulo`, `descripcion`, `pdf`, `video`, `url`, `temario_id`, `created_at`, `updated_at`) VALUES
(1, 'Concepto de función', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lixFuzigJR0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/lixFuzigJR0', 1, '2019-12-21 07:43:35', '2019-12-21 07:43:35'),
(2, 'Qué es función - Concepto de función', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ll7xfe3HoZE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/Ll7xfe3HoZE', 1, '2019-12-21 07:47:39', '2019-12-21 07:47:39'),
(4, 'Producto de matrices (Video oficial UES)', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K-I3qJO5gbo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/K-I3qJO5gbo', 10, '2019-12-27 07:52:21', '2019-12-27 07:52:21'),
(5, 'Determinante de una matriz (Video oficial UES)', 'Video oficial UES, modalidad en linea', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yN906RenIjI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/yN906RenIjI', 11, '2019-12-27 08:05:05', '2019-12-27 08:05:05'),
(6, 'Solución de sistema de ecuaciones lineales - Gauss (Video oficial UES)', 'Video oficial UES, modalidad en linea', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SrOh6ZkmuXw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/SrOh6ZkmuXw', 15, '2019-12-27 08:06:56', '2019-12-27 08:06:56'),
(7, 'Matrices', 'MATRICES Y DETERMINANTES,IGUALDAD DE MATRICES', '1577416102MAT315-DefiniciondeMatriz.pdf', NULL, NULL, 8, '2019-12-27 09:08:22', '2019-12-27 09:08:22'),
(8, 'Matrices Introducción - Conceptos básicos', 'Qué es una matriz, cuales son sus elementos, cómo se nombran los elementos y qué es dimensión, orden o tamaño de una matriz y cuales son las filas y las columnas de una matriz. dentro del curso de Matrices.', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/m6w5vLA3Lnw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/m6w5vLA3Lnw', 8, '2019-12-27 09:10:57', '2019-12-27 09:10:57'),
(9, 'Igualdad de matrices - Ejercicio 1', 'Igualdad de matrices', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qklcvGovUvk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/qklcvGovUvk', 8, '2019-12-27 09:15:20', '2019-12-27 09:15:20'),
(10, 'Igualdad de matrices - Ejercicio 2', 'Igualdad de matrices', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yyu8sFNd-5o\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/yyu8sFNd-5o', 8, '2019-12-27 09:16:17', '2019-12-27 09:16:17'),
(11, 'Operaciones elementales en filas o columnas', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/a9S1E4L1Tto\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/a9S1E4L1Tto', 9, '2019-12-27 09:18:25', '2019-12-27 09:18:25'),
(12, 'Definición de matriz', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/D1nSy06buSY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/D1nSy06buSY', 8, '2019-12-27 09:20:07', '2019-12-27 09:20:07'),
(13, 'Suma de matrices', 'suma de matrices', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Up8YgUkKSgQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/Up8YgUkKSgQ', 10, '2019-12-27 09:23:28', '2019-12-27 09:23:28'),
(14, 'Propiedades de la suma de matrices', 'Propiedades de la suma de matrices', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QEt5kto3CoA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/QEt5kto3CoA', 10, '2019-12-27 09:24:09', '2019-12-27 09:24:09'),
(15, 'Propiedad conmutativa de la suma de matrices', 'Propiedad conmutativa de la suma de matrices', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1HrG86nFzc8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/1HrG86nFzc8', 10, '2019-12-27 09:25:17', '2019-12-27 09:25:17'),
(16, 'Multiplicación de una matriz por un escalar', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/D68YVEhtyiI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/D68YVEhtyiI', 10, '2019-12-27 09:25:59', '2019-12-27 09:25:59'),
(17, 'Tipos de matrices', 'Explicación y ejemplos de algunos tipos de matrices, como la matriz fila o vector fila, la matriz o vector columna, la matriz nula, dentro del curso de Matrices.', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GyrQmbxk7ds\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/GyrQmbxk7ds', 9, '2019-12-27 09:28:26', '2019-12-27 09:28:26'),
(18, 'Matriz traspuesta', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/aTsgBk34zyY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/aTsgBk34zyY', 9, '2019-12-27 09:31:36', '2019-12-27 09:31:36'),
(19, 'Suma de matrices 2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/S89lkpvajyU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/S89lkpvajyU', 10, '2019-12-27 09:33:04', '2019-12-27 09:33:04'),
(20, 'Restas de matrices', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KABGo8ggjPY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/KABGo8ggjPY', 10, '2019-12-27 09:34:40', '2019-12-27 09:34:40'),
(21, 'Resta de matrices 2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TFNhQq8wxmY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/TFNhQq8wxmY', 10, '2019-12-27 09:35:13', '2019-12-27 09:35:13'),
(22, 'Multiplicación de matrices - Ejemplo 1', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Tjrm3HsqBXE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/Tjrm3HsqBXE', 10, '2019-12-27 09:36:41', '2019-12-27 09:36:41'),
(23, 'Multiplicación de matrices - Ejemplo 2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uH8TOZ8rLZE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/uH8TOZ8rLZE', 10, '2019-12-27 09:37:33', '2019-12-27 09:37:33'),
(24, 'Matrices equivalentes', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/c0JXSEkwuBU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/c0JXSEkwuBU', 9, '2019-12-27 09:38:25', '2019-12-27 09:38:25'),
(25, 'Multiplicación de matrices - Ejemplo 3', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IhCjpEZf-7Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/IhCjpEZf-7Y', 10, '2019-12-27 09:39:34', '2019-12-27 09:39:34'),
(26, 'Multiplicación de matrices - Ejemplo 4', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RE0WBImzs9E\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/RE0WBImzs9E', 10, '2019-12-27 09:40:08', '2019-12-27 09:40:08'),
(27, 'Operación con matrices', NULL, '1577418336MAT315-operacionesconMatrices.pdf', NULL, NULL, 10, '2019-12-27 09:45:36', '2019-12-27 09:45:36'),
(28, 'Matriz identica', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cVH58XBSYHo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/cVH58XBSYHo', 9, '2019-12-27 09:47:14', '2019-12-27 09:47:14'),
(29, 'Determinante - Definición', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vvYaL0xf0Gk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/vvYaL0xf0Gk', 11, '2019-12-27 09:51:22', '2019-12-27 09:51:22'),
(30, 'Determinante de una matriz de 2x2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bsUUVmeqsdY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/bsUUVmeqsdY', 11, '2019-12-27 09:53:48', '2019-12-27 09:53:48'),
(31, 'Determinante de una matriz de 3x3 Regla de Sarrus', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8OnOZvc5rFQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/8OnOZvc5rFQ', 11, '2019-12-27 09:54:52', '2019-12-27 09:54:52'),
(32, 'Cálculo de un determinante por definición - Ejercicio 1', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1D5BNYp35Aw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/1D5BNYp35Aw', 11, '2019-12-27 09:57:54', '2019-12-27 09:57:54'),
(33, 'Cálculo de un determinante por definición - Ejercicio 2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oEjbyIa4DrI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/oEjbyIa4DrI', 11, '2019-12-27 09:58:26', '2019-12-27 09:58:26'),
(34, 'Propiedades de los determinantes', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ckeT2SIszgo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/ckeT2SIszgo', 11, '2019-12-27 10:00:35', '2019-12-27 10:00:35'),
(35, 'Matriz adjunta - Definición', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MJeJhUIkVBw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/MJeJhUIkVBw', 11, '2019-12-27 10:02:51', '2019-12-27 10:02:51'),
(36, 'Matriz adjunta', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/l51Epr3SY1Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/l51Epr3SY1Y', 11, '2019-12-27 10:04:02', '2019-12-27 10:04:02'),
(37, 'Matriz inversa método del adjunto - cofactores', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZDiZUrfG_MI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/ZDiZUrfG_MI', 12, '2019-12-27 10:09:03', '2019-12-27 10:09:03'),
(38, 'Determinante', NULL, '1577420777MAT315-determinantes.pdf', NULL, NULL, 11, '2019-12-27 10:26:17', '2019-12-27 10:26:17'),
(39, 'Determinante 2', NULL, '1577421199MAT315-determinantes2.pdf', NULL, NULL, 11, '2019-12-27 10:33:19', '2019-12-27 10:33:19'),
(40, 'Reducción de matrices - Gauss y Gauss Jordan', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qYa-iLBlZ6A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/qYa-iLBlZ6A', 11, '2019-12-27 10:37:53', '2019-12-27 10:37:53'),
(41, 'Reducción de matrices de 2x2 Método de Gauss', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PJJG21lsius\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/PJJG21lsius', 11, '2019-12-27 10:38:37', '2019-12-27 10:38:37'),
(42, 'Reducción de matrices de 3x3 Método de Gauss', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WESrEM8YHQE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/WESrEM8YHQE', 11, '2019-12-27 10:39:00', '2019-12-27 10:39:00'),
(43, 'Inversa de una matriz de 3x3 método de Gauss Jordan', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/W214PLI0quQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/W214PLI0quQ', 12, '2019-12-27 10:40:11', '2019-12-27 10:40:11'),
(44, 'Método de Cramer - Ejemplo 1', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ei9F9NIqEGk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/Ei9F9NIqEGk', 14, '2019-12-27 10:42:31', '2019-12-27 10:42:31'),
(45, 'Método de Cramer - Ejemplo 2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lLPcHVAqY80\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/lLPcHVAqY80', 14, '2019-12-27 10:43:51', '2019-12-27 10:43:51'),
(46, 'Método de Cramer - Ejemplo 3', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yVRpljpObDU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/yVRpljpObDU', 14, '2019-12-27 10:44:22', '2019-12-27 10:44:22'),
(47, 'Método de Gauss - Ejemplo 1', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XRcx8-2lLJI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/XRcx8-2lLJI', 15, '2019-12-27 10:47:36', '2019-12-27 10:47:36'),
(48, 'Método de Gauss - Ejemplo 2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IbdQQVTKuhs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/IbdQQVTKuhs', 15, '2019-12-27 10:48:06', '2019-12-27 10:48:06'),
(49, 'Método de Gauss - Ejemplo 3', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SxT5Sbn8odE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/SxT5Sbn8odE', 15, '2019-12-27 10:49:03', '2019-12-27 10:49:03'),
(50, 'Método de Cramer', NULL, '1577584032MAT315-metodoCramer.pdf', NULL, NULL, 14, '2019-12-29 06:47:12', '2019-12-29 06:47:12'),
(51, 'Método de Gauss', NULL, '1577584125MAT315-Metodogauss.pdf', NULL, NULL, 15, '2019-12-29 06:48:45', '2019-12-29 06:48:45'),
(52, 'Matrices', NULL, '1577662733MAT315-matrices1.pdf', NULL, NULL, 36, '2019-12-30 04:38:53', '2019-12-30 04:38:53'),
(53, 'Cordenadas Polares', NULL, '1577663415MAT315-CoordenadasPolares.pdf', NULL, NULL, 37, '2019-12-30 04:50:15', '2019-12-30 04:50:15'),
(54, 'Conversiones de coordenadas', NULL, '1577663607MAT315-ConversionDeCorordenadasPolares.pdf', NULL, NULL, 38, '2019-12-30 04:53:27', '2019-12-30 04:53:27'),
(55, 'Ecuaciones polares y rectangulares', NULL, '1577663881MAT315-ecuacionesPolaresRectangulares.pdf', NULL, NULL, 39, '2019-12-30 04:58:01', '2019-12-30 04:58:01'),
(56, 'Recta tangente en el polo', NULL, '1577664026MAT315-rectaTangenteEnElpolo.pdf', NULL, NULL, 40, '2019-12-30 05:00:26', '2019-12-30 05:00:26'),
(57, 'Gráfica de ecuaciones polares', NULL, '1577664284MAT315-graficaEcuacionesPolaresdf.pdf', NULL, NULL, 41, '2019-12-30 05:04:44', '2019-12-30 05:04:44'),
(58, 'Área en coordenadas polares', NULL, '1577664726MAT315-AreasEnCoordenadasPolares.pdf', NULL, NULL, 42, '2019-12-30 05:12:06', '2019-12-30 05:12:06'),
(60, 'Recta tangente en el polo (Video oficial UES)', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oYthAtTcOgA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'https://youtu.be/oYthAtTcOgA', 40, '2019-12-30 05:16:18', '2019-12-30 05:16:18'),
(62, 'Gráfica de ecuaciones polares - Rosa (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/WGvNjwku_sw', 'https://youtu.be/WGvNjwku_sw', 41, '2019-12-30 05:56:51', '2019-12-30 05:56:51'),
(63, 'Área en coordenadas polares Parte 1 (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/6Io4ZcIoMD4', 'https://youtu.be/6Io4ZcIoMD4', 42, '2019-12-30 05:59:10', '2019-12-30 05:59:10'),
(64, 'Área en coordenadas polares Parte 2 (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/12-fDnEEWX8', 'https://youtu.be/12-fDnEEWX8', 42, '2019-12-30 05:59:57', '2019-12-30 05:59:57'),
(65, 'Cordenadas Polares y graficas', NULL, '1577667734MAT315-CoordenadasPolaresYgraficas.pdf', NULL, NULL, 43, '2019-12-30 06:02:14', '2019-12-30 06:02:14'),
(66, 'Introducción a las coordenadas polares', 'Introducción a las coordenadas polares', NULL, 'https://www.youtube.com/embed/6d7wO3KExp8', 'https://youtu.be/6d7wO3KExp8', 37, '2019-12-30 06:07:50', '2019-12-30 06:07:50'),
(67, 'Plano polar 1', NULL, NULL, 'https://www.youtube.com/embed/qSi7Iaw3Ou4', 'https://youtu.be/qSi7Iaw3Ou4', 37, '2019-12-30 06:12:15', '2019-12-30 06:12:15'),
(68, 'Plano polar 2', NULL, NULL, 'https://www.youtube.com/embed/j6E3Qt1YHs4', 'https://youtu.be/j6E3Qt1YHs4', 37, '2019-12-30 06:12:52', '2019-12-30 06:12:52'),
(69, 'Convertir coordenadas polares a rectangulares', NULL, NULL, 'https://www.youtube.com/embed/cSZZW6gDS0w', 'https://youtu.be/cSZZW6gDS0w', 38, '2019-12-30 06:15:11', '2019-12-30 06:15:11'),
(70, 'Convertir coordenadas rectangulares a polares', NULL, NULL, 'https://www.youtube.com/embed/c2OPhPYnxbY', 'https://youtu.be/c2OPhPYnxbY', 38, '2019-12-30 06:15:44', '2019-12-30 06:15:44'),
(71, 'Pasar un punto de cartesianas a polares y viceversa 1', NULL, NULL, 'https://www.youtube.com/embed/DIBTRyrFY2k', 'https://youtu.be/DIBTRyrFY2k', 38, '2019-12-30 06:18:21', '2019-12-30 06:18:21'),
(72, 'Pasar un punto de cartesianas a polares y viceversa 2', NULL, NULL, 'https://www.youtube.com/embed/MMp3w_qJjxU', 'https://youtu.be/MMp3w_qJjxU', 38, '2019-12-30 06:18:48', '2019-12-30 06:18:48'),
(73, 'Pasar un punto de cartesianas a polares y viceversa 3', NULL, NULL, 'https://www.youtube.com/embed/RHISbcV0fGY', 'https://youtu.be/RHISbcV0fGY', 38, '2019-12-30 06:19:12', '2019-12-30 06:19:12'),
(74, 'Pasar un punto de cartesianas a polares y viceversa 4', NULL, NULL, 'https://www.youtube.com/embed/Tu7wOU7jRmA', 'https://youtu.be/Tu7wOU7jRmA', 38, '2019-12-30 06:19:45', '2019-12-30 06:19:45'),
(75, 'Pasar un punto de cartesianas a polares y viceversa 5', NULL, NULL, 'https://www.youtube.com/embed/ZIQRyWQqKz8', 'https://youtu.be/ZIQRyWQqKz8', 38, '2019-12-30 06:20:41', '2019-12-30 06:20:41'),
(76, 'Pasar un punto de cartesianas a polares y viceversa 6', NULL, NULL, 'https://www.youtube.com/embed/WTdjsBCocBs', 'https://youtu.be/WTdjsBCocBs', 38, '2019-12-30 06:23:02', '2019-12-30 06:23:02'),
(77, 'Pasar una ecuación de cartesianas a polares y viceversa 1', NULL, NULL, 'https://www.youtube.com/embed/njB4SjWo9fc', 'https://youtu.be/njB4SjWo9fc', 39, '2019-12-30 06:24:17', '2019-12-30 06:24:17'),
(78, 'Pasar una ecuación de cartesianas a polares y viceversa 2', NULL, NULL, 'https://www.youtube.com/embed/6TUZWmWG9Hc', 'https://youtu.be/6TUZWmWG9Hc', 39, '2019-12-30 06:24:42', '2019-12-30 06:24:42'),
(79, 'Pasar una ecuación de cartesianas a polares y viceversa 3', NULL, NULL, 'https://www.youtube.com/embed/1BkEcSA3VFc', 'https://youtu.be/1BkEcSA3VFc', 39, '2019-12-30 06:25:16', '2019-12-30 06:25:16'),
(80, 'Pasar una ecuación de cartesianas a polares y viceversa 4', NULL, NULL, 'https://www.youtube.com/embed/k-TRYu6L19g', 'https://youtu.be/k-TRYu6L19g', 39, '2019-12-30 06:25:44', '2019-12-30 06:25:44'),
(81, 'Pasar una ecuación de cartesianas a polares y viceversa 5', NULL, NULL, 'https://www.youtube.com/embed/bC5rwWg1gKs', 'https://youtu.be/bC5rwWg1gKs', 39, '2019-12-30 06:26:10', '2019-12-30 06:26:10'),
(82, 'Pasar una ecuación de cartesianas a polares y viceversa 6', NULL, NULL, 'https://www.youtube.com/embed/tavksDfCRxs', 'https://youtu.be/tavksDfCRxs', 39, '2019-12-30 06:27:18', '2019-12-30 06:27:18'),
(83, 'Simetría de una ecuación polar y su ecuación en forma cartesiana', NULL, NULL, 'https://www.youtube.com/embed/a2vj-lzxrXQ', 'https://youtu.be/a2vj-lzxrXQ', 39, '2019-12-30 06:35:49', '2019-12-30 06:35:49'),
(84, 'Gráfica de funciones Polares, Círculos, Caracoles, Rosas, Lemniscata y Rectas', NULL, NULL, 'https://www.youtube.com/embed/R3VcZrQ5uJo', 'https://youtu.be/R3VcZrQ5uJo', 41, '2019-12-30 06:38:30', '2019-12-30 06:38:30'),
(85, 'Gráfica en coordenadas polares: r=senθ', NULL, NULL, 'https://www.youtube.com/embed/6b0ZmWrEwME', 'https://youtu.be/6b0ZmWrEwME', 41, '2019-12-30 06:39:44', '2019-12-30 06:39:44'),
(86, 'Gráfica en coordenadas polares: r=2senθ', NULL, NULL, 'https://www.youtube.com/embed/F2VVKq6jhyY', 'https://youtu.be/F2VVKq6jhyY', 41, '2019-12-30 06:51:12', '2019-12-30 06:51:12'),
(87, 'Gráfica en polares y cartesianas: r=2cosθ', NULL, NULL, 'https://www.youtube.com/embed/kBTYWvct4is', 'https://youtu.be/kBTYWvct4is', 41, '2019-12-30 07:13:56', '2019-12-30 07:13:56'),
(88, 'Gráfica en polares y cartesianas: r=-2cosθ', NULL, NULL, 'https://www.youtube.com/embed/R0UDxDLyanw', 'https://youtu.be/R0UDxDLyanw', 41, '2019-12-30 10:14:56', '2019-12-30 10:14:56'),
(89, 'Gráfica en coordenadas polares: r=1-cosθ', NULL, NULL, 'https://www.youtube.com/embed/LtiPpsIVqJQ', 'https://youtu.be/LtiPpsIVqJQ', 41, '2019-12-30 10:15:40', '2019-12-30 10:15:40'),
(90, 'Gráfica en coordenadas polares: r=1+senθ', NULL, NULL, 'https://www.youtube.com/embed/rIzZk90kvRk', 'https://youtu.be/rIzZk90kvRk', 41, '2019-12-30 10:16:20', '2019-12-30 10:16:20'),
(91, 'Gráfica en coordenadas polares: r=1+cosθ', NULL, NULL, 'https://www.youtube.com/embed/-xke3zRWMaM', 'https://youtu.be/-xke3zRWMaM', 41, '2019-12-30 10:17:08', '2019-12-30 10:17:08'),
(92, 'Gráfica en coordenadas polares: r=1-sen2θ', NULL, NULL, 'https://www.youtube.com/embed/EDJr3dOviM4', 'https://youtu.be/EDJr3dOviM4', 41, '2019-12-30 10:19:36', '2019-12-30 10:19:36'),
(93, 'Gráfica en coordenadas polares: x=-3', NULL, NULL, 'https://www.youtube.com/embed/Tw3YuNRiHb0', 'https://youtu.be/Tw3YuNRiHb0', 41, '2019-12-30 10:20:46', '2019-12-30 10:20:46'),
(94, 'Calculo de área entre polares Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/TluhKC0o8Bg', 'https://youtu.be/TluhKC0o8Bg', 42, '2019-12-30 10:27:21', '2019-12-30 10:27:21'),
(95, 'Calculo de área entre polares Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/jEBZ1JyrEZg', 'https://youtu.be/jEBZ1JyrEZg', 42, '2019-12-30 10:28:20', '2019-12-30 10:28:20'),
(96, 'Calculo de área entre polares Ejercicio 3', NULL, NULL, 'https://www.youtube.com/embed/eHksWEM9LLs', 'https://youtu.be/eHksWEM9LLs', 42, '2019-12-30 10:30:13', '2019-12-30 10:30:13'),
(97, 'Calculo de área entre polares Ejercicio 4', NULL, NULL, 'https://www.youtube.com/embed/lQkVCre9hJg', 'https://youtu.be/lQkVCre9hJg', 42, '2019-12-30 10:31:06', '2019-12-30 10:31:06'),
(98, 'Calculo de área entre polares Ejercicio 5', NULL, NULL, 'https://www.youtube.com/embed/aKHrFjqEe6Q', 'https://youtu.be/aKHrFjqEe6Q', 42, '2019-12-30 10:32:18', '2019-12-30 10:32:18'),
(99, 'Calculo de área entre polares Ejercicio 6', NULL, NULL, 'https://www.youtube.com/embed/UoIM9VsE7RQ', 'https://youtu.be/UoIM9VsE7RQ', 42, '2019-12-30 10:32:58', '2019-12-30 10:32:58'),
(100, 'Calculo de área entre polares Ejercicio 7', NULL, NULL, 'https://www.youtube.com/embed/D3v3auFjvvM', 'https://youtu.be/D3v3auFjvvM', 42, '2019-12-30 10:33:48', '2019-12-30 10:33:48'),
(101, 'Calculo de área entre polares Ejercicio 8', NULL, NULL, 'https://www.youtube.com/embed/3Ay6YipqDNE', 'https://youtu.be/3Ay6YipqDNE', 42, '2019-12-30 10:34:32', '2019-12-30 10:34:32'),
(102, 'Área encerrada por el gráfico en polares: r=1-cosθ', NULL, NULL, 'https://www.youtube.com/embed/MfbMY9Ixy4E', 'https://youtu.be/MfbMY9Ixy4E', 42, '2019-12-30 10:35:51', '2019-12-30 10:35:51'),
(103, 'Área encerrada por el gráfico en polares: r=1+senθ', NULL, NULL, 'https://www.youtube.com/embed/TrplnAcJFoM', 'https://youtu.be/TrplnAcJFoM', 42, '2019-12-30 10:36:31', '2019-12-30 10:36:31'),
(104, 'Área encerrada por el gráfico en polares: r=2cosθ', NULL, NULL, 'https://www.youtube.com/embed/tqFbcwbyNIg', 'https://youtu.be/tqFbcwbyNIg', 42, '2019-12-30 10:37:17', '2019-12-30 10:37:17'),
(105, 'Área encerrada por el gráfico en polares: r=2senθ', NULL, NULL, 'https://www.youtube.com/embed/22bCMD-yC8A', 'https://youtu.be/22bCMD-yC8A', 42, '2019-12-30 10:38:18', '2019-12-30 10:38:18'),
(106, 'Área encerrada por el gráfico en polares: r=2+senθ', NULL, NULL, 'https://www.youtube.com/embed/KTPrQ9dFIkc', 'https://youtu.be/KTPrQ9dFIkc', 42, '2019-12-30 10:39:16', '2019-12-30 10:39:16'),
(107, 'Área encerrada por el gráfico en polares: r=cos2θ', NULL, NULL, 'https://www.youtube.com/embed/I-EcBPvWJ5I', 'https://youtu.be/I-EcBPvWJ5I', 42, '2019-12-30 10:40:11', '2019-12-30 10:40:11'),
(108, 'Área encerrada por el gráfico en polares: r=sen2θ', NULL, NULL, 'https://www.youtube.com/embed/i5WUO-oT_JQ', 'https://youtu.be/i5WUO-oT_JQ', 42, '2019-12-30 10:41:40', '2019-12-30 10:41:40'),
(109, 'Área encerrada por el gráfico en polares: r=sen3θ', NULL, NULL, 'https://www.youtube.com/embed/woD4FJksBg4', 'https://youtu.be/woD4FJksBg4', 42, '2019-12-30 10:42:20', '2019-12-30 10:42:20'),
(110, 'Sistema de coordenadas cartesianas', NULL, '1577813184MAT315-corrdenadasCartesianas.pdf', NULL, NULL, 19, '2019-12-31 22:26:24', '2019-12-31 22:26:24'),
(111, 'Sistema de coordenadas cilíndricas', NULL, '1577813214MAT315-corrdenadasCilindricas.pdf', NULL, NULL, 20, '2019-12-31 22:26:54', '2019-12-31 22:26:54'),
(112, 'Sistema de coordenadas esféricas', NULL, '1577813243MAT315-coordenadasEsfericas.pdf', NULL, NULL, 21, '2019-12-31 22:27:23', '2019-12-31 22:27:23'),
(113, 'Conversión de ecuaciones', NULL, '1577813273MAT315-conversionesEnSistemas.pdf', NULL, NULL, 22, '2019-12-31 22:27:53', '2019-12-31 22:27:53'),
(114, 'Puntos en tres dimensiones, con gráfica', NULL, NULL, 'https://www.youtube.com/embed/aevLlQfs9hY', 'https://youtu.be/aevLlQfs9hY', 19, '2019-12-31 22:31:37', '2019-12-31 22:31:37'),
(115, 'Coordenadas cilíndricas', NULL, NULL, 'https://www.youtube.com/embed/zJGS3ekkeKo', 'https://youtu.be/zJGS3ekkeKo', 20, '2019-12-31 22:33:24', '2019-12-31 22:33:24'),
(116, 'Coordenadas esféricas', NULL, NULL, 'https://www.youtube.com/embed/nx-ipu59jtU', 'https://youtu.be/nx-ipu59jtU', 21, '2019-12-31 22:34:08', '2019-12-31 22:34:08'),
(118, 'Coordenadas rectangulares a polares', NULL, NULL, 'https://www.youtube.com/embed/c2OPhPYnxbY', 'https://youtu.be/c2OPhPYnxbY', 22, '2019-12-31 22:49:50', '2019-12-31 22:49:50'),
(119, 'Coordenadas polares a rectangulares', NULL, NULL, 'https://www.youtube.com/embed/cSZZW6gDS0w', 'https://youtu.be/cSZZW6gDS0w', 22, '2019-12-31 22:50:39', '2019-12-31 22:50:39'),
(120, 'Coordenadas cilíndricas a rectangulares', NULL, NULL, 'https://www.youtube.com/embed/7gzePeOvzG4', 'https://youtu.be/7gzePeOvzG4', 22, '2019-12-31 22:54:36', '2019-12-31 22:54:36'),
(121, 'Coordenadas rectangulares a cilíndricas', NULL, NULL, 'https://www.youtube.com/embed/XkKXfu3PDw8', 'https://youtu.be/XkKXfu3PDw8', 22, '2019-12-31 22:55:15', '2019-12-31 22:55:15'),
(122, 'Coordenadas	esféricas a rectangulares', NULL, NULL, 'https://www.youtube.com/embed/yGMjw8C9z-Y', 'https://youtu.be/yGMjw8C9z-Y', 22, '2019-12-31 23:02:24', '2019-12-31 23:02:24'),
(123, 'Coordenadas rectangulares a esféricas', NULL, NULL, 'https://www.youtube.com/embed/vOCrjJktY0k', 'https://youtu.be/vOCrjJktY0k', 22, '2019-12-31 23:03:06', '2019-12-31 23:03:06'),
(124, 'Rectas en tres dimensiones (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/_cXAU1RSKDA', 'https://youtu.be/_cXAU1RSKDA', 23, '2019-12-31 23:13:43', '2019-12-31 23:13:43'),
(125, 'Planos en tres dimensiones (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/NzVDHIu5eiI', 'https://youtu.be/NzVDHIu5eiI', 23, '2019-12-31 23:14:31', '2019-12-31 23:14:31'),
(126, 'Superficies cilindricas (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/xe_LoTWS-iE', 'https://youtu.be/xe_LoTWS-iE', 24, '2019-12-31 23:15:29', '2019-12-31 23:15:29'),
(127, 'Hiperboloide de una hoja (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/AbEOlcRxNoU', 'https://youtu.be/AbEOlcRxNoU', 24, '2019-12-31 23:17:27', '2019-12-31 23:17:27'),
(128, 'Paraboloide de una hoja (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/y3eiqwY2wPs', 'https://youtu.be/y3eiqwY2wPs', 24, '2019-12-31 23:21:31', '2019-12-31 23:21:31'),
(129, 'Solidos (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/ZfInFuMSw6I', 'https://youtu.be/ZfInFuMSw6I', 24, '2019-12-31 23:22:10', '2019-12-31 23:22:10'),
(130, 'Rectas y planos', NULL, '1577816815MAT315-Rectasyplanos.pdf', NULL, NULL, 23, '2019-12-31 23:26:55', '2019-12-31 23:26:55'),
(131, 'Superficies', NULL, '1577816919MAT315-superficies.pdf', NULL, NULL, 24, '2019-12-31 23:28:39', '2019-12-31 23:28:39'),
(132, 'Funciones de dos variables', NULL, '1577817705MAT315-Funcionesdedosvariables.pdf', NULL, NULL, 25, '2019-12-31 23:41:45', '2019-12-31 23:41:45'),
(133, 'Dominio en funciones de dos o más variables', NULL, NULL, 'https://www.youtube.com/embed/wd56qQZAhx0', 'https://youtu.be/wd56qQZAhx0', 25, '2019-12-31 23:43:11', '2019-12-31 23:43:11'),
(134, 'Dominio, rango y gráfica de una función en varias variables', NULL, NULL, 'https://www.youtube.com/embed/b_Affw5ArMY', 'https://youtu.be/b_Affw5ArMY', 25, '2019-12-31 23:45:12', '2019-12-31 23:45:12'),
(135, 'Derivadas parciales', NULL, '1577818205MAT315-derivadasParciales.pdf', NULL, NULL, 26, '2019-12-31 23:50:05', '2019-12-31 23:50:05'),
(136, 'Derivadas parciales, ejemplos resueltos', NULL, NULL, 'https://www.youtube.com/embed/XKgfHOaXhqs', 'https://youtu.be/XKgfHOaXhqs', 26, '2019-12-31 23:53:40', '2019-12-31 23:53:40'),
(137, 'Derivadas parciales, ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/tb00qQBYm48', 'https://youtu.be/tb00qQBYm48', 26, '2019-12-31 23:55:27', '2019-12-31 23:55:27'),
(138, 'Derivadas parciales, ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/Onx678fKpvs', 'https://youtu.be/Onx678fKpvs', 26, '2019-12-31 23:56:31', '2019-12-31 23:56:31'),
(139, 'Derivadas parciales de una función - Introducción', NULL, NULL, 'https://www.youtube.com/embed/zxEXPpMVeRk', 'https://youtu.be/zxEXPpMVeRk', 26, '2019-12-31 23:57:49', '2019-12-31 23:57:49'),
(140, 'Regla de la cadena', NULL, '1577819019MAT315-reglaCadena.pdf', NULL, NULL, 28, '2020-01-01 00:03:39', '2020-01-01 00:03:39'),
(141, 'Calculo de derivadas parciales - regla de la cadena', NULL, NULL, 'https://www.youtube.com/embed/WiGaKy_Aaeg', 'https://youtu.be/WiGaKy_Aaeg', 28, '2020-01-01 00:06:49', '2020-01-01 00:06:49'),
(142, 'Derivadas parciales - regla de la cadena Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/JSBZmMBN3wU', 'https://youtu.be/JSBZmMBN3wU', 28, '2020-01-01 00:10:15', '2020-01-01 00:10:15'),
(143, 'Derivada direccional y gradiente', NULL, '1577819615MAT315-Derivadadireccionalygradiente.pdf', NULL, NULL, 29, '2020-01-01 00:13:35', '2020-01-01 00:13:35'),
(144, 'Vector direccional y gradiente ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/9HcJqB-bdE8', 'https://youtu.be/9HcJqB-bdE8', 29, '2020-01-01 00:15:31', '2020-01-01 00:15:31'),
(145, 'Vector direccional y gradiente ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/Vnbi1S7x6Qg', 'https://youtu.be/Vnbi1S7x6Qg', 29, '2020-01-01 00:15:49', '2020-01-01 00:15:49'),
(146, 'Extremos de funciones de dos variables', NULL, '1577820165MAT315-ExtremosDeFuncionesDeDosVariables.pdf', NULL, NULL, 30, '2020-01-01 00:22:45', '2020-01-01 00:22:45'),
(147, 'Derivadas parciales (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/2jkXK7kdUwI', 'https://youtu.be/2jkXK7kdUwI', 26, '2020-01-02 05:39:36', '2020-01-02 05:39:36'),
(148, 'Puntos críticos en una función de dos variables', NULL, NULL, 'https://www.youtube.com/embed/dVBWSsob7h8', 'https://youtu.be/dVBWSsob7h8', 30, '2020-01-02 05:41:54', '2020-01-02 05:41:54'),
(149, 'Integrales dobles', 'Integrales dobles en coordenadas rectangulares', '1578072081MAT315-IntegralesDobles.pdf', NULL, NULL, 32, '2020-01-03 22:21:21', '2020-01-03 22:21:21'),
(150, 'Integral doble - ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/eu3CNA47KX4', 'https://youtu.be/eu3CNA47KX4', 32, '2020-01-03 22:23:27', '2020-01-03 22:23:27'),
(151, 'Integral doble - ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/B7q-096CrK0', 'https://youtu.be/B7q-096CrK0', 32, '2020-01-03 22:24:32', '2020-01-03 22:24:32'),
(152, 'Integral doble - ejercicio 3', NULL, NULL, 'https://www.youtube.com/embed/BjalS0fvxL0', 'https://youtu.be/BjalS0fvxL0', 32, '2020-01-03 22:26:10', '2020-01-03 22:26:10'),
(153, 'Integral doble - ejercicio 4', NULL, NULL, 'https://www.youtube.com/embed/F3jfy0OY_E4', 'https://youtu.be/F3jfy0OY_E4', 32, '2020-01-03 22:26:55', '2020-01-03 22:26:55'),
(154, 'Integral doble - ejercicio 5', NULL, NULL, 'https://www.youtube.com/embed/AFcrR7DWVbY', 'https://youtu.be/AFcrR7DWVbY', 32, '2020-01-03 22:27:42', '2020-01-03 22:27:42'),
(155, 'Integral doble - ejercicio 6', NULL, NULL, 'https://www.youtube.com/embed/DOT0AxTy0jc', 'https://youtu.be/DOT0AxTy0jc', 32, '2020-01-03 22:28:30', '2020-01-03 22:28:30'),
(156, 'Integral doble - ejercicio 7', NULL, NULL, 'https://www.youtube.com/embed/34mdJudRBQA', 'https://youtu.be/34mdJudRBQA', 32, '2020-01-03 22:29:53', '2020-01-03 22:29:53'),
(157, 'Integral doble - ejercicio 8', NULL, NULL, 'https://www.youtube.com/embed/T4vNOJudtS4', 'https://youtu.be/T4vNOJudtS4', 32, '2020-01-03 22:30:23', '2020-01-03 22:30:23'),
(158, 'Teorema de Fubini', NULL, '1578073091MAT315-teoremaDeFubini.pdf', NULL, NULL, 32, '2020-01-03 22:38:11', '2020-01-03 22:38:11'),
(159, 'Integral doble con cambio en el orden de integración', NULL, NULL, 'https://www.youtube.com/embed/k925t7nx0aM', 'https://youtu.be/k925t7nx0aM', 32, '2020-01-03 22:51:58', '2020-01-03 22:51:58'),
(160, 'Integrales dobles en coordenadas polares', NULL, '1578074088MAT315-IntegralesDoblesCoordenadasPolares.pdf', NULL, NULL, 33, '2020-01-03 22:54:48', '2020-01-03 22:54:48'),
(161, 'Volumen con una integral doble en coordenadas polares', NULL, NULL, 'https://www.youtube.com/embed/xh2xtYfnVTg', 'https://youtu.be/xh2xtYfnVTg', 33, '2020-01-03 22:56:52', '2020-01-03 22:56:52'),
(162, 'Integrales dobles en coordenadas polares', NULL, NULL, 'https://www.youtube.com/embed/2hR5XKvEwrU', 'https://youtu.be/2hR5XKvEwrU', 33, '2020-01-03 22:57:48', '2020-01-03 22:57:48'),
(163, 'Integrales triples y aplicaciones', NULL, '1578074448MAT315-IntegralesTriplesYaplicaciones.pdf', NULL, NULL, 34, '2020-01-03 23:00:48', '2020-01-03 23:00:48'),
(164, 'Integrales triples', NULL, NULL, 'https://www.youtube.com/embed/k4_ecaEFOZg', 'https://youtu.be/k4_ecaEFOZg', 34, '2020-01-03 23:02:15', '2020-01-03 23:02:15'),
(165, 'Integrales triples - Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/ST4CBQXgA8Q', 'https://youtu.be/ST4CBQXgA8Q', 34, '2020-01-03 23:03:17', '2020-01-03 23:03:17'),
(166, 'Integrales triples - Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/XxrmK4Ezu14', 'https://youtu.be/XxrmK4Ezu14', 34, '2020-01-03 23:03:36', '2020-01-03 23:03:36'),
(167, 'calculo de volumen y coordenadas de un centroide', NULL, NULL, 'https://www.youtube.com/embed/2itIFTg-BfA', 'https://youtu.be/2itIFTg-BfA', 34, '2020-01-03 23:13:37', '2020-01-03 23:13:37'),
(168, 'calculo de volumen - ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/ABN8YQ_w6hc', 'https://youtu.be/ABN8YQ_w6hc', 34, '2020-01-03 23:14:36', '2020-01-03 23:14:36'),
(169, 'calculo de volumen - ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/eaktrjTlS58', 'https://youtu.be/eaktrjTlS58', 34, '2020-01-03 23:15:09', '2020-01-03 23:15:09'),
(170, 'calculo de volumen - ejercicio 3', NULL, NULL, 'https://www.youtube.com/embed/xMB6MdfTQ7Y', 'https://youtu.be/xMB6MdfTQ7Y', 34, '2020-01-03 23:15:38', '2020-01-03 23:15:38'),
(171, 'calculo de volumen - ejercicio 4', NULL, NULL, 'https://www.youtube.com/embed/wG8oF5eMqfI', 'https://youtu.be/wG8oF5eMqfI', 34, '2020-01-03 23:16:12', '2020-01-03 23:16:12'),
(172, 'Integrales triples en coordenadas cilíndricas y esféricas', NULL, '1578075632MAT315-IntegralesTriplesCilindricasEsfericas.pdf', NULL, NULL, 35, '2020-01-03 23:20:32', '2020-01-03 23:20:32'),
(173, 'Integrales triples: Coordenadas cilíndricas', NULL, NULL, 'https://www.youtube.com/embed/sOEfIeTAbqQ', 'https://youtu.be/sOEfIeTAbqQ', 35, '2020-01-03 23:22:35', '2020-01-03 23:22:35'),
(174, 'Integrales triples: Coordenadas esfericas', NULL, NULL, 'https://www.youtube.com/embed/DZ82BzA-_a0', 'https://youtu.be/DZ82BzA-_a0', 35, '2020-01-03 23:23:17', '2020-01-03 23:23:17'),
(175, 'Integrales triples: Coordenadas cilíndricas (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/z5_fCCIHZBg', 'https://youtu.be/z5_fCCIHZBg', 35, '2020-01-03 23:25:00', '2020-01-03 23:25:00'),
(176, 'Unidad 1 - Matrices (Oficial UES)', NULL, '1578076548MAT315-Unidad1-Matrices2019.pdf', NULL, NULL, 36, '2020-01-03 23:35:48', '2020-01-03 23:35:48'),
(177, 'Unidad 2 - Coordenadas Polares (Oficial UES)', NULL, '1578076773MAT315-unidad2-coordenadasPolares2019.pdf', NULL, NULL, 43, '2020-01-03 23:39:33', '2020-01-03 23:39:33'),
(178, 'Unidad 4 - Geometría en el espacio (Oficial UES)', NULL, '1578076964MAT315-unidad3-geometriaEnElEspacio2019.pdf', NULL, NULL, 45, '2020-01-03 23:42:44', '2020-01-03 23:42:44'),
(179, 'Unidad 5 - Funciones de varias variables cálculo diferencial (Oficial UES)', NULL, '1578077539MAT315-unidad5-calculoDiferencialVariasVariables2019.pdf', NULL, NULL, 46, '2020-01-03 23:52:19', '2020-01-03 23:52:19'),
(180, 'Unidad 6 - Funciones de varias variables cálculo integral (Oficial UES)', NULL, '1578077636MAT315-unidad6-calculoIntegralVariasVariables2019.pdf', NULL, NULL, 47, '2020-01-03 23:53:56', '2020-01-03 23:53:56'),
(181, 'Guía discusión 1 - Matrices y determinantes 2019', NULL, '1578078371MAT315-guiaDiscusion1-matrices.pdf', NULL, NULL, 36, '2020-01-04 00:06:11', '2020-01-04 00:06:11'),
(182, 'Guía discusión 2 - Coordenadas polares 2019', NULL, '1578078514MAT315-guiaDiscusion2-coordenadasPolares2019.pdf', NULL, NULL, 43, '2020-01-04 00:08:34', '2020-01-04 00:08:34'),
(183, 'Guía discusión 3 - Geometría en el espacio 2019', NULL, '1578078709MAT315-guiaDiscusion3-geometriaEnElEspacio2019.pdf', NULL, NULL, 45, '2020-01-04 00:11:49', '2020-01-04 00:11:49'),
(184, 'Guía discusión 4 - Cálculo diferencial de varias variables 2019', NULL, '1578078840MAT315-guiaDiscusion4-calculoDiferencialVariasVariables2019.pdf', NULL, NULL, 46, '2020-01-04 00:14:00', '2020-01-04 00:14:00'),
(185, 'Guía discusión 5 - Cálculo integral de varias variables 2019', NULL, '1578078935MAT315-guiaDiscusion5-calculoIntegralVariasVariables2019.pdf', NULL, NULL, 47, '2020-01-04 00:15:35', '2020-01-04 00:15:35'),
(186, 'Fluidos, densidad y peso especifico (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/loP6FCfxs_g', 'https://youtu.be/loP6FCfxs_g', 61, '2020-01-04 22:32:11', '2020-01-04 22:32:11'),
(187, 'Ecuación fundamental de la hidrostática', NULL, NULL, 'https://www.youtube.com/embed/M5RWKv5up0A', 'https://youtu.be/M5RWKv5up0A', 61, '2020-01-04 22:33:15', '2020-01-04 22:33:15'),
(188, 'Dos Problemas, ventana y campana de buceo', NULL, NULL, 'https://www.youtube.com/embed/iDWqI2nuFVg', 'https://youtu.be/iDWqI2nuFVg', 61, '2020-01-04 22:54:29', '2020-01-04 22:54:29'),
(190, '¿Qué es un fluido?', NULL, NULL, 'https://www.youtube.com/embed/hK8x1IH7Vco', 'https://youtu.be/hK8x1IH7Vco', 61, '2020-01-04 22:56:58', '2020-01-04 22:56:58'),
(191, 'Densidad', NULL, NULL, 'https://www.youtube.com/embed/Du1WzeRle70', 'https://youtu.be/Du1WzeRle70', 61, '2020-01-04 22:58:36', '2020-01-04 22:58:36'),
(192, 'Densidad - Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/7PXvRy2DGtM', 'https://youtu.be/7PXvRy2DGtM', 61, '2020-01-04 22:59:00', '2020-01-04 22:59:00'),
(193, 'Densidad - Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/WtuooxpbqXE', 'https://youtu.be/WtuooxpbqXE', 61, '2020-01-04 22:59:21', '2020-01-04 22:59:21'),
(194, 'Densidad - Ejercicio 3', NULL, NULL, 'https://www.youtube.com/embed/ew8VVTvEM3s', 'https://youtu.be/ew8VVTvEM3s', 61, '2020-01-04 22:59:44', '2020-01-04 22:59:44'),
(195, 'Introducción a densidad, peso específico y densidad relativa', NULL, NULL, 'https://www.youtube.com/embed/EPFF32baQz4', 'https://youtu.be/EPFF32baQz4', 61, '2020-01-04 23:01:36', '2020-01-04 23:01:36'),
(196, 'Densidad relativa - Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/AluL-GgFrO8', 'https://youtu.be/AluL-GgFrO8', 61, '2020-01-04 23:03:30', '2020-01-04 23:03:30'),
(197, 'Densidad relativa - Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/_d_TKB8WV2I', 'https://youtu.be/_d_TKB8WV2I', 61, '2020-01-04 23:03:48', '2020-01-04 23:03:48'),
(198, 'Peso específico - Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/8rRVafU4FOI', 'https://youtu.be/8rRVafU4FOI', 61, '2020-01-04 23:04:29', '2020-01-04 23:04:29'),
(199, 'Peso específico - Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/rehVkMUWubc', 'https://youtu.be/rehVkMUWubc', 61, '2020-01-04 23:04:49', '2020-01-04 23:04:49'),
(200, 'Estados de la materia', NULL, NULL, 'https://www.youtube.com/embed/XpybBOYeL8s', 'https://youtu.be/XpybBOYeL8s', 61, '2020-01-04 23:06:18', '2020-01-04 23:06:18'),
(201, 'Presión (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/UQE_W0KRceo', 'https://youtu.be/UQE_W0KRceo', 62, '2020-01-04 23:08:34', '2020-01-04 23:08:34'),
(202, 'Concepto de presión', NULL, NULL, 'https://www.youtube.com/embed/_w8kHj1xU_A', 'https://youtu.be/_w8kHj1xU_A', 62, '2020-01-04 23:09:50', '2020-01-04 23:09:50'),
(203, 'Presión - Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/6aLVkvTb3UM', 'https://youtu.be/6aLVkvTb3UM', 62, '2020-01-04 23:10:37', '2020-01-04 23:10:37'),
(204, 'Presión - Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/sqVcEQffK_s', 'https://youtu.be/sqVcEQffK_s', 62, '2020-01-04 23:11:02', '2020-01-04 23:11:02'),
(205, 'Presión - Ejercicio 3', NULL, NULL, 'https://www.youtube.com/embed/uI0TM147jD0', 'https://youtu.be/uI0TM147jD0', 62, '2020-01-04 23:13:27', '2020-01-04 23:13:27'),
(206, 'Presión manométrica y absoluta ejemplo 1', NULL, NULL, 'https://www.youtube.com/embed/iWVHIqIMNLo', 'https://youtu.be/iWVHIqIMNLo', 62, '2020-01-04 23:17:30', '2020-01-04 23:17:30'),
(208, 'Presión manométrica y absoluta ejemplo 2', NULL, NULL, 'https://www.youtube.com/embed/7MTB1iQOpw8', 'https://youtu.be/7MTB1iQOpw8', 62, '2020-01-04 23:18:14', '2020-01-04 23:18:14'),
(209, 'Presión manométrica y absoluta ejemplo 3', NULL, NULL, 'https://www.youtube.com/embed/rwwL2wGvwpw', 'https://youtu.be/rwwL2wGvwpw', 62, '2020-01-04 23:18:43', '2020-01-04 23:18:43'),
(210, 'Presión hidrostática', NULL, NULL, 'https://www.youtube.com/embed/M0cb5T92qWI', 'https://youtu.be/M0cb5T92qWI', 62, '2020-01-04 23:20:19', '2020-01-04 23:20:19'),
(211, 'Presión hidrostática ejemplo 1', NULL, NULL, 'https://www.youtube.com/embed/IfjPkQPxWMY', 'https://youtu.be/IfjPkQPxWMY', 62, '2020-01-04 23:20:45', '2020-01-04 23:20:45'),
(212, 'Presión hidrostática ejemplo 2', NULL, NULL, 'https://www.youtube.com/embed/kIYwRzwPLCc', 'https://youtu.be/kIYwRzwPLCc', 62, '2020-01-04 23:21:06', '2020-01-04 23:21:06'),
(213, 'Presión hidrostática ejemplo 3', NULL, NULL, 'https://www.youtube.com/embed/uQ6Jz5B3kbs', 'https://youtu.be/uQ6Jz5B3kbs', 62, '2020-01-04 23:21:32', '2020-01-04 23:21:32'),
(214, 'Presión hidrostática ejemplo 4', NULL, NULL, 'https://www.youtube.com/embed/1wCEmTgWQLw', 'https://youtu.be/1wCEmTgWQLw', 62, '2020-01-04 23:21:58', '2020-01-04 23:21:58'),
(215, 'Problema de estática de fluidos - presiones manométricas', NULL, NULL, 'https://www.youtube.com/embed/_qvSFWbNhPk', 'https://youtu.be/_qvSFWbNhPk', 62, '2020-01-04 23:22:33', '2020-01-04 23:22:33'),
(216, 'Problema de estática de fluidos - cálculo de la diferencia de presiones', NULL, NULL, 'https://www.youtube.com/embed/06m-Fuat1xk', 'https://youtu.be/06m-Fuat1xk', 62, '2020-01-04 23:23:07', '2020-01-04 23:23:07'),
(217, 'Problema de estática de fluidos - Presión 1', NULL, NULL, 'https://www.youtube.com/embed/YFlBar_srTc', 'https://youtu.be/YFlBar_srTc', 62, '2020-01-04 23:24:09', '2020-01-04 23:24:09'),
(218, 'Problema de estática de fluidos - Fuerza', NULL, NULL, 'https://www.youtube.com/embed/85UEiUzTtn4', 'https://youtu.be/85UEiUzTtn4', 62, '2020-01-04 23:25:08', '2020-01-04 23:25:08'),
(219, 'Problema de estática de fluidos - manómetro diferencial', NULL, NULL, 'https://www.youtube.com/embed/Y2NCiYeWubU', 'https://youtu.be/Y2NCiYeWubU', 62, '2020-01-04 23:26:20', '2020-01-04 23:26:20'),
(220, 'Problema de estática de fluidos - presión manométrica', 'Problema de estática de fluidos - presión manométrica', NULL, 'https://www.youtube.com/embed/jiUeQbQC8iE', 'https://youtu.be/jiUeQbQC8iE', 62, '2020-01-04 23:26:57', '2020-01-04 23:26:57'),
(221, 'Problema de estática de fluidos - presión atmosférica', NULL, NULL, 'https://www.youtube.com/embed/9qfh5pFYMCc', 'https://youtu.be/9qfh5pFYMCc', 62, '2020-01-04 23:28:03', '2020-01-04 23:28:03'),
(222, 'Principio de Pascal y Arquimides (Video UES oficial)', NULL, NULL, 'https://www.youtube.com/embed/vFFRv1g8jwQ', 'https://youtu.be/vFFRv1g8jwQ', 63, '2020-01-04 23:31:54', '2020-01-04 23:31:54'),
(223, 'Principio de Pascal', NULL, NULL, 'https://www.youtube.com/embed/8-iodlv-mv8', 'https://youtu.be/8-iodlv-mv8', 63, '2020-01-04 23:32:57', '2020-01-04 23:32:57'),
(224, 'Principio de Pascal - Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/bNMJVUd8HaY', 'https://youtu.be/bNMJVUd8HaY', 63, '2020-01-04 23:33:32', '2020-01-04 23:33:32'),
(225, 'Principio de Pascal - Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/9CnWQBZjbBc', 'https://youtu.be/9CnWQBZjbBc', 63, '2020-01-04 23:33:53', '2020-01-04 23:33:53'),
(227, 'Prensa hidráulica (Principio de Pascal) Video 1', NULL, NULL, 'https://www.youtube.com/embed/5Z8Q8grG81U', 'https://youtu.be/5Z8Q8grG81U', 63, '2020-01-04 23:38:22', '2020-01-04 23:38:22'),
(228, 'Prensa hidráulica (Principio de Pascal) Video 2', NULL, NULL, 'https://www.youtube.com/embed/ElAsxofJJb4', 'https://youtu.be/ElAsxofJJb4', 63, '2020-01-04 23:38:46', '2020-01-04 23:38:46'),
(229, 'Problema - Principio de Pascal', NULL, NULL, 'https://www.youtube.com/embed/cdlo2e34nIY', 'https://youtu.be/cdlo2e34nIY', 63, '2020-01-04 23:39:49', '2020-01-04 23:39:49'),
(230, 'Principio de Arquimedes', NULL, NULL, 'https://www.youtube.com/embed/OHwpAwYLYqE', 'https://youtu.be/OHwpAwYLYqE', 64, '2020-01-04 23:40:33', '2020-01-04 23:40:33'),
(231, 'Principio de Arquimedes - ejercicio 1', NULL, NULL, 'https://youtu.be/Mozv_nQqAeA', 'https://www.youtube.com/embed/Mozv_nQqAeA', 64, '2020-01-04 23:41:47', '2020-01-04 23:41:47'),
(232, 'Principio de Arquimedes - ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/cae__ydEShc', 'https://youtu.be/cae__ydEShc', 64, '2020-01-04 23:42:04', '2020-01-04 23:42:04'),
(233, 'Principio de Arquimedes - ejercicio 3', NULL, NULL, 'https://www.youtube.com/embed/oyWE8qutgmo', 'https://youtu.be/oyWE8qutgmo', 64, '2020-01-04 23:42:46', '2020-01-04 23:42:46'),
(234, 'Principio de Arquimedes - ejercicio 4', NULL, NULL, 'https://www.youtube.com/embed/scO9JARtW4s', 'https://youtu.be/scO9JARtW4s', 64, '2020-01-04 23:44:33', '2020-01-04 23:44:33'),
(235, 'Principio de Arquimedes - ejercicio 5', NULL, NULL, 'https://www.youtube.com/embed/-TdyQjiOAII', 'https://youtu.be/-TdyQjiOAII', 64, '2020-01-04 23:45:06', '2020-01-04 23:45:06');
INSERT INTO `contenidos` (`id`, `titulo`, `descripcion`, `pdf`, `video`, `url`, `temario_id`, `created_at`, `updated_at`) VALUES
(236, 'Problema - Principio de Arquímedes y Empuje en un globo aerostático', NULL, NULL, 'https://www.youtube.com/embed/Vk1kTPsywkY', 'https://youtu.be/Vk1kTPsywkY', 64, '2020-01-04 23:46:08', '2020-01-04 23:46:08'),
(237, 'Problema - Principio de Arquímedes y fuerza de empuje', NULL, NULL, 'https://www.youtube.com/embed/8o5g2lcTZ88', 'https://youtu.be/8o5g2lcTZ88', 64, '2020-01-04 23:46:48', '2020-01-04 23:46:48'),
(238, 'Presión y densidad', NULL, '1578163808FIR215-PresionDensidad.pdf', NULL, NULL, 62, '2020-01-04 23:50:08', '2020-01-04 23:50:08'),
(239, 'Estática de fluidos', NULL, '1578164019FIR215-estaticaFluidos.pdf', NULL, NULL, 66, '2020-01-04 23:53:39', '2020-01-04 23:53:39'),
(240, 'Estática de fluidos	con ejemplos', NULL, '1578164095FIR215-estaticaFluidosConEjemplos.pdf', NULL, NULL, 66, '2020-01-04 23:54:55', '2020-01-04 23:54:55'),
(241, 'Clase 1: Ecuación fundamental de la hidrostática', 'Se introduce a la estática de fluidos, se comienza definiendo que es un fluido , conceptos básicos como densidad, presión, se define la presión hidrostática, luego se deduce la ecuación fundamental de la hidrostática, para terminar definiendo la presión absoluta y la presión manométrica.', NULL, 'https://youtu.be/M5RWKv5up0A', 'https://www.youtube.com/embed/M5RWKv5up0A', 65, '2020-01-04 23:57:30', '2020-01-04 23:57:30'),
(242, 'Clase 2: Dos Problemas, ventana y campana de buceo.', 'Una ventana de oficina experimenta una fuerza neta debido a la diferencia de presión, se pide encontrar esta fuerza neta, luego se tiene una campana de buceo que se sumerge en el mar cierta profundidad y se pide encontrar la fuerza neta sobre la ventanilla de observación.', NULL, 'https://www.youtube.com/embed/iDWqI2nuFVg', 'https://youtu.be/iDWqI2nuFVg', 65, '2020-01-04 23:57:59', '2020-01-04 23:57:59'),
(243, 'Clase 3: Problema 3, caja al vacío, hemisferios de Magdeburgo.', 'El problema trata sobre una caja bien cerrada, a la que se le hace en su interior un vacío parcial, se conoce la fuerza necesaria para abrir la caja y se pregunta cual es la presión adentro, luego se realiza una practica demostrativa con los hemisferios de Magdeburgo.', NULL, 'https://www.youtube.com/embed/uI0TM147jD0', 'https://youtu.be/uI0TM147jD0', 65, '2020-01-04 23:58:33', '2020-01-04 23:58:33'),
(244, 'Clase 4: Principio de Pascal', 'Se presenta por medio de la ecuación fundamental de la hidrostática como se describe el principio de Pascal, se describe lo que es un elevador o prensa hidraulica, y se termina formulando el principio de Pascal.', NULL, 'https://www.youtube.com/embed/iWQEh9T0rSk', 'https://youtu.be/iWQEh9T0rSk', 65, '2020-01-04 23:59:11', '2020-01-04 23:59:11'),
(245, 'Clase 5: Principio de Arquímedes.', 'En esta clase se describe el principio de Arquímedes por medio de una práctica demostrativa, haciendo énfasis en la fuerza de empuje y su medida,  para terminar formulando el Principio de Arquímedes.', NULL, 'https://www.youtube.com/embed/z14q47RHiMo', 'https://youtu.be/z14q47RHiMo', 65, '2020-01-04 23:59:33', '2020-01-04 23:59:33'),
(246, 'Clase 6 : Dos problemas; esfera flotando y bloque que se hunde.', 'Se presentan dos problemas uno es de una esfera que flota a la mitad de su volumen sumergida en agua, la esfera es hueca se conoce el radio exterior y se pide encontrar el radio interior, luego se tiene un bloque de madera que se coloca en un recipiente que contiene agua y petroleo el bloque se hunde en el petroleo para luego flotar en el agua, se pide encontrar lo que se ha sumergido en el agua.', NULL, 'https://www.youtube.com/embed/kWsHcCWHFiA', 'https://youtu.be/kWsHcCWHFiA', 65, '2020-01-05 00:00:13', '2020-01-05 00:00:13'),
(247, 'Clase 7: Bloque bajo tensión y niños en una balsa.', 'Se realizan dos problemas donde un bloque esta sumergido en agua y cuelga de una cuerda se pide encontrar la tensión de la cuerda y mas....luego tres niños desean armar una balsa con troncos de madera y la pregunta es cuantos troncos se necesitan para que estén al nivel del agua.', NULL, 'https://www.youtube.com/embed/dPINbGr1pEI', 'https://youtu.be/dPINbGr1pEI', 65, '2020-01-05 00:00:49', '2020-01-05 00:00:49'),
(248, 'Clase 8: Bloque sumergido se carga con plomo.', 'En este problema se tiene un bloque cúbico de madera que se coloca en agua y se sumerge un cuarto de su arista, se pide encontrar su densidad, luego se le coloca una masa de plomo en la parte superior y se hunde tres cuartos de su arista se pide encontrar la masa de plomo, a continuación se coloca otra masa de plomo en la parte inferior del cubo para que se sumerja también tres cuartos nos piden encontrar el valor de esta masa de plomo.', NULL, 'https://www.youtube.com/embed/x3npGoubrAk', 'https://youtu.be/x3npGoubrAk', 65, '2020-01-05 00:01:19', '2020-01-05 00:01:19'),
(249, 'Clase 9: Problema; Barra sumergida y atada a una cuerda', 'En este problema se tiene un barra sumergida en agua en un depósito, el extremo de la barra sumergida se le ata una cuerda la cual se ancla al fondo del depósito, si la barra esta sumergida tres cuartos de su longitud, nos piden encontrar la tensión de la cuerda y la densidad de la barra.', NULL, 'https://www.youtube.com/embed/zgZH4FBK9nA', 'https://youtu.be/zgZH4FBK9nA', 65, '2020-01-05 00:01:51', '2020-01-05 00:01:51'),
(250, 'Guía discusión 1 - Estática de los fluidos 2017', 'Guía de discusión del año 2017', '1578176627FIR215-DISCUSIÓN1-ESTÁTICA-DE-LOS-FLUIDOS2017.pdf', NULL, NULL, 66, '2020-01-05 03:23:47', '2020-01-05 03:23:47'),
(251, 'Conceptos generales de fluidos parte 1 (Vídeo oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/6MQs9OvEsnc', 'https://youtu.be/6MQs9OvEsnc', 67, '2020-01-05 03:30:41', '2020-01-05 03:30:41'),
(252, 'Conceptos generales de fluidos parte 2 (Vídeo oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/gt_rWZ7amCs', 'https://youtu.be/gt_rWZ7amCs', 67, '2020-01-05 03:31:09', '2020-01-05 03:31:09'),
(253, 'Ecuación de Continuidad y Ley de Caudal', NULL, NULL, 'https://www.youtube.com/embed/RTwrgIxFKS8', 'https://youtu.be/RTwrgIxFKS8', 67, '2020-01-05 03:35:28', '2020-01-05 03:35:28'),
(254, 'Flujo Másico - Volumétrico', NULL, NULL, 'https://www.youtube.com/embed/gpSDD7bYGI4', 'https://youtu.be/gpSDD7bYGI4', 67, '2020-01-05 03:47:25', '2020-01-05 03:47:25'),
(255, 'Caudal', 'Fórmula matemática de caudal y la aplicación práctica en problemas.', NULL, 'https://www.youtube.com/embed/ROAL9GlIWoQ', 'https://youtu.be/ROAL9GlIWoQ', 67, '2020-01-05 03:49:17', '2020-01-05 03:49:17'),
(256, 'Conservación de la energía en los fluidos  y Bernoulli parte 1 ( Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/Rzo-G-DFBN8', 'https://youtu.be/Rzo-G-DFBN8', 68, '2020-01-05 03:52:28', '2020-01-05 03:52:28'),
(257, 'Conservación de la energía en los fluidos y Bernoulli parte 2 ( Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/BkUpR4Bmgp8', 'https://youtu.be/BkUpR4Bmgp8', 68, '2020-01-05 03:52:50', '2020-01-05 03:52:50'),
(258, 'Ecuación Bernoulli', NULL, NULL, 'https://www.youtube.com/embed/uhYmkCCaxds', 'https://youtu.be/uhYmkCCaxds', 68, '2020-01-05 03:53:45', '2020-01-05 03:53:45'),
(259, 'Ejercicio Aplicativo de la Ecuación Bernoulli', NULL, NULL, 'https://www.youtube.com/embed/tnyJDAjfv0U', 'https://youtu.be/tnyJDAjfv0U', 68, '2020-01-05 03:54:11', '2020-01-05 03:54:11'),
(260, 'Aplicaciones de Bernoulli Parte 1 ( Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/BPE6EtrDXwI', 'https://youtu.be/BPE6EtrDXwI', 69, '2020-01-05 03:58:26', '2020-01-05 03:58:26'),
(261, 'Aplicaciones de Bernoulli Parte 2 ( Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/yGtTI5RaXAc', 'https://youtu.be/yGtTI5RaXAc', 69, '2020-01-05 03:58:47', '2020-01-05 03:58:47'),
(262, 'Principio de Torricelli', NULL, NULL, 'https://www.youtube.com/embed/rdIbcmTk-_k', 'https://youtu.be/rdIbcmTk-_k', 69, '2020-01-05 04:00:01', '2020-01-05 04:00:01'),
(263, 'Ecuación de Bernoulli - Demostración, Principio y Aplicaciones', NULL, NULL, 'https://www.youtube.com/embed/aXiSkWBKnzs', 'https://youtu.be/aXiSkWBKnzs', 68, '2020-01-05 04:00:36', '2020-01-05 04:00:36'),
(264, 'Problema de un tanque presurisado', NULL, NULL, 'https://www.youtube.com/embed/5m66hvCLO9s', 'https://youtu.be/5m66hvCLO9s', 69, '2020-01-05 04:09:11', '2020-01-05 04:09:11'),
(265, 'Tubo de venturi', NULL, NULL, 'https://www.youtube.com/embed/ZiNliTPtp_4', 'https://youtu.be/ZiNliTPtp_4', 69, '2020-01-05 04:11:38', '2020-01-05 04:11:38'),
(266, 'Problema de tubo de venturí - Determinación del caudal', NULL, NULL, 'https://www.youtube.com/embed/4stZfp80vBA', 'https://youtu.be/4stZfp80vBA', 69, '2020-01-05 04:12:04', '2020-01-05 04:12:04'),
(267, 'Problema de Dinámica de fluidos - Tubo de Venturí', NULL, NULL, 'https://www.youtube.com/embed/ZZm3KpUqIeg', 'https://youtu.be/ZZm3KpUqIeg', 69, '2020-01-05 04:12:37', '2020-01-05 04:12:37'),
(268, 'Sifón - Problema de un sifón', NULL, NULL, 'https://www.youtube.com/embed/LhEx-3wfgbI', 'https://youtu.be/LhEx-3wfgbI', 69, '2020-01-05 04:13:54', '2020-01-05 04:13:54'),
(269, 'Tubo de Pitot - Calculando la velocidad de un avión', NULL, NULL, 'https://www.youtube.com/embed/UVlFyOETOkA', 'https://youtu.be/UVlFyOETOkA', 69, '2020-01-05 04:14:37', '2020-01-05 04:14:37'),
(270, 'Clase 1: Teoría, Introducción a la Dinámica de Fluidos 1', 'Se define y describe lo que es un líquido en movimiento, se realiza un modelo de lo que es un fluido ideal, se desarrolla el concepto de la ecuación de continuidad y se define lo que es el Caudal.', NULL, 'https://www.youtube.com/embed/IisrIpvtlME', 'https://youtu.be/IisrIpvtlME', 70, '2020-01-05 04:17:40', '2020-01-05 04:17:40'),
(271, 'Clase 2: Teoría, Introducción a la Dinámica de Fluidos 2. Ecuación de Bernoulli', 'Se desarrolla la deducción de la Ecuación de Bernoulli, de la cual se define en sus diferentes expresiones la presión absoluta, la presión dinámica y la presión estática, luego se describe un fluido en movimiento por una tubería de diferente grosor, se realiza una práctica demostrativa con un embudo y una pelota de ping-pong la cual se deja como inquietud al estudiante', NULL, 'https://www.youtube.com/embed/7Cp89RcyYGE', 'https://youtu.be/7Cp89RcyYGE', 70, '2020-01-05 04:18:02', '2020-01-05 04:18:02'),
(272, 'Clase 3: Descripción de la práctica demostrativa y problema 1.', 'Se explica la práctica demostrativa del embudo con la pelota de ping-pong y luego se realiza el primer problema cuyo objetivo es aplicar la ecuación de continuidad, se trata de calcular la rapidez del agua por unos orificios de una regadera.', NULL, 'https://www.youtube.com/embed/WI-h4xPsM4w', 'https://youtu.be/WI-h4xPsM4w', 70, '2020-01-05 04:19:24', '2020-01-05 04:19:24'),
(273, 'Clase 4: Problema 2; Huracán pasando por una casa.', 'En este problema se estudia el efecto de un huracán o un fuerte viento pasando por una casa de lámina o tejado de tal manera que la diferencia de presión dentro y fuera de la casa es el origen de una fuerza ascensional  que puede arrancar las láminas o tejado del techo de la casa.', NULL, 'https://www.youtube.com/embed/W9iRmzp-TEg', 'https://youtu.be/W9iRmzp-TEg', 70, '2020-01-05 04:20:00', '2020-01-05 04:20:00'),
(274, 'Clase 5: problema 3: Tanque lleno de agua y con un agujero', 'Se tiene un tanque lleno de agua, al cual se le perfora un pequeño agujero, se pide encontrar la rapidez con que sale el líquido por el orificio, en base a esto se hace un comentario del teorema de Torricelli, se pregunta sobre el alcance del chorro medido desde la base, luego se pregunta donde hay que perforar otro agujero para que el alcance sea máximo, y donde hay que perforar otro agujero para que el alcance sea igual al del primer chorro.', NULL, 'https://www.youtube.com/embed/iYEQYkVSfjI', 'https://youtu.be/iYEQYkVSfjI', 70, '2020-01-05 04:20:31', '2020-01-05 04:20:31'),
(275, 'Clase 6: Tubo de Venturi', 'Se tiene un tubo o medidor de Venturi se brinda las áreas en la parte ancha y angosta como el caudal, se pide encontrar la velocidad tanto en la parte ancha como angosta , la diferencia de presión en esos puntos y la diferencia de altura en el tubo en U que contiene mercurio.', NULL, 'https://www.youtube.com/embed/wBP18ghl6NM', 'https://youtu.be/wBP18ghl6NM', 70, '2020-01-05 04:20:56', '2020-01-05 04:20:56'),
(276, 'Clase 7: Problema 4: El sifón, como funciona.', 'Se muestra el funcionamiento del sifón, y en base a los datos que nos dan, nos piden encontrar la velocidad de salida del agua, la presión en cierto punto, y a que altura hay que elevar la manguera para que ya no fluya agua.', NULL, 'https://www.youtube.com/embed/kLbbEMCF9a8', 'https://youtu.be/kLbbEMCF9a8', 70, '2020-01-05 04:21:20', '2020-01-05 04:21:20'),
(277, 'Guía discusión 2 - Dinámica de los fluidos 2017', 'Dinámica de los fluidos 2017', '1578180270FIR215-DISCUSIÓN2-DINAMICA-DE-LOS-FLUIDOS2017.pdf', NULL, NULL, 71, '2020-01-05 04:24:30', '2020-01-05 04:24:30'),
(278, 'Dinámica de los fluidos', NULL, '1578180354FIR215-dinamica-fluidos.pdf', NULL, NULL, 71, '2020-01-05 04:25:54', '2020-01-05 04:25:54'),
(279, 'Dinámica de los fluidos 2', NULL, '1578180458FIR215-dinamica-fluidos2.pdf', NULL, NULL, 71, '2020-01-05 04:27:38', '2020-01-05 04:27:38'),
(280, 'Unidad 1 - HDP115', NULL, '1578185642HDP115-unidad1.pdf', NULL, NULL, 72, '2020-01-05 05:54:02', '2020-01-05 05:54:02'),
(281, 'Evolución de las herramientas informáticas (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/EmyeekLfmsw', 'https://youtu.be/EmyeekLfmsw', 72, '2020-01-05 05:54:42', '2020-01-05 05:54:42'),
(282, 'Uso de astah community (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/B-0Zlp8_faQ', 'https://youtu.be/B-0Zlp8_faQ', 72, '2020-01-05 05:55:30', '2020-01-05 05:55:30'),
(283, 'Unidad 2 - HDP115', NULL, '1578185957HDP115-unidad2.pdf', NULL, NULL, 73, '2020-01-05 05:59:17', '2020-01-05 05:59:17'),
(284, 'Programación de proyectos (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/dsqR846b3Z8', 'https://youtu.be/dsqR846b3Z8', 73, '2020-01-05 05:59:58', '2020-01-05 05:59:58'),
(285, 'Herramientas de prototipado (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/14lYS7CzxEI', 'https://youtu.be/14lYS7CzxEI', 73, '2020-01-05 06:00:34', '2020-01-05 06:00:34'),
(286, 'Unidad 3- POO y UML - HDP115', NULL, '1578186286HDp115-unidad3-POO-UML.pdf', NULL, NULL, 74, '2020-01-05 06:04:46', '2020-01-05 06:04:46'),
(287, 'Unidad 3-Modelado y prototipos - HDP115', NULL, '1578186411HDP115-unidad3-modeladoPrototipos.pdf', NULL, NULL, 75, '2020-01-05 06:06:51', '2020-01-05 06:06:51'),
(288, 'Unidad 3 - UML 2.0 y Patrones de diseño - HDP115', NULL, '1578186656HDP115-unidad3-patronesDiseno.pdf', NULL, NULL, 76, '2020-01-05 06:10:56', '2020-01-05 06:10:56'),
(289, 'Unidad 3 - Diseño orientado a objetos - HDP115', NULL, '1578186807HDP115-unidad3-disenoObjetos.pdf', NULL, NULL, 77, '2020-01-05 06:13:27', '2020-01-05 06:13:27'),
(290, 'Introducción a la POO parte 1 (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/CKZ3e6IK-F4', 'https://youtu.be/CKZ3e6IK-F4', 74, '2020-01-05 06:15:29', '2020-01-05 06:15:29'),
(291, 'Introducción a la POO parte 2 (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/fNy5qmn3DBU', 'https://youtu.be/fNy5qmn3DBU', 74, '2020-01-05 06:16:01', '2020-01-05 06:16:01'),
(292, 'Creación de artefactos OO (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/b-rk4jnLIXs', 'https://youtu.be/b-rk4jnLIXs', 74, '2020-01-05 06:17:20', '2020-01-05 06:17:20'),
(293, 'Análisis y diseño orientado a objetos parte 1 (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/KgB1pjh2KUI', 'https://youtu.be/KgB1pjh2KUI', 74, '2020-01-05 06:19:04', '2020-01-05 06:19:04'),
(294, 'Análisis y diseño orientado a objetos parte 2 (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/fV9bRQ9kr88', 'https://youtu.be/fV9bRQ9kr88', 74, '2020-01-05 06:19:38', '2020-01-05 06:19:38'),
(295, 'Diagramas de secuencia (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/aLJ1OuedYu4', 'https://youtu.be/aLJ1OuedYu4', 74, '2020-01-05 06:20:24', '2020-01-05 06:20:24'),
(296, 'El diseño orientado a objetos (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/VHHKq7iXrks', 'https://youtu.be/VHHKq7iXrks', 77, '2020-01-05 06:21:51', '2020-01-05 06:21:51'),
(297, 'Uso de Power Designer (Video Oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/kDVya6YwJuI', 'https://youtu.be/kDVya6YwJuI', 77, '2020-01-05 06:22:30', '2020-01-05 06:22:30'),
(298, 'Patrones de diseño (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/k6K202ihF6E', 'https://youtu.be/k6K202ihF6E', 76, '2020-01-05 06:24:25', '2020-01-05 06:24:25'),
(299, 'Implementacion del patrón MVC (Video oficial UES)', NULL, NULL, 'https://www.youtube.com/embed/AXNz7Ic-YNo', 'https://youtu.be/AXNz7Ic-YNo', 76, '2020-01-05 06:24:53', '2020-01-05 06:24:53'),
(300, 'Sistemas gestores de bases de datos y más', 'Sistemas gestores de bases de datos', '1578188745HDP115-unidad4-gestoresbasedatos.pdf', NULL, NULL, 78, '2020-01-05 06:45:45', '2020-01-05 06:45:45'),
(301, 'Lenguaje DDL y DML', 'Lenguaje DDL, DML, interfaces, modelo de datos', '1578188884HDP115-unidad4-lenguajeDDL-MDL.pdf', NULL, NULL, 78, '2020-01-05 06:48:04', '2020-01-05 06:48:04'),
(302, 'Relaciones y entidades', NULL, '1578189001HDP115-unidad4-entidades-claves-primaria.pdf', NULL, NULL, 78, '2020-01-05 06:50:01', '2020-01-05 06:50:01'),
(303, 'Modelo Lógico y relacional', 'Modelo logico, relacional, caracteristicas entre relaciones, estado de una base de datos', '1578189085HDP115-unidad4-modeloLogico-Relacional.pdf', NULL, NULL, 78, '2020-01-05 06:51:25', '2020-01-05 06:51:25'),
(304, 'Desigualdades', NULL, '1578199599MAT115-desigualdades.pdf', NULL, NULL, 79, '2020-01-05 09:46:39', '2020-01-05 09:46:39'),
(305, 'Desigualdades 2', NULL, '1578199699MAT115-desigualdades2.pdf', NULL, NULL, 79, '2020-01-05 09:48:19', '2020-01-05 09:48:19'),
(306, 'Desigualdades 3', NULL, '1578199749MAT115-desigualdades3.pdf', NULL, NULL, 79, '2020-01-05 09:49:09', '2020-01-05 09:49:09'),
(307, 'Desigualdades lineales - Ejercicio 1', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/jSZWvCh2PqI', 'https://youtu.be/jSZWvCh2PqI', 79, '2020-01-05 09:51:33', '2020-01-05 09:51:33'),
(308, 'Desigualdades lineales - Ejercicio 2', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/1CmeGrYDgLU', 'https://youtu.be/1CmeGrYDgLU', 79, '2020-01-05 09:52:00', '2020-01-05 09:52:00'),
(309, 'Desigualdades lineales - Ejercicio 3', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/RqbH-Bwe_NY', 'https://youtu.be/RqbH-Bwe_NY', 79, '2020-01-05 09:53:02', '2020-01-05 09:53:02'),
(310, 'Desigualdades lineales - Ejercicio 4', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/ow8O24JNmrA', 'https://youtu.be/ow8O24JNmrA', 79, '2020-01-05 09:53:30', '2020-01-05 09:53:30'),
(311, 'Desigualdades lineales - Ejercicio 5', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/etQLL6DKn5Y', 'https://youtu.be/etQLL6DKn5Y', 79, '2020-01-05 09:53:56', '2020-01-05 09:53:56'),
(312, 'Desigualdades lineales - Ejercicio 6', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/YIKpW6v8lyM', 'https://youtu.be/YIKpW6v8lyM', 79, '2020-01-05 09:54:31', '2020-01-05 09:54:31'),
(313, 'Desigualdades lineales - Ejercicio 7', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/RZ-1iShWhmg', 'https://youtu.be/RZ-1iShWhmg', 79, '2020-01-05 09:54:55', '2020-01-05 09:54:55'),
(314, 'Desigualdades lineales - Ejercicio 8', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/Sz1nI6X2mKA', 'https://youtu.be/Sz1nI6X2mKA', 79, '2020-01-05 09:55:21', '2020-01-05 09:55:21'),
(315, 'Desigualdades lineales - Ejercicio 9', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/f20Xl-zziU4', 'https://youtu.be/f20Xl-zziU4', 79, '2020-01-05 09:55:50', '2020-01-05 09:55:50'),
(316, 'Desigualdades lineales - Ejercicio 10', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/pDYRnHR_gwA', 'https://youtu.be/pDYRnHR_gwA', 79, '2020-01-05 09:56:18', '2020-01-05 09:56:18'),
(317, 'Desigualdades lineales - Ejercicio 11', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/fnEoa0yP5L4', 'https://youtu.be/fnEoa0yP5L4', 79, '2020-01-05 09:56:56', '2020-01-05 09:56:56'),
(318, 'Desigualdades lineales - Ejercicio 12', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/S-Z9sJLeSss', 'https://youtu.be/S-Z9sJLeSss', 79, '2020-01-05 09:57:27', '2020-01-05 09:57:27'),
(319, 'Desigualdades lineales - Ejercicio 13', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.		', NULL, 'https://www.youtube.com/embed/X7CWFotDPKQ', 'https://youtu.be/X7CWFotDPKQ', 79, '2020-01-05 09:58:48', '2020-01-05 09:58:48'),
(320, 'Desigualdades lineales - Ejercicio 14', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/qburGRf5bAc', 'https://youtu.be/qburGRf5bAc', 79, '2020-01-05 10:00:10', '2020-01-05 10:00:10'),
(321, 'Desigualdades lineales - Ejercicio 15', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/Z9WuacD-r8E', 'https://youtu.be/Z9WuacD-r8E', 79, '2020-01-05 10:01:08', '2020-01-05 10:01:08'),
(322, 'Desigualdades lineales - Ejercicio 16', 'Explica cómo solucionar una desigualdad o inecuación lineal y cómo expresar su conjunto solución.', NULL, 'https://www.youtube.com/embed/yG-WtORC00o', 'https://youtu.be/yG-WtORC00o', 79, '2020-01-05 10:02:23', '2020-01-05 10:02:23'),
(323, 'Desigualdades cuadráticas - Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/CiCp1-3n3sU', 'https://youtu.be/CiCp1-3n3sU', 79, '2020-01-05 10:04:20', '2020-01-05 10:04:20'),
(324, 'Desigualdades cuadráticas - Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/wzV2ZkKhB7A', 'https://youtu.be/wzV2ZkKhB7A', 79, '2020-01-05 10:05:18', '2020-01-05 10:05:18'),
(325, 'Desigualdades cuadráticas - Ejercicio 3', NULL, NULL, 'https://www.youtube.com/embed/gQ-WcsZWFrU', 'https://youtu.be/gQ-WcsZWFrU', 79, '2020-01-05 10:06:29', '2020-01-05 10:06:29'),
(326, 'Desigualdades cuadráticas - Ejercicio 4', NULL, NULL, 'https://www.youtube.com/embed/8_Bl1GhwKoc', 'https://youtu.be/8_Bl1GhwKoc', 79, '2020-01-05 10:07:10', '2020-01-05 10:07:10'),
(327, 'Desigualdades cuadráticas - Ejercicio 5', NULL, NULL, 'https://www.youtube.com/embed/JYGbNs70ZOE', 'https://youtu.be/JYGbNs70ZOE', 79, '2020-01-05 10:07:44', '2020-01-05 10:07:44'),
(328, 'Desigualdades cuadráticas - Ejercicio 6', NULL, NULL, 'https://www.youtube.com/embed/43kKD145Bno', 'https://youtu.be/43kKD145Bno', 79, '2020-01-05 10:08:29', '2020-01-05 10:08:29'),
(329, 'Desigualdades cuadráticas - Ejercicio 7', NULL, NULL, 'https://www.youtube.com/embed/rQtiGBtEhZY', 'https://youtu.be/rQtiGBtEhZY', 79, '2020-01-05 10:08:59', '2020-01-05 10:08:59'),
(330, 'Desigualdades cuadráticas - Ejercicio 8', NULL, NULL, 'https://www.youtube.com/embed/3rKS0ffwPZU', 'https://youtu.be/3rKS0ffwPZU', 79, '2020-01-05 10:09:24', '2020-01-05 10:09:24'),
(331, 'Desigualdades cuadráticas - Ejercicio 9', NULL, NULL, 'https://www.youtube.com/embed/p3Sv3Wa5qYQ', 'https://youtu.be/p3Sv3Wa5qYQ', 79, '2020-01-05 10:09:42', '2020-01-05 10:09:42'),
(332, 'Desigualdades cuadráticas - Ejercicio 10', NULL, NULL, 'https://www.youtube.com/embed/0XrkCpV6fnc', 'https://youtu.be/0XrkCpV6fnc', 79, '2020-01-05 10:09:59', '2020-01-05 10:09:59'),
(333, 'Desigualdades cuadráticas - Ejercicio 11', NULL, NULL, 'https://www.youtube.com/embed/sxzDHspZgzQ', 'https://youtu.be/sxzDHspZgzQ', 79, '2020-01-05 10:10:20', '2020-01-05 10:10:20'),
(334, 'Desigualdades racionales - Ejercicio 1', NULL, NULL, 'https://www.youtube.com/embed/IBWbEBUSv-w', 'https://youtu.be/IBWbEBUSv-w', 79, '2020-01-05 10:10:51', '2020-01-05 10:10:51'),
(335, 'Desigualdades racionales - Ejercicio 2', NULL, NULL, 'https://www.youtube.com/embed/fgwsv4QlRkA', 'https://youtu.be/fgwsv4QlRkA', 79, '2020-01-05 10:11:08', '2020-01-05 10:11:08'),
(336, 'Desigualdades racionales - Ejercicio 3', NULL, NULL, 'https://www.youtube.com/embed/OdLY6Udi9T4', 'https://youtu.be/OdLY6Udi9T4', 79, '2020-01-05 10:11:28', '2020-01-05 10:11:28'),
(337, 'Desigualdades racionales - Ejercicio 4', NULL, NULL, 'https://www.youtube.com/embed/FEf8A2VDycE', 'https://youtu.be/FEf8A2VDycE', 79, '2020-01-05 10:11:48', '2020-01-05 10:11:48'),
(338, 'Desigualdades racionales - Ejercicio 5', NULL, NULL, 'https://www.youtube.com/embed/O75Nsbws_CQ', 'https://youtu.be/O75Nsbws_CQ', 79, '2020-01-05 10:12:54', '2020-01-05 10:12:54'),
(339, 'Desigualdades racionales - Ejercicio 5 continuación', NULL, NULL, 'https://www.youtube.com/embed/PJTVAmECH0c', 'https://youtu.be/PJTVAmECH0c', 79, '2020-01-05 10:13:25', '2020-01-05 10:13:25'),
(340, 'Desigualdades racionales - Ejercicio 6', NULL, NULL, 'https://www.youtube.com/embed/LEPgW3St6-s', 'https://youtu.be/LEPgW3St6-s', 79, '2020-01-05 10:14:19', '2020-01-05 10:14:19'),
(341, 'Inecuaciones cuadráticas solución | Ejemplo 1', NULL, NULL, 'https://www.youtube.com/embed/_uW4nVdCWzQ', 'https://youtu.be/_uW4nVdCWzQ', 80, '2020-01-05 10:16:10', '2020-01-05 10:16:10'),
(342, 'Representación gráfica de intervalos | Ejemplo 1', NULL, NULL, 'https://www.youtube.com/embed/tyt6T1Ukq3w', 'https://youtu.be/tyt6T1Ukq3w', 80, '2020-01-05 10:19:55', '2020-01-05 10:19:55'),
(343, 'Representación gráfica de intervalos | Ejemplo 2', NULL, NULL, 'https://www.youtube.com/embed/46WvE9S9y04', 'https://youtu.be/46WvE9S9y04', 80, '2020-01-05 10:20:16', '2020-01-05 10:20:16'),
(344, 'Unión de intervalos', NULL, NULL, 'https://www.youtube.com/embed/j-5mBl4fInA', 'https://youtu.be/j-5mBl4fInA', 80, '2020-01-05 10:20:36', '2020-01-05 10:20:36'),
(345, 'Intersección de intervalos | Operaciones con intervalos', NULL, NULL, 'https://www.youtube.com/embed/nx_rvu-yD70', 'https://youtu.be/nx_rvu-yD70', 80, '2020-01-05 10:20:55', '2020-01-05 10:20:55'),
(346, 'Complemento de intervalos', NULL, NULL, 'https://www.youtube.com/embed/r6Ip60-dsJU', 'https://youtu.be/r6Ip60-dsJU', 80, '2020-01-05 10:22:13', '2020-01-05 10:22:13'),
(347, 'Diferencia de intervalos | Operaciones con intervalos', NULL, NULL, 'https://www.youtube.com/embed/lGWCw6UUHTM', 'https://youtu.be/lGWCw6UUHTM', 80, '2020-01-05 10:22:33', '2020-01-05 10:22:33'),
(348, 'Inecuaciones introducción | conceptos básicos', NULL, NULL, 'https://www.youtube.com/embed/y9vDsarVxtg', 'https://youtu.be/y9vDsarVxtg', 80, '2020-01-05 10:22:50', '2020-01-05 10:22:50'),
(349, 'Inecuaciones de Primer Grado - Lineales | Ejemplo 1', NULL, NULL, 'https://www.youtube.com/embed/yPSuv-CoZ3g', 'https://youtu.be/yPSuv-CoZ3g', 80, '2020-01-05 10:23:10', '2020-01-05 10:23:10'),
(350, 'Inecuaciones de Primer Grado - Lineales | Ejemplo 2', NULL, NULL, 'https://www.youtube.com/embed/QLl35q0k2Ec', 'https://youtu.be/QLl35q0k2Ec', 80, '2020-01-05 10:23:31', '2020-01-05 10:23:31'),
(351, 'Inecuaciones de Primer Grado - Lineales con fracciones| Ejemplo 1', NULL, NULL, 'https://www.youtube.com/embed/uwxehcPW1m4', 'https://youtu.be/uwxehcPW1m4', 80, '2020-01-05 10:23:51', '2020-01-05 10:23:51'),
(352, 'Inecuaciones de primer grado con fracciones | Ejemplo 2', NULL, NULL, 'https://www.youtube.com/embed/An4D6uUc3qk', 'https://youtu.be/An4D6uUc3qk', 80, '2020-01-05 10:24:08', '2020-01-05 10:24:08'),
(353, 'Inecuaciones cuadráticas y racionales | Introducción', NULL, NULL, 'https://www.youtube.com/embed/qaY1qp5JCEc', 'https://youtu.be/qaY1qp5JCEc', 80, '2020-01-05 10:24:23', '2020-01-05 10:24:23'),
(354, 'Inecuaciones cuadráticas solución | Ejemplo 1', NULL, NULL, 'https://www.youtube.com/embed/_uW4nVdCWzQ', 'https://youtu.be/_uW4nVdCWzQ', 80, '2020-01-05 10:24:44', '2020-01-05 10:24:44'),
(355, 'Inecuaciones cuadráticas solución | Ejemplo 2', NULL, NULL, 'https://www.youtube.com/embed/17FQt-9Az5E', 'https://youtu.be/17FQt-9Az5E', 80, '2020-01-05 10:25:04', '2020-01-05 10:25:04'),
(356, 'Inecuaciones cuadráticas solución | Ejemplo 3', NULL, NULL, 'https://www.youtube.com/embed/7OoLfOeKCIA', 'https://youtu.be/7OoLfOeKCIA', 80, '2020-01-05 10:25:38', '2020-01-05 10:25:38'),
(357, 'Inecuaciones racionales solución | Ejemplo 1', NULL, NULL, 'https://www.youtube.com/embed/QLf7vVb6Wao', 'https://youtu.be/QLf7vVb6Wao', 80, '2020-01-05 10:26:01', '2020-01-05 10:26:01'),
(358, 'Inecuaciones racionales solución | Ejemplo 2', NULL, NULL, 'https://www.youtube.com/embed/sJWIDBRW0S0', 'https://youtu.be/sJWIDBRW0S0', 80, '2020-01-05 10:26:19', '2020-01-05 10:26:19'),
(359, 'Inecuaciones racionales solución | Ejemplo 3', NULL, NULL, 'https://www.youtube.com/embed/-hrN-tKgARY', 'https://youtu.be/-hrN-tKgARY', 80, '2020-01-05 10:26:36', '2020-01-05 10:26:36'),
(360, 'Inecuaciones racionales solución | Ejemplo 4', NULL, NULL, 'https://www.youtube.com/embed/mdsbv5YNLIM', 'https://youtu.be/mdsbv5YNLIM', 80, '2020-01-05 10:26:53', '2020-01-05 10:26:53'),
(361, 'Inecuaciones racionales solución \"x negativa\" | Ejemplo 5', NULL, NULL, 'https://www.youtube.com/embed/x8IDkHQteX4', 'https://youtu.be/x8IDkHQteX4', 80, '2020-01-05 10:27:12', '2020-01-05 10:27:12'),
(362, 'Inecuaciones racionales solución | Ejemplo 6', NULL, NULL, 'https://www.youtube.com/embed/rFd5gY7cim0', 'https://youtu.be/rFd5gY7cim0', 80, '2020-01-05 10:27:32', '2020-01-05 10:27:32'),
(363, 'Inecuaciones racionales solución | Ejemplo 7', NULL, NULL, 'https://www.youtube.com/embed/tJkkeewcK_s', 'https://youtu.be/tJkkeewcK_s', 80, '2020-01-05 10:27:52', '2020-01-05 10:27:52'),
(364, 'Inecuaciones racionales solución | Ejemplo 8', NULL, NULL, 'https://www.youtube.com/embed/5yTblZU-TQk', 'https://youtu.be/5yTblZU-TQk', 80, '2020-01-05 10:28:09', '2020-01-05 10:28:09'),
(365, 'Guía discusión 1 - Desigualdades 2019', NULL, '1578244429MAT115-guiaDiscucion1-2019.pdf', NULL, NULL, 82, '2020-01-05 22:13:49', '2020-01-05 22:13:49'),
(366, '01. ¿Qué es una desigualdad? (Soluciones, intervalos, gráfica, etc)', NULL, NULL, 'https://www.youtube.com/embed/wWqueXXTmeo', 'https://youtu.be/wWqueXXTmeo', 81, '2020-01-05 23:09:26', '2020-01-05 23:09:26'),
(367, '02. Desigualdades de primer grado, despejar x', NULL, NULL, 'https://www.youtube.com/embed/qBDCNL1opQ8', 'https://youtu.be/qBDCNL1opQ8', 81, '2020-01-05 23:10:12', '2020-01-05 23:10:12'),
(368, '03. Desigualdades de primer grado, despejar x', NULL, NULL, 'https://www.youtube.com/embed/amQOmwK6kk4', 'https://youtu.be/amQOmwK6kk4', 81, '2020-01-05 23:10:46', '2020-01-05 23:10:46'),
(369, '04. Desigualdades: ¿cuándo debe cambiar de sentido una desigualdad? (PROPIEDADES)', NULL, NULL, 'https://www.youtube.com/embed/-xd3IY4ur-o', 'https://youtu.be/-xd3IY4ur-o', 81, '2020-01-05 23:11:09', '2020-01-05 23:11:09'),
(370, '05. Desigualdades de primer grado, despejar x', NULL, NULL, 'https://www.youtube.com/embed/SoRo2p-g6nA', 'https://youtu.be/SoRo2p-g6nA', 81, '2020-01-05 23:11:44', '2020-01-05 23:11:44'),
(371, '06. Desigualdades de primer grado, despejar x', NULL, NULL, 'https://www.youtube.com/embed/OE8DqquznmE', 'https://youtu.be/OE8DqquznmE', 81, '2020-01-05 23:12:13', '2020-01-05 23:12:13'),
(372, '07. Desigualdad de primer grado EJERCICIO RESUELTO', NULL, NULL, 'https://www.youtube.com/embed/BCpUh1sSU2g', 'https://youtu.be/BCpUh1sSU2g', 81, '2020-01-05 23:12:40', '2020-01-05 23:12:40'),
(373, '08. Desigualdad de primer grado EJERCICIO RESUELTO', NULL, NULL, 'https://www.youtube.com/embed/cV5CW8jaIiI', 'https://youtu.be/cV5CW8jaIiI', 81, '2020-01-05 23:13:16', '2020-01-05 23:13:16'),
(374, '09. Desigualdad de primer grado EJERCICIO RESUELTO', NULL, NULL, 'https://www.youtube.com/embed/ibT1KyMXS38', 'https://youtu.be/ibT1KyMXS38', 81, '2020-01-05 23:13:39', '2020-01-05 23:13:39'),
(375, '10. Desigualdad de primer grado EJERCICIO RESUELTO', NULL, NULL, 'https://www.youtube.com/embed/UyL9yifNg_I', 'https://youtu.be/UyL9yifNg_I', 81, '2020-01-05 23:22:16', '2020-01-05 23:22:16'),
(376, '11. Desigualdad de primer grado EJERCICIO RESUELTO', NULL, NULL, 'https://www.youtube.com/embed/CmbNydtZ0J4', 'https://youtu.be/CmbNydtZ0J4', 81, '2020-01-05 23:22:45', '2020-01-05 23:22:45'),
(377, '12. Desigualdad de primer grado con fracción, solución gráfica e intervalo EJERCICIO RESUELTO', NULL, NULL, 'https://www.youtube.com/embed/oT1cJ63-Uj8', 'https://youtu.be/oT1cJ63-Uj8', 81, '2020-01-05 23:23:30', '2020-01-05 23:23:30'),
(378, '13. Desigualdad con fracciones EJERCICIO RESUELTO', NULL, NULL, 'https://www.youtube.com/embed/e2xQXrtYfaE', 'https://youtu.be/e2xQXrtYfaE', 81, '2020-01-05 23:24:12', '2020-01-05 23:24:12'),
(379, '14. Desigualdad con fracciones EJERCICIO RESUELTO', NULL, NULL, 'https://www.youtube.com/embed/0e53WrWm-R4', 'https://youtu.be/0e53WrWm-R4', 81, '2020-01-05 23:25:30', '2020-01-05 23:25:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `llave` varchar(250) NOT NULL,
  `descripcion` text,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `keys`
--

INSERT INTO `keys` (`id`, `llave`, `descripcion`, `updated_at`, `created_at`) VALUES
(1, 'EIGA7SBzsdho13g31052z9He0JiR-MAT115', NULL, '2019-12-21 07:01:28', '2019-12-21 07:01:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siglas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `siglas`, `titulo`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'MAT115', 'Matemáticas I', NULL, '2019-12-21 07:04:38', '2019-12-21 07:04:38'),
(2, 'MAT315', 'Matemáticas III', NULL, '2019-12-27 07:42:03', '2019-12-27 07:42:03'),
(3, 'FIR215', 'Física II', NULL, '2020-01-04 09:22:48', '2020-01-04 09:22:48'),
(4, 'HDP115', 'Herramientas de productividad', NULL, '2020-01-05 05:48:48', '2020-01-05 05:48:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(34, '2014_10_12_000000_create_users_table', 1),
(35, '2014_10_12_100000_create_password_resets_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2019_12_15_192039_create_materias_table', 1),
(38, '2019_12_15_192458_create_unidades_table', 1),
(39, '2019_12_15_192916_create_temarios_table', 1),
(40, '2019_12_15_193111_create_contenidos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temarios`
--

CREATE TABLE `temarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `unidad_id` bigint(20) UNSIGNED NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `temarios`
--

INSERT INTO `temarios` (`id`, `titulo`, `descripcion`, `unidad_id`, `orden`, `created_at`, `updated_at`) VALUES
(7, 'Introducción a los limites', NULL, 2, 1, '2019-12-21 07:41:52', '2019-12-21 07:41:52'),
(8, 'Definición de Matriz', NULL, 5, 1, '2019-12-27 07:43:13', '2019-12-27 10:34:34'),
(9, 'Operaciones elementales', NULL, 5, 2, '2019-12-27 07:43:26', '2019-12-27 10:34:34'),
(10, 'Operación con matrices', NULL, 5, 3, '2019-12-27 07:43:31', '2019-12-27 10:34:34'),
(11, 'Determinante de una matriz', NULL, 5, 4, '2019-12-27 07:43:36', '2019-12-27 10:34:34'),
(12, 'Matriz inversa', NULL, 5, 5, '2019-12-27 07:43:42', '2019-12-27 10:34:34'),
(14, 'Regla de Cramer', NULL, 5, 6, '2019-12-27 07:43:55', '2019-12-27 10:34:34'),
(15, 'Método de Gauss', NULL, 5, 7, '2019-12-27 07:44:02', '2019-12-27 10:34:34'),
(19, 'Sistema de coordenadas cartesianas', NULL, 7, 1, '2019-12-27 07:45:30', '2019-12-27 07:45:30'),
(20, 'Sistema de coordenadas cilíndricas', NULL, 7, 2, '2019-12-27 07:45:44', '2019-12-27 07:45:44'),
(21, 'Sistema de coordenadas esféricas', NULL, 7, 3, '2019-12-27 07:45:51', '2019-12-27 07:45:51'),
(22, 'Conversión de ecuaciones de un sistema a otro', NULL, 7, 4, '2019-12-27 07:45:57', '2019-12-27 07:45:57'),
(23, 'Rectas y planos en R', NULL, 8, 1, '2019-12-27 07:46:50', '2019-12-27 07:46:50'),
(24, 'Superficies cilíndricas y cuádricas', NULL, 8, 2, '2019-12-27 07:46:57', '2019-12-27 07:46:57'),
(25, 'Funciones de dos variables. Dominio y Recorrido', NULL, 9, 1, '2019-12-27 07:47:30', '2020-01-01 00:01:12'),
(26, 'Derivadas parciales', NULL, 9, 2, '2019-12-27 07:47:35', '2020-01-01 00:01:12'),
(28, 'Regla de la cadena', NULL, 9, 3, '2019-12-27 07:47:48', '2020-01-01 00:01:12'),
(29, 'Derivada direccional y gradiente', NULL, 9, 4, '2019-12-27 07:47:58', '2020-01-01 00:01:12'),
(30, 'Extremos de funciones de dos variables', NULL, 9, 5, '2019-12-27 07:48:06', '2020-01-01 00:01:12'),
(32, 'Integrales dobles', NULL, 10, 1, '2019-12-27 07:48:41', '2020-01-03 22:19:10'),
(33, 'Integrales dobles en coordenadas polares', NULL, 10, 2, '2019-12-27 07:48:47', '2020-01-03 22:19:10'),
(34, 'Integrales triples y aplicaciones', NULL, 10, 3, '2019-12-27 07:48:56', '2020-01-03 22:19:10'),
(35, 'Integrales triples en coordenadas cilíndricas y esféricas', NULL, 10, 4, '2019-12-27 07:49:02', '2020-01-03 22:19:10'),
(36, 'RECURSOS VARIOS', NULL, 5, 8, '2019-12-30 04:38:27', '2019-12-30 04:38:27'),
(37, 'Sistema de coordenadas polares', NULL, 6, 1, '2019-12-30 04:45:53', '2019-12-30 04:45:53'),
(38, 'Conversiones de coordenadas', NULL, 6, 2, '2019-12-30 04:52:51', '2019-12-30 04:52:51'),
(39, 'Ecuaciones polares y rectangulares', NULL, 6, 3, '2019-12-30 04:57:08', '2019-12-30 04:57:08'),
(40, 'Recta tangente en el polo', NULL, 6, 4, '2019-12-30 04:59:57', '2019-12-30 04:59:57'),
(41, 'Gráfica de ecuaciones polares', NULL, 6, 5, '2019-12-30 05:03:56', '2019-12-30 05:03:56'),
(42, 'Área en una región en coordenadas polares', NULL, 6, 6, '2019-12-30 05:06:03', '2019-12-30 05:06:03'),
(43, 'RECURSOS VARIOS', NULL, 6, 7, '2019-12-30 06:00:27', '2019-12-30 06:00:27'),
(44, 'RECURSOS VARIOS', 'Recursos para apoyo a la unidad', 7, 5, '2020-01-03 23:40:18', '2020-01-03 23:40:18'),
(45, 'RECURSOS VARIOS', NULL, 8, 3, '2020-01-03 23:46:31', '2020-01-03 23:46:31'),
(46, 'RECURSOS VARIOS', NULL, 9, 6, '2020-01-03 23:51:34', '2020-01-03 23:51:34'),
(47, 'RECURSOS VARIOS', NULL, 10, 5, '2020-01-03 23:52:30', '2020-01-03 23:52:30'),
(61, 'Fluidos y densidad', NULL, 12, 1, '2020-01-04 22:31:08', '2020-01-04 22:31:08'),
(62, 'Presión', NULL, 12, 2, '2020-01-04 23:07:12', '2020-01-04 23:07:12'),
(63, 'Principio de Pascal', NULL, 12, 3, '2020-01-04 23:30:30', '2020-01-04 23:30:30'),
(64, 'Principio de Arquímedes', NULL, 12, 4, '2020-01-04 23:30:42', '2020-01-04 23:30:42'),
(65, 'Estática de fluidos - Cesar Izquierdo', 'Temario donde encontraras los vídeos en orden sobre estática de los fluidos por Cesar izquierdo.', 12, 5, '2020-01-04 23:51:15', '2020-01-04 23:51:15'),
(66, 'RECURSOS VARIOS', 'Encontraras recursos variados como pdf de refuerzo, formulas, laboratorios, guías de discusión entre otros.', 12, 6, '2020-01-04 23:52:22', '2020-01-04 23:52:22'),
(67, 'Flujo de fluidos y ecuación de continuidad', 'estudiaremos los tipos de flujo y líneas y tubos de corriente o de flujo.', 13, 1, '2020-01-05 03:28:48', '2020-01-05 03:28:48'),
(68, 'Ecuación de Bernoulli', 'estudiaremos Conservación de la energía en los fluidos y la ecuación de Bernoulli', 13, 2, '2020-01-05 03:50:06', '2020-01-05 03:50:06'),
(69, 'Aplicaciones de Bernoulli', 'estudiaremos Ley de Torricelli, el medidor de Venturi, el sifón,Empuje (ascendente) dinámico', 13, 3, '2020-01-05 03:56:42', '2020-01-05 03:56:42'),
(70, 'Dinamica de fluidos - Cesar Izquierdo', 'Temario donde encontraras los vídeos en orden sobre dinámica de los fluidos por Cesar izquierdo.', 13, 4, '2020-01-05 04:17:07', '2020-01-05 04:17:07'),
(71, 'RECURSOS VARIOS', 'Encontraras recursos variados como pdf de refuerzo, formulas, laboratorios, guías de discusión entre otros.', 13, 5, '2020-01-05 04:21:47', '2020-01-05 04:21:47'),
(72, 'Contenido unidad 1', NULL, 19, 1, '2020-01-05 05:53:11', '2020-01-05 05:53:11'),
(73, 'Contenido unidad 2', NULL, 20, 1, '2020-01-05 05:58:13', '2020-01-05 05:58:13'),
(74, 'Contenido unidad 3 - POO y UML', NULL, 21, 1, '2020-01-05 06:02:42', '2020-01-05 06:02:42'),
(75, 'Contenido unidad 3 - Modelado y tipos de prototipos', NULL, 21, 2, '2020-01-05 06:05:34', '2020-01-05 06:05:34'),
(76, 'Contenido unidad 3 - UML 2 y patrones de diseño', NULL, 21, 3, '2020-01-05 06:07:37', '2020-01-05 06:07:37'),
(77, 'Contenido Unidad 3 - Diseño orientado a objetos', NULL, 21, 4, '2020-01-05 06:11:54', '2020-01-05 06:11:54'),
(78, 'Contenido unidad 4', NULL, 22, 1, '2020-01-05 06:42:43', '2020-01-05 06:42:43'),
(79, 'Desigualdades', 'Recursos de vídeo y archivos pdf sobre desigualdades', 23, 1, '2020-01-05 09:45:40', '2020-01-05 09:45:40'),
(80, 'Desigualdades (Matemáticas profe Alex)', 'Curso completo sobre desigualdades por el canal: Matemáticas profe Alex', 23, 2, '2020-01-05 10:15:46', '2020-01-05 10:15:46'),
(81, 'Desigualdades ejercicios resueltos (MateFacil)', 'Curso sobre desigualdades por el canal: MateFacil', 23, 3, '2020-01-05 22:12:35', '2020-01-05 22:12:35'),
(82, 'RECURSOS VARIOS', 'Recursos como pdf de ayuda, formulas, guías de discusión, etc.', 23, 4, '2020-01-05 22:13:07', '2020-01-05 22:13:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `orden_u` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `titulo`, `descripcion`, `materia_id`, `orden_u`, `created_at`, `updated_at`) VALUES
(1, 'UNIDAD 2: FUNCIONES Y SUS GRÁFICAS', 'Al finalizar esta unidad el estudiante deberá ser capaz de evaluar una función en diferentes puntos, definir dominio y contra dominio.\r\nObtener dominio y contra dominio en forma gráfica y analítica, \r\ndeterminar cuando es par o impar una función.', 1, 2, '2019-12-21 07:31:19', '2020-01-05 09:41:04'),
(2, 'UNIDAD 3: LIMITES Y CONTINUIDAD', 'Al finalizar esta unidad el estudiante deberá ser capaz de:\r\nDefinir intuitivamente el limite de una función, definir limites por la izquierda o derecha de un valor a.\r\ncalcular limite de una función utilizando la definición intuitiva, ademas calcular limites en un punto dado una gráfica.', 1, 3, '2019-12-21 07:33:38', '2020-01-05 10:16:53'),
(3, 'UNIDAD 4: DERIVACIÓN', 'Al finalizar esta Unidad el estudiante deberá ser capaz de: Definir la derivada de una función,  Obtener la derivada de una función a partir de su definición, Enunciar los teoremas básicos referentes a la derivada, Obtener la derivada de una función aplicando teoremas, Aplicar el teorema regla de la cadena para obtener la derivada de una función compuesta, Obtener las derivadas de orden superior de una función dada.', 1, 4, '2019-12-21 07:34:27', '2020-01-05 09:40:57'),
(4, 'UNIDAD 5: APLICACIONES DE LA DERIVADA', 'Al finalizar esta Unidad el estudiante será capaz de: Resolver problemas que involucren máximos y mínimos de una función, Aplicar la regla de L’Hóspital para evaluar limites, Resolver problemas sobre tasas relacionadas, Resolver problemas usando diferenciales.', 1, 5, '2019-12-21 07:34:57', '2020-01-05 09:40:51'),
(5, 'UNIDAD 1: Matrices y Determinantes', NULL, 2, 1, '2019-12-27 07:42:33', '2019-12-30 04:38:15'),
(6, 'UNIDAD 2: Coordenadas polares', NULL, 2, 2, '2019-12-27 07:44:22', '2019-12-30 04:38:16'),
(7, 'UNIDAD 3: Algunos sistemas de coordenadas en el espacio', NULL, 2, 3, '2019-12-27 07:45:11', '2019-12-30 04:38:16'),
(8, 'UNIDAD 4: Geometría del espacio', NULL, 2, 4, '2019-12-27 07:46:20', '2019-12-30 04:38:16'),
(9, 'UNIDAD 5: Funciones de varias variables (Cálculo diferencial)', NULL, 2, 5, '2019-12-27 07:47:19', '2019-12-30 04:38:16'),
(10, 'UNIDAD 6: Funciones de varias variables (Cálculo integral)', NULL, 2, 6, '2019-12-27 07:48:24', '2019-12-30 04:38:16'),
(12, 'UNIDAD 1: Estática de fluidos', 'Explicar los conceptos y las leyes fundamentales de los fluidos Ideales en reposo', 3, 1, '2020-01-04 22:13:41', '2020-01-04 22:16:09'),
(13, 'UNIDAD 2: Dinámica de fluidos', 'Explicar los conceptos y las leyes fundamentales de la dinámica de los fluidos.', 3, 2, '2020-01-04 22:14:01', '2020-01-04 22:16:23'),
(14, 'UNIDAD 3: Oscilaciones', 'Conocer las características físicas de los sistemas oscilatorios.', 3, 3, '2020-01-04 22:14:13', '2020-01-04 22:16:35'),
(15, 'UNIDAD 4: Movimiento ondulatorio', 'Explicará los siguientes términos: movimiento periódico, movimiento armónico simple (M.A.S.), movimiento armónico amortiguado (M.A.A.), movimiento armónico forzado (M.A.F.).', 3, 4, '2020-01-04 22:14:33', '2020-01-04 22:16:48'),
(16, 'UNIDAD 5: Temperatura', 'Definir temperatura y las escalas de temperatura.', 3, 5, '2020-01-04 22:14:47', '2020-01-04 22:17:25'),
(17, 'UNIDAD 6: Calor y primera ley termodinámica', 'Explicar la primera ley de la termodinámica y aplicarla a procesos termodinámicos en sistemas que contienen gas ideal.', 3, 6, '2020-01-04 22:15:08', '2020-01-04 22:17:37'),
(18, 'UNIDAD 7: Entropía y segunda ley termodinámica', 'Explicar y definir las diferentes versiones de la segunda ley de la Termodinámica.', 3, 7, '2020-01-04 22:15:44', '2020-01-04 22:17:49'),
(19, 'UNIDAD I: Antecedentes y evolución de las herramientas informáticas', NULL, 4, 1, '2020-01-05 05:49:40', '2020-01-05 05:49:40'),
(20, 'UNIDAD 2: Herramientas para la programación de proyectos', NULL, 4, 2, '2020-01-05 05:57:31', '2020-01-05 05:57:31'),
(21, 'UNIDAD 3: Herramientas para análisis y diseño', NULL, 4, 3, '2020-01-05 06:01:40', '2020-01-05 06:01:40'),
(22, 'UNIDAD 4: Herramientas para gestión de base de datos', NULL, 4, 4, '2020-01-05 06:30:32', '2020-01-05 06:30:39'),
(23, 'UNIDAD 1: DESIGUALDADES', NULL, 1, 1, '2020-01-05 09:39:49', '2020-01-05 09:41:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Francisco Navas', 'fran_navas1@hotmail.com', NULL, '$2y$10$hiekiUU5.3GX3veYIVxao.wlTZ.LTVI5x6A4sjgv11mcxlDQow9cm', 'Vpds1oauqTxVwADumpF5U2fssbuLJnN1p5E5iNGX2lTjKHGHslpcV0uV098w', '2019-12-21 05:13:31', '2019-12-21 05:13:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contenidos_temario_id_foreign` (`temario_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indices de la tabla `temarios`
--
ALTER TABLE `temarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temarios_unidad_id_foreign` (`unidad_id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidades_materia_id_foreign` (`materia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `temarios`
--
ALTER TABLE `temarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
