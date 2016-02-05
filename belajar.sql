/*
Navicat MySQL Data Transfer

Source Server         : local_xampp
Source Server Version : 50621
Source Host           : 127.0.0.1:13308
Source Database       : belajar

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-02-05 10:28:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT,
  `id_kota_fk` int(11) DEFAULT NULL,
  `nama_kecamatan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kecamatan`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES ('1', '1', 'Asemrowo');
INSERT INTO `kecamatan` VALUES ('2', '1', 'Kenjeran');
INSERT INTO `kecamatan` VALUES ('3', '1', 'Rungkut');
INSERT INTO `kecamatan` VALUES ('4', '1', 'Wonokromo');
INSERT INTO `kecamatan` VALUES ('5', '2', 'Arjosari');
INSERT INTO `kecamatan` VALUES ('6', '2', 'Donomulyo');
INSERT INTO `kecamatan` VALUES ('7', '2', 'Tulungrejo');
INSERT INTO `kecamatan` VALUES ('8', '2', 'Kasembon');
INSERT INTO `kecamatan` VALUES ('9', '3', 'Banyumanik');
INSERT INTO `kecamatan` VALUES ('10', '3', 'Genuk');
INSERT INTO `kecamatan` VALUES ('11', '3', 'Tembalang');
INSERT INTO `kecamatan` VALUES ('12', '3', 'Tugu');
INSERT INTO `kecamatan` VALUES ('13', '4', 'Ngadirejo');
INSERT INTO `kecamatan` VALUES ('14', '4', 'Selogiri');
INSERT INTO `kecamatan` VALUES ('15', '4', 'Manyaran');
INSERT INTO `kecamatan` VALUES ('16', '4', 'Bulukerto');
INSERT INTO `kecamatan` VALUES ('17', '5', 'Buahbatu');
INSERT INTO `kecamatan` VALUES ('18', '5', 'Gedebage');
INSERT INTO `kecamatan` VALUES ('19', '5', 'Ujungberung');
INSERT INTO `kecamatan` VALUES ('20', '5', 'Sukasari');
INSERT INTO `kecamatan` VALUES ('21', '6', 'Plered');
INSERT INTO `kecamatan` VALUES ('22', '6', 'Jatiluhur');
INSERT INTO `kecamatan` VALUES ('23', '6', 'Wanayasa');
INSERT INTO `kecamatan` VALUES ('24', '6', 'Cibatu');
INSERT INTO `kecamatan` VALUES ('25', '7', 'Tanah Sareal');
INSERT INTO `kecamatan` VALUES ('26', '7', 'Bogor Selatan');
INSERT INTO `kecamatan` VALUES ('28', '7', 'Bogor Barat');

-- ----------------------------
-- Table structure for kota
-- ----------------------------
DROP TABLE IF EXISTS `kota`;
CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL AUTO_INCREMENT,
  `id_provinsi_fk` int(11) DEFAULT NULL,
  `nama_kota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO `kota` VALUES ('1', '1', 'Surabaya');
INSERT INTO `kota` VALUES ('2', '1', 'Malang');
INSERT INTO `kota` VALUES ('3', '2', 'Semarang');
INSERT INTO `kota` VALUES ('4', '2', 'Wonogiri');
INSERT INTO `kota` VALUES ('5', '3', 'Bandung');
INSERT INTO `kota` VALUES ('6', '3', 'Purwakarta');
INSERT INTO `kota` VALUES ('7', '3', 'Bogor');

-- ----------------------------
-- Table structure for provinsi
-- ----------------------------
DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_provinsi`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO `provinsi` VALUES ('1', 'Jawa Timur');
INSERT INTO `provinsi` VALUES ('2', 'Jawa Tengah');
INSERT INTO `provinsi` VALUES ('3', 'Jawa Barat');

-- ----------------------------
-- View structure for vw_kecamatan
-- ----------------------------
DROP VIEW IF EXISTS `vw_kecamatan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `vw_kecamatan` AS SELECT
	*
FROM
	kecamatan
INNER JOIN kota ON kecamatan.id_kota_fk = kota.id_kota
ORDER BY
	nama_kecamatan ;

-- ----------------------------
-- View structure for vw_kota
-- ----------------------------
DROP VIEW IF EXISTS `vw_kota`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `vw_kota` AS SELECT
	*
FROM
	kota
INNER JOIN provinsi ON kota.id_provinsi_fk = provinsi.id_provinsi
ORDER BY
	nama_kota ;
