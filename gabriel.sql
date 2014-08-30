-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2014 a las 09:34:00
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gabriel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bets`
--

CREATE TABLE IF NOT EXISTS `bets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text NOT NULL,
  `apuesta` int(11) NOT NULL,
  `ganancia` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pagado` int(11) NOT NULL DEFAULT '0',
  `fecha_pago` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=164 ;

--
-- Volcado de datos para la tabla `bets`
--

INSERT INTO `bets` (`id`, `texto`, `apuesta`, `ganancia`, `fecha`, `pagado`, `fecha_pago`) VALUES
(1, '<tr><td>ML</td><td>1</td><td>a Vs b</td><td>+100</td></tr><tr><td>ML</td><td>1</td><td>Empate vs b</td><td>+200</td></tr><tr><td>ML</td><td>1</td><td>b Vs a</td><td>-300</td></tr>', 10000, 80000, '2014-06-21 23:37:49', 1, '2014-06-21 23:38:20'),
(2, '<tr><td>B 2</td><td>2</td><td>Sur Korea Vs Al</td><td>+100</td></tr><tr><td>ML</td><td>1</td><td>a Vs b</td><td>+100</td></tr><tr><td>A 2</td><td>2</td><td>Algeria Vs Su</td><td>-140</td></tr>', 10000, 68571, '2014-06-21 23:51:46', 0, '0000-00-00 00:00:00'),
(3, '<tr><td>A 2|</td><td>2</td><td>Algeria Vs Su</td><td>-140</td></tr><tr><td>B 2|</td><td>2</td><td>Sur Korea Vs Al</td><td>+100</td></tr>', 10000, 34284, '2014-06-21 23:55:01', 0, '0000-00-00 00:00:00'),
(4, '<tr><td>ML|</td><td>1</td><td>a Vs b</td><td>+100</td></tr><tr><td>ML|</td><td>1</td><td>b Vs a</td><td>-300</td></tr><tr><td>RL 1|</td><td>1</td><td>a Vs b</td><td>+410</td></tr><tr><td>A 2|</td><td>2</td><td>Algeria Vs Su</td><td>-140</td></tr><tr><td>B 2|</td><td>2</td><td>Sur Korea Vs Al</td><td>+100</td></tr>', 10000, 466272, '2014-06-21 23:56:22', 0, '0000-00-00 00:00:00'),
(5, '<tr><td>A 2.5|</td><td>2</td><td>Algeria Vs Su</td><td>-140</td></tr><tr><td>RL +0.5|</td><td>2</td><td>Algeria Vs Su</td><td>-165</td></tr><tr><td>RL -0.5|</td><td>2</td><td>Sur Korea Vs Al</td><td>+130</td></tr><tr><td>ML|</td><td>2</td><td>Algeria Vs Su</td><td>+225</td></tr><tr><td>ML|</td><td>2</td><td>Sur Korea Vs Al</td><td>+130</td></tr>', 10000, 473323, '2014-06-21 23:56:51', 0, '0000-00-00 00:00:00'),
(6, '<tr><td>ML|</td><td>1</td><td>a Vs b</td><td>+100</td></tr><tr><td>RL +0.5|</td><td>2</td><td>Algeria Vs Su</td><td>-165</td></tr><tr><td>RL -0.5|</td><td>2</td><td>SurKor Vs Al</td><td>+130</td></tr><tr><td>A 2.5|</td><td>2</td><td>Algeria Vs Su</td><td>-140</td></tr><tr><td>ML|</td><td>2</td><td>SurKor Vs Al</td><td>+130</td></tr>', 10000, 291290, '2014-06-21 23:57:40', 0, '0000-00-00 00:00:00'),
(7, '<tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 50000, 261352, '2014-06-22 15:03:52', 0, '0000-00-00 00:00:00'),
(8, '<tr><td>ML|</td><td>3</td><td>Empate vs ru</td><td>+235</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 5000, 225575, '2014-06-22 15:05:40', 0, '0000-00-00 00:00:00'),
(9, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>Empate vs po</td><td>+238</td></tr>', 5000, 195228, '2014-06-22 15:06:11', 0, '0000-00-00 00:00:00'),
(10, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 10000, 198624, '2014-06-22 15:07:14', 0, '0000-00-00 00:00:00'),
(11, '<tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr><tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 10000, 511753, '2014-06-22 15:07:40', 0, '0000-00-00 00:00:00'),
(12, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 10000, 102049, '2014-06-22 15:08:09', 0, '0000-00-00 00:00:00'),
(13, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr>', 10000, 76873, '2014-06-22 15:10:12', 0, '0000-00-00 00:00:00'),
(14, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 10000, 102049, '2014-06-22 15:10:33', 0, '0000-00-00 00:00:00'),
(15, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 10000, 76870, '2014-06-22 15:13:01', 0, '0000-00-00 00:00:00'),
(16, '<tr><td>ML|</td><td>3</td><td>Empate vs ru</td><td>+235</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 20000, 350212, '2014-06-22 15:23:30', 0, '0000-00-00 00:00:00'),
(17, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr>', 20000, 67138, '2014-06-22 15:24:35', 0, '0000-00-00 00:00:00'),
(18, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 20000, 67138, '2014-06-22 15:25:11', 0, '0000-00-00 00:00:00'),
(19, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 20000, 1023507, '2014-06-22 15:25:46', 0, '0000-00-00 00:00:00'),
(20, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 511753, '2014-06-22 15:26:12', 0, '0000-00-00 00:00:00'),
(21, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 511753, '2014-06-22 15:26:33', 0, '0000-00-00 00:00:00'),
(22, '<tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 5000, 22150, '2014-06-22 15:27:14', 0, '0000-00-00 00:00:00'),
(23, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 511753, '2014-06-22 15:28:14', 0, '0000-00-00 00:00:00'),
(24, '<tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 262929, '2014-06-22 15:29:16', 0, '0000-00-00 00:00:00'),
(25, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 511753, '2014-06-22 15:29:43', 0, '0000-00-00 00:00:00'),
(26, '<tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 5000, 22150, '2014-06-22 15:30:34', 0, '0000-00-00 00:00:00'),
(27, '<tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr><tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr>', 20000, 396124, '2014-06-22 15:31:16', 0, '0000-00-00 00:00:00'),
(28, '<tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr><tr><td>ML|</td><td>3</td><td>Empate vs ru</td><td>+235</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr>', 10000, 339847, '2014-06-22 15:32:02', 0, '0000-00-00 00:00:00'),
(29, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 198052, '2014-06-22 15:32:51', 0, '0000-00-00 00:00:00'),
(30, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>Empate vs al</td><td>+210</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 10000, 104061, '2014-06-22 15:33:19', 0, '0000-00-00 00:00:00'),
(31, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 10000, 76870, '2014-06-22 15:33:44', 0, '0000-00-00 00:00:00'),
(32, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 10000, 102046, '2014-06-22 15:35:25', 0, '0000-00-00 00:00:00'),
(33, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr>', 5000, 43510, '2014-06-22 15:35:44', 0, '0000-00-00 00:00:00'),
(34, '<tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr><tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 25000, 1279384, '2014-06-22 15:36:18', 0, '0000-00-00 00:00:00'),
(35, '<tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 20000, 88600, '2014-06-22 15:36:52', 0, '0000-00-00 00:00:00'),
(36, '<tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 44300, '2014-06-22 15:37:12', 0, '0000-00-00 00:00:00'),
(37, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr>', 100000, 195238, '2014-06-22 15:37:49', 1, '2014-06-23 19:44:30'),
(38, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 50000, 510258, '2014-06-22 15:38:09', 0, '0000-00-00 00:00:00'),
(39, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>Empate vs al</td><td>+210</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr><tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr>', 50000, 4535765, '2014-06-22 15:38:38', 0, '0000-00-00 00:00:00'),
(40, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr>', 100000, 195238, '2014-06-22 15:39:09', 0, '0000-00-00 00:00:00'),
(41, '', 1000000, 1000000, '2014-06-22 15:39:16', 0, '0000-00-00 00:00:00'),
(42, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr>', 1000000, 1952380, '2014-06-22 15:39:29', 1, '2014-06-23 19:45:07'),
(43, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 200000, 2041037, '2014-06-22 15:39:50', 0, '0000-00-00 00:00:00'),
(44, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 10000, 511753, '2014-06-22 15:53:20', 0, '0000-00-00 00:00:00'),
(45, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 511753, '2014-06-22 15:53:49', 0, '0000-00-00 00:00:00'),
(46, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 511753, '2014-06-22 15:58:07', 0, '0000-00-00 00:00:00'),
(47, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr>', 10000, 198052, '2014-06-22 15:58:31', 0, '0000-00-00 00:00:00'),
(48, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr>', 10000, 385498, '2014-06-22 15:58:58', 0, '0000-00-00 00:00:00'),
(49, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 10000, 511753, '2014-06-22 15:59:14', 0, '0000-00-00 00:00:00'),
(50, '<tr><td>ML|</td><td>3</td><td>belgica Vs ru</td><td>-105</td></tr>', 20000, 39047, '2014-06-22 15:59:52', 0, '0000-00-00 00:00:00'),
(51, '<tr><td>ML|</td><td>3</td><td>rusia Vs be</td><td>+280</td></tr>', 10, 38, '2014-06-22 16:03:03', 0, '0000-00-00 00:00:00'),
(52, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr>', 10, 17, '2014-06-22 16:42:48', 0, '0000-00-00 00:00:00'),
(53, '<tr><td>ML|</td><td>11</td><td>Empate vs me</td><td>+235</td></tr>', 10, 33, '2014-06-22 16:43:28', 0, '0000-00-00 00:00:00'),
(54, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr>', 50000, 196873, '2014-06-22 17:00:12', 0, '0000-00-00 00:00:00'),
(55, '<tr><td>RL +0.5|</td><td>5</td><td>estados unidos Vs po</td><td>-105</td></tr>', 5000000, 9761904, '2014-06-22 18:02:45', 1, '2014-06-23 19:43:40'),
(56, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>ML|</td><td>4</td><td>sur corea Vs al</td><td>+129</td></tr>', 10000, 39374, '2014-06-22 18:12:59', 0, '0000-00-00 00:00:00'),
(57, '<tr><td>ML|</td><td>4</td><td>Empate vs al</td><td>+210</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 15000, 205995, '2014-06-22 18:13:28', 0, '0000-00-00 00:00:00'),
(58, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>11</td><td>croacia Vs me</td><td>+140</td></tr>', 20000, 179056, '2014-06-22 18:14:01', 0, '0000-00-00 00:00:00'),
(59, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr><tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>11</td><td>mexico Vs cr</td><td>+180</td></tr>', 20000, 213080, '2014-06-22 18:14:22', 0, '0000-00-00 00:00:00'),
(60, '<tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr><tr><td>ML|</td><td>5</td><td>estados unidos Vs po</td><td>+343</td></tr>', 200000, 2693440, '2014-06-22 18:15:20', 0, '0000-00-00 00:00:00'),
(61, '<tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 50000, 261351, '2014-06-22 18:15:38', 0, '0000-00-00 00:00:00'),
(62, '<tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 20000, 60800, '2014-06-22 18:35:09', 0, '0000-00-00 00:00:00'),
(63, '<tr><td>ML|</td><td>4</td><td>algeria Vs su</td><td>+204</td></tr>', 10, 30, '2014-06-22 20:02:47', 0, '0000-00-00 00:00:00'),
(64, '<tr><td>ML|</td><td>11</td><td>croacia Vs me</td><td>+140</td></tr>', 10, 24, '2014-06-22 20:03:06', 0, '0000-00-00 00:00:00'),
(65, '<tr><td>RL +0.5|</td><td>5</td><td>estados unidos Vs po</td><td>-105</td></tr>', 10, 19, '2014-06-22 20:12:53', 0, '0000-00-00 00:00:00'),
(66, '<tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>5</td><td>portugal Vs es</td><td>-139</td></tr><tr><td>RL +0|</td><td>11</td><td>croacia Vs me</td><td>-135</td></tr><tr><td>RL +0|</td><td>7</td><td>holanda Vs ch</td><td>-125</td></tr>', 200000, 1607803, '2014-06-22 20:21:42', 0, '0000-00-00 00:00:00'),
(67, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr>', 50000, 365224, '2014-06-23 15:31:11', 0, '0000-00-00 00:00:00'),
(68, '<tr><td>ML|</td><td>6</td><td>Empate vs es</td><td>+305</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr>', 10000, 101250, '2014-06-23 15:32:15', 0, '0000-00-00 00:00:00'),
(69, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 20000, 197708, '2014-06-23 15:32:35', 0, '0000-00-00 00:00:00'),
(70, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr>', 10000, 33832, '2014-06-23 15:33:04', 0, '0000-00-00 00:00:00'),
(71, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>Empate vs ch</td><td>+220</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>Empate vs me</td><td>+235</td></tr>', 10000, 159949, '2014-06-23 15:33:27', 0, '0000-00-00 00:00:00'),
(72, '<tr><td>ML|</td><td>6</td><td>autralia Vs es</td><td>+565</td></tr><tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr><tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr>', 10000, 3564466, '2014-06-23 15:33:52', 0, '0000-00-00 00:00:00'),
(73, '<tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr><tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr>', 10000, 61200, '2014-06-23 15:34:12', 0, '0000-00-00 00:00:00'),
(74, '<tr><td>ML|</td><td>6</td><td>autralia Vs es</td><td>+565</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 10000, 176225, '2014-06-23 15:34:24', 0, '0000-00-00 00:00:00'),
(75, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 20000, 179056, '2014-06-23 15:35:42', 0, '0000-00-00 00:00:00'),
(76, '<tr><td>A 2.5|</td><td>7</td><td>holanda Vs ch</td><td>-140</td></tr><tr><td>A 2.5|</td><td>16</td><td>croacia Vs me</td><td>-110</td></tr><tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr>', 30000, 146499, '2014-06-23 15:36:22', 0, '0000-00-00 00:00:00'),
(77, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>A 2.5|</td><td>16</td><td>croacia Vs me</td><td>-110</td></tr>', 10000, 71212, '2014-06-23 15:36:41', 0, '0000-00-00 00:00:00'),
(78, '<tr><td>RL 1/2|</td><td>6</td><td>espaÃ±a Vs au</td><td>+100</td></tr><tr><td>A 2.5|</td><td>7</td><td>holanda Vs ch</td><td>-140</td></tr><tr><td>RL +2.5|</td><td>8</td><td>camerun Vs br</td><td>-148</td></tr><tr><td>B 205|</td><td>16</td><td>mexico Vs cr</td><td>-155</td></tr>', 10000, 94514, '2014-06-23 15:37:14', 0, '0000-00-00 00:00:00'),
(79, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr>', 10000, 1884590, '2014-06-23 15:37:35', 0, '0000-00-00 00:00:00'),
(80, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr><tr><td>ML|</td><td>13</td><td>italia Vs ur</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 5000, 977304, '2014-06-23 15:38:25', 0, '0000-00-00 00:00:00'),
(81, '<tr><td>ML|</td><td>6</td><td>autralia Vs es</td><td>+565</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr><tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr><tr><td>ML|</td><td>13</td><td>italia Vs ur</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 5000, 4349925, '2014-06-23 15:39:00', 0, '0000-00-00 00:00:00'),
(83, '<tr><td>ML|</td><td>6</td><td>autralia Vs es</td><td>+565</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr><tr><td>ML|</td><td>13</td><td>italia Vs ur</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 5000, 1921216, '2014-06-23 15:41:28', 0, '0000-00-00 00:00:00'),
(84, '<tr><td>ML|</td><td>6</td><td>autralia Vs es</td><td>+565</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr><tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr><tr><td>ML|</td><td>13</td><td>italia Vs ur</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 5000, 1739967, '2014-06-23 15:42:00', 0, '0000-00-00 00:00:00'),
(85, '<tr><td>A 2.5|</td><td>7</td><td>holanda Vs ch</td><td>-140</td></tr><tr><td>ML|</td><td>6</td><td>autralia Vs es</td><td>+565</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 20000, 604186, '2014-06-23 15:42:42', 0, '0000-00-00 00:00:00'),
(86, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>A 2.5|</td><td>7</td><td>holanda Vs ch</td><td>-140</td></tr><tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 10000, 1170340, '2014-06-23 15:43:05', 0, '0000-00-00 00:00:00'),
(87, '<tr><td>B 3|</td><td>6</td><td>espaÃ±a Vs au</td><td>-125</td></tr><tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr><tr><td>B 3.5|</td><td>8</td><td>camerun Vs br</td><td>-141</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 30000, 623701, '2014-06-23 15:43:27', 0, '0000-00-00 00:00:00'),
(88, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr>', 20000, 1051000, '2014-06-23 15:43:39', 0, '0000-00-00 00:00:00'),
(89, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr>', 10000, 73044, '2014-06-23 15:44:51', 0, '0000-00-00 00:00:00'),
(90, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr><tr><td>ML|</td><td>6</td><td>autralia Vs es</td><td>+565</td></tr>', 10000, 169575, '2014-06-23 15:45:18', 0, '0000-00-00 00:00:00'),
(91, '<tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr>', 5000, 105100, '2014-06-23 15:45:33', 0, '0000-00-00 00:00:00'),
(92, '<tr><td>ML|</td><td>7</td><td>Empate vs ch</td><td>+220</td></tr>', 5000, 16000, '2014-06-23 15:46:27', 0, '0000-00-00 00:00:00'),
(93, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr>', 10000, 25000, '2014-06-23 15:46:46', 1, '2014-06-23 19:43:28'),
(94, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr>', 10000, 25500, '2014-06-23 15:47:01', 0, '0000-00-00 00:00:00'),
(95, '<tr><td>ML|</td><td>7</td><td>Empate vs ch</td><td>+220</td></tr>', 5000, 16000, '2014-06-23 15:47:17', 0, '0000-00-00 00:00:00'),
(96, '<tr><td>ML|</td><td>6</td><td>autralia Vs es</td><td>+565</td></tr><tr><td>RL +2.5|</td><td>8</td><td>camerun Vs br</td><td>-148</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 5000, 133718, '2014-06-23 15:47:52', 0, '0000-00-00 00:00:00'),
(97, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr>', 100000, 250000, '2014-06-23 15:48:17', 0, '0000-00-00 00:00:00'),
(98, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 100000, 895291, '2014-06-23 15:48:43', 0, '0000-00-00 00:00:00'),
(99, '<tr><td>RL 1/2|</td><td>6</td><td>autralia Vs es</td><td>-146</td></tr><tr><td>RL +2.5|</td><td>8</td><td>camerun Vs br</td><td>-148</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 200000, 1097395, '2014-06-23 15:49:22', 0, '0000-00-00 00:00:00'),
(100, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>RL 1/2|</td><td>6</td><td>autralia Vs es</td><td>-146</td></tr><tr><td>B 205|</td><td>13</td><td>uruguay Vs it</td><td>-140</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 200000, 2806701, '2014-06-23 15:49:47', 0, '0000-00-00 00:00:00'),
(101, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>RL +2.5|</td><td>8</td><td>camerun Vs br</td><td>-148</td></tr><tr><td>B 2.5|</td><td>12</td><td>costa rica Vs in</td><td>-105</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 300000, 4768445, '2014-06-23 15:50:17', 0, '0000-00-00 00:00:00'),
(102, '<tr><td>B 3|</td><td>6</td><td>espaÃ±a Vs au</td><td>-125</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>16</td><td>Empate vs me</td><td>+235</td></tr>', 50000, 753750, '2014-06-23 15:50:55', 0, '0000-00-00 00:00:00'),
(103, '<tr><td>RL 1/2|</td><td>6</td><td>autralia Vs es</td><td>-146</td></tr><tr><td>A 2.5|</td><td>7</td><td>holanda Vs ch</td><td>-140</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 50000, 346610, '2014-06-23 15:51:16', 0, '0000-00-00 00:00:00'),
(104, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 150000, 1931250, '2014-06-23 15:52:02', 0, '0000-00-00 00:00:00'),
(105, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>B 2.5|</td><td>12</td><td>costa rica Vs in</td><td>-105</td></tr><tr><td>ML|</td><td>13</td><td>Empate vs ur</td><td>+205</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr>', 10000, 391515, '2014-06-23 15:53:10', 0, '0000-00-00 00:00:00'),
(106, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 40000, 1287500, '2014-06-23 15:54:08', 0, '0000-00-00 00:00:00'),
(107, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 40000, 515000, '2014-06-23 15:54:25', 0, '0000-00-00 00:00:00'),
(108, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 20000, 149009, '2014-06-23 15:54:50', 0, '0000-00-00 00:00:00'),
(109, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr>', 50000, 172550, '2014-06-23 15:55:28', 0, '0000-00-00 00:00:00'),
(110, '<tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>Empate vs ch</td><td>+220</td></tr>', 50000, 216534, '2014-06-23 15:55:43', 0, '0000-00-00 00:00:00'),
(111, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr><tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 20000, 182640, '2014-06-23 15:57:39', 0, '0000-00-00 00:00:00'),
(112, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr>', 10000, 25500, '2014-06-23 15:58:05', 0, '0000-00-00 00:00:00'),
(113, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 10000, 73044, '2014-06-23 15:58:46', 0, '0000-00-00 00:00:00'),
(114, '<tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 5000, 12000, '2014-06-23 15:59:00', 0, '0000-00-00 00:00:00'),
(115, '<tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr>', 10000, 73044, '2014-06-23 15:59:41', 0, '0000-00-00 00:00:00'),
(116, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr><tr><td>ML|</td><td>6</td><td>espaÃ±a Vs au</td><td>-283</td></tr>', 5000, 17255, '2014-06-23 16:00:01', 0, '0000-00-00 00:00:00'),
(117, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr>', 50000, 337384, '2014-06-23 16:00:24', 0, '0000-00-00 00:00:00'),
(118, '<tr><td>ML|</td><td>7</td><td>chile Vs ho</td><td>+155</td></tr>', 70000, 178500, '2014-06-23 16:01:36', 0, '0000-00-00 00:00:00'),
(119, '<tr><td>ML|</td><td>8</td><td>Empate vs ca</td><td>+807</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 10000, 240355, '2014-06-23 16:07:42', 0, '0000-00-00 00:00:00'),
(120, '<tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 30000, 72000, '2014-06-23 16:07:57', 0, '0000-00-00 00:00:00'),
(121, '<tr><td>ML|</td><td>16</td><td>Empate vs me</td><td>+235</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr>', 10000, 36935, '2014-06-23 16:08:16', 0, '0000-00-00 00:00:00'),
(122, '<tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 30000, 72000, '2014-06-23 16:08:32', 0, '0000-00-00 00:00:00'),
(123, '<tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 20000, 58435, '2014-06-23 16:09:31', 0, '0000-00-00 00:00:00'),
(124, '<tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 10000, 26500, '2014-06-23 16:10:22', 0, '0000-00-00 00:00:00'),
(125, '<tr><td>ML|</td><td>8</td><td>Empate vs ca</td><td>+807</td></tr>', 5000, 45350, '2014-06-23 16:12:29', 0, '0000-00-00 00:00:00'),
(126, '<tr><td>ML|</td><td>16</td><td>Empate vs me</td><td>+235</td></tr>', 5000, 16750, '2014-06-23 16:13:02', 0, '0000-00-00 00:00:00'),
(127, '<tr><td>RL +0|</td><td>16</td><td>croacia Vs me</td><td>-135</td></tr>', 5000000, 8703703, '2014-06-23 16:55:13', 0, '0000-00-00 00:00:00'),
(128, '<tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 10000, 557030, '2014-06-23 17:57:19', 0, '0000-00-00 00:00:00'),
(129, '<tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 20000, 48000, '2014-06-23 18:00:03', 0, '0000-00-00 00:00:00'),
(130, '<tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 8000, 21200, '2014-06-23 18:01:06', 0, '0000-00-00 00:00:00'),
(131, '<tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>12</td><td>inglaterra  Vs co</td><td>-125</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 20000, 204412, '2014-06-23 18:03:04', 0, '0000-00-00 00:00:00'),
(132, '<tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 50000, 132307, '2014-06-23 18:08:52', 0, '0000-00-00 00:00:00'),
(133, '<tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 50000, 132500, '2014-06-23 18:10:10', 0, '0000-00-00 00:00:00'),
(134, '<tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 50000, 120000, '2014-06-23 18:10:45', 0, '0000-00-00 00:00:00'),
(135, '<tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 50000, 146089, '2014-06-23 18:25:36', 0, '0000-00-00 00:00:00'),
(136, '<tr><td>ML|</td><td>20</td><td>espaÃ±a Vs au</td><td>-283</td></tr><tr><td>ML|</td><td>7</td><td>holanda Vs ch</td><td>+150</td></tr><tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr><tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr><tr><td>ML|</td><td>13</td><td>italia Vs ur</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 5000, 977304, '2014-06-23 18:29:03', 0, '0000-00-00 00:00:00'),
(137, '<tr><td>RL -2.5|</td><td>8</td><td>brasil Vs ca</td><td>-106</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 50000, 233205, '2014-06-23 18:32:24', 0, '0000-00-00 00:00:00'),
(138, '<tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr><tr><td>ML|</td><td>13</td><td>uruguay Vs it</td><td>+150</td></tr><tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr>', 20000, 987340, '2014-06-23 18:43:25', 0, '0000-00-00 00:00:00'),
(139, '<tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr><tr><td>ML|</td><td>18</td><td>nigeria Vs ar</td><td>+700</td></tr>', 10000, 171400, '2014-06-23 18:48:27', 0, '0000-00-00 00:00:00'),
(140, '<tr><td>ML|</td><td>12</td><td>inglaterra  Vs co</td><td>-125</td></tr><tr><td>ML|</td><td>13</td><td>italia Vs ur</td><td>+165</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 10000, 92700, '2014-06-23 18:52:41', 0, '0000-00-00 00:00:00'),
(141, '<tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr><tr><td>ML|</td><td>13</td><td>uruguay Vs it</td><td>+150</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 10000, 186566, '2014-06-23 18:53:02', 0, '0000-00-00 00:00:00'),
(144, '<tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 10000, 26500, '2014-06-23 19:01:42', 0, '0000-00-00 00:00:00'),
(146, '<tr><td>ML|</td><td>13</td><td>italia Vs ur</td><td>+165</td></tr>', 500000, 1325000, '2014-06-23 19:03:34', 0, '0000-00-00 00:00:00'),
(148, '<tr><td>ML|</td><td>16</td><td>croacia Vs me</td><td>+140</td></tr>', 10000, 24000, '2014-06-23 19:05:42', 0, '0000-00-00 00:00:00'),
(149, '<tr><td>ML|</td><td>8</td><td>Empate vs ca</td><td>+807</td></tr>', 5000, 45350, '2014-06-23 19:08:52', 0, '0000-00-00 00:00:00'),
(150, '<tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr><tr><td>ML|</td><td>13</td><td>uruguay Vs it</td><td>+150</td></tr><tr><td>ML|</td><td>14</td><td>colombia Vs ja</td><td>-106</td></tr>', 20000, 373132, '2014-06-23 19:12:03', 0, '0000-00-00 00:00:00'),
(151, '', 0, 0, '2014-06-23 19:43:41', 1, '2014-06-23 19:43:41'),
(152, '', 0, 0, '2014-06-23 19:45:08', 1, '2014-06-23 19:45:07'),
(153, '<tr><td>ML|</td><td>8</td><td>brasil Vs ca</td><td>-975</td></tr><tr><td>RL +0|</td><td>14</td><td>japon Vs co</td><td>-116</td></tr><tr><td>ML|</td><td>12</td><td>inglaterra  Vs co</td><td>-125</td></tr><tr><td>RL +0|</td><td>16</td><td>croacia Vs me</td><td>-135</td></tr>', 200000, 1286571, '2014-06-23 19:52:04', 0, '0000-00-00 00:00:00'),
(154, '<tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr>', 10000, 210200, '2014-06-23 19:54:57', 0, '0000-00-00 00:00:00'),
(155, '<tr><td>ML|</td><td>16</td><td>mexico Vs cr</td><td>+165</td></tr>', 10000, 26500, '2014-06-23 19:55:36', 0, '0000-00-00 00:00:00'),
(156, '<tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr>', 10000, 210200, '2014-06-23 19:56:38', 0, '0000-00-00 00:00:00'),
(157, '<tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr>', 10000, 210200, '2014-06-23 19:57:19', 0, '0000-00-00 00:00:00'),
(158, '<tr><td>ML|</td><td>21</td><td>Empate vs su</td><td>+335</td></tr>', 10, 43, '2014-06-23 19:57:55', 0, '0000-00-00 00:00:00'),
(159, '<tr><td>ML|</td><td>8</td><td>camerun Vs br</td><td>+2002</td></tr>', 10000, 210200, '2014-06-23 19:58:16', 0, '0000-00-00 00:00:00'),
(160, '<tr><td>ML|</td><td>8</td><td>Empate vs ca</td><td>+807</td></tr>', 5000, 45350, '2014-06-23 20:00:03', 0, '0000-00-00 00:00:00'),
(162, '<tr><td>ML|</td><td>8</td><td>Empate vs ca</td><td>+807</td></tr>', 5000, 45350, '2014-06-23 20:00:28', 0, '0000-00-00 00:00:00'),
(163, '<tr><td>ML|</td><td>12</td><td>costa rica Vs in</td><td>+284</td></tr><tr><td>ML|</td><td>13</td><td>italia Vs ur</td><td>+165</td></tr>', 10000, 101760, '2014-06-24 14:33:15', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `macho` varchar(100) NOT NULL,
  `hembra` varchar(50) NOT NULL,
  `parley1` varchar(50) NOT NULL,
  `parley2` varchar(50) NOT NULL,
  `parley3` varchar(50) NOT NULL,
  `rline1` varchar(50) NOT NULL,
  `rline2` varchar(50) NOT NULL,
  `rline3` varchar(50) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1',
  `rlineg` int(2) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `goles_rline_macho` varchar(5) NOT NULL,
  `goles_rline_hembra` varchar(5) NOT NULL,
  `fechaJuego` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alta` varchar(10) NOT NULL,
  `baja` varchar(10) NOT NULL,
  `goles_alta` varchar(10) NOT NULL,
  `goles_baja` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`id`, `macho`, `hembra`, `parley1`, `parley2`, `parley3`, `rline1`, `rline2`, `rline3`, `visible`, `rlineg`, `fecha`, `goles_rline_macho`, `goles_rline_hembra`, `fechaJuego`, `alta`, `baja`, `goles_alta`, `goles_baja`) VALUES
(1, 'a', 'b', '+100', '-300', '+200', '+410', '-500', '', 1, NULL, '2014-06-21 23:37:34', '1', '1', '2014-06-22 05:00:00', '', '', '', ''),
(2, 'Algeria', 'SurKor', '+225', '+130', '+215', '-165', '+130', '', 1, NULL, '2014-06-21 23:49:16', '+0.5', '-0.5', '2014-06-22 05:00:00', '-140', '+100', '2.5', '2'),
(3, 'belgica', 'rusia', '-105', '+280', '+235', '-105', '-127', '', 1, NULL, '2014-06-22 14:57:10', '', '+0.5', '2014-06-22 16:03:00', '+101', '-147', '2.5', '2.5'),
(4, 'sur corea', 'algeria', '+129', '+204', '+210', '+129', '-165', '', 1, NULL, '2014-06-22 15:00:17', '', '+0.5', '2014-06-22 19:03:00', '+108', '-146', '2.5', '2.5'),
(5, 'estados unidos', 'portugal', '+343', '-139', '+238', '-105', '-139', '', 1, NULL, '2014-06-22 15:02:27', '+0.5', '-0.5', '2014-06-22 22:03:00', '-131', '-109', '2.5', '2.5'),
(6, 'autralia', 'espaÃ±a', '+565', '-283', '+305', '-146', '+100', '', 1, NULL, '2014-06-22 15:18:05', '1/2', '1/2', '2014-06-23 16:00:00', '-125', '-125', '3', '3'),
(7, 'holanda', 'chile', '+150', '+155', '+220', '-125', '-115', '', 1, NULL, '2014-06-22 15:22:51', '+0', '+0', '2014-06-23 19:00:00', '-140', '-107', '2.5', '2.5'),
(8, 'brasil', 'camerun', '-975', '+2002', '+807', '-106', '-148', '', 1, NULL, '2014-06-22 16:31:35', '-2.5', '+2.5', '2014-06-23 20:04:00', '-105', '-141', '3.5', '3.5'),
(9, 'croacia', 'mexico', '+140', '+180', '+235', '-135', '-115', '', 1, NULL, '2014-06-22 16:34:08', '+0', '+0', '2014-06-22 16:34:08', '-110', '-135', '2.5', '2.5'),
(10, 'croacia', 'mexico', '+140', '', '', '-135', '', '', 1, NULL, '2014-06-22 16:36:48', '+0', '', '2014-06-22 16:36:48', '-110', '', '2.5', ''),
(11, 'croacia', 'mexico', '+140', '+180', '+235', '-135', '-115', '', 1, NULL, '2014-06-22 16:39:14', '+0', '+0', '2014-06-23 08:03:00', '-110', '-135', '2.5', '2.5'),
(12, 'inglaterra ', 'costa rica', '-125', '+284', '+250', '-125', '-122', '', 1, NULL, '2014-06-23 15:18:53', '-0.5', '+0.5', '2014-06-24 16:03:00', '-122', '-105', '2.5', '2.5'),
(13, 'italia', 'uruguay', '+165', '+150', '+205', '-105', '-127', '', 1, NULL, '2014-06-23 15:20:56', '+0', '+0', '2014-06-24 16:02:00', '+105', '-140', '2.5', '205'),
(14, 'japon', 'colombia', '+175', '-106', '+225', '-116', '-181', '', 1, NULL, '2014-06-23 15:23:25', '+0', '+0', '2014-06-24 08:02:00', '-122', '-110', '205', '205'),
(15, 'croacia', 'mexico', '+140', '+165', '+235', '-135', '-115', '', 1, NULL, '2014-06-23 15:27:15', '+0', '+0', '2014-06-23 08:04:00', '-155', '-155', '2.5', '2.5'),
(16, 'croacia', 'mexico', '+140', '+165', '+235', '-135', '-115', '', 1, NULL, '2014-06-23 15:30:19', '+0', '+0', '2014-06-24 08:00:00', '-110', '-155', '2.5', '205'),
(17, 'iran', 'bosnia herzegovina', '+245', '+115', '+245', '-135', '+115', '', 1, NULL, '2014-06-23 17:56:42', '+0.5', '-0.5', '2014-06-25 16:02:00', '+100', '-120', '2.5', '2.5'),
(18, 'nigeria', 'argentina', '+700', '-200', '+255', '-120', '-135', '', 1, NULL, '2014-06-23 18:13:33', '+1', '-1', '2014-06-25 16:03:00', '-120', '-120', '2.5', '2.5'),
(19, 'espaÃ±a', 'australia', '-283', '+585', '', '', '', '', 1, NULL, '2014-06-23 18:20:35', '', '', '2014-06-23 06:22:00', '', '', '', ''),
(20, 'autralia', 'espaÃ±a', '+585', '-283', '', '-125', '-125', '', 1, NULL, '2014-06-23 18:28:07', '1.5', '-1.5', '2014-06-23 18:32:00', '', '', '', ''),
(21, 'honduras', 'suiza', '+690', '-235', '+335', '', '', '', 1, NULL, '2014-06-23 18:31:43', '', '', '2014-06-25 20:02:00', '-145', '+105', '2.5', '2.5'),
(22, 'japon', 'colombia', '+255', '-125', '+265', '-110', '-125', '', 1, NULL, '2014-06-24 14:27:01', '+0.5', '-0.5', '2014-06-24 20:04:00', '-135', '-105', '2.5', '2.5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`) VALUES
(1, 'jamper91@hotmail.com', '91050605626', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
