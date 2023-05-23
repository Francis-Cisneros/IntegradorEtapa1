-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2023 a las 06:47:20
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `job_system`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profesion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_user` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 Admin , 2 Reclutador , 3 Empresa',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 ativo , 2 desactivado',
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

INSERT INTO `users` (`id`, `name`, `surname`, `phone`, `profesion`, `type_user`, `state`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Francis Giovani', '', '', '', 1, 1, 'rakionfranci@gmail.com', NULL, '$2y$10$K3TNPtXuRH5qa8CGiwLhuO0mgsUopsfBPVv5xXWZu37DSd6Eot2gS', NULL, '2023-05-08 10:33:38', '2023-05-08 10:33:38'),
(2, 'Jhon Doe', '', '', '', 1, 1, 'jhon@gmail.com', NULL, '$2y$10$sOb5Z4V3uaT05jYj3r6M0uKytNDbw0GZIovva7H0l8FSe46nMjaNC', NULL, '2023-05-09 05:57:56', '2023-05-09 05:57:56'),
(3, 'Juan Test', '', '', '', 1, 1, 'juan@gmail.com', NULL, '$2y$10$ARn8UCSGzLWhpg3K4YPUJeOlrKaCEyzzmacdpfsSV.sgSs.gLaMxq', NULL, '2023-05-09 06:24:18', '2023-05-09 06:24:18'),
(4, 'Javier', '', '', '', 1, 1, 'quispe@gmail.com', NULL, '$2y$10$rnO.ewXuar6/SSpOGJKyR.mqcgYphV3UudcWhOE3Kai.Nzt7HnNCG', NULL, '2023-05-23 04:27:37', '2023-05-23 04:27:37'),
(5, 'fiorella', 'Velarde', '987654321', 'Ingenieria Industrial', 3, 1, 'fio@gmail.com', NULL, '$2y$10$FQIhwUvB5H5KaT9vgmdMkuqcgWzG.1NfHZrGDSBUiDk2HnHbGI1oe', NULL, '2023-05-23 05:03:12', '2023-05-23 05:03:12'),
(6, 'Ramon', 'zeballos', '987654321', 'Ingenier Software', 1, 1, 'ramon@gmail.com', NULL, '$2y$10$79disnSp/vZ5RGG3m9iP6u/4U.EUk61or/LPPGXS/AcXWOmh.hzUy', NULL, '2023-05-23 07:23:50', '2023-05-23 07:23:50'),
(7, 'Maria', 'zeballos', '987654321', 'Ingenier Software', 1, 1, 'maria@gmail.com', NULL, '$2y$10$IX91Nnrjk9NRG7.c4m49Oela/9l7W/tiWaCYV2lbj7AHPXi79LPEq', NULL, '2023-05-23 07:28:29', '2023-05-23 07:28:29'),
(8, 'Javier', 'Zarate', '123456789', 'Ingenier Software', 1, 1, 'javier@gmail.com', NULL, '$2y$10$hFpyVODRjaNXPIZA3RSLp.XEm9VejI/FjiBhufmiZd/hLJfQxBu7q', NULL, '2023-05-23 07:39:43', '2023-05-23 07:39:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
