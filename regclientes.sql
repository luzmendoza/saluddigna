-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-06-2017 a las 05:16:58
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `regclientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calles`
--

CREATE TABLE `calles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colonia_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calles`
--

INSERT INTO `calles` (`id`, `nombre`, `colonia_id`, `created_at`, `updated_at`) VALUES
(1, 'Odit nihil.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29'),
(2, 'Repudiandae culpa eos.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29'),
(3, 'Commodi ipsa vitae.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudads`
--

CREATE TABLE `ciudads` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudads`
--

INSERT INTO `ciudads` (`id`, `nombre`, `estado_id`, `created_at`, `updated_at`) VALUES
(1, 'Aliquam vero.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29'),
(2, 'Velit delectus nostrum.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29'),
(3, 'Omnis dolores.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `calle_id` int(10) UNSIGNED NOT NULL,
  `num_ext` int(11) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `estudio_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `fecha_nacimiento`, `calle_id`, `num_ext`, `codigo_postal`, `estudio_id`, `created_at`, `updated_at`) VALUES
(1, 'Eveniet dolores.', 'Vero nulla.', 'Quod beatae.', '1977-02-28 15:05:30', 2, 123, 80298, 3, '2017-06-26 01:31:29', '2017-06-26 01:31:29'),
(3, 'Ipsum dolores.', 'Sint.', 'Est.', '1991-06-26 06:10:43', 2, 123, 80299, 3, '2017-06-26 01:31:29', '2017-06-26 02:50:14'),
(4, 'luz', 'mendoza', 'reyes', '1989-07-13 00:00:00', 3, 55, 33, 1, '2017-06-26 03:11:26', '2017-06-26 03:11:26'),
(5, 'joel', 'salazar', 'salas', '1970-01-01 00:00:00', 2, 44, 5, 1, '2017-06-26 03:53:28', '2017-06-26 03:53:28'),
(6, 'eva', 'mendoza', 'reyes', '2017-08-06 00:00:00', 2, 88, 9, 1, '2017-06-26 05:56:46', '2017-06-26 05:56:46'),
(7, 'cliente', 'app', 'apm', '1999-04-03 00:00:00', 2, 123, 80298, 3, '2017-06-26 06:25:04', '2017-06-26 08:42:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colonias`
--

CREATE TABLE `colonias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colonias`
--

INSERT INTO `colonias` (`id`, `nombre`, `ciudad_id`, `created_at`, `updated_at`) VALUES
(1, 'Et eum.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29'),
(2, 'Enim officia.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29'),
(3, 'Ullam tenetur.', 2, '2017-06-26 01:31:29', '2017-06-26 01:31:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Sed quo.', '2017-06-26 01:31:28', '2017-06-26 01:31:28'),
(2, 'Alias ut consequatur.', '2017-06-26 01:31:28', '2017-06-26 01:31:28'),
(3, 'Non velit animi.', '2017-06-26 01:31:28', '2017-06-26 01:31:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`id`, `nombre`, `precio`, `created_at`, `updated_at`) VALUES
(1, 'Rerum in.', 5, '2017-06-26 01:31:28', '2017-06-26 01:31:28'),
(3, 'Laborum sed corporis.', 5, '2017-06-26 01:31:28', '2017-06-26 01:31:28'),
(4, 'Glucosa', 200, '2017-06-26 08:40:12', '2017-06-26 08:40:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(35, '2014_10_12_000000_create_users_table', 1),
(36, '2014_10_12_100000_create_password_resets_table', 1),
(37, '2017_06_24_182658_create_estudios_table', 1),
(38, '2017_06_25_005234_create_estados_table', 1),
(39, '2017_06_25_014744_create_ciudads_table', 1),
(40, '2017_06_25_175734_create_colonias_table', 1),
(41, '2017_06_25_184003_create_calles_table', 1),
(42, '2017_06_25_191220_create_clientes_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calles`
--
ALTER TABLE `calles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calles_colonia_id_foreign` (`colonia_id`);

--
-- Indices de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ciudads_estado_id_foreign` (`estado_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_calle_id_foreign` (`calle_id`),
  ADD KEY `clientes_estudio_id_foreign` (`estudio_id`);

--
-- Indices de la tabla `colonias`
--
ALTER TABLE `colonias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colonias_ciudad_id_foreign` (`ciudad_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calles`
--
ALTER TABLE `calles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `colonias`
--
ALTER TABLE `colonias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calles`
--
ALTER TABLE `calles`
  ADD CONSTRAINT `calles_colonia_id_foreign` FOREIGN KEY (`colonia_id`) REFERENCES `colonias` (`id`);

--
-- Filtros para la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD CONSTRAINT `ciudads_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_calle_id_foreign` FOREIGN KEY (`calle_id`) REFERENCES `calles` (`id`),
  ADD CONSTRAINT `clientes_estudio_id_foreign` FOREIGN KEY (`estudio_id`) REFERENCES `estudios` (`id`);

--
-- Filtros para la tabla `colonias`
--
ALTER TABLE `colonias`
  ADD CONSTRAINT `colonias_ciudad_id_foreign` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudads` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
