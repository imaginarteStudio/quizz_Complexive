-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.33 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.2.0.6576
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bd_quiz
CREATE DATABASE IF NOT EXISTS `bd_quiz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_quiz`;

-- Dumping structure for table bd_quiz.config
CREATE TABLE IF NOT EXISTS `config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `totalPreguntas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bd_quiz.config: ~0 rows (approximately)
DELETE FROM `config`;
INSERT INTO `config` (`id`, `usuario`, `password`, `totalPreguntas`) VALUES
	(1, 'admin', 'admin', 10);

-- Dumping structure for table bd_quiz.estadisticas
CREATE TABLE IF NOT EXISTS `estadisticas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visitas` int NOT NULL,
  `respondidas` int NOT NULL,
  `completados` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bd_quiz.estadisticas: ~0 rows (approximately)
DELETE FROM `estadisticas`;
INSERT INTO `estadisticas` (`id`, `visitas`, `respondidas`, `completados`) VALUES
	(1, 18, 20, 2);

-- Dumping structure for table bd_quiz.preguntas
CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tema` int NOT NULL,
  `pregunta` text NOT NULL,
  `opcion_a` text NOT NULL,
  `opcion_b` text NOT NULL,
  `opcion_c` text NOT NULL,
  `correcta` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bd_quiz.preguntas: ~40 rows (approximately)
DELETE FROM `preguntas`;
INSERT INTO `preguntas` (`id`, `tema`, `pregunta`, `opcion_a`, `opcion_b`, `opcion_c`, `correcta`) VALUES
	(1, 1, '¿Cuánto es 3 + 2?', '1', '3', '5', 'C'),
	(2, 1, '¿Cuánto es 4 + 0?', '2', '6', '4', 'C'),
	(3, 1, '¿Cuánto es 5 + 1?', '6', '2', '0', 'A'),
	(4, 1, '¿Cuánto es 1 + 2?', '2', '3', '5', 'B'),
	(5, 1, '¿Cuánto es 3 + 4?', '7', '9', '2', 'A'),
	(6, 1, '¿Cuánto es 5 + 3 + 4?', '15', '12', '10', 'B'),
	(7, 1, '¿Cuánto es 6 + 2 + 7?', '9', '14', '15', 'C'),
	(8, 1, '¿Cuánto es 2 + 3 + 8?', '13', '19', '10', 'A'),
	(9, 1, '¿Cuánto es 7 + 5 + 6?', '12', '18', '15', 'B'),
	(10, 1, '¿Cuánto es 4 + 7 + 9?', '20', '22', '18', 'A'),
	(11, 2, '¿Cuánto es 5 - 2?', ' 3', '2', '4', 'A'),
	(12, 2, '¿Cuánto es 4 - 1?', '3', '2', '1', 'A'),
	(13, 2, '¿Cuánto es 3 - 1?', '1', '2', '3', 'B'),
	(14, 2, '¿Cuánto es 8 - 3?', '4', '6', '5', 'C'),
	(15, 2, '¿Cuánto es 7 - 2?', '6', '5', '4', 'B'),
	(16, 2, '¿Cuánto es 6 - 2?', '3', '4', '2', 'B'),
	(17, 2, '¿Cuánto es 9 - 7?', '2', '5', '3', 'A'),
	(18, 2, '¿Cuánto es 15 - 6?', '8', '7', '9', 'C'),
	(19, 2, '¿Cuánto es 12 - 5?', '8', '6', '7', 'C'),
	(20, 2, '¿Cuánto es 18 - 7?', '11', '9', '10', 'A'),
	(21, 3, '¿Cuánto es 2 × 3?', '5', '6', '3', 'B'),
	(22, 3, '¿Cuánto es 1 × 4?', '4', '3', '2', 'A'),
	(23, 3, '¿Cuánto es 3 × 2?', '6', '5', '4', 'A'),
	(24, 3, '¿Cuánto es 5 × 2?', '8', '7', '10', 'C'),
	(25, 3, '¿Cuánto es 3 × 3?', '6', '9', '8', 'B'),
	(26, 3, '¿Cuánto es 4 × 2?', '6', '7', '8', 'C'),
	(27, 3, '¿Cuánto es 6 × 2?', '12', '10', '8', 'A'),
	(28, 3, '¿Cuánto es 8 × 3?', '24', '21', '18', 'A'),
	(29, 3, '¿Cuánto es 7 × 4?', '24', '32', '28', 'C'),
	(30, 3, '¿Cuánto es 8 × 7?', '48', '56', '54', 'B'),
	(31, 4, '¿Cuánto es 6 ÷ 2?', '3', '2', '4', 'A'),
	(32, 4, '¿Cuánto es 4 ÷ 1?', '1', '3', '4', 'C'),
	(33, 4, '¿Cuánto es 8 ÷ 4?', '2', '3', '4', 'A'),
	(34, 4, '¿Cuánto es 12 ÷ 2?', '6', '5', '7', 'A'),
	(35, 4, '¿Cuánto es 9 ÷ 3?', '2', '3', '4', 'B'),
	(36, 4, '¿Cuánto es 10 ÷ 2?', '5', '6', '7', 'A'),
	(37, 4, '¿Cuánto es 15 ÷ 3?', '3', '5', '7', 'B'),
	(38, 4, '¿Cuánto es 21 ÷ 3?', '6', '7', '8', 'B'),
	(39, 4, '¿Cuánto es 16 ÷ 4?', '5', '6', '4', 'C'),
	(40, 4, '¿Cuánto es 18 ÷ 2?', '8', '7', '9', 'C');

-- Dumping structure for table bd_quiz.temas
CREATE TABLE IF NOT EXISTS `temas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bd_quiz.temas: ~4 rows (approximately)
DELETE FROM `temas`;
INSERT INTO `temas` (`id`, `nombre`) VALUES
	(1, 'Sumas'),
	(2, 'Restas'),
	(3, 'Multiplicaciones'),
	(4, 'Divisiones');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
