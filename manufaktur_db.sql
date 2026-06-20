-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.33 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for manufaktur_db
CREATE DATABASE IF NOT EXISTS `manufaktur_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `manufaktur_db`;

-- Dumping structure for table manufaktur_db.karyawan
CREATE TABLE IF NOT EXISTS `karyawan` (
  `id_karyawan` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `alamat` text,
  `no_hp` varchar(15) DEFAULT NULL,
  `gaji` double DEFAULT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table manufaktur_db.karyawan: ~3 rows (approximately)
INSERT INTO `karyawan` (`id_karyawan`, `nama`, `jabatan`, `alamat`, `no_hp`, `gaji`) VALUES
	(1, 'Budi', 'Operatorrr', 'Bandung', '08123456789', 0),
	(3, 'Budi', 'Operatorrr', NULL, NULL, 2000000),
	(4, 'bimo', 'direktur', NULL, NULL, 10000000);

-- Dumping structure for table manufaktur_db.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table manufaktur_db.produk: ~3 rows (approximately)
INSERT INTO `produk` (`id_produk`, `nama_produk`, `kategori`, `harga`, `stok`, `created_at`) VALUES
	(1, 'Besi Plat', 'Material', 50000.00, 100, '2026-06-19 07:36:50'),
	(3, 'kursi', NULL, 2000000.00, 20, '2026-06-19 09:33:30'),
	(4, 'sapu', NULL, 200000.00, 20, '2026-06-19 13:57:54'),
	(5, 'meja', NULL, 200000.00, 20, '2026-06-20 10:42:05');

-- Dumping structure for table manufaktur_db.produksi
CREATE TABLE IF NOT EXISTS `produksi` (
  `id_produksi` int NOT NULL AUTO_INCREMENT,
  `id_produk` int DEFAULT NULL,
  `id_karyawan` int DEFAULT NULL,
  `jumlah_produksi` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_produksi`),
  KEY `id_produk` (`id_produk`),
  KEY `id_karyawan` (`id_karyawan`),
  CONSTRAINT `produksi_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  CONSTRAINT `produksi_ibfk_2` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table manufaktur_db.produksi: ~2 rows (approximately)
INSERT INTO `produksi` (`id_produksi`, `id_produk`, `id_karyawan`, `jumlah_produksi`, `tanggal`) VALUES
	(1, 1, 1, 10, '2026-05-22'),
	(4, 3, 3, 10, '2026-06-08'),
	(5, 5, 4, 20, '2026-06-02');

-- Dumping structure for table manufaktur_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table manufaktur_db.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
	(1, 'admin', '123', 'admin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
