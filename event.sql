-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 10 2023 г., 19:27
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `event`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `phone`, `address`, `first_name`, `last_name`) VALUES
(1, 'admin', 'admin', 'mher012413w@bk.ru', '093100830', 'hasratyan4', 'Mher', 'Hayrapetyan');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_exp` timestamp NULL DEFAULT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `last_name`, `first_name`, `phone`, `address`, `password`, `recovery_hash`, `recovery_exp`, `role`) VALUES
(1, '2023-03-28 00:00:00', '2023-03-25 20:17:22', 'mher012413w@bk.ru', 'Hayrapertyan', 'Mher', '0931008301', 'hasratyan 4', '$2y$10$p2mkoonHondLhY63zL2soOfdwj5yOmc3ivggWEc.wd9R0l411IJ5q', '$2y$10$xYQ3Vn5TIrwUpTvTmzErEef2QDfvTaRrrogMwPyqgNKyHomWnyVSi', '2022-12-16 20:02:56', 'admin'),
(2, '2023-03-28 00:00:00', '2022-12-17 16:35:55', 'mher01112413w@bk.ru', 'exp1Busnes', 'exp1Busnes', '0931008301', 'hasratyan 4', '$2y$10$GxFj6Q0E5ddpOVSqsXxRaO3xMT8cHEvyuApG1ti.s24pFnctXURRq', NULL, NULL, ''),
(70, '2023-31-3', NULL, 'exp1@gmail.com', 'exp1', 'exp1', '32424354325324234', 'asdasdasdasd', '12345678', NULL, NULL, 'user'),
(71, '2023-31-3', NULL, 'exp2@gmail.com', 'exp2', 'exp2', '23423423423', 'sdfsdfsd', '12345678', NULL, NULL, 'user'),
(73, '2023-31-3', NULL, 'exp4@gmail.com', 'exp4', 'exp4', '45645645', 'sdfsdfsdf', '$2b$10$.pL2NbbuEbCthDyGtNyhVO..e1fkjYyiiAUIjLI08bHGQlUKK24z2', NULL, NULL, 'user'),
(74, '2023-31-4', NULL, 'gegham.bareghamyan@mail.ru', 'Bareghamyan', 'Gexam', '098991024', 'tali', '$2b$10$.hZ5070krvlkS690hr6TpOSzQWsu1jWAgewTTFgksHep37JZovPWu', NULL, NULL, 'user'),
(75, NULL, NULL, 'exp7123546@gmail.com', 'exp214123', 'asujdgasjd', '09786097870', 'asdgajshdkasdn', 'dkashkdqadskdjkwqeidaskndjkewq', NULL, NULL, ''),
(76, NULL, NULL, 'uywgjedjashgdkjhask@bk.ru', 'sikhdbaksd', 'asdasd', '43534534', 'dsfhsdifkhbsdf', 'sdfgsdjyhfbksdf', NULL, NULL, ''),
(77, NULL, NULL, 'uywgjedjashgdk@bk.ru', 'sikhdbaksd', 'asdasd', '43534534', 'dsfhsdifkhbsdf', 'sdfgsdjyhfbksdf', NULL, NULL, ''),
(78, NULL, NULL, 'hagjhsdjha@bk.ru', 'isagahkjdba', 'akhsdjhasbd', '871648712937', 'asbdjhbashd', 'asdbhjashbdas', NULL, NULL, ''),
(79, NULL, NULL, 'epx11@gmail', 'expo', 'expo', '29749827490284', 'aknsdkansdkand', '93298wudoan', NULL, NULL, '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
