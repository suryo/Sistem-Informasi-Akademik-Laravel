/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : siakad-db

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 13/01/2023 07:47:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for absensi_guru
-- ----------------------------
DROP TABLE IF EXISTS `absensi_guru`;
CREATE TABLE `absensi_guru`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `guru_id` int NOT NULL,
  `kehadiran_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of absensi_guru
-- ----------------------------

-- ----------------------------
-- Table structure for asdos
-- ----------------------------
DROP TABLE IF EXISTS `asdos`;
CREATE TABLE `asdos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_card` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_asdos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mk_id` int NOT NULL,
  `kode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tmp_lahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asdos
-- ----------------------------
INSERT INTO `asdos` VALUES (1, '1234', '123', 'guru', 0, NULL, 'L', NULL, NULL, NULL, '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dosen
-- ----------------------------
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_card` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_dosen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mk_id` int NOT NULL,
  `kode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tmp_lahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dosen
-- ----------------------------
INSERT INTO `dosen` VALUES (1, '1234', '123', 'guru', 0, NULL, 'L', NULL, NULL, NULL, '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for guru
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_card` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_guru` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` int NOT NULL,
  `kode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tmp_lahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES (1, '1234', '123', 'guru', 0, NULL, 'L', NULL, NULL, NULL, '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for hari
-- ----------------------------
DROP TABLE IF EXISTS `hari`;
CREATE TABLE `hari`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_hari` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hari
-- ----------------------------
INSERT INTO `hari` VALUES (1, 'Senin', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `hari` VALUES (2, 'Selasa', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `hari` VALUES (3, 'Rabu', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `hari` VALUES (4, 'Kamis', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `hari` VALUES (5, 'Jum\'at', '2023-01-10 21:21:19', '2023-01-10 21:21:19');

-- ----------------------------
-- Table structure for jadwal
-- ----------------------------
DROP TABLE IF EXISTS `jadwal`;
CREATE TABLE `jadwal`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `hari_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jadwal
-- ----------------------------

-- ----------------------------
-- Table structure for kehadiran
-- ----------------------------
DROP TABLE IF EXISTS `kehadiran`;
CREATE TABLE `kehadiran`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ket` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kehadiran
-- ----------------------------
INSERT INTO `kehadiran` VALUES (1, 'Hadir', '3C0', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `kehadiran` VALUES (2, 'Izin', '0CF', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `kehadiran` VALUES (3, 'Bertugas Keluar', 'F90', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `kehadiran` VALUES (4, 'Sakit', 'FF0', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `kehadiran` VALUES (5, 'Terlambat', '7F0', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `kehadiran` VALUES (6, 'Tanpa Keterangan', 'F00', '2023-01-10 21:21:19', '2023-01-10 21:21:19');

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------

-- ----------------------------
-- Table structure for mapel
-- ----------------------------
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int NOT NULL,
  `kelompok` enum('A','B','C') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mapel
-- ----------------------------

-- ----------------------------
-- Table structure for matkul
-- ----------------------------
DROP TABLE IF EXISTS `matkul`;
CREATE TABLE `matkul`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_matkul` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester_id` int NOT NULL,
  `kelompok` enum('A','B','C') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of matkul
-- ----------------------------
INSERT INTO `matkul` VALUES (1, 'Algoritma Pemrograman', 1, 'A', '2023-01-10 22:42:17', '2023-01-10 22:42:17', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_03_12_092809_create_hari_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_03_12_092854_create_guru_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_03_12_092926_create_absensi_guru_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_03_12_092941_create_jadwal_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_03_12_092953_create_kehadiran_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_03_12_093010_create_kelas_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_03_12_093018_create_mapel_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_03_12_093027_create_nilai_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_03_12_093036_create_paket_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_03_12_093050_create_pengumuman_table', 1);
INSERT INTO `migrations` VALUES (14, '2020_03_12_093102_create_rapot_table', 1);
INSERT INTO `migrations` VALUES (15, '2020_03_12_093117_create_ruang_table', 1);
INSERT INTO `migrations` VALUES (16, '2020_03_12_093130_create_siswa_table', 1);
INSERT INTO `migrations` VALUES (17, '2020_03_16_102220_create_ulangan_table', 1);
INSERT INTO `migrations` VALUES (18, '2020_04_07_094355_create_sikap_table', 1);

-- ----------------------------
-- Table structure for nilai
-- ----------------------------
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `guru_id` int NOT NULL,
  `kkm` int NOT NULL DEFAULT 70,
  `deskripsi_a` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `deskripsi_b` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `deskripsi_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `deskripsi_d` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nilai
-- ----------------------------

-- ----------------------------
-- Table structure for paket
-- ----------------------------
DROP TABLE IF EXISTS `paket`;
CREATE TABLE `paket`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ket` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paket
-- ----------------------------
INSERT INTO `paket` VALUES (1, 'Bisnis kontruksi dan Properti', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `paket` VALUES (2, 'Desain Permodelan dan Informasi Bangunan', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `paket` VALUES (3, 'Elektronika Industri', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `paket` VALUES (4, 'Otomasi Industri', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `paket` VALUES (5, 'Teknik Pemesinan', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `paket` VALUES (6, 'Teknik dan Bisnis Sepeda Motor', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `paket` VALUES (7, 'Rekayasa Perangkat Lunak', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `paket` VALUES (8, 'Teknik Pengelasan', '2023-01-10 21:21:19', '2023-01-10 21:21:19');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pengumuman
-- ----------------------------
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `opsi` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengumuman
-- ----------------------------
INSERT INTO `pengumuman` VALUES (1, 'pengumuman', 'pengumuman', '2023-01-10 21:21:19', '2023-01-10 21:21:19');

-- ----------------------------
-- Table structure for rapot
-- ----------------------------
DROP TABLE IF EXISTS `rapot`;
CREATE TABLE `rapot`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `siswa_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `p_nilai` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_predikat` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_nilai` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `k_predikat` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `k_deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rapot
-- ----------------------------

-- ----------------------------
-- Table structure for ruang
-- ----------------------------
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruang
-- ----------------------------
INSERT INTO `ruang` VALUES (1, 'Ruang 01', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (2, 'Ruang 02', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (3, 'Ruang 03', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (4, 'Ruang 04', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (5, 'Ruang 05', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (6, 'Ruang 06', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (7, 'Ruang 07', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (8, 'Ruang 08', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (9, 'Ruang 09', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (10, 'Ruang 10', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (11, 'Ruang 11', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (12, 'Ruang 12', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (13, 'Ruang 13', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (14, 'Ruang 14', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (15, 'Ruang 15', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (16, 'Ruang 16', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (17, 'Ruang 17', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (18, 'Ruang 18', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (19, 'Ruang 19', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (20, 'Ruang 20', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (21, 'Ruang 21', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (22, 'Ruang 22', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (23, 'Ruang 23', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (24, 'Ruang 24', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (25, 'Ruang 25', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (26, 'Ruang 26', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (27, 'Ruang 27', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (28, 'Ruang 28', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (29, 'Ruang 29', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (30, 'Ruang 30', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (31, 'Ruang 31', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (32, 'Ruang 32', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (33, 'Ruang 33', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (34, 'Ruang 34', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (35, 'Ruang 35', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (36, 'Ruang 36', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (37, 'Ruang 37', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (38, 'Ruang 38', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (39, 'Ruang 39', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `ruang` VALUES (40, 'Ruang 40', '2023-01-10 21:21:19', '2023-01-10 21:21:19');

-- ----------------------------
-- Table structure for semester
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ket` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES (1, 'Semester 1', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `semester` VALUES (2, 'Semester 2', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `semester` VALUES (3, 'Semester 3', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `semester` VALUES (4, 'Semester 4', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `semester` VALUES (5, 'Semester 5', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `semester` VALUES (6, 'Semester 6', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `semester` VALUES (7, 'Semester 7', '2023-01-10 21:21:19', '2023-01-10 21:21:19');
INSERT INTO `semester` VALUES (8, 'Semester 8', '2023-01-10 21:21:19', '2023-01-10 21:21:19');

-- ----------------------------
-- Table structure for sikap
-- ----------------------------
DROP TABLE IF EXISTS `sikap`;
CREATE TABLE `sikap`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `siswa_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `sikap_1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sikap_2` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sikap_3` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sikap
-- ----------------------------

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_siswa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tmp_lahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siswa
-- ----------------------------

-- ----------------------------
-- Table structure for ulangan
-- ----------------------------
DROP TABLE IF EXISTS `ulangan`;
CREATE TABLE `ulangan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `siswa_id` int NOT NULL,
  `kelas_id` int NOT NULL,
  `guru_id` int NOT NULL,
  `mapel_id` int NOT NULL,
  `ulha_1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ulha_2` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uts` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ulha_3` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uas` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ulangan
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Guru','Siswa','Operator','Dosen','Asdos') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$hNHaTwfevAYgI4G.x7eDEutgNfxCPgsX05TkQPTFfqH5.yqLyHqG2', 'Admin', NULL, NULL, NULL, '2023-01-10 21:21:19', '2023-01-10 21:21:19', NULL);
INSERT INTO `users` VALUES (4, 'asdos', 'asdos@gmail.com', NULL, '$2y$10$IwDB4bGVkMXfUpmcqQy5AOKoPpRp3EDXbzuqGgSEboVS.BrX227p.', 'Asdos', NULL, NULL, NULL, '2023-01-10 23:29:03', '2023-01-10 23:29:03', NULL);

SET FOREIGN_KEY_CHECKS = 1;
