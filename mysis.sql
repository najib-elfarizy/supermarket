/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : mysis

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2018-02-13 14:51:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bo`
-- ----------------------------
DROP TABLE IF EXISTS `bo`;
CREATE TABLE `bo` (
  `NO` int(11) default '0',
  `BO` varchar(3) NOT NULL default '',
  `CABANG` varchar(30) default NULL,
  `ALAMAT` varchar(50) default '-',
  `KOTA` varchar(20) default '-',
  `TLP` varchar(20) default '-',
  `KODE` varchar(10) default '-',
  `KON` varchar(15) default NULL,
  `MASUK` double default '0',
  `KELUAR` double default '0',
  `BAYAR` double default '0',
  `AWAL` double default '0',
  `NPWP` varchar(30) default '-',
  `ALAMAT_NPWP` varchar(100) default '-',
  `TGL_NPWP` date default NULL,
  `SERI_FP` varchar(30) default '-',
  `NAMA_NPWP` varchar(30) default '-',
  PRIMARY KEY  (`BO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bo
-- ----------------------------
INSERT INTO bo VALUES ('0', 'DC', 'AMERTHA SARI DC', '-', '-', '-', '-', 'DC', '0', '0', '0', '0', '1234567890', 'JL. TUKAD PAKERISAN 100X PANJER, DENPASAR, BALI', '2018-01-27', '123', 'PT. HARDYS RETAILINDO');
INSERT INTO bo VALUES ('2', '001', 'SAS MART', 'DENPASAR', '-', '-', '-', '001', '0', '0', '0', '0', '111166677788', 'PULAGAN NUSA PENIDA', '2018-01-28', '-', 'ANDRA ARBAWA');
INSERT INTO bo VALUES ('3', '002', 'AMERTHA SARI PASAR', '-', '-', '-', '-', '002', '0', '0', '0', '0', 'DA', '-', '2018-01-26', '-', '-');

-- ----------------------------
-- Table structure for `mbrand`
-- ----------------------------
DROP TABLE IF EXISTS `mbrand`;
CREATE TABLE `mbrand` (
  `MERK` varchar(20) NOT NULL default '',
  `KET_MERK` varchar(50) default '-',
  PRIMARY KEY  (`MERK`),
  KEY `MERK` (`MERK`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mbrand
-- ----------------------------
INSERT INTO mbrand VALUES ('POCARI', 'POCARI BRAND');
INSERT INTO mbrand VALUES ('ANMUM', 'SUSU IBU HAMIL ANMUM');

-- ----------------------------
-- Table structure for `mcustomer`
-- ----------------------------
DROP TABLE IF EXISTS `mcustomer`;
CREATE TABLE `mcustomer` (
  `KDPL` varchar(15) NOT NULL default '',
  `NAMAPL` varchar(100) default '-',
  `ALAMAT` varchar(200) default '-',
  `KOTA` varchar(20) default NULL,
  `PROPINSI` varchar(20) default NULL,
  `NEGARA` varchar(20) default NULL,
  `KODEPOS` varchar(10) default NULL,
  `TELP` varchar(30) default '-',
  `FAX` varchar(30) default NULL,
  `EMAIL` varchar(50) default '-',
  `KONTAK` varchar(30) default NULL,
  `TGLREG` date default NULL,
  `TOPY` tinyint(4) default '0',
  `JT` tinyint(4) default '0',
  `PPN` varchar(30) default '-',
  `TGLB` date default NULL,
  `TGLD` date default NULL,
  `USR` varchar(10) default '-',
  `BUFF` int(11) default '0',
  `NPWP` varchar(30) default '-',
  `ALAMAT_NPWP` varchar(50) default '-',
  `TGLNPWP` date default NULL,
  `AWAL` double default '0',
  `XAWAL` double default '0',
  `PLAFON` double default '0',
  `PENJUALAN` double default '0',
  `PIUTANG` double default '0',
  `BAYAR` double default '0',
  `POINT` int(11) default '0',
  `REK` varchar(30) default NULL,
  `NAMAREK` varchar(30) default NULL,
  `BANK` varchar(30) default NULL,
  `GRUP` varchar(30) default NULL,
  `TIPE_POTONGAN` varchar(30) default NULL,
  PRIMARY KEY  (`KDPL`),
  KEY `kdpl` USING BTREE (`KDPL`),
  KEY `nama` (`NAMAPL`),
  KEY `alamat` (`ALAMAT`),
  KEY `grup` (`GRUP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcustomer
-- ----------------------------
INSERT INTO mcustomer VALUES ('SP0001', 'ANDRASOFT', 'Jl. Batuyang, Gang Panji IVB No. 13, Batubulan', 'Gianyar', 'Bali', 'Indonesia', '80000', '08113854225', '-', 'andrasoftwarehouse@gmail.com', 'andra', '2018-02-01', '14', '30', 'Dengan Faktur Pajak', null, null, 'andra', '0', '-', '-', null, '0', '0', '0', '0', '0', '0', '0', '', '', '', 'UMUM', null);
INSERT INTO mcustomer VALUES ('PL0001', 'ARBAWA', '', '', '', '', '', '', '', '', '', '2018-02-06', '0', '7', '-', null, null, 'andra', '0', '', '-', null, '0', '0', '10000', '0', '0', '0', '0', '', '', '', 'Silver', 'Pot. Daftar Item');

-- ----------------------------
-- Table structure for `mgrup_customer`
-- ----------------------------
DROP TABLE IF EXISTS `mgrup_customer`;
CREATE TABLE `mgrup_customer` (
  `KODE` varchar(30) NOT NULL default '',
  `GRUP` varchar(50) default NULL,
  `POTONGAN` double default '0',
  `LEVEL` int(11) default '0',
  PRIMARY KEY  (`KODE`),
  KEY `grup` (`GRUP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mgrup_customer
-- ----------------------------
INSERT INTO mgrup_customer VALUES ('UMUM', 'UMUM', '30', '1');
INSERT INTO mgrup_customer VALUES ('Silver', 'Silver', '10', '1');
INSERT INTO mgrup_customer VALUES ('Gold', 'Gold', '10', '1');
INSERT INTO mgrup_customer VALUES ('BRONZE', 'BRONZE', '0', '4');

-- ----------------------------
-- Table structure for `mktg`
-- ----------------------------
DROP TABLE IF EXISTS `mktg`;
CREATE TABLE `mktg` (
  `KTG` varchar(20) NOT NULL default '',
  `KET_KTG` varchar(50) default '-',
  PRIMARY KEY  (`KTG`),
  KEY `KTG` USING BTREE (`KTG`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mktg
-- ----------------------------
INSERT INTO mktg VALUES ('001', 'SUSU BUBUK');
INSERT INTO mktg VALUES ('032', 'SNACK');

-- ----------------------------
-- Table structure for `mktgsub`
-- ----------------------------
DROP TABLE IF EXISTS `mktgsub`;
CREATE TABLE `mktgsub` (
  `SUBKTG` varchar(20) NOT NULL default '',
  `KET_SUBKTG` varchar(50) default '-',
  `KTG` varchar(20) default NULL,
  PRIMARY KEY  (`SUBKTG`),
  KEY `SUBKTG` USING BTREE (`SUBKTG`),
  KEY `KTG` (`KTG`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mktgsub
-- ----------------------------
INSERT INTO mktgsub VALUES ('001', 'SUSU BAYI', '001');
INSERT INTO mktgsub VALUES ('002', 'SUSU PERTUMBUHAN', '001');
INSERT INTO mktgsub VALUES ('032001', 'SNACK KMODERN', '032');
INSERT INTO mktgsub VALUES ('032002', 'SNACK TRADITIONAL', '032');

-- ----------------------------
-- Table structure for `mnomor`
-- ----------------------------
DROP TABLE IF EXISTS `mnomor`;
CREATE TABLE `mnomor` (
  `JENIS` varchar(30) default NULL,
  `KOL1` varchar(10) default NULL,
  `KOL2` varchar(10) default NULL,
  `KOL3` varchar(10) default NULL,
  `KOL4` varchar(10) default NULL,
  `KOL5` varchar(10) default NULL,
  `KOL6` varchar(10) default NULL,
  `KOL7` varchar(10) default NULL,
  `DGT` int(11) default '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mnomor
-- ----------------------------
INSERT INTO mnomor VALUES ('Pesanan Beli', '[CNT]', '/', 'PB', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Pesanan Jual', '[CNT]', '/', 'PJ', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Pembelian', '[CNT]', '/', 'BL', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Penjualan', '[CNT]', '/', 'JL', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Retur Beli', '[CNT]', '/', 'RB', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Retur Jual', '[CNT]', '/', 'RJ', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Item Masuk', '[CNT]', '/', 'IM', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Item Keluar', '[CNT]', '/', 'IK', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Item Transfer', '[CNT]', '/', 'IT', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Item Opname', '[CNT]', '/', 'SO', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Kas Masuk', '[CNT]', '/', 'KM', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Sales', 'SL', '', '[CNT]', null, null, null, null, '4');
INSERT INTO mnomor VALUES ('Kas Keluar', '[CNT]', '/', 'KK', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Pelanggan', 'PL', '', '[CNT]', null, null, null, null, '4');
INSERT INTO mnomor VALUES ('Transfer Kas', '[CNT]', '/', 'KT', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Jurnal', '[CNT]', '/', 'JH', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Hutang', '[CNT]', '/', 'PH', '/', '[DEPT]', '/', '[THNBLN]', '4');
INSERT INTO mnomor VALUES ('Supplier', 'SP', '', '[CNT]', null, null, null, null, '4');
INSERT INTO mnomor VALUES ('Piutang', '[CNT]', '/', 'PP', '/', '[DEPT]', '/', '[THNBLN]', '4');

-- ----------------------------
-- Table structure for `mperusahaan`
-- ----------------------------
DROP TABLE IF EXISTS `mperusahaan`;
CREATE TABLE `mperusahaan` (
  `NAMA_PERUSAHAAN` varchar(30) default NULL,
  `ALAMAT1` varchar(50) default NULL,
  `ALAMAT2` varchar(50) default NULL,
  `TELP` varchar(30) default NULL,
  `FAX` varchar(30) default NULL,
  `NPWP` varchar(30) default NULL,
  `TGL_PKP` date default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mperusahaan
-- ----------------------------
INSERT INTO mperusahaan VALUES ('ANDRASOFT', 'JL. BATUYANG, GANG PANJI IVB NO.13 BATUBULAN', 'SUKAWATI, GIANYAR, BALI', '08113854225', '-', '1', '2018-01-31');

-- ----------------------------
-- Table structure for `msales`
-- ----------------------------
DROP TABLE IF EXISTS `msales`;
CREATE TABLE `msales` (
  `KDSL` varchar(15) NOT NULL default '',
  `NAMASL` varchar(100) default '-',
  `ALAMAT` varchar(200) default '-',
  `KOTA` varchar(20) default NULL,
  `PROPINSI` varchar(20) default NULL,
  `NEGARA` varchar(20) default NULL,
  `KODEPOS` varchar(10) default NULL,
  `TELP` varchar(30) default '-',
  `FAX` varchar(30) default NULL,
  `EMAIL` varchar(50) default '-',
  `KONTAK` varchar(30) default NULL,
  `TGLREG` date default NULL,
  `TOD` tinyint(4) default '0',
  `JT` tinyint(4) default '0',
  `TGLB` date default NULL,
  `TGLD` date default NULL,
  `USR` varchar(10) default '-',
  `BUFF` int(11) default '0',
  `NPWP` varchar(30) default '-',
  `ALAMAT_NPWP` varchar(50) default '-',
  `TGLNPWP` date default NULL,
  `AWAL` double default '0',
  `XAWAL` double default '0',
  `PENJUALAN` double default '0',
  `FEE` double default '0',
  `TARIK` double default '0',
  `REK` varchar(30) default NULL,
  `NAMAREK` varchar(30) default NULL,
  `BANK` varchar(30) default NULL,
  `JENISFEE` int(11) default '0',
  `PERSENFEE` double default '0',
  `NOMINALFEE` double default '0',
  PRIMARY KEY  (`KDSL`),
  KEY `kdsl` USING BTREE (`KDSL`),
  KEY `nama` (`NAMASL`),
  KEY `alamat` (`ALAMAT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msales
-- ----------------------------
INSERT INTO msales VALUES ('SP0001', 'ANDRASOFT', 'Jl. Batuyang, Gang Panji IVB No. 13, Batubulan', 'Gianyar', 'Bali', 'Indonesia', '80000', '08113854225', '-', 'andrasoftwarehouse@gmail.com', 'andra', '2018-02-01', '14', '30', null, null, 'andra', '0', '-', '-', null, '0', '0', '0', '0', '0', '', '', '', '2', '50', '1000');
INSERT INTO msales VALUES ('SL0001', 'ARBAWA', '', '', '', '', '', '', '', '', '', '2018-02-06', '0', '0', null, null, 'andra', '0', '', '-', null, '0', '0', '0', '0', '0', '', '', '', '2', '5', '0');

-- ----------------------------
-- Table structure for `msatuan`
-- ----------------------------
DROP TABLE IF EXISTS `msatuan`;
CREATE TABLE `msatuan` (
  `SATUAN` varchar(20) NOT NULL default '',
  `KET_SATUAN` varchar(50) default '-',
  PRIMARY KEY  (`SATUAN`),
  KEY `SATUAN` USING BTREE (`SATUAN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msatuan
-- ----------------------------
INSERT INTO msatuan VALUES ('PCS', 'PCS');
INSERT INTO msatuan VALUES ('KARTON', 'KARTON');

-- ----------------------------
-- Table structure for `mstock`
-- ----------------------------
DROP TABLE IF EXISTS `mstock`;
CREATE TABLE `mstock` (
  `BARA` varchar(15) NOT NULL default '',
  `BARA2` varchar(15) default '-',
  `TETAP` tinyint(1) default '1',
  `INV` tinyint(1) default '1',
  `NAMA` varchar(70) default '-',
  `KETERANGAN` varchar(100) default '-',
  `MERK` varchar(20) default NULL,
  `SUBKTG` varchar(20) default NULL,
  `SATUAN` varchar(20) default 'PCS',
  `plu` varchar(6) default '0',
  `MEMBER` tinyint(1) default '0',
  `KONSI` tinyint(1) default '0',
  `BH` decimal(10,2) default '0.00',
  `FEE` tinyint(1) default '0',
  `POINT` tinyint(1) default '0',
  `BKP` tinyint(1) default '1',
  `fastmove` int(11) default '0',
  PRIMARY KEY  (`BARA`),
  KEY `bara` (`BARA`),
  KEY `SUBKTG` USING BTREE (`SUBKTG`),
  KEY `MERK` USING BTREE (`MERK`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mstock
-- ----------------------------
INSERT INTO mstock VALUES ('00020138', '-', '1', '1', 'AYUR JUMB0 2 JAM', 'AYUR JUMB0 2 JAM', '100', '11001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30123');
INSERT INTO mstock VALUES ('001', '-', '1', '1', 'BERAS KRISTAL SUPER MAMA 10KG', 'BERAS LAROS 10KG', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '44');
INSERT INTO mstock VALUES ('002', '-', '1', '1', 'MAINAN BOLA KACA LOVE , BONEKA BOLA AIR', 'MAINAN BOLA KACA LOVE , BONEKA BOLA AIR', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('002010005792', '-', '1', '1', 'RACUN TIKUS KING', 'RACUN TIKUS KING', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('003', '-', '1', '1', 'BENANG BOLE SERBA GUNA', 'BENANG BOLE SERBA GUNA', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('006', '-', '1', '1', 'lim castol besar', 'lim castol besar', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('007', '-', '1', '1', 'HANGER MAWAR', 'HANGER MAWAR', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('008', '-', '1', '1', 'SEPATU DALLASS', 'SEPATU DALLASS', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('009', '-', '1', '1', 'SEPATU DRAFTT', 'SEPATU DRAFTT', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('012', '-', '1', '1', 'SANDAL ANDO', 'SANDAL ANDO', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('014', '-', '1', '1', 'PIPET SPIRIT', 'PIPET SPIRIT', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('019', '-', '1', '1', 'TAS  MIKY MAUSE', 'TAS  MIKY MAUSE', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('021', '-', '1', '1', 'SAKLAR TEMPEL KOTAK 1 SK MY BERKO', 'SAKLAR TEMPEL KOTAK 1 SK MY BERKO', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('022', '-', '1', '1', 'NASIONAL COKLAT( 1)', 'NASIONAL COKLAT( 1)', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('023', '-', '1', '1', 'TOPI DINGDONG LORENG', 'TOPI DINGDONG LORENG', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('025', '-', '1', '1', 'ALED WARNA', 'ALED WARNA', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('027', '-', '1', '1', 'benang kasur cap bintang', 'benang kasur cap bintang', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('028', '-', '1', '1', 'EMBER BAYI', 'EMBER BAYI', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('029', '-', '1', '1', 'MATSUI SAKLAR GANTUNG', 'MATSUI SAKLAR GANTUNG', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('030', '-', '1', '1', 'ISOLASI BENING BESAR', 'ISOLASI BENING BESAR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('031', '-', '1', '1', 'TEMPAT SAMBAL GANDENG BUNGA', 'TEMPAT SAMBAL GANDENG BUNGA', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('034', '-', '1', '1', 'TOPI BABYY 034', 'TOPI BABYY 034', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('036', '-', '1', '1', 'TEMPAT PERASAN JERUK GRANDIA', 'TEMPAT PERASAN JERUK GRANDIA', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('039', '-', '1', '1', 'POPOK CELANA PLASTIK', 'POPOK CELANA PLASTIK', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('041', '-', '1', '1', 'CD 041 , POPOK 041', 'CD 041 , POPOK 041', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('042', '-', '1', '1', 'CD 042 ,CELANA 042, BAJU 042, WASLAP 042', 'CD 042 ,CELANA 042, BAJU 042, WASLAP 042', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('053', '-', '1', '1', 'KASUR BAYI', 'KASUR BAYI', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('054', '-', '1', '1', 'TAS DOT BABY', 'TAS DOT BABY', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('055500130245', '-', '1', '1', 'SOS MAGIC PINE 800ML', 'SOS MAGIC PINE 800ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('055500130283', '-', '1', '1', 'SOSFRORAL BREEZE', 'SOSFRORAL BREEZE', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('056', '-', '1', '1', 'KERANJANG SAMPAH DIANSARI', 'KERANJANG SAMPAH DIANSARI', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('057', '-', '1', '1', 'KOREK GAS M2000 P-300HNC', 'KOREK GAS M2000 P-300HNC', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('060', '-', '1', '1', 'KARTU REMI HONAGA', 'KARTU REMI HONAGA', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('062', '-', '1', '1', 'JEPIT HITAM ,HAIR GRIPS BESAR', 'JEPIT HITAM ,HAIR GRIPS BESAR', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991234416816', '-', '1', '1', 'MONY CIN CAU HONEY DRINK 300ML', 'MONY CIN CAU HONEY DRINK 300ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '150');
INSERT INTO mstock VALUES ('070', '-', '1', '1', 'SANDAL CAMPUR 070', 'SANDAL CAMPUR 070', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('073', '-', '1', '1', 'STOP MAP', 'STOP MAP', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '119');
INSERT INTO mstock VALUES ('074', '-', '1', '1', 'LAP KOTAK SEMBILAN , MERPATI,LAP KUNING', 'LAP KOTAK SEMBILAN , MERPATI,LAP KUNING', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('075', '-', '1', '1', 'SPON NEW MENGKILAP', 'SPON NEW MENGKILAP', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('078', '-', '1', '1', 'ROTI MEXICAN BREAD KEJU / COKLAT', 'ROTI MEXICAN BREAD KEJU / COKLAT', '100', '11003002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('079567850038', '-', '1', '1', 'WD-40', 'WD-40', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('081', '-', '1', '1', 'LIM CASTOL TANGGUNG', 'LIM CASTOL TANGGUNG', '100', '11003003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('084', '-', '1', '1', 'BONEKA guling', 'BONEKA guling', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('085', '-', '1', '1', 'BONEKA 085', 'BONEKA 085', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089', '-', '1', '1', 'MUG HELO KITY SET', 'MUG HELO KITY SET', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686017700', '-', '1', '1', 'SARIMI RASA AYAM 75G', 'SARIMI RASA AYAM 75G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686017748', '-', '1', '1', 'SARIMI MI GORENG AYAM KREMES ISI 2', 'SARIMI MI GORENG AYAM KREMES ISI 2', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686017854', '-', '1', '1', 'SARIMI MI KUAH TONGSENG AYAM 75G', 'SARIMI MI KUAH TONGSENG AYAM', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686018080', '-', '1', '1', 'SARIMI ISI 2 TONGSENG AYAM 120G', 'SARIMI KUAH TONGSENG AYAM', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686060027', '-', '1', '1', 'POP MIE RASA AYAM 75G', 'POP MIE RASA AYAM 75G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686060126', '-', '1', '1', 'POP MIE RASA BASO 75G', 'POP MIE RASA BASO 75G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686060362', '-', '1', '1', 'POP MIE SOTO AYAM', 'POP MIE SOTO AYAM', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686060461', '-', '1', '1', 'POP MI RASA KARI AYAM', 'POP MI RASA KARI AYAM', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686386011', '-', '1', '1', 'BUMBU RACIK NASI GORENG 20G', 'BUMBU RACIK NASI GORENG', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686400427', '-', '1', '1', 'INDOFOOD SAMBAL PEDAS 140ML', 'INDOFOOD SAMBAL PEDAS 140ML', '100', '10001001', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686401721', '-', '1', '1', 'INDOFOOD SAUS TOMAT 140ML', 'INDOFOOD SAUS TOMAT 140ML', '100', '10001001', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686420029', '-', '1', '1', 'KECAP MANIS INDOFOOD', 'KECAP MANIS INDOFOOD', '100', '10001001', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686420036', '-', '1', '1', 'INDOFOOD KECAP MANIS 140ML', 'INDOFOOD KECAP MANIS 140ML', '100', '10001001', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686420333', '-', '1', '1', 'INDOFOOD KECAP ASIN 140ML', 'INDOFOOD KECAP ASIN 140ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686530407', '-', '1', '1', 'PROMINA AYAM JAMUR 20G', 'PROMINA AYAM JAMUR 20G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686535006', '-', '1', '1', 'SUN BERAS MERAH 20G', 'SUN BERAS MERAH 20G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686535143', '-', '1', '1', 'SUN KACANG HIJAU 6-24 BULAN 120GR', 'SUN KACANG HIJAU 6-24 BULAN 120GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686535242', '-', '1', '1', 'SUN PISANG SUSU 6-24 BULAN 120G', 'SUN PISANG SUSU 6-24 BULAN 120G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686535341', '-', '1', '1', 'SUN SARI BUAH JERUK,APEL,PISANG 6-24 BULAN 120GR', 'SUN SARI BUAH JERUK,APEL,PISANG 6-24 BULAN 120GR', '100', '11003002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686535440', '-', '1', '1', 'SUN BROKOLI ,WORTEL', 'SUN BROKOLI ,WORTEL', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686596427', '-', '1', '1', 'LAYS RASA RUMPUT LAUT 14G', 'LAYS RASA RUMPUT LAUT 14G', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '24');
INSERT INTO mstock VALUES ('089686596441', '-', '1', '1', 'LAYS RUMPUT LAUT 40G', 'LAYS RUMPUT LAUT 40G', '100', '11003002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686596465', '-', '1', '1', 'LAYS RUMPUT LAUT 68G', 'LAYS RUMPUT LAUT 68G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '90');
INSERT INTO mstock VALUES ('089686598018', '-', '1', '1', 'CHITATO SAPI PANGGANG 15G', 'CHITATO SAPI PANGGANG 15G', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '25');
INSERT INTO mstock VALUES ('089686598025', '-', '1', '1', 'CITATO SAPI PANGGANG', 'CITATO SAPI PANGGANG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598056', '-', '1', '1', 'CHITATO SAPI PANGGANG 75G', 'CHITATO SAPI PANGGANG 68G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '147');
INSERT INTO mstock VALUES ('089686598414', '-', '1', '1', 'CHITATO AYAM BUMBU 15G', 'CHITATO AYAM BUMBU 15G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598421', '-', '1', '1', 'CITATO AYAM BUMBU', 'CITATO AYAM BUMBU', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598476', '-', '1', '1', 'CHITATO AYAM BUMBU 68G', 'CHITATO AYAM BUMBU 68G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '159');
INSERT INTO mstock VALUES ('089686600223', '-', '1', '1', 'CHEETOS JAGUNG BAKAR 15G', 'CHEETOS JAGUNG BAKAR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686600247', '-', '1', '1', 'CHEETOS JAGUNG BAKAR 40G', 'CHEETOS JAGUNG BAKAR 40G', '100', '11003002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686600308', '-', '1', '1', 'CHEETOS JAGUNG BAKAR 75G', 'CHEETOS JAGUNG BAKAR 75G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '85');
INSERT INTO mstock VALUES ('089686600513', '-', '1', '1', 'CHEETOS NET BBQ', 'CHEETOS NET BBQ', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '49');
INSERT INTO mstock VALUES ('089686600544', '-', '1', '1', 'CHEETOS NET BBQ 40G', 'CHEETOS NET BBQ 40G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686600841', '-', '1', '1', 'CHEETOS RASA SEAWEED RUMPUT LAUT 40GR', 'CHEETOS RASA SEAWEED', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686604443', '-', '1', '1', 'JETZ STICK CHOCO 12GR', 'JETZ STICK CHOCO 12GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611519', '-', '1', '1', 'QTELA SINGKONG ORIGINAL 60G', 'QTELA SINGKONG ORIGINAL', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611540', '-', '1', '1', 'QTELA SINGKONG ORIGINAL 185G', 'QTELA SINGKONG ORIGINAL', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611618', '-', '1', '1', 'QTELAM BARBEQUE 60G', 'QTELAM BARBEQUE 60G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611663', '-', '1', '1', 'QTELA SINGKONG BALADO 23G', 'QTELA SINGKONG BALADO 23G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611670', '-', '1', '1', 'QTELA SINGKONG BALADO 60GR', 'QTELA SINGKONG BALADO', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611700', '-', '1', '1', 'QTELA SINGKONG RASA BALADO 185G', 'qtela singkong baladp 185g', '100', '11003002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611854', '-', '1', '1', 'QTELA TEMPE CABE RAWIT 60G', 'QTELA TEMPE CABE RAWIT 60G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611908', '-', '1', '1', 'QTELA TEMPE ORIGINAL 60G', 'QTELA TEMPE ORIGINAL', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611922', '-', '1', '1', 'QTELA TEMPE DAUN JERUK 60GR', 'QTELA TEMPE DAUN JERUK 60GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686648065', '-', '1', '1', 'PROMINA BISCUIT BAYI 8+ 150G', 'PROMINA BISCUIT BAYI', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('090', '-', '1', '1', 'KARET SPIRAL 4 , SPIRAL 2', 'KARET SPIRAL 4 , SPIRAL 2', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('091', '-', '1', '1', 'BONEKA PANDA jumbo', 'BONEKA PANDA jumbo', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('092', '-', '1', '1', 'GOLDEN CLENER BOTOL', 'GOLDEN CLENER BOTOL', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('094', '-', '1', '1', 'PITA KADO', 'PITA KADO', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('095', '-', '1', '1', 'PITA KADO XL', 'PITA KADO XL', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('100', '-', '1', '1', 'DUPA HARUM JEMPIRING NUSA DEVA KRISNA', 'DUPA HARUM JEMPIRING NUSA DEVA KRISNA', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('101', '-', '1', '1', 'DUPA HARUM 1KG', 'DUPA HARUM 1KG', '100', '11001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('102', '-', '1', '1', 'JAM BEKER HELLO KITY ,PHOTO PRIME', 'JAM BEKER HELLO KITY ,PHOTO PRIME', '100', '11001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('1028882236156', '-', '1', '1', 'GAS LUBINHOT', 'GAS LUBINHOT', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('104', '-', '1', '1', 'MINYAK GORENG GELAS NUTRIENT 220ML', 'MINYAK GORENG GELAS NUTRIENT 220ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('107', '-', '1', '1', 'DUPA TRI DATU', 'DUPA TRI DATU', '100', '11001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('109', '-', '1', '1', 'GASING BLAZER , ROKER', 'GASING BLAZER , ROKER', '100', '11003002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('114', '-', '1', '1', 'KUCING OTOMATIS KECIL', 'KUCING OTOMATIS KECIL', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('116', '-', '1', '1', 'KOREK AYAM', 'KOREK AYAM', '100', '11001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('12345345', '-', '1', '1', 'HONAGA 10', 'HONAGA 10', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('2006121691927', '-', '1', '1', 'KOREK GAS FOX-505', 'KOREK GAS FOX-505', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('202', '-', '1', '1', 'TISU TOILET JOFA / FANTASY', 'TISU TOILET JOFA / FANTASY', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('204', '-', '1', '1', 'CREM LING SHI DAY CREAM', 'CREM LING SHE NIGHT', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('205', '-', '1', '1', 'CREM FACIAL FOAM LING SHI', 'CREM FACIAL FOAM LING SHE', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('206', '-', '1', '1', 'MASKER SENSI,SURGICAL', 'MASKER SENSI,SURGICAL', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '17');
INSERT INTO mstock VALUES ('207', '-', '1', '1', 'TAS YOU AND ME JANTUNG', 'TAS YOU AND ME JANTUNG', '100', '11003001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('209', '-', '1', '1', 'KUTEK POKARI ,', 'KUTEK POKARI ,', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('211', '-', '1', '1', 'SP HITAM', 'SP HITAM', '100', '10002007', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('212', '-', '1', '1', 'SP HIJAU', 'SP HIJAU', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('22396686', '-', '1', '1', 'HOMA TOOTH PICKS', 'HOMA TOOTH PICKS', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('301', '-', '1', '1', 'KERTAS KADO M', 'KERTAS KADO M', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('302', '-', '1', '1', 'KERTAS KADO L', 'KERTAS KADO L', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('303', '-', '1', '1', 'cuterbeneffit', 'cuterbeneffit', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('305', '-', '1', '1', 'TIMEZONE TZ 366', 'TIMEZONE TZ 366', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('307', '-', '1', '1', 'MOSCOM V-20 POWER SUPPLY', 'MOSCOM V-20 POWER SUPPLY', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('310', '-', '1', '1', 'Lilin Panjang Sinar Asia', 'Lilin Panjang Sinar Asia', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('311', '-', '1', '1', 'LILIN PENDEK PUTIH', 'lilin pendek', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('312', '-', '1', '1', 'tusuk sate', 'tusuk sate', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('316', '-', '1', '1', 'LILIN ANGKA GARUDA', 'LILIN ANGKA', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('319', '-', '1', '1', 'PLASTIK 1/4KG ECER/PCS', 'PLASTIK 1/4KG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('320', '-', '1', '1', 'PLASTIK 1/2KG', 'PLASTIK 1/2KG', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('321', '-', '1', '1', 'PLASTIK 1KG', 'PLASTIK 1KG', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('322', '-', '1', '1', 'PLASTIK 1 1/2 KG', 'PLASTIK 1 1/2 KG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('324', '-', '1', '1', 'MIKA BUAH 100 PCS', 'MIKA BUAH 100 PCS', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('325', '-', '1', '1', 'MIKA 4C', 'MIKA 4C', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('327', '-', '1', '1', 'MIKA 6A', 'MIKA 6A', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('328', '-', '1', '1', 'MIKA  KOTAK NASI', 'MIKA  KOTAK NASI', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('329', '-', '1', '1', 'JERAPAH 4X20', 'JERAPAH 4X20', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('330', '-', '1', '1', 'KOTAK NASI PUTIH', 'KOTAK NASI PUTIH', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('331', '-', '1', '1', 'KOTAK NASI MATARAM 9R', 'KOTAK NASI MATARAM 9R', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('332', '-', '1', '1', 'KOTAK JAJAN MATARAM', 'KOTAK JAJAN MATARAM', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('335', '-', '1', '1', 'BUNGA POT B', 'BUNGA POT B', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('336', '-', '1', '1', 'BUNGA P0T K', 'BUNGA P0T K', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('337', '-', '1', '1', 'POT BUNGA', 'POT BUNGA', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('340', '-', '1', '1', 'BONEKA 340', 'BONEKA 340', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('342', '-', '1', '1', 'KARET PLAY BOY YOU & ME', 'KARET PLAY BOY YOU & ME', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('343', '-', '1', '1', 'KARET UNYIL B/KARET SPIRAL', 'KARET UNYIL B/KARET SPIRAL', '100', '11003001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('348', '-', '1', '1', 'PITA KADO JUMBO', 'PITA KADO JUMBO', '100', '11003001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('350', '-', '1', '1', 'SIRKAM GULUNG', 'SIRKAM GULUNG', '100', '11003001', 'LUSIN', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('351', '-', '1', '1', 'SIRKAM RANTE', 'SIRKAM RANTE', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('352', '-', '1', '1', 'ANTING MATA bola', 'ANTING MATA bola', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('354', '-', '1', '1', 'KALUNG 354', 'KALUNG 354', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('355274061926111', '-', '1', '1', 'ADVAN S35D', 'ADVAN S35D', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('357003052400333', '-', '1', '1', 'EVERCROSS T6', 'EVERCROSS T6', '100', '11001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('358', '-', '1', '1', 'KARET UNYIL K', 'KARET UNYIL K', '100', '11003001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('358225059266388', '-', '1', '1', 'EVERCOSS P7', 'EVERCOSS P7', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('358304051508822', '-', '1', '1', 'EVERCOSS G7T', 'EVERCOSS G7T', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('358546061944229', '-', '1', '1', 'SAMSUNG GALAXY TAB 3V', 'SAMSUNG GALAXY TAB 3V', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('360', '-', '1', '1', 'TISU PASEO SMART 250 SHEET 2 PLY', 'TISU PASEO SMART 250 SHEET 2 PLY', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '65');
INSERT INTO mstock VALUES ('362', '-', '1', '1', 'JAM BEKER LOVE KECIL', 'JAM BEKER LOVE KECIL', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('364', '-', '1', '1', 'JAM BEKER WINIE THE POOH ,KERROPI', 'JAM BEKER WINIE THE POOH ,KERROPI', '100', '11003001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('365', '-', '1', '1', 'CEKIAN GUNTING BAJA', 'CEKIAN GUNTING BAJA', '100', '11003001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('367', '-', '1', '1', 'CEKIAN PURA DEWA', 'CEKIAN PURA DEWA', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '53');
INSERT INTO mstock VALUES ('370', '-', '1', '1', 'UV WHITENING SOAP', 'UV WHITENING SOAP', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('732', '-', '1', '1', 'JAM BEKER APPLE ,POOH,HELO KITY', 'JAM BEKER APPLE ,POOH,HELO KITY', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('374', '-', '1', '1', 'TJAP PIDA 12ML', 'TJAP PIDA 12ML', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('381', '-', '1', '1', 'PARFUM LONDRE BOTOL', 'PARFUM LONDRE BOTOL TANGGUNG', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '133');
INSERT INTO mstock VALUES ('382', '-', '1', '1', 'KOTAK SABUN', 'KOTAK SABUN', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('384', '-', '1', '1', 'PARFUM LOVE SARAH', 'PARFUM LOVE SARAH', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('385', '-', '1', '1', 'SIKAT CUCI PLASTIK BESAR,SIKAT PLASTIK,SIKAT SEPATU', 'SIKAT CUCI PLASTIK BESAR,SIKAT PLASTIK,SIKAT SEPATU', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('388', '-', '1', '1', 'MINYAK FORA ORANG ARING 80ML', 'MINYAK FORA ORANG ARING 80ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('392', '-', '1', '1', 'JAS HUJAN JAGO', 'JAS HUJAN JAGO', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30088');
INSERT INTO mstock VALUES ('394', '-', '1', '1', 'SIKAT PLASTIK KECIL', 'SIKAT PLASTIK KECIL', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('398', '-', '1', '1', 'KARTU ANGLES', 'KARTU ANGLES', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('399', '-', '1', '1', 'BROCO FUSE BOX KOTAK SEKERING 16A 250V', 'BROCO FUSE BOX KOTAK SEKERING 16A 250V', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400', '-', '1', '1', 'GULA PASIR', 'GULA PASIR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '155');
INSERT INTO mstock VALUES ('400006336590', '-', '1', '1', 'SENDOK SUP LIVING L', 'SENDOK SUP LIVING L', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400006338280', '-', '1', '1', 'SENDOK SAYUR LIVING', 'SENDOK SAYUR LIVING', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4005401144618', '-', '1', '1', 'pensil warna faber castell kecil', 'pensil warna faber castell kecil', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381118743', '-', '1', '1', 'STABOLO BOSS', 'STABOLO BOSS', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381333627', '-', '1', '1', 'STABILO BOSS', 'STABILO BOSS', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381333634', '-', '1', '1', 'STABILO BOSS', 'STABILO BOSS', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381333641', '-', '1', '1', 'STABILO BOSS', 'STABILO BOSS', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381333665', '-', '1', '1', 'STABILO BOSS', 'STABILO BOSS', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381333672', '-', '1', '1', 'STABILO BOSS', 'STABILO BOSS', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381333689', '-', '1', '1', 'STABILO BOSS', 'STABILO BOSS', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381333696', '-', '1', '1', 'STABILO BOSS', 'STABILO BOSS', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('401', '-', '1', '1', 'VANILIE KAPAL LAJAR ', 'VANILIE KAPAL LAJAR ', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4010', '-', '1', '1', 'mcb sok PROTECTED boX', 'mcb sok PROTECTED boX', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('402', '-', '1', '1', 'KERTAS MAHKOTA BUNDAR100', 'KERTAS MAHKOTA BUNDAR100', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('403', '-', '1', '1', 'KERTAS MAHKOTA KOTAK', 'KERTAS MAHKOTA KOTAK', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '30115');
INSERT INTO mstock VALUES ('404', '-', '1', '1', 'KACANG KULIT BOBY', 'KACANG KULIT BOBY', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('407', '-', '1', '1', 'STEROFOM TANGGUNG', 'STEROFOM TANGGUNG', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('409', '-', '1', '1', 'JIP ,CAR SET 4, TRUCK ,SUPER MAN,BARBY', 'JIP ,CAR SET 4, TRUCK ,SUPER MAN,BARBY', '100', '11003002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('410588070003', '-', '1', '1', 'CENTONG NASI JUMBO', 'CENTONG NASI JUMBO', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('410707680007', '-', '1', '1', 'KOMODO IRUS TRIPLE', 'KOMODO IRUS TRIPLE', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('412030089571', '-', '1', '1', 'BUKU POLIO 100 VISION', 'BUKU POLIO 100 VISION', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('414037568769', '-', '1', '1', 'BUKU KUARTO VISION 100', 'BUKU KUARTO VISION 100', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('415', '-', '1', '1', 'KAOS STOKING', 'KAOS STOKING', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('421', '-', '1', '1', 'BAJU SINGLET VIOLETA', 'BAJU SINGLET VIOLETA', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('422', '-', '1', '1', 'BAJU SINGLET VIOLETA XL', 'BAJU SINGLET VIOLETA XL', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('424', '-', '1', '1', 'BAJU SINGLET TECO 34', 'BAJU SINGLET TECO 34', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('425', '-', '1', '1', 'HANDUKRRT KECIL', 'HANDUKRRT KECIL', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('426', '-', '1', '1', 'HANDUK 96', 'HANDUK 96', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('427', '-', '1', '1', 'SAPUTANGAN TABAC 427', 'SAPUTANGAN TABAC 427', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('430', '-', '1', '1', 'BONEKA LOVE 430', 'BONEKA LOVE 430', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('431', '-', '1', '1', 'BONEKA YOU ,ME 431 love', 'BONEKA YOU ,ME 431 love', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('433', '-', '1', '1', 'LAMPU CAP FATRO', 'LAMPU CAP FATRO', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('434', '-', '1', '1', 'BONEKA I LOVE YOU 343', 'BONEKA I LOVE YOU 343', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('443', '-', '1', '1', 'SAKLAR TEMPEL KECIL MY BERKO', 'SAKLAR TEMPEL KECIL MY BERKO', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('444', '-', '1', '1', 'SEA GULL', 'SEA GULL', '100', '11001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('446', '-', '1', '1', 'KERTAS KADO XL', 'KERTAS KADO XL', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('449', '-', '1', '1', 'SPIDOL SNOWMAN K', 'SPIDOL SNOWMAN K', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('451', '-', '1', '1', 'MAINAN TRUK TTD,SNIPPER,MOTOR CROS,TOTAL,MOTO,BATMAN', 'MAINAN TRUK TTD,SNIPPER,MOTOR CROS,TOTAL,MOTO,BATMAN', '100', '11003002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4528398476598', '-', '1', '1', 'KAOS KAKI QUSNUL', 'KAOS KAKI QUSNUL', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('453', '-', '1', '1', 'JEPIT KECIL', 'JEPIT KECIL', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('454', '-', '1', '1', 'MI ACI KRITING 600GR', 'MI ACI KRITING 600GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4562195131205', '-', '1', '1', 'CT-120T', 'CT-120T', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4562195133261', '-', '1', '1', 'CITIZEN LC-210N', 'CITIZEN LC-210N', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('457', '-', '1', '1', 'BONEKA YOU , ME 457', 'BONEKA YOU , ME 457', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30054');
INSERT INTO mstock VALUES ('458', '-', '1', '1', 'BONEKA YOU , ME 458', 'BONEKA YOU , ME 458', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('459', '-', '1', '1', 'BONEKA YOU , ME 459', 'BONEKA YOU , ME 459', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('467', '-', '1', '1', 'KESET SAMBUK', 'KESET SAMBUK', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('468', '-', '1', '1', 'SENDOK GORENG KECIL', 'SENDOK GORENG KECIL', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('469', '-', '1', '1', 'SENDOK GORENG TANGGUNG', 'SENDOK GORENG TANGGUNG', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4711734112308', '-', '1', '1', 'STAPLER SDI DOUBLE STRIP 1123', 'STAPLER SDI', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4712477117254', '-', '1', '1', 'FLASHDISK HP 4GB', 'FLASHDISK HP 4GB', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('476', '-', '1', '1', 'HANGER 6PCS', 'HANGER 6PCS', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800318407739', '-', '1', '1', 'SENSODYNE COOL GEL', 'SENSODYNE COOL GEL 100GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800888137319', '-', '1', '1', 'AXE SCORE DEODORANT BODYSPRAY 150ML', 'AXE SCORE DEODORANT BODYSPRAY', '100', '11003001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800888141101', '-', '1', '1', 'AXE DARK TEMPTATION 50ML', 'AXE DARK TEMPTATION 50ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800888141125', '-', '1', '1', 'AXE DARK TEMPTATION 150ML', 'AXE DARK TEMPTATION', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800888157942', '-', '1', '1', 'VASELINE MEN FACE ANTI DULLNESS 100GR', 'vaseline men face anti dullness', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800888157959', '-', '1', '1', 'VASELINE SCRUB ANTI DULLNESS 50G', 'VASELINE SCRUB ANTI DULLNESS', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800888157966', '-', '1', '1', 'VASELINE MENFACE 100GR', 'VASELINE MENFACE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4809010740212', '-', '1', '1', 'SABUN PAPAYA 135GR', 'SABUN PAPAYA 135G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('481', '-', '1', '1', 'TEKO KU SUKA', 'TEKO KU SUKA', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('482', '-', '1', '1', 'TEMPAT SAMPAH', 'TEMPAT SAMPAH', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('484', '-', '1', '1', 'TOPLES SEGI TANGGUNG TOP STAR', 'TOPLES SEGI TANGGUNG TOP STAR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('486', '-', '1', '1', 'GAYUNG KALISTA, LOVLY', 'GAYUNG KALISTA, LOVLY', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('487', '-', '1', '1', 'BOTOL KECAP KECIL', 'BOTOL KECAP KECIL', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('488', '-', '1', '1', 'BOTOL KECAP BESAR', 'BOTOL KECAP BESAR', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4895108700657', '-', '1', '1', 'KARCE KC-207', 'KARCE KC-207', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4895108704389', '-', '1', '1', 'KARCE KC-186', 'KARCE KC-186', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4895108705874', '-', '1', '1', 'KARCE KC-532', 'KARCE KC-532', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('490', '-', '1', '1', 'SARINGAN THE TANGGUNG', 'SARINGAN THE TANGGUNG', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430399418', '-', '1', '1', 'PENTENE CONDITIONER TOTAL DAMAGE CARE 75ML', 'PENTENE CONDITIONER DAMAGE CARE 75ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400664', '-', '1', '1', 'PENTENE CONDITIONER HAIR FALL CONTROL 75ML', 'PENTENE CONDITIONER HAIR FALL CONTROL 75ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430401012', '-', '1', '1', 'PANTENE SHAMPO ANTI DANDRUFF 340ML', 'PANTENE SHAMPO ANTI DANDRUFF 340ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430401142', '-', '1', '1', 'PENTENE SHAMPO HAIR FALL CONTROL 70ML', 'PENTENE SHAMPO HAIR FALL CONTROL 70ML', '100', '11002002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430416047', '-', '1', '1', 'PENTENE P&G PRO-V PROTECT & CARE 4ML SACHET', 'PENTENE P&G PRO-V PROTECT & CARE 4ML SACHET', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430419017', '-', '1', '1', 'PANTENE SHAMPO LONG BLACK 70ML', 'PANTENE SHAMPO LONG BLACK 70ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430420037', '-', '1', '1', 'PANTENE TREATMENT PROTECT & CARE 45ML', 'PANTENE TREATMENT PROTECT & CARE 45ML', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430421140', '-', '1', '1', 'PANTENE TREATMENT PROTECT & CARE 90ML', 'PANTENE TREATMENT PROTECT & CARE 90ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430428316', '-', '1', '1', 'SAMPO REJOICE RICH 170ML', 'SAMPO REJOICE RICH 170ML', '100', '10002001', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430428385', '-', '1', '1', 'REJOICE MANAGEABLE BLACK', 'REJOICE MANAGEABLE BLACK', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430428422', '-', '1', '1', 'SAMPO REJOICE MANAGEABLE BLACK 170ML', 'SAMPO REJOICE MANAGEABLE BLACK 170ML', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430429405', '-', '1', '1', 'REJOICE RICH', 'REJOICE RICH', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430432269', '-', '1', '1', 'REJOICE SOFT SMOOTH', 'REJOICE SOFT SMOOTH', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430504454', '-', '1', '1', 'DONY PARFUMYSTIQUE', 'DONY PARFUMYSTIQUE', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430542753', '-', '1', '1', 'DOWNY PARFUM PASSION', 'DOWNY PARFUM PASSION', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430557122', '-', '1', '1', 'DOWNY JUMBO SUNRISE FRESH', 'DOWNY JUMBO SUNRISE FRESH', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '144');
INSERT INTO mstock VALUES ('4902430563864', '-', '1', '1', 'PANTENE ANTI KETOMBE SCH 2X5ML', 'SAMPO PANTENE ANTI KETOMBE SASET 2X5ML', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '39');
INSERT INTO mstock VALUES ('4902870762179', '-', '1', '1', 'ISI STAPLES MAX NO.3-1M 6MM', 'ISI STEPLER MAX NO.3-1M 6MM', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902870775674', '-', '1', '1', 'ALAT STEPLER MAX', 'ALAT STEPLER MAX', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902870775698', '-', '1', '1', 'STAPLER TOKYO DESIGN', 'STAPLER TOKYO DESIGN', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902870775704', '-', '1', '1', 'STAPLER MAX HD 10', 'STAPLER MAX HD 10', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4925625458684', '-', '1', '1', 'CITIZEN 868', 'CITIZEN 868', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('495', '-', '1', '1', 'GELAS PLASTIK ALASKA/PCS', 'GELAS PLASTIK ALASKA/PCS', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4968306479585', '-', '1', '1', 'KIWI PADAT BESAR 45ML', 'KIWI PADAT BESAR 45ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4968306479592', '-', '1', '1', 'KIWI  PADAT BROWN 45ML', 'KIWI  PADAT BROWN 45ML', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4968306479653', '-', '1', '1', 'KIWI PADAT BLACK 14G', 'KIWI PADAT BLACK 14G', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4968306479660', '-', '1', '1', 'KIWI BROWN 17.5ML.', 'KIWI BROWN 17.5ML', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('497', '-', '1', '1', 'LEPEKAN BESAR', 'LEPEKAN BESAR', '100', '11003003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129030515', '-', '1', '1', 'SNOWMAN DRAWING PEN 0.3', 'SNOWMAN DRAWING PEN 0.3', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129031512', '-', '1', '1', 'SNOWMAN DRAWING PEN 0.5', 'DRAWING PEN 05', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129064510', '-', '1', '1', 'SNOWMAN DRAWING PEN 06', 'SNOWMAN DRAWING PEN 06', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129065517', '-', '1', '1', 'SNOWMAN DRAWING PEN 0.8', 'DRAWIMG PEN 08', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129703013', '-', '1', '1', 'BOLPOIN SNOMAN V3,PILOT BPTP', 'BOLPOIN SNOMAN V3,PILOT BPTP', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129704034', '-', '1', '1', 'BOLPOIN SNOMAN BP7', 'BOLPOIN SNOMAN BP7', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129726517', '-', '1', '1', 'SNOMAN PERMANEN MARKER', 'SNOMAN PERMANEN MARKER', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129727514', '-', '1', '1', 'SNOMAN BOARD MAKER', 'SNOMAN BOARD MAKER BLACK', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129733010', '-', '1', '1', 'BOLPOIN SNOWMAN V1', 'BOLPOIN SNOWMAN V1 FINE 0.7', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '103');
INSERT INTO mstock VALUES ('4970129734017', '-', '1', '1', 'BOLPOIN SNOWMAN V2', 'BOLPOIN SNOWMAN V2 0.6MM', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '194');
INSERT INTO mstock VALUES ('4970129745013', '-', '1', '1', 'BOLPOIN SNOMAN V5', 'BOLPOIN SNOMAN V5', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4971850162810', '-', '1', '1', 'CASIO SL-240LB-W', 'CASIO SL-240LB-W', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4971850187714', '-', '1', '1', 'GX-12S', 'GX-12S', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4971850187738', '-', '1', '1', 'CASIO GX16S', 'CASIO GX16S', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4971850465669', '-', '1', '1', 'CASIO MJ-100', 'CASIO MJ-100', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4971850902379', '-', '1', '1', 'CASIO MZ-12S', 'CASIO MZ-12S', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('497843818851048', '-', '1', '1', 'ISI STEPLES HONAGA 10 / PCS', 'ISI STEPLES HONAGA 1 LOJOR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('500', '-', '1', '1', 'Balon Focus All Varian', 'Balon Focus All Varian', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('501', '-', '1', '1', 'KABEL FOCUS 2X1,5 (50 m)', 'KABEL FOCUS 2X1,5 (50 m)', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('503', '-', '1', '1', 'PITING TEMPEL BROKO', 'PITING TEMPEL BROKO', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('504', '-', '1', '1', 'CUK SERBAGUNA BERKO', 'CUK SERBAGUNA BERKO', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('505', '-', '1', '1', 'SAKLAR GANTUNG', 'SAKLAR GANTUNG', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('508', '-', '1', '1', 'CUK STIKER ATN / MATSUI', 'CUK STIKER ATN / MATSUI', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('509', '-', '1', '1', 'CUK VYBA / NEW PALLAS', 'CUK VYBA / NEW PALLAS', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('513', '-', '1', '1', 'PITING GANTUNG BROCO', 'PITING GANTUNG BROCO', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('514', '-', '1', '1', 'SEKRING OTOMATIS matsuka', 'SEKRING OTOMATIS matsuka', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('515', '-', '1', '1', 'NCB', 'NCB', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('520', '-', '1', '1', 'JAM TANGAN WARNA WARNI', 'JAM TANGAN WARNA WARNI', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('524', '-', '1', '1', 'LAMPU RECHARGEABLE VDR V 360', 'LAMPU RECHARGEABLE VDR V 360', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('525', '-', '1', '1', 'CLEM VYBA NO.8MM', 'CLEM VYBA NO.8MM', '100', '11002001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('527', '-', '1', '1', 'STOP LOB 2 LOYAL', 'STOP LOB 2 LOYAL', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('531', '-', '1', '1', 'STOP LOB 3 MY BERKO', 'STOP LOB 3 MY BERKO', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('532', '-', '1', '1', 'STOP LOYAL L0B 6', 'STOP LOYAL L0B 6', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('533', '-', '1', '1', 'STOP GEPENG LOB 2', 'STOP GEPENG LOB 2', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('534', '-', '1', '1', 'STOP GEPENG LOB 3', 'STOP GEPENG LOB 3', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('535', '-', '1', '1', 'STOP KONTAK BROKO TEMPEL 1 LB', 'STOP KONTAK BROKO TEMPEL 1 LB', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('536', '-', '1', '1', 'SAKLAR + STOP BROCO TEMPEL', 'SAKLAR + STOP BROCO TEMPEL', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('538', '-', '1', '1', 'STOP TANAM BROCO', 'STOP  KONTAK TANAM BROCO 1', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('539', '-', '1', '1', 'SAKLAR DOBEL 2 BROCO', 'SAKLAR DOBEL 2 BROCO', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('540', '-', '1', '1', 'SAKLAR HENSONIC 2 SK', 'SAKLAR HENSONIC 2 SK', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('541', '-', '1', '1', 'SAKLAR DOBEL 2 PHILIPS', 'SAKLAR DOBEL 2 PHILIPS', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('550', '-', '1', '1', 'MANGKOK 322 @6', 'MANGKOK 322 @6', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('551', '-', '1', '1', 'MANGKOK 551', 'MANGKOK 551', '100', '11003003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('552', '-', '1', '1', 'KABEL HATANAKA 2X10', 'KABEL HATANAKA 2X10', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('556', '-', '1', '1', 'KABEL NYA FOCUS 1,5 100M', 'KABEL NYA FOCUS 1,5 100M', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('559', '-', '1', '1', 'KABEL dynamic 1x1,5mm(50)', 'KABEL dynamic 1x1,5mm(50)', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('561', '-', '1', '1', 'KABEL 1X1.5MM', 'KABEL 1X1.5MM', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('563', '-', '1', '1', 'KABEL BOX PHOSSCO 10M 4 LUBANG', 'KABEL BOX 15 METER', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('564', '-', '1', '1', 'kabel box 10 meter', 'kabel box 10 meter', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('572', '-', '1', '1', 'pisau kue', 'pisau kue', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('574', '-', '1', '1', 'JELY OLLYA 4X20GR', 'JELY OLLYA 4X20GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('575', '-', '1', '1', 'JELLY DONALO', 'JELLY DONALO', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('577', '-', '1', '1', 'SANDAL NEW ERA FIRST CLASS', 'SANDAL NEW ERA FIRST CLASS', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('580', '-', '1', '1', 'KAOS KAKI SMP ,KAOS WARNA', 'KAOS KAKI SMP ,KAOS WARNA', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('581', '-', '1', '1', 'KAMUS INGGRIS 581', 'KAMUS INGGRIS 581', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('589', '-', '1', '1', 'RAKET OMEGA', 'RAKET OMEGA', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('593', '-', '1', '1', 'SHUTTECOCK HIJAU ,NASIONAL  HIJAU@ 1', 'SHUTTECOCK HIJAU ,NASIONAL  HIJAU@ 1', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6014280510238', '-', '1', '1', 'HELLO KITTY PENGHAPUS', 'HELLO KITTY PENGHAPUS', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('606', '-', '1', '1', 'VISIONAL COOL WB-98TG', 'VISIONAL COOL WB-98TG', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158592124', '-', '1', '1', 'NOKIA105', 'NOKIA105', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158661776', '-', '1', '1', 'NOKIA 225 DUAL SIM', 'NOKIA 225 DUAL SIM', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6562195132835', '-', '1', '1', 'CITIZEN 555N', 'CITIZEN 555N', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6718656252257', '-', '1', '1', 'KYOSO SAMPO MOTOR 35ML', 'KYOSO SAMPO MOTOR 35ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6903072247332', '-', '1', '1', 'LIPS COLORS BABY', 'LIPS COLORS BABY', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6921696180002', '-', '1', '1', 'puch kenko no. 30', 'puch kenko no. 30', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6923655534840', '-', '1', '1', 'TIZO PEN GEL BLACK TG340 1.0MM', 'TIZO GEL INK PEN 1.0', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6924683586009', '-', '1', '1', 'HANDUK GIANDI', 'HANDUK GIANDI', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6925263634790', '-', '1', '1', 'VILLAGE 3979', 'VILLAGE 3979', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6925722100408', '-', '1', '1', 'PENITI / KANCING SWAN', 'PENITI SWAN', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '130');
INSERT INTO mstock VALUES ('6930616601237', '-', '1', '1', 'SAFARI STAPLER', 'SAFARI STAPLER', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6931856895233', '-', '1', '1', 'KOTAK PENSIL CNX 172,176,179', 'KOTAK PENSIL CNX 172,176,179', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6932124710081', '-', '1', '1', 'GREAT SMART', 'GREAT SMART', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6935825825634', '-', '1', '1', 'GOSOK BADAN BATH BALLYONGMA YM 535', 'GOSOK BADAN BATH BALLYONGMA YM 535', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6935837299263', '-', '1', '1', 'MATSUGI MG 3335', 'MATSUGI MG 3335', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6936328200300', '-', '1', '1', 'CADWELL HOLE PUNCH', 'CADWELL HOLE PUNCH', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6936380635225', '-', '1', '1', 'KOTAK PENSIL FRIENDS', 'KOTAK PENSIL FRIENDS', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6938331862766', '-', '1', '1', 'RAUTAN CARINEX WARNA WARNI', 'RAUTAN CARINEX WARNA WARNI', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6938587300500', '-', '1', '1', 'KRAYON PATATO 12', 'KRAYON PATATO 12', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6941985003164', '-', '1', '1', 'DIARY 32K KUNCI', 'DIARY 32K KUNCI', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6942096800000', '-', '1', '1', 'SISIRTRAVEL', 'SISIRTRAVEL', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6942202588679', '-', '1', '1', 'VDR V-8805', 'VDR V-8805', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6942205278119', '-', '1', '1', 'SENTER MEIWA 212', 'SENTER MEIWA 212', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6942817707014', '-', '1', '1', 'BATIK TABLE TOP PEN 1.0MM', 'BATIK TABLE TOP PEN 1.0MM', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6943465453438', '-', '1', '1', 'EYELASH', 'EYELASH', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6943855501893', '-', '1', '1', 'clipper honaga besar /THREE SEVEN / KINAWA,SUPER DOLL', 'clipper honaga besar /THREE SEVEN / KINAWA,SUPER DOLL', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6948154878110', '-', '1', '1', 'KIPAS TASTES NO.929', 'KIPAS TASTES NO.929', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6949846900942', '-', '1', '1', 'SISIR LOVELY', 'SISIR LOVELY', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6949935500220', '-', '1', '1', 'RAUTAN  XIOO JIN YU /RAUTAN NO. 967-A', 'RAUTAN  XIOO JIN YU /RAUTAN NO. 967-A', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6951227200190', '-', '1', '1', 'PENSIL WARNA D-R BRAND', 'PENSIL WARNA D-R BRAND', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6954181596446', '-', '1', '1', 'ALBUM PHOTO', 'ALBUM PHOTO', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6956282266662', '-', '1', '1', 'KOTAK PENSIL BIG ,FRIENDS', 'KOTAK PENSIL BIG ,FRIENDS', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6959293010033', '-', '1', '1', 'CELENGAN DME003', 'CELENGAN DME003', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6966006700082', '-', '1', '1', 'CITIZEN 512', 'CITIZEN 512', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6969834368196', '-', '1', '1', 'PENSIL WARNA SAFARI KECIL', 'PENSIL WARNA SAFARI KECIL', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('706', '-', '1', '1', 'BONEKA ULAT', 'BONEKA ULAT', '100', '11003002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7118441101378', '-', '1', '1', 'ABC KECAP MANIS RASA MANTAP 580ML', 'ABC KECAP MANIS RASA MANTAP 580ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('711844120396', '-', '1', '1', 'SAMBAL TERASI ABC HOMESTYLE 200G', 'SAMBAL TERASI ABC HOMESTYLE 200G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('711844150003', '-', '1', '1', 'SIRUP ABC JERUK FLORIDA 525ML ', 'SIRUP ABC JERUK FLORIDA 525ML ', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('711844150034', '-', '1', '1', 'SQUASH DELIGHT SIRUP ABC LECI 525ML', 'SQUASH DELIGHT SIRUP ABC LECI 525ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('711844150065', '-', '1', '1', 'SQUASH DELIGHT MANGGA 525ML', 'SQUASH DELIGHT MANGGA 525ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('718', '-', '1', '1', 'JAS HUJAN BIG TOP', 'JAS HUJAN BIG TOP', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('720', '-', '1', '1', 'CUK T SYDNEY', 'CUK T SYDNEY', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('722', '-', '1', '1', 'SENTER MEIWA 305', 'SENTER MEIWA 305', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('723', '-', '1', '1', 'KERAN PLASTIK', 'KERAN PLASTIK', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('724', '-', '1', '1', 'KERAN BINTANG KUNINGAN', 'KERAN BINTANG KUNINGAN', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('726', '-', '1', '1', 'SELTIP SAMBUNGAN PIPA', 'SELTIP SAMBUNGAN PIPA', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('727', '-', '1', '1', 'LEM PIPA PVC ESAPLAS', 'LEM PIPA PVC ESAPLAS', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('731', '-', '1', '1', 'GELAS PLASTIK BENING/BUNGKUS', 'GELAS PLASTIK BENING/BUNGKUS', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('733894317076', '-', '1', '1', 'MORISCA PEANUT BUTER 125GR', 'MORISCA PEANUT BUTER 125GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7346312658632', '-', '1', '1', 'COTTON BUDS AIKO/ ELISABETH', 'COTTON BUDS AIKO', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('735', '-', '1', '1', 'TUSUK GIGI TOPS', 'TUSUK GIGI TOPS', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('736', '-', '1', '1', 'GARPU KUE', 'GARPU KUE', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('738989111010', '-', '1', '1', 'BINTANG PILSENER BESAR', 'BINTANG PILSENER BESAR', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('738989113014', '-', '1', '1', 'BINTANG PILSINER KECIL', 'BINTANG PILSINER KECIL', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('738989114011', '-', '1', '1', 'BINTANG PILSENER KALENG', 'BINTANG PILSENER KALENG', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('738989114127', '-', '1', '1', 'BINTANG KALENG 500ML', 'BINTANG KALENG 500ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('738989714020', '-', '1', '1', 'GREEN SANDS ORIGINAL', 'GREEN SANDS ORIGINAL 250LM', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('741', '-', '1', '1', 'MITO POWER BANK B3000,M3000', 'MITO POWER BANK B3000,M3000', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7461052124008', '-', '1', '1', 'ASBAK GARPU', 'ASBAK GARPU', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('749921020192', '-', '1', '1', 'TROPICANASLIM CLASSIC', 'TROPICANASLIM CLASSIC', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('751', '-', '1', '1', 'SANDAL NEW ERA PROFOUND', 'SANDAL NEW ERA PROFOUND', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('752', '-', '1', '1', 'KADO GELAS', 'KADO GELAS', '100', '11003003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('756', '-', '1', '1', 'CARJER CORBY', 'CARJER CORBY', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('757', '-', '1', '1', 'CARJER 757', 'CARJER 757', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('758', '-', '1', '1', 'TELOR AYAM', 'TELOR AYAM', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '1');
INSERT INTO mstock VALUES ('759', '-', '1', '1', 'TJAP PIDA B', 'TJAP PIDA B', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7591684181251', '-', '1', '1', 'SEPON BEDAK FAIR LADY', 'SEPON BEDAK FAIR LADY', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('761', '-', '1', '1', 'catut bulu', 'catut bulu', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('76164217', '-', '1', '1', 'MARLBORO MERAH', 'MARLBORO MERAH 20 BATANG', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '22');
INSERT INTO mstock VALUES ('762', '-', '1', '1', 'KANEBO YARIS, INOVA', 'KANEBO YARIS, INOVA', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622300136048', '-', '1', '1', 'OREO STRAWBERYYY', 'OREO STRAWBERYYY', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622300405588', '-', '1', '1', 'KEJUCAKE 16G', 'KEJU CAKE', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622300761349', '-', '1', '1', 'OREO MINI NEW RASA VANILA 67G', 'OREO MINI NEW RASA VANILA 67G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622300761363', '-', '1', '1', 'OREO MINI NEW COOKLAT 67GR', 'OREO MINI NEW COOKLAT 67G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('76239625', '-', '1', '1', 'MARLBORO MENTOL LIGHTS', 'MARLBORO MENTOL LIGHTS', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('76239878', '-', '1', '1', 'MARLBORO PUTIH', 'MARLBORO PUTIH 20 BATANG ', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '20');
INSERT INTO mstock VALUES ('764', '-', '1', '1', 'PARFUM LAUNDRI 5 LTR', 'PARFUM LAUNDRI 5 LTR', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('765', '-', '1', '1', 'DETERJENT CAIR 5 LTR', 'DETERJENT CAIR 5 LTR', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('773602046744', '-', '1', '1', 'LIPSTICK MAC', 'LIPSTICK MAC', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('775', '-', '1', '1', 'PLASITIN PRINCESS / APIK', 'PLASITIN PRINCESS / APIK', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('785', '-', '1', '1', 'KACAMATA 25.000', 'KACAMATA 25.000', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30122');
INSERT INTO mstock VALUES ('786', '-', '1', '1', 'SANDAL ANDO SUPER,ANDO COLORFEET', 'SANDAL ANDO SUPER,ANDO COLORFEET', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('787', '-', '1', '1', 'SANDAL ANDO CEWEK,KIDROCK ,GLISTEN', 'SANDAL ANDO CEWEK,KIDROCK ,GLISTEN', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('789', '-', '1', '1', 'MARIE WIJEN CAP MERPATI ISI 10', 'MARIE WIJEN MERPATI', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7891360544708', '-', '1', '1', 'RAUTAN FABER CASTELL', 'RAUTAN FABER CASTELL', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7898506250011', '-', '1', '1', 'SEPON BEDAK MACRILAN', 'SEPON BEDAK MACRILAN', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('790', '-', '1', '1', 'CUSSONS BABY PINTIL DOT ', 'PINTIL DOT', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('792', '-', '1', '1', 'FRAME HELO KITY,COMBINE ANDROID', 'FRAME HELO KITY,COMBINE ANDROID', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('793', '-', '1', '1', 'BONEKA LOVE ,MY BEAR', 'BONEKA LOVE ,MY BEAR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('794', '-', '1', '1', 'BONEKA 794', 'BONEKA 794', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30096');
INSERT INTO mstock VALUES ('796', '-', '1', '1', 'SENDOK PLASTIK SUAPI 144PCS', 'SENDOK PLASTIK SUAPI 144PCS', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('798', '-', '1', '1', 'KRUPUK MELY', 'KRUPUK MELY/KRUPUK SINGKONG', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '12');
INSERT INTO mstock VALUES ('800', '-', '1', '1', 'TISU BALIKU', 'TISU BALIKU', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('801', '-', '1', '1', 'LILIN ULANG TAHUN TARUNA GLORIA 24 BT + 12BT', 'LILIN ULANG TAHUN TARUNA GLORIA', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('804', '-', '1', '1', 'STAR CAM SC-23M', 'STAR CAM SC-23M', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('806', '-', '1', '1', 'KRIPIK PISANG KECIL', 'KRIPIK PISANG ENAK DAN GURIH FIT NUSA', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '36');
INSERT INTO mstock VALUES ('807', '-', '1', '1', 'NEW GOLDEN CLEANER', 'NEW GOLDEN CLEANER', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('808', '-', '1', '1', 'CLIP BOD', 'CLIP BOD', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('809010740599', '-', '1', '1', 'SP PUTIH 25G', 'SP PUTIH', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('812', '-', '1', '1', 'TEPUNG BERAS CAP BINTANG 20GR', 'TEPUNG BERAS CAP BINTANG 500GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('814', '-', '1', '1', 'PIRING SENG SSB', 'PIRING SENG SSB', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('815', '-', '1', '1', 'TEKO VICTORY', 'TEKO VICTORY', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('817', '-', '1', '1', 'SARINGAN THE KECIL', 'SARINGAN THE KECIL', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('818', '-', '1', '1', 'KOTAK NASI BUAH/LEMON', 'KOTAK NASI BUAH/LEMON', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('818072839998', '-', '1', '1', 'PENGGARIS BIG', 'PENGGARIS BIG', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('819', '-', '1', '1', 'GONDO CATS', 'GONDO CATS', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('820', '-', '1', '1', 'TEMPAT TISU', 'TEMPAT TISU', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('825', '-', '1', '1', 'CEMILAN USUS AYAM', 'CEMILAN USUS AYAM', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('827', '-', '0', '0', 'TELUR AYAM BALI', 'TELUR AYAM BALI', '100', '10001001', 'BUTIR', '-', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('828', '-', '1', '1', 'SANDAL ANDO NEW ICON HIGHILS', 'SANDAL ANDO NEW ICON HIGHILS', '100', '11003001', 'BUTIR', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('829', '-', '1', '1', 'sandal ardiles flepper cowok', 'sandal ardiles flepper cowok', '100', '11003001', 'BUTIR', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('831', '-', '1', '1', 'sandal barbie 806', 'sandal barbie 806', '100', '11003001', 'BUTIR', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('833', '-', '1', '1', 'sandal ando BT UK', 'sandal ando BT UK', '100', '11003001', 'BUTIR', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('834', '-', '1', '1', 'SANDAL SUPER GIRL 479', 'SANDAL SUPER GIRL 479', '100', '11003001', 'BUTIR', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('835', '-', '1', '1', 'SANDAL SUPER GIRL HIGHILS', 'SANDAL SUPER GIRL HIGHILS', '100', '11003001', 'BUTIR', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('836', '-', '1', '1', 'SANDAL ARDILES GALTY HIGHILS', 'SANDAL ARDILES GALTY HIGHILS', '100', '11003001', 'BUTIR', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('838', '-', '1', '1', 'SANDAL ANDO NICE', 'SANDAL ANDO NICE', '100', '11003001', 'BUTIR', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('84005992', '-', '1', '1', 'HARDYS LILIN ANGKA', 'HARDYS LILIN ANGKA', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('843163075634', '-', '1', '1', 'CHARGER BLACK BERRY', 'CHARGER BLACK BERRY', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8710103016816', '-', '1', '1', 'SETRIKA PHILIPS CLASIK', 'SETRIKA PHILIPS CLASIK', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8710103727705', '-', '1', '1', 'SETRIKA PHILIPCLASSIC', 'SETRIKA PHILIPCLASSIC', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8710163221120', '-', '1', '1', 'PHILIPS ESSENTIAL 14W WARM WHITE', 'PHILIPS ESSENTIAL 14W WARM WHITE', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291206538', '-', '1', '1', 'PHILIPS TORNADO 24WT', 'PHILIPS TORNADO 24WT', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291218401', '-', '1', '1', 'PHILIPS TORNADO 5WT', 'PHILIPS TORNADO 5WT', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291218463', '-', '1', '1', 'PHILIPS TORNANADO 12W WARM WHITE', 'PHILIPS TORNANADO 12W WARM WHITE', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291229315', '-', '1', '1', 'PHILIPS SITRANG 17W', 'PHILIPS SITERANG 17W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291791836', '-', '1', '1', 'PHILIPS ESSENTIAL 5W', 'ESENTIAL 5WT', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291791874', '-', '1', '1', 'PHILIPS ESSENTIAL 8W', 'PHILIPS ESENTIAL 8WT', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291791959', '-', '1', '1', 'PHILIPS ESENTIAL 14WT', 'PHILIPS ESENTIAL 14WT', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291791997', '-', '1', '1', 'PHILIPS ESSENTIAL 18WT', 'esential 18wt', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8727900953244', '-', '1', '1', 'PHILIPS SITRANG 3W', 'PHILIPS SITERANG 3WT', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8779355353858', '-', '1', '1', 'PENGGARIS SET', 'PENGGARIS SET', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8803612207704', '-', '1', '1', 'RAUTAN ME2 / PY-7027/MICKEY MOUSE PY-7019', 'RAUTAN ME2 / PY-7027/MICKEY MOUSE PY-7019', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806085520677', '-', '1', '1', 'SAMSUNG GALAXY FAME GT-S6810 PEARL WHITE', 'SASUNG GALAXY FAMEGT-S6810', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806085852433', '-', '1', '1', 'SAMSUNG GT-E1272', 'SAMSUNG GT-E1272', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806086725262', '-', '1', '1', 'SAMSUNG GALAXY YOUNG 2 G130 H', 'SAMSUNG GALAXY YOUNG 2 G130 H', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806088050423', '-', '1', '1', 'SAMSUNG GALAXY J1 ACE', 'SAMSUNG GALAXY J1 ACE', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8816688253544', '-', '1', '1', 'LIPSTIK PONDS MOISTURISE 3,8GR', 'LIPSTIK PONDS MOISTURISE 3,8GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8850389108055', '-', '1', '1', 'MOGU MOGU STROBERY 320ML', 'mogu-mogu strobery', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8850389108062', '-', '1', '1', 'MOGU MOGU LECI 320ML', 'MOGU MOGU LECI', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8850389108277', '-', '1', '1', 'MOGU MOGU KELAPA 320ML', 'MOGU MOGU KELAPA', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851932184564', '-', '1', '1', 'PONDS AGE MIRACLE DAY 10GR', 'PONDS AGE MIRACLE DAY 10GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851932343831', '-', '1', '1', 'PADDLE POP BANANA BOAT', 'PADDLE POP BANANA BOAT 42ML', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851932346856', '-', '1', '1', 'PONDS FLAWLESS WHITE DEWY ROSE CREAM SPF 30 50ML', 'PONDS FLAWLESS WHITE DEWY ROSE CREAM SPF 30 50ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8852200000623', '-', '1', '1', 'DOUBLEMINT WRIGLEY 5X15G', 'DOUBLEMINT WRIGLEY', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886001038011', '-', '1', '1', 'BENG BENG 22G', 'BENG BENG 22G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '15');
INSERT INTO mstock VALUES ('8886008101053', '-', '1', '1', 'AQUA TANGGUNG 600ML', 'AQUA TANGGUNG 600ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '6');
INSERT INTO mstock VALUES ('8886008101091', '-', '1', '1', 'AQUA BESAR 1500ML', 'AQUA BESAR 1500ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '3');
INSERT INTO mstock VALUES ('8886012895207', '-', '1', '1', 'KAPUR BARUS SEA GULL', 'KAPUR BARUS SEA GULL', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886013221203', '-', '1', '1', 'TWISTKO JAGUNG BAKAR 80G', 'TWISTKO JAGUNG BAKAR 80G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886013223207', '-', '1', '1', 'KENTANG GORENG FRENCH FRIES 68G', 'kentang goreng french fries 75g', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015410018', '-', '1', '1', 'NYAM NYAM FUN PACK', 'ARNOTTS NYAM NYAM FUN PACK 9G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015427238', '-', '1', '1', 'TINTAM WAFER', 'TINTAM WAFER', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015428235', '-', '1', '1', 'TIMTAM WAFER CHOCOLATE 15.5GR', 'TIMTAM WAFER CHOCOLATE 15.5GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '82');
INSERT INTO mstock VALUES ('8886020033431', '-', '1', '1', 'BAGUS KAPUR AJAIB 2X3.5GR', 'BAGUS KAPUR AJAIB 3,9GR 2 BATANG', '100', '10002003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886022941512', '-', '1', '1', 'ALKALINE A3', 'ALKALINE A3', '100', '11002001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886030323904', '-', '1', '1', 'PORSTEX BLUE 1000ML', 'PORSTEX BLUE 1000ML', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '30082');
INSERT INTO mstock VALUES ('8886057883665', '-', '1', '1', 'KRATINGDAENG 150ML', 'KRATINGDAENG 150ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886467100017', '-', '1', '1', 'PRINGLES ORIGINAL', 'PRINGLES POTATO ORIGINAL 110GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '168');
INSERT INTO mstock VALUES ('8886467100246', '-', '1', '1', 'PRINGLES ONION MINI', 'PRINGLES ONION MINI SOOR CREAM 2 ONION 42GR', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '30094');
INSERT INTO mstock VALUES ('8886467100260', '-', '1', '1', 'PRINGLES ORIGINAL KECIL', 'PRINGLES ORIGINAL KECIL  ORIGINAL 42GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '208');
INSERT INTO mstock VALUES ('8887549059636', '-', '1', '1', 'BATRE PANASONIC NEO 9V', 'BATRE PANASONIC NEO 9V', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8887549392559', '-', '1', '1', 'ALKALINE PANASONIC EVOLTA', 'ALKALINE PANASONIC EVOLTA AA2', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8887549472992', '-', '1', '1', 'BATRE PANASONIC METAL A2/ ABC PHOTO', 'BATERAI PANASONIC METAL A2', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '193');
INSERT INTO mstock VALUES ('8888021200539', '-', '1', '1', 'BATRE ENERGIZER A2', 'BATERAI ENERGIZER MAX AA', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103000118', '-', '1', '1', 'CUSSONS IMPERIAL LEATHER CLASSIC 75GR', 'CUSSONS IMPERIAL LEATHER CLASSIC 75GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103004192', '-', '1', '1', 'CUSSONS IMPERIAL LEATHER HANDWASH ENERGIZING 250ML', 'CUSSONS IMPERIAL LEATHER HANDWASH ENERGIZING 250ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103004215', '-', '1', '1', 'IMPERIAL LEATHER FRESHEN UP STRABERRY 225ML', 'IMPERIAL LEATHER FRESHEN UP STRABERRY 225ML', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103004222', '-', '1', '1', 'CUSSONS imperial leather energizing lemon 225ML', 'CUSSONS imperial leather energizing lemon 225ML', '100', '10002003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103004239', '-', '1', '1', 'IMPERIAL LEATHER PAMPERING ALOE VERA 225ML', 'IMPERIAL LEATHER PAMPERING ALOE VERA 225ML', '100', '10002003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103200013', '-', '1', '1', 'SABUN CUSSONS BABYMILD GENTLE 75G', 'SABUN CUSSONS BABYMILD GENTLE', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103208026', '-', '1', '1', 'CUSSONS BABY PACK', 'CUSSONS BABY PACK', '100', '10002005', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '30126');
INSERT INTO mstock VALUES ('8888166222090', '-', '1', '1', 'KHONG GUAN CREAM WAFER COCONUT 240G', 'KHONG GUAN CREAM WAFER COCONUT 240G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166336568', '-', '1', '1', 'NISSIN CRISPY CRACKERS 225G', 'NISSIN CRISPY CRACKERS 225G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166337305', '-', '1', '1', 'NISSIN WAFER STRAWBERRY 110GR', 'NISSIN WAFER STRAWBERRY 110GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166606395', '-', '1', '1', 'KHONG GUAN SALTCHEESE COMBO 20GR', 'KHONG GUAN SALTCHEESE COMBO 20GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166993150', '-', '1', '1', 'NISSIN WALENS CHOCO SOES 100G', 'NISSIN WALENS CHOCO SOES 100G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166996144', '-', '1', '1', 'NISSIN CRACKERS PIZZA 115G', 'NISSIN CRACKERS PIZZA 115G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888826019589', '-', '1', '1', 'GILLETTE 2 BLUE', 'GILLETTE  BLUE 2 PLUS', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '149');
INSERT INTO mstock VALUES ('8889495136850', '-', '1', '1', 'BEST CLING 30CM 12 INC', 'BEST CLING 30CM 12 INC', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('889349080368', '-', '1', '1', 'ASUS ZENFONE C PUTIH', 'ASUS ZENFONE C PUTIH', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8895328210895', '-', '1', '1', 'clipper honaga kecil / BAI CHANG', 'clipper honaga kecil / BAI CHANG', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901031029720', '-', '1', '1', 'DUPA TULASI SWARNA', 'DUPA TULASI SWARNA', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901031029751', '-', '1', '1', 'life mantra', 'life mantra', '100', '11001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901057306744', '-', '1', '1', 'ALAT STEPLES TEMBAK KANGARO TS 623', 'ALAT STEPLES TEMBAK KANGARO TS 623', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901057500111', '-', '1', '1', 'KANGARO T-10', 'KANGARO T-10', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902264020539', '-', '1', '1', 'DUPA LIFE AMBER', 'DUPA LIFE AMBER', '100', '11001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902264020553', '-', '1', '1', 'LIFE CEMPAKA', 'LIFE CEMPAKA', '100', '11001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902264020560', '-', '1', '1', 'DUPA LIFE JASMINE', 'DUPA LIFE JASMINE', '100', '11001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902264020577', '-', '1', '1', 'MAHARAJA GOLD', 'MAHARAJA GOLD', '100', '11001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902264029877', '-', '1', '1', 'LIFE MEDITATION', 'LIFE MEDITATION', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8904024505911', '-', '1', '1', 'life wild forest', 'life wild forest', '100', '11001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8906015302219', '-', '1', '1', 'DUPA SAI FLORA', 'DUPA SAI FLORA', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8918247954821', '-', '1', '1', 'BLOK NOTE BENEFIT', 'BLOK NOTE BENEFIT', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8934868015024', '-', '1', '1', 'REXONA DEO-LOTION FREE SPIRIT 9GR', 'REXONA SASET WOMEN', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8934868015031', '-', '1', '1', 'REXONA ICE MEN COOL 10G', 'REXONA MEN ICE COOL 10GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990011103024', '-', '1', '1', 'SIKAT CLOSET EXCLUSIVE', 'SIKAT CLOSET EXCLUSIVE', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990011998880', '-', '1', '1', 'SABUN RRT BEE&FLOWER 81G', 'SABUN RRT K', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990011998897', '-', '1', '1', 'SABUN RRT BEE&FLOWER 125G', 'SABUN RRT BEE & FLOWER BRAND 125GR', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090100150', '-', '1', '1', 'SARIAYU BEDAK TABUR KUNING LANGSAT', 'SARIAYU BEDAK TABUR KUNING LANGSAT', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090100167', '-', '1', '1', 'SARIAYU BEDAK TABUR KUNING PENGANTEN', 'SARIAYU BEDAK TABUR KUNING PENGANTEN', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090102406', '-', '1', '1', 'sariayu compact powder kuning penganten', 'sariayu compact powder kuning penganten', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090400847', '-', '1', '1', 'SARIAYU LULUR PUTIH LANGSAT 2 IN 1 175G', 'SARIAYU LULUR PUTIH LANGSAT 2 IN 1 175G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090401264', '-', '1', '1', 'BALI SPA BODY SCRUB JASMINE 200GR', 'BODY SCRUB BALI SPA JASMINE 200GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090401271', '-', '1', '1', 'BALI SPA COLLECTION BODY SCRUB LAVENDER 200GR', 'BALI SPA COLLECTION BODY SCRUB LAVENDER 200GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090401288', '-', '1', '1', 'bali spa collection green tea', 'bali spa collection green tea', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090401295', '-', '1', '1', 'BALI SPA COLLECTION BENGKUANG 200G', 'BALI SPA COLLECTION BENGKUANG 200G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990800100012', '-', '1', '1', 'MENTOS RASA MINT', 'MENTOS RASA MINT', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001111289', '-', '1', '1', 'SILVER QUEEN 33G', 'SILVER QUEEN 33G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001111647', '-', '1', '1', 'SILVERQUEEN CHUNKY BAR', 'SILVERQUEEN CHUNKY BAR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001111883', '-', '1', '1', 'SILVER QUEEN CHUNKY BAR', 'SILVER QUEEN CHUNKY BAR 36GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001111944', '-', '1', '1', 'TAKE-IT WAFER COKLAT 37GR', 'TAKE-IT WAFER COKLAT 37GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001121615', '-', '1', '1', 'SILVER QUEEN MILK CHOCOLATE/CASHEW 68GR', 'SLVER QUEEN MILLK CHOCOLATE/CASHEW 68G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30066');
INSERT INTO mstock VALUES ('8991001242075', '-', '1', '1', 'TOP CHOCOLATE 9GR', 'TOP CHOCOLATE 9GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001242976', '-', '1', '1', 'TOP BLACK IN WHITE 9 GR', 'TOP BLACK IN WHITE 9 GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001242983', '-', '1', '1', 'TOP BLACK AND WHITH 16GR', 'TOP BLACK AND WHITH 16GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001501011', '-', '1', '1', 'CHIC-CHOC BISCUIT 65GR', 'CHIC-CHOC BISCUIT 65GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001502261', '-', '1', '1', 'CHACHA PEANUT 7GR', 'CHACHA PEANUT', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001503107', '-', '1', '1', 'CHACHA PEANUT', 'CHACHA PEANUT', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001662255', '-', '1', '1', 'CHEW-EEZ CHOCO 8G', 'chew-eez choco', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '145');
INSERT INTO mstock VALUES ('8991001770417', '-', '1', '1', 'WAFER SELAMAT CHOCOLATE CREAM', 'WAFER SELAMAT CHOCOLATE CREAM', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001780126', '-', '1', '1', 'WAFER SELAMAT  CHOCOLATE 60GR', 'WAFER SELAMAT  CHOCOLATE 60GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001780133', '-', '1', '1', 'TWIISTER BLACK', 'TWIISTER BLACK', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001780140', '-', '1', '1', 'TWISTER CHOCO', 'TWISTER CHOCO', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001780492', '-', '1', '1', 'WAFER SELAMAT     COKLAT', 'WAFER SELAMAT     COKLAT', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001781000', '-', '1', '1', 'twister thins choco', 'twister thins choco', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001790071', '-', '1', '1', 'twister thins vanilla', 'twister thins vanilla', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001790187', '-', '1', '1', 'twister thins cappuccino', 'twister thins cappuccino', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001790200', '-', '1', '1', 'twister thins strowbery', 'twister thins strowbery', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001790293', '-', '1', '1', 'funtime cream sandwich 136G', 'funtime cream sandwich 136G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002101227', '-', '1', '1', 'kopi bubuk abc 65g', 'kopi bubuk abc 65g', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002101265', '-', '1', '1', 'ABC PLUS GULA 18G', 'ABC PLUS GULA 18G', '100', '10001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '13');
INSERT INTO mstock VALUES ('8991002101630', '-', '1', '1', 'ABC SUSU 31G', 'ABC SUSU 31G', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '7');
INSERT INTO mstock VALUES ('8991002121010', '-', '1', '1', 'GOOD DAY FUNTASTIC MOCACINNO COFFE 250ML', 'GOOD DAY COFFEE', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002122017', '-', '1', '1', 'ABC EXO MILK COFFE 230ML', 'abc exo milk coffee', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002304017', '-', '1', '1', 'RELAXA BARLEY MINT 125GR', 'RELAXA BARLEY MINT', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991038773344', '-', '1', '1', 'MODIS FACIAL COTTON 35GR', 'MODIS FACIAL COTTON 35GR', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '115');
INSERT INTO mstock VALUES ('8991102020152', '-', '1', '1', 'SIKAT FORMULA  DOUBLE ACTION', 'SIKAT FORMULA', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102020176', '-', '1', '1', 'SIKAT FORMULA DOUBLE ACTION', 'SIKAT FORMULA DOUBLE ACTION', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102021210', '-', '1', '1', 'FORMULA SILVER PROTECTOR SYSTEM', 'FORMULA SILVER PROTECTOR SYSTEM', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102230308', '-', '1', '1', 'BLASTER NEAPOLITAN STRAWBERRY VANILA 50X125GR', 'PERMEN BLASTERNEAPOLITAN', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102300421', '-', '1', '1', 'TANGO CHOCOLATE 176GR', 'WAFER TANGO COKLAT', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102300544', '-', '1', '1', 'TANGO SUSU VANILLA 176GR', 'TANGO SUSU VANILLA', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102302609', '-', '1', '1', 'WAFER TANGO COKLAT 76G', 'WAFER TANGO COKLAT 76G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102308892', '-', '1', '1', 'FULLO BLASTO CARAMEL & CRUNCHY 17GR', 'FULLO BLASTO', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102320245', '-', '1', '1', 'TANGO LONG CHEESE WAFER 200G', 'TANGO LONG CHEESE WAFER 200G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102380706', '-', '1', '1', 'FULLO WAFER ROLL OF CHOCOLATE', 'FULLO WAFER ROLL OF CHOCOLATE', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102381000', '-', '1', '1', 'FULLO CHOCO N VANILLA MILK 10,5G', 'FULLO', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102384841', '-', '1', '1', 'TANGO WAFER COKLAT 114G', 'TANGO WAFER COKLAT 114G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102386586', '-', '1', '1', 'TANGO WAFFLE CRUNCHOX 48G', 'TANGO WAFFLE CRUNCHOX 48G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102750035', '-', '1', '1', 'KLOP SUSU PISANG 110G', 'KLOP SUSU PISANG 110G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102750417', '-', '1', '1', 'HOTSA KREKER BBQ 103GR', 'HOTSA KREKER BBQ 103GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991115010102', '-', '1', '1', 'BIG BABOL RASA TUTTI FRUTI 5X20G', 'BIG BABOL RASA TUTTI FRUTI', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991115011109', '-', '1', '1', 'BIG BABOL JERUK 5X20G', 'BIG BABOL JERUK', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991115012106', '-', '1', '1', 'BIG BABOL STROBERY & KRIM 5X20G', 'BIG BOBOL STROBERY', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991380700029', '-', '1', '1', 'GARNIER LIGHT COMPLETE WHITE SPEED 100ML', 'GARNIER LIGHT COMPLETE WHITE SPEED 100ml', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389211571', '-', '1', '1', 'BUKU OCTAVO', 'BUKU OCTAVO', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389220016', '-', '1', '1', 'BUKU SIDU 38 SHEETS SD 1073 MJ', 'BUKU SIDU 38', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '139');
INSERT INTO mstock VALUES ('8991389220030', '-', '1', '1', 'BUKU GARIS 3 SIDU', 'BUKU GARIS 3 SIDU', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389220054', '-', '1', '1', 'BUKU SIDU 58', 'BUKU SIDU 58', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '181');
INSERT INTO mstock VALUES ('8991389221020', '-', '1', '1', 'BUKU GAMBAR A3 SIDU', 'BUKU GAMBAR A3 SIDU', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389228227', '-', '1', '1', 'BUKU KWITANSI SIDU 40 LBR', 'BUKU KWITANSI SIDU 40 LBR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389248034', '-', '1', '1', 'NOTA 2PLAY PAPERLINE', 'NOTA 2PLAY PAPERLINE', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991926101013', '-', '1', '1', 'IN MILD', 'IN MILD 16 BATANG', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '29');
INSERT INTO mstock VALUES ('8991926101020', '-', '1', '1', 'IN MENTOL', 'IN MENTOL', '100', '10001003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991991161332', '-', '1', '1', 'SENSODYNE FRESH MINT', 'SENSODYNE FRESH MINT 100GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992003782354', '-', '1', '1', 'ANTANGIN JRG 15ML', 'ANTANGIN JRG 15ML', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222020039', '-', '1', '1', 'MANDOM HAIR CREAM 55ML', 'MANDOM HAIR CREAM 55ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222040136', '-', '1', '1', 'PERFUME SPALDING 100ML', 'PERFUME SPALDING 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050043', '-', '1', '1', 'GATSBY WATER GLOSS SOFT 150GR', 'GATSBY WATER GLOSS SOFT 150GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050098', '-', '1', '1', 'GATSBY WATER GLASS SOFT 75GR', 'GATSBY WATER GLASS SOFT 75GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050104', '-', '1', '1', 'GATSBY WATER GLOSS HARD 150G', 'GATSBY WATER GLOSS HARD 150G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050142', '-', '1', '1', 'GATSBY WATER GLASS HARD 75GR', 'GATSBY WATER GLASS HARD 75GR', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050159', '-', '1', '1', 'GATSBY WATER GLOSS SUPER HARD 150G', 'GATSBY WATER GLOSS SUPER HARD 150G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050203', '-', '1', '1', 'GATSBY WATER GLASS SUPERHARD 75G', 'GATSBY WATER GLASS SUPERHARD 75G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050241', '-', '1', '1', 'GATSBY TREATMENT NORMAL 70G', 'GATSBY TREATMENT NORMAL 70G', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050265', '-', '1', '1', 'GATSBY NORMAL TREATMENT 250GR', 'GATSBY NORMAL TREATMENT 250GR', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050388', '-', '1', '1', 'GATSBY LEVEL 2 WATER GLOSS 30GR', 'GATSBY LEVEL 2 WATER GLOSS 30GR', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050395', '-', '1', '1', 'GATSBY WATER GLOSS HARD 30GR', 'GATSBY WATER GLOSS HARD 30GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050401', '-', '1', '1', 'GATSBY LEVEL 5 SUPER HARD 30GR', 'GATSBY LEVEL 5 SUPER HARD 30GR', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050418', '-', '1', '1', 'GATSBY NORMAL 28G', 'GATSBY NORMAL 28G', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050630', '-', '1', '1', 'GATSBY ANTI DANDRRUFF HAIR CREAM 250G', 'GATSBY ANTI DANDRRUFF HAIR CREAM 250G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222051606', '-', '1', '1', 'GATSBY BRITISH STYLE 75GR', 'GATSBY BRITISH', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222051613', '-', '1', '1', 'GATSBY WAX HARAJUKU STYLE 75G', 'GATSBY WAX HARAJUKU STYLE', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222051729', '-', '1', '1', 'GATSBY WAX SPIKY STYLE 75G', 'GATSBY WAX SPIKY', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222051750', '-', '1', '1', 'GATSBY WAX KECIL BRITISH STYLE 25GR', 'GATSBY WAX KECIL BRITISH STYLE 25GR', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222051767', '-', '1', '1', 'GATSBY WAX HARAJUKU 25GR', 'GATSBY WAX HARAJUKU 25GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222053112', '-', '1', '1', 'GATSBY WAX SHAGGY 25GR', 'GATSBY WAX SHAGGY 25GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222054492', '-', '1', '1', 'GATSBY STYLING POMADE 80GR', 'GATSBY STYLING POMADE 80GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30038');
INSERT INTO mstock VALUES ('8992222071109', '-', '1', '1', 'PIXY TWO WAY CAKE TROPICAL BEIGE 12.2GR', 'PIXY TWO WAY CAKE PERFECT FIT1 12.2GR', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222071116', '-', '1', '1', 'PIXY TWO WAY CAKE REFIL', 'PIXY TWO WAY CAKE REFIL', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222071123', '-', '1', '1', 'PIXY TWOWAY CAKE NATURAL BEIGE 12.2G', 'PIXY TWOWAY CAKE NATURAL BEIGE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222071857', '-', '1', '1', 'PIXY TWO WAY CAKE NATURAL WHITE 12.2G', 'PIXY TWOWAY CAKE NATURAL', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222072076', '-', '1', '1', 'PIXY TWO WAY CAKE ORIENTAL YELLOW 12.2G', 'PIXY TWO WAY CAKE PERFECT FIT', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222090445', '-', '1', '1', 'PUCELLE ROSE', 'PUCELLE ROSE', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222090452', '-', '1', '1', 'PUCELLE ROSE 175ML', 'PUCELLE ROSE 175ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222090469', '-', '1', '1', 'PUCELLE ROSE 75ML', 'PUCELLE ROSE 75ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222090476', '-', '1', '1', 'PUCELLE MUSK 175ML', 'PUCELLE MUSK 175ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222090513', '-', '1', '1', 'PUCELLE ORIENTAL 175ML', 'PUCELLE ORIENTAL 175ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091534', '-', '1', '1', 'PUCELLE WAVY OCEAN 150ML', 'PUCELLE WAVY OCEAN', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091541', '-', '1', '1', 'Pucelle Electric Sunrice 150ML', 'Pucelle Electric Sunrice 150ML', '100', '10002005', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091718', '-', '1', '1', 'PUCELLE JOLLY RHYTHM 150ML', 'Pucelle Jolly Rhythm 150ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091732', '-', '1', '1', 'Pucelle Eccentric Breeze 150ML', 'Pucelle Eccentric Breeze 150ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091923', '-', '1', '1', 'Pucelle Sparkling Love 75ML', 'Pucelle Sparkling Love 75ML', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091954', '-', '1', '1', 'Pucelle Electric Sunrise 75ML', 'Pucelle Electric Sunrise 75ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992266028626', '-', '1', '1', 'CENTONG LUX', 'CENTONG LUX', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304009167', '-', '1', '1', 'GARNIER TURBO LIGHT OIL CONTROL 100ML', 'garnier turbo light oil control', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304009204', '-', '1', '1', 'GARNIER MEN ICY SCRUB 100ML', 'GARNIER ICY SCRUB', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304010293', '-', '1', '1', 'GARNIER LIGHT COMPLETE WHITE SPEED 20 ML', 'GARNIERLIGHT COMPLETE WHITE SPEED 20 ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304016646', '-', '1', '1', 'maybelline clear smooth powder', 'maybelline clear smooth powder', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304016707', '-', '1', '1', 'maybelline improved formula', 'maybelline improved formula', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304016967', '-', '1', '1', 'GARNIER MEN ACCNO FIGHT', 'GARNIER MEN ACCNO FIGHT', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304017551', '-', '1', '1', 'MAYBELLINE 01', 'MAYBELLINE CLEAR SMOOTH', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304017568', '-', '1', '1', 'MAYBELLINE 02', 'MAYBELLINE CLEAR SMOOTH', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304017599', '-', '1', '1', 'MAYBELLINE 05', 'MAYBELLINE 05', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304024788', '-', '1', '1', 'GARNIER MEN BLACK FOAM 50ML', 'GARNIER MEN BLACK FOAM', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304036101', '-', '1', '1', 'GARNIER  PURE ACTIVE FRUIT ENERGY 50ML', 'GARNIER  PURE ACTIVE FRUIT ENERGY 50ML', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304047152', '-', '1', '1', 'GARNIER GENTLE FOAM SAKURA WHITE 100ml', 'GARNIER GENTLE FOAM SAKURA WHITE 100ml', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304047169', '-', '1', '1', 'GARNIER  PINKISH RADIANCE SAKURA WHITE 50ML', 'GARNIER  PINKISH RADIANCE SAKURA WHITE 50ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304047190', '-', '1', '1', 'GARNIER SAKURA WHITE 20ML', 'GARNIER SAKURA WHITE 20ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304052743', '-', '1', '1', 'GARNIER PURE ACTIVE WHITENING VITAMIN 20ML', 'GARNIER PURE ACTIVE WHITENING VITAMIN 20ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992695203441', '-', '1', '1', 'INSTO REGULER 7.5ML', 'INSTO REGULER', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696404441', '-', '1', '1', 'SUSU BEAR BRAND 189ML', 'SUSU BEAR BRAND 189ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '21');
INSERT INTO mstock VALUES ('8992696405240', '-', '1', '1', 'NESTLE DANCOWFORTIGRO', 'NESTLE DANCOW FORTIGRO EXCELNUTRI 400G', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696405431', '-', '1', '1', 'DANCOW FORTIGRO 400G', 'DANCOW FORTIGRO 400G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696407039', '-', '1', '1', 'DANCO 3+ 400G', 'DANCO 3+ 400G', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696415324', '-', '1', '1', 'FOX FRUIT 125GR', 'PERMEN FOX CRYSTAL', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696417076', '-', '1', '1', 'NESTLE CARNATION SUSU 500GR', 'NESTLE CARNATION SUSU 500GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696420373', '-', '1', '1', 'KOKO KRUNCH SASET', 'KOKO KRUNCH SASET', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696420557', '-', '1', '1', 'NESCAFE ORIGINAL COFFEEMIX 17,5G sachet', 'NESCAFE ORIGINAL COFFEEMIX 17,5G sachet', '100', '10001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '18');
INSERT INTO mstock VALUES ('8992702000025', '-', '1', '1', 'SUSU CAP ENAK  PUTIH 375GR', 'SUSU CAP ENAK  PUTIH 375GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992702005945', '-', '1', '1', 'INDOMILK SUSU SRERIL RASA COKLAT', 'INDOMILK SUSU STERIL RASA COKLAT 190ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '84');
INSERT INTO mstock VALUES ('8992702005976', '-', '1', '1', 'INDOMILK STRAWBERRY', 'INDOMILK STRAWBERRY 190ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '152');
INSERT INTO mstock VALUES ('8992702006003', '-', '1', '1', 'INDOMILK SUSU STERIL RASA MELON', 'INDOMILK SUSU STERIL RASA MELON', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '126');
INSERT INTO mstock VALUES ('8992716109172', '-', '1', '1', 'BISKUAT BOLU COKLAT 16.6GR', 'BISKUAT BOLU COKLAT 16.6GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992716109462', '-', '1', '1', 'BISKUAT BOLU RASA PANDAN 16GR', 'BISKUAT BOLU RASA PANDAN 16GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992717781025', '-', '1', '1', 'SUN KARA 65ML', 'SUN KARA 65ML', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992725910332', '-', '1', '1', 'LISTERINE COOL MINT 250ML', 'LISTERINE COOL MINT 250ML', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992725910400', '-', '1', '1', 'LISTERINE ANTI SEPTIC MOUTH WASH 80ML', 'LISTERINE ANTI SEPTIC MOUTH WASH 80ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992726938298', '-', '1', '1', 'JELY INACO JUICE 5X15GR', 'JELY INACO 5X15G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727000048', '-', '1', '1', 'LAURIER MAXI  8 PADS', 'LAURIER MAXI  8 PADS', '100', '10002004', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727001328', '-', '1', '1', 'BIORE CAIR DAILY ANTISEPTIC', 'BIORE CAIR DAILY ANTISEPTIC', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727001342', '-', '1', '1', 'BIORE CAIR PURE MILD', 'BIORE CAIR PURE MILD', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727002066', '-', '1', '1', 'BIORE CAIR WHITENING SCRUB', 'BIORE CAIR WHITENING SCRUB', '100', '11002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727003872', '-', '1', '1', 'BIORE CAIR LIVELY REFRESH', 'BIORE CAIR LIVELY REFRESH', '100', '11002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727004114', '-', '1', '1', 'BIORE CAIR FRESHY BLOSSOM', 'BIORE CAIR FRESHY BLOSSOM', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727004848', '-', '1', '1', 'BIORE CAIR SILKY SMOOTH', 'BIORE CAIR SILKY SMOOTH', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727005005', '-', '1', '1', 'BIORE BODY WASH HYGINIC COOL', 'BIORE BODY WASH HYGINIC COOL', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727005043', '-', '1', '1', 'BIORE CAIR BRIGHT CARE', 'BIORE CAIR BRIGHT CARE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992730999827', '-', '1', '1', 'PUSAN SWISS ROLL STRAWBERRY 20GR', 'PUSAN SWISS ROLL STRAWBERRY 20GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992730999858', '-', '1', '1', 'SWIS ROLL COCO PANDAN 20G', 'SWIS ROLL COCO PANDAN 20G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992730999865', '-', '1', '1', 'PUSAN SWISS ROLL CHOCOLATE 20GR', 'PUSAN SWISS ROLL CHOCOLATE 20GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992736290409', '-', '1', '1', 'SASA TEPUNG BAKWAN SPESIAL 100G', 'SASA TEPUNG BAKWAN SPESIAL 100G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992736424293', '-', '1', '1', 'SASA LARASA BUMBU NASI GORENG AYAM SPECIAL 20G', 'SASA LARASA BUMBU NASI GORENG AYAM SPECIAL 20G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992736980164', '-', '1', '1', 'SASA TEPUNG BUMBU ALA KENTUCKY AYAM KRISPI 80GR', 'SASA TEPUNG BUMBU ALA KENTUCKY AYAM KRISPI 80GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992742360844', '-', '1', '1', 'POLYTEX SABUT STENLIS', 'POLYTEX SABUT STENLIS', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992742375312', '-', '1', '1', 'SESUMI SABUT STAINLESS', 'SESUMI SABUT STAINLESS', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120186', '-', '1', '1', 'HIT MAT GENERASI BARU', 'HIT MAT GENERASI BARU', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120858', '-', '1', '1', 'HIT SEMPROT GREEN TEA 275ML', 'HITGREENTEA', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745129400', '-', '1', '1', 'HIT SEMPROT LEMON 275ML', 'HIT LEMON', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745140955', '-', '1', '1', 'HIT SEMPROT LILY BLOSSOM 225ML', 'HIT NATURAL', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745140962', '-', '1', '1', 'HIT SEMPROT LILY BLOSSOM 720ML', 'HIT ANTI NYAMUK DAN KECOAKLILY BLOSSOM', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320142', '-', '1', '1', 'STELA MATIC FRUIT FIESTA 225ML', 'STELA MATIC FRUIT FIESTA 225ML', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320173', '-', '1', '1', 'STELLA NATURAL JASMINE JUMBO 400ML', 'STELLA NATURAL JASMINE JUMBO 400ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320289', '-', '1', '1', 'STELLA NATURAL APPLE 250ML', 'STELLA NATURAL APPLE 250ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320296', '-', '1', '1', 'STELLA NATURAL JASMINE 250ML', 'STELLA NATURAL JASMINE 250ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320302', '-', '1', '1', 'STELLA NATURAL LEMON 250ML', 'STELLA NATURAL LEMON 250ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320326', '-', '1', '1', ' STELLA NATURAL ORANGE 250ML', ' STELLA NATURAL ORANGE 250ML', '100', '10002001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320685', '-', '1', '1', 'STELA GANTUNG JERUK 70GR', 'STELA GANTUNG JERUK 70GR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320784', '-', '1', '1', 'STELA ALL IN ONE LEMON', 'STELA GANTUNG LEMON 70GR', '100', '11003003', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325406', '-', '1', '1', 'STELLA MATIC SET', 'STELLA MATIC SET', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325505', '-', '1', '1', 'STELA LIQUID SKYLINE FRESH APPLE', 'STELA LIQUID SKYLINE FRESH APPLE', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325550', '-', '1', '1', 'STELLA REFILL MATIC WILD FLOWER 225ML', 'STELLA WILD MATIC 225ML', '100', '11002001', 'KLG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745326212', '-', '1', '1', 'STELLA REFILL MATIC SPRING GARDEN 225ML', 'STELA MATIC SPRING GARDEN  225ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745330103', '-', '1', '1', 'FOG0 STELLA BREEZE 30GR', 'FOG0 STELLA BREEZE 30GR', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745330134', '-', '1', '1', 'STELLA LEMARI PRINCESS 30GR', 'STELLA LEMARI PRINCESS 30GR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745540298', '-', '1', '1', 'MITU BABY', 'MITU BABY CHAMOMILE 4 LMB', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745540717', '-', '1', '1', 'MITU BABY CHRYSANTHEMUM 20 LMR', 'MITU BABY CHRYSANTHEMUM 20 LMR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745550242', '-', '1', '1', 'MITU BABY', 'MITU BABY CHRYSANTHEMUM 4 LMB', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992747180225', '-', '1', '1', 'VIXAL KUAT HARUM 800ML', 'VIXAL KUAT HARUM 800ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992748195204', '-', '1', '1', 'LIM  TIKUS CAP GAJAH', 'LIM  TIKUS CAP GAJAH', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992750540405', '-', '1', '1', 'MITU BABY REGULAR TABUNG CHARMOMILE', 'MITU BABY REGULAR TABUNG CHARMOMILE', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992750540412', '-', '1', '1', 'MITU BABY REGULAR TABUNG CHRYSANTHEMUM', 'MITU BABY REGULAR TABUNG CHRYSANTHEMUM', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992750540504', '-', '1', '1', 'MITU BABY CHAMOMILE 60 SHEET', 'MITU BABY CHAMOMILE 60 SHEET', '100', '11002002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992750540511', '-', '1', '1', 'MITU BABY CHRYSANTHEMUM 60 SHEET', 'MITU BABY CHRYSANTHEMUM 60 SHEET', '100', '10002005', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992750540856', '-', '1', '1', 'MITU BABY CHAMOMILE 20 LMBR', 'MITU BABY CHAMOMILE 20 LMBR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752011033', '-', '1', '1', 'VIT MINERAL 600ML', 'VIT MINERAL 600ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752116233', '-', '1', '1', 'MIZONE APEL GUAVA', 'MIZONE APEL GUAVA', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752118107', '-', '1', '1', 'MIZONE ORANGE LIME BOTOL  500ML', 'MIZONE ORANGE LIME BOTOL  500ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752119104', '-', '1', '1', 'MIZONE LYCHEE LEMON BOTOL 500ML', 'MIZONE LYCHEE LEMON BOTOL 500ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992753980703', '-', '1', '1', 'SUSU FRISIAN BABY AWAL 0-6 BULAN', 'SUSU FRISIAN BABY AWAL 0-6 BULAN', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992753984503', '-', '1', '1', 'FRISIAN BABY LANGKAH 6-12 BLN 400G', 'FRISIAN BABY LANGKAH 6-12 BLN 400G', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992758110013', '-', '1', '1', 'INTERBIS WAFER CREM COKLAT 110G', 'INTERBIS WAFER CREM COKLAT 110G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992759154016', '-', '1', '1', 'NICE FACIAL TISSUE 8 SHEET', 'NICE FACIAL TISSUE 8 SHEET', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992759218046', '-', '1', '1', 'TISU JOLLY 10 ROLLS 30 GRAM', 'TISU JOLLY 10 ROLL 45 GRAM', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992759324136', '-', '1', '1', 'TISU MAKAN TOPLY', 'TISU MAKAN TOPLY', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992760121014', '-', '1', '1', 'OREO COKELAT KRIM VANILA 29.4GR', 'OREO COKELAT KRIM VANILA 29.4GR', '100', '11002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '42');
INSERT INTO mstock VALUES ('8992760221028', '-', '1', '1', 'OREO ROL VANILA CREM 137GR', 'OREO ROL VANILA CREM 137G', '100', '11003002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992760223015', '-', '1', '1', 'OREO CHOCOLATE CRÈME 137GR', 'OREO CHOCOLATE CRÈME 137GR', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992760223022', '-', '1', '1', 'OREO COKLAT CRÈME 29.4G', 'OREO COKLAT CRÈME 29.4G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761002015', '-', '1', '1', 'COCA COLA 390ML', 'coca cola 390ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '58');
INSERT INTO mstock VALUES ('8992761002022', '-', '1', '1', 'SPRITE 390ml', 'SPRITE 390ml', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '50');
INSERT INTO mstock VALUES ('8992761002039', '-', '1', '1', 'FANTA SERU STROBERY 390 ML', 'FANTA SERU STROBERY 390 ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761111519', '-', '1', '1', 'COCA COLA KALENG 250ML', 'COCA COLA KALENG 250ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761111533', '-', '1', '1', 'SPRITE KALENG250ML', 'SPRITE KALENG250ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761111540', '-', '1', '1', 'FANTA STROBERI KALENG 250ML', 'FANTA STROBERI KALENG 250ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761122331', '-', '1', '1', 'FRESTEA APEL BTL 500ML', 'FRESTEA APEL BTL 500ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '189');
INSERT INTO mstock VALUES ('8992761122348', '-', '1', '1', 'FRESTEA MARKISA 500ML', 'FRESTEA MARKISA 500ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761122430', '-', '1', '1', 'FRESTEA GREEN BTL MADU 500ML', 'FRESTEA GREEN BTL MADU 500ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761122522', '-', '1', '1', 'FRESTEA KLASIK 500ML', 'FRESTEA KLASIK', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761164539', '-', '1', '1', 'MINUTE MAID NUTRIBOOST RASA JERUK 300ML', 'MINUTE MAID NUTRIBOOST RASA JERUK 300ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '165');
INSERT INTO mstock VALUES ('8992761164546', '-', '1', '1', 'MINUTE MAID NUTRIBOOST RASA STROBERI 300ML', 'MINUTE MAID NUTRIBOOST RASA STROBERI 300ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '117');
INSERT INTO mstock VALUES ('8992761166038', '-', '1', '1', 'PULPY ORANGE BOTOL 350ML', 'PULPY ORANGE BOTOL 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '135');
INSERT INTO mstock VALUES ('8992761166199', '-', '1', '1', 'PULPY ALOE VERA 350ML', 'PULPY ALOE VERA 350ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992770034151', '-', '1', '1', 'MASAKO AYAM 250G', 'MASAKO AYAM 250G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992770054036', '-', '1', '1', 'SAJIKU NASI GORENG RASA PEDAS 20G', 'SAJIKU NASI GORENG RASA PEDAS', '100', '11003002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992770061010', '-', '1', '1', 'SAJIKU TEPUNG BUMBU SERBAGUNA 80GR', 'SAJIKU TEPUNG BUMBU SERBAGUNA 80GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992771008465', '-', '1', '1', 'pigeon yellow', 'pigeon yellow', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992771008489', '-', '1', '1', 'pigeon teensgold', 'pigeon teensgold', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772122245', '-', '1', '1', 'ADEM SARI SASET', 'ADEM SARI SASET 7GR', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772198011', '-', '1', '1', 'KISPRAY AMORIS REFILL 300ML', 'KISPRAY AMORIS REFILL 300ML', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772198035', '-', '1', '1', 'KISPRAY BLUIS REFILL 300ML', 'KISPRAY BLUIS REFILL 300ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772198042', '-', '1', '1', 'KISPRAY VIOLET REFILL 300ML', 'KISPRAY VIOLET REFILL 300ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772485012', '-', '1', '1', 'COOLANT BENGKOANG 350ML', 'COOLANT BENGKOANG 350ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772485029', '-', '1', '1', 'COOLANT STAR FRUIT 350ML', 'COOLANT STAR FRUIT 350ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772585026', '-', '1', '1', 'ADEM SARI CHINGKU BOTOL 350ML', 'ADEM SARI CHINGKU BOTOL 350ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '69');
INSERT INTO mstock VALUES ('8992772586016', '-', '1', '1', 'ADEM SARI CHING KU KALENG 320ML', 'ADEM SARI CHING KU KALENG 320ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '176');
INSERT INTO mstock VALUES ('8992775110140', '-', '1', '1', 'KACANG KULIT GARUDA 200G', 'KACANG KULIT GARUDA 200G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '140');
INSERT INTO mstock VALUES ('8992775110157', '-', '1', '1', 'KACANG KULIT GARUDA 75G', 'KACANG KULIT GARUDA 75G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775311608', '-', '1', '1', 'CHOCOLATOS WAFER 9 GR', 'CHOCOLATOS WAFER 9 GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '5');
INSERT INTO mstock VALUES ('8992775315057', '-', '1', '1', 'GERY SALUT MALKIST 140G', 'GERY SALUT MALKIST 140G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '190');
INSERT INTO mstock VALUES ('8992779157905', '-', '1', '1', 'GLADE LEMON SQUASH 85GR', 'GLADE LEMON SQUASH 85GR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992779195006', '-', '1', '1', 'GLADE DIAMOND COOL WATER', 'GLADE DIAMOND COOL WATER', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992779267000', '-', '1', '1', 'SAMPO KIT 30ML', 'SAMPO KIT 30ML', '100', '10002003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992779269103', '-', '1', '1', 'KIT MOTOR 100ML', 'KIT MOTOR 100ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992779269202', '-', '1', '1', 'KIT MOTOR POLES CAIR 25ML', 'KIT MOTOR POLES CAIR 25ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992779274305', '-', '1', '1', 'KIT BLACK MAGIC', 'KIT BLACK MAGIC', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992779281204', '-', '1', '1', 'KIT BLACK MAGIC REVIL 200ML', 'KIT BLACK MAGIC REVIL 200ML', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992779281303', '-', '1', '1', 'KIT BLACK MAGIC 300ML', 'KIT BLACK MAGIC 300ML', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011112', '-', '1', '1', 'Viva Milk Cleanser Lemon 100ML', 'Viva Milk Cleanser Lemon 100ML', '100', '10002006', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011136', '-', '1', '1', 'VIVA MILK CLEANSER BENGKUANG 100ML', 'Milk Cleanser Bengkuang 100ML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011150', '-', '1', '1', 'VIVA MILK CLEANSER SPIRULINA 100ML', 'VIVA MILK CLEANSER SPIRULINA', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011204', '-', '1', '1', 'VIVA MILK CLEANSER CUCUMBER 100ML', 'VIVA MILK CLEANSER CUCUMBER 100ML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011341', '-', '1', '1', 'Viva Face Tonic Bengkuang 100ML', 'Viva Face Tonic Bengkuang 100ML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011365', '-', '1', '1', 'Viva Face Tonic Spirulina 100ML', 'Viva Face Tonic Spirulina 100ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011808', '-', '1', '1', 'viva pelembab', 'viva pelembab', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796033831', '-', '1', '1', 'BEDAK TABUR VIVA', 'BEDAK TABUR VIVA', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796033848', '-', '1', '1', 'VIVA FACE POWDER NATURAL 25 GR', 'VIVA FACE POWDER NATURAL 25 GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796033909', '-', '1', '1', 'BEDAK TABUR VIVA', 'BEDAK TABUR VIVA', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796034241', '-', '1', '1', 'VIVACOMPAC POWDER NATURAL', 'VIVACOMPAC POWDER NATURAL', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796034296', '-', '1', '1', 'VIVA COMPAC POWDER KUNING LANGSAT', 'VIVA COMPAC POWDER KUNING LANGSAT', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796034302', '-', '1', '1', 'VIVA COMPAC POWDER KUNING PENGANTIN', 'VIVA COMPAC POWDER KUNING PENGANTIN', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796034500', '-', '1', '1', 'COMPACT POWDER VIVA KUNING PENGANTIN', 'COMPACT POWDER VIVA KUNING PENGANTIN', '100', '10002007', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796045094', '-', '1', '1', 'LIQUID KUNING LANGSAT', 'LIQUID KUNING LANGSAT', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796045100', '-', '1', '1', 'viva liquid', 'viva liquid', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992803270303', '-', '1', '1', 'SAMPO NOSY', 'SAMPO NOSY 30ML', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992803658507', '-', '1', '1', 'PLACENTA BODY LOTION VITAMIN E 600ML', 'PLACENTA BODY LOTION VITAMIN E 600ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992803661712', '-', '1', '1', 'BDL BODY SCRUB PAPAYA 250G', 'BDL BODY SCRUB PAPAYA 250G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992821100026', '-', '1', '1', 'OBAT MATA ROTO', 'OBAT MATA ROTO', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992829888827', '-', '1', '1', 'THE PERBAWATI GOALPARA', 'THE PERBAWATI GOALPARA', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832140011', '-', '1', '1', 'CASABLACA GREEN', 'CASABLACA GREEN', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832140028', '-', '1', '1', 'CASABLANCA BLACK', 'CASABLANCA BLACK', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832140035', '-', '1', '1', 'MINYAK RAMBUT CASABLANCA', 'MINYAK RAMBUT CASABLANCA', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832140066', '-', '1', '1', 'CASABLANCA POMADE GOLD', 'CASABLANCA POMADE GOLD', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832191167', '-', '1', '1', 'BELLAGIO STAMINA', 'BELLAGIO STAMINA 100ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832191174', '-', '1', '1', 'BELLAGIO RAVE CULTURE', 'BELLAGIO RAVE CULTURE', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832601321', '-', '1', '1', 'CASABLANCA RED', 'CASABLANCA RED', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832603165', '-', '1', '1', 'REGAZZA CLASSY', 'REGAZZA CLASSY', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832603608', '-', '1', '1', 'REGANZA GLOW', 'REGANZA GLOW', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992838423880', '-', '1', '1', 'MINYAK TELON LOWO', 'MINYAK TELON LOWO 40ML', '100', '10002002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992841222029', '-', '1', '1', 'KOPI BUBUK SETIA BALI 200G', 'KOPI BUBUK SETIA BALI 200G', '100', '10001002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '30128');
INSERT INTO mstock VALUES ('8992841224023', '-', '1', '1', 'kopi setia bali kecill 40g', 'kopi setia bali kecill 40g', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992843100158', '-', '1', '1', 'BETADINE 15ML', 'BETADINE 15ML', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856892507', '-', '1', '1', 'VITALIS BLOSSOM SPECIAL 120ML', 'VITALIS BLOSSOM', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856892514', '-', '1', '1', 'VITALIS BLOSOM', 'VITALIS BLOSOM', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856892521', '-', '1', '1', 'VITALIS BREEZE SUCCES 120ML', 'VITALIS BREEZE 150', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856892538', '-', '1', '1', 'VITALIS BREEZE', 'VITALIS BREEZE', '100', '11003002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856893160', '-', '1', '1', 'VITALIS BIZARRE 120ML', 'VITALIS BIZARRE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856893177', '-', '1', '1', 'VITALIS BIZARRE 60ML', 'VITALIS BIZARRE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856893665', '-', '1', '1', 'SUMBER AYU DAUN SIRIH NATURAL 60ML', 'SUMBER AYU DAUN SIRIH NATURAL 60ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856893672', '-', '1', '1', 'VITALIS BLESS FABULOUS 120ML', 'VITALIS BLRSS', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856893689', '-', '1', '1', 'VITALIS BLESS 60ML', 'VITALIS BLESS', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856893696', '-', '1', '1', 'VITALIS BLISSFUL', 'VITALIS BLISSFUL', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856893702', '-', '1', '1', 'VITALIS BLISSFUL 60ML', 'VITALIS BLISSFUL', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856895393', '-', '1', '1', 'VITALIS BELLE 60ML', 'VITALIS BELLE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856895409', '-', '1', '1', 'VITALIS BELLE 120ML', 'VITALIS BELLE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856897366', '-', '1', '1', 'VITALIS HAUTE COUTURE 100ML', 'VITALIS HAUTE COUTURE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856897373', '-', '1', '1', 'VITALIS FEMME CHIC 100ML', 'VITALIS FEMME CHIC', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856897380', '-', '1', '1', 'VITALIS MAGNIFIQUE 100ML', 'VITALIS MAGNIFIQUE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992866110608', '-', '1', '1', 'semir bigen', 'SEMIR BIGEN 6G', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992931005099', '-', '1', '1', 'TISU TESSA TRAVEL TISSUE 50S X 3 PLAY', 'TISU TESSA TRAVEL TISSUE 50S X 3 PLAY', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992933468113', '-', '1', '1', 'PUDING SUSU RASA VANILA', 'PUDING SUSU RASA VANILA', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946512285', '-', '1', '1', 'SABUN SHINZUI KIREI 90G', 'SHINZUI  KIREI SOAP 90GR', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946513350', '-', '1', '1', 'SHINZUI BODY CLEANSER MATSU 250ML', 'SHINZUI BODY CLEANSER MATSU 250ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946519369', '-', '1', '1', 'SHINZUI BODY CLEANSER HANA 250ML', 'SHINZUI BODY CLEANSER HANA 250ML', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946519376', '-', '1', '1', 'SHINZUI BODY CLEANSER KIREI 250ML', 'SHINZUI BODY CLEANSER KIREI 250ML', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522222', '-', '1', '1', 'SHINZUI BODY CLEANSER MYARI 250ML', 'SHINZUI BODY CLEANSER MYARI 250ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522239', '-', '1', '1', 'SHINZUI BODY CLEANSER SAKURA 250ML', 'SHINZUI BODY CLEANSER SAKURA 250ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522246', '-', '1', '1', 'SHINZUI BODY CLEANSER KENSHO 250ML', 'SHINZUI BODY CLEANSER KENSHO 250ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992947419019', '-', '1', '1', 'GOOD  HAIR SPRAY 90ML', 'GOOD  HAIR SPRAY 90ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992952925390', '-', '1', '1', 'MARY QUEEN  CHOCOLATE', 'MARY QUEEN  CHOCOLATE 20GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '164');
INSERT INTO mstock VALUES ('8992952951290', '-', '1', '1', 'CHO CHO LOLLIPOP 12GR', 'CHO CHO LOLLIPOP 12GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992957214307', '-', '1', '1', 'SAFARI COKLAT', 'SAFARI COKLAT 100GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992994110112', '-', '1', '1', 'YAKULT', 'YAKULT 65ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30');
INSERT INTO mstock VALUES ('8993005124012', '-', '1', '1', 'KALADINE POWDER', 'CALADINE POWDER 60G', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993018702252', '-', '1', '1', 'minyak goreng ikan bandeng 5 liter', 'minyak goreng ikan bandeng 5 liter', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993027111601', '-', '1', '1', 'happy tos corn chips', 'happy tos corn chips', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '198');
INSERT INTO mstock VALUES ('8993027121600', '-', '1', '1', 'HAPPY TOS TORTILLA CHIPS 160 GR', 'HAPPY TOS TORTILLA CHIPS 160 GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30077');
INSERT INTO mstock VALUES ('8993027163754', '-', '1', '1', 'HAPPY TOS KERIPIK JAGUNG', 'HAPPY TOS KERIPIK JAGUNG', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '129');
INSERT INTO mstock VALUES ('8993039111255', '-', '1', '1', 'REGAL BISKUIT MARIE', 'REGAL BISKUIT MARIE ROLL 125G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30121');
INSERT INTO mstock VALUES ('8993039112504', '-', '1', '1', 'ROTI REGAL', 'ROTI REGAL ROLL 250G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993042221514', '-', '1', '1', 'CASTELLA MILK BENGKUANG 150ML', 'CASTELLA MILK BENGKUANG 150ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993042221521', '-', '1', '1', 'CASTELLA MILK HONEY 150ML', 'CASTELLA MILK HONEY 150ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993053111408', '-', '1', '1', 'TISU PASEO ELEGAN', 'TISU PASEO ELEGAN', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993053141658', '-', '1', '1', 'TISU PASEO MINI', 'TISU PASEO MINI 8 SHEET 3 PLAY', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993058300401', '-', '1', '1', 'KOMIX PEPPERMINT 7ML', 'KOMIX PEPPERMINT', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993058300500', '-', '1', '1', 'KOMIX JAHE 7ML', 'KOMIX JAHE', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993083140034', '-', '1', '1', 'BISKITOP ORANGE JERUK KALENG 350G', 'BISKITOP ORANGE JERUK KALENG 350G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993083923811', '-', '1', '1', 'WAFER STIK LEMON,TIRAMISU', 'WAFER STIK LEMON,TIRAMISU', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993083926270', '-', '1', '1', 'CHOCOLATE WAFER STICK WILLIE', 'CHOCOLATE WAFER STICK WILLIE', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993093115008', '-', '1', '1', 'ROSE BRAND TEPUNG BERAS', 'ROSE BRAND TEPUNG BERAS 500GR', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993093135006', '-', '1', '1', 'TEPUNG KETAN ROSE BRAND 500G.', 'TEPUNG KETAN ROSE BRAND 500G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993093664605', '-', '1', '1', 'tepung rosebrand tapioka', 'TEPUNG ROSEBRAND TAPIOKA 500G', '100', '11003002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993093664704', '-', '1', '1', 'MINYAK GORENG ROSE BRAND 1L', 'MINYAK GORENG ROSE BRAND 1L', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993093664810', '-', '1', '1', 'MINYAK GORENG TAWON 5L', 'MINYAK GORENG TAWON 5L', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993110071119', '-', '1', '1', 'SO NICE SOSIS AYAM 20GR', 'SOSIS AYAM', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '8');
INSERT INTO mstock VALUES ('8993113021074', '-', '1', '1', 'PEDITOK 50ML', 'PEDITOK', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137572187', '-', '1', '1', 'WARDAH NIGHT CREAM STEP 1 30GR', 'WARDAH NIGHT CREAM STEP 1', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137572194', '-', '1', '1', 'WARDAH NIGHT CREAM  STEP 2 30GR', 'WARDAH CREAM MLM', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137678469', '-', '1', '1', 'WARDAH BODY LOTION', 'WARDAH BODY LOTION', '100', '10002007', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137678735', '-', '1', '1', 'WARDAH MILK CLEANSER 150ML', 'WARDAH MILK CLEANSER', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137678742', '-', '1', '1', 'WARDAH LIGHTENING FACE TONER 150ML', 'wardah lightening face toner', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137685597', '-', '1', '1', 'WARDAH TO WAY CAKE 01', 'WARDAH TO WAY CAKE 01', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137685603', '-', '1', '1', 'WARDAH TO WAY CAKE', 'WARDAH TO WAY CAKE', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137685627', '-', '1', '1', 'WARDAH TWO WAY CAKE 04', 'WARDAH TWO WAY CAKE 04', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137685696', '-', '1', '1', 'WARDAH TWO WAY CAKE 01', 'WARDAH TWO WAY CAKE 01', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137685702', '-', '1', '1', 'WARDAH TWO WAY CAKE 02', 'WARDAH TWO WAY CAKE 02', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137685719', '-', '1', '1', 'WARDAH TWO WAY CAKE 03', 'WARDAH TWO WAY CAKE 03', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137685726', '-', '1', '1', 'WARDAH LITHENING LIGHT FEEL SPF 15 12G', 'WARDAH LITHENING LIGHT FEEL SPF 15 12G', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993159102409', '-', '1', '1', 'AQUA GELAS 240ML', 'AQUA GELAS 240ML', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175535878', '-', '1', '1', 'RICHEESE NABATI CHEESE WAFER 52 G', 'RICHEESE NABATI CHEESE WAFER', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175535885', '-', '1', '1', 'RICHOCO NABATI CHOCOLATE WAFER 52 G', 'RICHOCO NABATI CHOCOLATE WAFER', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175538527', '-', '1', '1', 'RICHEESE BISVIT SELIMUT 50GR', 'BISVIT SELIMUT', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175538541', '-', '1', '1', 'NEXTAR PINEAPPLE JAM 42GR', 'NEXTAR PINEAPPLE JAM 42GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175538848', '-', '1', '1', 'RICHOCO SIIP CHOCOLATE FLAVOR 30G', 'RICHOCO SIIP CHOCOLATE FLAVOR 30G', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176110012', '-', '1', '1', 'minyak angin cap lang 12ml', 'minyak angin cap lang 12ml', '100', '10002002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176110036', '-', '1', '1', 'MINYAK ANGIN LANG 3ML', 'MINYAK ANGIN LANG 3ML', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176110067', '-', '1', '1', 'MINYAK KAYU PUTIH 120 ML', 'MINYAK KAYU PUTIH 120 ML', '100', '10002001', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176110111', '-', '1', '1', 'GPU OIL 30ML', 'GPU LINIMENT OIL 30ML', '100', '10002002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176110135', '-', '1', '1', 'TELON LANG 30ML', 'TELON LANG NATURAL 30ML', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176803099', '-', '1', '1', 'MINYAK TELON LANG 60ML', 'MINYAK TELON LANG NATURAL 60ML', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176803204', '-', '1', '1', 'MINYAK GANDAPURA WINTERGREEN 60ML', 'MINYAK GANDAPURA WINTERGREEN 60ML', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176812015', '-', '1', '1', 'GELIGA 40G', 'GELIGA 40G', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176812022', '-', '1', '1', 'GELIGA 20G', 'GELIGA 20G', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189230103', '-', '1', '1', 'CHARM NIGHT WING 29CM', 'CHARM NIGHT WING 29CM', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270260', '-', '1', '1', 'CHARM BODY FIT GATHERS 35CM 6.1PC', 'CHARM BODY FIT GATHERS 35CM 6.1PC', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270420', '-', '1', '1', 'CHARM BODY FIT NIGHT WING GATHER 35 CM 12.2 PC', 'CHARM BODY FIT NIGHT WING GATHER 35 CM 12.2 PC', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270796', '-', '1', '1', 'MAMY POKO PANTS M 1 PCS', 'MAMY POKO PANTS M 1 PCS', '100', '11003001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270802', '-', '1', '1', 'MAMY POKO PANTS STANDAR M 9 PCS', 'MAMY POKO PANTS STANDAR M 9 PCS', '100', '10002004', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270826', '-', '1', '1', 'MAMY POKO PANTS PEMPES L 8 PCS', 'MAMMY POKO PANTS  L 8 PCS', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270840', '-', '1', '1', 'P0P0K MAMYPOKO STANDAR EKSTRA XL7', 'P0P0K MAMYPOKO STANDAR EKSTRA XL7', '100', '10002004', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270857', '-', '1', '1', 'MAMY POKO STANDAR XXL 6', 'MAMY POKO STANDAR XXL 6', '100', '11003001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189271007', '-', '1', '1', 'MAMY POKO STANDAR M20', 'MAMY POKO STANDAR M20', '100', '11003003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189271014', '-', '1', '1', 'MOMY POKO STANDAR L20', 'MOMY POKO STANDAR L20', '100', '11003003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189271762', '-', '1', '1', 'MAMY POKO PANTS STANDAR S 11', 'MAMY POKO PANTS STANDAR S 11', '100', '10002004', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189271854', '-', '1', '1', 'MAMYPOKO STANDAR S 22', 'MAMYPOKO STANDAR S 22', '100', '11003001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993212100069', '-', '1', '1', 'VISINE', 'VISINE', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993296220004', '-', '1', '1', 'TEPUNG TERIGU LENCANA MERAH 1KG', 'TEPUNG TERIGU LENCANA MERAH', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993337512525', '-', '1', '1', 'CELENGAN DISNEY', 'CELENGAN DISNEY', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993338008126', '-', '1', '1', 'OKEPLAST / PCS', 'OKEPLAST / PCS', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417112133', '-', '1', '1', 'ESKULIN SPECIAL DAY 50ML', 'ESKULIN SPECIAL DAY', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417112171', '-', '1', '1', 'ESKULIN DREAM DAY SPESIAL DAY 50ML', 'ESKULIN DREAM DAY 50ML', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417112232', '-', '1', '1', 'ESKULIN SPECIAL DAY 100ML', 'ESKULIN ROMENTIK DAY', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417112270', '-', '1', '1', 'ESKULIN DREMS DAY 100ML', 'ESKULIN DREMS 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417117237', '-', '1', '1', 'ESKULIN MIDNINGHT DREAM 110ML', 'ESKULIN MIDNINGHT DREAM 110ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200021', '-', '1', '1', 'ELIPS HAIR TREATMEN', 'ELIPS HAIR TREATMEN JOJOBA OIL 6X1ML', '100', '10002001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200038', '-', '1', '1', 'ELLIPS NUTRI COLOR TRIPLE CARE 6X1 ML', 'ELLIPS NUTRI COLOR TRIPLE CARE 6X1 ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200052', '-', '1', '1', 'ELIPS GINGSENG & HONEY OIL 6X1 ML', 'ELIPS GINGSENG & HONEY OIL 6X1 ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200410', '-', '1', '1', 'ELIP SMOOTH SHINY ECER', 'ELIP SMOOTH SHINY ECER', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200427', '-', '1', '1', 'ELIPHAIR TREATMENT ECER', 'ELIPHAIR TREATMENT ECER', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200434', '-', '1', '1', 'ELIP NUTRI COLOR', 'ELIP NUTRI COLOR', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200441', '-', '1', '1', 'ELIPS SHINY BLACK ECER', 'ELIPS SHINY BLACK ECER', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200458', '-', '1', '1', 'ELIPS HAIR VITALITIY', 'ELIPS HAIR VITALITIY', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212130', '-', '1', '1', 'ESKULIN TECHNO', 'ESKULIN TECHNO 50ML', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212147', '-', '1', '1', 'ESKULIN HANGOUT DAY 50ML', 'ESKULIN GIRLS DAY', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212161', '-', '1', '1', 'ESKULIN SATURDAY DATING DAY 50ML', 'ESKULIN SATURDAY K', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212215', '-', '1', '1', 'ESKULIN MONDAY PREPPY DAY 100ML', 'ESKULIN MUSIK DAY 100ML', '100', '11002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212239', '-', '1', '1', 'ESKKULIN TECHNO DAY 100ML', 'ESKKULIM TECHNO DAY 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212277', '-', '1', '1', 'ESKULIN FUN DAY 100ML', 'ESKULIN FUN DAY 100ML', '100', '10002006', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560024642', '-', '1', '1', 'DETOL ACTIVE 110G', 'DETOL ACTIVE 110G', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560024987', '-', '1', '1', 'DETOL ORIGINAL 110G', 'DETOL ORIGINAL 110G', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560025007', '-', '1', '1', 'DETOL COOL 110G', 'DETOL COOL 110G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560025021', '-', '1', '1', 'DETOL PRES 110G', 'DETOL PRES 110G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '186');
INSERT INTO mstock VALUES ('8993560025083', '-', '1', '1', 'DETOL SKINCARE 110G', 'DETOL SKINCARE 110G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560025106', '-', '1', '1', 'DETOL RE-ENERGIZE 110G', 'DETOL RE-ENERGIZE 110G', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026639', '-', '1', '1', 'DETTOL BODY WASH SENSITIVE 100ML', 'DETOL BODY WASH SENSITIVE', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026646', '-', '1', '1', 'DETOL BODYWASH SKINCARE 100ML', 'DETOL BODYWASH SKINCARE', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560033279', '-', '1', '1', 'VANISH CAIR 500ML', 'VANISH CAIR 500ML', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560033286', '-', '1', '1', 'VANISH CAIR 180ML', 'VANISH CAIR 180ML', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560033293', '-', '1', '1', 'VANISH CAIR REVIL', 'VANISH CAIR REVIL', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560033309', '-', '1', '1', 'VANISH CAIR 450ML', 'VANISH CAIR 450ML', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993988040422', '-', '1', '1', 'BUKU BINDER JOYKO', 'BUKU BINDER JOYKO', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993988045281', '-', '1', '1', 'BUKU BINDER JOYKO CHUBBY BEAR', 'BUKU BINDER JOYKO CHUBBY BEAR', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993988245018', '-', '1', '1', 'JANGKA JOYKO MS 25', 'JANGKA JOYKO MS 25', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994065000308', '-', '1', '1', 'MASCARA PEACH', 'MASCARA PEACH', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994066110129', '-', '1', '1', 'TOP LADY 6 SACHET 3GR', 'TOP LADY 6 SACHET 3GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994171101289', '-', '1', '1', 'LUWAK WHITE KOFFIE 20GR', 'LUWAK WHITE KOFFIE 20GR', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '2');
INSERT INTO mstock VALUES ('8994188102064', '-', '1', '1', 'AMPLOP ROYAL NO.90', 'AMPLOP ROYAL', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994311101032', '-', '1', '1', 'KENKO TIP ,X', 'KENKO TIP ,X', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326101041', '-', '1', '1', 'RW KUNING TELOR 15ML', 'RW KUNING TELOR 15ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326101072', '-', '1', '1', 'RW KUNING MUDA', 'RW KUNING MUDA', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326101133', '-', '1', '1', 'RW MERAH MUDA 15ML', 'RW MERAH MUDA 15ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326101256', '-', '1', '1', 'RW RAJAWALI HIJAU TUA 15ML', 'RW RAJAWALI HIJAU TUA 15ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326101317', '-', '1', '1', 'R&W HIJAU MUDA 15ML', 'R&W HIJAU MUDA 15ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326101409', '-', '1', '1', 'RW UNGU 15ML', 'RW UNGU 15ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326101430', '-', '1', '1', 'RW BIRU 15ML', 'RW BIRU  15ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326101492', '-', '1', '1', 'RW COKLAT 15ML', 'RW COKLAT 15ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994326102406', '-', '1', '1', 'RW -SODA 40GR', 'RW -SODA 40GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994456000047', '-', '1', '1', 'the tjap daun k', 'the tjap daun k', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994474000036', '-', '1', '1', 'CNI GINSENG COFFE 20X20GR', 'CNI GINSENG COFFE 20X20GR', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755010303', '-', '1', '1', 'TIMTAM SMOOTH & CRUNCHY MAXI 17GR', 'TIMTAM SMOOTH & CRUNCHY MAXI 17GR', '100', '11003002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '48');
INSERT INTO mstock VALUES ('8994755010310', '-', '1', '1', 'TIMTAM MAXI', 'TIMTAM MAXI', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755020104', '-', '1', '1', 'NYAM NYAM STIK VANILA 12G', 'NYAM NYAM STIK VANILA', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755030325', '-', '1', '1', 'GOOD TIME DOUBLE CHOCOCHIPS COOKIES', 'GOOD TIME DOUBLE CHOCOCHIPS COOKIES', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755030400', '-', '1', '1', 'GOOD TIME MINI CAP DOUBEL CHOC 45G', 'GOOD TIME MINI CAP DOUBEL CHOC 45G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755030417', '-', '1', '1', 'GOOD TIME MINI CLASSIC CHOCOCHIPS 45G', 'GOOD TIME MINI CLASSIC CHOCOCHIPS 45G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994857002459', '-', '1', '1', 'PIRING CEPER DAUN 10 P0210D', 'PIRING CEPER DAUN 10 P0210D', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994857002596', '-', '1', '1', 'PIRING OVAL 9', 'PIRING OVAL 9', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994857007447', '-', '1', '1', 'MANGKOK KAKI HIJAU TUA', 'MANGKOK KAKI HIJAU TUA', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995026801019', '-', '1', '1', 'BEDAK MARCKS CRÈME', 'BEDAK MARCKS CRÈME', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995026801026', '-', '1', '1', 'BEDAK MARCKS PUTIH', 'BEDAK MARCKS PUTIH', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995026801033', '-', '1', '1', 'BEDAK MARCKS', 'BEDAK MARCKS', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995026900804', '-', '1', '1', 'BOLPOIN STANDAR AE7 0.5', 'BOLPOIN STANDAR AE7 0.5', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995028206140', '-', '1', '1', 'LIPSTICK CASANDRA', 'LIPSTICK CASANDRA', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077603808', '-', '1', '1', 'DEKA CREPES CHOCO BANANA 100G', 'DEKA CREPES CHOCO BANANA 100G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077604805', '-', '1', '1', 'DEKA CREPES COKLAT WIJEN 90G', 'DEKA CREPES COKLAT WIJEN 90G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995078803078', '-', '1', '1', 'U MILD', 'U MILD 16 BATANG', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '71');
INSERT INTO mstock VALUES ('8995102800448', '-', '1', '1', 'SAFE CARE ROLL ON 10ML', 'SAFE CARE ROLL ON REFRESING OIL 10ML', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995106306601', '-', '1', '1', 'bazic  geometrik', 'bazic  geometrik', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999034733', '-', '1', '1', 'PONDS MEN WHITE BOOST FACE 100G', 'PONDS MEN WHITE BOOST FACE 100G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995151120917', '-', '1', '1', 'MINYAK ZAITUN MUSTIKA RATU 75ML', 'MUSTIKA RATU MINYAK ZAITUN 75ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30125');
INSERT INTO mstock VALUES ('8995151130046', '-', '1', '1', 'MUSTIKA RATU SAMPO MERANG 175ML', 'MUSTIKA RATU SAMPO MERANG 175ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995151130060', '-', '1', '1', 'MUSTIKA RATU SHAMPOO BAYAM 175ML', 'MUSTIKA RATU SHAMPOO BAYAM 175ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995151130121', '-', '1', '1', 'MUSTIKA RATU CEM CEMAN 175ML', 'MUSTIKA RATU CEM CEMAN 175ML', '100', '10002001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995227500582', '-', '1', '1', 'CINCAU CAP PANDA 310ML', 'CINCAU CAP PANDA 310ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995227500599', '-', '1', '1', 'CAP PANDA SARANG BURUNG 310ML', 'CAP PANDA SARANG BURUNG 310ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995227500827', '-', '1', '1', 'BALSEM KAKI TIGA 20G', 'BALSEM KAKI TIGA 20G', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995899110515', '-', '1', '1', 'KOBE BAKWAN DAN PERKEDEL 80GR', 'KOBE BAKWAN DAN PERKEDEL 80GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001301142', '-', '1', '1', 'ROMA BISKUIT KELAPA 300GR', 'ROMA BISKUIT KELAPA 300GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '54');
INSERT INTO mstock VALUES ('8996001301661', '-', '1', '1', 'COFFEE JOY ITALIAN 142GR', 'COFFEE JOY ITALIAN 142GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001302026', '-', '1', '1', 'MALKIST CRACKERS', 'MALKIST CRACKERS', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001302323', '-', '1', '1', 'MALKIST RASA ABON 135G', 'MALKIST RASA ABON 135G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001302347', '-', '1', '1', 'ROMA SARI GANDUM BISKUIT 240 GR', 'ROMA SARI GANDUM BISKUIT 240 GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001302620', '-', '1', '1', 'ROMA MALKIST COKLAT', 'ROMA MALKIST COKLAT', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '75');
INSERT INTO mstock VALUES ('8996001304549', '-', '1', '1', 'SLAI OLAI STROBERI 24GR', 'slai olai  strobery', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001304990', '-', '1', '1', 'SARI  GANDUM SADWICH SUSU COKELAT', 'SARI  GANDUM SADWICH SUSU COKELAT', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '185');
INSERT INTO mstock VALUES ('8996001308059', '-', '1', '1', 'ROMA SARI GANDUM SANDWICH SUSU COKLAT 39GR', 'ROMA SARI GANDUM SANDWICH SUSU COKLAT 39GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '106');
INSERT INTO mstock VALUES ('8996001318454', '-', '1', '1', 'BETTER SANDWICH BISCUIT 22G', 'BETTER SANDWICH BISCUIT 22G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001320051', '-', '1', '1', 'KOPIKO COFFESHOT CLASSIC MINI 50X150G', 'KOPIKO MINI 150G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001355046', '-', '1', '1', 'WAFER SUPER STAR 18GR', 'WAFER SUPER STAR 18G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '32');
INSERT INTO mstock VALUES ('8996001370063', '-', '1', '1', 'CHOKI CHOKI', 'CHOKI CHOKI', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '28');
INSERT INTO mstock VALUES ('8996001440049', '-', '1', '1', 'ENERGEN COKLAT', 'ENERGEN COKLAT 30GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001440087', '-', '1', '1', 'ENERGEN KACANG HIJAU 30GR', 'ENERGEN KACANG HIJAU 30GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001440124', '-', '1', '1', 'ENERGEN VANILA 30G', 'ENERGEN VANILA 30G', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001600146', '-', '1', '1', 'TEH PUCUK HARUM 350ML', 'THE PUCUK HARUM', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '55');
INSERT INTO mstock VALUES ('8996006120014', '-', '1', '1', 'FRUIT TEA APEL 200GR', 'FRUIT TEA APEL 200GR', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '199');
INSERT INTO mstock VALUES ('8996006742032', '-', '1', '1', 'FRUIT TEA GUAVA 200ML', 'FRUIT TEA GUAVA 200ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996006841018', '-', '1', '1', 'FRUIT TEA BLACCURRANT', 'FRUIT TEA BLACCURRANT', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '59');
INSERT INTO mstock VALUES ('8996006853387', '-', '1', '1', 'FRUIT TEA APEL BOTOL 500ML', 'FRUIT TEA APEL BOTOL 500ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '209');
INSERT INTO mstock VALUES ('8996006853394', '-', '1', '1', 'FRIUIT TEA STROBERI 500ML', 'FRIUIT TEA STROBERI 500ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996006853400', '-', '1', '1', 'FRUIT TEA BLACK CURRANT 500ML BTL', 'FRUIT TEA BLACK CURRANT BOTOL', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '124');
INSERT INTO mstock VALUES ('8996006853431', '-', '1', '1', 'FRUIT TEA X-TREME 500ML BTL', 'FRUIT TEA X-TREME', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996006855145', '-', '1', '1', 'TEH BOTOL SOSRO ORIGINAL 500ML', 'TEH BOTOL SOSRO ORIGINAL 500ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996006855541', '-', '1', '1', 'FRUIT TEA GUAVA 500ML BTL', 'FRUTY GUAVA BOTOL', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996200900016', '-', '1', '1', 'HEROCYN BEDAK KULIT 75G', 'HEROCYN BEDAK KULIT 75G', '100', '10002002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001354626', '-', '1', '1', 'KARACHI PARFUM BLUE 88ML', 'KARACHI PARFUM BLUE 88ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997003401380', '-', '1', '1', 'SELAI KECIL ZEBRA NANAS 200GR', 'SELAI KECIL ZEBRA NANAS 200GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997003401403', '-', '1', '1', 'SELAI KECIL ZEBRA STROBERI 200GR', 'SELAI KECIL ZEBRA STROBERI 200GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997007552859', '-', '1', '1', 'KERTAS KADO DISNEY , BARBY', 'KERTAS KADO DISNEY , BARBY', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997009510055', '-', '1', '1', 'YOU C1000 ORANGE 140ML', 'YOU C1000 ORANGE 140ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '151');
INSERT INTO mstock VALUES ('8997009510123', '-', '1', '1', 'ORANGE WATER 500ML', 'ORANGE WATER 500ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997010510457', '-', '1', '1', 'buku enteng', 'buku enteng', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997011060203', '-', '1', '1', 'MILKUAT FRESHY STROBERI 70ML', 'MILKUAT FRESHY STROBERI 70ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997011067608', '-', '1', '1', 'MILKUAT STRAW JUMBO 130ML BTL ', 'MILKUAT STRAW JUMBO 130ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997011700031', '-', '1', '1', 'BI JAG BIHUN JAGUNG JUMBO PADAMU 350GR', 'BI JAG BIHUN JAGUNG JUMBO PADAMU 350GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997011700154', '-', '1', '1', 'BI JAG BIHUN JAGUNG 150G', 'BI JAG BIHUN JAGUNG 150G', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997012560511', '-', '1', '1', 'HAVINA VARNISH REMOVER  35ML', 'HAVINA VARNISH REMOVER  35ML', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013148688', '-', '1', '1', 'SALEP 88 6G', 'SALEP 88 6G', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013320015', '-', '1', '1', 'RET-TYPE SET', 'RET-TYPE SET', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013530247', '-', '1', '1', 'PENSIL BIG 2B PENGHAPUS RAUTAN', 'PENSIL BIG 2B PENGHAPUS RAUTAN', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013530261', '-', '1', '1', 'PENSIL 2B BIG', 'PENSIL 2B BIG', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013531657', '-', '1', '1', 'PENGHAPUS BIG PUTIH 4B', 'PENGHAPUS BIG PUTIH 4B', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013990300', '-', '1', '1', 'VANELI KAPAL LAYAR KECIL 500MG', 'VANELI KAPAL LAYAR KECIL 500MG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997015131060', '-', '1', '1', 'BUKU KOTAK', 'BUKU KOTAK', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('879', '-', '0', '1', 'PIRING KERTAS ULANG TAHUN ISI 10', 'PIRING KERTAS ULANG TAHUN ISI 10', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997015390047', '-', '1', '1', 'LULUR SEKAR JAGAT MILK 100GR', 'LULUR SEKAR JAGAT MILK', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997015390078', '-', '1', '1', 'LULUR SEKAR JAGAT AVOCADO 100GR', 'LULUR SEKAR JAGAT AVOCADO', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997015390092', '-', '1', '1', 'LULUR SEKAR JAGAT CENDANA 100GR', 'LULUR SEKAR JAGAT CENDANA', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997015390122', '-', '1', '1', 'LULUR SEKAR JAGAT BENGKUANG 100G', 'SEKAR JAGAT LULUR BENGKUANG 100GR', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016320401', '-', '1', '1', 'SELANG + REGULATOR QUANTUM QRL 032', 'SELANG + REGULATOR QUANTUM QRL 032', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370161', '-', '1', '1', 'MIRANDA GOLDEN BROWN MC-14', 'MIRANDA GOLDEN BROWN MC-14', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370314', '-', '1', '1', 'MIRANDA BLACK MC-1 30ML', 'MIRANDA BLACK MC-1', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370338', '-', '1', '1', 'MIRANDA MC3 30ML', 'MIRANDA MC3', '100', '11002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370369', '-', '1', '1', 'MIRANDA MC-6 LONG LASTING 30ML', 'MIRANDA MC6', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '207');
INSERT INTO mstock VALUES ('8997016370376', '-', '1', '1', 'MIRANDA MC7', 'MIRANDA MC7', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370390', '-', '1', '1', 'MIRANDA BRON MC-9', 'MIRANDA BRON MC-9', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370406', '-', '1', '1', 'MIRANDA MC10', 'MIRANDA MC10', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997018460150', '-', '1', '1', 'MARLBORO ICE BLAST', 'MARLBORO ICE BLAST 20 BATANG', '100', '11002002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '167');
INSERT INTO mstock VALUES ('8997018900014', '-', '1', '1', 'B0KASI JUMBO 140ML', 'MINYAK OLES BOKASI JUMBO 140ML', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997018900021', '-', '1', '1', 'MINYAK OLES BOKASI 35ML', 'MINYAK OLES BOKASI 35ML', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997018900038', '-', '1', '1', 'MINYAK BOKASI 12ML', 'MINYAK BOKASI 12ML', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997018900052', '-', '1', '1', 'MINYAK OLES BOKASI 65ML', 'MINYAK OLES BOKASI 65ML', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997022550045', '-', '1', '1', 'DVD-R GT-PRO', 'DVD-R GT-PRO', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023140665', '-', '1', '1', 'OLIVE OIL HYDRATING & NOURISHING MASK', 'OLIVE OIL HYDRATING & NOURISHING MASK', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023380535', '-', '1', '1', 'PENGGARIS BUTTERFLY 550', 'PENGGARIS BUTTERFLY 550', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997024490424', '-', '1', '1', 'SABUN BERAS', 'SABUN BERAS', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997026180019', '-', '1', '1', 'ROTI TAWAR KEVINS ', 'ROTI KEVINS ,roti putri ,roti tawar putri', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997026180026', '-', '1', '1', 'KEVIN PANDAN HIJAU', 'KEVIN PANDAN', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997026180309', '-', '1', '1', 'KEVINS STROBERY,COKLAT 32G', 'KEVINS STROBERY,COKLAT 32G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997027370150', '-', '1', '1', 'MADUNUSA JERUK 20G', 'MADUNUSA JERUK 20G', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997027924650', '-', '1', '1', 'PROCAPYL BODY SCRUB OLIVE OIL 220G', 'PROCAPYL BODY SCRUB OLIVE OIL 220G', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997035111110', '-', '1', '1', 'POCARI SWEAT KALENG 330ML', 'POCARI SWEAT KALENG 330ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997035563414', '-', '1', '1', 'POCARI SWEAT BOTOL 500ML', 'POCARI SWEAT BOTOL 500ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '78');
INSERT INTO mstock VALUES ('8997035563544', '-', '1', '1', 'POCARI SWEAT PET 350ML', 'POCARI SWEAT PET 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '195');
INSERT INTO mstock VALUES ('8997203999991', '-', '1', '1', 'HOLY AIR MINUM / PCS', 'HOLY AIR MINUM / PCS', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '105');
INSERT INTO mstock VALUES ('8997204440003', '-', '1', '1', 'ROTI ARNON CREAM MESSES 5', 'ROTI ARNON CREAM MESSES 5PCS 200GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '134');
INSERT INTO mstock VALUES ('8997204440195', '-', '1', '1', 'ARNON ROTI COKLAT 70GR', 'ARNON ROTI COKLAT 70GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '111');
INSERT INTO mstock VALUES ('8997204440201', '-', '1', '1', 'ARNON ROTI NANAS 70GR', 'ARNON ROTI NANAS 70GR', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997204440225', '-', '1', '1', 'ARNON ROTI PISANG COKLAT', 'ARNON ROTI PISANG COKLAT', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '166');
INSERT INTO mstock VALUES ('8997209000028', '-', '1', '1', 'CRISP DAYA 20GR', 'CRISP DAYA 20GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997777020213', '-', '1', '1', 'STATIONERY TAPE 12MM', 'STATIONERY TAPE 12MM', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997979046318', '-', '1', '1', 'buku folio kas 3k', 'buku folio kas 3k', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009010231', '-', '1', '1', 'ULTRA MILK UHT COKLAT 250ML', 'ULTRA MILK UHT COKLAT 250ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '66');
INSERT INTO mstock VALUES ('8998009010248', '-', '1', '1', 'ULTRA MILK STROBERI', 'ULTRA MILK STROBERI', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '121');
INSERT INTO mstock VALUES ('8998009010552', '-', '1', '1', 'ULTRA MILK FULL CREAM', 'ULTRA MILK FULL CREAM', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009010569', '-', '1', '1', 'ultra milk rasa coklat', 'ultra milk rasa coklat', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '127');
INSERT INTO mstock VALUES ('8998009010613', '-', '1', '1', 'ULTRA MILK SUSU UHT FULL CREAM 1000ML', 'SUSU ULTRA MILK FULL CREAM 1000ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009020179', '-', '1', '1', 'BUAVITA ORANGE JERUK 250ML', 'BUAVITA ORANGE JERUK 250ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009020186', '-', '1', '1', 'BUAVITA GUAVA250ML', 'BUAVITA GUAVA250ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '161');
INSERT INTO mstock VALUES ('8998009020216', '-', '1', '1', 'BUAVITA LYCHEE 250ML', 'BUAVITA LYCHEE', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009040023', '-', '1', '1', 'TEH KOTAK MELATI 200ML', 'TEH KOTAK MELATI 200ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '170');
INSERT INTO mstock VALUES ('8998103000534', '-', '1', '1', 'SABUN CUSSONS BABY SOFT SMOOTH 75G', 'CUSSONS BABY SOFT SMOOTH 75GR', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103000565', '-', '1', '1', 'CUSSONS BABY POWDER 50G + 38G', 'CUSSONS BABY POWDER', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103004846', '-', '1', '1', 'CUSSONS BABY BAG MEDIUM', 'CUSSONS BABY BAG MEDIUM', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103011806', '-', '1', '1', 'CUSSONS BABY BLUBERRY YOGHURT 88GR', 'BEDAK CUSSONS BABY 88GRBLUBERRY YOGHURT', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103101231', '-', '1', '1', 'CUSSONS BABY JUMBO BOTTLE 250ML', 'DOT CUSSONS JUMBO', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998127514123', '-', '1', '1', 'DUNHILL MILD', 'DUNHILL MILD', '100', '11003002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998389111580', '-', '1', '1', 'BISKUIT REGI DURIAN 28.8G', 'BISKUIT REGI DURIAN 28.8G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998389121268', '-', '1', '1', 'KUKIS KELAPA 300GR', 'KUKIS KELAPA', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998694120208', '-', '1', '1', 'CHOCO MANIA CHOCOLATE CIP 90G', 'CHOCO MANIA CHOCOLATE CIP 90G', '100', '11003002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998694120345', '-', '1', '1', 'CHOCO MANIA RICH CHOCOLATE 90G', 'CHOCO MANIA RICH CHOCOLATE 906', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998838350010', '-', '1', '1', 'STAPLER KENKO 10', 'STAPLER KENKO 10', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866100250', '-', '1', '1', 'KODOMO PASTA GIGI TOOTHPASTE ORANGE', 'KODOMO PASTA GIGI TOOTHPASTE ORANGE 45GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866102322', '-', '1', '1', 'KODOMO SIKAT GIGI SOFT ZIG ZAG', 'KODOMO SIKAT GIGI SOFT ZIG ZAG', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866102681', '-', '1', '1', 'KODOMO SIKAT GIGI SOFT REGULAR', 'KODOMO SIKAT GIGI SOFT REGULAR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866103978', '-', '1', '1', 'SIKAT GIGI CIPTADENT CRYSTAL CLEAN', 'SIKAT GIGI CIPTADENT CRYSTAL CLEAN SOFT', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105170', '-', '1', '1', 'MAMA LEMON EXTRA CLEAN 750ML', 'MAMA LEMON EXTRA CLEAN 750ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105484', '-', '1', '1', 'EMERON LOVELY SOFT MULBERRY 120ML', 'EMERON LOVELY SOFT MULBERRY 120ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105491', '-', '1', '1', 'LOVELY LASTING 120ML', 'EMERON LOVELY WHITE LASTING JEJU ORANGE 120ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105507', '-', '1', '1', 'EMERON LOVELY CARING JOJOBA OIL 120ML', 'EMERON LOVELY CARING JOJOBA OIL 120ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105637', '-', '1', '1', 'EMERON LOVELY WHITE MULBERRY 250ML', 'EMERON LOVELY WHITE MULBERRY 250ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105644', '-', '1', '1', 'EMERON LOVELY WHITE JEJU ORANGE 250ML', 'EMERON LOVELY WHITE JEJU ORANGE 250ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105651', '-', '1', '1', 'EMERON LOVELY CARING JOJOBA OIL 250ML', 'EMERON LOVELY CARING JOJOBA OIL 250ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105675', '-', '1', '1', 'EMERON LOVELY WHITE JEJU ORANGE 400ML', 'EMERON LOVELY WHITE JEJU ORANGE 400ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866106306', '-', '1', '1', 'EMERON LOVELY RED POMEGRANATE 120ML', 'EMERON LOVELY RED POMEGRANATE 120ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866106313', '-', '1', '1', 'EMERON LOVELY WHITE RED POMEGRANATE 250ML', 'EMERON LOVELY WHITE RED POMEGRANATE 250ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866200301', '-', '1', '1', 'MI SEDAP GORENG 91G', 'MI SEDAP GORENG 91G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '16');
INSERT INTO mstock VALUES ('8998866200318', '-', '1', '1', 'MI SEDAP RASA KUAH AYAM BAWANG 70G', 'MI SEDAP RASA AYAM BAWANG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '31');
INSERT INTO mstock VALUES ('8998866200325', '-', '1', '1', 'MI SEDAP KUAH RASA SOTO 75G', 'MI SEDAP KUAH RASA SOTO 75G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '33');
INSERT INTO mstock VALUES ('8998866200509', '-', '1', '1', 'MI SEDAAP AYAM SPESIAL 69G', 'MI SEDAAP AYAM SPESIAL 69G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866200578', '-', '1', '1', 'MI SEDAP KARI SPESIAL 76GR', 'MI SEDAAP KUAH KARI SPESIAL 76G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '101');
INSERT INTO mstock VALUES ('8998866200813', '-', '1', '1', 'MI SEDAP KAP GORENG', 'MI SEDAP KAP GORENG', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866200882', '-', '1', '1', 'MI SUKSES GORENG AYAM KREMES', 'MI SUKSES ISI 2 GORENG AYAM KREMES 133G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '162');
INSERT INTO mstock VALUES ('8998866200899', '-', '1', '1', 'MI SUKSES ISI 2 KUAH AYAM BAWANG 112G', 'MI SUKSES ISI 2 KUAH AYAM BAWANG 112G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866200912', '-', '1', '1', 'MI SUKSES ISI 2 KUAH KARI AYAM 112G', 'MI SUKSES ISI 2 KUAH KARI AYAM 112G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866200981', '-', '1', '1', 'MI KERING EKOMI', 'MI KERING EKOMI', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866500319', '-', '1', '1', 'ALE ALE JERUK 200ML', 'ALE ALE JERUK 200ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866500326', '-', '1', '1', 'ALE ALE STROBERI 200ML', 'ALE ALE STROBERI 200ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866500371', '-', '1', '1', 'THE RIO', 'TEH RIO MELATI 200ML', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866500708', '-', '1', '1', 'FLORIDA ORANGE 360ML BTL', 'FLORIDA ORANGE', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866600460', '-', '1', '1', 'WINGS BIRU W/4 200G', 'WINGS BIRU W/4 200G', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866601429', '-', '1', '1', 'DAIA BUNGA 350g', 'DAIA BUNGA 350g', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866601436', '-', '1', '1', 'DAIA BUNGA DETERGEN 900GR', 'DAIA BUNGA DETERGEN 900GR', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866602372', '-', '1', '1', 'SABUN CREAM DANGDUT JERUK400B 140G', 'SABUN CREAM DANGDUT JERUK400B 140G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866602389', '-', '1', '1', 'GIV EXOTIC GLOW 80GR', 'GIV EXOTIC GLOW 80GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866602556', '-', '1', '1', 'NUVO CLASSIC 80GR', 'NUVO CLASSIC 80GR', '100', '10002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866603881', '-', '1', '1', 'SOKLIN LANTAI  SASET 25ML', 'SOKLIN LANTAI  SASET 25ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866605106', '-', '1', '1', 'CLING BOTOL OCEAN FRESH 440ML', 'CLING BOTOL OCEAN FRESH 425ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866605120', '-', '1', '1', 'CLING BOTOL APPLE FRESH 440ML', 'CLING BOTOL', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866605137', '-', '1', '1', 'CLING KACA OCEAN 425ML', 'CLING KACA OCEAN 425ML', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866605144', '-', '1', '1', 'CLING KACA LEMON FRESH 425ML', 'CLING KACA LEMON FRESH 425ML', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866605151', '-', '1', '1', 'CLING KACA APEL FRESH 425ML', 'CLING KACA APEL FRESH 425ML', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866605786', '-', '1', '1', 'WINGS BIRU KOTAK 450TR 400G', 'WINGS BIRU KOTAK 450TR 400G', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866606417', '-', '1', '1', 'GIV SMOOTH TOUC', 'GIV SMOOTH TOUC', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866607353', '-', '1', '1', 'DAIA PUTIH 900G', 'DAIA PUTIH 900G', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '30119');
INSERT INTO mstock VALUES ('8998866607360', '-', '1', '1', 'DAIA PUTIH DETERGEN SACHET 57GR', 'DAIA PUTIH DETERGEN SACHET 57GR', '100', '10002004', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '104');
INSERT INTO mstock VALUES ('8998866608084', '-', '1', '1', 'KECAP MANIS SEDAAP ISI ULANG', 'SEDAAP KECAP MANIS ISI ULANG 600ML', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866608718', '-', '1', '1', 'DAIA SOFTENER PINK 350GR', 'DAIA SOFTENER PINK 350GR', '100', '11003003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866608725', '-', '1', '1', 'DAIA SOFTENER PINK 900GR', 'DAIA SOFTENER PINK 900GR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30112');
INSERT INTO mstock VALUES ('8998866609005', '-', '1', '1', 'SOKLIN LIQUID ANTI BACTERIAL 1000ML', 'SOKLIN LIQUID ANTI BACTERIAL 1000ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866609425', '-', '1', '1', 'GIV WHITE SMOOTH WHITE REFIL 250ML', 'GIV SMOOTH WHITE', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866609432', '-', '1', '1', 'GIV PURE WHITE', 'GIV PURE WHITE', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866610087', '-', '1', '1', 'THE JAVANA 350ML', 'THE JAVANA 350ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866610223', '-', '1', '1', 'DAIA SOFTENER  VIOLET 900GR', 'DAIA SOFTENER  VIOLET 900GR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30091');
INSERT INTO mstock VALUES ('8998866679602', '-', '1', '1', 'SOKLIN LANTAI AROMA SPA FRUIT APPLE 800ML', 'SOKLIN LANTAI AROMA SPA FRUIT APPLE 800ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866803656', '-', '1', '1', 'SOKLIN LIQUID VIOLET BLOSSOM 1000ML', 'SOKLIN LIQUID VIOLET BLOSSOM 1000ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998889864931', '-', '1', '1', 'CLEANING NAGATA', 'CLEANING NAGATA', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001166', '-', '1', '1', 'BAYGON SEMPROT FRESH SCENT 600ML', 'BAYGON FRESH SCENT 600ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '30075');
INSERT INTO mstock VALUES ('8998899001319', '-', '1', '1', 'BAYGON MRT ELEKTRIK 30X21G', 'BAYGON MRT ELEKTRIK 30', '100', '11002001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001579', '-', '1', '1', 'BAYGON MAX JUMBO', 'BAYGON MAX JUMBO', '100', '11002001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001975', '-', '1', '1', 'BAYGON MRT ELEKTRIK 30X21G', 'BAYGON MAT 30', '100', '10002002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899004105', '-', '1', '1', 'AUTAN SOFT SCENTED SACHET 7ML', 'AUTAN SASET', '100', '11002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '99');
INSERT INTO mstock VALUES ('8998899004211', '-', '1', '1', 'AUTAN SOFT SCENTED 50ML', 'AUTAN SOFT SCENTED', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899013015', '-', '1', '1', 'BAYCLIN  100ML', 'BAYCLIN  100ML', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899013046', '-', '1', '1', 'BAYCLIN 200ML', 'BAYCLIN 200ML', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899400341', '-', '1', '1', 'BAYGON SEMPROT FRESH SCENT 275ML', 'BAYGON FRESH SCENT 275ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899400358', '-', '1', '1', 'BAYGON SEMPROT LAVENDER 275ML', 'BAYGON SEMPROT LAVENDER 275ML', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899940229', '-', '1', '1', 'BAYGON LIQUID ELEKTRIK', 'BAYGON LIQUID ELEKTRIK', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899940250', '-', '1', '1', 'BAYGON MAT 15', 'BAYGON MAT 15', '100', '10002002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899940489', '-', '1', '1', 'KIWI BLACK 75ML', 'KIWI BLACK 75ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899940557', '-', '1', '1', 'KIWI BLACK 30ML', 'KIWI BLACK 30ML', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998989100120', '-', '1', '1', 'GUDANG GARAM FILTER INTERNATIONAL 12 BATANG', 'GUDANG GARAM FILTER INTERNATIONAL 12 BATANG', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '146');
INSERT INTO mstock VALUES ('8998989110129', '-', '1', '1', 'gudang garam surya 12', 'gudang garam surya 12', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '26');
INSERT INTO mstock VALUES ('8998989110167', '-', '1', '1', 'GUDANG GARAM SURYA 16', 'GUDANG GARAM SURYA 16 BATANG', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '95');
INSERT INTO mstock VALUES ('8998989121163', '-', '1', '1', 'ROKOK SURYA PRO MERAH', 'ROKOK SURYA PRO MERAH', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '125');
INSERT INTO mstock VALUES ('8998989300179', '-', '1', '1', 'GG MILD SHIVER', 'GG MILD SHIVER', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30055');
INSERT INTO mstock VALUES ('8998989500128', '-', '1', '1', 'GUDANG GARAM MERAH', 'gudang garam merah', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30081');
INSERT INTO mstock VALUES ('8998990212126', '-', '1', '1', 'PEMBALUT NINA 23CM', 'PEMBALUT NINA 23CM', '100', '10002004', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998990212133', '-', '1', '1', 'PEMBALUT NINA 27 CM', 'PEMBALUT NINA 27 CM', '100', '10002004', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920462', '-', '1', '1', 'SGM ANANDA 0-6 BULAN 400GR', 'SGM ANANDA 400G', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920486', '-', '1', '1', 'SGM ANANDA 0-6 BULAN 1000 G', 'SGM ANANDA 0-6 THN 1000 G', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920547', '-', '1', '1', 'SGM ANANDA 6-12 BULAN 400GR', 'SGM ANANDA 2', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920561', '-', '1', '1', 'SGM ANANDA 6-12 BULAN 1000 GR', 'SGM 2 1000 GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920691', '-', '1', '1', 'SGM EKSPLOR 1 PLUS MADU 900GR', 'SGM EKSPLOR 3', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920707', '-', '1', '1', 'SGM EKSPLOR 1 PLUS VANILA 400GR', 'SGM EKSPLOR 3', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920721', '-', '1', '1', 'SGM EKSPLOR 3 PLUS MADU 400G', 'SGM AKTIF MADU 400G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920738', '-', '1', '1', 'SGM 4 RASA MADU 900G', 'SGM 4 RASA MADU 900G', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920752', '-', '1', '1', 'sgm Aktif 4 rasa VANILA', 'sgm Aktif 4 rasa VANILA', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999225783152', '-', '1', '1', 'PURBASARI LULUR MANDI BENGKUANG 250G', 'PURBASARI LULUR MANDI BENGKUANG 250G', '100', '11003001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999225783169', '-', '1', '1', 'PURBASARI LULUR MANDI BENGKUANG 135G', 'PURBASARI LULUR MANDI BENGKUANG', '100', '11003001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999338136883', '-', '1', '1', 'HI TOP 15ML', 'HI TOP 15ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999338777888', '-', '1', '1', 'HITOP 25ML', 'HITOP 25ML', '100', '10002005', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777000059', '-', '1', '1', 'NIVEA BODY LOTION ADVANCED CARE 200ML', 'NIVEA BODY LOTION ADVANCED CARE 200ML', '100', '10002005', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908010605', '-', '1', '1', 'MARINA BRIGHT FRESH 100ML', 'MARINA BRIGHT FRESH 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908010704', '-', '1', '1', 'MARINA MULBERRY 200ML', 'MARINA MULBERRY', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908034205', '-', '1', '1', 'HEMAPITON ENERGY 150ML', 'HEMAPITON ENERGY 150ML', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908041203', '-', '1', '1', 'MARINA COMPACT POWDER 02 OLIVE 12G', 'MARINA COMPACT POWDER 02', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908041302', '-', '1', '1', 'MARINA COMPAC P0WDER 03', 'MARINA COMPAC P0WDER 03', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908041401', '-', '1', '1', 'MARINA COMPACT POWDER 04 NATURAL 12G', 'MARINA COMPACT POWDER 04', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908060600', '-', '1', '1', 'MARINA APEL SUNSCREEN 100ML', 'MARINA APEL SUNSCREEN K', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908060709', '-', '1', '1', 'MARINA ALMOND DA VITAMIN E 100ML', 'MARINA ALMOND DA VITAMIN E K.', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908060808', '-', '1', '1', 'MARINA SMOOTH & GLOW 100ML', 'MARINA SMOOTH & GLOW 100ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908082701', '-', '1', '1', 'MARINA UV WHITE 100ML', 'MARINA UV WHITE', '100', '11003001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908082800', '-', '1', '1', 'MARINA UV WHITE 200ML', 'MARINA UV WHITE', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908214706', '-', '1', '1', 'MARINA NATURAL RICH MOISTURIZING 200ML', 'MARINA NATURAL RICH MOISTURIZING 200ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908273000', '-', '1', '1', 'MARINA PROTECTS & CARES 350ML', 'MARINA PROTECTS & CARES 350ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908273208', '-', '1', '1', 'MARINA SMOOTH & GLOW 350 ML', 'MARINA SMOOTH & GLOW 350 ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908273307', '-', '1', '1', 'MARINA RICH MOISTURIZING 350ML', 'MARINA RICH MOISTURIZING 350ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999909000377', '-', '1', '1', 'SAMPOERNA AVOLUTION SLIM ORIGINAL', 'SAMPOERNA AVOLUTION SLIM ORIGINAL 20 BATANG', '100', '10001003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '77');
INSERT INTO mstock VALUES ('8999909000483', '-', '1', '1', 'SAMPOERNA AVOLUTION SLIM MENTHOL', 'SAMPOERNA AVOLUTION SLIM MENTHOL 20 BATANG', '100', '10001003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '183');
INSERT INTO mstock VALUES ('8999909001909', '-', '1', '1', 'DJI SAM SOE MAGNUM FILTER', 'DJI SAM SOE MAGNUM FILTER', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999909028234', '-', '1', '1', 'DJI SAM SOE 234 KRETEK 12', 'DJI SAM SOE 234 KRETEK', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '108');
INSERT INTO mstock VALUES ('8999909028999', '-', '1', '1', 'DJI SAM SOE PREMIUM', 'DJI SAM SOE PREMIUM 12 BATANG', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '169');
INSERT INTO mstock VALUES ('8999909076006', '-', '1', '1', 'SAMPOERNA MENTOL', 'SAMPOERNA MENTOL 16 BATANG', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999909085114', '-', '1', '1', 'SAMPOERNA KRETEK', 'SAMPOERNA KRETEK', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '37');
INSERT INTO mstock VALUES ('8999909096004', '-', '1', '1', 'SAMPOERNA MILD', 'SAMPOERNA MILD 16 BATANG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '11');
INSERT INTO mstock VALUES ('8999909982000', '-', '1', '1', 'SAMPOERNA  A MILD 12', 'SAMPOERNA  A MILD 12 BATANG', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '23');
INSERT INTO mstock VALUES ('8999918443509', '-', '1', '1', 'GABIN ANEKA BISKUIT SQUARE PUFF', 'GABIN ANEKA BISKUIT SQUARE PUFF 300G', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999979004282', '-', '1', '1', 'HANGER LION STAR', 'HANGER LION STAR', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999988888835', '-', '1', '1', 'LARUTAN KALENG MELON', 'LARUTAN KALENG MELON 320ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '102');
INSERT INTO mstock VALUES ('8999988888972', '-', '1', '1', 'LARUTAN PENYEGAR CAP BADAK500ML', 'LARUTAN PENYEGAR CAP BADAK500ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '46');
INSERT INTO mstock VALUES ('8999988888989', '-', '1', '1', 'LARUTAN PENYEGAR BOTOL 200ML', 'LARUTAN PENYEGAR BOTOL 200ML', '100', '10001002', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001162', '-', '1', '1', 'LIFEBUOY MILDCARE 300ML', 'LIFEBUOY MILDCARE 300ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001179', '-', '1', '1', 'LIFEBUOY BODYWASH COOLFRESH450ML', 'LIFEBUOY BODYWASH COOLFRESH450ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001193', '-', '1', '1', 'LIFEBUOY BODYWASH TOTAL 10', 'LIFEBUOY BODYWASH TOTAL 10 450ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001209', '-', '1', '1', 'LIFEBUOY MILDCARE', 'LIFEBUOY MILDCARE', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001971', '-', '1', '1', 'VASELINE MENFACE OIL CONTROL 50G', 'VASELINE MENFACE OIL CONTROL', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003050', '-', '1', '1', 'VASELINE TOTAL MOISTURE BESAR 200ML', 'VASELINE TOTAL MOISTURE BESAR 200ML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003074', '-', '1', '1', 'VASELINE ALOE TANGGUNG 1OOML', 'VASELINE ALOE TANGGUNG 1OOML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003098', '-', '1', '1', 'VASELINE ALOE SOOTHE 200ML', 'VASELINE ALOE SOOTHE 200ML', '100', '10002006', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003395', '-', '1', '1', 'Ponds Pure White Deep Cleansing 50GR', 'Ponds Pure White Deep Cleansing 50GR', '100', '11002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003401', '-', '1', '1', 'Ponds Pure White Deep Cleansing 100G', 'Ponds Pure White Deep Cleansing 100G', '100', '10002005', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003753', '-', '1', '1', 'CITRA LASTING WHITE UV BENGKUANG 250ML', 'CITRA LASTING WHITE UV BENGKUANG 250ML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30108');
INSERT INTO mstock VALUES ('8999999003760', '-', '1', '1', 'CITRA PEARLY WHITE UV 250ML', 'CITRA PEARLY WHITE UV 250ML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003890', '-', '1', '1', 'CITRA HAZELINE BESAR BUBUK MUTIARA CINA 40G', 'CITRA HAZELINE BESAR BUBUK MUTIARA CINA 40G', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999004248', '-', '1', '1', 'LULUR CITRA LASTING WHITE 200ML', 'LULUR CITRA LASTING WHITE 200ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999004347', '-', '1', '1', 'CITRA BODYWASH BENGKOANG 250ML', 'CITRA BODYWASH BENGKOANG', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999005580', '-', '1', '1', 'DOVE ORIGINAL 40ML', 'DOVE ORIGINAL', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999005610', '-', '1', '1', 'MAGNUM ALMOND CHOCOLATE KACANG 90ML', 'MAGNUM ALMOND', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30086');
INSERT INTO mstock VALUES ('8999999005689', '-', '1', '1', 'MAGNUM CLASSIC 90ML', 'magnum classic', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30085');
INSERT INTO mstock VALUES ('8999999005795', '-', '1', '1', 'Dove Whitening Silk Dry 40ML', 'Dove Whitening Silk Dry 40ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999006204', '-', '1', '1', 'WIPOL BOTOL CLASSIC PINE 800ML', 'WIPOL BOTOL CLASSIC PINE 800ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999007782', '-', '1', '1', 'FAIR LOVELY 25G', 'FAIR LOVELY 25G', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '30102');
INSERT INTO mstock VALUES ('8999999007799', '-', '1', '1', 'FAIR LOVELY MULTI VITAMIN 50G', 'FAIR LOVELY 50G', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999008208', '-', '1', '1', 'ES KRIM PADDLE POP CHOCO MAGMA', 'ES KRIM PADDLE POP CHOCO MAGMA', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999008246', '-', '1', '1', 'WALLS PADDLE POP FRUITY ZAP 69GR', 'PADDLE POP FRUITY ZAP', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999008826', '-', '1', '1', 'CITRA BODY LOTION BUBUK MUTIARA CINA 400ML', 'CITRA BODY LOTION BUBUK MUTIARA CINA 400ML', '100', '11002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999013080', '-', '1', '1', 'PONDS NO BLACKHEADS 100ML', 'PONDS NO BLACKHEADS 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999016128', '-', '1', '1', 'RINSO MOLTO CAIR ADVANCE FOAM 800ML', 'RINSO MOLTO ULTRA 800ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30041');
INSERT INTO mstock VALUES ('8999999020293', '-', '1', '1', 'VASELINE COCOARADIANT 200ML', 'VASELINE COCOARADIANT 200ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999022440', '-', '1', '1', 'PONDS AGE MIRACLE DAY CREAM 50ML', 'PONDS AGE MIRACLE DAY CREAM 50ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999027018', '-', '1', '1', 'SUNSILK CO-CREATION SHAMPO SOFT & SMOOTH 10ML', 'SUNSILK CO-CREATION SHAMPO SOFT & SMOOTH 10ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999027025', '-', '1', '1', 'SUNSILK BLACK SHINE SHAMPO SACHET 10ML', 'SUNSILK BLACK SHINE SHAMPO SACHET 10ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999027049', '-', '1', '1', 'SAMPO SACHET LIFEBUOY 1X10ML', 'SAMPO SACHET LIFEBUOY 1X10ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999027247', '-', '1', '1', 'LIFEBUOY LEMONFRESH 300ML', 'LIFEBUOY LEMONFRESH 300ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999027599', '-', '1', '1', 'CLEAR ICE COOL MENTHOL SHAMPO 10ML', 'CLEAR ICE COOL MENTHOL SHAMPO 10ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '205');
INSERT INTO mstock VALUES ('8999999028336', '-', '1', '1', 'WALLS PADDLE POP COLOR POPPER 57ML', 'ES KRIM PADDLE POP COLOR POPPER 57ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029326', '-', '1', '1', 'SUNSILK NOURISHING SOFT&SMOOTH 170ML', 'SUNSILK NOURISHING SOFT&SMOOTH 170ML', '100', '10002003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029333', '-', '1', '1', 'SUNSILK NOURISHING SOFT&SMOOTH 80ML', 'SUNSILK NOURISHING SOFT&SMOOTH 80ML', '100', '10002005', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029357', '-', '1', '1', 'SUNSILK BLACK SHINE SHAMPO 170ML', 'SUNSILK BLACK SHINE SHAMPO 170ML', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029364', '-', '1', '1', 'SUNSILK BLACK SHINE SHAMPO 80ML', 'SUNSILK BLACK SHINE SHAMPO 80ML', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029609', '-', '1', '1', 'CLEAR SHAMPO ICE COOL MENTHOL 340ML', 'CLEAR SHAMPO ICE COOL MENTHOL 340ML', '100', '10002005', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029715', '-', '1', '1', 'CLEAR ANTI HAIR FALL NUTRIUM GINSENG 170ML', 'CLEAR ANTI HAIR FALL NUTRIUM GINSENG 170ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029821', '-', '1', '1', 'CLEAR SHAMPO STRONG & SOFT 170ML', 'CLEAR SHAMPO STRONG & SOFT 170ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029920', '-', '1', '1', 'CITRA NIGH MULBERRY WHITENING 250ML', 'CITRA NIGH MULBERRY WHITENING 250ML', '100', '10002006', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999031107', '-', '1', '1', 'LUX FRESH SPLASH 85GR', 'LUX FRESH SPLASH 85GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999031497', '-', '1', '1', 'MAGNUM GOLD', 'MAGNUM GOLD', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999032975', '-', '1', '1', 'WIPOL REVFIL ULTRA PROTECTION 400ML', 'WIPOL REVFIL ULTRA PROTECTION 400ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999033644', '-', '1', '1', 'PONDS AGE MIRACLE NIGHT 10G', 'PONDS AGE MIRACLE NIGHT', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999034566', '-', '1', '1', 'ES KRIM CORNETTO  BLACK WHITE', 'ES KRIM CORNETTO  BLACK WHITE', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '112');
INSERT INTO mstock VALUES ('8999999034825', '-', '1', '1', 'BANGO KECAP MANIS SASET 30ML', 'BANGO KECAP MANIS SASET 30ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999035006', '-', '1', '1', 'MAGNUM INFINITY  CHOCOLATE & CARAMEL 90ML', 'ES KRIM MAGNUM INFINITY', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999035488', '-', '1', '1', 'VASELINE INSTA FAIR 95ML', 'VASELINE INSTA FAIR 95ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999035495', '-', '1', '1', 'VASELINE INSTA FAIR', 'VASELINE INSTA FAIR', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999035532', '-', '1', '1', 'VASELINE NIGHT REPAIR 200ML', 'VASELINE NIGHT REPAIR 200ML', '100', '10002005', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999035631', '-', '1', '1', 'MAGNUM MINI ALMOND 45ML', 'MAGNUM MINI ALMOND', '100', '11003002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999035655', '-', '1', '1', 'MAGNUM MINI CLASSIC ALMOND BROWNIE', 'MAGNUM MINI CLASSIC ALMOND BROWNIE', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999035730', '-', '1', '1', 'CITRA SPOTLESS WHITE GLOW 100ML', 'CITRA SPOTLESS WHITE GLOW 100ML', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999035754', '-', '1', '1', 'CITRA PEARLY BESAR 1OOML', 'CITRA PEARLY BESAR 1OOML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036355', '-', '1', '1', 'SUNLIGHT LIME LIQUID BOTOL 750ML', 'SUNLIGHT LIME LIQUID BOTOL 750ML', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036539', '-', '1', '1', 'LUX SOFT TOUCH 250ML', 'LUX SOFT TOUCH 250ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036638', '-', '1', '1', 'LUX VELVET TOUCH 85G', 'LUX VELVET TOUCH', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036829', '-', '1', '1', 'LUX BODY WASH SOFT TOUCH', 'LUX BODY WASH SOFT TOUCH', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036836', '-', '1', '1', 'LUX BODY WASH VELVET TOUCH', 'LUX BODY WASH VELVET TOUCH', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036843', '-', '1', '1', 'LUX BODY WADSH AQUA SPARKLE', 'LUX BODY WADSH AQUA SPARKLE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999037260', '-', '1', '1', 'RINSO ANTI NODA 50G', 'RINSO ANTI NODA 50G', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999037321', '-', '1', '1', 'RISO MOLTO ULTRA  CAIR 1000ML', 'RISO MOLTO ULTRA ADVANCE FOAM CAIR 1000ML', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30078');
INSERT INTO mstock VALUES ('8999999037352', '-', '1', '1', 'SUNLIGHT LIME LIQUID POUCH 85ML', 'SUNLIGHT LIME LIQUID POUCH 85ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999037635', '-', '1', '1', 'ES KRIM DUNG DUNG KACANG HIJAU 38ML', 'ES KRIM DUNG DUNG KACANG HIJAU 38ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '51');
INSERT INTO mstock VALUES ('8999999039127', '-', '1', '1', 'SHAMPO DOVE TOTAL HAIR FALL TRICHAZOLE 320ML', 'SHAMPO DOVE TOTAL HAIR FALL TRICHAZOLE 320ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999039813', '-', '1', '1', 'REXONA MEN INVISIBLE DRY BANDIT', 'REXONA MEN INVISIBLE DRY', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999039875', '-', '1', '1', 'PADDLE POP DRAGON 47ML', 'PADDLE POP DRAGON 47ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999040918', '-', '1', '1', 'TRESEMME SMOOTH & SHINE SHAMPOO 340ML', 'TRESemme smooth&shine', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999040956', '-', '1', '1', 'TERSEMME  ANTI HAIR FALL SHAMPOO 340ML', 'TERSemme  ANTI HAIR FALL', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041014', '-', '1', '1', 'TRSEMME DEEP REPAIR SHAMPOO 340ML', 'TRSemme DEEP REPAIR', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041052', '-', '1', '1', 'TRESEMME CONDITIONER NOURISHING KERATIN 170ML', 'TRESEMME CONDITIONER NOURISHING KERATIN 170ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041106', '-', '1', '1', 'TRESEMME DEEP REPAIR SHAMPOO 170ML', 'treseme deep repair', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041144', '-', '1', '1', 'TRESEMME SMOOTH&SHINE SHAMPOO 170ML', 'tresemme smooth shine', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041168', '-', '1', '1', 'DOVE DAILY SHINE SHAMPOO 70ML', 'DOVE DAILY SHINE SHAMPOO 70ML', '100', '10002005', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041236', '-', '1', '1', 'DOVE NOURISHING BLACK SHAMPOO 70ML', 'DOVE NOURISHING BLACK SHAMPOO 70ML', '100', '10002005', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041243', '-', '1', '1', 'DOVE BLACK OLIVE EXTRACT 160ML', 'DOVE BLACK OLIVE EXTRACT 160ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041250', '-', '1', '1', 'DOVE NOURISHING BLACK OLIVE 320ML', 'DOVE NOURISHING BLACK OLIVE 320ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041847', '-', '1', '1', 'MOLTO ALL IN ONE 25ML', 'MOLTO ALL IN ONE 25ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999042646', '-', '1', '1', 'RINSO MOLTO ULTRA SACHET 42ML', 'RINSO MOLTO ULTRA SACHET 42ML', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '9');
INSERT INTO mstock VALUES ('8999999042950', '-', '1', '1', 'TRESEMME SCALP CARE SHAMPOO 170ML', 'TRESemme SCALP CARE', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999042967', '-', '1', '1', 'TRESEMME SCALP CARE 170ML', 'TRESEMME SCALP CARE 170ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999042974', '-', '1', '1', 'TRESEMME SCALP CARE SHAMPOO 340ML', 'TRESemme SCALP CARE', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043339', '-', '1', '1', 'MAGNUM MINI HONEYCOMB CRUNCH CLASSIC', 'MAGNUM MINI HONEYCOMB CRUNCH CLASSIC', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043360', '-', '1', '1', 'MOLTO TRIKA FLORAL BLISS 400ML', 'MOLTO TRIKA FLORAL BLISS 400ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043483', '-', '1', '1', 'TRESEMME KERATIN SMOOTH SHAMPOO 70ML', 'TRESEMME KERATIN SMOOTH 70ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043490', '-', '1', '1', 'TRESEMME SCALP CARE SHAMPOO 70ML', 'TRESEMME SCALP CARE 70ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043698', '-', '1', '1', 'LUX WHITE IMPRESS 220ML', 'LUX WHITE IMPRESS 220ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043797', '-', '1', '1', 'CLEAR SHAMPO ICE COOL MENTHOL 70ML', 'CLEAR SHAMPO ICE COOL MENTHOL 70ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999044886', '-', '1', '1', 'paddle pop ocean', 'paddle pop ocean', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999045098', '-', '1', '1', 'DOVE DEODORAN POOWDER SOFT 40 ML', 'DOVE DEODORAN POOWDER SOFT 40ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999045500', '-', '1', '1', 'DOVE VOLUME NOURISHMENT SHAMPO 70ML', 'DOVE VOLUME NOURISHMENT SHAMPO 70ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999045555', '-', '1', '1', 'MAGNUM WHITE ALMOND', 'MAGNUM WHITE ALMOND 80ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999045852', '-', '1', '1', 'LIFEBUOY TOTAL 10 ANTI BACTERIAL 75GR', 'LIFEBUOY TOTAL 10 ANTI BACTERIAL 75GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999045869', '-', '1', '1', 'LIFEBUOY MILD CARE 75GR', 'LIFEBUOY MILD CARE 75GR', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999046972', '-', '1', '1', 'magnuminfinity raspberry', 'magnuminfinity raspberry', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999047191', '-', '1', '1', 'PADDLE POP COKLAT 55ML', 'PADDLE POP COKLAT 55ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999047207', '-', '1', '1', 'WALLS PADDLE POP RAINBOW POWER 55ML', 'paddle pop rainbow', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '57');
INSERT INTO mstock VALUES ('8999999047245', '-', '1', '1', 'RINSO MOLTO SACHET 48GR', 'RINSO MOLTO SACHET 48GR', '100', '10002003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '201');
INSERT INTO mstock VALUES ('8999999048556', '-', '1', '1', 'WALLS ICE CREAM SANDWICH VANILA COKLAT 80ML', 'ICE CREAM SANDWICH VANILA COKLAT 80ML', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049409', '-', '1', '1', 'REXONA ICE COOL MEN 48H 50ML', 'REXSONA ICE COOL 48H', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049416', '-', '1', '1', 'REXONA QUANTUM MEN 50ML', 'REXONA QUANTUM', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049430', '-', '1', '1', 'REXONA V8 50ML', 'REXONA V8', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049447', '-', '1', '1', 'REXONA ADVANCED WHITENING 50ML', 'REXSONA ADVANCED WHITENING 50ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049485', '-', '1', '1', 'REXONA WOMAN POSSION', 'REXONA WOMAN POSSION 50ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049492', '-', '1', '1', 'REXONA POWDER DRY', 'REXONA POWDER DRY 50ML', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999195649', '-', '1', '1', 'SARI WANGI KOTAK', 'SARI WANGI KOTAK 25X46.25G', '100', '10001001', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999280253', '-', '1', '1', 'WALLS PADDLE POP TRICO 60ML', 'ES KRIM TRICO 60ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '122');
INSERT INTO mstock VALUES ('8999999282196', '-', '1', '1', 'WALLS POPULAIRE COKLAT & VANILA 90ML', 'ES KRIM POPULAIRE COKLAT', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '109');
INSERT INTO mstock VALUES ('8999999282202', '-', '1', '1', 'ES KRRIM POPULAIRE STROBERY VANILLA 90ML', 'ES KRRIM POPULAIRE STROBERY VANILLA 90ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '80');
INSERT INTO mstock VALUES ('8999999294021', '-', '1', '1', 'ES KRIM FEAST VANILA 65ML', 'ES KRIM FEAST VANILA 65ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999294038', '-', '1', '1', 'ES KRIM FEAST COKLAT', 'ES KRIM FEAST COKLAT', '100', '10001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999390181', '-', '1', '1', 'SUNLIGHT JERUK NIPIS 400ML', 'SUNLIGHT JERUK NIPIS 400ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '148');
INSERT INTO mstock VALUES ('8999999390198', '-', '1', '1', 'SUNLIGHT JERUK NIPIS POUCH 800ML', 'SUNLIGHT JERUK NIPIS POUCH 800ML', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '175');
INSERT INTO mstock VALUES ('8999999400934', '-', '1', '1', 'MOLTO FLOWER SHOWER 450', 'MOLTO FLOWER SHOWER 450', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999400958', '-', '1', '1', 'MOLTO PEWANGI FLORAL BLISS 900ML', 'MOLTO PEWANGI FLORAL BLISS 900ML', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999401078', '-', '1', '1', 'Rinso Molto Ultra 800gr', 'Rinso Molto Ultra 800gr', '100', '10002003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999406912', '-', '1', '1', 'SUPER PELL CERRY ROSE 800ML', 'SUPER PELL CERRY ROSE 800ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999406929', '-', '1', '1', 'SUPER PELL FRESH APPLE 800ML', 'SUPER PELL FRESH APPLE 800ML', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30097');
INSERT INTO mstock VALUES ('8999999406936', '-', '1', '1', 'SUPER PELL LEMON GINGER 400ML', 'SUPER PELL LEMON GINGER 400ML', '100', '10002003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999406950', '-', '1', '1', 'SUPER PELL FRESH APPLE 400ML', 'SUPER PELL FRESH APPLE 400ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999407001', '-', '1', '1', 'SUPER PELL WHITE LILY 800ML', 'SUPER PELL WHITE LILY 800ML', '100', '10002002', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999407858', '-', '1', '1', 'WIPOL REFIL LEMON 800ML ', 'WIPOL REFIL LEMON 800ML ', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999407896', '-', '1', '1', 'WIPOL KARBOL WANGI BOTOL 450ML', 'WIPOL KARBOL WANGI BOTOL 450ML', '100', '11003003', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999407919', '-', '1', '1', 'WIPOL REFIL  CLASSIC PINE 800ML', 'WIPOL REFIL  CLASSIC PINE 800ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999706081', '-', '1', '1', 'PEPSODEN 75G', 'PEPSODEN 75G', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '156');
INSERT INTO mstock VALUES ('8999999706180', '-', '1', '1', 'PEPSODEN JUMBO 190G', 'PEPSODEN JUMBO 190G', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30103');
INSERT INTO mstock VALUES ('8999999706661', '-', '1', '1', 'PEPSODENT DOUBLE CARE SENSITIVE', 'PEPSODENT DOUBLE CARE SENSITIVE', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999707835', '-', '1', '1', 'CLOSE UP DEEP ACTION 65GR', 'CLOSE UP DEEP ACTION 65GR', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999710866', '-', '1', '1', 'PEPSODEN HERBAL 190G', 'PEPSODEN HERBAL 190G', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '30124');
INSERT INTO mstock VALUES ('8999999710880', '-', '1', '1', 'PEPSODENT HERBAL 75GR', 'PEPSODENT HERBAL 75GR', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '188');
INSERT INTO mstock VALUES ('8999999716912', '-', '1', '1', 'PONDS JERNIH PUTIH MERONA', 'PONDS WHITE BEAUTY JERNIH PUTIH MERONA 20GR', '100', '10002007', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999716929', '-', '1', '1', 'PONDS WHITE BEAUTY PUTIH MERONA 40GR', 'PONDS WHITE BEAUTY PUTIH MERONA 40GR', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999717148', '-', '1', '1', 'PONDS WHITE BEAUTY CLEAR SOLUTIONS 40GR', 'PONDS WHITE BEAUTY CLEAR SOLUTIONS 40GR', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999717520', '-', '1', '1', 'PONDS WHITE BEAUTY CLEAR SOLUTIONS 20GR', 'PONDS WHITE BEAUTY CLEAR SOLUTIONS 20GR', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999719746', '-', '1', '1', 'PONDS CLEANSING MILK 150ML', 'PONDS CLEANSING MILK 150M', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999719753', '-', '1', '1', 'PONDS WHITE BEAUTY SHAKE CLEAN 100ML', 'PONDS WHITE BEAUTY SHAKE CLEAN', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999720278', '-', '1', '1', 'PONDS WHITE BEAUTY 8G', 'PONDS WHITE BEAUTY 8G', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999720742', '-', '1', '1', 'BEDAK PONDS TWO WAY CAKE 12.5G', 'BEDAK PONDS TWO WAY CAKE 12.5G', '100', '10002007', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999720940', '-', '1', '1', 'CLEAR HAIR STYLING 100GR', 'CLEAR HAIR STYLING 100GR', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908266101', '-', '1', '1', 'MARINA MILK PROTEIN 500ML', 'MARINA MILK PROTEIN 500ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830006472', '-', '1', '1', 'AXE ANARHY FOR HIM 150ML', 'AXE ANARHY FOR HIM', '100', '11003001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830007813', '-', '1', '1', 'AXE APOLLO 150ML', 'AXE APOLLO', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9310042627501', '-', '1', '1', 'SENSODYNE ORIGINAL FLAVOUR 100GR', 'SENSODYNE ORIGINAL FLAVOUR 100GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9375751655054', '-', '1', '1', 'KYZUKU KZ - 505', 'KYZUKU KZ - 505', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9415007006329', '-', '1', '1', 'anlene actifit plain 600g', 'anlene actifit plain 600g', '100', '10001002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('95508788', '-', '1', '1', 'MALBORO BLACK MENTHOL', 'MALBORO BLACK MENTHOL 20 BATANG', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '30037');
INSERT INTO mstock VALUES ('9555052300536', '-', '1', '1', 'THURGAS LOTUS', 'THURGAS LOTUS', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9555052300642', '-', '1', '1', 'TURGAS CEMPAKA', 'TURGAS CEMPAKA', '100', '11001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556412910006', '-', '1', '1', 'RE-TYPE BOLPOIN', 'RE-TYPE BOLPOIN', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('973402759481', '-', '1', '1', 'ANTENA SUMURA', 'ANTENA SUMURA', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9878900000076', '-', '1', '1', 'buku gambar a4 kw cerdas 706', 'buku gambar a4 kw cerdas 706', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('a201007007a', '-', '1', '1', 'SEPON BEDAK PENIEL', 'SEPON BEDAK PENIEL', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('a973402759483a', '-', '1', '1', 'ANTENA VITARA VTR 950', 'ANTENA VITARA VTR 950', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997204440010', '-', '1', '1', 'ARNON ROTI SISIR 6PCS 140G', 'ARNON ROTI SISIR 6PCS 140G', '-', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '1', '1', '160');
INSERT INTO mstock VALUES ('8998866103084', '-', '1', '1', 'KODOMO TOOTPASTE MELON 45G', 'KODOMO PASTA GIGI TOOTHPASTE MELON 45GR', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023380528', '-', '1', '1', 'PENGGARIS BUTTERFLY BT 550', 'PENGGARIS BUTTERFLY BT 550', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('839', '-', '1', '1', 'Karet Warna ', 'Karet Warna', '100', '11001001', 'buah', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('840', '-', '1', '1', 'KARET BINTIK ', 'KARET BINTIK', '100', '11001001', 'buah', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('841', '-', '1', '1', 'KARET POLOS WARNA', 'KARET POLOS WARNA', '100', '11001001', 'buah', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('842', '-', '1', '1', 'KOTAK DAUN KM', 'KOTAK DAUN KM', '100', '11003001', 'buah', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('843', '-', '1', '1', 'WINN GAS REGULATOR DN 138 M', 'CUTTON BUDS KENZO', '100', '11003003', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('844', '-', '1', '1', 'CUTTON BUDS ELISABETH BESAR', 'CUTTON BUDS ELISABETH BESAR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '203');
INSERT INTO mstock VALUES ('865', '-', '1', '1', 'KERTAS PEMBUNGKUS MAKANAN AS BULAT', 'SAKLAR MY BENKO 1 SK + 1 LB', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('856', '-', '1', '1', 'SANDAL KID ROCK COWOK', 'SANDAL KID ROCK COWOK', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('859', '-', '1', '1', 'ROTI MAVIN ISI 6', 'ROTI MAVIN ISI 6', '100-', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('956', '-', '1', '1', 'BROWNIES A PUTRAPASUPANDAN', 'BROWNIES A PUTRAPASUPANDAN', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830019380', '-', '1', '1', 'AXE GOLD TEMPTATION 150ML', 'AXE GOLD TEMPTATION 150ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866103985', '-', '1', '1', 'SIKAT GIGI CIPTADENT CRYSTAL CLEAN MEDIUM', 'SIKAT GIGI CIPTADENT CRYSTAL CLEAN MEDIUM', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7237844121216', '-', '1', '1', 'SENSI REGULAR PANTS S 1 PANT', 'SENSI REGULAR PANTS S 1 PANT', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('2460320753017', '-', '1', '1', 'MINYAK GORENG TIGA UDANG 4.8 LITER', 'MINYAK GORENG TIGA UDANG 4.8 LITER', '100', '10001001', 'DUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009010637', '-', '1', '1', 'ULTRA MILK LOW FAT HIGH CALCIUM 1000ML', 'ULTRA MILK LOW FAT HIGH CALCIUM 1000ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129004516', '-', '1', '1', 'SNOWMAN  PERMANENT MARKET AG BLACK', 'SNOWMAN  PERMANENT MARKET AG BLACK', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991111111971', '-', '1', '1', 'CLEAN & CLEAR ESSENTIALS FOAMING FACIAL WASH 100ML', 'CLEAN & CLEAR ESSENTIALS FOAMING FACIAL WASH 100ML', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806086858809', '-', '1', '1', 'SAMSUNG GALAXY GRAND PRIME SM-G5331H/DS', 'SAMSUNG GALAXY GRAND PRIME SM-G5331H/DS', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806086957328', '-', '1', '1', 'SAMSUNG GALAXY J5  SM J500G BLACK', 'SAMSUNG GALAXY J5  SM J500G BLACK', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('353724075256485', '-', '1', '1', 'NOKIA 105 BLACK', 'NOKIA 105 BLACK', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806086858007', '-', '1', '1', 'GALAXY V PLUS SM-G318HZ/DS', 'GALAXY V PLUS SM-G318HZ/DS', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4712900339086', '-', '1', '1', 'ZENFONE GO ZB452KG ', 'ZENFONE GO ZB452KG ', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102381017', '-', '1', '1', 'FULLO VANILLA MILK 10.5GR', 'FULLO VANILLA MILK 10.5GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997204440041', '-', '1', '1', 'ARNON LONG TOAST 400 GR', 'ARNON LONG TOAST 400 GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001623', '-', '1', '1', 'BAYGON BAKAR JUMBO 0.03MC LAVENDER ISI 5', 'BAYGON BAKAR JUMBO 0.03MC LAVENDER ISI 5', '100', '11003003', 'BUAH ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999054601', '-', '1', '1', 'WALLS PADDLE POP ICY FLOAT VANILA KOLA 55ML', 'WALLS PADDLE POP ICY FLOAT VANILA KOLA 55ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999046897', '-', '1', '1', 'WALLS PADDLE POP TWISTER 60ML', 'WALLS PADDLE POP TWISTER 60ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999051617', '-', '1', '1', 'MAGNUM PATISSERIE CREME BRULEE 80ML', 'MAGNUM PATISSERIE CREME BRULEE 80ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999034610', '-', '1', '1', 'CORNETO CHOCOLATE DISC 120ML', 'CORNETO CHOCOLATE DISC 120ML', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030012', '-', '1', '1', 'LEM G', 'LEM G', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '142');
INSERT INTO mstock VALUES ('8990800017549', '-', '1', '1', 'CENTER FRUIT 2X3.5G/ /PCS', 'CENTER FRUIT STROBERI SEMANGKA 3.5G / PCS', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992726892484', '-', '1', '1', 'INACO IM COCO LYCHEE 350ML', 'INACO IM COCO LYCHEE 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '0', '0');
INSERT INTO mstock VALUES ('8992726892521', '-', '1', '1', 'INACO IM COCO AIR KELAPA 350ML', 'INACO IM COCO AIR KELAPA 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992726892491', '-', '1', '1', 'INACO IM COCO STROBERI 350ML', 'INACO IM COCO STROBERI 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992726892514', '-', '1', '1', 'INACO IM COCO MANGGA 350ML', 'INACO IM COCO MANGGA 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997018484651', '-', '1', '1', 'SUGUS YOGURT BLACKCURRANT MANGO 42X105G', 'SUGUS YOGURT BLACKCURRANT MANGO 42X105G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997018484644', '-', '1', '1', 'SUGUS YOGURT STRAWBERRY ORANGE 42X105G', 'SUGUS YOGURT STRAWBERRY ORANGE 42X105G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992919856033', '-', '1', '1', 'SUGUS PERMEN LUNAK STRAWBERRY 10X30G', 'SUGUS PERMEN LUNAK STRAWBERRY 10X30G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992919856026', '-', '1', '1', 'SUGUS PERMEN LUNAK JERUK 10X30G', 'SUGUS PERMEN LUNAK JERUK 10X30G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992919856019', '-', '1', '1', 'SUGUS PERMEN LUNAK BLACKCURRANT 10X30G', 'SUGUS PERMEN LUNAK BLACKCURRANT 10X30G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686600810', '-', '1', '1', 'CHEETOS NET SEAWEED RUMPUT LAUT 10GR', 'CHEETOS NET SEAWEED RUMPUT LAUT 10GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866201346', '-', '1', '1', 'MI SEDAP WHITE CURRY 81GR', 'MI SEDAP KUAH WHITE CURRY 81GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992726938199', '-', '1', '1', 'JELY INACO JUICE 15X15GR', 'JELY INACO JUICE ANEKA RASA 15X15GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999037154', '-', '1', '1', 'DOVE CONDITIONER TRICHAZOLE 160ML', 'DOVE TOTAL HAIR FALL CONDITIONER TRICHAZOLE ACTIVES 160ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999037222', '-', '1', '1', 'DOVE CONDITIONER MICRO MOISTURE SERUM 160ML', 'DOVE DAILY SHINE CONDITIONER MICRO MOISTURE SERUM 160ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999037192', '-', '1', '1', 'DOVE CONDITIONER KERATIN REPAIR 160ML', 'DOVE TOTAL DAMAGE CONDITIONER KERATIN REPAIR ACTIVES 160ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755030486', '-', '1', '1', 'GOOD TIME MINI RAINBOW CHOCOCHIPS 45G', 'GOOD TIME MINI RAINBOW CHOCOCHIPS 45G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270048', '-', '1', '1', 'CHARM PURE STYLE SWEET ROSE 20 LM', 'CHARM PURE STYLE FRAGRANCE SWEET ROSE 20 LM', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999225783114', '-', '1', '1', 'PURBASARI LULUR WHITENING 135GR', 'PURBASARI LULUR WHITENING 135GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103101026', '-', '1', '1', 'CUSSONS BABY MILK BATH MILK & ROSE OIL 400ML', 'CUSSONS BABY MILK BATH SOFT&SMOOTH MILK & ROSE OIL 400ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997015390085', '-', '1', '1', 'LULUR SEKAR JAGAT BOREH REMPAH 100GR', 'LULUR SEKAR JAGAT BOREH REMPAH 100GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048235', '-', '1', '1', 'SUNSILK CONDITIONER SOFT&SMOOTH 170ML', 'SUNSILK CONDITIONER SOFT&SMOOTH 170ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370383', '-', '1', '1', 'MIRANDA MC8 VIOLET RED 30ML', 'MIRANDA MC8 VIOLET RED 30ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001354701', '-', '1', '1', 'KARACHI HOMME PARFUM SILVER 100ML', 'KARACHI HOMME PARFUM SILVER 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001354718', '-', '1', '1', 'KARACHI HOMME PARFUM BLUE 100ML', 'KARACHI HOMME PARFUM BLUE 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189271021', '-', '1', '1', 'MAMY POKO PANTS STANDAR XL 20 PCS', 'MAMY POKO PANTS STANDAR XL 20 PCS', '100', '10002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995151120115', '-', '1', '1', 'MINYAK ZAITUN MUSTIKA RATU 175ML', 'MINYAK ZAITUN MUSTIKA RATU 175ML', '100', '10002001', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222054980', '-', '1', '1', 'GATSBY STYLING POMADE SUPREME HOLD 80GR', 'GATSBY STYLING POMADE SUPREME HOLD 80GR', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222053105', '-', '1', '1', 'GATSBY CRITISH WAVE STYLE 75GR', 'GATSBY CRITISH WAVE STYLE 75GR', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304039607', '-', '1', '1', 'GARNIER MEN  ACNO FIGHT 50ML', 'GARNIER MEN  ACNO FIGHT 50ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304073458', '-', '1', '1', 'GARNIER MEN POWER WHITE 50ML', 'GARNIER MEN POWER WHITE 50ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8890655024061', '-', '1', '1', 'AXIOM NEUTRON LED DAYLIHT 15W', 'AXIOM NEUTRON LED DAYLIHT 15W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010001', '-', '1', '1', 'EMERGENCY NAVARA LED 7W', 'EMERGENCY NAVARA LED 7W', '-', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010002', '-', '1', '1', 'ASUS USB TRAVEL CHARGER 2.0', 'ASUS USB TRAVEL CHARGER 2.0', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010003', '-', '1', '1', 'SAMSUNG MICRO USB TRAVEL CHARGER ADAPTER', 'SAMSUNG MICRO USB TRAVEL CHARGER ADAPTER', '', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010004', '-', '1', '1', 'MATSUGI MG-3307 0.5W LED', 'MATSUGI MG-3307 0.5W LED', '-', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992221088252', '-', '1', '1', 'BUKU LOCOMOTIF EXPO 42 SHEETS 180X250MM', 'BUKU LOCOMOTIF EXPO 42 SHEETS 180X250MM', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806086727778', '-', '1', '1', 'SAMSUNG GT-E1272 CERAMIC WHITE', 'SAMSUNG GT-E1272 CERAMIC WHITE', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806086727747', '-', '1', '1', 'SAMSUNG GT-E1272 NOBLE BLACK', 'SAMSUNG GT-E1272 NOBLE BLACK', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158708884', '-', '1', '1', 'NOKIA 215 DUAL SIM RM-1110 BLACK', 'NOKIA 215 DUAL SIM RM-1110 BLACK', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806086929424', '-', '1', '1', 'SAMSUNG SM-B310E DUOS BLUE', 'SAMSUNG SM-B310E DUOS BLUE', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806088201856', '-', '1', '1', 'SAMSUNG GALAXY J3 6 8GB BLACK', 'SAMSUNG GALAXY J3 6 8GB BLACK', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010005', '-', '1', '1', 'ADVAN VANDROID S35D 3.5 BLACK', 'ADVAN VANDROID S35D 3.5 BLACK', '', '11002001', 'UNIT', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010002', '-', '1', '1', 'LAKBAN CLOTHTAPE HITAM KECIL', 'LAKBAN CLOTHTAPE HITAM KECIL', '', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010001', '-', '1', '1', 'LAKBAN CLOTHTAPE HITAM BESAR', 'LAKBAN CLOTHTAPE HITAM BESAR', '', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8711500147035', '-', '1', '1', 'PHILIPS CLASSICTONE 25WT', 'PHILIPS CLASSICTONE 25WT', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('836569565656', '-', '1', '1', 'NOKIA TRAVEL ADAPTER N105', 'NOKIA TRAVEL ADAPTER N105', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8711500223869', '-', '1', '1', 'PHILIPS CLASSICTONE 25 WATT', 'PHILIPS CLASSICTONE 25 WATT', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866103954', '-', '1', '1', 'SIKAT GIGI CIPTADENT SOFT EXTRA CLEAN', 'SIKAT GIGI CIPTADENT EXTRA CLEAN SOFT', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866606547', '-', '1', '1', 'SIKAT GIGI CIPTADENT SOFT FLEXI CLEAN', 'SIKAT GIGI CIPTADENT SOFT FLEXI CLEAN', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745705307', '-', '1', '1', 'HIT SEMPROT POMEGRANATE 600ML', 'HIT SEMPROT POMEGRANATE 600ML EXTRA 20 % (600ML + 120ML)', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120964', '-', '1', '1', 'HIT SEMPROT LEMON 600ML', 'HIT SEMPROT LEMON 600ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('3516663670001', '-', '1', '1', 'FERMIPAN 4X11KG', 'FERMIPAN 4X11KG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('895', '-', '1', '1', 'SAKLAR TEMPEL KOTAK 1 SK HENSONIC', 'SAKLAR TEMPEL KOTAK 1 SK HENSONIC', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010007', '-', '1', '1', 'SAKLAR TEMBOK OKAWA 2 SKR', 'SAKLAR TEMBOK OKAWA 2 SKR', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120476', '-', '1', '1', 'HIT SEMPROT ORANGE 720ML', 'HIT SEMPROT ORANGE 720ML EXTRA 20 % (600ML + 120ML)', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120421', '-', '1', '1', 'HIT SEMPROT GREEN TEA 720ML', 'HIT SEMPROT GREEN TEA 720ML EXTRA 20 % (600ML + 120ML)', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745130291', '-', '1', '1', 'HIT SEMPROT POMEGRANATE 225ML', 'HIT SEMPROT POMEGRANATE 225ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999055776', '-', '1', '1', 'FAIR & LOVELY  MULTI VITAMIN 100GR', 'FAIR & LOVELY  MULTI VITAMIN 100GR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001937', '-', '1', '1', 'BAYGON MRT ELEKTRIK LAVENDER 30X21G', 'BAYGON MRT ELEKTRIK LAVENDER 30X21G', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998181941132', '-', '1', '1', 'DUNHILL16  FINE CUT FILTER', 'DUNHILL 16  FINE CUT FILTER', 'ROKOK', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992753184200', '-', '1', '1', 'MILKY FRISIAN FLAG RASA STROBERI 180 ML', 'MILKY FRISIAN FLAG RASA STROBERI 180 ML', '100', '10001002', 'kotak', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996196067007', '-', '1', '1', 'CIKENBON ORIGINAL 28 GR', 'CIKENBON ORIGINAL 28 GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998389172437', '-', '1', '1', 'KOKOLA POPCORN CARAMEL 90GR', 'KOKOLA POPCORN CARAMEL 90GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991771200329', '-', '1', '1', 'VITACIMIN SWEETLET 500MG', 'VITACIMIN SWEETLET 500MG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '10');
INSERT INTO mstock VALUES ('8998685011003', '-', '1', '1', 'HEXSOS RASA MINT 12,5GR', 'HEXSOS RASA MINT 12,5GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990800012483', '-', '1', '1', 'MENTOS NEW RAINBOW 37GR ', 'MENTOS NEW RAINBOW 37GR ', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001781420', '-', '1', '1', 'SELAMAT DOUBLE CHOCOLATE 60GR', 'SELAMAT DOUBLE CHOCOLATE 60GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998685021002', '-', '1', '1', 'NANONANO KULIT JERUK 2,5ML', 'NANONANO KULIT JERUK 2,5ML', '100', '10001001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '132');
INSERT INTO mstock VALUES ('8996006858016', '-', '1', '1', 'TEH BOTOL SOSRO ORIGINAL 350ML', 'TEH BOTOL SOSRO ORIGINAL 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997002050411', '-', '1', '1', 'NARAYANA SOYABOTOL 320 ML', 'NARAYANA SOYABOTOL 320 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696426528', '-', '1', '1', 'NESTLE CARNATION 495GR', 'NESTLE CARNATION 495GR', '100', '10001002', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105934', '-', '1', '1', 'SIKAT GIGI CIPTADENT MEDIUM TOTAL CLEAN', 'SIKAT GIGI CIPTADENT MEDIUM TOTAL CLEAN', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997542121541', '-', '1', '1', 'NUTRIENT MINYAK GORENG 900ML', 'NUTRIENT MINYAK GORENG 900ML', '100', '10001001', 'REFILL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992826112215', '-', '1', '1', 'MINYAK GORENG KUNCI MAS 2L', 'MINYAK GORENG KUNCI MAS 2L', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998989300230', '-', '1', '1', 'GUDANG GARAM MIL 16 btg', 'GUDANG GARAM MIL 16 btg', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002103238', '-', '1', '1', 'GOOD DAY MOKACINO SASET 20 GR', 'GOOD DAY MOKACINO SASET 20 GR', 'YASA-', '10001001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994188102101', '-', '1', '1', 'AMPLOP ROYAL NO. 104', 'AMPLOP ROYAL NO. 104', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '179');
INSERT INTO mstock VALUES ('8991389227275', '-', '1', '1', 'AMPLOP SINAR DUNIA', 'AMPLOP SINAR DUNIA', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6920403162751', '-', '1', '1', 'EVEREADY HEAVY DUTY AAA4', 'EVEREADY HEAVY DUTY AAA4', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999818797405', '-', '1', '1', 'WATER GLUE 40 ML', 'WATER GLUE 40 ML', '100', '11001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389211502', '-', '1', '1', 'MIRAGE FOLIO 50LEMBAR', 'MIRAGE FOLIO 50LEMBAR', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129028512', '-', '1', '1', 'SNOWMAN DRAWING PEN 0.1', 'SNOWMAN DRAWING PEN 0.1', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129029519', '-', '1', '1', 'SNOWMAN DRAWING PEN 0.2', 'SNOWMAN DRAWING PEN 0.2', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129063513', '-', '1', '1', 'SNOWMAN DRAWING PEN 0.4', 'SNOWMAN DRAWING PEN 0.4', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129032519', '-', '1', '1', 'SNOWMAN DRAWING PEN 0.7', 'SNOWMAN DRAWING PEN 0.7', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902778784952', '-', '1', '1', 'BOXY-001P', 'BOXY-001P', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129704027', '-', '1', '1', 'SNOWMAN BP-7 RED', 'SNOWMAN BP-7 RED', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995026902754', '-', '1', '1', 'STANDARD R5 0.5', 'STANDARD R5 0.5', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129754015', '-', '1', '1', 'SNOWMAN V-7 CRYSTAL SERIES', 'SNOWMAN V-7 CRYSTAL SERIES', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6947503786137', '-', '1', '1', 'EXPERT GEL PEN ', 'EXPERT GEL PEN ', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002122000', '-', '1', '1', 'ABC EXO CHOCOMALT COFFE 230ML', 'ABC EXO CHOCOMALT COFFE 230ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800361002851', '-', '1', '1', 'KOKOKRUNCH KOTAK 170 GR', 'KOKOKRUNCH KOTAK 170 GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304016684', '-', '1', '1', 'MAYBELLINE CLEANSMOOTH ALL IN ONE', 'MAYBELLINE CLEANSMOOTH ALL IN ONE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('MATSUGI', '-', '1', '1', 'MATSUGI MG 5315 15 W, EMERGENSI', 'MATSUGI MG 5315 15 W, EMERGENSI', '100', '11002001', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560033040', '-', '1', '1', 'HARPIC POWER PLUS  200 ML', 'HARPIC POWER PLUS  200 ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043674', '-', '1', '1', 'SABUN CAIR  LUX  WHITEIGHT   450 ', 'SABUN CAIR  LUX  WHITEIGHT   450 ', '100', '10002003', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999028466', '-', '1', '1', 'SABUN CAIR DOVE REVIVA BODY WASH 400 ML', 'SABUN CAIR DOVE REVIVA BODY WASH 400 ML', '100', '10002003', 'saset', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999030568', '-', '1', '1', 'SABUN CAIR DOVE FRESH TOUCH BODY WASH 400 ML', 'SABUN CAIR DOVE FRESH TOUCH BODY WASH 400 ML', '100', '10002003', 'saset', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999030575', '-', '1', '1', 'SABUN CAIR DOVE NOURISING BODY WAS  400 ML', 'SABUN CAIR DOVE NOURISING BODY WAS  400 ML', '100', '10002003', 'saset', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998389134411', '-', '1', '1', 'MALKIIST SUSU 17 GR', 'MALKIST SUSU  17 GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997031710164', '-', '1', '1', 'OPTIMUS CHIP CHOP 26 GR', 'OPTIMUS CHIP CHOP 26 GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775302286', '-', '1', '1', 'GERY WAFER SALUT KEJU  12 GR', 'GERY WAFER SALUT KEJU  12 GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009010620', '-', '1', '1', 'ULTRA MILK SUSU UHT COKLAT 1000ML', 'SUSU ULTRA KOTAK COKLAT 1 LTR', '100', '10001002', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997206580141', '-', '1', '1', 'GREEN SANDS  LEMON & GRAPE 250ML', 'GREEN SANDS  LEMON & GRAPE 250ML', '100', '10001002', 'kaleng', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023030317', '-', '1', '1', 'MINYAK GORENG SAWIT 3 UDANG 4,8 LTR', 'MINYAK GORENG SAWIT 3 UDANG 4,8 LTR', '100', '10001001', 'JERIGEN', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598599', '-', '1', '1', 'CHITATO RASA SAPI BUMBU BAKAR 15% 78G', 'CHITATO RASA SAPI BUMBU BAKAR 15% 78G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598186', '-', '1', '1', 'CHITATO RASA AYAM BARBEQUE 15% 78G', 'CHITATO RASA AYAM BARBEQUE 15% 78G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686596847', '-', '1', '1', 'LAYS RASA MADU MENTEGA 55G', 'LAYS RASA MADU MENTEGA 55G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686048704', '-', '1', '1', 'SARIMI ISI 2 MI GORENG RASA AYAM KECAP 126G', 'SARIMI ISI 2 MI GORENG RASA AYAM KECAP 126G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994834002274', '-', '1', '1', 'TWISTKO RASA JAGUNG BAKAR 145G', 'TWISTKO RASA JAGUNG BAKAR 145G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886052846283', '-', '1', '1', 'BON - BON CHOCOLATE CREAM 210G', 'BON - BON CHOCOLATE CREAM 210G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992770054012', '-', '1', '1', 'SAJIKU NASI GORENG RASA AYAM 20G', 'SAJIKU NASI GORENG RASA AYAM 20G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777026370', '-', '1', '1', 'HANSAPLAS', 'HANSAPLAS', '1', '10002002', 'LEMBAR', '-', '0', '0', '0.00', '0', '0', '1', '206');
INSERT INTO mstock VALUES ('8718696530535', '-', '1', '1', 'PHILIP TWIN PAK 24 WT', 'PHILIP TWIN PAK 24 WT', '100', '11002001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718696530498', '-', '1', '1', 'PHILIP TORNADO TWIN PAK 20  WT ', 'PHILIP TORNADO TWIN PAK 20  WT ', '100', '11002001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718696530450', '-', '1', '1', 'PHILIP TORNADO TWIN PAK  15 WT', 'PHILIP TORNADO TWIN PAK  15 WT', '100', '11002001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718696530337', '-', '1', '1', 'PHILIP TORNADO TWIN PAK 5 WT', 'PHILIP TORNADO TWIN PAK 5 WT', '100', '11002001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718696530375', '-', '1', '1', 'PHILIP TORNADO TWIN PAK  8 WT', 'PHILIP TORNADO TWIN PAK  15 WT', '100', '11002001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718696530412', '-', '1', '1', 'PHILIPS TORNADO TWIN PAK 12 WT', 'PHILIPS TORNADO TWIN PAK 12 WT', '100', '11002001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686816068', '-', '1', '1', 'PEPSI BLUE  450 ML', 'PEPSI BLUE  450 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686821086', '-', '1', '1', 'ICHI OCHA MINUMAN TEH MELATI  350 ML', 'ICHI OCHA MINUMAN TEH MELATI  350 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '83');
INSERT INTO mstock VALUES ('8992388101023', '-', '1', '1', 'NU GREEN TEA   MADU  450 ML', 'NU GREEN TEA   MADU  450 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992388101016', '-', '1', '1', 'NU  GREN TEA  HIJAU  450 ML', 'NU  GREN TEA  HIJAU  450 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('MATSUGI MG 5305', '-', '1', '1', 'MATSUGI MG 5305  12 WT', 'MATSUGI MG 5305  12 WT', '100', '11002001', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('MATSUGI MG 5315', '-', '1', '1', 'MATSUGI MG 5315  15 WAT  EMERGENCY', 'MATSUGI MG 5315  15 WAT  EMERGENCY', '100', '11002001', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('MATSUGI MG 5300', '-', '1', '1', 'MATSUGI MG 5300  8 WAT  EMERGENCY', 'MATSUGI MG 5300  8 WAT  EMERGENC', '100', '11002001', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999050009', '-', '1', '1', 'SUNLIGHT SASET 26 ML', 'KERAN BINTANG KUNINGAN', '100', '10002003', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129000518', '-', '1', '1', 'SNOWMAN WHITE BOARD MARKET', 'SNOWMAN WHITE BOARD MARKET', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866602983', '-', '1', '1', 'NUVO FAMILY NATURE REFIL 250ML', 'NUVO FAMILY NATURE REFIL 250ML', '100', '10002003', 'REFILL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866602990', '-', '1', '1', 'NUVO FAMILY ENERGIZING REFIL 250ML', 'NUVO FAMILY ENERGIZING REFIL 250ML', '100', '10002003', 'REFILL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866602969', '-', '1', '1', 'NUVO FAMILY CARING REFIL 250ML', 'NUVO FAMILY CARING REFIL 250ML', '100', '10002003', 'REFILL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866602976', '-', '1', '1', 'NUVO FAMILY CLASSIC REFIL 250ML', 'NUVO FAMILY CLASSIC REFIL 250ML', '100', '10002003', 'REFILL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866609449', '-', '1', '1', 'GIV WHITE GLOWING WHITE REFIL 250ML', 'GIV WHITE GLOWING WHITE REFIL 250ML', '100', '10002003', 'REFILL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026400', '-', '1', '1', 'DETTOL BODY WASH ORIGINAL 100ML', 'DETTOL BODY WASH ORIGINAL 100ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026424', '-', '1', '1', 'DETTOL BODY WASH FRESH 100ML', 'DETTOL BODY WASH FRESH 100ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036553', '-', '1', '1', 'LUX AQUA SPARKLE 250ML', 'LUX AQUA SPARKLE 250ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036546', '-', '1', '1', 'LUX VELVET TOUCH 250ML', 'LUX VELVET TOUCH 250ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003852', '-', '1', '1', 'CITRA BENGKOANG INDONESIA 400ML', 'CITRA BENGKOANG INDONESIA 400ML', '100', '10002006', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001354695', '-', '1', '1', 'KARACHI HOMME BLACK 100ML', 'KARACHI HOMME BLACK 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001355951', '-', '1', '1', 'CHENNAI FEMME VIOLET 88ML', 'CHENNAI FEMME VIOLET 88ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001355890', '-', '1', '1', 'CHENNAI FEMME BLACK 88ML', 'CHENNAI FEMME BLACK 88ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001355913', '-', '1', '1', 'CHENNAI FEMME WHITE 88ML', 'CHENNAI FEMME WHITE 88ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001355906', '-', '1', '1', 'CHENNAI FEMME PINK 88ML', 'CHENNAI FEMME PINK 88ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560025236', '-', '1', '1', 'DETTOL LASTING FRESH EKSTRA TIMUN 105G', 'DETTOL LASTING FRESH EKSTRA TIMUN 105G', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('600', '-', '1', '1', 'PIE SUSU', 'PIE SUSU', '100', '10001001', 'buah', '-', '0', '0', '0.00', '0', '0', '1', '56');
INSERT INTO mstock VALUES ('4562195142621', '-', '1', '1', 'CITIZEN SLD-200N', 'CITIZEN SLD-200N', '100', '11002002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304017575', '-', '1', '1', 'MAYBELLINE CLEAR SMOOTH 03 NATURAL', 'MAYBELLINE CLEAR SMOOTH 03 NATURAL', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304017582', '-', '1', '1', 'MAYBELLINE CLEAR SMOOTH 04 HONEY', 'MAYBELLINE CLEAR SMOOTH 04 HONEY', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304016660', '-', '1', '1', 'MAYBELLINE CLEANSMOOTH ALL IN ONE 03 NATURAL', 'MAYBELLINE CLEANSMOOTH ALL IN ONE 03 NATURAL', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999053031', '-', '1', '1', 'PONDS WHITE BEAUTY PINKISH 100GR', 'PONDS WHITE BEAUTY PINKISH 100GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772215015', '-', '1', '1', 'SOFFELL BOTOL BUNGA GERANIUM 80GR', 'SOFFELL BOTOL BUNGA GERANIUM 80GR', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992821101252', '-', '1', '1', 'SHAMPOO SELSUN YELLOW DOUBLE 50ML', 'SHAMPOO SELSUN YELLOW DOUBLE 50ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686810363', '-', '1', '1', 'PEPSI 450ML', 'PEPSI 450ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222054966', '-', '1', '1', 'GATSBY STYLING POMADE HOLD 30GR', 'GATSBY STYLING POMADE HOLD 30GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222054973', '-', '1', '1', 'GATSBY STYLING POMADE GREASE 30GR', 'GATSBY STYLING POMADE GREASE 30GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999052959', '-', '1', '1', 'PONDS WHITE BEAUTY PINKISH 50GR', 'PONDS WHITE BEAUTY PINKISH 50GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772315128', '-', '1', '1', 'SOFFELL BOTOL KULIT JERUK 80GR', 'SOFFELL BOTOL KULIT JERUK 80GR', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008357071', '-', '1', '1', 'PARFUM CLAVINOVA NATURAL SPRAY 110ML', 'PARFUM CLAVINOVA NATURAL SPRAY 110ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008350881', '-', '1', '1', 'PARFUM CLAVINOVA POUR HOMME 125ML', 'PARFUM CLAVINOVA POUR HOMME 125ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008350980', '-', '1', '1', 'PARFUM CLAVINOVA HIM 105ML', 'PARFUM CLAVINOVA HIM 105ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008350096', '-', '1', '1', 'PARFUM CLAVINOVA DIAMOND BLUE 120ML', 'PARFUM CLAVINOVA DIAMOND BLUE 120ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008350850', '-', '1', '1', 'PARFUM CLAVINOVA SILVER 125ML', 'PARFUM CLAVINOVA SILVER 125ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008357088', '-', '1', '1', 'PARFUM CLAVINOVA NATURAL SPRAY 110ML', 'PARFUM CLAVINOVA NATURAL SPRAY 110ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008357095', '-', '1', '1', 'PARFUM CLAVINOVA FRAGRANCE 110ML', 'PARFUM CLAVINOVA FRAGRANCE 110ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008350867', '-', '1', '1', 'PARFUM CLAVINOVA BROWN 125ML', 'PARFUM CLAVINOVA BROWN 125ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008350898', '-', '1', '1', 'PARFUM CLAVINOVA POUR FEMME 125ML', 'PARFUM CLAVINOVA POUR FEMME 125ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997008350195', '-', '1', '1', 'PARFUM CLAVINOVA DIAMOND PINK 120ML', 'PARFUM CLAVINOVA DIAMOND PINK 120ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832603189', '-', '1', '1', 'SPRAY REGAZZA SOPHISTICATED 100ML', 'SPRAY REGAZZA SOPHISTICATED 100ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992821100729', '-', '1', '1', 'SHAMPOO SELSUN BLUE 60ML', 'SHAMPOO SELSUN BLUE 60ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997028280014', '-', '1', '1', 'SEMIR BESTWAY BLACK HAIR MENGKUDU 20ML', 'SEMIR BESTWAY BLACK HAIR MENGKUDU 20ML', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866106931', '-', '1', '1', 'SIKAT GIGI SYSTEMA LION SOFT ISI 3', 'SIKAT GIGI SYSTEMA LION SOFT ISI 3', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999037123', '-', '1', '1', 'MOLTO ULTRA SEKALI BILAS 25ML', 'MOLTO ULTRA SEKALI BILAS 25ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994311118108', '-', '1', '1', 'STIPO KENKO KE-108', 'STIPO KENKO KE-108', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('971', '-', '1', '1', 'MATSUGI MG-6629 2W LED', 'MATSUGI MG-6629 2W LED', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993053873764', '-', '1', '1', 'NOTA KONTAN 50 LEMBAR HVS 1 PLAY', 'NOTA KONTAN 50 LEMBAR HVS 1 PLAY', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6941335410444', '-', '1', '1', 'LAMPU SURYA LED SYH L617 6WATT', 'LAMPU SURYA LED SYH L617 6WATT', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('974', '-', '1', '1', 'MATSUI SERBAGUNA 4 LUBANG', 'MATSUI SERBAGUNA 4 LUBANG', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('987', '-', '1', '1', 'CUK ROLL VYBA 2X24 3 LUBANG', 'CUK ROLL VYBA 2X24 3 LUBANG', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('978', '-', '1', '1', 'CUK ROLL VYBA 2X24 5 LUBANG', 'CUK ROLL VYBA 2X24 5 LUBANG', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('653', '-', '1', '1', 'CUK ROL DEXTA 5 M LUBANG 2', 'CUK ROL DEXTA 5 M LUBANG 2', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('654', '-', '1', '1', 'CUK ROL DEXTA 5 M LUBANG 3', 'CUK ROL DEXTA 5 M LUBANG 3', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('652', '-', '1', '1', 'CUK ROL DEXTA 5 M LUBANG 4', 'CUK ROL DEXTA 5 M LUBANG 4', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8890655024054', '-', '1', '1', 'AXIOM NEUTRON LED 12W', 'AXIOM NEUTRON LED 12W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('946', '-', '1', '1', 'KACAMATA 35.000', 'KACAMATA 35.000', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175532297', '-', '1', '1', 'richeese AHH  5,5 gr', 'richeese AHH  5,5 gr', '100-', '10001001', 'bh', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('S00005', '-', '0', '0', 'PULSA TELKOMSEL 5000', 'PULSA TELKOMSEL NOMINAL 5000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('S00010', '-', '0', '0', 'PULSA TELKOMSEL 10000', 'PULSA TELKOMSEL NOMINAL 10000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('S00020', '-', '0', '0', 'PULSA TELKOMSEL 20000', 'PULSA TELKOMSEL NOMINAL 20000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('S00050', '-', '0', '0', 'PULSA TELKOMSEL 50000', 'PULSA TELKOMSEL NOMINAL 50000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('S00100', '-', '0', '0', 'PULSA TELKOMSEL 100000', 'PULSA TELKOMSEL NOMINAL 100000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('XL00005', '-', '0', '0', 'PULSA XL 5000', 'PULSA XL NOMINAL 5000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('XL00010', '-', '0', '0', 'PULSA XL 10000', 'PULSA XL NOMINAL 10000', '100', '10002008', 'VOUCHER', '-', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('XL00025', '-', '0', '0', 'PULSA XL 25000', 'PULSA XL NOMINAL 25.000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('XL00050', '-', '0', '0', 'PULSA XL 50000', 'PULSA XL NOMINAL 50000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('XL00100', '-', '0', '0', 'PULSA XL 100000', 'PULSA XL NOMINAL 100000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('T300005', '-', '0', '0', 'PULSA TREE 5000', 'PULSA TREE NOMINAL 5000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('T300010', '-', '0', '0', 'PULSA TREE 10000', 'PULSA TREE 10000', '100', '10002008', 'VOUCHER', '-', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('T300025', '-', '0', '0', 'PULSA TREE 25000', 'PULSA TREE NOMINAL 25000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('T300050', '-', '0', '0', 'PULSA TREE 50000', 'PULSA TREE NOMINAL 50000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('T300100', '-', '0', '0', 'PULSA TREE 100000', 'PULSA TREE NOMINAL .100000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('IM00005', '-', '0', '0', 'PULSA IM3 5000', 'PULSA IM3 NOMINAL 5000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('IM00010', '-', '0', '0', 'PULSA IM3 10000', 'PULSA IM3 NOMINAL 10000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('IM00025', '-', '0', '0', 'PULSA IM3 25000', 'PULSA IM3 NOMINAL 25000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('IM00050', '-', '0', '0', 'PULSA IM3 50000', 'PULSA IM3 NOMINAL 50000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('IM00100', '-', '0', '0', 'PULSA IM3 100000', 'PULSA IM3 NOMINAL 100000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('SF00005', '-', '0', '0', 'PULSA SMARTFREN 5000', 'PULSA SMARTFREN NOMINAL 5000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('SF00010', '-', '0', '0', 'PULSA SMARTFREN 10000', 'PULSA SMARTFREN NOMINAL 10000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('SF00025', '-', '0', '0', 'PULSA SMARTFREN 25000', 'PULSA SMARTFREN NOMINAL 25000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('SF00050', '-', '0', '0', 'PULSA SMARTFREN 50000', 'PULSA SMARTFREN NOMINAL 50000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('SF00100', '-', '0', '0', 'PULSA SMARTFREN 100000', 'PULSA SMARTFREN NOMINAL 100000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('S00025', '-', '0', '0', 'PULSA TELKOMSEL 25000', 'PULSA TELKOMSEL NOMINAL 25000', '100', '10002008', 'VOUCHER', '0', '0', '1', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('962', '-', '1', '1', 'GUNTING M2000 SM-C160', 'GUNTING M2000 SM-C160', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6945643129623', '-', '1', '1', 'GUNTING ESCO GR-960', 'GUNTING ESCO GR-960', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6920005800006', '-', '1', '1', 'GUNTING M2000 SM-D680', 'GUNTING M2000 SM-C140', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6951227200404', '-', '1', '1', 'GUNTING K500 HITAM', 'GUNTING K500 HITAM', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('968', '-', '1', '1', 'KACANG MENTE NUSA RAHAYU 25GR', 'KACANG MENTE NUSA RAHAYU UD ISIAN 25GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002101234', '-', '1', '1', 'KOPI BUBUK ABC TAT TWAM ASI 260GR', 'KOPI BUBUK ABC TAT TWAM ASI 260GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999052331', '-', '1', '1', 'MAGNUM TIRAMISU 90ML', 'MAGNUM TIRAMISU 90ML', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999988888811', '-', '1', '1', 'LARUTAN KALENG ORANGE FLAVOUR  320ML', 'LARUTAN KALENG ORANGE FLAVOUR  320ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '120');
INSERT INTO mstock VALUES ('8992388101054', '-', '1', '1', 'NU GREEN TEA RENDAH GULA 450ML', 'NU GREEN TEA DAUN TEH RENDAH GULA 450ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992388133277', '-', '1', '1', 'NU GREEN TEA MELATI GULA BATU 450ML', 'NU GREEN TEA MELATI GULA BATU 450ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886008101046', '-', '1', '1', 'AQUA GELAS 240ML', 'AQUA GELAS 240ML', '100', '10001002', 'BUAH`', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997012121286', '-', '1', '1', 'MARIZA SELAI PEANUT BUTTER SPREAD 155GR', 'MARIZA SELAI PEANUT BUTTER SPREAD 155GR', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686400359', '-', '1', '1', 'INDOFOOD SAMBAL PEDAS 275ML', 'INDOFOOD SAMBAL PEDAS 275ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992770096128', '-', '1', '1', 'SAORI SAUS TIRAM 133ML', 'SAORI SAUS TIRAM 133ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686400816', '-', '1', '1', 'INDOFOOD SAMBAL EXTRA PEDAS 140ML', 'INDOFOOD SAMBAL EXTRA PEDAS 140ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('711844120440', '-', '1', '1', 'ABC SAMBAL EXTRA PEDAS 275ML', 'ABC SAMBAL EXTRA PEDAS 275ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686401745', '-', '1', '1', 'INDOFOOD SAUS TOMAT 275ML', 'INDOFOOD SAUS TOMAT 275ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622210462534', '-', '1', '1', 'OREO MINI STRAWBERRY 67GR', 'OREO MINI STRAWBERRY 67GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999510785212', '-', '1', '1', 'ROOF BEER KALENG 330ML', 'ROOF BEER KALENG 330ML', '100', '10001002', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001305003', '-', '1', '1', 'ROMA SARI GANDUM PEANUT BUTTER 115GR', 'ROMA SARI GANDUM PEANUT BUTTER 115GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077600258', '-', '1', '1', 'DUA KELINCI KACANG LOFET DAUN JERUK 75GR', 'DUA KELINCI KACANG LOFET DAUN JERUK 75GR.', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077601422', '-', '1', '1', 'DUA KELINCI KACANG KORO ORIGINAL 70GR', 'DUA KELINCI KACANG KORO ORIGINAL 70GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077602214', '-', '1', '1', 'KACANG POLONG DUA KELINCI ORIGINAL 70GR', 'KACANG POLONG DUA KELINCI ORIGINAL 70GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077600296', '-', '1', '1', 'KACANG DUA KELINCI GARLIC 90GR', 'KACANG DUA KELINCI GARLIC 90GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077602658', '-', '1', '1', 'KACANG DUA KELINCI MIX NUT 75GR', 'KACANG DUA KELINCI MIX NUT 75GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077601767', '-', '1', '1', 'KACANG POLONG  SUKRO 140GR', 'KACANG POLONG DUA KELINCI SUKRO 140GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995952008230', '-', '1', '1', 'MORIN SELAI CHOCOLATE PEANUT 150GR', 'MORIN SELAI CHOCOLATE PEANUT 150GR', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995952004232', '-', '1', '1', 'MORIN SELAI CREAMY PEANUT BUTTER 150GR', 'MORIN SELAI CREAMY PEANUT BUTTER 150GR', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997012120678', '-', '1', '1', 'MARIZA CARAMEL TOPPING 200GR', 'MARIZA CARAMEL TOPPING 200GR', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997012120654', '-', '1', '1', 'MARIZA BLUEBERRY TOPPING 200GR', 'MARIZA BLUEBERRY TOPPING 200GR', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997012120647', '-', '1', '1', 'MARIZA CHOCOLATE TOPPING 200GR', 'MARIZA CHOCOLATE TOPPING 200GR', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015402037', '-', '1', '1', 'ARNOTTS NYAM NYAM FANTASY STICK 22.5GR', 'ARNOTTS NYAM NYAM FANTASY STICK 22.5GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755020340', '-', '1', '1', 'ARNOTTS NYAM NYAM ICE CREAM STRAWBERRY DAILIGHT 28GR', 'ARNOTTS NYAM NYAM ICE CREAM STRAWBERRY DAILIGHT 28GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755020333', '-', '1', '1', 'ARNOTTS NYAM NYAM ICE CREAM MILK VANILLA 28GR', 'ARNOTTS NYAM NYAM ICE CREAM MILK VANILLA 28GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755020241', '-', '1', '1', 'ARNOTTS NYAM NYAM BUBBLE PUFF STRAW 18GR', 'ARNOTTS NYAM NYAM BUBBLE PUFF STRAW 18GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015403034', '-', '1', '1', 'ARNOTTS NYAM NYAM FANTASY STICK STRAW 25GR', 'ARNOTTS NYAM NYAM FANTASY STICK STRAW 25GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755020326', '-', '1', '1', 'ARNOTTS NYAM NYAM ICE DREM CHOCO 28GR', 'ARNOTTS NYAM NYAM ICE DREM CHOCO 28GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755020265', '-', '1', '1', 'ARNOTTS NYAM NYAM FANTASY STICK BLUE 25GR', 'ARNOTTS NYAM NYAM FANTASY STICK BLUE 25GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015401030', '-', '1', '1', 'ARNOTTS NYAM NYAM FANTASY STICK CHOCO 25GR', 'ARNOTTS NYAM NYAM FANTASY STICK CHOCO 25GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077601897', '-', '1', '1', 'DUA KELINCI SUKRO BBQ 140GR', 'DUA KELINCI SUKRO BBQ 140GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077600166', '-', '1', '1', 'DUA KELINCI SUKRO ORIGINAL 140GR', 'DUA KELINCI SUKRO ORIGINAL 140GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077602412', '-', '1', '1', 'DUA KELINCI SUKRO KRIBO 140GR', 'DUA KELINCI SUKRO KRIBO 140GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995077600135', '-', '1', '1', 'DUA KELINCI KACANG SHANGHAI ORIGINAL 225GR', 'DUA KELINCI KACANG SHANGHAI ORIGINAL 225GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992802063029', '-', '1', '1', 'FITBAR NUTS 24GR', 'FITBAR NUTS 24GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('410819190005', '-', '1', '1', 'FITBAR FRUITS 25GR', 'FITBAR FRUITS 25GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('749921005144', '-', '1', '1', 'L-MEN GAINMASS 500GR', 'L-MEN GAINMASS 500GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('749921005175', '-', '1', '1', 'L-MEN LOSEWEIGHT CHOCOLATE 300GR', 'L-MEN LOSEWEIGHT CHOCOLATE 300GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998685012000', '-', '1', '1', 'HEXOS LEMON MINT 12.5GR', 'HEXOS LEMON MINT 12.5GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998685028001', '-', '1', '1', 'NANO NANO NAUGAT ORIGINAL 20GR', 'NANO NANO NAUGAT ORIGINAL 20GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998685054307', '-', '1', '1', 'FROZZ ORANGE MINT 15GR', 'FROZZ ORANGE MINT 15GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998685053300', '-', '1', '1', 'FROZZ CHERRY MINT 15GR', 'FROZZ CHERRY MINT 15GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998685056301', '-', '1', '1', 'FROZZ LIME MINT 15GR', 'FROZZ LIME MINT 15GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998685051306', '-', '1', '1', 'FROZZ MINT 15GR', 'FROZZ MINT 15GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992741905206', '-', '1', '1', 'YUPI CALCI BEAN 70GR', 'YUPI CALCI BEAN 70GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696409057', '-', '1', '1', 'NESTLE MILO 3 IN 1 COKLAT 35GR', 'NESTLE MILO 3 IN 1 COKLAT 35GR', '100', '10001002', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992770094315', '-', '1', '1', 'SAORI SAUS ASAM MANIS 48GR', 'SAORI SAUS ASAM MANIS 48GR', '100', '10001001', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992770094117', '-', '1', '1', 'SAORI SAUS TIRAM 23ML', 'SAORI SAUS TIRAM 23ML', '100', '10001001', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992957352122', '-', '1', '1', 'LAGIE CHOCO SPREAD 250GR', 'LAGIE CHOCO SPREAD 250GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992957354096', '-', '1', '1', 'LAGIE CHOCO PEANUT SPREAD 250GR', 'LAGIE CHOCO PEANUT SPREAD 250GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('80051671', '-', '1', '1', 'NUTELLA KACANG COKLAT200GR', 'NUTELLA KACANG COKLAT200GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995952064229', '-', '1', '1', 'MORIN BLUEBERRY JAM 170GR', 'MORIN BLUEBERRY JAM 170GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4002309037219', '-', '1', '1', 'CERES SPREAD CHOCO 200GR', 'CERES SPREAD CHOCO 200GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866100229', '-', '1', '1', 'KODOMO LION', 'KODOMO LION', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991380700609', '-', '1', '1', 'GARNIER BRIGHTTENING SCUB 100ML', 'GARNIER BRIGHTTENING SCUB 100ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999047238', '-', '1', '1', 'RINSO MOLTO ULTRA SACHET EKS. 10 46ML', 'RINSO MOLTO ULTRA SACHET EKS. 10 46ML', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('976', '-', '1', '1', 'KAOS KAKI QUSNUL MOSLEM HITAM', 'KAOS KAKI QUSNUL MOSLEM HITAM', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011402', '-', '1', '1', 'ASTRINGENT CUCUMBER', 'ASTRINGENT CUCUMBER', '100', '10002006', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8727900953282', '-', '1', '1', 'PHILIPS SITRANG 8W', 'PHILIPS SITRANG 8W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291206453', '-', '1', '1', 'PHILIPS TORNADO 15W', 'PHILIPS TORNADO 15W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291223429', '-', '1', '1', 'PHILIPS ESSENTIAL 18W', 'PHILIPS ESSENTIAL 18W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291777236', '-', '1', '1', 'PHILIPS TORNADO 12W', 'PHILIPS TORNADO 12W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291206491', '-', '1', '1', 'PHILIPS TORNADO 20W', 'PHILIPS TORNADO 20W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291206514', '-', '1', '1', 'PHILIPS TORNADO 24W', 'PHILIPS TORNADO 24W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291770527', '-', '1', '1', 'PHILIPS HELIX 52W', 'PHILIPS HELIX 52W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8727900846492', '-', '1', '1', 'PHILIPS ESSENTIAL 35W', 'PHILIPS ESSENTIAL 35W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('965', '-', '1', '1', 'BOSSECOM EMERGENCY LIGHT 10W', 'BOSSECOM EMERGENCY LIGHT 10W', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8711500173744', '-', '1', '1', 'PHILIPS SIAWET', 'PHILIPS SIAWET', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611649', '-', '1', '1', 'QTELA SINGKONG RASA BARBEQUE 185 GR', 'QTELA SINGKONG RASA BARBEQUE 185 GR', '100', '10001001', 'BUNMGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622300335809', '-', '1', '1', 'OREO SOFT CAKE COKLAT 16GR', 'OREO SOFT CAKE COKLAT 16GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('711844162419', '-', '1', '1', 'ABC KACANG HIJAU 250ML', 'ABC KACANG HIJAU 250ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686045017', '-', '1', '1', 'INDOMIE REAL MEAT GORENG RENDANG 110G', 'INDOMIE REAL MEAT GORENG RENDANG 110G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686045031', '-', '1', '1', 'INDOMIE REAL MEAT GORENG AYAM JAMUR 110G', 'INDOMIE REAL MEAT GORENG AYAM JAMUR 110G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997878002972', '-', '1', '1', 'MILKITA PERMEN SUSU SACHET 30X2.8GR', 'MILKITA PERMEN SUSU SACHET 30X2.8GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001243126', '-', '1', '1', 'TOP CHOCOLATE 25GR', 'TOP CHOCOLATE 25GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992957221367', '-', '1', '1', 'LAGIE GOLDEN CITY MINI 75GR', 'LAGIE GOLDEN CITY MINI 75GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992957361124', '-', '1', '1', 'LAGIE GOLDEN CITY CHOCOLATE BALLS 50GR', 'LAGIE GOLDEN CITY CHOCOLATE BALLS 50GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002103832', '-', '1', '1', 'GOOD DAY CHOCOCINNO 20GR', 'GOOD DAY CHOCOCINNO 20GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002103337', '-', '1', '1', '.GOOD DAY VANILLA LATTE 20GR', '.GOOD DAY VANILLA LATTE 20GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102281416', '-', '1', '1', 'MINTZ CHEWY MINTS PEPPERMINT 115GR', 'MINTZ CHEWY MINTS PEPPERMINT 115GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102282222', '-', '1', '1', 'KURANG ASEM PERMEN 130G', 'KURANG ASEM PERMEN 130G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102213189', '-', '1', '1', 'BLASTER PERMEN CHOCO 130GR', 'BLASTER PERMEN CHOCO  130GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775315095', '-', '1', '1', 'GERY SALUT MALKIST  CHEESE 110GR', 'GERY SALUT MALKIST  CHEESE 110GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '173');
INSERT INTO mstock VALUES ('8993007000062', '-', '1', '1', 'INDOMILK KOTAK CHOCOLATE 190ML ', 'INDOMILK KOTAK CHOCOLATE 190ML ', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993007005975', '-', '1', '1', 'INDOMILK KOTAK BANANA BLASH 190ML ', 'INDOMILK KOTAK BANANA BLASH 190ML ', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992702005921', '-', '1', '1', 'INDOMILK VANILLA FLAVOUR 190ML', 'INDOMILK VANILLA FLAVOUR 190ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '191');
INSERT INTO mstock VALUES ('8997011067806', '-', '1', '1', 'MILKUAT  COOLING APPLE 130ML BTL', 'MILKUAT  COOLING APPLE 130ML BTL', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999707859', '-', '1', '1', 'CLOSE UP DEEP ACTION 160GR', 'CLOSE UP DEEP ACTION 160GR', '100', '10002002', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993093665251', '-', '1', '1', 'MINYAK GORENG TAWON 5 LITER', 'MINYAK GORENG TAWON 5 LITER', '100', '11003003', 'JERIGEN', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('969', '-', '1', '1', 'KACANG MENTE NUSA RAHAYU 50GR', 'KACANG MENTE NUSA RAHAYU UD ISIAN 50GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998989300391', '-', '1', '1', 'SURYA PRO FESSIONAL MILD PUTIH', 'SURYA PRO FESSIONAL MILD PUTIH', '100', '10001003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200045', '-', '1', '1', 'ELIPS SHINY BLACK', 'ELIPS SHINY BLACK', '100', '10002003', 'BUNGKUS', '0', '0', '0', '0.00', '0', '0', '1', '30111');
INSERT INTO mstock VALUES ('8999999001988', '-', '1', '1', 'VASELINE MEN OIL CONTROL 100GR', 'VASELINE MEN OIL CONTROL FACE WASH 100GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041663', '-', '1', '1', 'PONDS MEN POLLUTION OUT 50GR', 'PONDS MEN POLLUTION OUT ALL IN ONE 50GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999034696', '-', '1', '1', 'PONDS MEN ENERGY CHARGE 100GR', 'PONDS MEN ENERGY CHARGE FACE WASH 100GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999034719', '-', '1', '1', 'PONDS MEN ACNE CLEAR OIL CONTROL 100GR', 'PONDS MEN ACNE CLEAR OIL CONTROL FACE WASH 100GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304073441', '-', '1', '1', 'GARNIER MEN POWER WHITE 100ML', 'GARNIER MEN POWER WHITE 100ML', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304015298', '-', '1', '1', 'GARNIER MEN ACNO FIGHT 100ML', 'GARNIER MEN ACNO FIGHT 100ML', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727004237', '-', '1', '1', 'BIORE FACIAL FOAM PORE & OIL CLEAR 40GR', 'BIORE FACIAL FOAM PORE & OIL CLEAR 40GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727004190', '-', '1', '1', 'BIORE FACIAL FOAM ACNE CARE 40GR', 'BIORE FACIAL FOAM ACNE CARE 40GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727005159', '-', '1', '1', 'MENS BIORE FACIAL FOAM ACNE DEFENSE100GR', 'MENS BIORE FACIAL FOAM ACNE DEFENSE100GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727005111', '-', '1', '1', 'MENS BIORE FACIAL FOAM COOL OIL CLEAR 100GR', 'MENS BIORE FACIAL FOAM COOL OIL CLEAR 100GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727003537', '-', '1', '1', 'MENS BIORE FACIAL FOAM DEEP FRESH 100GR', 'MENS BIORE FACIAL FOAM DEEP FRESH 100GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993005116024', '-', '1', '1', 'JF SULFUR ACNE CARE 90GR', 'JF SULFUR ACNE CARE 90GR', '100', '11001006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856890442', '-', '1', '1', 'SUMBER AYU DAUN SIRIH UNGU ORCHID 200ML', 'SUMBER AYU DAUN SIRIH UNGU ORCHID 200ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856876545', '-', '1', '1', 'SUMBER AYU DAUN SIRIH HIJAU FLORAL 200ML', 'SUMBER AYU DAUN SIRIH HIJAU FLORAL 200ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856876514', '-', '1', '1', 'SUMBER AYU DAUN SIRIH MERAH ROSE 200ML', 'SUMBER AYU DAUN SIRIH MERAH ROSE 200ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856890411', '-', '1', '1', 'SUMBER AYU DAUN SIRIH ORANGE FRUITY 200ML', 'SUMBER AYU DAUN SIRIH ORANGE FRUITY 200ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856895294', '-', '1', '1', 'SUMBER AYU DAUN SIRIH BIRU CONFIDENT 200ML', 'SUMBER AYU DAUN SIRIH BIRU CONFIDENT 200ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856890435', '-', '1', '1', 'SUMBER AYU DAUN SIRIH UNGU ORCHID 90ML', 'SUMBER AYU DAUN SIRIH UNGU ORCHID 90ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856893658', '-', '1', '1', 'SUMBER AYU DAUN SIRIH HIJAU NATURAL 90ML', 'SUMBER AYU DAUN SIRIH HIJAU NATURAL 90ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856890404', '-', '1', '1', 'SUMBER AYU DAUN SIRIH ORANGE FRUITY 90ML', 'SUMBER AYU DAUN SIRIH ORANGE FRUITY 90ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856877184', '-', '1', '1', 'SUMBER AYU DAUN SIRIH HIJAU FLORAL 90ML', 'SUMBER AYU DAUN SIRIH HIJAU FLORAL 90ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856877160', '-', '1', '1', 'SUMBER AYU DAUN SIRIH BIRU MUSK 90ML', 'SUMBER AYU DAUN SIRIH BIRU MUSK 90ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137572170', '-', '1', '1', 'WARDAH DAY CREAM STEP 2 30GR', 'WARDAH LIGHTENING DAY CREAM STEP 2 30GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137572163', '-', '1', '1', 'WARDAH DAY CREAM STEP 1 30GR', 'WARDAH LIGHTENING  DAY CREAM STEP 1 30GR', '100', '10002005', 'BUAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430563871', '-', '1', '1', 'PANTENE RAMBUT RONTOK SCH 2X5ML', 'SHAMPO PANTENE', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '43');
INSERT INTO mstock VALUES ('8999999041205', '-', '1', '1', 'SHANPO DOVE DANDRUFF CARE', 'SHANPO DOVE DANDRUFF CARE', '100', '10002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '98');
INSERT INTO mstock VALUES ('8993189272455', '-', '1', '1', 'LIFREE POPOK 9PCS M 78-106CM', 'LIFREE POPOK 9PCS M 78-106CM', '100', '10002009', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189272486', '-', '1', '1', 'LIFREE POPOK 8PCS L 90-131CM', 'LIFREE POPOK 8PCS L 90-131CM', '100', '10002009', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050001', '-', '1', '1', 'QIANSOTO GOLD MODELING MASK 35ML', 'QIANSOTO GOLD MODELING MASK 35ML', '100', '10002005', 'SACHET', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023140658', '-', '1', '1', 'QIANSOTO HONEY MOISTURIZER MASK 35ML', 'QIANSOTO HONEY MOISTURIZER MASK 35ML', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023140627', '-', '1', '1', 'QIANSOTO SHARK OIL FACIAL MASK 35ML', 'QIANSOTO SHARK OIL FACIAL MASK 35ML', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023140641', '-', '1', '1', 'QIANSOTO FRUIT AND VEGETABLES MASK 35ML', 'QIANSOTO FRUIT AND VEGETABLES MASK 35ML', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023140634', '-', '1', '1', 'QIANSOTO MILK AND STRAWBERRY MASK 35ML', 'QIANSOTO MILK AND STRAWBERRY MASK 35ML', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999040000', '-', '1', '1', 'PONDS PEARL CLEANSING GEL 50GR', 'PONDS PEARL CLEANSING GEL 50GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001148', '-', '1', '1', 'LIFEBUOY NATURE PURE BODY WASH 300ML', 'LIFEBUOY NATURE PURE BODY WASH 300ML', '100', '11001006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001155', '-', '1', '1', 'LIFEBUOY TOTAL 10 BODY WASH 300ML', 'LIFEBUOY TOTAL 10 BODY WASH 300ML', '100', '11001006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001131', '-', '1', '1', 'LIFEBUOY COOL FRESH BODY WASH 300ML', 'LIFEBUOY COOL FRESH BODY WASH 300ML', '100', '11001006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430414944', '-', '1', '1', 'PENTENE CONDITIONER LONG BLACK 75ML', 'PENTENE CONDITIONER LONG BLACK 75ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400978', '-', '1', '1', 'PENTENE CONDITIONER HAIR FALL CONTROL 165ML', 'PENTENE CONDITIONER HAIR FALL CONTROL 165ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400961', '-', '1', '1', 'PENTENE CONDITIONER SILKY SMOOTH CARE 165ML', 'PENTENE CONDITIONER SILKY SMOOTH CARE 165ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400985', '-', '1', '1', 'PENTENE CONDITIONER FULLNESS & LIFE 165ML', 'PENTENE CONDITIONER FULLNESS & LIFE 165ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103204219', '-', '1', '1', 'CUSSONS BABY LOTION ALMOND & RODE OIL 200ML', 'CUSSONS BABY LOTION ALMOND & RODE OIL 200ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103000978', '-', '1', '1', 'CUSSONS BABY LOTION MILK & CHAMOMILE 200ML', 'CUSSONS BABY LOTION MILK & CHAMOMILE 200ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103014340', '-', '1', '1', 'CUSSONS BABY LOTION BLUEBERRY & YOGHURT 200ML', 'CUSSONS BABY LOTION BLUEBERRY & YOGHURT 200ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992694242502', '-', '1', '1', 'ZWITSAL BABY SOAP CONOLA OIL 80GR', 'ZWITSAL BABY SOAP CONOLA OIL 80GR', '100', '11001006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8850169515226', '-', '1', '1', 'CUSSONS BABY MIL BATH BLUEBERRY & YOUGURT 200ML', 'CUSSONS BABY MIL BATH BLUEBERRY & YOUGURT 200ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999719081', '-', '1', '1', 'VASELINE SUNBLOCK SPF30 100ML', 'VASELINE SUNBLOCK SPF30 100ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036607', '-', '1', '1', 'LUX SOFT TOUCH SOAP 85GR', 'LUX SOFT TOUCH SOAP 85GR', '100', '11001006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10030004', '-', '1', '1', 'HANDUK KLM 50X100', 'HANDUK KLM 50X100', '100', '11001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10030001', '-', '1', '1', 'KESET FUNKY 45X70', 'KESET FUNKY 45X70', '100', '11001003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994078021376', '-', '1', '1', 'HANDUK MERAH PUTIH 50X100 ALL COLOR', 'HANDUK MERAH PUTIH 50X100 ALL COLOR', '100', '11001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10030002', '-', '1', '1', 'HANDUK MELODY XL ', 'HANDUK MELODY XL ', '100', '11001003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10030003', '-', '1', '1', 'HANDUK BERRIES 50X100', 'HANDUK BERRIES 50X100', '100', '11001003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10030005', '-', '1', '1', 'HANDUK BERRIES 35X70', 'HANDUK BERRIES 35X70', '100', '11001003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10030006', '-', '1', '1', 'HANDUK DAVINCI 60X120', 'HANDUK DAVINCI 60X120', '100', '11001003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040001', '-', '1', '1', 'CD VERSINI MK 1249 L', 'CD VERSINI MK 1249 L', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040002', '-', '1', '1', 'CD TG B09 M EXXE LADIES', 'CD TG B09 M EXXE LADIES', '100', '11001004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040003', '-', '1', '1', 'CD CALVIN KLEIN TG 988 M ', 'CD CALVIN KLEIN TG 988 M ', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040004', '-', '1', '1', 'CD CALVIN KLEIN TG 988 L', 'CD CALVIN KLEIN TG 988 L', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040005', '-', '1', '1', 'CD VERSINI HJ 102 L', 'CD VERSINI HJ 102 L', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040006', '-', '1', '1', 'CD OREO FASHION TG 5004', 'CD OREO FASHION TG 5004', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040007', '-', '1', '1', 'CD VERSINI HJ 103 XL', 'CD VERSINI HJ 103 XL', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040008', '-', '1', '1', 'CD OREO FASH TG 9960', 'CD OREO FASH TG 9960', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040009', '-', '1', '1', 'CD KB 1287', 'CD KB 1287', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040010', '-', '1', '1', 'CD VERSINI MK 1249 XL', 'CD VERSINI MK 1249 XL', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6926157212872', '-', '1', '1', 'CD KB 1287 TAKE MONEY', 'CD KB 1287 TAKE MONEY', '100', '11001004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040011', '-', '1', '1', 'CD VERSINI HJ 102 M', 'CD VERSINI HJ 102 M', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040012', '-', '1', '1', 'CD VERSINI HJ 103 L ', 'CD VERSINI HJ 103 L ', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040013', '-', '1', '1', 'CD KB 9195', 'CD KB 9195', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10030007', '-', '1', '1', 'HANDUK CHALMER SPP 30X70', 'HANDUK CHALMER SPP 30X70', '100', '11001003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040014', '-', '1', '1', 'CD CALVIN KLEIN TG 988 XXL', 'CD CALVIN KLEIN TG 988 XXL', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10050001', '-', '1', '1', 'BH VAMIGOTONG KB 698 34/75', 'BH VAMIGOTONG KB 698 34/75', '100', '11001005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6940508052122', '-', '1', '1', 'BH JINGFANG TG 351 36/80', 'BH JINGFANG TG 351 36/80', '100', '11001005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6952765216861', '-', '1', '1', 'BH SANHO TG 009 38/85', 'BH SANHO TG 009 38/85', '100', '11001005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10050002', '-', '1', '1', 'BH FELA UNDERWEAR TG 19810 36/80', 'BH FELA UNDERWEAR TG 19810 36/80', '100', '11001005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10040015', '-', '1', '1', 'CD KB KA SUPERMAN MENS L', 'CD KB KA SUPERMAN MENS L', '100', '11001004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999038571', '-', '1', '1', 'PONDS FLAWLESS WHITE NIGHT CREAM 10GR', 'PONDS FLAWLESS WHITE NIGHT CREAM 10GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('689', '-', '1', '1', 'CREAM CR LING SHI NIGHT CREAM 15GR', 'CREAM CR LING SHI NIGHT CREAM 15GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091947', '-', '1', '1', 'PUCELLE WAVY OCEAN 75ML', 'PUCELLE WAVY OCEAN 75ML', '100', '11001008', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091978', '-', '1', '1', 'PUCELLE ECCENTRIC BREEZE 75ML', 'PUCELLE MIST COLOGNE ECCENTRIC BREEZE 75ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091961', '-', '1', '1', 'PUCELLE JOLLY RHYTHM 75ML', 'PUCELLE JOLLY RHYTHM 75ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189272127', '-', '1', '1', 'MAMY POKO PANTS S40PCS 4-8KG', 'MAMY POKO PANTS S40PCS 4-8KG', '100', '10002009', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189272134', '-', '1', '1', 'MAMY POKO PANTS M34PCS 7-12KG', 'MAMY POKO PANTS M34PCS 7-12KG', '100', '10002009', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189272141', '-', '1', '1', 'MAMY POKO PANTS L30PCS 9-14KG', 'MAMY POKO PANTS L30PCS 9-14KG', '100', '10002009', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189272158', '-', '1', '1', 'MAMY POKO PANTS XL26PCS 12-17KG', 'MAMY POKO PANTS XL26PCS 12-17KG', '100', '10002009', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946528521', '-', '1', '1', 'SHINZUI SKIN LIGHTENING ISEIYA 450ML', 'SHINZUI SKIN LIGHTENING ISEIYA 450ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522253', '-', '1', '1', 'SHINZUI MYORI', 'SHINZUI MYORI', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946523564', '-', '1', '1', 'SHINZUI BODY CLEANSER KENSHO 450ML', 'SHINZUI BODY CLEANSER KENSHO 450ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946518799', '-', '1', '1', 'SHINZUI MATSU', 'SHINZUI MATSU', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522260', '-', '1', '1', 'SHINZUI SAKURA', 'SHINZUI SAKURA', '100', '10002003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946523540', '-', '1', '1', 'SHINZUI BODY CLEANSER MYORI 450ML', 'SHINZUI BODY CLEANSER MYORI 450ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946523533', '-', '1', '1', 'SHINZUI BODY CLEANSER KIREI 450ML', 'SHINZUI BODY CLEANSER KIREI 450ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946519390', '-', '1', '1', 'SHINZUI KIREI', 'SHINZUI KIREI', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522277', '-', '1', '1', 'SHINZUI KENSHO', 'SHINZUI KENSHO', '100', '10002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946523526', '-', '1', '1', 'SHINZUI BODY CLEANSER HANA 450ML', 'SHINZUI BODY CLEANSER HANA 450ML', '100', '10002003', 'BUIAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999030674', '-', '1', '1', 'CITRA SPOTLESS WHITE JAPANESE RICE 40GR', 'CITRA SPOTLESS WHITE JAPANESE RICE 40GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212253', '-', '1', '1', 'ESKULIN FRIDAY FESTIVE DAY 100ML', 'ESKULIN FRIDAY FESTIVE DAY 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212246', '-', '1', '1', 'ESKULIN THURSDAY HANGAOUT DAY 100ML', 'ESKULIN THURSDAY HANGAOUT DAY 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212222', '-', '1', '1', 'ESKULIN TUESDAY PLAY DAY 100ML', 'ESKULIN TUESDAY PLAY DAY 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304054433', '-', '1', '1', 'GARNIER LIGHT COMPLETE SPF 19 18ML', 'GARNIER LIGHT COMPLETE SPF 19 18ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851932221528', '-', '1', '1', 'PONDS FLAWLESS WHITE DAY CREAM 25GR', 'PONDS FLAWLESS WHITE DAY CREAM 25GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999047108', '-', '1', '1', 'REXONA ANTIBACTERIAL DEFENSE 50ML', 'REXONA ANTIBACTERIAL DEFENSE 50ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049478', '-', '1', '1', 'REXONA NATURALS 50ML', 'REXONA NATURALS 50ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212178', '-', '1', '1', 'ESKULIN SUNDAY LOVE DAY 50ML', 'ESKULIN SUNDAY LOVE DAY 50ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212154', '-', '1', '1', 'ESKULIN FRIDAY FESTIVE DAY 50ML', 'ESKULIN FRIDAY FESTIVE DAY 50ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212123', '-', '1', '1', 'ESKULIN TUESDAY PLAY DAY 50ML', 'ESKULIN TUESDAY PLAY DAY 50ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222091510', '-', '1', '1', 'PUCELLE SPARKLING LOVE 150ML', 'PUCELLE MIST COLOGNE SPARKLING LOVE 150ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999001186', '-', '1', '1', 'LIFEBUOY BODYWASH NATUREPURE', 'LIFEBUOY BODYWASH NATUREPURE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100005', '-', '1', '1', 'MOBIL SEDAN CAR 6005', 'MOBIL SEDAN CAR 6005', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100001', '-', '1', '1', 'TRUK BESAR TDS 2015', 'TRUK BESAR TDS 2015', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100006', '-', '1', '1', 'MOBIL SEDAN MTS 322 ', 'MOBIL SEDAN MTS 322 ', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100023', '-', '1', '1', 'TRUK KECIL TTD 999', 'TRUK KECIL TTD 999', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100022', '-', '1', '1', 'MAINAN PANAH KANTONG', 'MAINAN PANAH KANTONG', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997034715449', '-', '1', '1', 'TRUCK BENSIN  OCT 5502', 'TRUCK BENSIN  OCT 5502', '100', '11003002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100012', '-', '1', '1', 'MAINAN DI PANTAI EMBER SEKOP', 'MAINAN DI PANTAI EMBER SEKOP', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100017', '-', '1', '1', 'MAINAN CATUR MAGNET KECIL', 'MAINAN CATUR MAGNET KECIL', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100016', '-', '1', '1', 'ROBOT POWER RANGERS BESAR', 'ROBOT POWER RANGERS BESAR', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100007', '-', '1', '1', 'ROBOT TOPENG WARRIORS ', 'ROBOT TOPENG WARRIORS ', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100008', '-', '1', '1', 'ROBOT TOPENG RYUKENDO KIVA', 'ROBOT TOPENG RYUKENDO KIVA', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100004', '-', '1', '1', 'MAINAN PERAHU OCT 5005', 'MAINAN PERAHU OCT 5005', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100003', '-', '1', '1', 'TRUK KECIL PERTAMINA JSP 2019', 'TRUK KECIL PERTAMINA JSP 2019', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100002', '-', '1', '1', 'TRUK KECIL MIKA MTP20 ', 'TRUK KECIL MIKA MTP20 ', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100010', '-', '1', '1', 'GASING LAMPU BLAZE LIGER', 'GASING LAMPU BLAZE LIGER', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100020', '-', '1', '1', 'MAINAN PUTRI DUYUNG B', 'MAINAN PUTRI DUYUNG B', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100024', '-', '1', '1', 'MAINAN MASAK COOKING SET WJS 009', 'MAINAN MASAK COOKING SET WJS 009', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('640509040147', '-', '1', '1', 'KARTU BOBOIBOY', 'KARTU BOBOIBOY', '100', '10002010', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('359872087267', '-', '1', '1', 'KARTU POKEMON GO MONSTER COLLETION', 'KARTU POKEMON GO MONSTER COLLETION', '100', '10002010', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100021', '-', '1', '1', 'KACA RENANG ANAK', 'KACA RENANG ANAK', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100019', '-', '1', '1', 'MAINAN PERAHU SPEED BOAT K', 'MAINAN PERAHU SPEED BOAT K', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100018', '-', '1', '1', 'TEROPONG POLICE METALIC', 'TEROPONG POLICE METALIC', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100011', '-', '1', '1', 'GAME AIR KECIL', 'GAME AIR KECIL', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100014', '-', '1', '1', 'MOBIL SEDAN KECIL 4X1 KECIL', 'MOBIL SEDAN KECIL 4X1 KECIL', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100009', '-', '1', '1', 'PISTOL LASER GUN 272', 'PISTOL LASER GUN 272', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('353800100508999', '-', '1', '1', 'MAXTRON IP67-1', 'MAXTRON IP67-1', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('358255059671147', '-', '1', '1', 'EVERCOSS FUN V1M', 'EVERCOSS FUN V1M', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('358315052505203', '-', '1', '1', 'EVERCOSS FUN V16', 'EVERCOSS FUN V16', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806088254111', '-', '1', '1', 'SAMSUNG GALAXY J1 MINI WHITE', 'SAMSUNG GALAXY J1 MINI WHITE', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158733268', '-', '1', '1', 'MICROSOFT NOKIA 105 BLACK', 'MICROSOFT NOKIA 105 BLACK', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('357039060733489', '-', '1', '1', 'MITO T81 FANTASY TABLET ', 'MITO T81 FANTASY TABLET ', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4712900471205', '-', '1', '1', 'ASUS ZENFONE GO ZC451TG', 'ASUS ZENFONE GO ZC451TG', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('355210950745097', '-', '1', '1', 'I-CHERRY C95 NEXUS', 'I-CHERRY C95 NEXUS', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4712900339079', '-', '1', '1', 'ASUS ZENFONE GO ZB452KG', 'ASUS ZENFONE GO ZB452KG', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806088068763', '-', '1', '1', 'SAMSUNG GALAXY J2 BLACK', 'SAMSUNG GALAXY J2 BLACK', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('359692067697822', '-', '1', '1', 'MITO 950 ', 'MITO 950 ', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806088062785', '-', '1', '1', 'SAMSUNG KEYSTONE 3 SM-B109EBLACK', 'SAMSUNG KEYSTONE 3 SM-B109EBLACK', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158733299', '-', '1', '1', 'MICROSOFT NOKIA 105 CYAN', 'MICROSOFT NOKIA 105 CYAN', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010008', '-', '1', '1', 'CHARGER USB ADAPTER SAMSUNG S4', 'CHARGER USB ADAPTER SAMSUNG S4', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010009', '-', '1', '1', 'ASUS TRAVEL CHARGER ADAPTER ', 'ASUS TRAVEL CHARGER ADAPTER ', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6417181632182', '-', '1', '1', 'NOKIA BATTERY BL-5C', 'NOKIA BATTERY BL-5C', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010010', '-', '1', '1', 'BYSON LCD USB CHARGER', 'BYSON LCD USB CHARGER', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100013', '-', '1', '1', 'MOBIL SEDAN SPORT OCT 6511', 'MOBIL SEDAN SPORT OCT 6511', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100015', '-', '1', '1', 'ROBOT POWER RANGERS T', 'ROBOT POWER RANGERS T', '100', '10002010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('658', '-', '1', '1', 'KARTU DOMINO  888 FLOWERS', 'KARTU DOMINO  888 FLOWERS', '100', '11003002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866501033', '-', '1', '1', 'MINYAK GORENG SEDAAP 2 LITER', 'MINYAK GORENG SEDAAP 2 LITER', '100', '11003003', 'POUCH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997035780019', '-', '1', '1', 'MINYAK GORENG CEMARA 1 LITER', 'MINYAK GORENG CEMARA 1 LITER', '100', '11003003', 'POUCH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291777199', '-', '1', '1', 'PHILIPS TORNADO 8W', 'PHILIPS TORNADO 8W', '100', '11002004', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291777151', '-', '1', '1', 'PHILIPS TORNADO 5W', 'PHILIPS TORNADO 5W', '100', '11002004', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291660835', '-', '1', '1', 'PHILIPS ESSENTIAL 5W', 'PHILIPS ESSENTIAL 5W', '100', '11002004', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291246695', '-', '1', '1', 'PHILIPS ESSENTIAL 14W', 'PHILIPS ESSENTIAL 14W', '100', '11002004', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050002', '-', '1', '1', 'ISOLASI LISTRIK 1258 JR 18MM', 'ISOLASI LISTRIK 1258 JR 18MM', '100', '11002005', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('456', '-', '1', '1', 'KOREK GAS SUPERINDO CABLE', 'KOREK GAS SUPERINDO CABLE', '100', '11003003', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050003', '-', '1', '1', 'IMUNDEX CABLE CLIP 8MM', 'IMUNDEX CABLE CLIP 8MM', '100', '11002005', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010011', '-', '1', '1', 'HENSONIK 1 SAKLAR TEMBOK', 'HENSONIK 1 SAKLAR TEMBOK', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010012', '-', '1', '1', 'HENSONIK STOP KONTAK TEMPEL', 'HENSONIK STOP KONTAK TEMPEL', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010013', '-', '1', '1', 'STOP KONTAK GEPENG 3 LOB', 'STOP KONTAK GEPENG 3 LOB', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010014', '-', '1', '1', 'BERKO 1 SAKLAR TEMPEL KECIL', 'BERKO 1 SAKLAR TEMPEL KECIL', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('355211261281038', '-', '1', '1', 'I-CHERRY C126', 'I-CHERRY C126', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('355211261037067', '-', '1', '1', 'I-CHERRY C126', 'I-CHERRY C126', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('355211261344398', '-', '1', '1', 'I-CHERRY C126', 'I-CHERRY C126', '100', '11002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010003', '-', '1', '1', 'PAPAN CLIP BOARD KEKOMI', 'PAPAN CLIP BOARD KEKOMI', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('569', '-', '1', '1', 'ISOLASI BENING KECIL', 'ISOLASI BENING KECIL', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('950', '-', '1', '1', 'KUTEK BONEKA', 'KUTEK BONEKA', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('845', '-', '1', '1', 'CUTTON BUDS ELISABETH BABY KECIL', 'CUTTON BUDS ELISABETH BABY KECIL', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '174');
INSERT INTO mstock VALUES ('089686060775', '-', '1', '1', 'POP MIE CUP GORENG PEDAS 80GR', 'POP MIE CUP GORENG PEDAS 80GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997025060060', '-', '1', '1', 'BIG ORANGE 535 ML', 'BIG ORANGE 535 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997025060091', '-', '1', '1', 'BIG LIME 535 ML', 'BIG LIME 535 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997009510017', '-', '1', '1', 'YOU C 1000 LEMON 140ML', 'YOU C 1000 LEMON 140ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('749921000408', '-', '1', '1', 'HILO ACTIVE CHOCOLATE 250GR', 'HILO ACTIVE CHOCOLATE 250GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9415007003588', '-', '1', '1', 'BONEETO SUSU COKELAT 350GR', 'BONEETO SUSU COKELAT 350GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9415007006473', '-', '1', '1', 'BONEETO SUSU VANILA 350GR', 'BONEETO SUSU VANILA 350GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992802435048', '-', '1', '1', 'ZEE PLATINUM VANILLA DELIGHT 350GR', 'ZEE PLATINUM VANILLA DELIGHT 350GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992802435086', '-', '1', '1', 'ZEE PLATINUM STRAWBERRY ICE 350GR', 'ZEE PLATINUM STRAWBERRY ICE 350GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992802120036', '-', '1', '1', 'MORINAGA CHIL KID 1-3 TAHUN VANILA 200GR', 'MORINAGA CHIL KID 1-3 TAHUN VANILA 200GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992802660020', '-', '1', '1', 'DIABETASOL VANILLA 600GR', 'DIABETASOL VANILLA 600GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992802660037', '-', '1', '1', 'DIABETASOL CAPPUCINO 600GR', 'DIABETASOL CAPPUCINO 600GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920684', '-', '1', '1', 'SGM EKSPLOR 1 PLUS MADU 400GR', 'SGM EKSPLOR 1 PLUS MADU 400GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696405448', '-', '1', '1', 'NESTLE DANCOW FORTIGO PUTIH 800GR', 'NESTLE DANCOW FORTIGO PUTIH 800GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('567', '-', '1', '1', 'SISIR COWOK TOP COKLAT', 'SISIR COWOK TOP COKLAT', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('963', '-', '1', '1', 'GUNTING KUKU EMIGO WARNA', 'GUNTING KUKU EMIGO WARNA', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('462', '-', '1', '1', 'JEPIT JEDA HK HONEY COKLAT', 'JEPIT JEDA HK HONEY COKLAT', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('768', '-', '1', '1', 'ANTING BARBEL KECIL HITAM', 'ANTING BARBEL KECIL HITAM', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('769', '-', '1', '1', 'ANTING BARBEL TANGGUNG HITAM', 'ANTING BARBEL TANGGUNG HITAM', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761139018', '-', '1', '1', 'ADES AIR MINERAL 600ML', 'ADES AIR MINERAL 600ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '154');
INSERT INTO mstock VALUES ('326', '-', '1', '1', 'ROTI NEW INTERNASIONAL BAKERY CHOCOLATE 30GR', 'ROTI NEW INTERNASIONAL BAKERY CHOCOLATE 30GR', '100', '10001005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('749921001023', '-', '1', '1', 'TROPICANA SLIM CLASSIC BOX 100X2.5G ', 'TROPICANA SLIM CLASSIC BOX 100X2.5G ', '100', '10001007', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('749921000385', '-', '1', '1', 'HILO GOLD ORIGINAL 500GR', 'HILO GOLD ORIGINAL 500GR', '100', '10001006', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775712603', '-', '1', '1', 'MYTEA SUNTORY TEH OOLONG 450ML', 'MYTEA SUNTORY TEH OOLONG 450ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997025060039', '-', '1', '1', 'BIG STRAWBERRY FLAVOUR 535ML', 'BIG STRAWBERRY FLAVOUR 535ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997025060008', '-', '1', '1', 'BIG COLA 535ML', 'BIG COLA 535ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('308', '-', '1', '1', 'PIRING KUE', 'PIRING KUE', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761111144', '-', '1', '1', 'SCHWEPPES SODA WATER 330ML', 'SCHWEPPES SODA WATER 330ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761122324', '-', '1', '1', 'FRESTEA  JASMINE 500ML', 'FRESTEA  JASMINE 500ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102228053', '-', '1', '1', 'TEH GELAS 350ML', 'TEH GELAS 350ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991234456126', '-', '1', '1', 'MONY BOTANICAL DRINK 330ML', 'MONY BOTANICAL DRINK 330ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('738989119016', '-', '1', '1', 'BINTANG RADLER LEMON 330ML', 'BINTANG RADLER LEMON 330ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009010576', '-', '1', '1', 'ULTRA MILK RASA STROBERI 200ML', 'ULTRA MILK RASA STROBERI 200ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908442000', '-', '1', '1', 'POLARIS COFFE CREAM 330ML', 'POLARIS COFFE CREAM 330ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992759214208', '-', '1', '1', 'NICE BATHROOM TISSUE 6ROLLS', 'NICE BATHROOM TISSUE 6ROLLS', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120247', '-', '1', '1', 'HIT CLASSIC NON STOP ISI ULANG 45ML', 'HIT CLASSIC NON STOP ISI ULANG 45ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745140559', '-', '1', '1', 'HIT FRESH NON STOP ISI ULANG 45ML', 'HIT FRESH NON STOP ISI ULANG 45ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745140566', '-', '1', '1', 'HIT FLORAL NON STOP ISI ULANG 45ML', 'HIT FLORAL NON STOP ISI ULANG 45ML', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745140580', '-', '1', '1', 'HIT MAT FLORAL ISI 48+6MAT', 'HIT MAT FLORAL ISI 48+6MAT', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120636', '-', '1', '1', 'HIT MAT CLASSIC ISI 18+9MAT', 'HIT MAT CLASSIC ISI 18+9MAT', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102022361', '-', '1', '1', 'FORMULA SIKAT GIGI SILVER PROTECTOR', 'FORMULA SIKAT GIGI SILVER PROTECTOR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4978562418242', '-', '1', '1', 'ISI STEPLES SAFARI NO 1O, HONAGA', 'ISI STEPLES SAFARI NO 1O, HONAGA', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291791911', '-', '1', '1', 'PHILIPS ESSENTIAL 11W', 'PHILIPS ESSENTIAL 11W', '100', '11002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291246732', '-', '1', '1', 'PHILIPS SITRANG 11W', 'PHILIPS SITRANG 11W', '100', '11002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291777342', '-', '1', '1', 'PHILIPS SITRANG 5W', 'PHILIPS SITRANG 5W', '100', '11002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291777366', '-', '1', '1', 'PHILIPS SITRANG 8W', 'PHILIPS SITRANG 8W', '100', '11002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291792031', '-', '1', '1', 'PHILIPS ESSENTIAL 23W', 'PHILIPS ESSENTIAL 23W', '100', '11002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010015', '-', '1', '1', 'NEOLUS LED SUPER BRIGHT', 'NEOLUS LED SUPER BRIGHT', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996196000356', '-', '1', '1', 'PIATTOS SAPI PANGGANG 12GR', 'PIATTOS SAPI PANGGANG 12GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996689168891', '-', '1', '1', 'TIGA RODA 0,30MC 8 JAM', 'TIGA RODA 0,30MC 8 JAM', '100', '11003003', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001520291', '-', '1', '1', 'BAKMI MEWAH RASA DAGING AYAM 110G', 'BAKMI MEWAH RASA DAGING AYAM 110G', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686606034', '-', '1', '1', 'JETZ HOLLOW FRIED CHILI 40GR', 'JETZ HOLLOW FRIED CHILI 40GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166842571', '-', '1', '1', 'MONDE GENJI LEMON PIE 85GR', 'MONDE GENJI LEMON PIE 85GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166842557', '-', '1', '1', 'MONDE GENJI ORIGINAL PIE 70GR', 'MONDE GENJI ORIGINAL PIE 70GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166842649', '-', '1', '1', 'MONDE GENJI STRAWBERRY PIE 85GR', 'MONDE GENJI STRAWBERRY PIE 85GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166842625', '-', '1', '1', 'MONDE GENJI RAISINS PIE 85GR', 'MONDE GENJI RAISINS PIE 85GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166842564', '-', '1', '1', 'MONDE GENJI VANILLA PIE SAND 110GR', 'MONDE GENJI VANILLA PIE SAND 110GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166994683', '-', '1', '1', 'MONDE GENJI CHOCOLATE PIE SAND 110GR', 'MONDE GENJI CHOCOLATE PIE SAND 110GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166989832', '-', '1', '1', 'MONDE GENJI SOFT PIE 85GR', 'MONDE GENJI SOFT PIE 85GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166607187', '-', '1', '1', 'MONDE GENJI MINI PIE ORIGINAL 50GR', 'MONDE GENJI MINI PIE ORIGINAL 50GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992736010168', '-', '1', '1', 'SASA TEPUNG PISAN GORENG VANILLA 80GR', 'SASA TEPUNG PISAN GORENG VANILLA 80GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992736980133', '-', '1', '1', 'SASA SERBAGUNA ORIGINAL 80GR', 'SASA SERBAGUNA ORIGINAL 80GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('687', '-', '1', '1', 'CEMILAN REMPEYEK BUNGKUSAN', 'CEMILAN REMPEYEK BUNGKUSAN', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622300484095', '-', '1', '1', 'OREO GOLDEN SANDWICH VANILA 29.4GR', 'OREO GOLDEN SANDWICH VANILA 29.4GR', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('432', '-', '1', '1', 'MIKA 5C 100 PCS', 'MIKA 5C 100 PCSW', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761136161', '-', '1', '1', 'COCA COLA 1 LITER', 'COCA COLA 1 LITER', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761136185', '-', '1', '1', 'FANTA STROBERI 1 LITER', 'FANTA STROBERI 1 LITER', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997206580172', '-', '1', '1', 'GREEN SANDS LIME & LYCHEE KLG 250ML ', 'GREEN SANDS LIME & LYCHEE KLG 250ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999502232', '-', '1', '1', 'PADDLE POP', 'PADDLE POP', 'ESKRIM', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999717100', '-', '1', '1', 'PONDS LIGHTENING PRO-VITAMIN B3 50GR', 'PONDS LIGHTENING PRO-VITAMIN B3 50GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999717094', '-', '1', '1', 'PONDS LIGHTENING PRO-VITAMIN B3 100GR', 'PONDS LIGHTENING PRO-VITAMIN B3 100GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832601406', '-', '1', '1', 'CASABLANCA HOMME ARGENT 65ML', 'CASABLANCA HOMME ARGENT 65ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832601437', '-', '1', '1', 'CASABLANCA HOMME CUIVRE 65ML', 'CASABLANCA HOMME CUIVRE 65ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908061102', '-', '1', '1', 'MARINA NATURAL SMOOTH & GLOW HONEY 200ML', 'MARINA NATURAL SMOOTH & GLOW HONEY 200ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832601024', '-', '1', '1', 'CASABLANCA FEMME ROMANTIC 50ML', 'CASABLANCA FEMME ROMANTIC 50ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417412134', '-', '1', '1', 'ESKULIN SPLASH COLOGNE BELLE 60ML', 'ESKULIN SPLASH COLOGNE BELLE 60ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417412110', '-', '1', '1', 'ESKULIN SPLASH COLOGNE ARIEL 60ML', 'ESKULIN SPLASH COLOGNE ARIEL 60ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222050258', '-', '1', '1', 'GATSBY NORMAL 125GR', 'GATSBY NORMAL 125GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222052979', '-', '1', '1', 'GATSBY HYPER SOLID WATER 30GR', 'GATSBY HYPER SOLID WATER 30GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222053129', '-', '1', '1', 'GATSBY MOHAWK FIRMED 75GR', 'GATSBY MOHAWK FIRMED 75GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832601390', '-', '1', '1', 'CASABLANCA FEMME VIOLET 65ML', 'CASABLANCA FEMME VIOLET 65ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090102383', '-', '1', '1', 'SARIAYU COMPACT POWDER SPF 15GR ', 'SARIAYU COMPACT POWDER SPF 15GR ', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001440520', '-', '1', '1', 'ENERGEN JAGUNG 25GR', 'ENERGEN JAGUNG 25GR', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996196000455', '-', '1', '1', 'PIATTOS SAPI PANGGANG 50GR', 'PIATTOS SAPI PANGGANG 50GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996196000103', '-', '1', '1', 'PIATTOS KEJU 50GR', 'PIATTOS KEJU 50GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996196000257', '-', '1', '1', 'PIATTOS BARBEQUE 50GR', 'PIATTOS BARBEQUE 50GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996196067052', '-', '1', '1', 'CIKEN BON AYAM ORIGINAL 70GR', 'CIKEN BON AYAM ORIGINAL 70GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622210609397', '-', '1', '1', 'BELVITA MADU COKELAT BISKUIT 80GR', 'BELVITA MADU COKELAT BISKUIT 80GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598582', '-', '1', '1', 'CHITATO SAPI BUMBU BAKAR 35GR', 'CHITATO SAPI BUMBU BAKAR 35GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686850048', '-', '1', '1', 'CAFELA EXPRESSO 200ML', 'CAFELA EXPRESSO 200ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('568', '-', '1', '1', 'MINYAK LONDRE ALL VARIANT 5 LITER', 'MINYAK LONDRE ALL VARIANT 5 LITER', '100', '11003003', 'JRG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10100004', '-', '1', '1', 'SANDAL ARDILES FLEPPEER CEWEK ALL SIZE', 'SANDAL ARDILES FLEPPEER CEWEK ALL SIZE', '100', '11001010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10100001', '-', '1', '1', 'SANDAL DAIMATU ALL SIZE', 'SANDAL DAIMATU ALL SIZE', '100', '11001010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10100002', '-', '1', '1', 'SANDAL ANDO CEWEK ALL SIZE', 'SANDAL ANDO CEWEK ALL SIZE', '100', '11001010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10100003', '-', '1', '1', 'SANDAL ANDO COWOK ALL SIZE', 'SANDAL ANDO COWOK ALL SIZE', '100', '11001010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10100005', '-', '1', '1', 'SANDAL ARDILES FLEPPEER COWOK ALL SIZE', 'SANDAL ARDILES FLEPPEER COWOK ALL SIZE', '100', '11001010', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622210609359', '-', '1', '1', 'BELVITA SUSU & SEREAL 80GR', 'BELVITA SUSU & SEREAL 80GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993053211047', '-', '1', '1', 'PASEO PREMIUM 8 ROLLS 3 PLAY', 'PASEO PREMIUM 8 ROLLS 3 PLAY', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994075240435', '-', '1', '1', 'CRISCITO RUMPUT LAUT 20GR', 'CRISCITO RUMPUT LAUT 20GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175538923', '-', '1', '1', 'RICHOCO BISVIT SELIMUT COKLAT 50GR', 'RICHOCO BISVIT SELIMUT COKLAT 50GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993007000109', '-', '1', '1', 'INDOMILK UHT STROBERI 190ML', 'INDOMILK UHT STROBERI 190ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993007000086', '-', '1', '1', 'INDOMILK CHOCOLATE UHT 1000ML', 'INDOMILK CHOCOLATE UHT 1000ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761002046', '-', '1', '1', 'FANTA JERUK BTL 390ML', 'FANTA JERUK BTL 390ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001600221', '-', '1', '1', 'KOPIKO 78 C KOPI SUSU BTL 240ML', 'KOPIKO 78 C KOPI SUSU BTL 240ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696423084', '-', '1', '1', 'MILO ACTIVE GO 115ML', 'MILO ACTIVE GO 115ML', '100', '10001002', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556001051509', '-', '1', '1', 'MILO ORIGINAL CAN 240ML', 'MILO ORIGINAL CAN 240ML', '100', '10001002', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556001054005', '-', '1', '1', 'NESCAFE MOCHA CAN 240ML', 'NESCAFE MOCHA CAN 240ML', '100', '10001002', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556001047175', '-', '1', '1', 'NESCAFE ORIGINAL CAN 240ML', 'NESCAFE ORIGINAL CAN 240ML', '100', '10001002', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556001025272', '-', '1', '1', 'NESCAFE LATTE CAN 240ML', 'NESCAFE LATTE CAN 240ML', '100', '10001002', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752121497', '-', '1', '1', 'VIT LEVITE JERUK BTL 250ML', 'VIT LEVITE JERUK BTL 250ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752121596', '-', '1', '1', 'VIT LEVITE JAMBU BTL 250ML', 'VIT LEVITE JAMBU BTL 250ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997032680701', '-', '1', '1', 'TARO ROASTED CORN 7GR ', 'TARO ROASTED CORN 7GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999000158', '-', '1', '1', 'TARO NET  ITALIAN PIZZA 9GR', 'TARO NET  ITALIAN PIZZA 9GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993118937561', '-', '1', '1', 'MIE KREMEZZ WAVE SWEET CHILL 15GR', 'MIE KREMEZZ WAVE SWEET CHILL 15GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102303309', '-', '1', '1', 'TANGO STRAWBERRY JAM 176GR', 'TANGO STRAWBERRY JAM 176GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775112120', '-', '1', '1', 'GARUDA KACANG KULIT BAWANG 220GR', 'GARUDA KACANG KULIT BAWANG 220GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001302682', '-', '1', '1', 'ROMA MALKIST ABON FUN SIZE 27GR', 'ROMA MALKIST ABON FUN SIZE 27GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001302699', '-', '1', '1', 'ROMA MALKIST SEAWEED FUN SIZE 27GR', 'ROMA MALKIST SEAWEED FUN SIZE 27GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622210476005', '-', '1', '1', 'CHIPS AHOY CHOCO DELIGHT 28GR', 'CHIPS AHOY CHOCO DELIGHT 28GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166321106', '-', '1', '1', 'KHONG GUAN SALTCHEESE KEJU 200GR  ', 'KHONG GUAN SALTCHEESE KEJU 200GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001304051', '-', '1', '1', 'SLAI OLAI TWICE STROBERI 28.5GR', 'SLAI OLAI TWICE STROBERI 28.5GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001304921', '-', '1', '1', 'SLAI OLAI NANAS 24GR', 'SLAI OLAI NANAS 24GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002103436', '-', '1', '1', 'GOOD DAY COOLIN COFFE 20GR', 'GOOD DAY COOLIN COFFE 20GR', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002103535', '-', '1', '1', 'GOOD DAY THE ORIGINAL 20GR', 'GOOD DAY THE ORIGINAL 20GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002103931', '-', '1', '1', 'GOOD DAY CARREBIAN NUT 20GR', 'GOOD DAY CARREBIAN NUT 20GR', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002104303', '-', '1', '1', 'GOOD DAY WHITE FRAPE 20GR', 'GOOD DAY WHITE FRAPE 20GR', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993118431021', '-', '1', '1', 'MIE KREMEZZ MIX & SHAKE AYAM PANGGANG15GR', 'MIE KREMEZZ MIX & SHAKE AYAM PANGGANG15GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993118622580', '-', '1', '1', 'MIE KREMEZZ MIX & SHAKE SAMBAL BALADO 15GR', 'MIE KREMEZZ MIX & SHAKE SAMBAL BALADO 15GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('38886008101047', '-', '1', '1', 'AQUA GELAS CARTON 48X240ML ', 'AQUA GELAS CARTON 48X240ML ', '100', '10001002', 'KARTON', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998989300155', '-', '1', '1', 'GUDANG GARAM SIGNATURE PREMIUM 12', 'GUDANG GARAM SIGNATURE PREMIUM 12', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999047269', '-', '1', '1', 'RINSO MOLTO 46 ML', 'RINSO MOLTO 46 ML', '100', '10002003', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908061003', '-', '1', '1', 'MARINA NOURISHED & HEALTHY 200ML', 'MARINA NOURISHED & HEALTHY 200ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908273109', '-', '1', '1', 'MARINA NOURISHED & HEALTHY 350ML', 'MARINA NOURISHED & HEALTHY 350ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222010122', '-', '1', '1', 'TANCHO NEW 8 SPECIAL 115GR', 'TANCHO NEW 8 SPECIAL 115GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222052993', '-', '1', '1', 'GATSBY WATER GLOSS HYPER SOLID 75GR', 'GATSBY WATER GLOSS HYPER SOLID 75GR', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727005135', '-', '1', '1', 'MENS BIORE WHITE ENERGY 100GR', 'MENS BIORE WHITE ENERGY 100GR', '100', '11001007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011303', '-', '1', '1', 'VIVA FACE TONIC MOISTURIZER 100ML', 'VIVA FACE TONIC MOISTURIZER 100ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430401173', '-', '1', '1', 'PANTENE SHAMPOO ANTI DANDRUFF 70ML', 'PANTENE SHAMPOO ANTI DANDRUFF 70ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430399333', '-', '1', '1', 'PANTENE SHAMPOO TOTAL DAMAGE CARE 10 70ML', 'PANTENE SHAMPOO TOTAL DAMAGE CARE 10 70ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400947', '-', '1', '1', 'PANTENE SHAMPOO ANTI DANDRUFF 170ML', 'PANTENE SHAMPOO ANTI DANDRUFF 170ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999706173', '-', '1', '1', 'PEPSODENT 120GR', 'PEPSODENT 120GR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899400334', '-', '1', '1', 'BAYGON SEMPROT NATURAL ORANGE 600ML', 'BAYGON SEMPROT NATURAL ORANGE 600ML', '100', '10002002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999720094', '-', '1', '1', 'PONDS LIGHTENING TONER 150ML', 'PONDS LIGHTENING TONER 150ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999059309', '-', '1', '1', 'LIFEBUOY TOTAL 10 85GR', 'LIFEBUOY TOTAL 10 85GR', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999059316', '-', '1', '1', 'LIFEBUOY MILD CARE 85GR', 'LIFEBUOY MILD CARE 85GR', '100', '11001006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999225783756', '-', '1', '1', 'PURBASARI LULUR MUTIARA VIT.E 235GR', 'PURBASARI LULUR MUTIARA VIT.E 235GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999225782179', '-', '1', '1', 'PURBASARI LULUR WHITENING 235GR', 'PURBASARI LULUR WHITENING 235GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999225782667', '-', '1', '1', 'PURBASARI LULUR SUSU&BENGKUANG 250GR', 'PURBASARI LULUR SUSU&BENGKUANG 250GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999225782513', '-', '1', '1', 'PURBASARI LULUR EKSTRA SQUALANE 135GR', 'PURBASARI LULUR EKSTRA SQUALANE 135GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999225783770', '-', '1', '1', 'PURBASARI LULUR MUTIARA VIT.E 120GR', 'PURBASARI LULUR MUTIARA VIT.E 120GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946529139', '-', '1', '1', 'SHINZUI BODY HATSUNE 250GR', 'SHINZUI BODY HATSUNE 250GR', '100', '11001011', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946529115', '-', '1', '1', 'SHINZUI BODY AYUMI 250GR', 'SHINZUI BODY AYUMI 250GR', '100', '11001011', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946529122', '-', '1', '1', 'SHINZUI BODY KEIKO 250GR', 'SHINZUI BODY KEIKO 250GR', '100', '11001011', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522185', '-', '1', '1', 'SHINZUI BODY KIREI 120GR', 'SHINZUI BODY KIREI 120GR', '100', '11001011', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522192', '-', '1', '1', 'SHINZUI BODY MYORI 120GR', 'SHINZUI BODY MYORI 120GR', '100', '11001011', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522208', '-', '1', '1', 'SHINZUI BODY SAKURA 120GR', 'SHINZUI BODY KIREI 120GR', '100', '11001011', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522161', '-', '1', '1', 'SHINZUI BODY MATSU 120GR', 'SHINZUI BODY MATSU 120GR', '100', '11001011', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003067', '-', '1', '1', 'VASELINE HEALTHY SPF 24 100ML', 'VASELINE HEALTHY SPF 24 100ML', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('88820286', '-', '1', '1', 'CUSSONS BABY OIL MILD & GENTLE 200ML', 'CUSSONS BABY OIL MILD & GENTLE 200ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103000602', '-', '1', '1', 'CUSSONS BABY POWDER MILK & ROSE OIL 350ML', 'CUSSONS BABY POWDER MILK & ROSE OIL 350ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103012247', '-', '1', '1', 'CUSSONS BABY POWDER BLUEBERRY & YOGHURT 350ML', 'CUSSONS BABY POWDER BLUEBERRY & YOGHURT 350ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103011813', '-', '1', '1', 'CUSSONS BABY POWDER BLUEBERRY & YOGHURT 175ML', 'CUSSONS BABY POWDER BLUEBERRY & YOGHURT 175ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103004352', '-', '1', '1', 'CUSSONS BABY SHAMPOO ALMOND OIL & HONEY 100ML', 'CUSSONS BABY SHAMPOO ALMOND OIL & HONEY 100ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103004488', '-', '1', '1', 'CUSSONS BABY OIL SOFT & SMOOTH 100ML', 'CUSSONS BABY OIL SOFT & SMOOTH 100ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103205018', '-', '1', '1', 'CUSSONS BABY OIL MILD & GENTLE 100ML', 'CUSSONS BABY OIL MILD & GENTLE 100ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992694233500', '-', '1', '1', 'ZWITSAL KIDS SHAMPOO STRAWBERRY 180ML', 'ZWITSAL KIDS SHAMPOO STRAWBERRY 180ML', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992694242717', '-', '1', '1', 'ZWITSAL BABY POWDER EXTRA CARE 100GR', 'ZWITSAL BABY POWDER EXTRA CARE 100GR', '100', '10002009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899013077', '-', '1', '1', 'BAYCLIN PEMUTIH 500ML', 'BAYCLIN PEMUTIH 500ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325437', '-', '1', '1', 'STELLA REFILL MATIC ORANGE 225ML', 'STELLA REFILL MATIC ORANGE 225ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745326229', '-', '1', '1', 'STELLA REFILL MATIC GREEN FANTASY 225ML', 'STELLA REFILL MATIC GREEN FANTASY 225ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772195010', '-', '1', '1', 'KISPRAY SIGERIS BOTOL 318ML', 'KISPRAY SIGERIS BOTOL 318ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772195058', '-', '1', '1', 'KISPRAY BLUIS BOTOL 318ML', 'KISPRAY BLUIS BOTOL 318ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772195089', '-', '1', '1', 'KISPRAY VIOLET BOTOL 318ML', 'KISPRAY VIOLET BOTOL 318ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772195027', '-', '1', '1', 'KISPRAY AMORIS BOTOL 318ML', 'KISPRAY AMORIS BOTOL 318ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992742370683', '-', '1', '1', 'POLYTEX SPON CUCI PIRING', 'POLYTEX SPON CUCI PIRING', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999034153', '-', '1', '1', 'BLUE BAND SERBAGUNA 200KG', 'BLUE BAND SERBAGUNA 200KG', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997014450025', '-', '1', '1', 'PROCHIZ KEJU OLAHAN 180GR', 'PROCHIZ KEJU OLAHAN 180GR', '100', '10001001', 'KTK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902264024346', '-', '1', '1', 'LIFE LOTUS PINK DUPA', 'LIFE LOTUS PINK DUPA', '100', '11001002', 'KTK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902264020546', '-', '1', '1', 'LIFE CHANDAN GANESHA DUPA', 'LIFE CHANDAN GANESHA DUPA', '100', '11001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556156049215', '-', '1', '1', 'YEOS SOY RICH SARI KEDELAI SUSU 350ML', 'YEOS SOY RICH SARI KEDELAI SUSU 350ML', '100', '10001002', 'BTL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009050053', '-', '1', '1', 'ULTRA SARI KACANG IJO 250ML', 'ULTRA SARI KACANG IJO 250ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999039110', '-', '1', '1', 'DOVE SHAMPOO TOTAL HAIR FALL TREATMENT 160ML', 'DOVE SHAMPOO TOTAL HAIR FALL TREATMENT 160ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029685', '-', '1', '1', 'CLEAR COMPLETE SOFT CARE 170ML', 'CLEAR COMPLETE SOFT CARE 170ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400602', '-', '1', '1', 'PANTENE TOTAL DAMAGE CARE 170ML', 'PANTENE TOTAL DAMAGE CARE 170ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043780', '-', '1', '1', 'CLEAR COMPLETE SOFT CARE 70ML', 'CLEAR COMPLETE SOFT CARE 70ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041281', '-', '1', '1', 'DOVE SHAMPOO NOURISHING OIL CARE 320ML', 'DOVE SHAMPOO NOURISHING OIL CARE 320ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999039172', '-', '1', '1', 'DOVE SHAMPOO TOTAL DAMAGE TREATMENT 320ML', 'DOVE SHAMPOO TOTAL DAMAGE TREATMENT 320ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556111609010', '-', '1', '1', 'DETTOL COOL BODYWASH BTL 625ML', 'DETTOL COOL BODYWASH BTL 625ML', '100', '11001006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556111621029', '-', '1', '1', 'DETTOL FRESH BODYWASH BTL 625ML', 'DETTOL FRESH BODYWASH BTL 625ML', '100', '11001006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175536844', '-', '1', '1', 'RICHOCO NABATI CHOCOLATE 19GR', 'RICHOCO NABATI CHOCOLATE 19GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175532457', '-', '1', '1', 'RICHEESE NABATI CHEESE WAFER 19GR', 'RICHEESE NABATI CHEESE WAFER 19GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920714', '-', '1', '1', 'SGM EKSPLOR 1 PLUS 1-3 THN VANILLA 900GR', 'SGM EKSPLOR 1 PLUS 1-3 THN VANILLA 900GR', '100', '10001002', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099920776', '-', '1', '1', 'SGM EKSPLOR 3 PLUS COKLAT 900GR', 'SGM EKSPLOR 3 PLUS COKLAT 900GR', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686834055', '-', '1', '1', 'INDOFOOD FREISS JERUK 520ML BTL', 'INDOFOOD FREISS JERUK 520ML BTL', '100', '10001002', 'BTL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993083932141', '-', '1', '1', 'BISKITOP VEGETABLE CHEESE STICK 60GR', 'BISKITOP VEGETABLE CHEESE STICK 60GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994075250342', '-', '1', '1', 'MOMOGI STAR CHOCOLATE 30GR', 'MOMOGI STAR CHOCOLATE 30GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994834002663', '-', '1', '1', 'MISTER K-POP RUMPUT LAUT 10GR', 'MISTER K-POP RUMPUT LAUT 10GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994834003363', '-', '1', '1', 'MISTER BEBETO KENTANG 12GR', 'MISTER BEBETO KENTANG 12GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993175536912', '-', '1', '1', 'RICHEESE SIIP KEJU 35GR', 'RICHEESE SIIP KEJU 35GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '187');
INSERT INTO mstock VALUES ('8886052808281', '-', '1', '1', 'INTERBIS WAFER PISANG VANILA 210GR', 'INTERBIS WAFER PISANG VANILA 210GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993172960482', '-', '1', '1', 'CHOCO CHIPS ZORS COKLAT 5GR', 'CHOCO CHIPS ZORS COKLAT 5GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('465', '-', '1', '1', 'DINOSAURUS EGG SUSU', 'DINOSAURUS EGG SUSU', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775311479', '-', '1', '1', 'CHOCOLATOS DARK WAFER 16GR', 'CHOCOLATOS DARK WAFER 16GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '14');
INSERT INTO mstock VALUES ('6495741519722', '-', '1', '1', 'MEIWA MA-617 LAMPU MULTI FUNGSI', 'MEIWA MA-617 LAMPU MULTI FUNGSI', '100', '11002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6930191820009', '-', '1', '1', 'M2000 LED FLASH MR-191-HT', 'M2000 LED FLASH MR-191-HT', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050004', '-', '1', '1', 'VITING TEMPEL KAWACHI KA-128 LAMP HOLDER', 'VITING TEMPEL KAWACHI KA-128 LAMP HOLDER', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050005', '-', '1', '1', 'COLOKAN CUK LISTRIK 2000', 'COLOKAN CUK LISTRIK 2000', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050006', '-', '1', '1', 'SAKLAR TEMPEL DOUBLE BROCO ', 'SAKLAR TEMPEL DOUBLE BROCO ', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8887549472350', '-', '1', '1', 'PANASONIC PRIMA AAA BLUE', 'PANASONIC PRIMA AAA BLUE', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050007', '-', '1', '1', 'VITING STROM FP-A01 LAMPHOLDER', 'VITING STROM FP-A01 LAMPHOLDER', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050009', '-', '1', '1', 'SAKLAR GANTUNG KECIL', 'SAKLAR GANTUNG KECIL', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050008', '-', '1', '1', 'SAKLAR STOP KONTAK TEMPEL BROCO', 'SAKLAR STOP KONTAK TEMPEL BROCO', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050010', '-', '1', '1', 'SAKLAR GANTUNG KYOWA KW-105', 'SAKLAR GANTUNG KYOWA KW-105', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050011', '-', '1', '1', 'MATSUI MT-202 STEKER', 'MATSUI MT-202 STEKER', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050012', '-', '1', '1', 'CUK T KECIL', 'CUK T KECIL', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050013', '-', '1', '1', 'LOYAL STOP KONTAK LY-902 2 LOB', 'LOYAL STOP KONTAK LY-902 2 LOB', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050014', '-', '1', '1', 'TEST PEN TYPE 17150A KOSS', 'TEST PEN TYPE 17150A KOSS', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8811325660051', '-', '1', '1', 'VISALUX LAMPHOLDER TEMPEL V2601BD', 'VISALUX LAMPHOLDER TEMPEL V2601BD', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994852526028', '-', '1', '1', 'VISALUX LAMPHOLDER TEMPEL V2603K ', 'VISALUX LAMPHOLDER TEMPEL V2603K', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050015', '-', '1', '1', 'ITAMI LAMP HOLDER VITING JY-021', 'ITAMI LAMP HOLDER VITING JY-021', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050016', '-', '1', '1', 'JIAMEI LAMPHOLDER TEMPEL VITING', 'JIAMEI LAMPHOLDER TEMPEL VITING', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050017', '-', '1', '1', 'CUK ROL DEXTA 3 M 3 LUBANG', 'CUK ROL DEXTA 3 M 3 LUBANG', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050018', '-', '1', '1', 'BROCO SOCKET OUTLET STOP KONTAK TUNGGAL', 'BROCO SOCKET OUTLET STOP KONTAK TUNGGAL', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050019', '-', '1', '1', 'CUK LISTRIK 4000 STEKER', 'CUK LISTRIK 4000 STEKER', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('40010001', '-', '1', '1', 'GMV 1/2 KERAN PLASTIK', 'GMV 1/2 KERAN PLASTIK', '100', '11004001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050027', '-', '1', '1', 'IMUNDEX CABLE CLIP 100X14MM', 'IMUNDEX CABLE CLIP 100X14MM', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050020', '-', '1', '1', 'ISOLASI UNIBELL ELECTRIC 0.18MM KECIL', 'ISOLASI UNIBELL ELECTRIC 0.18MM KECIL', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050021', '-', '1', '1', 'VITING GANTUNG BROCO LAMPHOLDER 216L', 'VITING GANTUNG BROCO LAMPHOLDER 216L', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050022', '-', '1', '1', 'IMUNDEX CABLE CLIP 100X10MM', 'IMUNDEX CABLE CLIP 100X10MM', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050023', '-', '1', '1', 'CLINUX LX-821 SAKLAR GANTUNG', 'CLINUX LX-821 SAKLAR GANTUNG', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050024', '-', '1', '1', 'IMUNDEX CABLE CLIP 100X12MM', 'IMUNDEX CABLE CLIP 100X12MM', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050025', '-', '1', '1', 'IMUNDEX CABLE CLIP 100X17MM', 'IMUNDEX CABLE CLIP 100X17MM', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050026', '-', '1', '1', 'FITTING GANTUNG HSC HENSONIC ', 'FITTING GANTUNG HSC HENSONIC ', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('055500130238', '-', '1', '1', 'SOS PEMBERSIH LANTAI FLORAL BREEZE 800ML', 'SOS PEMBERSIH LANTAI FLORAL BREEZE 800ML', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30020001', '-', '1', '1', 'RAKET BULU TANGKIS KING 79', 'RAKET BULU TANGKIS KING 79', '100', '11003002', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050028', '-', '1', '1', 'FITTING TEMPEL LAMPHOLDER BROCO', 'FITTING TEMPEL LAMPHOLDER BROCO', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050029', '-', '1', '1', 'STOP KONTAK LUBANG TUNGGAL OKACHI', 'STOP KONTAK LUBANG TUNGGAL OKACHI', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050030', '-', '1', '1', 'SAKLAR TEMBOK TUNGGAL BERKO', 'SAKLAR TEMBOK TUNGGAL BERKO', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8711500011213', '-', '1', '1', 'PHILIPS CLEAR COMPACT 100W', 'PHILIPS CLEAR COMPACT 100W', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8711500147066', '-', '1', '1', 'PHILIPS CLASSICTONE CLEAR COMPACT 100W', 'PHILIPS CLASSICTONE CLEAR COMPACT 100W', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997777080125', '-', '1', '1', 'ISOLASI NATIONAL TAPE ELECTRIC 15MM', 'ISOLASI NATIONAL TAPE ELECTRIC 15MM', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10100006', '-', '1', '1', 'SANDAL WANITA OBRAL 15.000', 'SANDAL WANITA OBRAL 15.000', '100', '11001010', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102386623', '-', '1', '1', 'FULLO WAFER VANILLA MILK 42GR', 'FULLO WAFER VANILLA MILK 42GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030015', '-', '1', '1', 'TUTUP GELAS PLASTIK BULAT', 'TUTUP GELAS PLASTIK BULAT', '100', '11003003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030014', '-', '1', '1', 'INDO KURNIA JEPITAN JEMURAN 20PCS', 'INDO KURNIA JEPITAN JEMURAN 20PCS', '100', '11003003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030013', '-', '1', '1', 'SPON GREESS CUCI PIRING', 'SPON GREESS CUCI PIRING', '100', '11003003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('300', '-', '1', '1', 'KERTAS  KADO S', 'KERTAS KADO S', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001920', '-', '1', '1', 'BAYGON JUMBO 10 JAM', 'BAYGON JUMBO 10 JAM', '100', '11003003', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '131');
INSERT INTO mstock VALUES ('8991001242563', '-', '1', '1', 'TOP DELFI STRAWBERRY 9GR', 'TOP DELFI STRAWBERRY 9GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001502230', '-', '1', '1', 'CHACHA DELFI MILK CHOCOLATE 7GR', 'CHACHA DELFI MILK CHOCOLATE 7GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '19');
INSERT INTO mstock VALUES ('598', '-', '1', '1', 'DODOL BALI MENARA KUDUS 12 BIJI', 'DODOL BALI MENARA KUDUS 12 BIJI', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992952132507', '-', '1', '1', 'CHO CHO CHOCOLATE BAR 20GR', 'CHO CHO CHOCOLATE BAR 20GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995899110317', '-', '1', '1', 'KOBE PISANG GORENG 75GR', 'KOBE PISANG GORENG 75GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775311547', '-', '1', '1', 'CHOCOLATOS WAFER ROLL 33GR', 'CHOCOLATOS WAFER ROLL 33GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745540830', '-', '1', '1', 'MITU BABY TISSUE CHAMOMILE & VIT E PINK BESAR', 'MITU BABY TISSUE CHAMOMILE & VIT E PINK BESAR', '100', '11001012', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745540823', '-', '1', '1', 'MITU BABY TISSUE CHRYSANTHEMUM & VIT.E BLUE BESAR', 'MITU BABY TISSUE CHRYSANTHEMUM & VIT.E BLUE BESAR', '100', '11001012', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745550396', '-', '1', '1', 'MITU BABY TISSUE CALENDULA & CHAMOMILE WHITE BESAR', 'MITU BABY TISSUE CALENDULA & CHAMOMILE WHITE BESAR', '100', '11001012', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270284', '-', '1', '1', 'CHARM BODY FIT 8 PADS 23 CM', 'CHARM BODY FIT 8 PADS 23 CM', '100', '10002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992839550042', '-', '1', '1', 'TRI GAJAH MALKIST BISKUIT 300GR', 'TRI GAJAH MALKIST BISKUIT 300GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745545088', '-', '1', '1', 'MITU BABY TISSUE W. HAZEL & CHRYSANTHEMUM PURPLE BESAR', 'MITU BABY TISSUE W. HAZEL & CHRYSANTHEMUM PURPLE BESAR', '100', '11001012', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8850389112588', '-', '1', '1', 'MOGU MOGU YOGURT FLAVOR 320ML', 'MOGU MOGU YOGURT FLAVOR 320ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8850389108048', '-', '1', '1', 'MOGU MOGU MANGGA 320ML', 'MOGU MOGU MANGGA 320ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994834001888', '-', '1', '1', 'OPOTATO 2000 ORIGINAL SAMBAL 50GR', 'OPOTATO 2000 ORIGINAL SAMBAL 50GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886013281481', '-', '1', '1', 'KENTANG FRENCH FRIES 2000 28GR', 'KENTANG FRENCH FRIES 2000 28GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886013236207', '-', '1', '1', 'KENTANG FRENCH FRIES 2000 150GR', 'KENTANG FRENCH FRIES 2000 150GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992843992012', '-', '1', '1', 'BETADINE 5ML BTL', 'BETADINE 5ML BTL', '100', '10002002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998898101409', '-', '1', '1', 'TOLAK ANGIN 15ML SCH', 'TOLAK ANGIN 15ML SCH', '100', '10002002', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '81');
INSERT INTO mstock VALUES ('8993176110104', '-', '1', '1', 'GPU OIL 60ML', 'GPU OIL 60ML', '100', '10002002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176110074', '-', '1', '1', 'MINYAK KAYU PUTIH CAP LANG 60ML ', 'MINYAK KAYU PUTIH CAP LANG 60ML', '100', '10002002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176110081', '-', '1', '1', 'MINYAK KAYU PUTIH CAP LANG 30ML', 'MINYAK KAYU PUTIH CAP LANG 30ML', '100', '10002002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4984824089198', '-', '1', '1', 'PANASONIC ALKALINME AA2', 'PANASONIC ALKALINME AA2', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010016', '-', '1', '1', 'FITING COMBINASI BROCO', 'FITING COMBINASI BROCO', '100', '11002001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050032', '-', '1', '1', 'KABEL LISTRIK ISACOM 2X80 25 M FULL', 'KABEL LISTRIK ISACOM 2X80 25 M FULL', '100', '11002005', 'GULUNG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050034', '-', '1', '1', 'KABEL LISTRIK ISICOM 2X50 25M FULL ', 'KABEL LISTRIK ISICOM 2X50 25M FULL ', '100', '11002005', 'GULUNG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050033', '-', '1', '1', 'KABEL LISTRIK NEOLUS 2X30 25 Y', 'KABEL LISTRIK NEOLUS 2X30 25 Y', '100', '11002005', 'GULUNG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050035', '-', '1', '1', 'KABEL LISTRIK SHINKO 2X1.5 10M', 'KABEL LISTRIK SHINKO 2X1.5 10M', '100', '11002005', 'GULUNG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050036', '-', '1', '1', 'KABEL LISTRIK MC-COM 2X80 100Y', 'KABEL LISTRIK MC-COM 2X80 100Y', '100', '11002005', 'GULUNG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050037', '-', '1', '1', 'KABEL LISTRIK A&J 2X80 100M', 'KABEL LISTRIK A&J 2X80 100M', '100', '11002005', 'GULUNG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050038', '-', '1', '1', 'KABEL LISTRIK A&Y AUDIO POWER 2X1.5 50Y', 'KABEL LISTRIK A&Y AUDIO POWER 2X1.5 50Y', '100', '11002005', 'GULUNG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050039', '-', '1', '1', 'KABEL ANTENA TV CITILUX 20M', 'KABEL ANTENA TV CITILUX 20M', '100', '11002005', 'GULUNG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997011060906', '-', '1', '1', 'MILKUAT FREEZY CHOCOLICIOUS 60ML', 'MILKUAT FREEZY CHOCOLICIOUS 60ML', '100', '10001002', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761136178', '-', '1', '1', 'SPRITE 1 LTR BTL', 'SPRITE 1 LTR BTL', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30020002', '-', '1', '1', 'TOPI ULANG TAHUN + AKSESORIS ULTAH QUEEN', 'TOPI ULANG TAHUN + AKSESORIS ULTAH QUEEN', '100', '11003002', 'SET', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997015381076', '-', '1', '1', 'ISOLASI BERRY LISTRIK KECIL', 'ISOLASI BERRY LISTRIK KECIL', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30020003', '-', '1', '1', 'GARPU ULANG TAHUN KECIL', 'GARPU ULANG TAHUN KECIL', '100', '11003002', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30020004', '-', '1', '1', 'KARTU UNDANGAN ULANG TAHUN', 'KARTU UNDANGAN ULANG TAHUN', '100', '11003002', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30020005', '-', '1', '1', 'TEMPAT MAKANAN ANAK HOKIE STAR', 'TEMPAT MAKANAN ANAK HOKIE STAR', '100', '11003002', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030019', '-', '1', '1', 'WINN GAS REGULATOR W 182 M', 'WINN GAS REGULATOR W 182 M', '100', '11003003', 'KOTAK', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030020', '-', '1', '1', 'SIKAT KAYU KECIL', 'SIKAT KAYU KECIL', '100', '11003003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30010001', '-', '1', '1', 'KACAMATA 60.000', 'KACAMATA 60.000', '100', '11003001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30020006', '-', '1', '1', 'GARPU ULANG TAHUN BESAR', 'GARPU ULANG TAHUN BESAR', '100', '11003002', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30020007', '-', '1', '1', 'TAS KERTAS ULANG TAHUN BESAR', 'TAS KERTAS ULANG TAHUN BESAR', '100', '11003002', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050046', '-', '1', '1', 'FITING HENSONIC PLAFON HSC-145', 'FITING HENSONIC PLAFON HSC-145', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050047', '-', '1', '1', 'TEMPAT COLOKAN TUNGGAL', 'TEMPAT COLOKAN TUNGGAL', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010019', '-', '1', '1', 'SAKLAR DOUBLE KECIL', 'SAKLAR DOUBLE KECIL', '100', '11002001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6942138930153', '-', '1', '1', 'SPLASH AND PLAY PELAMPUNG 20X20 CM', 'SPLASH AND PLAY PELAMPUNG 20X20 CM', '100', '11003002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176150018', '-', '1', '1', 'INHALER LANG PELEGA HIDUNG', 'INHALER LANG PELEGA HIDUNG', '100', '10002002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103101224', '-', '1', '1', 'CUSSONS BABY MILK BOTTLE 125ML', 'CUSSONS BABY MILK BOTTLE 125ML ', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('899701256034', '-', '1', '1', 'HEVINY VANISH REMOVE CAT KUKU 33ML', 'HEVINY VANISH REMOVE CAT KUKU 33ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30010002', '-', '1', '1', 'GANTUNGAN HANDPHONE', 'GANTUNGAN HANDPHONE', '100', '11003001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('40010002', '-', '1', '1', 'GMP KERAN PVC 1/2', 'GMP KERAN PVC 1/2', '100', '11004001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('40010003', '-', '1', '1', 'STOP KRAN PVC BALL VALVE 1/2 HSS', 'STOP KRAN PVC BALL VALVE 1/2 HSS', '100', '11004001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050048', '-', '1', '1', 'STOP KONTAK MATSUI 5 LOB', 'STOP KONTAK MATSUI 5 LOB', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30010004', '-', '1', '1', 'DOMPET CEWEK UKURAN BESAR', 'DOMPET CEWEK UKURAN BESAR', '100', '11003001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30010003', '-', '1', '1', 'DOMPET ANAK-ANAK', 'DOMPET ANAK-ANAK', '100', '11003001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('28012607', '-', '1', '1', 'KAOS KAKI MUSLIM SOCK PUTIH', 'KAOS KAKI MUSLIM SOCK PUTIH', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999040451', '-', '1', '1', 'PONDS CLEANSING GEL 100GR', 'PONDS CLEANSING GEL 100GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030016', '-', '1', '1', 'YARIS LAP SERAT 48X32', 'YARIS LAP SERAT 48X32', '100', '11003003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8887549053771', '-', '1', '1', 'PANASONIC NEO 9V1 BATTERY', 'PANASONIC NEO 9V1 BATTERY', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8887549350429', '-', '1', '1', 'PANASONIC ALKALINE SPECIAL AAA2', 'PANASONIC ALKALINE SPECIAL AAA2', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('053665781688', '-', '1', '1', 'COMBINATION SHARPENING STONE', 'COMBINATION SHARPENING STONE', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997012665032', '-', '1', '1', 'MIYAKO REGULATOR + SELANG RMS-106 M ', 'MIYAKO REGULATOR + SELANG RMS-106 M ', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050040', '-', '1', '1', 'ISOLASI UNIBEL KOTAK 0.13X16X20 BESAR', 'ISOLASI UNIBEL KOTAK 0.13X16X20 BESAR', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050041', '-', '1', '1', 'FITING COMBINASI NEOULUS', 'FITING COMBINASI NEOULUS', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050042', '-', '1', '1', 'SAKLAR PIANO NEOLUS ', 'SAKLAR PIANO NEOLUS ', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050043', '-', '1', '1', 'SAKLAR PIANO DOUBLE HW', 'SAKLAR PIANO DOUBLE HW', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050044', '-', '1', '1', 'FITING GANTUNG NEOLUS ', 'FITING GANTUNG NEOLUS ', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('054007150251', '-', '1', '1', 'ISOLASI 3M SCOTCH RUBBER 13X9.1X0.761', 'ISOLASI 3M SCOTCH RUBBER 13X9.1X0.761', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050045', '-', '1', '1', 'STOP KONTAK BROCO TUNGGAL', 'STOP KONTAK BROCO TUNGGAL', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8887549019661', '-', '1', '1', 'PANASONIC PRIMA UM-2U/2S', 'PANASONIC PRIMA UM-2U/2S', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('890', '-', '1', '1', 'SISIR GOLOK KECIL WARNA', 'SISIR GOLOK KECIL WARNA', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('846', '-', '1', '1', 'SISIR SASAK HITAM', 'SISIR SASAK HITAM', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6948832900041', '-', '1', '1', 'SISIR GOLOK SZYUAN BESAR', 'SISIR GOLOK SZYUAN BESAR', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129702016', '-', '1', '1', 'SNOWMAN BALLPOINT PEN V-2 HI-GRIP MEDIUM 1.0MM', 'SNOWMAN BALLPOINT PEN V-2 HI-GRIP MEDIUM 1.0MM', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6924565913060', '-', '1', '1', 'XANDER BLUE II BATIK EDITION', 'XANDER BLUE II BATIK EDITION', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011624', '-', '1', '1', 'VIVA FACE MASK BENGKUAN 30GR', 'VIVA FACE MASK BENGKUAN 30GR', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796034494', '-', '1', '1', 'VIVA COMPACT POWDER LILAC 19GR', 'VIVA COMPACT POWDER LILAC 19GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222071871', '-', '1', '1', 'PIXY TWO WAY CAKE PERFECT FIT SPF15 NATURAL WHITE', 'PIXY TWO WAY CAKE PERFECT FIT SPF15 NATURAL WHITE', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796045063', '-', '1', '1', 'VIVA LIQUID FOUNDATION MANGIR 30ML', 'VIVA LIQUID FOUNDATION MANGIR 30ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993005112019', '-', '1', '1', 'JF SULFUR FAMILY SKIN SOAP 90GR', 'JF SULFUR FAMILY SKIN SOAP 90GR', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30020008', '-', '1', '1', 'TOPI KERTAS ULANG TAHUN ', 'TOPI KERTAS ULANG TAHUN ', '100', '11003002', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993285130017', '-', '1', '1', 'VIENTO SOAP RACK SINGLE 600G', 'VIENTO SOAP RACK SINGLE 600G', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030021', '-', '1', '1', 'KOTAK TEMPAT SABUN MANDI SEGI', 'KOTAK TEMPAT SABUN MANDI SEGI', '100', '11003003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('5189912866', '-', '1', '1', 'TEMPAT SABUN ALAMOS ENGSE SOAP', 'TEMPAT SABUN ALAMOS ENGSE SOAP', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('5099921289', '-', '1', '1', 'TEMPAT SABUN ALAMOS SEGI SOAP', 'TEMPAT SABUN ALAMOS SEGI SOAP', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796068017', '-', '1', '1', 'VIVA SKIN FOOD CREAM 22GR', 'VIVA SKIN FOOD CREAM 22GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994065000094', '-', '1', '1', 'PEACH EYE SHADOW 1008 7.2GR', 'PEACH EYE SHADOW 1008 7.2GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994065000063', '-', '1', '1', 'PEACH MAKE UP KIT 1006 7GR', 'PEACH MAKE UP KIT 1006 7GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994065000124', '-', '1', '1', 'PEACH MAKE UP KIT 407 17.6GR', 'PEACH MAKE UP KIT 407 17.6GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('984', '-', '1', '1', 'KABEL BOX PHOSSCO 15M 4 LUBANG', 'KABEL BOX PHOSSCO 15M 4 LUBANG', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993229118002', '-', '1', '1', 'KABEL BOX YUNIOR 20M 4 LUBANG', 'KABEL BOX YUNIOR 20M 4 LUBANG', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998989300070', '-', '1', '1', 'GUDANG GARAM SURYA 16 EXCLUSIVE', 'GUDANG GARAM SURYA 16 EXCLUSIVE', '100', '10001003', 'bungkus', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997204440065', '-', '1', '1', 'CRAM MESSES ARNON', 'CRAM MESSES ARNON', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '200');
INSERT INTO mstock VALUES ('8999999049393', '-', '1', '1', 'REXONA MEN ADVENTURE 48H 50ML', 'REXONA MEN ADVENTURE 48H 50ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041274', '-', '1', '1', 'DOVE SHAMPOO NOURISHING OIL CARE 160ML', 'DOVE SHAMPOO NOURISHING OIL CARE 160ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400879', '-', '1', '1', 'PANTENE SILKY SMOOTH CARE 170ML', 'PANTENE SILKY SMOOTH CARE 170ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999039103', '-', '1', '1', 'DOVE SHAMPOO TOTAL HAIR FALL TREATMENT 70ML', 'DOVE SHAMPOO TOTAL HAIR FALL TREATMENT 70ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001354756', '-', '1', '1', 'KARACHI FEMME PARFUM GREEN 100ML', 'KARACHI FEMME PARFUM GREEN 100ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001354763', '-', '1', '1', 'KARACHI FEMME PARFUM BLUE 100ML', 'KARACHI FEMME PARFUM BLUE 100ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099922985', '-', '1', '1', 'SGM ANANDA 0-6 BULAN 600GR', 'SGM ANANDA 0-6 BULAN 600GR', '100', '10001002', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999008062', '-', '1', '1', 'PEPSODENT DOUBLE CARE SENSITIVE SOFT 0.01MM', 'PEPSODENT DOUBLE CARE SENSITIVE SOFT 0.01MM', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866610292', '-', '1', '1', 'SYSTEMA SOFT POWER CLEAN DOUBLE', 'SYSTEMA SOFT POWER CLEAN DOUBLE', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866803977', '-', '1', '1', 'SYSTEMA SIKAT GIGI SMART CLEAN', 'SYSTEMA SIKAT GIGI SMART CLEAN', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866803984', '-', '1', '1', 'SYSTEMA SIKAT GIGI SENSITIVE', 'SYSTEMA SIKAT GIGI SENSITIVE', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102023276', '-', '1', '1', 'FORMULA PLATINUM PROTECTOR SOFT', 'FORMULA PLATINUM PROTECTOR SOFT', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992911011218', '-', '1', '1', 'IDEAL COTTON BUDS 50 BTNG', 'IDEAL COTTON BUDS 50 BTNG', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992964111330', '-', '1', '1', 'PLASTIC STICK BABY CUTTON BUDS 100PCS', 'PLASTIC STICK BABY CUTTON BUDS 100PCS', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886013402206', '-', '1', '1', 'TWISTKO JAGUNG BAKAR 30GR', 'TWISTKO JAGUNG BAKAR 30GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('346', '-', '1', '1', 'PLASTIK 2KG ECER/PCS', 'PLASTIK 2KG ECER/PCS', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010018', '-', '1', '1', 'KABEL GNW 3 IN 3 1.5M', 'KABEL GNW 3 IN 3 1.5M', '100', '11002001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20010017', '-', '1', '1', 'CUK AUDIO AVANKO 2 IN 1', 'CUK AUDIO AVANKO 2 IN 1', '100', '11002001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010004', '-', '1', '1', 'PENSIL WARNA SAFARI 12PCS 3.3MM BESAR', 'PENSIL WARNA SAFARI 12PCS 3.3MM BESAR', '100', '11001001', 'KOTAK', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995106304867', '-', '1', '1', 'STEMPEL BAZIC DATE BC-D4', 'STEMPEL BAZIC DATE BC-D4', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389248010', '-', '1', '1', 'NOTA 2 PLAY PAPERLINE 50 LMBR 108X155MM GREEN', 'NOTA 2 PLAY PAPERLINE 50 LMBR 108X155MM GREEN', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389228234', '-', '1', '1', 'BUKU KWITANSI SINAR DUNIA 40 LMBR SDU KT 40M', 'BUKU KWITANSI SINAR DUNIA 40 LMBR SDU KT 40M', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4005401171027', '-', '1', '1', 'FABER CASTELL 9000 2B PENCIL', 'FABER CASTELL 9000 2B PENCIL', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4974052832222', '-', '1', '1', 'ARTLINE 660 SHACHIHATA EK-660 GREEN', 'ARTLINE 660 SHACHIHATA EK-660 GREEN', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4974052832246', '-', '1', '1', 'ARTLINE 660 SHACHIHATA EK-660 YELLOW', 'ARTLINE 660 SHACHIHATA EK-660 YELLOW', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4007817104118', '-', '1', '1', 'STAEDTLER MARS LUMOGRAPH 100 2B', 'STAEDTLER MARS LUMOGRAPH 100 2B', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6931043362371', '-', '1', '1', 'ZRM GRL INK PEN ZK-100', 'ZRM GRL INK PEN ZK-100', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013532142', '-', '1', '1', 'BIG SOFT ERASER 4B 9242', 'BIG SOFT ERASER 4B 9242', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757000873', '-', '1', '1', 'BUKU FOLIO 100 OKEY BATIK BESAR', 'BUKU FOLIO 100 OKEY BATIK BESAR', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010005', '-', '1', '1', 'KENKO HH-01A CORRECTION PEN', 'KENKO HH-01A CORRECTION PEN', '100', '11001001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30010005', '-', '1', '1', 'DOMPET OBRAL 5000', 'DOMPET OBRAL 5000', '100', '11003001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30010006', '-', '1', '1', 'DOMPET OBRAL 10000', 'DOMPET OBRAL 10000', '100', '11003001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030022', '-', '1', '1', 'CETAKAN KUE PLASTIK KECIL', 'CETAKAN KUE PLASTIK KECIL', '100', '11003003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('5536842952863', '-', '1', '1', 'BUKU KWITANSI BAMBOO MEDIUM', 'BUKU KWITANSI BAMBOO MEDIUM', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050049', '-', '1', '1', 'HINOHIKARI CABLE REEL 9M FULL HH-391', 'HINOHIKARI CABLE REEL 9M FULL HH-391', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050050', '-', '1', '1', 'MORITA GINZA 6M CABLE ROLL', 'MORITA GINZA 6M CABLE ROLL', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050051', '-', '1', '1', 'LINUX STOP KONTAK ARDE 3 LUBANG LX-883', 'LINUX STOP KONTAK ARDE 3 LUBANG LX-883', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050052', '-', '1', '1', 'MEIKO STOP KONTAK LOB 3 MK-8986', 'MEIKO STOP KONTAK LOB 3 MK-8986', '100', '11002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752111818', '-', '1', '1', 'MIZONE ACTIV GRAPEFRUIT 500ML BTL', 'MIZONE ACTIV GRAPEFRUIT 500ML BTL', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003722', '-', '1', '1', 'CITRA HAND BODY MUTIARA KOREA 120ML', 'CITRA HAND BODY MUTIARA KOREA 120ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417200014', '-', '1', '1', 'ELLIPS HAIR VIT SMOOTH & SHINY ALOE VERA 6X1ML', 'ELLIPS HAIR VIT SMOOTH & SHINY ALOE VERA 6X1ML', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6923492589348', '-', '1', '1', 'GARNIER FACE POWDER SPF 18 01-IVORY 9GR', 'GARNIER FACE POWDER SPF 18 01-IVORY 9GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999052973', '-', '1', '1', 'PONDS PURE WHITE CARBON CHARCOAL 50GR', 'PONDS PURE WHITE CARBON CHARCOAL 50GR', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999053048', '-', '1', '1', 'PONDS PURE WHITE CARBON CHARCOAL 100GR', 'PONDS PURE WHITE CARBON CHARCOAL 100GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029937', '-', '1', '1', 'CITRA HAND BODY MINYAK BIJI ANGGUR INDIA 120ML', 'CITRA HAND BODY MINYAK BIJI ANGGUR INDIA 120ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999003708', '-', '1', '1', 'CITRA HAND BODY BENGKOANG INDONESIA 120ML', 'CITRA HAND BODY BENGKOANG INDONESIA 120ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103001029', '-', '1', '1', 'CUSSONS BABY MINI BAG PACK KECIL ', 'CUSSONS BABY MINI BAG PACK KECIL ', '100', '10002009', 'BAG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001326', '-', '1', '1', 'BAYGON MAT ELEKTRIK ISI ULANG 60MAT 42GR', 'BAYGON MAT ELEKTRIK ISI ULANG 60MAT 42GR', '100', '11003003', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946518829', '-', '1', '1', 'SHINZUI KIREI BODY LOTION 210ML BTL', 'SHINZUI KIREI BODY LOTION 210ML BTL', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946518812', '-', '1', '1', 'SHINZUI HANA BODY LOTION 210ML BTL', 'SHINZUI HANA BODY LOTION 210ML BTL', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992725910608', '-', '1', '1', 'LISTERINE FRESH CITRUS 80ML', 'LISTERINE FRESH CITRUS 80ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992725910417', '-', '1', '1', 'LISTERINE FRESH BURST 80ML', 'LISTERINE FRESH BURST 80ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370345', '-', '1', '1', 'MIRANDA ORANGE MC-4 30X2ML BOX', 'MIRANDA ORANGE MC-4 30X2ML BOX', '100', '10002005', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832603622', '-', '1', '1', 'BELLAGIO HOMME BOLD 100ML', 'BELLAGIO HOMME BOLD 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992832191198', '-', '1', '1', 'BELLAGIO HOMME VENTURA 100ML', 'BELLAGIO HOMME VENTURA 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796011310', '-', '1', '1', 'VIVA FACE TONIC LEMON 100ML BTL', 'VIVA FACE TONIC LEMON 100ML BTL', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222051736', '-', '1', '1', 'GATSBY WAX SPIKY RED 25GR ', 'GATSBY WAX SPIKY RED 25GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222053020', '-', '1', '1', 'GATSBY WATER GLOSS LEVEL 7 300GR', 'GATSBY WATER GLOSS LEVEL 7 300GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222053013', '-', '1', '1', 'GATSBY WATER GLOSS LEVEL 7 150GR', 'GATSBY WATER GLOSS LEVEL 7 150GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999809102768', '-', '1', '1', 'NATURE-E SKIN NUTRIENT SYSTEM 100ML', 'NATURE-E SKIN NUTRIENT SYSTEM 100ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999809102775', '-', '1', '1', 'NATURE-E SKIN NUTRIENT SYSTEM 245ML', 'NATURE-E SKIN NUTRIENT SYSTEM 245ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993014612104', '-', '1', '1', 'LULUR SANG PUTRI AYU 15GR SCH', 'LULUR SANG PUTRI AYU 15GR SCH', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001340', '-', '1', '1', 'BAYGON 1 ALAT PEMANAS + 2 MAT ISI ULANG BOX', 'BAYGON 1 ALAT PEMANAS + 2 MAT ISI ULANG BOX', '100', '11003003', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010006', '-', '1', '1', 'KERIPIK SINGKONG SAMBA', 'KERIPIK SINGKONG SAMBA', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158752351', '-', '1', '1', 'NOKIA 222  BLACK', 'NOKIA 222  BLACK', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('S14A-3200', '-', '1', '1', 'ADVANCE POWER BANK S15-3200', 'ADVANCE POWER BANK S15-3200', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('863459033272133', '-', '1', '1', 'OPPO NEO 7 PUTIH', 'OPPO NEO 7 PUTIH', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6944284616875', '-', '1', '1', 'OPPO A39 EMAS', 'OPPO A39 EMAS', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6944284615045', '-', '1', '1', 'OPPO A37 EMAS', 'OPPO A37 EMAS', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806086929400', '-', '1', '1', 'SAMSUNG DUOS SM-B310E WHITE', 'SAMSUNG DUOS SM-B310E WHITE', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806088506340', '-', '1', '1', 'SAMSUNG Z2 BLACK', 'SAMSUNG Z2 BLACK', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8806088506333', '-', '1', '1', 'SAMSUNG Z2 GOLD', 'SAMSUNG Z2 GOLD', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158733374', '-', '1', '1', 'NOKIA 105 BLACK', 'NOKIA 105 BLACK', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994834001871', '-', '1', '1', 'OPOTATO 2000 BBQ FLAVOR 50GR', 'OPOTATO 2000 BBQ FLAVOR 50GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999500627', '-', '1', '1', 'ES STICK DUNG DUNG KACANG MERAH 38ML', 'ES STICK DUNG DUNG KACANG MERAH 38ML', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761122317', '-', '1', '1', 'FRESTEA GREEN TEA TEH HIJAU 250ML', 'FRESTEA GREEN TEA TEH HIJAU 250ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('691', '-', '1', '1', 'DUPA AYUR JUMBO 4 JAM ', 'DUPA AYUR JUMBO 4 JAM ', '100', '11001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001600207', '-', '1', '1', 'TEH PUCUK HARUM 500ML', 'TEH PUCUK HARUM 500ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '86');
INSERT INTO mstock VALUES ('8996001302316', '-', '1', '1', 'ROMA MALKIST RASA ABON 27GR', 'ROMA MALKIST RASA ABON 27GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001302088', '-', '1', '1', 'ROMA MALKIST CRACKERS 27GR', 'ROMA MALKIST CRACKERS 27GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '87');
INSERT INTO mstock VALUES ('8999999275440', '-', '1', '1', 'SHAKY SHAKE ', 'SHAKY SHAKE ', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '141');
INSERT INTO mstock VALUES ('8992775305102', '-', '1', '1', 'GERY SALUUT COCONUT 110G', 'GERY SALUUT COCONUT 110G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '137');
INSERT INTO mstock VALUES ('089686606010', '-', '1', '1', 'JETZ HOLLOW PAPRIKA 40G', 'JETZ HOLLOW PAPRIKA 40G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598957', '-', '1', '1', 'CHITATO KEJU SUPREME 15% EXTRA 68G', 'CHITATO KEJU SUPREME 15% EXTRA 68G', '100', '10001001', 'BUNMGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686600100', '-', '1', '1', 'CHEETOS AYAM BAKAR 75G', 'CHEETOS AYAM BAKAR 75G', '100', '10001001', 'BUNMGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686600049', '-', '1', '1', 'CHEETOS AYAM BAKAR 40G', 'CHEETOS AYAM BAKAR 40G', '100', '10001001', 'BUNMGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556182023258', '-', '1', '1', 'CADBURY DAIRY MILK CHOCOLATE 65GR', 'CADBURY DAIRY MILK CHOCOLATE 65GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001111913', '-', '1', '1', 'SILVERQUEEN MONTES 50GR', 'SILVERQUEEN MONTES 50GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001122131', '-', '1', '1', 'DELFI MILK CHOCOLATE COIN LOVE 25GR', 'DELFI MILK CHOCOLATE COIN LOVE 25GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001121400', '-', '1', '1', 'SILVERQUEEN MILK CHOCOLATE ALOMND 65GR', 'SILVERQUEEN MILK CHOCOLATE ALOMND 65GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001112613', '-', '1', '1', 'DELFI HEARTS MILK CHOCOLATE 30GR', 'DELFI HEARTS MILK CHOCOLATE 30GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010008', '-', '1', '1', 'COKLAT KOTAK 8 KECIL', 'COKLAT KOTAK 8 KECIL', '100', '10001001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010009', '-', '1', '1', 'COKLAT KOTAK HATI', 'COKLAT KOTAK HATI', '100', '10001001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010010', '-', '1', '1', 'COKLAT TAS PINK KECIL', 'COKLAT TAS PINK KECIL', '100', '10001001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010007', '-', '1', '1', 'COKLAT HATI BESAR', 'COKLAT HATI BESAR', '100', '10001001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30040003', '-', '1', '1', 'WATERPROOF DRY BAG 10 LTR ALL COLOR', 'WATERPROOF DRY BAG 10 LTR ALL COLOR', '100', '11003004', 'BAG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30040002', '-', '1', '1', 'WATERPROOF DRY BAG 15 LTR ALL COLOR', 'WATERPROOF DRY BAG 15 LTR ALL COLOR', '100', '11003004', 'BAG', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30040001', '-', '1', '1', 'WATERPROOF DRY BAG 20 LTR ALL COLOR', 'WATERPROOF DRY BAG 20 LTR ALL COLOR', '100', '11003004', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999099924767', '-', '1', '1', 'SGM EKSPLOR 1 PLUS PLAIN 400GR', 'SGM EKSPLOR 1 PLUS PLAIN 400GR', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992802618014', '-', '1', '1', 'DIABETASOL CAPPUCINO 180GR', 'DIABETASOL CAPPUCINO 180GR', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696407671', '-', '1', '1', 'NESTLE DANCOW 1+ VANILA 400GR', 'NESTLE DANCOW 1+ VANILA 400GR', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992696405578', '-', '1', '1', 'NESTLE DANCOW 1+ 1-3 THN MADU 400GR', 'NESTLE DANCOW 1+ 1-3 THN MADU 400GR', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30010008', '-', '1', '1', 'BUNGA AKSESORIS KECIL', 'BUNGA AKSESORIS KECIL', '100', '11003001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30010007', '-', '1', '1', 'BUNGA AKSESORIS BESAR', 'BUNGA AKSESORIS BESAR', '100', '11003001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7622210640994', '-', '1', '1', 'CADBURY DAIRY MILK CASHEW NUT 65GR', 'CADBURY DAIRY MILK CASHEW NUT 65GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886030324901', '-', '1', '1', 'PORSTEK YURI 2000ML', 'PORSTEK YURI 2000ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686400526', '-', '1', '1', 'INDOFOOD SAMBAL PEDAS MANIS 140ML', 'INDOFOOD SAMBAL PEDAS MANIS 140ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560025069', '-', '1', '1', 'DETTOL SENSITIVE 105G', 'DETTOL SENSITIVE 105G', '100', '11001006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999045265', '-', '1', '1', 'RINSO MOLTO BUBUK 900GR', 'RINSO MOLTO BUBUK 900GR', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999056841', '-', '1', '1', 'PONDS DAY CREAM 20G', 'PONDS DAY CREAM 20G', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999053079', '-', '1', '1', 'PONDS OIL CONTROL FOAM 100G', 'PONDS OIL CONTROL FOAM 100G', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999053000', '-', '1', '1', 'PONDS OIL CONTROL FOAM 50G', 'PONDS OIL CONTROL FOAM 50G', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908266002', '-', '1', '1', 'MARINA BODY LOTION BRIGHT & FRESH 500ML', 'MARINA BODY LOTION BRIGHT & FRESH 500ML', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137572231', '-', '1', '1', 'WARDAH FACIAL SCRUB 60ML', 'WARDAH FACIAL SCRUB 60ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993137690942', '-', '1', '1', 'WARDAH CREAMY FOAM 60ML', 'WARDAH CREAMY FOAM 60ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992796045049', '-', '1', '1', 'VIVA LIQUID 30ML', 'VIVA LIQUID 30ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999503727', '-', '1', '1', 'CITRA BODY LOTION MANGIR JAWA 250ML', 'CITRA BODY LOTION MANGIR JAWA 250ML', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993058300807', '-', '1', '1', 'KOMIX JERUK NIPIS 7ML', 'KOMIX JERUK NIPIS 7ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856897786', '-', '1', '1', 'SUMBER AYU WHITENING EXTRACT 110ML', 'SUMBER AYU WHITENING EXTRACT 110ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745999799', '-', '1', '1', 'SEMIR NYU NATURAL BROWN 4.00 30ML', 'SEMIR NYU NATURAL BROWN 4.00 30ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745999812', '-', '1', '1', 'SEMIR NYU CARAMEL 5.30 30ML', 'SEMIR NYU CARAMEL 5.30 30ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745999805', '-', '1', '1', 'SEMIR NYU COPPERY BROWN 5.36 30ML', 'SEMIR NYU COPPERY BROWN 5.36 30ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745999829', '-', '1', '1', 'SEMIR NYU BURGUNDY 4.16 30ML', 'SEMIR NYU BURGUNDY 4.16 30ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777867249', '-', '1', '1', 'NIVEA SPARKLING WHITE FOAM 100ML', 'NIVEA SPARKLING WHITE FOAM 100ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777801335', '-', '1', '1', 'NIVEA CREME 50ML', 'NIVEA CREME 50ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777000011', '-', '1', '1', 'NIVEA INTENSIVE MOISTURE 200ML', 'NIVEA INTENSIVE MOISTURE 200ML', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856891623', '-', '1', '1', 'IZZI MAGICAL LOVE 60ML', 'IZZI MAGICAL LOVE 60ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856891647', '-', '1', '1', 'IZZI TRUE LOVE 60ML', 'IZZI TRUE LOVE 60ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856891616', '-', '1', '1', 'IZZI ETERNAL LOVE 60ML', 'IZZI ETERNAL LOVE 60ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856891630', '-', '1', '1', 'IZZI FOREVER LOVE 60ML', 'IZZI FOREVER LOVE 60ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856891593', '-', '1', '1', 'IZZI DAZZLING LOVE 60ML', 'IZZI DAZZLING LOVE 60ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856891609', '-', '1', '1', 'IZZI SWEET LOVE 60ML', 'IZZI SWEET LOVE 60ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777006259', '-', '1', '1', 'NIVEA INVISIBLE FRESH 50ML', 'NIVEA INVISIBLE FRESH 50ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777004354', '-', '1', '1', 'NIVEA INVISIBLE CLEAR 50ML', 'NIVEA INVISIBLE CLEAR 50ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777004163', '-', '1', '1', 'NIVEA DEODORANT EXTRA 50ML', 'NIVEA DEODORANT EXTRA 50ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777007430', '-', '1', '1', 'NIVEA DEODORANT HAPPY SHAVE 50ML', 'NIVEA DEODORANT HAPPY SHAVE 50ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993058301200', '-', '1', '1', 'KOMIX OBH  7ML', 'KOMIX OBH  7ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856891654', '-', '1', '1', 'IZZI TRUE LOVE 100ML', 'IZZI TRUE LOVE 100ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856890817', '-', '1', '1', 'IZZI DAZZLING LOVE 100ML', 'IZZI DAZZLING LOVE 100ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856890831', '-', '1', '1', 'IZZI ETERNAL LOVE 100ML', 'IZZI ETERNAL LOVE 100ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856890848', '-', '1', '1', 'IZZI MAGICAL LOVE 100ML', 'IZZI MAGICAL LOVE 100ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856890824', '-', '1', '1', 'IZZI SWEET LOVE 100ML', 'IZZI SWEET LOVE 100ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866106467', '-', '1', '1', 'POSH BODY SPRAY FOR GIRLS 150GR', 'POSH BODY SPRAY FOR GIRLS 150GR', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866107143', '-', '1', '1', 'POSH MEN COOL BLUE 150ML', 'POSH MEN COOL BLUE 150ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997021870328', '-', '1', '1', 'HOT IN CREAM 120ML', 'HOT IN CREAM 120ML', '100', '10002002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20050053', '-', '1', '1', 'PURE VEGETABLE POMADE 20GR', 'PURE VEGETABLE POMADE 20GR', '100', '10002005', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325420', '-', '1', '1', 'STELLA REFILL MATIC LEMON 225ML', 'STELLA REFILL MATIC LEMON 225ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320692', '-', '1', '1', 'STELLA REFILL MATIC FRESH & CLEAN 225ML', 'STELLA REFILL MATIC FRESH & CLEAN 225ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320388', '-', '1', '1', 'STELALIQUID SKYLINE ORIN', 'STELALIQUID SKYLINE ORIN', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320364', '-', '1', '1', 'STELA LIQUID SKYLINE LEMON', 'STELA LIQUID SKYLINE LEMON', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320357', '-', '1', '1', 'STELA LIQUID SKYLINE DRAGON', 'STELA LIQUID SKYLINE DRAGON', '100', '11002001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777008543', '-', '1', '1', 'NIVEA INSTANT WHITE SPF15 200ML', 'NIVEA INSTANT WHITE SPF15 200ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('156', '-', '1', '1', 'KOREK GAS TOKAI', 'KOREK GAS TOKAI', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '79');
INSERT INTO mstock VALUES ('6920001788001', '-', '1', '1', 'KOREK GAS M2000 MN936 BARA', 'KOREK GAS M2000 MN936 BARA', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999909000346', '-', '1', '1', 'SAMPOERNA U BOLD 12 KRETEK', 'SAMPOERNA U BOLD 12 KRETEK', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '100');
INSERT INTO mstock VALUES ('089686600025', '-', '1', '1', 'CHEETOS AYAM BAKAR 15GR', 'CHEETOS AYAM BAKAR 15GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '68');
INSERT INTO mstock VALUES ('8991389221037', '-', '1', '1', 'BUKU GAMBAR SIDU A4 SDU DB 20X30CM', 'BUKU GAMBAR SIDU A4 SDU DB 20X30CM', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8956745678931', '-', '1', '1', 'BUKU GAMBAR KW A3', 'BUKU GAMBAR KW A3', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997206580400', '-', '1', '1', 'BINTANG BESAR 620 ML', 'BINTANG BESAR 620 ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('986', '-', '1', '1', 'PLASTIK MIKA 4C 100 PCS', 'PLASTIK MIKA 4C 100 PCS', '100', '11003001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10010011', '-', '1', '1', 'JORDAN ROTI KERING ISI 5', 'JORDAN ROTI KERING ISI 5', '100', '10001001', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777813499', '-', '1', '1', 'NIVEA MEN ACNE CONTROL 10 MULTI EFFECT 100ML', 'NIVEA MEN ACNE CONTROL 10 MULTI EFFECT 100ML', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998989300087', '-', '1', '1', 'GG MILD', 'GG MILD', '100', '10001003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886022971298', '-', '1', '1', 'BATERAY ABC ALKALIN AA', 'BATERAY ABC ALKALIN AA', '-', '11002001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '172');
INSERT INTO mstock VALUES ('8996001318430', '-', '1', '1', 'BETTER VANILLA CREAM 22G', 'BETTER VANILLA CREAM 22G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997878001357', '-', '1', '1', 'MILKITA LOLLIPOP STROBERI 7G', 'MILKITA LOLLIPOP STROBERI 7G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997878001371', '-', '1', '1', 'MILKITA LOLLIPOP MELON 7G', 'MILKITA LOLLIPOP MELON 7G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997878001364', '-', '1', '1', 'MILKITA LOLLIPOP COKELAT 7G', 'MILKITA LOLLIPOP COKELAT 7G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997035600546', '-', '1', '1', 'POCARI SWEAT 900ML', 'POCARI SWEAT 900ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993093665237', '-', '1', '1', 'MINYAK GORENG TAWON 1L', 'MINYAK GORENG TAWON 1L', '100', '10001001', 'REFIL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999406998', '-', '1', '1', 'SUPER PELL LAVENDER & GREEN TEA 800ML', 'SUPER PELL LAVENDER & GREEN TEA 800ML', '100', '10002003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8889990501023', '-', '1', '1', 'MYTHOS ', 'MYTHOS ', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992826211017', '-', '1', '1', 'FILMA MARGARIN GURIH SERBAGUNA 200G', 'FILMA MARGARIN GURIH SERBAGUNA 200G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('004', '-', '1', '1', 'BERAS PIS BOLONG 10KG', 'BERAS PIS BOLONG 10KG', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993296210005', '-', '1', '1', 'TEPUNG TERIGU SEGITIGA BIRU 1KG', 'TEPUNG TERIGU SEGITIGA BIRU 1KG', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001355756', '-', '1', '1', 'BENG-BENG MAXX 32G', 'BENG-BENG MAXX 32G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '67');
INSERT INTO mstock VALUES ('8996001320136', '-', '1', '1', 'KOPIKO CAPPUCCINO 150G', 'KOPIKO CAPPUCCINO 150G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001326220', '-', '1', '1', 'KIS MINT CHERRY 125G', 'KIS MINT CHERRY 125G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001338056', '-', '1', '1', 'TAMARIN PERMEN SARI ASAM 135G', 'TAMARIN PERMEN SARI ASAM 135G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775203408', '-', '1', '1', 'GARUDA ROSTA RASA BAWANG 12G', 'GARUDA ROSTA RASA BAWANG 12G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775112144', '-', '1', '1', 'GARUDA KACANG KULIT RASA BAWANG 70G', 'GARUDA KACANG KULIT RASA BAWANG 70G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866201568', '-', '1', '1', 'MIE SEDAP RASA AYAM BAWANG TELUR 73G', 'MIE SEDAP RASA AYAM BAWANG TELUR 73G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001770301', '-', '1', '1', 'SELAMAT BLACK VANILLA 198G', 'SELAMAT BLACK VANILLA 198G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998389111085', '-', '1', '1', 'MARIE SUSU MADU 180G', 'MARIE SUSU MADU 180G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015203115', '-', '1', '1', 'GOOD TIME DOUBLE CHOCOCHIPS COOKIES 80G', 'GOOD TIME DOUBLE CHOCOCHIPS COOKIES 80G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015428136', '-', '1', '1', 'TIMTAM SMOOTH & CRUNCHY 105G', 'TIMTAM SMOOTH & CRUNCHY 105G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992138212504', '-', '1', '1', 'KOPI BUBUK KUKU KUPU BOLA DUNIA 250 GR', 'KOPI BUBUK KUKU KUPU BOLA DUNIA 250 GR', '100', '10001002', 'bungkus', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866605649', '-', '1', '1', 'RAPIKA REPIL 425 ML', 'RAPIKA REPIL 425 ML', '100', '11001006', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866610230', '-', '1', '1', 'DAIA SOFTENER SASET', 'DAIA SOFTENER SASET', '100', '11001006', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270741', '-', '1', '1', 'CHARM GATHERS 42 CM', 'CHARM GATHERS 42 CM', '100', '10002004', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189321832', '-', '1', '1', 'PEMBALUT CHARM FRAGRANCE  23 CM', 'PEMBALUT CHARM FRAGRANCE  23 CM', '100', '10002004', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908040305', '-', '1', '1', 'MARINA UV PROTECTION ICOSE POWDER', 'MARINA UV PROTECTION ICOSE POWDER', '100', '10002005', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991111102832', '-', '1', '1', 'BEDAK JOHNSONS  300GR', 'BEDAK JOHNSONS  300GR', '100', '10002007', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866603362', '-', '1', '1', 'RAPIKA SPRAY  ', 'RAPIKA SPRAY', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999719401', '-', '1', '1', 'VASELINE HEALHY WHITE  400 ML', 'VASELINE HEALHY WHITE  400 ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999024796', '-', '1', '1', 'VASAELINE PERFECT 10,     400ML', 'VASAELINE PERFECT 10,     400ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999008840', '-', '1', '1', 'VASELINE ALCE SOOTHE   400 ML', 'VASELINE ALCE SOOTHE   400 ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999020248', '-', '1', '1', 'VASELINE  INTENSEVE CARE  400ML', 'VASELINE  INTENSEVE CARE  400ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001356064', '-', '1', '1', 'PARHUM TORONTO 100ML', 'PARHUM TORONTO 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222071130', '-', '1', '1', 'PIXY REFILL PERFECT FIT  12,2 G ', 'PIXY REFILL PERFECT FIT  12,2 ', '100', '10002005', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856898110', '-', '1', '1', 'VITALIS CELEBRITE  100  ML', 'VITALIS CELEBRITE  100  ML', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990090420296', '-', '1', '1', 'SARI AYU BODY SPLASH COLOGNA', 'SARI AYU BODY SPLASH COLOGNA', '100', '10002006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048181', '-', '1', '1', 'SUNSILK BLACK SHINE  170ML', 'SUNSILK BLACK SHINE  170ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048419', '-', '1', '1', 'SUNSILK LIVELY STRAIGHT SHAMPOO 170ML', 'SUNSILK LIVELY STRAIGHT SHAMPOO 170ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048266', '-', '1', '1', 'SUNSILK SOFT&SM0OTH SHAMPOO 170ML', 'SUNSILK SOFT&SM0OTH SHAMPOO 170ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048303', '-', '1', '1', 'SUNSILK LIVELY STRONG SHAMPOO 170ML', 'SUNSILK LIVELY STRONG SHAMPOO 170ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048259', '-', '1', '1', 'SUNSILK SOFT&STRONG SHAMPOO 70ML', 'SUNSILK SOFT&STRONG SHAMPOO 70ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048297', '-', '1', '1', 'SUNSILK LIVELY STRONG SHAMPOO 70ML', 'SUNSILK LIVELY STRONG SHAMPOO 70ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048402', '-', '1', '1', 'SUNSILK LIVELY STRAIGHT SHAMPOO 70ML', 'SUNSILK LIVELY STRAIGHT SHAMPOO 70ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048174', '-', '1', '1', 'SUNSILK BLACK SHINE SHAMPOO 70ML', 'SUNSILK BLACK SHINE SHAMPOO 70ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400992', '-', '1', '1', 'PANTENE SHAMPOO HAIR FALL CONTROL 340ML', 'PANTENE SHAMPOO HAIR FALL CONTROL 340ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430399425', '-', '1', '1', 'PANTENE CONDITIONER TOTAL DAMAGE 165ML', 'PANTENE CONDITIONER TOTAL DAMAGE 165ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430399531', '-', '1', '1', 'PANTENE SHAMPOO SILKY SMOOTH CARE 70ML', 'PANTENE SHAMPOO SILKY SMOOTH CARE 70ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999033132', '-', '1', '1', 'LIFEBUOY MILK PROTEIN 170ML', 'LIFEBUOY MILK PROTEIN 170ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999033170', '-', '1', '1', 'LIFEBUOY LOCK FORMUL;A 170ML', 'LIFEBUOY LOCK FORMUL;A 170ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023141129', '-', '1', '1', 'QIANSOTO MASKER RICE MILK 35GR', 'QIANSOTO MASKER RICE MILK 35GR', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997023141242', '-', '1', '1', 'QIANSOTO BENGKOANG BEAUTY 35ML', 'QIANSOTO BENGKOANG BEAUTY 35ML', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430428408', '-', '1', '1', 'REJOICE RICH SOFT SMOOTH 70ML', 'REJOICE RICH SOFT SMOOTH 70ML', '100', '11001009', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430432252', '-', '1', '1', 'REJOICE RICH SOFT SMOOTH CONDITIONER 70ML', 'REJOICE RICH SOFT SMOOTH CONDITIONER 70ML', '100', '11001009', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999034030', '-', '1', '1', 'VASELINE MEN ANTI ACNE FACE WASH 100GR', 'VASELINE MEN ANTI ACNE FACE WASH 100GR', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430963251', '-', '1', '1', 'DOWNY SUNRISE FRESH BOTOL 400ML', 'DOWNY SUNRISE FRESH BOTOL 400ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430504539', '-', '1', '1', 'DOWNY MYSTIQUE BOTOL 370ML', 'DOWNY MYSTIQUE BOTOL 370ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430276429', '-', '1', '1', 'DOWNY PASSION BOTOL 370ML', 'DOWNY PASSION BOTOL 370ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001354749', '-', '1', '1', 'KARACHI FEMME MIST 100ML', 'KARACHI FEMME MIST 100ML', '100', '11001008', 'BOTOL', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001355791', '-', '1', '1', 'KARACHI PARFUME RED 100ML', 'KARACHI PARFUME RED 100ML', '100', '11001008', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304033926', '-', '1', '1', 'GARNIER SAKURA WHITE 18ML', 'GARNIER SAKURA WHITE 18ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304033872', '-', '1', '1', 'GARNIER SAKURA WHITE 50ML', 'GARNIER SAKURA WHITE 50ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430276436', '-', '1', '1', 'DOWNY PARHUM PASSION 370 ML', 'DOWNY PARHUM PASSION 370 ML', '100', '11001008', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304024740', '-', '1', '1', 'TURBU LIGHT GARNIER MEN  100 ML', 'TURBU LIGHT GARNIER MEN  100 ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20030001', '-', '1', '1', 'PASEO 50 SHEETS 2 PLY TISSUE', 'PASEO 50 SHEETS 2 PLY TISSUE', '100', '10002003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('670', '-', '1', '1', 'CREAM CR LING SHI DAY CREAM 15GR', 'CREAM CR LING SHI DAY CREAM 15GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8904227300368', '-', '1', '1', 'ARIJ PREMIUM INSENSE STIKS', 'ARIJ PREMIUM INSENSE STIKS', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9555052300758', '-', '1', '1', 'THURGAS VASANTHAM HAPPINESS INCENSE STICKS', 'THURGAS VASANTHAM HAPPINESS INCENSE STICKS', '100', '11001002', 'bungkus', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9555052300239', '-', '1', '1', 'THURGAS  SENTHAMIL INCENSE STICKS', 'THURGAS  SENTHAMIL INCENSE STICKS', '100', '11001002', 'bungkus', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9555052300246', '-', '1', '1', 'THRUGAS  FIVE IN ONE  INCENSE STICKS', 'THRUGAS  FIVE IN ONE  INCENSE STICKS', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103006844', '-', '1', '1', 'CUSSON BABY  WIPES MIL & GENTLE', 'CUSSON BABY  WIPES MIL & GENTLE', '100', '10002009', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998103100685', '-', '1', '1', 'CUSSONS BABY WIPES NATURALLY & REFRESHING', 'CUSSONS BABY WIPES NATURALLY & REFRESHING', '100', '10002009', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888103006882', '-', '1', '1', 'CUSSONS BABY WIPES  SOFT & SMOOTH', 'CUSSONS BABY WIPES  SOFT & SMOOTH', '100', '10002009', 'bungkus', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030018', '-', '1', '1', 'HANGER RJ PASS 55', 'HANGER RJ PASS 55', '100', '11003003', 'PCS', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('30030017', '-', '1', '1', 'HANGER FEBY KECIL', 'HANGER FEBY KECIL', '100', '11003003', 'SET', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('016', '-', '1', '1', 'SAPU IJUK KIPAS', 'SAPU IJUK KIPAS', '100', '11001001', 'BUAH', '0', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009020223', '-', '1', '1', 'BUAHVITA APPIE  ', 'BUAHVITA APPIE  ', '100', '10001002', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB013TQ', '-', '1', '1', 'DRY BAG 5L TURQQISE', 'DRY BAG 5L TURQQISE', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB013OR', '-', '1', '1', 'DRY BAG WATERPROF 5L ORANGE ', 'DRY BAG WATERPROF 5L ORANGE ', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB013YL', '-', '1', '1', 'DRY BAG 5L YELLOW', 'DRY BAG 5L YELLOW', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB013LG', '-', '1', '1', 'DRY BAG WATERPROF 5L ', 'DRY BAG WATERPROF 5L ', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB040BL', '-', '1', '1', 'DRY BAG 15L BLUE', 'DRY BAG 15L BLUE', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB040BK', '-', '1', '1', 'DRY BAG 15L BLAK', 'DRY BAG 15L BLAK', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB040YL', '-', '1', '1', 'DRY BAG 15L YEELO', 'DRY BAG 15L YEELO', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB015RD', '-', '1', '1', 'DRY BAG 20L RED', 'DRY BAG 20L RED', '100', '11003004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB015TR', '-', '1', '1', 'DREY BAG 20L TRASPARAN', 'DREY BAG 20L TRASPARAN', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB015OL', '-', '1', '1', 'DRY BAG 20L OLIVE', 'DRY BAG 20L OLIVE', '100', '11003004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB019CR', '-', '1', '1', 'ULTRA LIGHT DRY SACK 10L CORAL ROL', 'ULTRA LIGHT DRY SACK 10L CORAL ROL', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB025HP', '-', '1', '1', 'DRY BAG 10L HOT PINK ', 'DRY BAG 10L HOT PINK ', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB025OR', '-', '1', '1', 'DRY BAG 10L ORANGE', 'DRY BAG 10L ORANGE', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB025OL', '-', '1', '1', 'DRY BAG 10L OLIVE', 'DRY BAG 10L OLIVE', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('DB025GY', '-', '1', '1', 'DRY BAG 10L GREY', 'DRY BAG 10L GREY', '100', '11003004', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761122485', '-', '1', '1', 'AQUARIUS 500ML', 'AQUARIUS 500ML', '100', '10001002', 'botol', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761166052', '-', '1', '1', 'FRESTEA TEH MELATI ORI 350ML', 'FRESTEA TEH MELATI ORI 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761166205', '-', '1', '1', 'FRESTEA HONEY 350ML', 'FRESTEA HONEY 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997022360460', '-', '1', '1', 'MASKER SKRINEER 5 PCS', 'MASKER SKRINEER 5 PCS', '100', '10002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997022360514', '-', '1', '1', 'MASKER SKRINEER', 'MASKER SKRINEER', '100', '10002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993229110013', '-', '1', '1', 'KABEL BOX YUNIOR 10 MTR', 'KABEL BOX YUNIOR 10 MTR', '100', '11002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761164560', '-', '1', '1', 'NUTRIBOOST APPLE 300 ML', 'NUTRIBOOST APPLE 300 ML', '100', '10001002', 'BTL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761164577', '-', '1', '1', 'NUTRIBUS MANGGA 300 ML', 'NUTRIBUS MANGGA 300 ML', '100', '10001002', 'BTL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993093665244', '-', '1', '1', 'MINYAK GORENG TAWON  2LTR', 'MINYAK GORENG TAWON  2LTR', '100', '10002001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994935000087', '-', '1', '1', 'MINYAK GORENG NABATI  DUNIA 900ML', 'MINYAK GORENG NABATI  DUNIA 900ML', '100', '10002001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('345', '-', '1', '1', 'MINYAK GORENG FITRI 900 ML', 'MINYAK GORENG FITRI 900 ML', '100', '10001001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999909000711', '-', '1', '1', 'MAGNUM MILLD 16', 'MAGNUM MILLD 16', '100', '10001003', 'BKS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998009010224', '-', '1', '1', 'ULTRA MILK 250 ML', 'ULTRA MILK 250 ML', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '180');
INSERT INTO mstock VALUES ('8996001302637', '-', '1', '1', 'MALKIST COKELAT ROMA', 'MALKIST COKELAT ROMA', '100', '10001001', 'BKS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015433123', '-', '1', '1', 'TIMTAM STRAWBERRY 105G', 'TIMTAM STRAWBERRY 105G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755010464', '-', '1', '1', 'TIMTAM RED VELVET 105G', 'TIMTAM RED VELVET 105G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015427139', '-', '1', '1', 'TIMTAM VANILA 105G', 'TIMTAM VANILA 105G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991906101361', '-', '1', '1', 'DJARUM SUPER MLD', 'DJARUM SUPER MLD', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991906105758', '-', '1', '1', 'LA BOLD 20', 'LA BOLD 20', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '171');
INSERT INTO mstock VALUES ('8991906108896', '-', '1', '1', 'LA BOLD 12', 'LA BOLD 12', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001770486', '-', '1', '1', 'SELAMAT DOUBLE CHOCOLATE 198G', 'SELAMAT DPUBLE CHOCOLATE 198G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166994768', '-', '1', '1', 'NISSIN WAFERS CHOCOLATE 50G', 'NISSIN WAFERS CHOCOLATE 50G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166330306', '-', '1', '1', 'NISSIN LEMONIA LEMON 130G', 'NISSIN LEMONIA LEMON 130G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166991125', '-', '1', '1', 'BUTTER COOKIES 150G', 'BUTTER COOKIES 150G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992839007577', '-', '1', '1', 'MALKIST SQUARE PUFF 380G', 'MALKIST SQUARE PUFF 380G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166336605', '-', '1', '1', 'NISSIN WAFERS CHOCOLATE 125G', 'NISSIN WAFERS CHOCOLATE 125G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993039242560', '-', '1', '1', 'REGAL MARIE DUO CREAMY VANILLA 20G', 'REGAL MARIE DUO CREAMY VANILLA 20G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611687', '-', '1', '1', 'QTELA SINGKONG BALADO 14G', 'QTELA SINGKONG BALADO 14G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598179', '-', '1', '1', 'CHITATO AYAM BARBEKYU 20G 15% EXTRA', 'CHITATO AYAM BARBEKYU 20G 15% EXTRA', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775305034', '-', '1', '1', 'GERY SALUUT MALKIST SWEET CHEESE 18G', 'GERY SALUUT MALKIST SWEET CHEESE 18G', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992858690200', '-', '1', '1', 'XON-CE VITAMIN C ', 'XON-CE VITAMIN C ', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686601084', '-', '1', '1', 'CHEETOS BARBEKYU 15% EXTRA 75G', 'CHEETOS BARBEKYU 15% EXTRA 75G', '100', '10001001', 'BUNMGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996006858214', '-', '1', '1', 'FRUIT TEA LEMON 500 ML', 'FRUIT TEA LEMON 500 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120223', '-', '1', '1', 'HIT GREEN TEA BARU 400 ML', 'HIT GREEN TEA BARU 400 ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120957', '-', '1', '1', 'HIT LEMON BARU 400 ML', 'HIT LEMON BARU 400 ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120469', '-', '1', '1', 'HIT ORANGE BARU 400 ML', 'HIT ORANGE BARU 400 ML', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899400327', '-', '1', '1', 'BAIGON SPRAY 275 ML', 'BAIGON SPRAY 275 MLART', '100', '11003003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997001356071', '-', '1', '1', 'PARHUM TORONTO  100ML', 'PARHUM TORONTO  100ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991903101029', '-', '1', '1', 'ULTRA SPESIAL 16 ', 'ULTRA SPESIAL 16', '100', '10001003', 'BKS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991906109992', '-', '1', '1', 'MIL HITAM JARUM SUPER 16', 'MIL HITAM JARUM SUPER 16', '100', '10001003', 'BKS', '-', '0', '0', '0.00', '0', '0', '1', '113');
INSERT INTO mstock VALUES ('8992761145019', '-', '1', '1', 'COCA COLA PAS 250 ML', 'COCA COLA PAS 250 ML', '100', '10001002', 'BTL', '-', '0', '0', '0.00', '0', '0', '1', '153');
INSERT INTO mstock VALUES ('8994852017519', '-', '1', '1', 'TESPEN VISALUX 4.0 X 210MM', 'TESPEN VISALUX 4.0 X 210MM', '100', '11002005', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994852017106', '-', '1', '1', 'TESPEN VISALUX  VS 17150A', 'TESPEN VISALUX  VS 17150A', '100', '11002005', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158761100', '-', '1', '1', 'HP NOKIA 105 DUAL SIM', 'HP NOKIA 105 DUAL SIM', '100', '11002003', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('359789066761045', '-', '1', '1', 'HP MITO 890', 'HP MITO 890', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6957029412038', '-', '1', '1', 'LAMPU LED FANOS 3 WT', 'LAMPU LED FANOS 3 WT', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6957029412076', '-', '1', '1', 'LAMPU LED 7 WT FANOS', 'LAMPU LED 7 WT FANOS', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6957029412052', '-', '1', '1', 'LAMPU LED 5 WT FANOS', 'LAMPU LED 5 WT FANOS', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6957029412090', '-', '1', '1', 'LAMPU LED 9 WT FANOS', 'LAMPU LED 9 WT FANOS', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886022931773', '-', '1', '1', 'BATERAI  ABC  AA', 'BATERAI  ABC  AA', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049454', '-', '1', '1', 'REXSONA FREE SPIRIT', 'REXSONA FREE SPIRIT', '100', '10002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049461', '-', '1', '1', 'REXSONA CEWEK', 'REXSONA CEWEK', '100', '10002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049669', '-', '1', '1', 'RECSONA MEN MOTIONSENSE', 'RECSONA MEN MOTIONSENSE', '100', '10002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999503918', '-', '1', '1', 'AXE INVISIBLE PROTECTION', 'AXE INVISIBLE PROTECTION', '`100M,', '10002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999503925', '-', '1', '1', 'AXE CARGE UP PROTECION ', 'AXE CARGE UP PROTECION', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999004224', '-', '1', '1', 'CITRA BODYWASH 200 ML', 'CITRA BODYWASH 200 ML', '100', '11001006', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026004', '-', '1', '1', 'DETTOL REFILL ORIGINAL BODY WASH 250ML', 'DETTOL REFILL ORIGINAL BODY WASH 250ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560027568', '-', '1', '1', 'DETOL VALUE REFILL 200 ML', 'DETOL VALUE REFILL 200 ML', '100', '10002003', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026714', '-', '1', '1', 'DETOLVALUE REFIL BODYWASH 250 ML', 'DETOLVALUE REFIL BODYWASH 250 ML', '100', '10002003', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026066', '-', '1', '1', 'DETTOL REFILL COOL BODY WASH 250ML', 'DETTOL REFILL COOL BODY WASH 250ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999052133', '-', '1', '1', 'SABUN CITRA  80 GR', 'SABUN CITRA  80 GR', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '138');
INSERT INTO mstock VALUES ('8999999500535', '-', '1', '1', 'CITRA BODY WASH 220 ML BTL', 'CITRA BODYWASH 220 ML BTL', '100', '11001006', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997666710102', '-', '1', '1', 'BERAS PUNEL ISTIMEWA BENELI MERAK 10KG', 'BERAS PUNEL ISTIMEWA BENELI MERAK 10KG', '100', '10001001', 'KARUNG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('590', '-', '1', '1', 'BADMINTON RACKET PHILAPS ISI 2 PCS', 'BADMINTON RACKET PHILAPS ISI 2 PCS', '100', '11003002', 'SET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('502', '-', '1', '1', 'KABEL VISERO 1-2 3METER', 'KABEL VISERO 1-2 3METER', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('506', '-', '1', '1', 'KABEL VISERO 3-3 5METER', 'KABEL VISERO 3-3 5METER', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('507', '-', '1', '1', 'KABEL VISERO 1-2 5METER', 'KABEL VISERO 1-2 5METER', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('591', '-', '1', '1', 'KABEL VISERO 3-3 3METER', 'KABEL VISERO 3-3 3METER', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('594', '-', '1', '1', 'KABEL VISERO 3-3', 'KABEL VISERO 3-3', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('592', '-', '1', '1', 'KABEL POWER', 'KABEL POWER', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('595', '-', '1', '1', 'KABEL 1-1', 'KABEK 1-1', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('596', '-', '1', '1', 'THE YELLOW COPPER 2-1', 'THE YELLOW COPPER 2-1', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8887549092442', '-', '1', '1', 'BATERAI PANASONIK AAA ', 'BATERAI PANASONIK AAA ', '100', '11002001', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997014310107', '-', '1', '1', 'BUKU OKTAVO', 'BUKU OKTAVO', '100', '11001001', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('1312680131080', '-', '1', '1', 'ISI STEPLES  DOVR  131 /8', 'ISI STEPLES  DOVR  131 /8', '100', '11001001', 'KT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4978438188828', '-', '1', '1', 'ISI STEPLES HONAGA  10', 'ISI STEPLES HONAGA  10', '100', '11001001', 'KT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946511790', '-', '1', '1', 'SHINZUI SKIN LIGHTENING SOAP', 'SHINZUI SKIN LIGHTENING SOAP', '100', '11001006', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '110');
INSERT INTO mstock VALUES ('8992761145026', '-', '1', '1', 'SPRITE 250ML', 'SPRITE 250ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '64');
INSERT INTO mstock VALUES ('7622300442477', '-', '1', '1', 'OREO ICE CREAM BLUEBERRY 29.4G', 'OREO ICE CREAM BLUEBERRY 29.4G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('02014000004492', '-', '1', '1', 'SANDAL ANDO NICE LIKE BIRU 40', 'SANDAL ANDO NICE LIKE BIRU 40', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('02013800004267', '-', '1', '1', 'SANDAL Ando NICE LIKE MERAH', 'SANDAL Ando NICE LIKE MERAH', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('01014000004468', '-', '1', '1', 'SANDAL ANDO HAWAII LIKA  R BLUE', 'SANDAL ANDO HAWAII LIKA  R BLUE', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('01014100004469', '-', '1', '1', 'SANDAL ANDO HAWAII LIKE  TOSKA 41', 'SANDAL ANDO HAWAII LIKE  TOSKA 41', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('01014100004468', '-', '1', '1', 'SANDAL ANDO HAWAII LIKE R.BIRU  41', 'SANDAL ANDO HAWAII LIKE R.BIRU  41', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('01014200004468', '-', '1', '1', 'SANDAL ANDO HAWAII LIKE R,.BIRU  42', 'SANDAL ANDO HAWAII LIKE R,.BIRU  42', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('01014200004469', '-', '1', '1', 'SANDAL ANDO  LIKE TOSKA  42', 'SANDAL ANDO  LIKE TOSKA  42', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('02013900004267', '-', '1', '1', 'SANDAL ANDO NICE LIKE MERAH ', 'SANDAL ANDO NICE LIKE MERAH ', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('01014000004469', '-', '1', '1', 'SANDAL ANDO HAWAII LIKE TOSKA ', 'SANDAL ANDO HAWAII LIKE TOSKA ', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('02013800004492', '-', '1', '1', 'SANDAL ANDO  NICE LIKE BIRU', 'SANDAL ANDO  NICE LIKE BIRU', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('02013600004492', '-', '1', '1', 'SANDAL ANDO NICE LIKE BIRU', 'SANDAL ANDO NICE LIKE BIRU', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('02014000004267', '-', '1', '1', 'SANDAL ANDO NICA LIKA MERAH', 'SANDAL ANDO NICA LIKA MERAH', '100', '11001010', 'PASANG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851123212861', '-', '1', '1', 'M-150  KLNG 250ML', 'M-150  KLNG 250ML', '100', '10001002', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002101784', '-', '1', '1', 'KOPI ABC BALI SCH 250GR ', 'KOPI ABC BALI SCH 250GR ', '100', '10001002', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002101777', '-', '1', '1', 'KOPI ABC BALI SCH 40GR ', 'KOPI ABC BALI SCH 250GR ', '100', '10001002', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991906108384', '-', '1', '1', 'MLD BLACK SERIES 12', 'MLD BLACK SERIES 12', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991906101057', '-', '1', '1', 'L.A LIGHT PUTIH', 'L.A LIGHT PUTIH', '100', '10001003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901751374612', '-', '1', '1', 'DUPA OM SHANTI ', 'DUPA OM SHANTI ', '100', '11001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166607392', '-', '1', '1', 'SALTCHEESE COMB0 175G', 'SALTCHEESE COMB0 175G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166607408', '-', '1', '1', 'SALTCHEESE COMBOCIZ 190G', 'SALTCHEESE COMBOCIZ 190G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166606166', '-', '1', '1', 'SUPERCO 138G', 'SUPERCO 138G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997204840049', '-', '1', '1', 'MINYAK GORENG TROPIMAS  5 LTR', 'MINYAK GORENG TROPIMAS  5 LTR', '100', '10001001', 'JERIGEN', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998968400203', '-', '1', '1', 'HALIM FILTER MERAH', 'HALIM FILTER MERAH', '100', '10001003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '197');
INSERT INTO mstock VALUES ('8998968410202', '-', '1', '1', 'HALIM FILTER COKLAT', 'HALIM FILTER COKLAT', '100', '10001003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('005', '-', '1', '1', 'BERAS WIJEN  10KG', 'BERAS WIJEN  10KG', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946121029', '-', '1', '1', 'MINYAK GORENG TROPIKAL  2 LITER', 'MINYAK GORENG TROPIKAL  2 LITER', '100', '10001001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761111038', '-', '1', '1', 'SPRAITE CAN  330 ml', 'SPRAITE CAN  330 ml', '100', '10001002', 'kaleng', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761111014', '-', '1', '1', 'COCACOLA  CAN 330 ML', 'COCACOLA  CAN 330 ML', '100', '10001002', 'kaleng', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761111298', '-', '1', '1', 'COCACOLA  SERO SUGER 330 ML', 'COCACOLA  SERO SUGER 330 ML', '100', '10001002', 'kaleng', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6945082403780', '-', '1', '1', 'HANNOCHS EMERGEBCY  10 WT', 'HANNOCHS EMERGEBCY  10 WT', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6945082403261', '-', '1', '1', 'HANNOCHS EMERGENCY  8 WT', 'HANNOCHS EMERGENCY  8 WT', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6928820029558', '-', '1', '1', 'GARNIER MICELLAR PURE ACTIVE 125ML', 'GARNIER MICELLAR PURE ACTIVE 125ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6928820029572', '-', '1', '1', 'GARNIER MICELLAR MERAH 125ML', 'GARNIER MICELLAR MERAH 125ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997027923264', '-', '1', '1', 'PROCAPYL SHOWER CREAM 250ML', 'PROCAPYL SHOWER CREAM 250ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997027923271', '-', '1', '1', 'PROCAPYL WHITENING HAND BODY 250GR', 'PROCAPYL WHITENING HAND BODY 250GR', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856898332', '-', '1', '1', 'VITALIS HONOLULU ESCAPE 100ML', 'VITALIS HONOLULU ESCAPE 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830022090', '-', '1', '1', 'REXONA INVISIBLE DRY BLACK WHITE 150ML', 'REXONA INVISIBLE DRY BLACK WHITE 150ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856898349', '-', '1', '1', 'VITALIS CARIBBEAN GETAWAY 100ML', 'VITALIS CARIBBEAN GETAWAY 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992856898356', '-', '1', '1', 'VITALIS SWITZERLAND SURPRISE 100ML', 'VITALIS SWITZERLAND SURPRISE 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830020218', '-', '1', '1', 'REXONA SHOWER CLEAN 150ML', 'REXONA SHOWER CLEAN 150ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830020225', '-', '1', '1', 'REXONA ADVANCE WHITENING 150ML', 'REXONA ADVANCE WHITENING 150ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851932345088', '-', '1', '1', 'REXONA MEN V8 48H 150ML', 'REXONA MEN V8 48H 150ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830025831', '-', '1', '1', 'REXONA INVISIBLE DRY 150ML', 'REXONA INVISIBLE DRY 150ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830020188', '-', '1', '1', 'REXONA FREE SPIRIT 150ML', 'REXONA FREE SPIRIT 150ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866606882', '-', '1', '1', 'FRESH CRUSH 100ML', 'FRESH CRUSH 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866606905', '-', '1', '1', 'FRESH CARNIVAL 100ML', 'FRESH CARNIVAL 100ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222055208', '-', '1', '1', 'GATSBY STYLING POMADE 6GR SCHT', 'GATSBY STYLING POMADE 6GR SCHT', '100', '10002005', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417215223', '-', '1', '1', 'ESKULIN CHEER THE WORLD 105ML', 'ESKULIN CHEER THE WORLD 105ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417215247', '-', '1', '1', 'ESKULIN GOOD NIGHT KISS 105ML', 'ESKULIN GOOD NIGHT KISS 105ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901526204465', '-', '1', '1', 'GARNIER 3 COKLAT GELAP 60ML + 40G', 'GARNIER 3 COKLAT GELAP 60ML + 40G', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901526204472', '-', '1', '1', 'GARNIER 3.16 MERAH BURGUNDY 60ML + 40G', 'GARNIER 3.16 MERAH BURGUNDY 60ML + 40G', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901526204496', '-', '1', '1', 'GARNIER 5 COKLAT TERANG 60ML + 40G', 'GARNIER 5 COKLAT TERANG 60ML + 40G', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417215216', '-', '1', '1', 'ESKULIN WAKE UP GIRLS 105ML', 'ESKULIN WAKE UP GIRLS 105ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417215230', '-', '1', '1', 'ESKULIN SHAKE YOUR BODY 105ML', 'ESKULIN SHAKE YOUR BODY 105ML', '100', '11001008', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6921738090719', '-', '1', '1', 'BAOKE  2768 JUMBO ING JEL', 'BAOKE  2768 JUMBO ING JEL', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6956953516805', '-', '1', '1', 'ODEMEI GP 010  GEL PEN', 'ODEMEI GP 010  GEL PEN', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6921738076522', '-', '1', '1', 'BAOKE PC 1848', 'BAOKE PC 1848', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6923655534857', '-', '1', '1', 'TIZO TG 340 1.0  ML ', 'TIZO TG 340 1.0  ML ', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129703014', '-', '1', '1', 'PILOT BPT P', 'PILOT BPT P', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('344', '-', '1', '1', 'KACAMATA 30.000', 'KACAMATA 30.000', '100', '11003001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6937218577069', '-', '1', '1', 'BALOON YK 1608', 'BALOON YK 1608', '100', '10002010', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('355', '-', '1', '1', 'KACAMATA 40.000', 'KACAMATA 40.000', '100', '11003001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8850007652588', '-', '1', '1', 'CLEAN & CLEAR NATURAL BRIGHT 100ML', 'CLEAN & CLEAR NATURAL BRIGHT 100ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105668', '-', '1', '1', 'EMERON LOVELY WHITE MULBERRY 400ML BTL', 'EMERON LOVELY WHITE MULBERRY 400ML BTL', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866105682', '-', '1', '1', 'EMERON LOVELY JOJOBA OIL 400ML BTL', 'EMERON LOVELY JOJOBA OIL 400ML BTL', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166991484', '-', '1', '1', 'NISSIN BUTTER COCONUT 200G', 'NISSIN BUTTER COCONUT 200G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166991491', '-', '1', '1', 'NISSIN COFFE MILK 200G', 'NISSIN COFFE MILK 200G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166993167', '-', '1', '1', 'MONDE BUTTER COOKIES 90G', 'MONDE BUTTER COOKIES 90G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999042608', '-', '1', '1', 'RINSO ADVANCE FOAM +MOLTO 800ML', 'RINSO ADVANCE FOAM +MOLTO 800ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851123212038', '-', '1', '1', 'M-150 150 ML BOTOL', 'M-150 150 ML BOTOL', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '0', '0');
INSERT INTO mstock VALUES ('8993053111149', '-', '1', '1', 'PASEO ELEGANT 200 SHEET 2 PLY', 'PASEO ELEGANT 200 SHEET 2 PLY', '100', '10002003', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('578', '-', '1', '1', 'DUPA PREMIUM AGARBATT PA-805', 'DUPA PREMIUM AGARBATT PA-805', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013532180', '-', '1', '1', 'PENGHAPUS BIG 4B 9402', 'PENGHAPUS BIG 4B 9402', '100', '10002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997014312347', '-', '1', '1', 'BUKU FOLIO  KAS 2 KOLOM 100', 'BUKU FOLIO  KAS 2 KOLOM 100', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997979087106', '-', '1', '1', 'BUKU KUARTO 100', 'BUKU KUARTO 100', '100', '11001001', 'BUKU', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('696', '-', '1', '1', 'ASTRO LIQUID GLUE FOR PAPER', 'ASTRO LIQUID GLUE FOR PAPER', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('697', '-', '1', '1', 'YOEKER LIQUID ADHESIVE  75ML', 'YOEKER LIQUID ADHESIVE  75ML', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('698', '-', '1', '1', 'SAPU BULU AYAM', 'SAPU BULU AYAM', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997012665056', '-', '1', '1', 'MIYAKO SELANG GAS 1,8 M', 'MIYAKO SELANG GAS 1,8 M', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('699', '-', '1', '1', 'SENTER LED @AOKI PREMIUM  AK-1000', 'SENTER LED @AOKI PREMIUM  AK-1000', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6946723408430', '-', '1', '1', 'SENTER LED @AOKI PREMIUM  AK-1000', 'SENTER LED @AOKI PREMIUM  AK-1000', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('700', '-', '1', '1', 'MEIWA MA-813', 'MEIWA MA-813', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('701', '-', '1', '1', 'AOKI PREMIUM AK-3366', 'AOKI PREMIUM AK-3366', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('702', '-', '1', '1', 'POWER SUPPLY VC-808', 'POWER SUPPLY VC-808', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('703', '-', '1', '1', 'MASKO IB/OB', 'MASKO IB/OB', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('704', '-', '1', '1', 'YUNDAI PF-200', 'YUNDAI PF-200', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('705', '-', '1', '1', 'KISEKI  AMAZING CK-388', 'KISEKI  AMAZING CK-388', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('707', '-', '1', '1', 'VECTRA AUTOMATIC POWER STARTING N 1500', 'VECTRA AUTOMATIC POWER STARTING N 1500', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('708', '-', '1', '1', 'VECTRA AUTOMATIC POWER STARTING N 1000', 'VECTRA AUTOMATIC POWER STARTING N 1000', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997022640906', '-', '1', '1', 'BUKU BEBO 42 - SWRW5', 'BUKU BEBO 42 - SWRW5', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997022640715', '-', '1', '1', 'BUKU TULIS KARAKTER 38', 'BUKU TULIS KARAKTER 38', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('010', '-', '1', '1', 'BERAS SUPER MAMA 5KG', 'BERAS SUPER MAMA 5KG', '100', '10001001', 'KARUNG', '-', '0', '0', '0.00', '0', '0', '1', '62');
INSERT INTO mstock VALUES ('8999909000544', '-', '1', '1', 'MARLBORO FILTER BLACK', 'MARLBORO FILTER BLAK', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '123');
INSERT INTO mstock VALUES ('8992761141073', '-', '1', '1', 'NUTRIB00ST RASA JERUK 750ML', 'NUTRIB00ST RASA JERUK 750ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761141080', '-', '1', '1', 'NUTRIBOOS  RASA   STROBERI 750 ML', 'NUTRIBOOS  RASA   STROBERI 750 ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761128319', '-', '1', '1', 'REFRESH  RASA  JERUK  1,2 LTR', 'REFRESH  RASA  JERUK  1,2 LTR', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902264024353', '-', '1', '1', 'LIFE FRESH  ROSE STICKS', 'LIFE FRESH  ROSE STICKS', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901031029744', '-', '1', '1', 'GOPURAM  TULASI STICKS', 'GOPURAM  TULASI STICKS', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901751406191', '-', '1', '1', 'CYCLE  KRISHNA B STICKS', 'CYCLE  KRISHNA B STICKS', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8902240006984', '-', '1', '1', 'SHASHI  SENSE  STIKS ', 'SHASHI  SENSE  STIKS ', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8904227301846', '-', '1', '1', 'ZED BLACK 3 IN 1 PREMIUM INSENSE STICK', 'ZED BLACK 3 IN 1 PREMIUM INSENSE STICK', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102020459', '-', '1', '1', 'SIKAT GIGI FORMULA SOFT TRENDY', 'SIKAT GIGI FORMULA SOFT TRENDY', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325949', '-', '1', '1', 'STELLA AC FRESHENER ORANGE 80GR', 'STELLA AC FRESHENER ORANGE 80GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325017', '-', '1', '1', 'STELLA BATHROOM PASSION RED 70GR', 'STELLA BATHROOM PASSION RED 70GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325963', '-', '1', '1', 'STELLA AC FRESHENER LEMON 80GR', 'STELLA AC FRESHENER LEMON 80GR', '100', '10002003', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745325031', '-', '1', '1', 'STELLA BATHROOM COOL BLUE 70GR', 'STELLA BATHROOM COOL BLUE 70GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6944284618510', '-', '1', '1', 'OPPO F1S 64GB GOLD', 'OPPO F1S 64GB GOLD', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6944284617865', '-', '1', '1', 'OPPO A57', 'OPPO  A57', '100', '11002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997021870052', '-', '1', '1', 'FRESHCARE GREEN TEA 10ML', 'FRESHCARE GREEN TEA 10ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('893', '-', '1', '1', 'KOREK BOLA FORTIS FT-800', 'KOREK BOLA FORTIS FT-800', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('237', '-', '1', '1', 'KOREK GAS M2000 MN938K BARA', 'KOREK GAS M2000 MN938K BARA', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6956953517116', '-', '1', '1', 'ESELON GEL PEN ES-711', 'ESELON GEL PEN ES-711', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686611625', '-', '1', '1', 'QTELA SINGKONG BARBEQUE 14GR', 'QTELA SINGKONG BARBEQUE 14GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '178');
INSERT INTO mstock VALUES ('8997016370178', '-', '1', '1', 'MIRANDA HC-13 ROSE PURPLE', 'MIRANDA HC-13 ROSE PURPLE', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016370352', '-', '1', '1', 'MIRANDA MC-5 PINK', 'MIRANDA MC-5 PINK', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522178', '-', '1', '1', 'SHINZUI BODY SCRUB HANA 120GR', 'SHINZUI BODY SCRUB HANA 120GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102022446', '-', '1', '1', 'SIKAT GIGI FORMULA SOFT', 'SIKAT GIGI FORMULA SOFT', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991111153049', '-', '1', '1', 'LISTERINE ZERO 250ML', 'LISTERINE ZERO 250ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946522215', '-', '1', '1', 'SHINZUI BODY SCRUB KENSIN 120GR', 'SHINZUI BODY SCRUB KENSIN 120GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908214805', '-', '1', '1', 'MARINA RICH MOISTURIZING 200ML', 'MARINA RICH MOISTURIZING 200ML', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999908060907', '-', '1', '1', 'MARINA PROTECTS & CARES 200ML', 'MARINA PROTECTS & CARES 200ML', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026011', '-', '1', '1', 'DETTOL REFILL FRESH BODY WASH 250ML', 'DETTOL REFILL FRESH BODY WASH 250ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752011057', '-', '1', '1', 'VIT MINERAL 1500ML', 'VIT MINERAL 1500ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '72');
INSERT INTO mstock VALUES ('8999999719418', '-', '1', '1', 'VASELINE UV LIGHTENING B3 200ML', 'VASELINE UV LIGHTENING B3 200ML', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727005128', '-', '1', '1', 'MENS BIORE WHITE ENERGY 40GR', 'MENS BIORE WHITE ENERGY 40GR', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304009181', '-', '1', '1', 'GARNIER MENS TURBOLIGHT 50ML', 'GARNIER MENS TURBOLIGHT 50ML', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999056858', '-', '1', '1', 'PONDS WHITE BEAUTY DAY CREAM 40GR', 'PONDS WHITE BEAUTY DAY CREAM 40GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417212260', '-', '1', '1', 'ESKULIN COLOGNE GEL SATURDAY 100ML', 'ESKULIN COLOGNE GEL SATURDAY 100ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992727005104', '-', '1', '1', 'MENS BIORE COOL OIL CLEAR 40GR', 'MENS BIORE COOL OIL CLEAR 40GR', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4800888157973', '-', '1', '1', 'VASELINE MEN HEALTHY WHITE 50ML', 'VASELINE MEN HEALTHY WHITE 50ML', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999034023', '-', '1', '1', 'VASELINE ANTI ACNE 50GR', 'VASELINE ANTI ACNE 50GR', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999059934', '-', '1', '1', 'PONDS AGE MIRACLE NIGHT CREAM 10GR', 'PONDS AGE MIRACLE NIGHT CREAM 10GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851932181853', '-', '1', '1', 'PONDS FLAWLESS WHITE DAY CREAM 10GR', 'PONDS FLAWLESS WHITE DAY CREAM 10GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999059903', '-', '1', '1', 'PONDS AGE MIRACLE DAY CREAM SPF 18 10GR', 'PONDS AGE MIRACLE DAY CREAM SPF 18 10GR', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999719395', '-', '1', '1', 'VASELINE UV LIGHTENING B3 100ML', 'VASELINE UV LIGHTENING B3 100ML', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400886', '-', '1', '1', 'PENTENE HAIR FALL CONTROL 170ML', 'PENTENE HAIR FALL CONTROL 170ML', '100', '11001009', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013530131', '-', '1', '1', 'BUSINESS FILE 8804 MAP PLASTIK', 'BUSINESS FILE 8804 MAP PLASTIK', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994742927102', '-', '1', '1', 'BENEX LABELA TK LEVER ARCH FILE', 'BENEX LABELA TK LEVER ARCH FILE', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013532494', '-', '1', '1', 'BIG BOX FILE PLASTIK ART 7003', 'BIG BOX FILE PLASTIK ART 7003', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('200', '-', '1', '1', 'STOFMAP FOLIO KERTAS BIASA ALL COLOR', 'STOFMAP FOLIO KERTAS BIASA ALL COLOR', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995106304829', '-', '1', '1', 'BAZIC STEMPEL PELAT BC-68', 'BAZIC STEMPEL PELAT BC-68', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999818497404', '-', '1', '1', 'SUPER FIX WATER GLUE 40ML', 'SUPER FIX WATER GLUE 40ML', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES (',4902870775667', '-', '1', '1', 'STAPLER TOKYO DESIGN PURPLE HD-10', 'STAPLER TOKYO DESIGN PURPLE HD-10', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902870775711', '-', '1', '1', 'STAPLER TOKYO DESIGN SKY BLUE HD-10', 'STAPLER TOKYO DESIGN SKY BLUE HD-10', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('021200189555', '-', '1', '1', 'POST IT NOTES 656 100 SHEETS', 'POST IT NOTES 656 100 SHEETS', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4006381333658', '-', '1', '1', 'STABILO BOSS ORIGINAL 70/40 MERAH MUDA', 'STABILO BOSS ORIGINAL 70/40 MERAH MUDA', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129739012', '-', '1', '1', 'SNOWMAN S-1 0.7MM BLACK / PCS', 'SNOWMAN S-1 0.7MM BLACK / PCS', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10200001', '-', '1', '1', 'FASTER W500 SPIDOL WHITEBOARD / PCS', 'FASTER W500 SPIDOL WHITEBOARD / PCS', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('6931190718571', '-', '1', '1', 'TRIFELO BP-317A TABLE', 'TRIFELO BP-317A TABLE', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10200002', '-', '1', '1', 'FASTER C-800 PEN', 'FASTER C-800 PEN', '100', '30201020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8995106302009', '-', '1', '1', 'BAZIC BC7 FINE BLUE PEN / PCS', 'BAZIC BC7 FINE BLUE PEN / PCS', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10200003', '-', '1', '1', 'FASTER 0.5 MECHANCIAL PENCIL ', 'FASTER 0.5 MECHANCIAL PENCIL ', '100', '30201020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8888645301759', '-', '1', '1', 'BIC PEN 4 COLOR IN 1 PEN', 'BIC PEN 4 COLOR IN 1 PEN', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993988281146', '-', '1', '1', 'JOYKO GP-189 OVAL GEL 0.5MM', 'JOYKO GP-189 OVAL GEL 0.5MM', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10200004', '-', '1', '1', 'PILOT BPT-P BLUE PEN', 'PILOT BPT-P BLUE PEN', '100', '30201020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('10200005', '-', '1', '1', 'PILOT BPRK-10M PEN ALL COLOR', 'PILOT BPRK-10M PEN ALL COLOR', '100', '30201020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8993988282044', '-', '1', '1', 'JOYKO GEL PEN JK-100NT 0.5MM BLACK', 'JOYKO GEL PEN JK-100NT 0.5MM BLACK', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993988065197', '-', '1', '1', 'YOEKER TRIGONAL CLIPS NO.3', 'YOEKER TRIGONAL CLIPS NO.3', '100', '30201020', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('1103820010279', '-', '1', '1', 'STANDARD AE7 ZYRCON BALL 0.38', 'STANDARD AE7 ZYRCON BALL 0.38', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10200006', '-', '1', '1', 'SPIDOL HITAM KECIL SNOWMAN MAKER JAPAN ', 'SPIDOL HITAM KECIL SNOWMAN MAKER JAPAN ', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4970129750017', '-', '1', '1', 'SNOWMAN V-6 0.7 CRYSTAL SERIES BLACK /PCS', 'SNOWMAN V-6 0.7 CRYSTAL SERIES BLACK /PCS', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997013530254', '-', '1', '1', 'BIG 2B PENSIL 900 SERIES / PCS', 'BIG 2B PENSIL 900 SERIES / PCS', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10300001', '-', '1', '1', 'CARE BEARS KENKO CB-01 CORRECTION PEN', 'CARE BEARS KENKO CB-01 CORRECTION PEN', '100', '30201030', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('100325298882', '-', '1', '1', 'PENGGARIS MICROTOP 30CM TN07-30MT', 'PENGGARIS MICROTOP 30CM TN07-30MT', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4974052864704', '-', '1', '1', 'ARTLINE MARKET 12 COLOUR EK-316', 'ARTLINE MARKET 12 COLOUR EK-316', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6956154300043', '-', '1', '1', 'MINI TWIST CRAYONS 12 ', 'MINI TWIST CRAYONS 12 ', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997021650029', '-', '1', '1', 'WATER COLOUR NO 120 12 COLOUR MR. LOVE GUITAR ', 'WATER COLOUR NO 120 12 COLOUR MR. LOVE GUITAR', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997006400182', '-', '1', '1', 'MEME CRAYON 12 COLOUR ', 'MEME CRAYON 12 COLOUR ', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997006400199', '-', '1', '1', 'MEME CRAYON 18 OIL PASTEL ', 'MEME CRAYON 18 OIL PASTEL', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998958752282', '-', '1', '1', 'HEPI POP 1 OIL PASTEL 18 COLOUR HP-18C', 'HEPI POP 1 OIL PASTEL 18 COLOUR HP-18C', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995026902419', '-', '1', '1', 'PASCOLA 12 OIL PASTEL P S 12C', 'PASCOLA 12 OIL PASTEL P S 12C', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8693155388988', '-', '1', '1', 'AOURA CRAYON 12 OIL PASTER', 'AOURA CRAYON 12 OIL PASTER', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9555684606365', '-', '1', '1', 'FABER CASTELL DUST FREE PENGHAPUS 187296', 'FABER CASTELL DUST FREE PENGHAPUS 187296', '100', '30201030', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8866250002117', '-', '1', '1', 'YOEKER BINDER CLIPS NO 200 41MM', 'YOEKER BINDER CLIPS NO 200 41MM', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8866250002155', '-', '1', '1', 'YOEKER BINDER CLIPS NO 260 51MM', 'YOEKER BINDER CLIPS NO 260 51MM', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129732518', '-', '1', '1', 'SNOWMAN WHITE BOARD MARKING INK WBI-20 BG-12', 'SNOWMAN WHITE BOARD MARKING INK WBI-20 BG-12', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6920001650001', '-', '1', '1', 'GUNTING M2000 SM-A165', 'GUNTING M2000 SM-A165', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901057303972', '-', '1', '1', 'KANGARO STAPLES TP-10/Z', 'KANGARO STAPLES TP-10/Z', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901057301145', '-', '1', '1', 'KANGARO STAPLES TP-8/Y', 'KANGARO STAPLES TP-8/Y', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389247013', '-', '1', '1', 'AMPLOP POWER SEAL PAPERLINE 110X230 MM 80 GSM', 'AMPLOP POWER SEAL PAPERLINE 110X230 MM 80 GSM', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995106305451', '-', '1', '1', 'BAZIC STAMP PAD NO. 451', 'BAZIC STAMP PAD NO. 451', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902870762131', '-', '1', '1', 'STAPLES MAX NO 10-1M', 'STAPLES MAX NO 10-1M', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6940572811274', '-', '1', '1', 'KRAYON HELLO KITTY 12 COLOR TWIST', 'KRAYON HELLO KITTY 12 COLOR TWIST', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997006400168', '-', '1', '1', 'KATANA CRAYON 277589 12 COLOR', 'KATANA CRAYON 277589 12 COLOR', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997006400243', '-', '1', '1', 'APIK CRAYON OIL PASTEL 12 COLOR', 'APIK CRAYON OIL PASTEL 12 COLOR', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998952005582', '-', '1', '1', 'OLEAN CITY CORRECTION FLUID OCF-101A', 'OLEAN CITY CORRECTION FLUID OCF-101A', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998838060018', '-', '1', '1', 'KENKO CUTTER L-500', 'KENKO CUTTER L-500 KOTAK', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993988355502', '-', '1', '1', 'JOYKO DIE PLATE DATER S-68 STAMP', 'JOYKO DIE PLATE DATER S-68 STAMP', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6913505888186', '-', '1', '1', 'DOMPET DAN ALAT TULIS LNGK J&K 8818', 'DOMPET DAN ALAT TULIS LNGK J&K 8818', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997006400069', '-', '1', '1', 'ESELON WHITEBOARD ERASER MAGNET', 'ESELON WHITEBOARD ERASER MAGNET', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6955929400254', '-', '1', '1', 'DAIMARSE PENCIL SHARPENER DMS-025', 'DAIMARSE PENCIL SHARPENER DMS-025', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('2332782742631', '-', '1', '1', 'ENTER PENGHAPUS WHITE BOARD WB-802', 'ENTER PENGHAPUS WHITE BOARD WB-802', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4971850089155', '-', '1', '1', 'CASIO CALCULATOR DH-16-BK', 'CASIO CALCULATOR DH-16-BK', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994292311444', '-', '1', '1', 'GUNINDO KOTAK PENCIL PENGGARIS PCD', 'GUNINDO KOTAK PENCIL PENGGARIS PCD', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200001', '-', '1', '1', 'TALI PRAMUKA  CAP DUA PULUH DUA BESAR', 'TALI PRAMUKA  CAP DUA PULUH DUA BESAR', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200002', '-', '1', '1', 'URUTAN UPACARA MEMANDIKAN MAYAT - DRS GEDE SARA', 'URUTAN UPACARA MEMANDIKAN MAYAT - DRS GEDE SARA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200003', '-', '1', '1', 'PEMANGKU JUGA MANUSIA - JRO MANGKU OKA', 'PEMANGKU JUGA MANUSIA - JRO MANGKU OKA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200004', '-', '1', '1', 'GEGURITAN AJI PALAYONAN', 'GEGURITAN AJI PALAYONAN', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200005', '-', '1', '1', 'DANA PUNIA DAN PENEBUSAN DOSA - SUYADNYA', 'DANA PUNIA DAN PENEBUSAN DOSA - SUYADNYA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200006', '-', '1', '1', 'LONTAR PENGEJUKAN LEYAK - WAYAN SUMAWA', 'LONTAR PENGEJUKAN LEYAK - WAYAN SUMAWA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9759797220184', '-', '1', '1', 'ASANA PRANAYAMA MUDRA BANDHA ', 'ASANA PRANAYAMA MUDRA BANDHA ', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200008', '-', '1', '1', 'GEGURITAN JNANA SIDDHI - WAYAN MUDAYASA', 'GEGURITAN JNANA SIDDHI - WAYAN MUDAYASA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200009', '-', '1', '1', 'KANDA PAT MADU MUKA KETUT NANTRA', 'KANDA PAT MADU MUKA KETUT NANTRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200010', '-', '1', '1', 'KANDA PAT CATUR SANAK KETUT NANTRA', 'KANDA PAT CATUR SANAK KETUT NANTRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200011', '-', '1', '1', 'KANDA PAT RARE KETUT NANTRA', 'KANDA PAT RARE KETUT NANTRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200012', '-', '1', '1', 'TADAH KALA - WAYAN YENDRA', 'TADAH KALA - WAYAN YENDRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200013', '-', '1', '1', 'ARTI MIMPI MENURUT HINDU - AYU RINI', 'ARTI MIMPI MENURUT HINDU - AYU RINI', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200014', '-', '1', '1', 'KANDA PAT PENGARADAN - KETUT NATRA', 'KANDA PAT PENGARADAN - KETUT NATRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200015', '-', '1', '1', 'TRI SANDHYA SEMBAHYANG DAN BERDOA - MADE TITIB', 'TRI SANDHYA SEMBAHYANG DAN BERDOA - MADE TITIB', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9786022043539', '-', '1', '1', 'ANEKA RUPA GENDING BALI - GEDE PASEK', 'ANEKA RUPA GENDING BALI - GEDE PASEK', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797225360', '-', '1', '1', 'BERBAGAI JALAN MEDITASI - DEWI PARAMITHA', 'BERBAGAI JALAN MEDITASI - DEWI PARAMITHA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9786022043737', '-', '1', '1', 'POKOK POKOK AJARAN AGAMA - KETUT WIANA', 'POKOK POKOK AJARAN AGAMA - KETUT WIANA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200019', '-', '1', '1', 'MANTRA DAN BELAJAR ANEKA MANTRA - WAYAN WATRA', 'MANTRA DAN BELAJAR ANEKA MANTRA - WAYAN WATRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200020', '-', '1', '1', 'TATANAN UPAKARA LAN UPACARA MANUSA YAJNA - PANDHITA MPU JAYA', 'TATANAN UPAKARA LAN UPACARA MANUSA YAJNA - PANDHITA MPU JAYA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200021', '-', '1', '1', 'LEAK MEYOGA DIKALA PURNAMA - YUDHIANTARA', 'LEAK MEYOGA DIKALA PURNAMA - YUDHIANTARA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200022', '-', '1', '1', 'KALA TATTWA - WAYAN DUNIA', 'KALA TATTWA - WAYAN DUNIA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200023', '-', '1', '1', 'KIDUNG TANTRI - MADE SUARSA', 'KIDUNG TANTRI - MADE SUARSA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200024', '-', '1', '1', 'ATMAN BRAHMAN AIKYAM - SUHARDANA', 'ATMAN BRAHMAN AIKYAM - SUHARDANA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200025', '-', '1', '1', 'AGAMA VEDA & FILSAFAT - NYOMAN ANANDA', 'AGAMA VEDA & FILSAFAT - NYOMAN ANANDA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200026', '-', '1', '1', 'SVARGA, NARAKA, MOKSA - MADE TITIB', 'SVARGA, NARAKA, MOKSA - MADE TITIB', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200027', '-', '1', '1', 'NGULATI DEWASA LAN WARIGA - MANGKU PULASARI', 'NGULATI DEWASA LAN WARIGA - MANGKU PULASARI', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200028', '-', '1', '1', 'TEKNIS PELAKSANAAN DHARMA WACANA - TIM PENYUSUN ', 'TEKNIS PELAKSANAAN DHARMA WACANA - TIM PENYUSUN ', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200029', '-', '1', '1', 'DUA WARISAN LELUHUR MEMBERANTAS KEMELARATAN - WAYAN SUWENA', 'DUA WARISAN LELUHUR MEMBERANTAS KEMELARATAN - WAYAN SUWENA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200030', '-', '1', '1', 'IBU DURGA KEKUATAN & KEAJAIBAN - ARIPTA WIBAWA', 'IBU DURGA KEKUATAN & KEAJAIBAN - ARIPTA WIBAWA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200031', '-', '1', '1', 'BABAD NUSA PENIDA - MANGKU MADE BUDA', 'BABAD NUSA PENIDA - MANGKU MADE BUDA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200032', '-', '1', '1', 'FUNGSI DAN MANFAAT RERAJAHAN - GEDE JAMAN', 'FUNGSI DAN MANFAAT RERAJAHAN - GEDE JAMAN', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200033', '-', '1', '1', 'IBU GANGGA - MAHENDRA MITTAL', 'IBU GANGGA - MAHENDRA MITTAL', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9789797226046', '-', '1', '1', 'PROSES KREMASI ESENSI PERJALANAN ATMA MENUJU MOKSA - KOBALEN', 'PROSES KREMASI ESENSI PERJALANAN ATMA MENUJU MOKSA - KOBALEN', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200035', '-', '1', '1', 'MEMAHAMI KONSEP SIWA-BUDHA DI BALI - ARBAWA TANJUNG', 'MEMAHAMI KONSEP SIWA-BUDHA DI BALI - ARBAWA TANJUNG', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9786022040958', '-', '1', '1', 'DAMPAK PUASA TERHADAP KEHIDUPAN - MADE SUYADNYA', 'DAMPAK PUASA TERHADAP KEHIDUPAN - MADE SUYADNYA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797228514', '-', '1', '1', 'TAT TWAM ASI -KOMANG SUHARDANA', 'TAT TWAM ASI -KOMANG SUHARDANA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797229214', '-', '1', '1', 'LANGKAH-LANGKAH EMAS UNTUK HIDUP - SAYANG YUPARDHI', 'LANGKAH-LANGKAH EMAS UNTUK HIDUP - SAYANG YUPARDHI', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200039', '-', '1', '1', 'AJARAN WEDA DALAM FILOSOFI HINDU - MADE DANU', 'AJARAN WEDA DALAM FILOSOFI HINDU - MADE DANU', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9789797226251', '-', '1', '1', 'RAHASIA PIKIRAN - N.KASTURI', 'RAHASIA PIKIRAN - N.KASTURI', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200041', '-', '1', '1', 'BABAD RAJA-RAJA BALI - MANGKU PULASARI', 'BABAD RAJA-RAJA BALI - MANGKU PULASARI', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9719797222748', '-', '1', '1', 'BERBISNIS MENURUT AGAMA HINDU - KETUT WIANA', 'BERBISNIS MENURUT AGAMA HINDU - KETUT WIANA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200043', '-', '1', '1', 'DHARMA, TAPA DAN YOGA - KETUT SUBAGIASTA', 'DHARMA, TAPA DAN YOGA - KETUT SUBAGIASTA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200044', '-', '1', '1', 'KIDUNG PANCA YAJNA - PRIMA SURYA WIJAYA', 'KIDUNG PANCA YAJNA - PRIMA SURYA WIJAYA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200045', '-', '1', '1', 'DOSA MENURUT HINDU - AYU RINI', 'DOSA MENURUT HINDU - AYU RINI', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200046', '-', '1', '1', 'PEDOMAN SEMBAHYANG UMAT HINDU - SUHARDANA', 'PEDOMAN SEMBAHYANG UMAT HINDU - SUHARDANA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200047', '-', '1', '1', 'BHUTA YAJNA - PUTU SURAYIN', 'BHUTA YAJNA - PUTU SURAYIN', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200048', '-', '1', '1', 'GEGURITAN BEGAWAN BISMA - WAYAM PAMIT', 'GEGURITAN BEGAWAN BISMA - WAYAM PAMIT', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200049', '-', '1', '1', 'ARTI DAN FUNGSI SARANA PERSEMBAHYANGAN - WIANA', 'ARTI DAN FUNGSI SARANA PERSEMBAHYANGAN - WIANA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200050', '-', '1', '1', 'TANTRA DAN SEKS - YUNIARTHI', 'TANTRA DAN SEKS - YUNIARTHI', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200051', '-', '1', '1', 'REFORMASI AGAMA HINDU 1950-1959', 'REFORMASI AGAMA HINDU 1950-1959', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200052', '-', '1', '1', 'PANGAYAM AYAMAN - MANGKU PULASARI', 'PANGAYAM AYAMAN - MANGKU PULASARI', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200053', '-', '1', '1', 'POKOK-POKOK WARIGA - SUPARTA ARDHANA', 'POKOK-POKOK WARIGA - SUPARTA ARDHANA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200054', '-', '1', '1', 'TATWA CARITA YAJNA - ARHANA RIYASA', 'TATWA CARITA YAJNA - ARHANA RIYASA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200055', '-', '1', '1', 'TIGA PULUH TUGA HAL YANG DAPAT MEMPENGARUHI - RAKA MAS', 'TIGA PULUH TUGA HAL YANG DAPAT MEMPENGARUHI - RAKA MAS', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200056', '-', '1', '1', 'GEGURITAN WATWA CARITA YAJNA I - ARDHANA RIYASA', 'GEGURITAN WATWA CARITA YAJNA I - ARDHANA RIYASA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200057', '-', '1', '1', 'HUKUM ADAT - NENGAH LESTAWI', 'HUKUM ADAT - NENGAH LESTAWI', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200058', '-', '1', '1', '300 MASALAH DALAM UNTAIAN SMS TERJAWAB DENGAN GAYATRI MANTRA - NYOMAN ', '300 MASALAH DALAM UNTAIAN SMS TERJAWAB DENGAN GAYATRI MANTRA - NYOMAN PUTRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200059', '-', '1', '1', 'MANUSA YAJNA - PUTU SURAYIN', 'MANUSA YAJNA - PUTU SURAYIN', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200060', '-', '1', '1', 'BANTEN SESAYUT - MPU JAYA WIJAYANANDA', 'BANTEN SESAYUT - MPU JAYA WIJAYANANDA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200061', '-', '1', '1', 'TATA CARA RITUAL DAN TRADISI HINDU - KETUT DONDER', 'TATA CARA RITUAL DAN TRADISI HINDU - KETUT DONDER', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200062', '-', '1', '1', 'BENARKAH DI HINDU ADA MOKSA - NYOMAN PUTRA', 'BENARKAH DI HINDU ADA MOKSA - NYOMAN PUTRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9786022041443', '-', '1', '1', 'DANGHYANG NIRATHA 1453-1520 - WAYAN SUADNYANA', 'DANGHYANG NIRATHA 1453-1520 - WAYAN SUADNYANA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200064', '-', '1', '1', 'MEJEJAHITAN DAN METANDING EDISI 2 - NIKEN TAMBANG ', 'MEJEJAHITAN DAN METANDING EDISI 2 - NIKEN TAMBANG ', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200065', '-', '1', '1', 'PINDAH AGAMA MENGAPA? - GEDE ASTAWA', 'PINDAH AGAMA MENGAPA? - GEDE ASTAWA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200066', '-', '1', '1', 'KALE BADEG - GDE SARA SASTRA', 'KALE BADEG - GDE SARA SASTRA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9789797227623', '-', '1', '1', 'PITRA PUJA NGABEN LAN NYEKAH - PASEK SWASTIKA', 'PITRA PUJA NGABEN LAN NYEKAH - PASEK SWASTIKA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200068', '-', '1', '1', 'GEGURITAN PAWIWAHAN - KETUT SUDENIA', 'GEGURITAN PAWIWAHAN - KETUT SUDENIA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200069', '-', '1', '1', 'TERAPI LAUT - GUS JAPA', 'TERAPI LAUT - GUS JAPA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200070', '-', '1', '1', 'KIDUNG YADNYA -  PUTU BUNGLI', 'KIDUNG YADNYA -  PUTU BUNGLI', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9789797227647', '-', '1', '1', 'RENDAH HATI, BAHAGIA & BIJAK - SWAMI RAMA', 'RENDAH HATI, BAHAGIA & BIJAK - SWAMI RAMA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9786022042914', '-', '1', '1', 'AKU INGIN KEBAHAGIAAN - WAYAN WIDANA', 'AKU INGIN KEBAHAGIAAN - WAYAN WIDANA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9786022043942', '-', '1', '1', 'BERGURU PADA LANGIT DAN BUMI - MUSTIKA', 'BERGURU PADA LANGIT DAN BUMI - MUSTIKA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797229078', '-', '1', '1', 'AHIMSA & VEGETARIAN - KOMANG SUHARDANA', 'AHIMSA & VEGETARIAN - KOMANG SUHARDANA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797227746', '-', '1', '1', 'DASAR - DASAR BUDI PEKERTI - IJDAMRAH TAKWAN', 'DASAR - DASAR BUDI PEKERTI - IJDAMRAH TAKWAN', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9786022044901', '-', '1', '1', 'AKU ANAK HINDU - AYU RINI', 'AKU ANAK HINDU - AYU RINI', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200077', '-', '1', '1', 'GEGURITAN TATWA CARITA YAJNA II -  ARDHANA RIYASA', 'GEGURITAN TATWA CARITA YAJNA II -  ARDHANA RIYASA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200078', '-', '1', '1', 'DHARMA JALAN MENUJU KEBAHAGIAAN & MOKSA - SUHARDANA', 'DHARMA JALAN MENUJU KEBAHAGIAAN & MOKSA - SUHARDANA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9789797224066', '-', '1', '1', 'MANGGALA UPACARA - SUJANA & SUSILA', 'MANGGALA UPACARA - SUJANA & SUSILA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797225100', '-', '1', '1', 'PUJA TRI SANDHYA - SUHARDANA', 'PUJA TRI SANDHYA - SUHARDANA', '100', '30205010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797221348', '-', '1', '1', 'KIDUNG PANCA YAJNA - PARAMITHA', 'KIDUNG PANCA YAJNA - PARAMITHA', '100', '30205010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9797972233710', '-', '1', '1', 'BERPIKIR BENAR DASAR MENCAPAI KEBAHAGIAAN - SWAMI', 'BERPIKIR BENAR DASAR MENCAPAI KEBAHAGIAAN - SWAMI', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200088', '-', '1', '1', 'PANCA DHATU ATOM, ATMA DAN ANIMISME - DONDER', 'PANCA DHATU ATOM, ATMA DAN ANIMISME - DONDER', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200081', '-', '1', '1', 'MENINGKATKAN PROFIT PERUSAHAAN MELAUI METODA PEMBINAAN SUMBER DAYA MAN', 'MENINGKATKAN PROFIT PERUSAHAAN MELAUI METODA PEMBINAAN SUMBER DAYA MANUSIA - RAKA MAS', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200082', '-', '1', '1', 'BERBAKTI PADA LELUHUR - KETUT WIANA', 'BERBAKTI PADA LELUHUR - KETUT WIANA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200083', '-', '1', '1', 'RAHASIA HIDUP - MAKMUR & BERKELIMPAHAN - MADE TITIB', 'RAHASIA HIDUP - MAKMUR & BERKELIMPAHAN - MADE TITIB', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200084', '-', '1', '1', 'TATTWA HINDU - SUBAGIASTA', 'TATTWA HINDU - SUBAGIASTA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200085', '-', '1', '1', 'TUNTUNAN SUSILA UNTUK MERAIH HIDUP BAHAGIA - RAKA MAS', 'TUNTUNAN SUSILA UNTUK MERAIH HIDUP BAHAGIA - RAKA MAS', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200086', '-', '1', '1', 'AGAMA HINDU - WAYAN SURABA', 'AGAMA HINDU - WAYAN SURABA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50200087', '-', '1', '1', 'NGALINGGIHANG DEWA HYANG - SINGGIN WIKARMA', 'NGALINGGIHANG DEWA HYANG - SINGGIN WIKARMA', '100', '30205020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('9789797224035', '-', '1', '1', 'BABAD PULASARI - MANGKU PULASARI', 'BABAD PULASARI - MANGKU PULASARI', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9786022041016', '-', '1', '1', 'LONTAR JAJIMATAN - MANGKU PULASARI', 'LONTAR JAJIMATAN - MANGKU PULASARI', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797221393', '-', '1', '1', 'PEDOMAN SEMBAHYANG UMAT HINDU - SUHARDANA', 'PEDOMAN SEMBAHYANG UMAT HINDU - SUHARDANA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9786022041719', '-', '1', '1', 'MAHA DAHSYAT GAYATRI MANTRA - NYOMAN PUTRA', 'MAHA DAHSYAT GAYATRI MANTRA - NYOMAN PUTRA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9709799044561', '-', '1', '1', 'CARU PELEMAHAN DAN SASIH - SINGGIN WIKARMA', 'CARU PELEMAHAN DAN SASIH - SINGGIN WIKARMA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9779797221202', '-', '1', '1', 'DOA SEHARI-HARI - MPU JAYA WIJAYA', 'DOA SEHARI-HARI - MPU JAYA WIJAYA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9786022040965', '-', '1', '1', 'NGABEN NGELANUS - KETUT SUPARTIKA', 'NGABEN NGELANUS - KETUT SUPARTIKA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9297972208010', '-', '1', '1', 'DUDONAN KARYA - MPU JAYA WIJAYANANDHA', 'DUDONAN KARYA - MPU JAYA WIJAYANANDHA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9789797229467', '-', '1', '1', 'DOA UNTUK ANAK-ANAK HINDU - SURYA WIJAYA', 'DOA UNTUK ANAK-ANAK HINDU - SURYA WIJAYA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9786022044550', '-', '1', '1', 'UPACARA MLASPAS KARANG DENGAN GAYANTRI MANTRA - NYOMAN PUTRA', 'UPACARA MLASPAS KARANG DENGAN GAYANTRI MANTRA - NYOMAN PUTRA', '100', '30205020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389211564', '-', '1', '1', 'MIRAGE HC 005 MJ 200 LEMBAR', 'MIRAGE HC 005 MJ 200 LEMBAR', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50400001', '-', '1', '1', 'KAMUS BHS INGGRIS 42.000', 'KAMUS BHS INGGRIS 42.000', '100', '30205040', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50400002', '-', '1', '1', 'KAMUS BHS INGGRIS 25.000', 'KAMUS BHS INGGRIS 25.000', '100', '30205040', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50400003', '-', '1', '1', 'KAMUS BHS INGGRIS 15.000', 'KAMUS BHS INGGRIS 15.000', '100', '30205040', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('50400004', '-', '1', '1', 'KAMUS BHS INGGRIS 50.000', 'KAMUS BHS INGGRIS 50.000', '100', '30205040', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8991389211519', '-', '1', '1', 'MIRAGE HVS 60 GSM 100 LEMBAR MEDIUM ', 'MIRAGE HVS 60 GSM 100 LEMBAR MEDIUM', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389248041', '-', '1', '1', 'TJIWI KIMIA NOTA KONTAN 25 LMBR 2 PLY', 'TJIWI KIMIA NOTA KONTAN 25 LMBR 2 PLY', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389248027', '-', '1', '1', 'TJIWI KIMIA NOTA KONTAN 50 LMBR 1 PLY', 'TJIWI KIMIA NOTA KONTAN 50 LMBR 1 PLY', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997014312354', '-', '1', '1', 'PAPER STAR BUKU KWITANSI 50 LEMBAR', 'PAPER STAR BUKU KWITANSI 50 LEMBAR', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757203557', '-', '1', '1', 'KIKY HC A6 100 GLOSS', 'KIKY HC A6 100 GLOSS ', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('5536842953990', '-', '1', '1', 'BUKU AGENDA SURAT MASUK & KELUAR FOLIO', 'BUKU AGENDA SURAT MASUK & KELUAR FOLIO', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6931444080355', '-', '1', '1', 'NOTE BOOK QUANXIN', 'NOTE BOOK QUANXIN', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6931444083240', '-', '1', '1', 'NOTE BOOK QIANXIN 90K', 'NOTE BOOK QIANXIN 90K', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757610003', '-', '1', '1', 'KIKY BUKU DIARY 60', 'KIKY BUKU DIARY 60', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('040954060752', '-', '1', '1', 'SWEET HEART DIARY BOOK', 'SWEET HEART DIARY BOOK', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6955327600058', '-', '1', '1', 'TENGDAWEI NOTEBOOK XQ22-138', 'TENGDAWEI NOTEBOOK XQ22-138', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6921931588808', '-', '1', '1', 'BUKU HELLO KITTY  ', 'BUKU HELLO KITTY ', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757013033', '-', '1', '1', 'ART STAR FOLIO KAS 100 3K', 'ART STAR FOLIO KAS 100 3K', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6941985003188', '-', '1', '1', 'BUKU TULIS 64K-318', 'BUKU TULIS 64K-318', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6928827902267', '-', '1', '1', 'BUKU TULIS ANAK NO 72K', 'BUKU TULIS ANAK NO 72K', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6921931585890', '-', '1', '1', 'BUKU TULIS ANAK CARTOON', 'BUKU TULIS ANAK CARTOON', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50500001', '-', '1', '1', 'BUKU TULIS SM PANJANG ', 'BUKU TULIS SM PANJANG ', '100', '30205050', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('6936201314520', '-', '1', '1', 'BUKU TULIS ANAK CARTOON XQ72K-172', 'BUKU TULIS ANAK CARTOON XQ72K-172', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6938345100137', '-', '1', '1', 'BUKU TULIS ANAK 50K-11', 'BUKU TULIS ANAK 50K-11', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757009685', '-', '1', '1', 'KIKY A6 HC BUKU TULIS ANIMAL PARADE', 'KIKY A6 HC BUKU TULIS ANIMAL PARADE', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389211526', '-', '1', '1', 'MIRAGE HVS 60 GSM 100 LMBR', 'MIRAGE HVS 60 GSM 100 LMBR', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6945577381104', '-', '1', '1', 'BUKU DIARY ANAK GEMBOK JQ-110AG', 'BUKU DIARY ANAK GEMBOK JQ-110AG', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757009449', '-', '1', '1', 'BUKU KIKY DIARY ANAK GEMBOK HC A6', 'BUKU KIKY DIARY ANAK GEMBOK HC A6', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4971850902508', '-', '1', '1', 'CASIO GZ-12S', 'CASIO GZ-12S', '100', '30204010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4960999665016', '-', '1', '1', 'CANON KALKULATOR LS-88HI III', 'CANON KALKULATOR LS-88HI III', '100', '30204010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4562195133322', '-', '1', '1', 'CITIZEN SDC-812BN', 'CITIZEN SDC-812BN', '100', '30204010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4960999814285', '-', '1', '1', 'CANON KALKULATOR LS-88HI III PINK', 'CANON KALKULATOR LS-88HI III PINK', '100', '30204010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6936624702140', '-', '1', '1', 'KOTAK ALAT TULIS ANAK BESI', 'KOTAK ALAT TULIS ANAK BESI', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6915324846576', '-', '1', '1', 'MEMORIS STAMP MO07400', 'MEMORIS STAMP MO07400', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993988245025', '-', '1', '1', 'JOYKO MS-55', 'JOYKO MS-55', '100', '30201010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('40100001', '-', '1', '1', 'ACME PELUIT OLAHRAGA', 'ACME PELUIT OLAHRAGA', '100', '30204010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8991389222225', '-', '1', '1', 'DOUBLE FOLIO BERGARIS', 'DOUBLE FOLIO BERGARIS SINAR DUNIA 32X42', '100', '11001002', 'LBR', '-', '0', '0', '0.00', '0', '0', '1', '4');
INSERT INTO mstock VALUES ('60010001', '-', '1', '1', 'BINGKAI 16R 40X50 FOTO MOTIF', 'BINGKAI 16R 40X50 FOTO MOTIF', '100', '30206001', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60010002', '-', '1', '1', 'BINGKAI 10R 20X30 CM FOTO MOTIF', 'BINGKAI 10R 20X30 CM FOTO MOTIF', '100', '30206001', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60010003', '-', '1', '1', 'BINGKAI 8R+ 20X25 CM FOTO MOTIF', 'BINGKAI 8R+ 20X25 CM FOTO MOTIF', '100', '30206001', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60010004', '-', '1', '1', 'BINGKAI 5R 10X15 CM DELTA FOTO MOTIF', 'BINGKAI 5R 10X15 CM DELTA FOTO MOTIF', '100', '30206001', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60010005', '-', '0', '0', 'KERTAS LAMINATING SAKURAI / LEMBAR', 'KERTAS LAMINATING SAKURAI / LEMBAR', '100', '30101003', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4970129727019', '4970129727514', '1', '1', 'SNOWMAN BOARDMARKER BG-12 /LSN', 'SNOWMAN BOARDMARKER BG-12 /LSN', null, null, 'KOTAK', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129004011', '4970129004516', '1', '1', 'SNOWMAN  AG-12 BLACK / LUSIN', 'SNOWMAN  AG-12 BLACK / LUSIN', null, null, 'KOTAK', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129030010', '4970129030515', '1', '1', 'SNOWMAN DRAWING PEN 0.3 / LSN', 'SNOWMAN DRAWING PEN 0.3 / LSN', null, null, 'DOZ', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129032014', '4970129032519', '1', '1', 'SNOWMAN DRAWING PEN 0.7 / LSN', 'SNOWMAN DRAWING PEN 0.7 / LSN', null, null, 'DOZ', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129029014', '4970129029519', '1', '1', 'SNOWMAN DRAWING PEN 0.2 / LSN', 'SNOWMAN DRAWING PEN 0.2 / LSN', null, null, 'DOZ', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129064015', '4970129064510', '1', '1', 'SNOWMAN DRAWING PEN 0.6 / LSN', 'SNOWMAN DRAWING PEN 0.6 / LSN', null, null, 'DOZ', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129063018', '4970129063513', '1', '1', 'SNOWMAN DRAWING PEN 0.4 / LSN', 'SNOWMAN DRAWING PEN 0.4 / LSN', null, null, 'DOZ', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4970129028017', '4970129028512', '1', '1', 'SNOWMAN DRAWING PEN 0.1 / LSN', 'SNOWMAN DRAWING PEN 0.1 / LSN', null, null, 'DOZ', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4005401990079', '4005401171027', '1', '1', 'FABER CASTELL 9000 2B / LSN', 'FABER CASTELL 9000 2B / LSN', null, null, 'BOX', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4007817104798', '4007817104118', '1', '1', 'STAEDTLER PENSIL 2B /LSN', 'STAEDTLER PENSIL 2B /LSN', null, null, 'BOX', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9555684606372', '9555684606365', '1', '1', 'FABER CASTELL DUST FREE / LSN', 'FABER CASTELL DUST FREE / LSN', null, null, 'BOX', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('60010006', '-', '1', '1', 'BINGKAI 12R 30X40 CM FOTO MOTIF', 'BINGKAI 12R 30X40 CM FOTO MOTIF', '100', '30206001', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60010007', '-', '1', '1', 'BINGKAI 20R 50X60 CM FOTO MOTIF', 'BINGKAI 20R 50X60 CM FOTO MOTIF', '100', '30206001', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60010008', '-', '1', '1', 'BINGKAI 8R 15X20 CM POLOS', 'BINGKAI 8R 15X20 CM POLOS', '100', '30206001', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60010009', '-', '1', '1', 'BINGKAI 10R 20X30 CM POLOS', 'BINGKAI 10R 20X30 CM POLOS', '100', '30206001', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020001', '-', '0', '0', 'PAKET FOTO 2X3, 3X4, 4X6 A5 COLOR', 'PAKET FOTO 2X3, 3X4, 4X6 A5 COLOR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020002', '-', '0', '0', 'PRINT 2R FOTO COLOR', 'PRINT 2R FOTO COLOR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020003', '-', '0', '0', 'PRINT 3R FOTO COLOR / LEMBAR', 'PRINT 3R FOTO COLOR / LEMBAR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020004', '-', '0', '0', 'PRINT 10R FOTO COLOR / LEMBAR', 'PRINT 10R FOTO COLOR / LEMBAR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020005', '-', '0', '0', 'PRINT 10R+ FOTO COLOR / LEMBAR', 'PRINT 10R+ FOTO COLOR / LEMBAR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020006', '-', '0', '0', 'PRINT 12R FOTO COLOR / LEMBAR', 'PRINT 12R FOTO COLOR / LEMBAR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020007', '-', '0', '0', 'PRINT 16R FOTO COLOR / LEMBAR', 'PRINT 16R FOTO COLOR / LEMBAR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020008', '-', '0', '0', 'PRINT 20R FOTO COLOR / LEMBAR', 'PRINT 20R FOTO COLOR / LEMBAR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020009', '-', '0', '0', 'PRINT 24R FOTO COLOR / LEMBAR', 'PRINT 24R FOTO COLOR / LEMBAR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020010', '-', '0', '0', 'PRINT 30R FOTO COLOR / LEMBAR', 'PRINT 30R FOTO COLOR / LEMBAR', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020011', '-', '0', '0', 'KARTU NAMA 1 KOTAK + KOTAK', 'KARTU NAMA 1 KOTAK + KOTAK', '100', '30206002', 'PCS', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8991389300145', '8991389220054', '1', '1', 'BUKU TULIS SINAR DUNIA 58 / LS', 'BUKU TULIS SINAR DUNIA 58 / LS', null, null, 'LUSIN', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389300107', '8991389220016', '1', '1', 'BUKU TULIS SINAR DUNIA 38/LS', 'BUKU TULIS SINAR DUNIA 38/LS', null, null, 'LUSIN', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389220627', '-', '0', '1', 'BUKU TULIS SINAR DUNIA 58 LMBR SD 013 SR / PCS', 'BUKU TULIS SINAR DUNIA 58 LMBR SD 013 SR / PCS', '100', '30205050', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389300992', '8991389220627', '1', '1', 'BUKU TULIS SDU EB 58 SR/LS', 'BUKU TULIS SDU EB 58 SR/LS', null, null, 'LUSIN', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389308011', '8991389248010', '1', '1', 'PAPERLINE 1 PLY 50 LBR/ LS', 'PAPERLINE 1 PLY 50 LBR/ LS', null, null, 'LUSIN', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389308035', '8991389248034', '1', '1', 'PAPERLINE 2 PLY 25 SET/LS', 'PAPERLINE 2 PLY 25 SET/LS', null, null, 'LUSIN', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389308028', '8991389248027', '1', '1', 'TJIWI KIMIA NOTA 50LB 2 PLY/LS', 'TJIWI KIMIA NOTA 50LB 2 PLY/LS', null, null, 'LUSIN', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389308042', '8991389248041', '1', '1', 'TJIWI KIMIA NOTA 25LB 2 PLY/LS', 'TJIWI KIMIA NOTA 25LB 2 PLY/LS', null, null, 'LUSIN', '0', '0', '3', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997006400298', '-', '0', '1', 'OPINI GUITAR WATER  COLOUR NO.110 ', 'OPINI GUITAR WATER  COLOUR NO.110 ', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997021650012', '-', '0', '1', 'MR. LOVEGUITAR WATER COLOUR NO 110', 'MR. LOVEGUITAR WATER COLOUR NO 110', '100', '30201020', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10200007', '-', '1', '1', 'OSAMA WATER COLORS NO 110-N', 'OSAMA WATER COLORS NO 110-N', '100', '30201020', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4902870775667', '-', '1', '1', 'STAPLER TOKYO DESIGN LIGHT PURPLE HD-10', 'STAPLER TOKYO DESIGN LIGHT PURPLE HD-10', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('10020001', '-', '0', '0', 'JILID BIASA UKURAN TIPIS (KERTAS COVER+ISOLASI)', 'JILID BIASA UKURAN TIPIS (KERTAS COVER+ISOLASI)', '100', '30101002', 'LEMBAR', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('10020002', '-', '0', '0', 'JILID BIASA UKURAN SEDANG (KERTAS COVER+ISOLASI)', 'JILID BIASA UKURAN SEDANG (KERTAS COVER+ISOLASI)', '100', '30101002', 'LEMBAR', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('10020003', '-', '0', '0', 'JILID BIASA UKURAN TEBAL (KERTAS COVER+ISOLASI)', 'JILID BIASA UKURAN TEBAL (KERTAS COVER+ISOLASI)', '100', '30101002', 'LEMBAR', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('10020004', '-', '0', '0', 'JILID PERMANENT (COVER HITAM PUTIH)', 'JILID PERMANENT (COVER HITAM PUTIH)', '100', '30101002', 'LEMBAR', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('10020005', '-', '0', '0', 'JILID PERMANENT (COVER BERWARNA/FULL COLOR)', 'JILID PERMANENT (COVER BERWARNA/FULL COLOR)', '100', '30101002', 'LEMBAR', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20020001', '-', '0', '0', 'CUS 420i - PRINT HITAM PUTIH', 'CUS 420i - PRINT HITAM PUTIH', '100', '30102002', 'LEMBAR', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20020002', '-', '0', '0', 'OPE 420i - PRINT HITAM PUTIH ', 'OPE 420i - PRINT HITAM PUTIH ', '100', '30102002', 'LEMBAR', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8993988355526', '-', '1', '1', 'JOYKO DATER STAMP D-4 ', 'JOYKO DATER STAMP D-4 ', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('20100025', '-', '1', '1', 'DVD-R GT PRO / PCS', 'DVD-R GT PRO / PCS', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20100026', '-', '1', '1', 'MAP PLASTIK TRANS INTERX FOLDER ALL COLOR', 'MAP PLASTIK TRANS INTERX FOLDER ALL COLOR', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('40110001', '-', '1', '1', 'KALENDER BALI / PCS', 'KALENDER BALI / PCS', '100', '30204011', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20110001', '-', '1', '1', 'MATERAI 6000', 'MATERAI 6000', '100', '30202011', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '63');
INSERT INTO mstock VALUES ('20110002', '-', '1', '1', 'MATERAI 3000', 'MATERAI 3000', '100', '30202011', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70100001', '-', '1', '1', 'BOLA VOLLY MIKASA/MOLTEN', 'BOLA VOLLY MIKASA/MOLTEN', '100', '30207010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70110001', '-', '1', '1', 'MOLTEN TOURNAMENT VOLLEYBALL NET', 'MOLTEN TOURNAMENT VOLLEYBALL NET', '100', '30207011', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70120001', '-', '1', '1', 'PAPAN CATUR KAYU BESAR', 'PAPAN CATUR KAYU BESAR', '100', '30207012', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70120002', '-', '1', '1', 'PAPAN CATUR PLASTIK KECIL', 'PAPAN CATUR PLASTIK KECIL', '100', '30207012', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70110002', '-', '1', '1', 'DOUBLE HAPPINESS TABLE TENNIS', 'DOUBLE HAPPINESS TABLE TENNIS', '100', '30207011', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70110003', '-', '1', '1', 'SHIELD BRAND TABLE TENNIS BAT', 'SHIELD BRAND TABLE TENNIS BAT', '100', '30207011', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20100027', '-', '1', '1', 'BOX FILE PINTER', 'BOX FILE PINTER', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8901057500128', '-', '1', '1', 'KANGARO T-13 13MM 1000 STAPLES', 'KANGARO T-13 13MM 1000 STAPLES', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8901057500340', '-', '1', '1', 'KANGARO T-8 8MM 1000 STAPLES', 'KANGARO T-8 8MM 1000 STAPLES', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9556781401204', '-', '1', '1', 'STAPLES MAX 1210 FA-H/ML 23/10', 'STAPLES MAX 1210 FA-H/ML 23/10', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('70120003', '-', '1', '1', 'SENAR GITAR PIRAMID ECER', 'SENAR GITAR PIRAMID ECER', '100', '30207012', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70120004', '-', '1', '1', 'SENAT FOLK GUITAR STRING 1 SET', 'SENAT FOLK GUITAR STRING 1 SET', '100', '30207012', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70120005', '-', '1', '1', 'SENAR GITAR TENDER 150SL 1 SET', 'SENAR GITAR TENDER 150SL 1 SET', '100', '30207012', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4975984012270', '-', '1', '1', 'NITTAKU 40 JAPAN TENNIS BALL', 'NITTAKU 40 JAPAN TENNIS BALL', '100', '30207010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('5906735130096', '-', '1', '1', 'SHIELD 101 40 MM TENNIS BALL', 'SHIELD 101 40 MM TENNIS BALL', '100', '30207010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6987542672336', '-', '1', '1', 'WUMING TENNIS BALL', 'WUMING TENNIS BALL', '100', '30207010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('70100002', '-', '1', '1', 'BOLA PINGPONG HAOXIN 40', 'BOLA PINGPONG HAOXIN 40', '100', '30207010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20100028', '-', '1', '1', 'MAP KANTONG TALI EXECUTIVE BESAR', 'MAP KANTONG TALI EXECUTIVE BESAR', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('10100007', '-', '1', '1', 'PHOENIX LABEL TEMPEL', 'PHOENIX LABEL TEMPEL', '100', '30201010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20100029', '-', '1', '1', 'GT-PRO CD-RW 80MIN/700MB', 'GT-PRO CD-RW 80MIN/700MB', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020012', '-', '0', '0', 'PRINT 4R FOTO COLOR / LEMBAR', 'PRINT 4R FOTO COLOR / LEMBAR', '100', '30206002', 'lembar', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('60020013', '-', '0', '0', 'FOTO', 'FOTO', '100', '30206002', 'lembar', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20020003', '-', '0', '0', 'PRINT LASERJET HITAM PUTIH / LMBR', 'PRINT LASERJET HITAM PUTIH / LMBR', '100', '30102002', 'lembar', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20020004', '-', '0', '0', 'PENGETIKAN / LEMBAR', 'PENGETIKAN / LEMBAR', '100', '30102002', 'lembar', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20020005', '-', '0', '0', 'SEWA KOMPUTER CUS / JAM', 'SEWA KOMPUTER CUS / JAM', '100', '30102002', 'lembar', '-', '0', '1', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20010006', '-', '1', '1', 'PRINT 3050i S - HITAM PUTIH A4', 'PRINT 3050i S - HITAM PUTIH A4', '100', '30102001', 'LEMBAR', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('S 01728', '-', '1', '1', 'GM LABEL TARIK K', 'GM LABEL TARIK K', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('S 04871', '-', '1', '1', 'GM LABEL DORONG K', 'GM LABEL DORONG K', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('S 05245', '-', '1', '1', 'GM LABEL NO SMOKING K', 'GM LABEL NO SMOKING K', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4547808804622', '-', '1', '1', 'TOSHIBA 16GB USB', 'TOSHIBA 16GB USB', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4712477117810', '-', '1', '1', 'HP 16GB USB', 'HP 16GB USB', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4712847093294', '-', '1', '1', 'HP 16GB USB', 'HP 16GB USB', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4712477117322', '-', '1', '1', 'HP 16GB USB', 'HP 16GB USB', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('740617220766', '-', '1', '1', 'KINGSTON 8GB USB', 'KINGSTON 8GB USB', '100', '30202010', 'PCS', '-', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('S 07409', '-', '1', '1', 'SNOWBOARD COMMUNICATION BOARD', 'SNOWBOARD COMMUNICATION BOARD', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('S 04114', '-', '1', '1', 'KANVAS GAMBAR 50X50', 'KANVAS GAMBAR 50X50', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('70120006', '-', '1', '1', 'KANVAS GAMBAR BERLIAN 40X40', 'KANVAS GAMBAR BERLIAN 40X40', '100', '30207012', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4712847095212', '-', '1', '1', 'HP 16GB USB', 'HP 16GB USB', '100', '30207012', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20100030', '-', '1', '1', 'V-GEN MEMORY CARD CLASS 6 48MB', 'V-GEN MEMORY CARD CLASS 6 48MB', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8993988190028', '-', '1', '1', 'JOYKO KEY RING KR-8', 'JOYKO KEY RING KR-8', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('4970129051176', '-', '1', '1', 'SNOWMAN BLACK BOARD MARKER 300 PUMP ALL COLOR', 'SNOWMAN BLACK BOARD MARKER 300 PUMP ALL COLOR', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('20100031', '-', '1', '1', 'BCARE USB 8GB FLASHDISK', 'BCARE USB 8GB FLASHDISK', '100', '30202010', 'PCS', '0', '0', '0', '0.00', '0', '1', '1', '0');
INSERT INTO mstock VALUES ('8992765301008', '-', '1', '1', 'GILLETTE GOAL II KUNING', 'GILLETTE GOAL II KUNING', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888166607132', '-', '1', '1', 'KHONG GUAN CLASSIC WAFER 350GR', 'KHONG GUAN CLASSIC WAFER 350GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999032890', '-', '1', '1', 'PEPSODENT SENSITIVE EXPERT 100GR', 'PEPSODENT SENSITIVE EXPERT 100GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999707781', '-', '1', '1', 'PEPSODENT WHITENING 190GR', 'PEPSODENT WHITENING 190GR', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026417', '-', '1', '1', 'DETTOL BODYWASH COOL 100ML', 'DETTOL BODYWASH COOL 100ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304039614', '-', '1', '1', 'GARNIER ACNO FIGHT 100ML', 'GARNIER ACNO FIGHT 100ML', '100', '11001007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4005808694822', '-', '1', '1', 'NIVEA MEN OIL CONTROL FOAM 100ML', 'NIVEA MEN OIL CONTROL FOAM 100ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992772198059', '-', '1', '1', 'KISPRAY FINE PERFUME 300ML RFL', 'KISPRAY FINE PERFUME 300ML RFL', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430401159', '-', '1', '1', 'PANTENE SHAMPOO FULLNESS & LIFE 70ML', 'PANTENE SHAMPOO FULLNESS & LIFE 70ML', '100', '11001009', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999047887', '-', '1', '1', 'SUNSILK BLACK SHINE 170ML', 'SUNSILK BLACK SHINE 170ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997012560351', '-', '1', '1', 'HEVINY VARNISH REMOVER 60ML', 'HEVINY VARNISH REMOVER 60ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999401238', '-', '1', '1', 'RINSO ANTI NODA 900GR', 'RINSO ANTI NODA 900GR', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400862', '-', '1', '1', 'PANTENE CND FULLNESS & LIFE 75ML', 'PANTENE CND FULLNESS & LIFE 75ML', '100', '10002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430566896', '-', '1', '1', 'HEAD & SHOULDERS COOL MENTHOL 10ML', 'HEAD & SHOULDERS COOL MENTHOL 10ML', '100', '10002003', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992752011095', '-', '1', '1', 'Air Mineral VIT 330ML', 'Air Mineral VIT 330ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997217760075', '-', '1', '1', 'MINYAK GORENG ZAFIRA 5LITER', 'MINYAK GORENG ZAFIRA 5LITER', '100', '10002001', 'DERIGEN', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997217760051', '-', '1', '1', 'MINYAK GORENG ZAFIRA 1800 ML', 'MINYAK GORENG ZAFIRA 1800 ML', '100', '10002001', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997217760044', '-', '1', '1', 'MINYAK GORENG ZAFIRA 1 LITER', 'MINYAK GORENG ZAFIRA 1 LITER', '100', '10002001', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('50200099', '-', '1', '1', 'TALI PRAMUKA CAP DUA PULUH DUA', 'TALI PRAMUKA CAP DUA PULUH DUA', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999513757', '-', '1', '1', 'Cornetto Disc Oreo 110ML', 'Cornetto Disc Oreo 110ML', '100', '10001001', 'buah', '-', '0', '0', '0.00', '0', '0', '1', '158');
INSERT INTO mstock VALUES ('8999999504502', '-', '1', '1', 'Magnum Red Velvet 64G', 'Magnum Red Velvet 64G', '100', '10001001', 'buah', '-', '0', '0', '0.00', '0', '0', '1', '116');
INSERT INTO mstock VALUES ('8999909000650', '-', '1', '1', 'Sampoerna A Mild Menthol Burst 16 Kretek', 'Sampoerna A Mild Menthol Burst 16 Kretek', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '94');
INSERT INTO mstock VALUES ('105', '-', '1', '1', 'MITO 105', 'MITO 105', '100', '11002003', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('106', '-', '1', '1', 'PENGGARIS STEINLES MICRO CONVERSION', 'PENGGARIS STEINLES MICRO CONVERSION', '100', '11001001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('5702231401100', '-', '1', '1', 'MAP ARSIP BANTEX', 'MAP ARSIP BANTEX', '100', '11001001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('108', '-', '1', '1', 'BOX FILE PLASTIK', 'BOX FILE PLASTIK', '100', '11001001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997025031022', '-', '1', '1', 'MAP ARSIP TEKA INTERNATIONAL', 'MAP ARSIP TEKA INTERNATIONAL', '100', '11001001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('110', '-', '1', '1', 'DAIMARU DOUBLE SIDED TAPE 24MM', 'DAIMARU DOUBLE SIDED TAPE 24MM', '100', '11001001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('112', '-', '1', '1', 'NAMEBADGES PENJEPIT NAME TAG', 'NAMEBADGES PENJEPIT NAME TAG', '100', '11001001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('619659136611', '-', '1', '1', 'SANDISK SDHC UHS-I CARD 32GB 80MBps', 'SANDISK SDHC UHS-I CARD 32GB 80MBps', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('619659136451', '-', '1', '1', 'SANDISK SDHC UHS-I CARD 16GB 80MBps', 'SANDISK SDHC UHS-I CARD 16GB 80MBps', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('619659000424', '-', '1', '1', 'SANDISK CRUZER BLADE 8GB', 'SANDISK CRUZER BLADE 8GB', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('619659067571', '-', '1', '1', 'SANDISK CRUZER SWITCH 16GB', 'SANDISK CRUZER SWITCH 16GB', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('740617220773', '-', '1', '1', 'KINGSTON DATA TRAVELER 16GB USB3', 'KINGSTON DATA TRAVELER 16GB USB3', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('805', '-', '1', '1', 'KRIPIK  RUMPUT LAUT', 'KRIPIK  RUMPUT LAUT', 'TOKO', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8990800012414', '-', '1', '1', 'ALPENLIEBE', 'ALPENLIEBE', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775311981', '-', '1', '1', 'ALPENLIEBE', 'ALPENLIEBE', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '88');
INSERT INTO mstock VALUES ('220', '-', '1', '1', 'MATERAI TEMPEL 3000', 'MATERAI TEMPEL 3000', '100', '11001001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('221', '-', '1', '1', 'MATERAI TEMPEL 6000', 'MATERAI TEMPEL 6000', '100', '11001001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('01632632826', '-', '1', '1', 'MATERAI 6000', 'MATERAI 6000', '100', '11001001', 'LEMBAR', '-', '0', '0', '0.00', '0', '0', '1', '93');
INSERT INTO mstock VALUES ('8718696475102', '-', '1', '1', 'PHILIP HELIX 32 WATT', 'PHILIP HELIX 32 WATT', '100', '11002005', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6942205218078', '-', '1', '1', 'SENTER CAS JUMBO 7 WT VDR', 'SENTER CAS JUMBO 7 WT VDR', '100', '11002001', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6935837275007', '-', '1', '1', 'SENTER CAS MATSUGI MG 7500', 'SENTER CAS MATSUGI MG 7500', '100', '11002001', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('225', '-', '1', '1', 'SENTR KEPALA TESLA TLKS 1054', 'SENTR KEPALA TESLA TLKS 1054', '100', '11002001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('226', '-', '1', '1', 'SENTER KEPALA MATSUGI MG 3375', 'SENTER KEPALA MATSUGI MG 3375', '100', '11002001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('227', '-', '1', '1', 'SENTER KEPALA CAHAYA CA 3002', 'SENTER KEPALA CAHAYA CA 3002', '100', '11002001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992931006256', '-', '1', '1', 'TISSUE TESSA FACIAL 10 SHEETS', 'TISSUE TESSA FACIAL 10 SHEETS', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999502454', '-', '1', '1', 'PADDLE POP PINK LAVA 56ML', 'PADDLE POP PINK LAVA 56ML', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '202');
INSERT INTO mstock VALUES ('8991906101415', '-', '1', '1', 'DJARUM SUPER MLD MINI 12 KRETEK', 'DJARUM SUPER MLD MINI 12 KRETEK', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761166212', '-', '1', '1', 'FRESTEA APPLE 350ML', 'FRESTEA APPLE 350ML', '100', '10001002', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '60');
INSERT INTO mstock VALUES ('8990800100050', '-', '1', '1', 'MENTOS BUAH FRUIT 37G', 'MENTOS BUAH FRUIT 37G', '100', '10001001', 'BUNGKUS ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993207110080', '-', '1', '1', 'CHAMP SOSIS DAGING AYAM SIAP SANTAP 16', 'CHAMP SOSIS DAGING AYAM SIAP SANTAP 16', '100', '10001001', 'BUNGKUS ', '-', '0', '0', '0.00', '0', '0', '1', '45');
INSERT INTO mstock VALUES ('8991102387286', '-', '1', '1', 'TANGO 2000 LONG CHOCOLATE WAFER', 'TANGO 2000 LONG CHOCOLATE WAFER', '100', '10001001', 'BUNGKUS ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886015423131', '-', '1', '1', 'TIM TAM CAPPUCINO SMOOTH & CRUNCHY 105G', 'TIM TAM CAPPUCINO SMOOTH & CRUNCHY 105G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686601046', '-', '1', '1', 'CHEETOS PUFFS CHEDDAR CHEESE 60', 'CHEETOS PUFFS CHEDDAR CHEESE 60', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686598322', '-', '1', '1', 'CHITATO RASA ORIGINAL 35G', 'CHITATO RASA ORIGINAL 35G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6923041388248', '-', '1', '1', 'THUMB TACKS', 'THUMB TACKS', '100', '11003003', 'KT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('368', '-', '1', '1', 'PLAYING CARDS', 'PLAYING CARDS', '100', '11003002', 'KT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438158733404', '-', '1', '1', 'NOKIA 105  CYAN', 'NOKIA 105  CYAN', '100', '11002003', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6438409603692', '-', '1', '1', 'NOKIA 105 2 KARTU NEW  BLACK', 'NOKIA 105 2 KARTU NEW  BLACK', '100', '11002003', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('892', '-', '1', '1', 'TESPEN 2 WAY TRM', 'TESPEN 2 WAY TRM', '100', '11002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('882', '-', '1', '1', 'TANG POTONG SUPER X   180 MM', 'TANG POTONG SUPER X   180 MM', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('880', '-', '1', '1', 'TANG WIPRO  6 IN ', 'TANG WIPRO  6 IN ', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('881', '-', '1', '1', 'TANG  WIPRO  8 IN', 'TANG  WIPRO  8 IN', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('888', '-', '1', '1', 'STOP KONTAK LOB 2 MORGEN', 'STOP KONTAK LOB 2 MORGEN', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('889', '-', '1', '1', 'STIKER STOP KONTAK LOB 2MATSUI', 'STIKER STOP KONTAK LOB 2MATSUI', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('887', '-', '1', '1', 'STOP KONTAK LOB 4 FLASH', 'STOP KONTAK LOB 4 FLASH', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('886', '-', '1', '1', 'STOP KONTAK LOB 3 FLASH ', 'STOP KONTAK LOB 3 FLASH ', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('884', '-', '1', '1', 'PITING PLAPON STROM FP A01', 'PITING PLAPON STROM FP A01', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('885', '-', '1', '1', 'SAKLAR TANAM DOBEL  MITSUI MS 21', 'SAKLAR TANAM DOBEL  MITSUI MS 21', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('883', '-', '1', '1', 'PITING TEMPEL BROKO HITAM', 'PITING TEMPEL BROKO HITAM', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('896', '-', '1', '1', 'STIKER MULTI', 'STIKER MULTI', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('891', '-', '1', '1', 'PITING GANTUNG', 'PITINGGANTUNG', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997209920081', '-', '1', '1', 'GRANOLA CREATIONS CINNAMON & RAISIN 60GR ORIGINAL MIX', 'GRANOLA CREATIONS CINNAMON & RAISIN 60GR ORIGINAL MIX', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997209920074', '-', '1', '1', 'GRANOLA CREATIONS DARK CHOCOLATE & BANANA 60GR GOURMET BLEND', 'GRANOLA CREATIONS DARK CHOCOLATE & BANANA 60GR GOURMET BLEND', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997209920029', '-', '1', '1', 'GRANOLA CREATIONS DARK CHOCOLATE & BANANA 480GR GOURMENT', 'GRANOLA CREATIONS DARK CHOCOLATE & BANANA 480GR GOURMENT', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997209920050', '-', '1', '1', 'GRANOLA CREATIONS TROPICAL FRUIT & NUTS 480GR TOASTED', 'GRANOLA CREATIONS TROPICAL FRUIT & NUTS 480GR TOASTED', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997209920012', '-', '1', '1', 'GRANOLA CREATIONS CINNAMON & RAISIN 480GR ORIGINAL MIX', 'GRANOLA CREATIONS CINNAMON & RAISIN 480GR ORIGINAL MIX', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997209920043', '-', '1', '1', 'GRANOLA CREATIONS CINNAMON & SNAKE FRUIT 480GR BALI CRUNCH', 'GRANOLA CREATIONS CINNAMON & SNAKE FRUIT 480GR BALI CRUNCH', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997209920067', '-', '1', '1', 'GRANOLA CREATIONS HONEY & MANGO 480GR MANGO DELIGHT', 'GRANOLA CREATIONS HONEY & MANGO 480GR MANGO DELIGHT', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999005801', '-', '1', '1', 'PEPSODENT DOUBLE CARE SENSITIVE CLEAN SOFT 0.01MM 2S/PC', 'PEPSODENT DOUBLE CARE SENSITIVE CLEAN SOFT 0.01MM 2S/PC', '100', '11001006', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999008055', '-', '1', '1', 'PEPSODENT DOUBLE CARE CLEAN SOFT 0.01MM 2S/PC', 'PEPSODENT DOUBLE CARE CLEAN SOFT 0.01MM 2S/PC', '100', '11001006', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043278', '-', '1', '1', 'PEPSODENT V BRISTLES DEEP CLEAN MEDIUM', 'PEPSODENT V BRISTLES DEEP CLEAN MEDIUM', '100', '11001006', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999038120', '-', '1', '1', 'PEPSODENT TRAVEL  SOFT', 'PEPSODENT TRAVEL  SOFT', '100', '11001006', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999519261', '-', '1', '1', 'WALLS ICE CREAM SANDWICH VANILLA DAN STROBERI 51G', 'WALLS ICE CREAM SANDWICH VANILLA DAN STROBERI 51G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999049423', '-', '1', '1', 'REXONA MEN MOTION SENSE SPORT DEFENCE 48H', 'REXONA MEN MOTION SENSE SPORT DEFENCE 48H', '100', '11001008', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9300830022557', '-', '1', '1', 'AXE BLACK DEODORANT BODYSPRAY 150ML', 'AXE BLACK DEODORANT BODYSPRAY 150ML', '100', '11001008', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851932323901', '-', '1', '1', 'AXE GOLD TEMPTATION 50M', 'AXE GOLD TEMPTATION 50M', '100', '11001008', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999024482', '-', '1', '1', 'CITRA BODYWASH PEARLY WHITE 220ML', 'CITRA BODYWASH PEARLY WHITE 220ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999023997', '-', '1', '1', 'CITRA BERAS PUTIH JEPANG BODY WASH 220M', 'CITRA BERAS PUTIH JEPANG BODY WASH 220M', '100', '11001006', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270680', '-', '1', '1', 'CHARM SAFE NIGHT 29CM 2PADS WING 29CM', 'CHARM SAFE NIGHT 29CM 2PADS WING 29CM', '100', '10002004', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '41');
INSERT INTO mstock VALUES ('8998103012650', '-', '1', '1', 'CUSSONS BABY SOAP FRESH & NOURISH 75', 'CUSSONS BABY SOAP FRESH & NOURISH 75', '100', '11001006', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('728', '-', '1', '1', 'HOLPLAST LEM PIPA PVC ', 'HOLPLAST LEM PIPA PVC ', '100', '11001001', 'BUNGKUS ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('730', '-', '1', '1', 'CUK BROCO BESAR HIGH QUALITY', 'CUK BROCO BESAR HIGH QUALITY', '100', '11002001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('729', '-', '1', '1', 'WANTEK JEANS HOSANA TOP COLOUR ALL VARIAN', 'WANTEK JEANS HOSANA TOP COLOUR ALL VARIAN', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('784', '-', '1', '1', 'KACAMATA 65.000', 'KACAMATA 65.000', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('783', '-', '1', '1', 'KACAMATA 45.000', 'KACAMATA 45.000', '100', '11003001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('782', '-', '1', '1', 'tennis balls wuming 3 pack 1pcs', 'tennis balls wuming 3 pack 1pcs', '100', '10002010', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('780', '-', '1', '1', 'T PIPA 1/2 DIM', 'T PIPA 1/2 DIM', '100', '11004001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('797', '-', '1', '1', 'T PIPA DRAT 1/2 DIM', 'T PIPA DRAT 1/2 DIM', '100', '11004001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('788', '-', '1', '1', 'SAMBUNGAN PIPA DRAT LURUS 1/2 DIM', 'SAMBUNGAN PIPA DRAT LURUS 1/2 DIM', '100', '11004001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('799', '-', '1', '1', 'L DRAT PIPA 1/2 DIM', 'L DRAT PIPA 1/2 DIM', '100', '11004001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('781', '-', '1', '1', 'SAMBUNGAN PIPA LURUS 1/2 DIM', 'SAMBUNGAN PIPA LURUS 1/2 DIM', '100', '11004001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('795', '-', '1', '1', 'L PIPA 1/2DIM', 'L PIPA 1/2DIM', '100', '11004001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4001', '-', '1', '1', 'PASEO SMART PERFURMED 12 SHEETS 2 PLAY', 'PASEO SMART PERFURMED 12 SHEETS 2 PLAY', '100', '11003001', 'BUNGKUS ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9001', '-', '1', '1', 'KABLE SHINKO LOW VOLTAGE CABLE 3 x 1,5M 100M NYM', 'KABLE SHINKO LOW VOLTAGE CABLE 3 x 1,5M 100M NYM', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9002', '-', '1', '1', 'KABLE SHINKO LOW VOLTAGE CABLE 2 x 2,5M 100M NYM', 'KABLE SHINKO LOW VOLTAGE CABLE 2 x 2,5M 100M NYM', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('695430111188769', '-', '1', '1', 'ORICO MICRO USB TO USB 2.0 CABLE', 'ORICO MICRO USB TO USB 2.0 CABLE', '100', '11002001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6936761817189', '-', '1', '1', 'ORICO CABLE USB TYPE C 5A', 'ORICO CABLE USB TYPE C 5A', '100', '11002001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9003', '-', '1', '1', 'KABLE SHINKO LOW VOLTAGE CABLE 2 X 1,5M 100M NYM', 'KABLE SHINKO LOW VOLTAGE CABLE 2 X 1,5M 100M NYM', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9005', '-', '1', '1', 'KABLE SHINKO LOW VOLTAGE CABLE 2 X 1,5M 50M NYM', 'KABLE SHINKO LOW VOLTAGE CABLE 2 x 1,5M 50M NYM', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9006', '-', '1', '1', 'KABLE BLITZ NYY CABLE 2 x 1,5M 100M', 'KABLE BLITZ NYY CABLE 2 x 1,5M 100M', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9007', '-', '1', '1', 'KABLE BLITZ NYY CABLE 2 X 2,5M 100M', 'KABLE BLITZ NYY CABLE 2 X 2,5M 100M', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4971850032151', '-', '1', '1', 'CASIO AX-12B EXTRA LARGE DISPLAY', 'CASIO AX-12B EXTRA LARGE DISPLAY', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6925345000383', '-', '1', '1', 'ROYALLY RY-690 12DIGITS', 'ROYALLY RY-690 12DIGITS', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8890655025037', '-', '1', '1', 'LAMPU LED AXION  5 WAT', 'LAMPU LED AXION  5 WAT', '100', '11002005', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('  897', '-', '1', '1', 'LAMPU BELAJAR KAWACHI LM 9999', 'LAMPU BELAJAR KAWACHI LM 9999', '100', '11002005', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992858527308', '-', '1', '1', 'HYDRO COCO ORIGINAL 250ML', 'HYDRO COCO ORIGINAL 250ML', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '136');
INSERT INTO mstock VALUES ('089686601060', '-', '1', '1', 'CHEETOS BARBEKYU 15G', 'CHEETOS BARBEKYU 15G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026820', '-', '1', '1', 'DETTOL REFILL LASTING FRESH BODY WASH 250ML', 'DETTOL REFILL LASTING FRESH BODY WASH 250ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026028', '-', '1', '1', 'DETTOL BODYWASH REFIIL SENSITIVE 250ML', 'DETTOL BODYWASH REFIIL SENSITIVE 250ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993560026103', '-', '1', '1', 'DETTOL REFILL SKINCARE BODY WASH 250ML', 'DETTOL REFILL SKINCARE BODY WASH 250ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866806008', '-', '1', '1', 'GIV WHITE FLOWERS & VANILLA 250ML', 'GIV WHITE FLOWERS & VANILLA 250ML', '100', '11001006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320074', '-', '1', '1', 'STELLA ALL IN ONE FANTASY BOUGENVILLE 70GR', 'STELLA ALL IN ONE FANTASY BOUGENVILLE 70GR', '100', '10002003', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745320050', '-', '1', '1', 'STELLA ALL IN ONE ORANGE 70GR', 'STELLA ALL IN ONE ORANGE 70GR', '100', '10002003', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291673590', '-', '1', '1', 'LED PHILIPS  7  WAT', 'LED PHILIPS  7  WAT', '100', '11002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291673491', '-', '1', '1', 'LED PHILIPS  13  WAT', 'LED PHILIPS  13  WAT', '100', '11002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291673354', '-', '1', '1', 'LED PHILIPS  10 WAT', 'LED PHILIPS  10 WAT', '100', '11002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718696484906', '-', '1', '1', 'LED PHILIPS  4WAT', 'LED PHILIPS  4WAT', '100', '11002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291706083', '-', '1', '1', 'LED PHILIPS 3 WAT', 'LED PHILIPS 3 WAT', '100', '11002005', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761166229', '-', '1', '1', 'FRESTEA MARKISA 350ML', 'FRESTEA MARKISA 350ML', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '107');
INSERT INTO mstock VALUES ('871', '-', '0', '1', 'KRUPUK SINGKONG ', 'KRUPUK SINGKONG ', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('791', '-', '1', '1', 'KRUPUK BERAS', 'KRUPUK BERAS', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761164584', '-', '1', '1', 'MINUTE MAID HOMESTYLE 300ML', 'MINUTE MAID HOMESTYLE 300ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997035780026', '-', '1', '1', 'CEMARA MINYAK GORENG 2 LITER', 'CEMARA MINYAK GORENG 2 LITER', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998888170118', '-', '1', '1', 'MARJAN SQUASH COCOPANDAN 450ML', 'MARJAN SQUASH COCOPANDAN 450ML', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998888110114', '-', '1', '1', 'MARJAN BOUDOIN COCO PANDAN 460ML', 'MARJAN BOUDOIN COCO PANDAN 460ML', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998888110213', '-', '1', '1', 'MARJAN BOUDOIN MELON 460ML', 'MARJAN BOUDOIN MELON 460ML', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998888110718', '-', '1', '1', 'MARJAN BOUDOIN STROBERI 460ML', 'MARJAN BOUDOIN STROBERI 460ML', '100', '10001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995177101112', '-', '1', '1', 'GULAKU PREMIUM 1KG', 'GULAKU PREMIUM 1KG', '100', '10001002', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993083931274', '-', '1', '1', 'BISKITOP ROSE CREAM CHOCOLATE 220G', 'BISKITOP ROSE CREAM CHOCOLATE 220G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001305119', '-', '1', '1', 'ROMA COOKIES CHOCO FILLED 30G', 'ROMA COOKIES CHOCO FILLED 30G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '143');
INSERT INTO mstock VALUES ('089686598353', '-', '1', '1', 'CHITATO ORIGINAL 68G', 'CHITATO ORIGINAL 68G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '184');
INSERT INTO mstock VALUES ('8886467100024', '-', '1', '1', 'PRINGLES POTATO CRIPS SOUR CREAM & ONION 50G', 'PRINGLES POTATO CRIPS SOUR CREAM & ONION 50G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886467100031', '-', '1', '1', 'PRINGLES POTATO CRIPS CHEESY CHEESE 50G', 'PRINGLES POTATO CRIPS CHEESY CHEESE 50G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886467100055', '-', '1', '1', 'PRINGLES POTATO CRIPS HOT & SPICY 50G', 'PRINGLES POTATO CRIPS HOT & SPICY 50G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8886467100062', '-', '1', '1', 'PRINGLES POTATO CRIPS SALT & SEAWEED 50G', 'PRINGLES POTATO CRIPS SALT & SEAWEED 50G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999506544', '-', '1', '1', 'Sariwangi Teh Asli 6Pcs', 'Sariwangi Teh Asli 6Pcs', '100', '10001002', 'pcs', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('00001', '-', '1', '1', 'KALENDER BALI', 'KALENDER BALI', '100', '11001001', 'pcs', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8885013130546', '-', '1', '1', 'AICE NANAS 65 GR', 'AICE NANAS 65 GR', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '61');
INSERT INTO mstock VALUES ('8885013130249', '-', '1', '1', 'AICE MILK MELON 50 GR', 'AICE MILK MELON 50 GR', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '92');
INSERT INTO mstock VALUES ('8997033170225', '-', '1', '1', 'AICE HAPPY CONE TARO', 'AICE HAPPY CONE TARO', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '34');
INSERT INTO mstock VALUES ('8885013130225', '-', '1', '1', 'AICE BANANA CRISPY  50 GR', 'AICE BANANA CRISPY  50 GR', '100', '10001003', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '192');
INSERT INTO mstock VALUES ('8885013130065', '-', '1', '1', 'AICE STRAWBERRY CRISPY 55GR', 'AICE STRAWBERRY CRISPY 55GR', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '73');
INSERT INTO mstock VALUES ('8885013130058', '-', '1', '1', 'AICE CHOCOLATE CCRISPY 60 GR', 'AICE CHOCOLATE CCRISPY 60 GR', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '118');
INSERT INTO mstock VALUES ('8997033170058', '-', '1', '1', 'AICE COFFE CRISPY 45 GR', 'AICE COFFE CRISPY 45 GR', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '38');
INSERT INTO mstock VALUES ('8885013130492', '-', '1', '1', 'AICE MILK 40 GR', 'AICE MILK 40 GR', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '157');
INSERT INTO mstock VALUES ('8997033170140', '-', '1', '1', 'AICEN CHOCOLATE 40 ', 'AICEN CHOCOLATE 40 ', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '35');
INSERT INTO mstock VALUES ('8718696482483', '-', '1', '1', 'LED PHILIPS 6W COOL DAYLIGHT', 'LED PHILIPS 6W COOL DAYLIGHT', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400100003', '-', '1', '1', 'MDM KERAN 1/2 DENGAN SAMBUNGAN', 'MDM KERAN 1/2 DENGAN SAMBUNGAN', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('721', '-', '1', '1', 'CUK T ARDE MATSUI MT 313S', 'CUK T ARDE MATSUI MT 313S', '100', '11002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400100004', '-', '1', '1', 'TRM PITING PLAFON  ', 'TRM PITING PLAFON ', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400010006', '-', '1', '1', 'SAKRAL BROCO ENGKEL TANAM', 'SAKRAL BROCO ENGKEL TANAM', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9004', '-', '1', '1', 'KABLE SHINKO LOW VOLTAGE CABLE 2 x 2,5M 50M NYM', 'KABLE SHINKO LOW VOLTAGE CABLE 2 x 2,5M 50M NYM', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400020001', '-', '1', '1', 'MIRADO JAM DINDING MQ881', 'MIRADO JAM DINDING MQ881', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400020002', '-', '1', '1', 'MIRADO JAM DINDING MQ8331', 'MIRADO JAM DINDING MQ8331', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400020003', '-', '1', '1', 'MIRADO JAM DINDING MQ8018', 'MIRADO JAM DINDING MQ8018', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400020004', '-', '1', '1', 'MIRADO JAM DINDING MQ8502', 'MIRADO JAM DINDING MQ8502', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400020005', '-', '1', '1', 'MIRADO JAM DINDING MQ8808', 'MIRADO JAM DINDING MQ8808', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400020006', '-', '1', '1', 'MIRADO JAM DINDING MQ8201', 'MIRADO JAM DINDING MQ8201', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('400020007', '-', '1', '1', 'MIRADO JAM DINDING MQ2102', 'MIRADO JAM DINDING MQ2102', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761145071', '-', '1', '1', 'FANTA SERU ORANGE 250 ', 'FANTA SERU ORANGE 250 ', '100', '10001002', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '114');
INSERT INTO mstock VALUES ('8997033170027', '-', '1', '1', 'AICE SWEET CORN  52 GR', 'AICE SWEET CORN  52 GR', '100', '10001002', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '91');
INSERT INTO mstock VALUES ('8997033170164', '-', '1', '1', 'AICE  SEMANGKA 65 GR', 'AICE  SEMANGKA 65 GR', '100', '10001002', 'BH', '-', '0', '0', '0.00', '0', '0', '1', '40');
INSERT INTO mstock VALUES ('8885013130027', '-', '1', '1', 'AICE STRAWBERRY  50 GR', 'AICE STRAWBERRY  50 GR', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('3001', '-', '1', '1', 'LILIN PUTIH TANGGUNG', 'LILIN PUTIH TANGGUNG', '100', '11002002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '196');
INSERT INTO mstock VALUES ('7702018017409', '-', '1', '1', 'GOAL II GILLETTE ISI 6 ', 'GOAL II GILLETTE ISI 6 ', '100', '11003001', 'SET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761151096', '-', '1', '1', 'MINUTE MAID NUTRIFORCE ', 'MINUTE MAID NUTRIFORCE ', '100', '10001002', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '177');
INSERT INTO mstock VALUES ('6928395766384', '-', '1', '1', 'BINDER CLIPS 155 BASIK', 'BINDER CLIPS 155 BASIK', '100', '11001001', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6920112521115', '-', '1', '1', 'BIDER CLIPS 105  (PER KOTAK )', 'BIDER CLIPS 105  (PER KOTAK )', '100', '11001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999909000773', '-', '1', '1', 'MARLLBORO FILTER BLACK 12', 'MARLLBORO FILTER BLACK 12', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4978438188521', '-', '1', '1', 'ISI STEPLES EWTA 10 ', 'SI STEPLES EWTA 10 ', '100', '11001001', 'KT', '-', '0', '0', '0.00', '0', '0', '1', '97');
INSERT INTO mstock VALUES ('8992761145033', '-', '1', '1', 'FANTA PAS SROBERY 250', 'FANTA PAS SROBERY 250', '100', '10001003', 'BKS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997217760037', '-', '1', '1', 'MINYAK GORENG ZAFIRA 1 LITER', 'MINYAK GORENG ZAFIRA 1 LITER', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993189270024', '-', '1', '1', 'CHARM SAFE NIGHT 29 CM', 'CHARM SAFE NIGHT 29 CM', '100', '10002004', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176811094', '-', '1', '1', 'MINYAK KAYU PUTIH 210 ML', 'MINYAK KAYU PUTIH 210 ML', '100', '10002005', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899001470', '-', '1', '1', 'BAYGON LAVENDER 600 ML', 'BAYGON LAVENDER 600 ML', '100', '11003003', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998899995090', '-', '1', '1', 'BAYGON PLOWER GARDEN 600  + 120 ML', 'BAYGON PLOWER GARDEN 600  + 120 ML', '100', '11001001', 'KALENG', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992304096723', '-', '1', '1', 'OIL CONTROL TURBOLIGHT GARNIER 100ML', 'OIL CONTROL TURBOLIGHT GARNIER 100ML', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036676', '-', '1', '1', 'LUX A AQUA SPARKLE 85G', 'LUX A AQUA SPARKLE 85G', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6912233436706', '-', '1', '1', 'OPPO AC ADEPTER 2.1A', 'OPPO AC ADEPTER 2.1A', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('754', '-', '1', '1', 'HANDSFREE SAMSUNG', 'HANDSFREE SAMSUNG', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9354620758324', '-', '1', '1', 'USB CHARGE ASUS', 'USB CHARGE ASUS', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('755', '-', '1', '1', 'UNIVERSAL CHARGE ', 'UNIVERSAL CHARGE ', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('760', '-', '1', '1', 'KABEL DATA DELKIN ACCESSORIES ', 'KABEL DATA DELKIN ACCESSORIES ', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('753', '-', '1', '1', 'HED SET OPPO', 'HED SET OPPO', '100', '11002001', 'SET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('750', '-', '1', '1', 'FAST CHARGER SAMSUNG', 'FAST CHARGER SAMSUNG', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('749', '-', '1', '1', 'CARD CASE B2', 'CARD CASE B2', '100', '11001001', 'LBR ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745400103', '-', '1', '1', 'MITU BABY WITH CALENDULA & CHAMOMILE 50 SHEETS', 'MITU BABY WITH CALENDULA & CHAMOMILE 50 SHEETS', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745560166', '-', '1', '1', 'MITU BABY WITH CHRYSANTHEMUM & VIT E 50 SHEETS', 'MITU BABY WITH CHRYSANTHEMUM & VIT E 50 SHEETS', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745560173', '-', '1', '1', 'MITU BABY WITH CHAMOMILE & VIT E 50 SHEETS', 'MITU BABY WITH CHAMOMILE & VIT E 50 SHEETS', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745475019', '-', '1', '1', 'MITU BABY WITH W. HASEL & CHRYSANTHEMUM 50 SHEETS', 'MITU BABY WITH W. HASEL & CHRYSANTHEMUM 50 SHEETS', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8888816988888', '-', '1', '1', 'V- GEN  8GB', 'V- GEN  8GB', '100', '11002001', 'UNIT', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('857', '-', '1', '1', 'ISOLASI DOBEL TIP BESAR', 'ISOLASI DOBEL TIP BESAR', '100', '11002001', 'ROL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866200332', '-', '1', '1', 'MIE SEDAAP KARIAYAM 72 GR', 'MIE SEDAAP KARIAYAM 72 GR', '100', '10001001', 'BUNGKUS ', '-', '0', '0', '0.00', '0', '0', '1', '74');
INSERT INTO mstock VALUES ('8991102987738', '-', '1', '1', 'WAFER TANGGO STRAWBERRY 52 GR', 'WAFER TANGGO STRAWBERRY 52 GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102387262', '-', '1', '1', 'TENGGO VANILLA WAFER 52 GR', 'TENGGO VANILLA WAFER 52 GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001305041', '-', '1', '1', 'ROMA SANDWICH216 GR', 'ROMA SANDWICH216 GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992760121083', '-', '1', '1', 'OREO PEANUT BUTTER 29 GR', 'OREO PEANUT BUTTER 29 GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102381215', '-', '1', '1', 'FULLO WAFER ROL 9 GR', 'FULLO WAFER ROL 9 GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991002103764', '-', '1', '1', ' GOOD DAY CAPPUCCINO 25 GR', ' GOOD DAY CAPPUCCINO 25 GR', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992870410206', '-', '1', '1', 'SALONPAS KOYO', 'SALONPAS KOYO', '100', '10001001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777090579', '-', '1', '1', 'HANSAPLAST KOYO ', 'HANSAPLAST KOYO ', '100', '10002002', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995125701142', '-', '1', '1', 'PERMEN BALI MANGGO', 'PERMEN BALI MANGGO', '100', '10001001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '89');
INSERT INTO mstock VALUES ('8901057524421', '-', '1', '1', 'ISI STEPLES KANGARO 24/6', 'ISI STEPLES KANGARO 24/6', '100', '11001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8994755030516', '-', '1', '1', 'GOOD TIME 16G', 'GOOD TIME 16G', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '76');
INSERT INTO mstock VALUES ('8996001304426', '-', '1', '1', 'SLAI OLAI 128 GR SROBERY', 'SLAI OLAI 128 GR SROBERY', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001304044', '-', '1', '1', 'SLAI OLAI 128 GR BLUBERI', 'SLAI OLAI 128 GR BLUBERI', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996001304433', '-', '1', '1', 'SLAI OLAI 128 GR NANAS', 'SLAI OLAI 128 GR NANAS', '100', '10001001', 'BUNGKUS ', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991102988988', '-', '1', '1', 'TANGGO 38 GR', 'TANGGO 38 GR', '100', '10001001', 'BUNGKUS ', '-', '0', '0', '0.00', '0', '0', '1', '52');
INSERT INTO mstock VALUES ('8993039242522', '-', '1', '1', 'REGAL BISKUIT 15 GR', 'REGAL BISKUIT 15 GR', '100', '10001001', 'SASET', '-', '0', '0', '0.00', '0', '0', '1', '204');
INSERT INTO mstock VALUES ('8991102987394', '-', '1', '1', 'WAFER TANGO CHEESE 52 GR', 'WAFER TANGO CHEESE 52 GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997032712013', '-', '1', '1', 'MILKIS SUSU 23GR', 'MILKIES SUSU 23GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992716109554', '-', '1', '1', 'BISKUAT COKLAT 65 GR ', 'BISKUAT COKLAT 65 GR', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('9555192501107', '-', '1', '1', 'DOUBLEMINT 270 GR ', 'DOUBLEMINT 270 GR ', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '96');
INSERT INTO mstock VALUES ('8996001321133', '-', '1', '1', 'KOPIKO  ( DIJUAL 4 BJ / 1000 )', 'KOPIKO  ( DIJUAL 4 BJ / 1000 )', '100', '10001001', 'BIJI', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991001661876', '-', '1', '1', 'GOLDENROUNDIES', 'GOLDENROUNDIES', '100', '10001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '27');
INSERT INTO mstock VALUES ('8991102024150', '-', '1', '1', 'FORMULA ZIGZAG SOFT', 'FORMULA ZIGZAG SOFT', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866103909', '-', '1', '1', 'SYSTEMA POWER CLEAN BIG HEAD', 'SYSTEMA POWER CLEAN BIG HEAD', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866107136', '-', '1', '1', 'SYSTEMA JAPANESE CHARCOAL SOFT', 'SYSTEMA JAPANESE CHARCOAL SOFT', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('371', '-', '1', '1', 'LEM ISTIMEWA DLUKOL', 'LEM ISTIMEWA DLUKOL', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8118721872195', '-', '1', '1', 'KAOS KAKI HITAM MUSLIM', 'KAOS KAKI HITAM MUSLIM', '100', '11001010', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('737', '-', '1', '1', 'VANVIN POWDER CASE', 'VANVIN POWDER CASE', '100', '10002005', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('555', '-', '1', '1', 'KOTAK MAKAN DORAEMON', 'KOTAK MAKAN DORAEMON', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('826', '-', '1', '1', 'MAGIC JUG LION STAR', 'MAGIC JUG LION STAR', '100', '11003003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991906101019', '-', '1', '1', 'JARUM SUPER 12', 'JARUM SUPER 12', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991906101026', '-', '1', '1', 'JARUM SUPER 16', 'JARUM SUPER 16', '100', '10001003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('3086', '-', '1', '1', 'PLASTIK SAMPAH HITAM ( 10 LB )', 'PLASTIK SAMPAH HITAM ( 10 LB )', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('3087', '-', '1', '1', 'TAS KRESEK KUNANG KUNANG MERAH TIPIS', 'TAS KRESEK KUNANG KUNANG MERAH TIPIS', '100', '11001001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761151089', '-', '1', '1', 'MINUTE MAID RASA MANGGA ', 'MINUTE MAID RASA MANGGA', '100', '10001002', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992761164591', '-', '1', '1', 'MINUTE MAID RASA JAMBU 300 ML', 'MINUTE MAID RASA JAMBU 300 ML', '100', '10001002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997032711313', '-', '1', '1', 'BISKIES ', 'BISKIES ', '100', '10001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('91', '-', '1', '1', 'DUPA BRS KRISNA ', 'DUPA BRS KRISNA', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('92', '-', '1', '1', 'DUPA BRS PREMIUM GEDE', 'DUPA BRS PREMIUM GEDE', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('93', '-', '1', '1', 'DUPA BRS PREMIUM KOMANG', 'DUPA BRS PREMIUM KOMANG', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('94', '-', '1', '1', 'DUPA BRS YADNYA SAY FLORA', 'DUPA BRS YADNYA SAY FLORA', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('95', '-', '1', '1', 'DUPA JUMBO 2 JAM ', 'DUPA JUMBO 2 JAM ', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('96', '-', '1', '1', 'DUPA KRISHNA  GLORY', 'DUPA KRISHNA  GLORY', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('97', '-', '1', '1', 'DUPA KRISHNA HIMALAYA 3 JAM', 'DUPA KRISHNA HIMALAYA 3 JAM', '100', '11001002', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('81', '-', '1', '1', 'CABLE TIES 2.5 X 100', 'CABLE TIES 2.5 X 100', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('82', '-', '1', '1', 'CABELE TIES  2.5 X 150', 'CABELE TIES  2.5 X 150', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('83', '-', '1', '1', 'CABLE TIES 3.6 X 200', 'CABLE TIES 3.6 X 200', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('84', '-', '1', '1', 'KABELE TIES 3.6 X 250 ', 'KABELE TIES 3.6 X 250 ', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('85', '-', '1', '1', 'CABLE TIES 3.6 X 300 ', 'CABLE TIES 3.6 X 300 ', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718696475140', '-', '1', '1', 'HPILIP HELIX  42 WAT', 'HPILIP HELIX  42 WAT', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992222010214', '-', '1', '1', 'TANCHO HAIR DYE 6G', 'TANCHO HAIR DYE 6G', '100', '10002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999045524', '-', '1', '1', 'DOVE VOLUME NOURISHMENT SHAMPOO 320ML', 'DOVE VOLUME NOURISHMENT SHAMPOO 320ML', '100', '10002001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6921434400065', '-', '1', '1', 'FEMININE COMFORT PANTILINER 20 LEMBAR', 'FEMININE COMFORT PANTILINER 20 LEMBAR', '100', '10002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6921434400041', '-', '1', '1', 'FEMININE COMFORT SANITARY PAD 10 LEMBAR', 'FEMININE COMFORT SANITARY PAD 10 LEMBAR', '100', '10002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999518516', '-', '1', '1', 'MOLTO DETERJEN CAIR GLOWING ELEGANCE 38ML', 'MOLTO DETERJEN CAIR GLOWING ELEGANCE 38ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '128');
INSERT INTO mstock VALUES ('8999999518530', '-', '1', '1', 'MOLTO DETERJEN CAIR DAZZLING GLAMOUR 38ML', 'MOLTO DETERJEN CAIR DAZZLING GLAMOUR 38ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430733274', '-', '1', '1', 'GILLETTE BLUE SIMPLE 3', 'GILLETTE BLUE SIMPLE 3', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999036584', '-', '1', '1', 'LUX MAGICAL SPELL 250ML', 'LUX MAGICAL SPELL 250ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999024000', '-', '1', '1', 'CITRA BODY WASH SPOTLESS WHITE 220ML', 'CITRA BODY WASH SPOTLESS WHITE 220ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993417170263', '-', '1', '1', 'B&B KIDS SHAMPOO&CONDITIONER 200ML', 'B&B KIDS SHAMPOO&CONDITIONER 200ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999041212', '-', '1', '1', 'DOVE SHAMPOO DANDRUFF CARE 70ML', 'DOVE SHAMPOO DANDRUFF CARE 70ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048488', '-', '1', '1', 'SUNSILK HIJAB RECHARGE SHAMPOO REFRESH 70ML', 'SUNSILK HIJAB RECHARGE SHAMPOO REFRESH 70ML', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999029616', '-', '1', '1', 'CLEAR ANTI DANDRUFF ICE MENTHOL 170ML', 'CLEAR ANTI DANDRUFF ICE MENTHOL 170ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043766', '-', '1', '1', 'CLEAR ANTI DANDRUFF STRONG&SOFT 70ML', 'CLEAR ANTI DANDRUFF STRONG&SOFT 70ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999043810', '-', '1', '1', 'CLEAR ANTI DANDRUFF APPLE 70ML', 'CLEAR ANTI DANDRUFF APPLE 70ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430428415', '-', '1', '1', 'REJOICE ANTI HAIR FALL SHAMPOO 170ML', 'REJOICE ANTI HAIR FALL SHAMPOO 170ML', '100', '10002001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430414937', '-', '1', '1', 'PANTENE SHAMPOO LONG BLACK 320ML', 'PANTENE SHAMPOO LONG BLACK 320ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430400909', '-', '1', '1', 'PANTENE NATURE CARE 170ML', 'PANTENE NATURE CARE 170ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430418300', '-', '1', '1', 'PANTENE SHAMPOO LONG BLACK 170ML', 'PANTENE SHAMPOO LONG BLACK 170ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777857844', '-', '1', '1', 'NIVEA SUN MOISTURE SPF50 100ML', 'NIVEA SUN MOISTURE SPF50 100ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777857837', '-', '1', '1', 'NIVEA SUN MOISTURE SPF30 100ML', 'NIVEA SUN MOISTURE SPF30 100ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999777857820', '-', '1', '1', 'NIVEA SUN MOISTURE SPF20 100ML', 'NIVEA SUN MOISTURE SPF20 100ML', '100', '10002006', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430563895', '-', '1', '1', 'PANTENE HALUS&LEMBUT SHAMPOO SASET', 'PANTENE HALUS&LEMBUT SHAMPOO SASET', '100', '10002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048242', '-', '1', '1', 'SUNSILK SOFT&SMOOTH SHAMPOO SASET', 'SUNSILK SOFT&SMOOTH SHAMPOO SASET', '100', '10002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430563888', '-', '1', '1', 'PANTENE HITAM&PANJANG  SHAMPOO SASET', 'PANTENE HITAM&PANJANG  SHAMPOO SASET', '100', '10002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430734929', '-', '1', '1', 'PANTENE ANTI KETOMBE SHAMPOO SASET', 'PANTENE ANTI KETOMBE SHAMPOO SASET', '100', '10002001', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4902430563901', '-', '1', '1', 'PANTENE UNTUK RAMBUT RUSAK SHAMPOO SASET', 'PANTENE UNTUK RAMBUT RUSAK SHAMPOO SASET', '100', '10002001', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999048167', '-', '1', '1', 'SUNSILK BLACK SHINE SHAMPOO SASET', 'SUNSILK BLACK SHINE SHAMPOO SASET', '100', '10002001', 'SACHET', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992745120407', '-', '1', '1', 'HIT NATURAL FRAGRANCE ORANGE 225ML', 'HIT NATURAL FRAGRANCE ORANGE 225ML', '100', '11001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('7237845415116', '-', '1', '1', 'MASKER SENSI', 'MASKER SENSI', '100', '11003001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999039141', '-', '1', '1', 'DOVE TOTAL DAMAGE TREATMENT SHAMPOO SASET', 'DOVE TOTAL DAMAGE TREATMENT SHAMPOO SASET', '100', '10002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997021870403', '-', '1', '1', 'HOTIN CREAM AROMA THERAPY 120ML', 'HOTIN CREAM AROMA THERAPY 120ML', '100', '10002002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997021870014', '-', '1', '1', 'FRESHCARE ROLL ON AROMA THERAPY 10ML', 'FRESHCARE ROLL ON AROMA THERAPY 10ML', '100', '10002002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997021870151', '-', '1', '1', 'HOT FRESHCARE ROLL ON AROMA THERAPY 10ML', 'HOT FRESHCARE ROLL ON AROMA THERAPY 10ML', '100', '10002002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8996839381019', '-', '1', '1', 'AMANPLAST ', 'AMANPLAST ', '100', '10002002', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '182');
INSERT INTO mstock VALUES ('711844120037', '-', '1', '1', 'ABC SAMBAL ASLI 135ML', 'ABC SAMBAL ASLI 135ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998888710567', '-', '1', '1', 'DEL MONTE EXTRA HOT CHILLI SAUCE 140ML', 'DEL MONTE EXTRA HOT CHILLI SAUCE 140ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992984910128', '-', '1', '1', 'DUA BELIBIS SAUS CABE 135ML', 'DUA BELIBIS SAUS CABE 135ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('089686400854', '-', '1', '1', 'INDOFOOD SAMBAL EKSTRA PEDAS 275ML', 'INDOFOOD SAMBAL EKSTRA PEDAS 275ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('711844120082', '-', '1', '1', 'ABC SAMBAL EXTRA PEDAS 135ML', 'ABC SAMBAL EXTRA PEDAS 135ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946531101', '-', '1', '1', 'SHINZUI UME BODY MIST', 'SHINZUI UME BODY MIST', '100', '10002006', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992759535457', '-', '1', '1', 'NICE BATHROOM TISSUE', 'NICE BATHROOM TISSUE', '100', '11001012', 'ROL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('3042602554786', '-', '1', '1', 'NAIL CLIPPER KECIL ', 'NAIL CLIPPER KECIL ', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992742375350', '-', '1', '1', 'SUSEMI SABUT SPON', 'SUSEMI SABUT SPON', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992946521836', '-', '1', '1', 'SHINZUI KENSHO 90G', 'SHINZUI KENSHO 90G', '100', '10002003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997210106344', '-', '1', '1', 'GUNTING M2000 SM-C160', 'GUNTING M2000 SM-C160', '100', '11001001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866603546', '-', '1', '1', 'SO KLIN LANTAI FLORAL LAVENDER 450ML', 'SO KLIN LANTAI FLORAL LAVENDER 450ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8999999406943', '-', '1', '1', 'SUPER PELL LEMON GINGER 800ML', 'SUPER PELL LEMON GINGER 800ML', '100', '10002003', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998866605113', '-', '1', '1', 'CLING PEMBERSIH KACA LEMON FRESH 440ML', 'CLING PEMBERSIH KACA LEMON FRESH 440ML', '100', '10002003', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8998838050002', '-', '1', '1', 'CORRECTION PEN KENKO', 'CORRECTION PEN KENKO', '100', '11001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991389241615', '-', '1', '1', 'BUKU KWARTO ISI 200', 'BUKU KWARTO ISI 200', '100', '11001001', 'EX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176120028', '-', '1', '1', 'BALSEM LANG 20 GR', 'BALSEM LANG 20 GR', '100', '10002007', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8993176111354', '-', '1', '1', 'TELON LANG 60 ML', 'TELON LANG 60 ML', '100', '10002007', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8992775312407', '-', '1', '1', 'GERY SALUUT CHOCO HAZELNUT 6G', 'GERY SALUUT CHOCO HAZELNUT 6G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '47');
INSERT INTO mstock VALUES ('8991102300520', '-', '1', '1', 'TANGO LONG WAFER VANILLA MILK 18,5 G', 'TANGO LONG WAFER VANILLA MILK 18,5 G', '100', '10001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '70');
INSERT INTO mstock VALUES ('8885013130553', '-', '1', '1', 'TARO', 'TARO', '100', '10001002', 'BJ', '-', '0', '0', '0.00', '0', '0', '1', '163');
INSERT INTO mstock VALUES ('8991917101541', '-', '1', '1', 'CHIEF 12 KRETEK FILTER', 'CHIEF 12 KRETEK FILTER', '100', '10001003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('711844110113', '-', '1', '1', 'ABC KECAP MANIS 135ML', 'ABC KECAP MANIS 135ML', '100', '10001001', 'BOTOL', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('18992442164122', '-', '1', '1', 'MONTANA PERMANENT MP-12', 'MONTANA PERMANENT MP-12', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('4974052832239', '-', '1', '1', 'ARTLINE 660 ORANGE', 'ARTLINE 660 ORANGE', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757009760', '-', '1', '1', 'FOLIO KAS 3K BATIK', 'FOLIO KAS 3K BATIK', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757023902', '-', '1', '1', 'BUKU AGENDA KELUAR MASUK OKEY', 'BUKU AGENDA KELUAR MASUK OKEY', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757000880', '-', '1', '1', 'BUKU FOLIO ISI 200 LMBR OKEY', 'BUKU FOLIO ISI 200 LMBR OKEY', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757000842', '-', '1', '1', 'BUKU KWARTO ISI 200 LMBR OKEY', 'BUKU KWARTO ISI 200 LMBR OKEY', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8995757016010', '-', '1', '1', 'KERTAS SAMPUL BUFFALO JILID PER LEMBAR', 'KERTAS SAMPUL BUFFALO JILID PER LEMBAR', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('809', '-', '1', '1', 'PLASTIK JILID MIKA FILM FOLIO 0.08 MM / LEMBAR', 'PLASTIK JILID MIKA FILM FOLIO 0.08 MM / LEMBAR', '100', '11001001', 'LEMBAR', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('898', '-', '1', '1', 'PLASTIK KILAT BESAR 0125X 21X 40 50 LEMBAR', 'PLASTIK KILAT BESAR 0125X 21X 40 50 LEMBAR', '100', '11003003', 'BUNNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('897', '-', '1', '1', 'PLASTIK KILAT BESAR 0125X 15X 34 50 LEMBAR', 'PLASTIK KILAT BESAR 0125X 15X 34 50 LEMBAR', '100', '11003003', 'BUNNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('900', '-', '1', '1', 'PLASTIK KILAT BESAR 02 X 28X 48 50 LEMBAR', 'PLASTIK KILAT BESAR 02 X 28X 48 50 LEMBAR', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('899', '-', '1', '1', 'PLASTIK KILAT BESAR 03 X 32 50 LEMBAR', 'PLASTIK KILAT BESAR 03 X 32 50 LEMBAR', '100', '11003001', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851019210223', '-', '1', '1', 'POCKY GREEN TEA FLAVOUR 42GR', 'POCKY GREEN TEA FLAVOUR 42GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851019210292', '-', '1', '1', 'POCKY COOKIES & CREAM 42GR', 'POCKY COOKIES & CREAM 42GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851019210209', '-', '1', '1', 'POCKY VANILLA & COCOA FLAVOUR 42GR', 'POCKY VANILLA & COCOA FLAVOUR 42GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851019210193', '-', '1', '1', 'POCKY CHOCO BANANA 42GR', 'POCKY CHOCO BANANA 42GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851019210124', '-', '1', '1', 'POCKY STRAWBERRY FLAVOUR 42GR', 'POCKY STRAWBERRY FLAVOUR 42GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851019210117', '-', '1', '1', 'POCKY CHOCOLATE FLAVOUR 42GR', 'POCKY CHOCOLATE FLAVOUR 42GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851019510132', '-', '1', '1', 'POCKY DOUBLE CHOCO 42GR', 'POCKY DOUBLE CHOCO 42GR', '100', '10001001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('317', '-', '1', '1', 'LILIN ANGKA TARUNA GLORIA ', 'LILIN ANGKA TARUNA GLORIA ', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('678', '-', '1', '1', 'CUK SERBAGUNA LY-921K', 'CUK SERBAGUNA LY-921K', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('675', '-', '1', '1', 'PLASTIK KECIL BENING DAMAI', 'PLASTIK KECIL BENING DAMAI', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('272', '-', '1', '1', 'PLASTIK MERAH REBANA BESAR', 'PLASTIK MERAH REBANA BESAR', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('087', '-', '1', '1', 'PLASTIK BESAR PER PCS HITAM / KUNING', 'PLASTIK BESAR PER PCS HITAM / KUNING ', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('098', '-', '1', '1', 'PLASTIK SAMPAH HITAM BESAR', 'PLASTIK SAMPAH HITAM BESAR', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('485', '-', '1', '1', 'KERTAS BUNGKUS CAP NAGA 30X40', 'KERTAS BUNGKUS CAP NAGA 30X40', '100', '11003003', 'BUNGKUS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8851932368506', '-', '1', '1', 'PADDLE POPOKTOPUS', 'PADDLE POPOKTOPUS', '100', '10001002', 'pcs', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718291673279', '-', '1', '1', 'LED PHILIP 8 WAT', 'LED PHILIP 8 WAT', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('132', '-', '1', '1', 'TAS PLASTIK BINTANG KILAT HITAM 50 LMBR 40X65X003', 'TAS PLASTIK BINTANG KILAT HITAM 50 LMBR 40X65X003', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('133', '-', '1', '1', 'TAS PLASTIK CAP IDJO KUNING', 'TAS PLASTIK CAP IDJO KUNING', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('120', '-', '1', '1', 'CADWELL CD-85 HEAVY DUTY PUNCH', 'CADWELL CD-85 HEAVY DUTY PUNCH', '100', '11001001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('121', '-', '1', '1', 'MITSUI MCB MMB 8 BOX', 'MITSUI MCB MMB 8 BOX', '100', '11002001', 'BOX', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('234', '-', '1', '1', 'MATSUGI LED HEAD LAMP MG-3306', 'MATSUGI LED HEAD LAMP MG-3306', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('233', '-', '1', '1', 'BROCO FUSE BOX SINGLE 711 1PC', 'BROCO FUSE BOX SINGLE 711 1PC', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8997016320289', '-', '1', '1', 'QUANTUM REGULATOR QRL-03 ', 'QUANTUM REGULATOR QRL-03', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('122', '-', '1', '1', 'MATSUGI 2W LED LAMP MG-3335', 'MATSUGI 2W LED LAMP MG-3335', '100', '11002004', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('126', '-', '1', '1', 'WINN GAS REGULATOR W 118 NM', 'WINN GAS REGULATOR W 118 NM', '100', '11003003', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('125', '-', '1', '1', 'LED OUTDOOR LIGHT 100W', 'LED OUTDOOR LIGHT 100W', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8890655025020', '-', '1', '1', 'AXIOM GIGA 3W', 'AXIOM GIGA 3W', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('123', '-', '1', '1', 'LED OUTDOOR LIGHT 20W', 'LED OUTDOOR LIGHT 20W', '100', '11002004', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('124', '-', '1', '1', 'LED OUTDOOR LIGHT 50W', 'LED OUTDOOR LIGHT 50W', '100', '11002001', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('231', '-', '1', '1', 'KABEL BOX MATSUI MB-701', 'KABEL BOX MATSUI MB-701', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('734', '-', '1', '1', 'MIOSA HEAD LED LAMP SY-1838', 'MIOSA HEAD LED LAMP SY-1838', '100', '11002004', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('093', '-', '1', '1', 'LED OUTDOOR LIGHT 10W', 'LED OUTDOOR LIGHT 10W', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('483', '-', '1', '1', 'POLIGAS REGULATOR PG 0510', 'POLIGAS REGULATOR PG 0510', '100', '11003003', 'KOTAK', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('6942205289085', '-', '1', '1', 'VDR LED HEAD V-8905', 'VDR LED HEAD V-8905', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('542', '-', '1', '1', 'LAMPU SOROT KEPALA AT-189', 'LAMPU SOROT KEPALA AT-189', '100', '11002004', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('543', '-', '1', '1', 'OTTO CAM SWITCH QS5-30 500V', 'OTTO CAM SWITCH QS5-30 500V', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('435', '-', '1', '1', 'FATRO LIGHTING LAMP BLACK/WHITE', 'FATRO LIGHTING LAMP BLACK/WHITE', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('545', '-', '1', '1', 'HEADLAMP LL-6637', 'HEADLAMP LL-6637', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8718696540398', '-', '1', '1', 'PHILIPS HELIX 52W', 'PHILIPS HELIX 52W', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('645', '-', '1', '1', 'MCB MEET MC1-63', 'MCB MEET MC1-63', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991100330109', '-', '1', '1', 'MORGEN LED MGL-K3010 10 W', 'MORGEN LED MGL-K3010 10 W', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('243', '-', '1', '1', 'DAICOM CUK T SERBAGUNA', 'DAICOM CUK T SERBAGUNA', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('298', '-', '1', '1', 'ROCIA KLIP KABEL SEMUA UKURAN', 'ROCIA KLIP KABEL SEMUA UKURAN', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('283', '-', '1', '1', 'M PODUS TANAM KABEL', 'M PODUS TANAM KABEL', '100', '11002001', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('183', '-', '1', '1', 'MURATOR T DUS PUTIH', 'MURATOR T DUS PUTIH', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('182', '-', '1', '1', 'T DUS BIASA HITAM', 'T DUS BIASA HITAM', '100', '11002001', 'BUAH', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('8991101206274', '-', '1', '1', 'PITING GANTUNG KAP MORGEN', 'PITING GANTUNG KAP MORGEN', '100', '11002005', 'PCS', '-', '0', '0', '0.00', '0', '0', '1', '0');
INSERT INTO mstock VALUES ('049', '-', '1', '1', 'KACANG MENTE TOPLES ', 'KACANG MENTE TOPLES ', '100', '10001001', 'TOPLES', '-', '0', '0', '0.00', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `mstock_bo`
-- ----------------------------
DROP TABLE IF EXISTS `mstock_bo`;
CREATE TABLE `mstock_bo` (
  `BARA` varchar(15) NOT NULL default '-',
  `AVER` double(11,3) default '0.000',
  `QTY` double default '0',
  `QTY2` double default '0',
  `QTY3` double default '0',
  `HJUAL` double default '0',
  `HJUAL2` double default '0',
  `HJUAL3` double default '0',
  `XAWAL` double default '0',
  `AWAL` double default '0',
  `MASUK` double default '0',
  `KELUAR` double default '0',
  `BO` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`BARA`,`BO`),
  KEY `sku` (`BARA`),
  KEY `bo` (`BO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mstock_bo
-- ----------------------------

-- ----------------------------
-- Table structure for `mstock_satuan`
-- ----------------------------
DROP TABLE IF EXISTS `mstock_satuan`;
CREATE TABLE `mstock_satuan` (
  `BARA` varchar(15) NOT NULL default '',
  `SATUAN` varchar(20) NOT NULL default '',
  `ISI` double default '1',
  `HARGA` double default '0',
  `BARA2` varchar(15) default '-',
  `BO` varchar(3) NOT NULL default '',
  PRIMARY KEY  (`BARA`,`SATUAN`,`BO`),
  KEY `BARA` USING BTREE (`BARA`),
  KEY `BO` (`BO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mstock_satuan
-- ----------------------------

-- ----------------------------
-- Table structure for `mstock_supp`
-- ----------------------------
DROP TABLE IF EXISTS `mstock_supp`;
CREATE TABLE `mstock_supp` (
  `BARA` varchar(15) NOT NULL default '-',
  `HARGA` double(11,3) default '0.000',
  `PPN` double default '0',
  `HBELI` double default '0',
  `TGL` datetime default NULL,
  `TGLU` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `MASTER` tinyint(4) default '0',
  `KDSP` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`BARA`,`KDSP`),
  KEY `BARA` USING BTREE (`BARA`),
  KEY `KDSP` USING BTREE (`KDSP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mstock_supp
-- ----------------------------

-- ----------------------------
-- Table structure for `msupp`
-- ----------------------------
DROP TABLE IF EXISTS `msupp`;
CREATE TABLE `msupp` (
  `KDSP` varchar(15) NOT NULL default '',
  `NAMASP` varchar(100) default '-',
  `ALAMAT` varchar(200) default '-',
  `KOTA` varchar(20) default NULL,
  `PROPINSI` varchar(20) default NULL,
  `NEGARA` varchar(20) default NULL,
  `KODEPOS` varchar(10) default NULL,
  `TELP` varchar(30) default '-',
  `FAX` varchar(30) default NULL,
  `EMAIL` varchar(50) default '-',
  `KONTAK` varchar(30) default NULL,
  `TGLREG` date default NULL,
  `TOD` tinyint(4) default '0',
  `HARI` varchar(50) default NULL,
  `JT` tinyint(4) default '0',
  `PPN` varchar(30) default '-',
  `TGLB` date default NULL,
  `TGLD` date default NULL,
  `USR` varchar(10) default '-',
  `BUFF` int(11) default '0',
  `NPWP` varchar(30) default '-',
  `ALAMAT_NPWP` varchar(50) default '-',
  `TGLNPWP` date default NULL,
  `AWAL` double default '0',
  `XAWAL` double default '0',
  `MASUK` double default '0',
  `KELUAR` double default '0',
  `RETUR` double default '0',
  `REK` varchar(30) default NULL,
  `NAMAREK` varchar(30) default NULL,
  `BANK` varchar(30) default NULL,
  PRIMARY KEY  (`KDSP`),
  KEY `kdsp` USING BTREE (`KDSP`),
  KEY `nama` (`NAMASP`),
  KEY `alamat` (`ALAMAT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msupp
-- ----------------------------
INSERT INTO msupp VALUES ('SP0001', 'ANDRASOFT', 'Jl. Batuyang, Gang Panji IVB No. 13, Batubulan', 'Gianyar', 'Bali', 'Indonesia', '80000', '08113854225', '-', 'andrasoftwarehouse@gmail.com', 'andra', '2018-02-01', '14', 'Senin', '30', 'Dengan Faktur Pajak', null, null, 'andra', '0', '-', '-', null, '0', '0', '0', '0', '0', '', '', '');

-- ----------------------------
-- Table structure for `tbluser`
-- ----------------------------
DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE `tbluser` (
  `id_user` varchar(10) NOT NULL default '',
  `nama` varchar(30) default NULL,
  `pwd` varchar(50) default NULL,
  `status` varchar(15) default NULL,
  `bo` varchar(3) default NULL,
  `minta` varchar(15) default NULL,
  `login` tinyint(1) default '0',
  `nota` varchar(15) default '-',
  `komp` varchar(15) default '-',
  `tgl` date default NULL,
  `kode_finger` longtext,
  `tgl_reg` datetime default NULL,
  `tgl_clerk` datetime default NULL,
  PRIMARY KEY  (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbluser
-- ----------------------------
INSERT INTO tbluser VALUES ('ksr', 'Kasir Pagi', '¹·Ä', 'KASIR', 'DC', null, '0', 'PJL-17121700002', 'localhost', '2017-06-29', null, '2017-06-29 22:28:32', '2017-06-29 22:28:32');
INSERT INTO tbluser VALUES ('puja', 'Puja trisandya', '¾¹¼¢', 'ADMINISTRATOR', 'DC', null, '0', '-', '-', '2017-11-08', null, null, null);
INSERT INTO tbluser VALUES ('andra', 'Andra Arbawa', '¯²¶³¢', 'ADMINISTRATOR', 'DC', null, '0', '-', '-', null, null, null, null);
INSERT INTO tbluser VALUES ('anti', 'Andra Anti Angin', 'u', 'ADMINISTRATOR', 'DC', null, '0', '-', '-', null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `ID_GRUP1` int(11) NOT NULL default '1',
  `KET_GRUP1` varchar(20) default '-',
  `ID_GRUP2` int(11) NOT NULL default '1',
  `KET_GRUP2` varchar(20) default '-',
  `ID_ITEM` int(11) NOT NULL default '1',
  `KET_ITEM` varchar(30) default '-',
  `FORM_MENU` varchar(30) default NULL,
  PRIMARY KEY  (`ID_GRUP1`,`ID_GRUP2`,`ID_ITEM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO tbl_menu VALUES ('1', 'Master data', '1', 'Data Item', '0', 'Daftar Item', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '1', 'Data Item', '1', 'Item Baru', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '1', 'Data Item', '2', 'Kartu Stock', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '1', 'Data Item', '3', 'Barcode', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '2', 'Data-Data Master', '4', 'Daftar Supplier', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '2', 'Data-Data Master', '5', 'Daftar Sales', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '2', 'Data-Data Master', '6', 'Daftar Pelanggan', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '2', 'Data-Data Master', '7', 'Group Pelanggan', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '3', 'Data Pendukung', '8', 'Satuan', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '3', 'Data Pendukung', '9', 'Kategori ', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '3', 'Data Pendukung', '10', 'Merk ', null);
INSERT INTO tbl_menu VALUES ('1', 'Master data', '3', 'Data Pendukung', '11', 'Dept/Gudang ', null);
INSERT INTO tbl_menu VALUES ('2', 'Pembelian', '4', 'Pesanan Pembelian', '12', 'Pesanan Pembelian ', null);
INSERT INTO tbl_menu VALUES ('2', 'Pembelian', '5', 'Pembelian', '13', 'Daftar Pembelian ', null);
INSERT INTO tbl_menu VALUES ('2', 'Pembelian', '5', 'Pembelian', '14', 'History Harga Beli ', null);
INSERT INTO tbl_menu VALUES ('2', 'Pembelian', '6', 'Bayar hutang', '15', 'Daftar Pembayaran ', null);
INSERT INTO tbl_menu VALUES ('2', 'Pembelian', '6', 'Bayar hutang', '16', 'Status Lunas BG/Cek ', null);
INSERT INTO tbl_menu VALUES ('2', 'Pembelian', '7', 'Return Pembelian', '16', 'Return Pembelian ', null);
INSERT INTO tbl_menu VALUES ('3', 'Penjualan', '8', 'Pesanan Penjualan', '17', 'Pesanan Penjualan ', null);
INSERT INTO tbl_menu VALUES ('3', 'Penjualan', '9', 'Penjualan', '18', 'Daftar Penjualan ', null);
INSERT INTO tbl_menu VALUES ('3', 'Penjualan', '9', 'Penjualan', '19', 'Penjualan Kasir ', null);
INSERT INTO tbl_menu VALUES ('3', 'Penjualan', '9', 'Penjualan', '20', 'History Harga Jual ', null);
INSERT INTO tbl_menu VALUES ('3', 'Penjualan', '10', 'Bayar Piutang', '21', 'Daftar Pembayaran ', null);
INSERT INTO tbl_menu VALUES ('3', 'Penjualan', '10', 'Bayar Piutang', '22', 'Status Lunas BG/Cek ', null);
INSERT INTO tbl_menu VALUES ('3', 'Penjualan', '11', 'Return Penjualan', '23', 'Return Penjualan ', null);
INSERT INTO tbl_menu VALUES ('3', 'Penjualan', '12', 'Point', '24', 'Point Penjualan ', null);
INSERT INTO tbl_menu VALUES ('4', 'Persediaan', '13', 'Penyesuaian', '25', 'Daftar Item Masuk ', null);
INSERT INTO tbl_menu VALUES ('4', 'Persediaan', '13', 'Penyesuaian', '26', 'Daftar Item Keluar ', null);
INSERT INTO tbl_menu VALUES ('4', 'Persediaan', '13', 'Penyesuaian', '27', 'Stock Opname ', null);
INSERT INTO tbl_menu VALUES ('4', 'Persediaan', '13', 'Penyesuaian', '28', 'Saldo Awal Item ', null);
INSERT INTO tbl_menu VALUES ('4', 'Persediaan', '14', 'Transfer', '29', 'Transfer Item ', null);
INSERT INTO tbl_menu VALUES ('4', 'Persediaan', '15', 'Kontrol Stock', '30', 'Stock Minimum ', null);
INSERT INTO tbl_menu VALUES ('4', 'Persediaan', '15', 'Kontrol Stock', '31', 'Produksi Item ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '16', 'Data Perkiraan', '32', 'Daftar Perkiraan ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '17', 'Kas', '33', 'Kas Masuk ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '17', 'kas', '34', 'Kas Keluar ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '17', 'kas', '35', 'Transfer Kas ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '18', 'Jurnal', '36', 'Daftar Jurnal ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '19', 'Pengaturan Akuntansi', '37', 'Saldo Awal Perkiraan ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '19', 'Pengaturan Akuntansi', '38', 'Saldo Awal Hutang ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '19', 'Pengaturan Akuntansi', '39', 'Saldo Awal Piuang ', null);
INSERT INTO tbl_menu VALUES ('5', 'Akuntansi', '19', 'Pengaturan Akuntansi', '40', 'Setting Perkiraan ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '26', 'System', '41', 'Daftar User', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '26', 'System', '42', 'Kelompok Akses User', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '26', 'System', '43', 'Data Perusahaan ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '26', 'System', '44', 'Pengaturan Umum ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '26', 'System', '45', 'Setting Nomor ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '26', 'System', '46', 'Mini Printer ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '26', 'System', '47', 'Tema ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '27', 'Import', '48', 'Import Data Item ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '27', 'Import', '49', 'Import Data Supplier ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '27', 'Import', '50', 'Import Data Pelanggan ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '28', 'Database', '51', 'Backup Database ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '28', 'Database', '52', 'Repair Database ', null);
INSERT INTO tbl_menu VALUES ('7', 'Pengaturan', '28', 'Database', '53', 'Potong Database ', null);

-- ----------------------------
-- Table structure for `zfoto_barang`
-- ----------------------------
DROP TABLE IF EXISTS `zfoto_barang`;
CREATE TABLE `zfoto_barang` (
  `bara` varchar(15) NOT NULL,
  `Picture` mediumblob NOT NULL,
  PRIMARY KEY  (`bara`),
  KEY `bara` USING BTREE (`bara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zfoto_barang
-- ----------------------------

-- ----------------------------
-- Table structure for `zfoto_perusahaan`
-- ----------------------------
DROP TABLE IF EXISTS `zfoto_perusahaan`;
CREATE TABLE `zfoto_perusahaan` (
  `gambar` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zfoto_perusahaan
-- ----------------------------
INSERT INTO zfoto_perusahaan VALUES (0x424D66750000000000003600000028000000640000006400000001001800000000003075000000000000000000000000000000000000EEEEE8EEEEE8EAEBE7E7E8E6E7E8E6E4E6E7E4E7EBE4E7EBE5E8ECE5E8EDE5E8EDE6E7EBE7E6E8E7E6E8E7E6E8E7E6E8EAE9EBECEBEFECEBEFE5E5EBDDE0E8DDE0E8DEE3ECE8EAF4E8EAF4EDEBF1EDEBF1E9E5EBDDDEE8DDDEE8DBDEEDDCE3F7DCE3F7DDE5FFDAE3FFDAE3FFD5DEFFC9D3FFC9D3FFC2CBFFC2CBFFB7C1FFAEBBFFAEBBFFA8B7FFA3B6FFA3B6FF9EB3FF98B3FF98B3FF9DBBFF9DBBFFA3C1FFB1CBFFB1CBFFBFD4FFCFDAFFCFDAFFDADEFFE4E0FFE4E0FFEAE1FFE7DEFFE7DEFFE6E0F7E6E0F7E6E5EEE9EBEBE9EBEBE7EDE8E5EBE6E5EBE6E4E9E8E4E9E8E4E9E8E0E5E3E0E5E3E4E7E5E9E8EAE9E8EAEDE9EFEEE9F2EEE9F2EEE8F3EBE6EFEBE6EFE5E3E9E6E8E8E6E8E8E5EBE6E5EBE6E5ECE5E7ECE3E7ECE3EAEDE4EBECE3EBECE3EEEAE5EEEAE5EEEAE5EEEEE8EEEEE8EAEBE7E7E8E6E7E8E6E4E6E7E4E7EBE4E7EBE5E8ECE5E8EDE5E8EDE6E7EBE7E6E8E7E6E8E7E6E8E7E6E8EAE9EBECEBEFECEBEFE5E5EBDDE0E8DDE0E8DEE3ECE8EAF4E8EAF4EDEBF1EDEBF1E9E5EBDDDEE8DDDEE8DBDEEDDCE3F7DCE3F7DDE5FFDAE3FFDAE3FFD5DEFFC9D3FFC9D3FFC2CBFFC2CBFFB7C1FFAEBBFFAEBBFFA8B7FFA3B6FFA3B6FF9EB3FF98B3FF98B3FF9DBBFF9DBBFFA3C1FFB1CBFFB1CBFFBFD4FFCFDAFFCFDAFFDADEFFE4E0FFE4E0FFEAE1FFE7DEFFE7DEFFE6E0F7E6E0F7E6E5EEE9EBEBE9EBEBE7EDE8E5EBE6E5EBE6E4E9E8E4E9E8E4E9E8E0E5E3E0E5E3E4E7E5E9E8EAE9E8EAEDE9EFEEE9F2EEE9F2EEE8F3EBE6EFEBE6EFE5E3E9E6E8E8E6E8E8E5EBE6E5EBE6E5ECE5E7ECE3E7ECE3EAEDE4EBECE3EBECE3EEEAE5EEEAE5EEEAE5F0E9F0F0E9F0EEE6F0E8E4F0E8E4F0E6E3F2E5E3F6E5E3F6E5E5F7E4E3F7E4E3F7E4E2F5E9E3F4E9E3F4E8E1F0E8E1F0EDE3F0F4E7F5F4E7F5F2E5F3EBDEECEBDEECE8DDEDEDE3F0EDE3F0E8DFE9E8DFE9EBE5F0E8E9FDE8E9FDDCE5FFC5D6FFC5D6FFA8BEFF8CA7FF8CA7FF7998FF6185F16185F1597FEF597FEF5179E94D75E64D75E64A72E9496FED496FED466AF44766F74766F74860F54860F55268F65F75F75F75F76D81F67B91F77B91F790A4FCA7B9FFA7B9FFB8C8FFC4D5FFC4D5FFCFE0FFCFE0FFD9E9F9DDE9EDDDE9EDDFE6E1E4E7DEE4E7DEEEEBE3F2EFE7F2EFE7EAEDE4EAEDE4E7EBE5EAEBE7EAEBE7EDEBEBEFE8EFEFE8EFEDE5EFECE4EFECE4EFEDE5F0E9E6EFE9E6EFE8E9EDE8E9EDE8EAEBE9ECEAE9ECEAEAEBE7ECECE6ECECE6EBECE3EDEBE3EDEBE3EFE5F5EFE5F5EEE4F4EAE4F7EAE4F7E8E3F8E7E5F9E7E5F9E6E5F9E6E4F8E6E4F8E7E4F4E9E4F3E9E4F3ECE3F0ECE3F0ECE2EEEEE2EEEEE2EEEFE2F0EFE2F0EFE2F0F0E3F3ECE3F8ECE3F8E6E1FFE6E1FFD7D9FFBFCAFEBFCAFE9FB2F67B96F17B96F1587DEB446DEC446DEC3564EE3065F23065F22B63F02B63F02760EB265EEB265EEB285DEE295BF5295BF52B58FD2D55FF2D55FF3556FF3556FF3956FF3B57FC3B57FC3858F1385BE7385BE74265E45074E65074E65C80E47699EF7699EF92B1F692B1F6B1CCFFC9DDFFC9DDFFDCE7FBE8EAF4E8EAF4EBE8EAE7E4E0E7E4E0E8ECE7E8ECE7E5E9E4E7E8E4E7E8E4EBE9E8EEE9EAEEE9EAEDE6E9EDE6EBEDE6EBEFE7EEEBE7EDEBE7EDEAE8EEEAE8EEEAE9EDE9EBEBE9EBEBEAEBE7E9ECE3E9ECE3E8ECE0E8EDDEE8EDDEEFE5F5EFE5F5EEE4F4EAE4F7EAE4F7E8E3F8E7E5F9E7E5F9E6E5F9E6E4F8E6E4F8E7E4F4E9E4F3E9E4F3ECE3F0ECE3F0ECE2EEEEE2EEEEE2EEEFE2F0EFE2F0EFE2F0F0E3F3ECE3F8ECE3F8E6E1FFE6E1FFD7D9FFBFCAFEBFCAFE9FB2F67B96F17B96F1587DEB446DEC446DEC3564EE3065F23065F22B63F02B63F02760EB265EEB265EEB285DEE295BF5295BF52B58FD2D55FF2D55FF3556FF3556FF3956FF3B57FC3B57FC3858F1385BE7385BE74265E45074E65074E65C80E47699EF7699EF92B1F692B1F6B1CCFFC9DDFFC9DDFFDCE7FBE8EAF4E8EAF4EBE8EAE7E4E0E7E4E0E8ECE7E8ECE7E5E9E4E7E8E4E7E8E4EBE9E8EEE9EAEEE9EAEDE6E9EDE6EBEDE6EBEFE7EEEBE7EDEBE7EDEAE8EEEAE8EEEAE9EDE9EBEBE9EBEBEAEBE7E9ECE3E9ECE3E8ECE0E8EDDEE8EDDEECE4F5ECE4F5EAE4F5EAE4F5EAE4F5E9E6F5E8E8F4E8E8F4E8E9F3E9E9EFE9E9EFEBEAECE8E6E6E8E6E6EBE9E8EBE9E8EBE9E8E6E4E4E6E4E4E3E4E8E7E9F1E7E9F1E8EAF5DAE2FFDAE2FFB5C5FFB5C5FF8EA6FF6781ED6781ED4666E3365CEA365CEA2C5BF2285DF4285DF4215BF42160F62160F61D5EF61D5EF61E5CF6205BF7205BF7235AFB245BFE245BFE265DFF275CFF275CFF2758FF2758FF2B5AFF2C5CFF2C5CFF2D5EFF2B60FD2B60FD2C60FA2F62F82F62F83365F53563ED3563ED486FEF486FEF6684F5869DF9869DF9ADBCFFCFD7FFCFD7FFDFE3FCE1E4F2E1E4F2E0E6EDE0E6EDE2E7EAE6E8E8E6E8E8EBECEAF0EDE8F0EDE8F0EDE5EFE9E4EFE9E4EFE8E5EDE9E8EDE9E8EBE9E9EBE9E9E9EAE8E9EAE6E9EAE6E7EDE2E6EDDEE6EDDEE6EFDBE5EED9E5EED9E6E6F4E6E6F4E6E6F2E7E8F2E7E8F2E9E9EFEAEBEFEAEBEFEAECECEEEDE9EEEDE9EEEEE8E9EBE5E9EBE5E7EAE8E7EAE8E4E9ECDFE7F4DFE7F4DCE8FFD0E1FFD0E1FFB5C9F291ACEC91ACEC5E7EE75E7EE7476EEF3860EF3860EF2D59F42659FD2659FD235AFF1D5AFE1D5AFE195AF91B5EFB1B5EFB1A5DFA1A5DFA1B5BFD1A59FD1A59FD1C58FE1D59FF1D59FF1C5CFE1C5DFC1C5DFC1F5DFD1F5DFD1F5DFD1F5CFF1F5CFF1F5BFF1D5BFF1D5BFF1C5AFF1A58FE1A58FE1C56FB275CFF275CFF2F5EFC2F5EFC375FF44564E94564E95F76E48599EE8599EEAFC0FFCEDBFFCEDBFFDCE7FFDCE7FFE5ECFDE9EEF7E9EEF7E8EDECEBECE3EBECE3EEEDDFF1EEE0F1EEE0F1EEE0EEEBE3EEEBE3EDEAE6EDEAE6EAE8E7E8E9E7E8E9E7E8EAE4E6ECE1E6ECE1E6EDDEE6EEDDE6EEDDE6E6F4E6E6F4E6E6F2E7E8F2E7E8F2E9E9EFEAEBEFEAEBEFEAECECEEEDE9EEEDE9EEEEE8E9EBE5E9EBE5E7EAE8E7EAE8E4E9ECDFE7F4DFE7F4DCE8FFD0E1FFD0E1FFB5C9F291ACEC91ACEC5E7EE75E7EE7476EEF3860EF3860EF2D59F42659FD2659FD235AFF1D5AFE1D5AFE195AF91B5EFB1B5EFB1A5DFA1A5DFA1B5BFD1A59FD1A59FD1C58FE1D59FF1D59FF1C5CFE1C5DFC1C5DFC1F5DFD1F5DFD1F5DFD1F5CFF1F5CFF1F5BFF1D5BFF1D5BFF1C5AFF1A58FE1A58FE1C56FB275CFF275CFF2F5EFC2F5EFC375FF44564E94564E95F76E48599EE8599EEAFC0FFCEDBFFCEDBFFDCE7FFDCE7FFE5ECFDE9EEF7E9EEF7E8EDECEBECE3EBECE3EEEDDFF1EEE0F1EEE0F1EEE0EEEBE3EEEBE3EDEAE6EDEAE6EAE8E7E8E9E7E8E9E7E8EAE4E6ECE1E6ECE1E6EDDEE6EEDDE6EEDDE2EBEFE2EBEFE3ECEFE7EDECE7EDECE7EDE8EBEDE7EBEDE7ECEDE3F0EEE4F0EEE4EFEDE5EEEEEEEEEEEEE3E6F4E3E6F4D7E1FFCCDDFFCCDDFFB5CEFF8EAFFF8EAFFF6189EF416BE6416BE62C5AEE2C5AEE295AFC2A5EFE2A5EFE275FFE205CFC205CFC1C5AFA1C5CFE1C5CFE1F5FFF1F5DFF1F5DFF1F5DFF1F5DFF1F5DFF1C5CFE1C5CFE1A5BFE185BFE185BFE165BFE155DFE155DFE1962FA1962FA195FF81A5BFD1A5BFD1A5BFE1C5CFF1C5CFF1E5FFF2163FF2163FF2465FF1F5DFD1F5DFD2862FF2862FF3064FF3360FD3360FD375FEE4269E94269E95E83F1809EF5809EF5B7C8FFB7C8FFD3DCFFE1E9FFE1E9FFE2EAF1E1E8E1E1E8E1E9ECDCF0F1DDF0F1DDF1F2DEEFEEE0EFEEE0EDEAE5EDEAE5EAE8E8E8E7EBE8E7EBE8E6ECE9E7EDE9E7EDEAE9EBEAE9EBEAE9EBE2EBEFE2EBEFE3ECEFE7EDECE7EDECE7EDE8EBEDE7EBEDE7ECEDE3F0EEE4F0EEE4EFEDE5EEEEEEEEEEEEE3E6F4E3E6F4D7E1FFCCDDFFCCDDFFB5CEFF8EAFFF8EAFFF6189EF416BE6416BE62C5AEE2C5AEE295AFC2A5EFE2A5EFE275FFE205CFC205CFC1C5AFA1C5CFE1C5CFE1F5FFF1F5DFF1F5DFF1F5DFF1F5DFF1F5DFF1C5CFE1C5CFE1A5BFE185BFE185BFE165BFE155DFE155DFE1962FA1962FA195FF81A5BFD1A5BFD1A5BFE1C5CFF1C5CFF1E5FFF2163FF2163FF2465FF1F5DFD1F5DFD2862FF2862FF3064FF3360FD3360FD375FEE4269E94269E95E83F1809EF5809EF5B7C8FFB7C8FFD3DCFFE1E9FFE1E9FFE2EAF1E1E8E1E1E8E1E9ECDCF0F1DDF0F1DDF1F2DEEFEEE0EFEEE0EDEAE5EDEAE5EAE8E8E8E7EBE8E7EBE8E6ECE9E7EDE9E7EDEAE9EBEAE9EBEAE9EBE2EDF1E2EDF1E4EEEEE5EDECE5EDECE7EDE8ECEDE4ECEDE4EDECE2EEECE2EEECE2EEEBE7E8E7F1E8E7F1E0E4FFE0E4FFD3E1FFB8CDFFB8CDFF81A1FF4770EB4770EB2C5DE9275FFA275FFA255CFF255CFF205AFF1C5BFF1C5BFF1C5DFB1C5FFA1C5FFA1D60FB1F60FE1F60FE215FFF215BFF215BFF235AFF235AFF235BFF205AFF205AFF1D5AFE1A5BFE1A5BFE185AFF175CFF175CFF1760F81760F81962F91C60FF1C60FF1E5EFF1D5BFF1D5BFF1C5BFF1B5DF81B5DF81C5FF72064F92064F91E5EF81E5EF8205CFC2761FF2761FF2E62FF3062FA3062FA3264F2436AE4436AE4798CE7798CE7ABB4F4D1D9FFD1D9FFDEE7FFE2EAF1E2EAF1E9EDE7EDF0E1EDF0E1ECEDDDEFEFE3EFEFE3EEEBE6EEEBE6EAE8E8EAE6EBEAE6EBE8E6ECE9E7EDE9E7EDEBEAEEECEBEDECEBEDE4EAF5E4EAF5E5EBF2E6EAEFE6EAEFE8EAEBECEAE9ECEAE9EDE9E8EDE9E8EDE9E8EBE7EDE8E7FBE8E7FBDCE1FFDCE1FFB8C5FF7D93EB7D93EB4B6DDF3561EA3561EA2B5EFA205AFF205AFF205EFF205EFF1E5FFF1A60FA1A60FA1960F71961F51961F51961F51D5FFA1D5FFA215DFD275FFF275FFF2458FF2458FF2556FE2A5BFF2A5BFF295AFF2255FF2255FF2357FF2660FF2660FF1D60FB1D60FB1A5EF71A58FE1A58FE2058FF2257FF2257FF2159FE235FF8235FF82467F22166EB2166EB2067ED2067ED2267F42365FA2365FA2663FF2761FF2761FF2A62FF3A65F83A65F85766E45766E47275DD9599EC9599ECC2C6FFDEE2FFDEE2FFE4E7F6E5E6EAE5E6EAEAEBE7ECECE6ECECE6ECEBE7ECEBE7EBE9E8EAE8E7EAE8E7ECEBE7EEEFE6EEEFE6EDEFE3ECEFE0ECEFE0E4EAF5E4EAF5E5EBF2E6EAEFE6EAEFE8EAEBECEAE9ECEAE9EDE9E8EDE9E8EDE9E8EBE7EDE8E7FBE8E7FBDCE1FFDCE1FFB8C5FF7D93EB7D93EB4B6DDF3561EA3561EA2B5EFA205AFF205AFF205EFF205EFF1E5FFF1A60FA1A60FA1960F71961F51961F51961F51D5FFA1D5FFA215DFD275FFF275FFF2458FF2458FF2556FE2A5BFF2A5BFF295AFF2255FF2255FF2357FF2660FF2660FF1D60FB1D60FB1A5EF71A58FE1A58FE2058FF2257FF2257FF2159FE235FF8235FF82467F22166EB2166EB2067ED2067ED2267F42365FA2365FA2663FF2761FF2761FF2A62FF3A65F83A65F85766E45766E47275DD9599EC9599ECC2C6FFDEE2FFDEE2FFE4E7F6E5E6EAE5E6EAEAEBE7ECECE6ECECE6ECEBE7ECEBE7EBE9E8EAE8E7EAE8E7ECEBE7EEEFE6EEEFE6EDEFE3ECEFE0ECEFE0E8E8F6E8E8F6E7E7F3E9E8F2E9E8F2E8E8EEE9E8ECE9E8ECEBE8EAEBE7ECEBE7ECE7E6F0E6E7FBE6E7FBC0C9EBC0C9EB8F9CD4657CC8657CC85070D34A72E84A72E84272F63B6FF73B6FF7366EEB366EEB366FE83572E83572E83774EA3976EC3976EC3874EC356EE9356EE93267E62B5BE22B5BE22F60EC2F60EC3261F32C5DF52C5DF5285AFA285DFF285DFF255CFF1E5BFF1E5BFF1F62FB1F62FB2061F9225DFF225DFF255CFF285CFF285CFF265CFF245DF8245DF82261F12667F12667F12468EF2468EF2467F22968F82968F82D69FD2B62F92B62F92B60F6406AF3406AF35D71E65D71E67881E2969DEC969DECB7BFFAD4DAFFD4DAFFE0E5FAE7E9F3E7E9F3EBEDEEECECECECECECEBECEAEBECEAEAEBE9EBE9E8EBE9E8EAEAE4EBECE2EBECE2EDEEDEEDEFDCEDEFDCEFE6F3EFE6F3EFE6F3ECE5F2ECE5F2EAE6F1E7E6EFE7E6EFE7E7EDE5E8EDE5E8EDE5E8F0E2E8F3E2E8F3CBD5E7CBD5E7B6C4E0AEC3E9AEC3E9A9C4F6A1C0FDA1C0FD97BBFF96BCFD96BCFD9AC0F09AC0F09DC0EC9DBFF59DBFF5A1C0FDA2C2FFA2C2FFA0C0FF97BAF997BAF98EB4F47DA6EB7DA6EB6995E86995E84B7CE03167DC3167DC2662EA2266FB2266FB1962FF0F5AF60F5AF61C61F41C61F42162F3235FF8235FF8235DFC255EFF255EFF245EFF245FFF245FFF215DFD235DFD235DFD2F67FF2F67FF2F65FF2B5EF12B5EF13664ED4872ED4872ED618AF783A8FF83A8FFA4C3FFA4C3FFB5CDFBC0D6F9C0D6F9CDDEF8D8E8F5D8E8F5E2ECF3E5ECEFE5ECEFE4E8E9E8ECEDE8ECEDEAEBEFEAEBEFE8E9EDE9E8ECE9E8ECEAE8E8E9E8E4E9E8E4ECEAE2EFEDE3EFEDE3EFE6F3EFE6F3EFE6F3ECE5F2ECE5F2EAE6F1E7E6EFE7E6EFE7E7EDE5E8EDE5E8EDE5E8F0E2E8F3E2E8F3CBD5E7CBD5E7B6C4E0AEC3E9AEC3E9A9C4F6A1C0FDA1C0FD97BBFF96BCFD96BCFD9AC0F09AC0F09DC0EC9DBFF59DBFF5A1C0FDA2C2FFA2C2FFA0C0FF97BAF997BAF98EB4F47DA6EB7DA6EB6995E86995E84B7CE03167DC3167DC2662EA2266FB2266FB1962FF0F5AF60F5AF61C61F41C61F42162F3235FF8235FF8235DFC255EFF255EFF245EFF245FFF245FFF215DFD235DFD235DFD2F67FF2F67FF2F65FF2B5EF12B5EF13664ED4872ED4872ED618AF783A8FF83A8FFA4C3FFA4C3FFB5CDFBC0D6F9C0D6F9CDDEF8D8E8F5D8E8F5E2ECF3E5ECEFE5ECEFE4E8E9E8ECEDE8ECEDEAEBEFEAEBEFE8E9EDE9E8ECE9E8ECEAE8E8E9E8E4E9E8E4ECEAE2EFEDE3EFEDE3F3E8F2F3E8F2F0E7F1EFE7F1EFE7F1EAE6F1E6E7F1E6E7F1E5E8F0E4EAF1E4EAF1E4EAF1E3EBF2E3EBF2DEE7F0DEE7F0DEE7F4DFECFCDFECFCD9EAFFD1E4FFD1E4FFD1E6FFDAEFFFDAEFFFDBEEFBDBEEFBDCECF8DBE8FEDBE8FEDCE7FFDEE7FFDEE7FFDFE8FFD9E7FFD9E7FFD2E4FFCAE1FFCAE1FFB6D6FFB6D6FF9AC1FF75A4F675A4F6477FEA2666E22666E21A62EC2069FB2069FB1F61F61F61F62562F82460F92460F91F5DF71D5CFA1D5CFA215FFF2460FF2460FF245FFF2258FF2258FF3466FF3466FF3561FC365DE7365DE7557AEA83A3FC83A3FCAAC7FFC6E5FFC6E5FFCEEDFFCEEDFFD2F2F8D7F2F6D7F2F6DCF1F2E0F1EEE0F1EEE3F1EDE5EEEBE5EEEBE6EDEAE8ECEDE8ECEDE7EBECE7EBECE6E9EDE8EAEBE8EAEBE9E9E9EAE8E7EAE8E7EEEBE6F0EEE6F0EEE6F4ECECF4ECECF2EDECEEEBEDEEEBEDEAEBEFE7EAF2E7EAF2E5EBF2E5EAF3E5EAF3E5EAF3E8EBF3E8EBF3E5E8F0E5E8F0E3E5EDE3E4EEE3E4EEE2E4EFE2E3F1E2E3F1E1E3F5E3E4F8E3E4F8E1E3FBE1E3FBE3E3FBE4E2F8E4E2F8E4E2F6E7E1F4E7E1F4EAE1F5EBE2F6EBE2F6EBE4F9EAE8FCEAE8FCE4E9FFE4E9FFD9EBFFC6E0FFC6E0FF9FC4FF6F9CF76F9CF74779EB2D64EB2D64EB2960FF2960FF2860FF2663FF2663FF2161FB1D60F91D60F91D60FB1F60FF1F60FF2460FF2C61FF2C61FF305FFD305FFD3A61EB5C7EEF5C7EEF99B4FFC5DBFFC5DBFFD6E7FFDAEEF3DAEEF3D8F1E7D8F1E7D5F0E0D9F0E1D9F0E1E1F4E5E4F2E6E4F2E6E3EFE3E5EEE4E5EEE4E9F0E9E9F1EAE9F1EAE7EEE9E7EEE9E6EDE8E7EDE8E7EDE8E8ECE6E8EBE2E8EBE2EBECE3EEEFE5EEEFE5F4ECECF4ECECF2EDECEEEBEDEEEBEDEAEBEFE7EAF2E7EAF2E5EBF2E5EAF3E5EAF3E5EAF3E8EBF3E8EBF3E5E8F0E5E8F0E3E5EDE3E4EEE3E4EEE2E4EFE2E3F1E2E3F1E1E3F5E3E4F8E3E4F8E1E3FBE1E3FBE3E3FBE4E2F8E4E2F8E4E2F6E7E1F4E7E1F4EAE1F5EBE2F6EBE2F6EBE4F9EAE8FCEAE8FCE4E9FFE4E9FFD9EBFFC6E0FFC6E0FF9FC4FF6F9CF76F9CF74779EB2D64EB2D64EB2960FF2960FF2860FF2663FF2663FF2161FB1D60F91D60F91D60FB1F60FF1F60FF2460FF2C61FF2C61FF305FFD305FFD3A61EB5C7EEF5C7EEF99B4FFC5DBFFC5DBFFD6E7FFDAEEF3DAEEF3D8F1E7D8F1E7D5F0E0D9F0E1D9F0E1E1F4E5E4F2E6E4F2E6E3EFE3E5EEE4E5EEE4E9F0E9E9F1EAE9F1EAE7EEE9E7EEE9E6EDE8E7EDE8E7EDE8E8ECE6E8EBE2E8EBE2EBECE3EEEFE5EEEFE5F3EEEBF3EEEBF2EFEBEDEDEDEDEDEDE9ECF0E7EBF0E7EBF0E5EBF2E8EAF4E8EAF4E9EAF4E6E5EEE6E5EEECEAF0ECEAF0F0ECF1F2ECF1F2ECF1F1EBF0F0E9F0F0E9F0EBE6EFE5E1EDE5E1EDE8E3F8E8E3F8EAE5FAEEE9F8EEE9F8EFE9F4EFE7F1EFE7F1EFE7EEF2E7F1F2E7F1F4E9F3F3E9F5F3E9F5EBE7F3EBE7F3DFE3F5DAE7FFDAE7FFD7EDFFC2DEFFC2DEFF8EADFC5077E35077E32F62F52F62F5225CFF2161FC2161FC2164FC2065FC2065FC1E61FC205FFF205FFF2661FF3065FF3065FF305EEB305EEB5179EA92B2FF92B2FFC8DFFFDBECFFDBECFFE0EAEAE3ECDFE3ECDFE8F8E6E8F8E6E4F5E0E6F3E3E6F3E3ECF6E9EBF3E8EBF3E8E6EBE2E4E8E2E4E8E2E6EDE6EAF2EBEAF2EBE6EFE5E6EFE5E5EEE4E7F0E6E7F0E6E8F0E6E7EBE5E7EBE5E8E9E5EAEBE7EAEBE7F3EEEBF3EEEBF2EFEBEDEDEDEDEDEDE9ECF0E7EBF0E7EBF0E5EBF2E8EAF4E8EAF4E9EAF4E6E5EEE6E5EEECEAF0ECEAF0F0ECF1F2ECF1F2ECF1F1EBF0F0E9F0F0E9F0EBE6EFE5E1EDE5E1EDE8E3F8E8E3F8EAE5FAEEE9F8EEE9F8EFE9F4EFE7F1EFE7F1EFE7EEF2E7F1F2E7F1F4E9F3F3E9F5F3E9F5EBE7F3EBE7F3DFE3F5DAE7FFDAE7FFD7EDFFC2DEFFC2DEFF8EADFC5077E35077E32F62F52F62F5225CFF2161FC2161FC2164FC2065FC2065FC1E61FC205FFF205FFF2661FF3065FF3065FF305EEB305EEB5179EA92B2FF92B2FFC8DFFFDBECFFDBECFFE0EAEAE3ECDFE3ECDFE8F8E6E8F8E6E4F5E0E6F3E3E6F3E3ECF6E9EBF3E8EBF3E8E6EBE2E4E8E2E4E8E2E6EDE6EAF2EBEAF2EBE6EFE5E6EFE5E5EEE4E7F0E6E7F0E6E8F0E6E7EBE5E7EBE5E8E9E5EAEBE7EAEBE7EFEEF0EFEEF0ECEEEFEAEDF1EAEDF1E8ECF1E7EAF2E7EAF2E7EAF2E8EAF2E8EAF2ECEAF0E9E5EAE9E5EAEEE9EBEEE9EBEFEAEBEDE8E9EDE8E9EBE6E8E9E5EAE9E5EAECE9F2EEEDF6EEEDF6E8E8EEE8E8EEE9EAEEE8EBEFE8EBEFE7EBECE5EBEAE5EBEAE5ECE9E6EDEAE6EDEAE8EDECE5E8ECE5E8ECE9EBF5E9EBF5E5E8F7DDE1F9DDE1F9DEE4FFDCE7FFDCE7FFCAD8FCA0BCFDA0BCFD4277EF4277EF2366F71A60F01A60F01F64F72365FF2365FF2262FF225EFF225EFF2B63FF3167F43167F44173E54173E578A6F4B6DCFFB6DCFFD0EBFFD8E7EAD8E7EAE7EBE6F1EFE7F1EFE7EEEDE9EEEDE9EDEEECF0EDEFF0EDEFF1ECEEF0EAEFF0EAEFEFE9EEEDEAECEDEAECEAECECE8EEE9E8EEE9E2EAE3E2EAE3DFEAE2E4EFE7E4EFE7E9F0EDE7EBECE7EBECE7E7EDE8E7F0E8E7F0EDEEF2EDEEF2EAEDF1E9ECF1E9ECF1E7E9F3E1E8F7E1E8F7E0E7F6E7E8F2E7E8F2EBEAEEF2EDEEF2EDEEEFE9EAEFE9EAEFEAECF1EEF0F1EEF0F5F0F2EFEBF0EFEBF0EBE9EFEAEAF0EAEAF0EEEDEFEEEDEFE9EBEBE3E9E8E3E9E8DEE9E6DEEDE5DEEDE5E2F0E5E5F0E8E5F0E8E8EFEAE7ECEFE7ECEFE7E9F3E7E9F3E6E9F8E5E9FCE5E9FCE3EAFBE2E9F8E2E9F8E1EAF4CEE4FFCEE4FF689AF2689AF23A7BF52465EF2465EF1F64F72167FF2167FF2163FF2460FF2460FF3065FB3E6EEC3E6EEC5E88E85E88E89FC7FBCEF0FFCEF0FFD5ECF4DEECE8DEECE8EEF4E9EDECE2EDECE2F2EDEEF2EDEEF7F0F7F5EFFAF5EFFAEEE9F2EFE8EDEFE8EDF3ECEFF3EEF0F3EEF0E8EBF0DBE5EFDBE5EFCFDFEBCFDFEBD1E0E9DDE9EFDDE9EFEAEFF0ECEEEFECEEEFE7EAEFE8EAF2E8EAF2EDEEF2EDEEF2EAEDF1E9ECF1E9ECF1E7E9F3E1E8F7E1E8F7E0E7F6E7E8F2E7E8F2EBEAEEF2EDEEF2EDEEEFE9EAEFE9EAEFEAECF1EEF0F1EEF0F5F0F2EFEBF0EFEBF0EBE9EFEAEAF0EAEAF0EEEDEFEEEDEFE9EBEBE3E9E8E3E9E8DEE9E6DEEDE5DEEDE5E2F0E5E5F0E8E5F0E8E8EFEAE7ECEFE7ECEFE7E9F3E7E9F3E6E9F8E5E9FCE5E9FCE3EAFBE2E9F8E2E9F8E1EAF4CEE4FFCEE4FF689AF2689AF23A7BF52465EF2465EF1F64F72167FF2167FF2163FF2460FF2460FF3065FB3E6EEC3E6EEC5E88E85E88E89FC7FBCEF0FFCEF0FFD5ECF4DEECE8DEECE8EEF4E9EDECE2EDECE2F2EDEEF2EDEEF7F0F7F5EFFAF5EFFAEEE9F2EFE8EDEFE8EDF3ECEFF3EEF0F3EEF0E8EBF0DBE5EFDBE5EFCFDFEBCFDFEBD1E0E9DDE9EFDDE9EFEAEFF0ECEEEFECEEEFE7EAEFE8EAF2E8EAF2F0EFF1F0EFF1ECEBEFF3F1F7F3F1F7E9ECFACEDDF7CEDDF7D4E5FFEDF2FFEDF2FFEBE9EFF1EDECF1EDECF2EEEDF2EEEDEBEAF3E9E8F2E9E8F2F1EAF1F4EEF3F4EEF3F1EDF3ECE9F2ECE9F2E8E4EFE8E4EFE7E9F1E3ECEFE3ECEFDFEEEAE0EFE7E0EFE7E5F0E6ECF0EAECF0EAF1EFEFEFEAF3EFEAF3E9E9F7E9E9F7E4E8FADFE9FADFE9FADEEDF6DEEEF4DEEEF4E1EFEED5E9FAD5E9FAB0D4FFB0D4FF5888E72B63E82B63E82162FA1F6DFF1F6DFF1564FB2669FA2669FA3469EF4467DC4467DC99B1FF99B1FFCDE6FFD5EAF2D5EAF2DCECF3E7F3F3E7F3F3E6F3E3E7F1E0E7F1E0F2F1EDF2F1EDEBEAEEECF1FAECF1FAE7EEF1F1F0E6F1F0E6F9F6E8EEECE4EEECE4E5EDF4C7E0FFC7E0FF86A3D086A3D0A2BBE3DBE9FFDBE9FFE9ECF1EDEDE7EDEDE7E8EEE9E6EDE8E6EDE8ECEEEEECEEEEEBECF0EDEBF7EDEBF7DAE2F999B9DD99B9DDB5D5F8E3ECFFE3ECFFE9E8F1EDEBEAEDEBEAEEECEBEEECEBE9E9F5E9E9F7E9E9F7EFE9F4F1EAF1F1EAF1F0ECF2EFEAF3EFEAF3EAE6F2EAE6F2E7E7F3E5EBF0E5EBF0E2EFEDE4F1E9E4F1E9E9F1E7F0EDE9F0EDE9EFE8EBF2E8F4F2E8F4ECE6F7ECE6F7E5E8F7E1EBF5E1EBF5DFEEF1E1EFEEE1EFEEE5EDECDDE9F3DDE9F3CEE4FFCEE4FF93B4FD4273ED4273ED2B6BFF1869FF1869FF1367FC276CF7276CF73A6DE96682E76682E7B0C0FFB0C0FFDCEAFFDEEAEEDEEAEEE1EBF2E7F1F1E7F1F1E4F3E5E5F2E2E5F2E2EFF1EBEFF1EBE8EAEBE4F0F6E4F0F6E4F0F0EDF0E1EDF0E1F1F3E0ECEFE6ECEFE6DBEBF89EBFF09EBFF0729BDA729BDA87A7E2B9CDF6B9CDF6E3E7F2EFEFE9EFEFE9E2EAE0E6F2E6E6F2E6ECEEEEECEEEEEBECF0EDEBF7EDEBF7DAE2F999B9DD99B9DDB5D5F8E3ECFFE3ECFFE9E8F1EDEBEAEDEBEAEEECEBEEECEBE9E9F5E9E9F7E9E9F7EFE9F4F1EAF1F1EAF1F0ECF2EFEAF3EFEAF3EAE6F2EAE6F2E7E7F3E5EBF0E5EBF0E2EFEDE4F1E9E4F1E9E9F1E7F0EDE9F0EDE9EFE8EBF2E8F4F2E8F4ECE6F7ECE6F7E5E8F7E1EBF5E1EBF5DFEEF1E1EFEEE1EFEEE5EDECDDE9F3DDE9F3CEE4FFCEE4FF93B4FD4273ED4273ED2B6BFF1869FF1869FF1367FC276CF7276CF73A6DE96682E76682E7B0C0FFB0C0FFDCEAFFDEEAEEDEEAEEE1EBF2E7F1F1E7F1F1E4F3E5E5F2E2E5F2E2EFF1EBEFF1EBE8EAEBE4F0F6E4F0F6E4F0F0EDF0E1EDF0E1F1F3E0ECEFE6ECEFE6DBEBF89EBFF09EBFF0729BDA729BDA87A7E2B9CDF6B9CDF6E3E7F2EFEFE9EFEFE9E2EAE0E6F2E6E6F2E6E9EEECE9EEECE9EDF2E5E9FFE5E9FFB6C9EF6599C86599C884B6E4D6E4FFD6E4FFEBE8F7E9EBEBE9EBEBE8EDECE8EDECE9EAF4EBEAFAEBEAFAE9E9F5E9E8F2E9E8F2ECEAF0F0ECF2F0ECF2F2EAF5F2EAF5EEE7F4E8E7F0E8E7F0E7EAEEEBEEECEBEEECF0EFEBF3EEEDF3EEEDF5ECEFF4E8F4F4E8F4F1E8F5F1E8F5EEEAF5EAEDF2EAEDF2EBEDEDEDEDEDEDEDEDF0EAEFEAE7F6EAE7F6D8E0FED8E0FEB9D1FF507DE6507DE62F6EF41565FA1565FA1A6BFF2B6AFA2B6AFA4371E78BA9F88BA9F8C4D4FFC4D4FFE2EAFFE4E9F2E4E9F2E4EBEEE7F0EDE7F0EDE5F0E6E9F2E8E9F2E8EFF3EEEFF3EEEAEEEFE4EFF3E4EFF3E7F3F5E9EEE5E9EEE5E8EDE4E5EEF1E5EEF1C8DFF57BA3D87BA3D86C9BDF6C9BDF729BDA94B2E194B2E1D4E2F4EBF3F3EBF3F3E0E8E1EBF4EAEBF4EAE9EEECE9EEECE9EDF2E5E9FFE5E9FFB6C9EF6599C86599C884B6E4D6E4FFD6E4FFEBE8F7E9EBEBE9EBEBE8EDECE8EDECE9EAF4EBEAFAEBEAFAE9E9F5E9E8F2E9E8F2ECEAF0F0ECF2F0ECF2F2EAF5F2EAF5EEE7F4E8E7F0E8E7F0E7EAEEEBEEECEBEEECF0EFEBF3EEEDF3EEEDF5ECEFF4E8F4F4E8F4F1E8F5F1E8F5EEEAF5EAEDF2EAEDF2EBEDEDEDEDEDEDEDEDF0EAEFEAE7F6EAE7F6D8E0FED8E0FEB9D1FF507DE6507DE62F6EF41565FA1565FA1A6BFF2B6AFA2B6AFA4371E78BA9F88BA9F8C4D4FFC4D4FFE2EAFFE4E9F2E4E9F2E4EBEEE7F0EDE7F0EDE5F0E6E9F2E8E9F2E8EFF3EEEFF3EEEAEEEFE4EFF3E4EFF3E7F3F5E9EEE5E9EEE5E8EDE4E5EEF1E5EEF1C8DFF57BA3D87BA3D86C9BDF6C9BDF729BDA94B2E194B2E1D4E2F4EBF3F3EBF3F3E0E8E1EBF4EAEBF4EAE8F2ECE8F2ECE3EEF6DAE8FFDAE8FF87ABE1468FCD468FCD5296D1BCD2FCBCD2FCE6E8FFE9EFF4E9EFF4E9EEEFE9EEEFE9EBF5EAEBF9EAEBF9E9E9F9E6E8F3E6E8F3EAEAF0EFEEF2EFEEF2F2EBF2F2EBF2F0E9F0EDE9EEEDE9EEEFEDEDF0EEEDF0EEEDEFEDECF1ECEEF1ECEEF1EAF1ECE6F1ECE6F1EBE7F2EBE7F2EBEAEEEBEBEBEBEBEBECEAE9EEE8E9EEE8E9F0E4F0EDE2F6EDE2F6E7E5FFE7E5FFD3E4FF6A93EF6A93EF3372EC1B68FB1B68FB246EFF2B66F22B66F2527BE8B0CBFFB0CBFFD5E3FFD5E3FFE7EBFEE8E8F4E8E8F4E7ECEDE8EFECE8EFECE9EEECECF1EFECF1EFEFF2F0EFF2F0EFF4F3E5EEF1E5EEF1E9F2F5E8EEEDE8EEEDE3ECEFD7E7F7D7E7F7A5C4E56796D36796D3699FE6699FE66599DC7AA4D97AA4D9BDD5F1E2F2F9E2F2F9E1ECEAE9F2E8E9F2E8E5F2EAE5F2EAE0F2FDBAD8FFBAD8FF6098DF318EDD318EDD3088CF90B3EB90B3EBD6DFFFE9F2FFE9F2FFE9F2F5E9F2F5EBEEF6EAECF6EAECF6E8EBFAE6E9F7E6E9F7E8ECF1EAEFEEEAEFEEECEBEDECEBEDEEECEBF2F0E8F2F0E8F5F4EAF2F2ECF2F2ECEDEEECE8EBF3E8EBF3E8ECF7E5EBF6E5EBF6E7EFF6E7EFF6ECF1F2ECF1F0ECF1F0EFEEF0F2EBF2F2EBF2F3E7F9F1E7FEF1E7FEEBE3FFEBE3FFD7E1FF87B1FE87B1FE3774E22167FB2167FB2568FF376AF0376AF0799DFBC9E1FFC9E1FFE2ECF6E2ECF6EBEBF9ECEBF5ECEBF5EAEFEEEAEFEDEAEFEDECEEEFEFF1F2EFF1F2ECEFEDECEFEDF0F5F3E7ECEDE7ECEDE5EEF1E7EFF6E7EFF6DCEBFBBDD7F5BDD7F57DA6D35A94D55A94D55B9CE65B9CE65A9AE169A1DC69A1DC9BC2E8CCE4F6CCE4F6E4F1F3E4EBE4E4EBE4E5F2EAE5F2EAE0F2FDBAD8FFBAD8FF6098DF318EDD318EDD3088CF90B3EB90B3EBD6DFFFE9F2FFE9F2FFE9F2F5E9F2F5EBEEF6EAECF6EAECF6E8EBFAE6E9F7E6E9F7E8ECF1EAEFEEEAEFEEECEBEDECEBEDEEECEBF2F0E8F2F0E8F5F4EAF2F2ECF2F2ECEDEEECE8EBF3E8EBF3E8ECF7E5EBF6E5EBF6E7EFF6E7EFF6ECF1F2ECF1F0ECF1F0EFEEF0F2EBF2F2EBF2F3E7F9F1E7FEF1E7FEEBE3FFEBE3FFD7E1FF87B1FE87B1FE3774E22167FB2167FB2568FF376AF0376AF0799DFBC9E1FFC9E1FFE2ECF6E2ECF6EBEBF9ECEBF5ECEBF5EAEFEEEAEFEDEAEFEDECEEEFEFF1F2EFF1F2ECEFEDECEFEDF0F5F3E7ECEDE7ECEDE5EEF1E7EFF6E7EFF6DCEBFBBDD7F5BDD7F57DA6D35A94D55A94D55B9CE65B9CE65A9AE169A1DC69A1DC9BC2E8CCE4F6CCE4F6E4F1F3E4EBE4E4EBE4E2F2EBE2F2EBD7F1FF8CBBF88CBBF84992E6218BE3218BE32688DC5F94D75F94D7B1C8F8DDEBFFDDEBFFE7F0F9E7F0F9EAF0F5EAEDF5EAEDF5E7EAF8E8EBF9E8EBF9E8EEF3E8EDEEE8EDEEEEF1F5EEF1F5EBEDEDEDEEE4EDEEE4EFF0E6EEEFEDEEEFEDE7EBF6E1EBFFE1EBFFDFEFFFD2E7FFD2E7FFD6EBFFD6EBFFDBEDFEE0ECFEE0ECFEE2E6FFE3E5FFE3E5FFE5E3FFE5E4FFE5E4FFE8E4FFE8E4FFD3DFFFA0CAFFA0CAFF417DE72564FA2564FA2660F9507BF2507BF2A4C3FFD8EBFFD8EBFFE7EFEEE7EFEEEDECF5EEEDF6EEEDF6EBF0EFEBF0EFEBF0EFF0EEF4F1F0F4F1F0F4EBEFEAEBEFEAF0F7F0EAEFEEEAEFEEE6ECF1E6F0FFE6F0FFD2E7FFA2C4EFA2C4EF6798D05697DC5697DC509BE5509BE5529DE75FA3E45FA3E47FB1DFB4D5EFB4D5EFE6F3FBE6EBE9E6EBE9E1F4F1E1F4F1C6E9FD64ABEB64ABEB328FEA1C89EB1C89EB248BE83A83D33A83D37AA7E4C6D9FFC6D9FFE1E8FBE1E8FBECF2F7EAEFF0EAEFF0E7E9F3EAECF7EAECF7E7F0F4E4EDF1E4EDF1ECF1FFECF1FFE9EBF6E8ECE7E8ECE7EBEEECE6E9F7E6E9F7D2DBFCBBCCFFBBCCFFACC6FFB0D1FFB0D1FFB0D5FFB0D5FFB8D6FFBDD4FFBDD4FFC0CFFFC0CDFFC0CDFFC0CFFFC3D2FFC3D2FFC9D2FFC9D2FFBDD0FF97C6FF97C6FF4883F12F67FC2F67FC3665F67598F97598F9C1D9FFE3EFFBE3EFFBECF0EBECF0EBEEF0F0EDF1F2EDF1F2EAF0EFEAEFF0EAEFF0F1EEF7F2EEF4F2EEF4EDF1EBEDF1EBEEF6ECEEF1EFEEF1EFE6EBF4DFEDFFDFEDFFBCD6FE81A9E381A9E35D97D95199E15199E14C9DE84C9DE84B9FEB57A4E957A4E968A6DC9BC3E69BC3E6DEEEFAEDEFEFEDEFEFE1F4F1E1F4F1C6E9FD64ABEB64ABEB328FEA1C89EB1C89EB248BE83A83D33A83D37AA7E4C6D9FFC6D9FFE1E8FBE1E8FBECF2F7EAEFF0EAEFF0E7E9F3EAECF7EAECF7E7F0F4E4EDF1E4EDF1ECF1FFECF1FFE9EBF6E8ECE7E8ECE7EBEEECE6E9F7E6E9F7D2DBFCBBCCFFBBCCFFACC6FFB0D1FFB0D1FFB0D5FFB0D5FFB8D6FFBDD4FFBDD4FFC0CFFFC0CDFFC0CDFFC0CFFFC3D2FFC3D2FFC9D2FFC9D2FFBDD0FF97C6FF97C6FF4883F12F67FC2F67FC3665F67598F97598F9C1D9FFE3EFFBE3EFFBECF0EBECF0EBEEF0F0EDF1F2EDF1F2EAF0EFEAEFF0EAEFF0F1EEF7F2EEF4F2EEF4EDF1EBEDF1EBEEF6ECEEF1EFEEF1EFE6EBF4DFEDFFDFEDFFBCD6FE81A9E381A9E35D97D95199E15199E14C9DE84C9DE84B9FEB57A4E957A4E968A6DC9BC3E69BC3E6DEEEFAEDEFEFEDEFEFE2F9FBE2F9FBB2DEF652A9EC52A9EC1D89E81D8CF21D8CF22088EB2981DB2981DB4D8CD6ADC8FFADC8FFD5E0FFD5E0FFEBF2FBECF1F0ECF1F0E7EAEFE9ECF4E9ECF4E7F0F4E3ECF5E3ECF5E2E8FBE2E8FBE4E7F6EDF1F2EDF1F2F5F8FCE7EBFFE7EBFFBEC8F7859CE7859CE75F81DB5984E15984E15987E65987E65E88E96285EC6285EC6481EE6481EE6481EE6184EB6788E96788E9708AE8708AE87091F2598CF4598CF4316BE23362F33362F34F76F6A0BBFFA0BBFFDCEEFFEBF1F6EBF1F6EFF1EBEFF1EBEDF3EEEBF4F1EBF4F1E5EFEFE7EEF1E7EEF1F1EEF7F2EEF4F2EEF4EDF1EBEDF1EBECF1E8EDF0EEEDF0EEE1E7F4CFE2FFCFE2FFA0C1F36092D46092D45695DF4D98E24D98E24C9FEA4C9FEA459DEA4DA1E94DA1E95A9FDE88B5E188B5E1D4E4F5ECEFF3ECEFF3E2F9FBE2F9FBB2DEF652A9EC52A9EC1D89E81D8CF21D8CF22088EB2981DB2981DB4D8CD6ADC8FFADC8FFD5E0FFD5E0FFEBF2FBECF1F0ECF1F0E7EAEFE9ECF4E9ECF4E7F0F4E3ECF5E3ECF5E2E8FBE2E8FBE4E7F6EDF1F2EDF1F2F5F8FCE7EBFFE7EBFFBEC8F7859CE7859CE75F81DB5984E15984E15987E65987E65E88E96285EC6285EC6481EE6481EE6481EE6184EB6788E96788E9708AE8708AE87091F2598CF4598CF4316BE23362F33362F34F76F6A0BBFFA0BBFFDCEEFFEBF1F6EBF1F6EFF1EBEFF1EBEDF3EEEBF4F1EBF4F1E5EFEFE7EEF1E7EEF1F1EEF7F2EEF4F2EEF4EDF1EBEDF1EBECF1E8EDF0EEEDF0EEE1E7F4CFE2FFCFE2FFA0C1F36092D46092D45695DF4D98E24D98E24C9FEA4C9FEA459DEA4DA1E94DA1E95A9FDE88B5E188B5E1D4E4F5ECEFF3ECEFF3D7F3FED7F3FE9BCFED3297DB3297DB1C94EE1B8AEE1B8AEE1F84EA2583E62583E63885DC6B92DC6B92DCD0E1FFD0E1FFE6EAFCEBEAECEBEAECF0F2F3EEF3F6EEF3F6E0E8EFE7F0FAE7F0FAE7ECFBE7ECFBE1E4F2F2F2F8F2F2F8E9EAF4E0E4FDE0E4FDD3E1FF8DA7F48DA7F43F65CB3A69E23A69E2366AED366AED3061EB3768F43768F43665EF2E61E72E61E7336DEB2E67E22E67E23A6AE73A6AE7386AE8356EEF356EEF3167EA3F69EC3F69EC7391FACEE1FFCEE1FFDDE7F8EDEFF0EDEFF0F0F2ECF0F2ECEAF5EDE6F4EEE6F4EEE5F3F2E5F1F3E5F1F3EFECF5F0ECF1F0ECF1EEF0EAEEF0EAEEF3EAEDF1F2EDF1F2E3EDFFC1D9FFC1D9FF7BA2E05F96DF5F96DF4E91E0529DE7529DE7489BE6489BE648A2EF49A0EA49A0EA58A1E574A6DA74A6DAC4D5EFF0F2FCF0F2FCD0F4FFD0F4FF91CEF02C9ADC2C9ADC1897EC1F8DED1F8DED2085EB1F82EA1F82EA2D7FE44F83DD4F83DD9AB5F89AB5F8E1E6FFE9E8F2E9E8F2EEF2F3E7EFEFE7EFEFE7ECF5E5E9F4E5E9F4E8EEF5E8EEF5E9ECF1F0ECF2F0ECF2F0ECF7E7EBFEE7EBFED9E6FFA8C3FFA8C3FF6087E93667E93667E93166FD3166FD275DFE235DFD235DFD2662FB2366F72366F72269F61D64F11D64F12265F62265F62967FB2B65FA2B65FA3869F35276E85276E8A1B8FFD9E5FFD9E5FFEEF1F9F2F0F0F2F0F0F0F2ECF0F2ECE8F4EEE4F6EFE4F6EFE1F4F1E5F1F3E5F1F3EDEDF3F0EDEFF0EDEFF4F6F0F4F6F0EBF1ECEAF0F7EAF0F7DAE9FF9EBDF29EBDF26C98DF5893E35893E34F94E4539EE8539EE84C9EE64C9EE647A1EE469EEB469EEB549FE96BA0D96BA0D9B4C9E9E7EDFFE7EDFFD0F4FFD0F4FF91CEF02C9ADC2C9ADC1897EC1F8DED1F8DED2085EB1F82EA1F82EA2D7FE44F83DD4F83DD9AB5F89AB5F8E1E6FFE9E8F2E9E8F2EEF2F3E7EFEFE7EFEFE7ECF5E5E9F4E5E9F4E8EEF5E8EEF5E9ECF1F0ECF2F0ECF2F0ECF7E7EBFEE7EBFED9E6FFA8C3FFA8C3FF6087E93667E93667E93166FD3166FD275DFE235DFD235DFD2662FB2366F72366F72269F61D64F11D64F12265F62265F62967FB2B65FA2B65FA3869F35276E85276E8A1B8FFD9E5FFD9E5FFEEF1F9F2F0F0F2F0F0F0F2ECF0F2ECE8F4EEE4F6EFE4F6EFE1F4F1E5F1F3E5F1F3EDEDF3F0EDEFF0EDEFF4F6F0F4F6F0EBF1ECEAF0F7EAF0F7DAE9FF9EBDF29EBDF26C98DF5893E35893E34F94E4539EE8539EE84C9EE64C9EE647A1EE469EEB469EEB549FE96BA0D96BA0D9B4C9E9E7EDFFE7EDFFC6F1FFC6F1FF85C8EF299BDA299BDA1798E72090EA2090EA2388EB2281EE2281EE2A7CEB3A7BE43A7BE4658BE3658BE3CAD2FFE9E9FFE9E9FFE6EEF5E6F0F0E6F0F0ECEEF9E9EAF4E9EAF4F0F2ECF0F2ECF4F5ECF1E8EBF1E8EBF7EEF8F1F0F9F1F0F9E1EDFFCAE4FFCAE4FF91B5FF406AE5406AE53060FB3060FB285FFF1D5BFF1D5BFF1C63FA1B69F81B69F81564F31363F81363F81564FF1564FF1A62FF2960FF2960FF3E6AF37695F07695F0C8DDFFE3E8FFE3E8FFF5F3F9F2F0EFF2F0EFEFF3EDEFF3EDE7F4F2E2F5F2E2F5F2E2F5F2E5F3F1E5F3F1ECEFF3F0EFF1F0EFF1F4F5F1F4F5F1E8EDEEE1EEFEE1EEFEC7DDFF7BA0DE7BA0DE5D91DE5290E45290E45097E7569FE9569FE954A2E954A2E94A9FED479CEC479CEC559FED6399DA6399DA9FB8E0DCE7FFDCE7FFB9ECFFB9ECFF74BEE8259AD7259AD71397E41F92E91F92E9248BEC2784F12784F12A7DF1337AF3337AF34678E24678E297AAF5DEE4FFDEE4FFDCE9F7E7F2F6E7F2F6EBEBF9F4EEF9F4EEF9F4F5ECF4F5ECF6F4ECF5EAF2F5EAF2F9EDF9F3EFF5F3EFF5E8EEF9DAEEFFDAEEFFB8D6FF5F83EF5F83EF3460F13460F12D62FF2565FF2565FF1761FB1565F81565F81262F71565FF1565FF1566FF1566FF165EFF2C61FE2C61FE4C72F0A1BEFFA1BEFFD8E9FFEAECFEEAECFEEEECF2F1F2F0F1F2F0EDF3EEEDF3EEE7F3F3E6F4F3E6F4F3E6F4F2E7F4F2E7F4F2EDF1F2EFF1F2EFF1F2EBEFF0EBEFF0E3ECF5D7EAFFD7EAFFA5C5F66592DB6592DB5790E54E8FE44E8FE45197EA58A0E858A0E857A3EB57A3EB4D9FED489AEC489AEC559EF05C94DB5C94DB8AA8D9CFE0FFCFE0FFB9ECFFB9ECFF74BEE8259AD7259AD71397E41F92E91F92E9248BEC2784F12784F12A7DF1337AF3337AF34678E24678E297AAF5DEE4FFDEE4FFDCE9F7E7F2F6E7F2F6EBEBF9F4EEF9F4EEF9F4F5ECF4F5ECF6F4ECF5EAF2F5EAF2F9EDF9F3EFF5F3EFF5E8EEF9DAEEFFDAEEFFB8D6FF5F83EF5F83EF3460F13460F12D62FF2565FF2565FF1761FB1565F81565F81262F71565FF1565FF1566FF1566FF165EFF2C61FE2C61FE4C72F0A1BEFFA1BEFFD8E9FFEAECFEEAECFEEEECF2F1F2F0F1F2F0EDF3EEEDF3EEE7F3F3E6F4F3E6F4F3E6F4F2E7F4F2E7F4F2EDF1F2EFF1F2EFF1F2EBEFF0EBEFF0E3ECF5D7EAFFD7EAFFA5C5F66592DB6592DB5790E54E8FE44E8FE45197EA58A0E858A0E857A3EB57A3EB4D9FED489AEC489AEC559EF05C94DB5C94DB8AA8D9CFE0FFCFE0FFB0E9FFB0E9FF67B5E3239BD7239BD71297E11C93E91C93E9218AEB2883EF2883EF2B7BF22F77FA2F77FA356FEC356FEC5E83E5B3CBFFB3CBFFDBEBFFE5EEF8E5EEF8EDE7F8F6EDFAF6EDFAF5F2F4F5F2F4F0ECF1F9EFFFF9EFFFF7EAFFF3EAF7F3EAF7F1EFFBE0EAFCE0EAFCD1E7FF98B4FF98B4FF486EEA486EEA3062F82B69FF2B69FF1C60FF1962FF1962FF1C63FF1D66FF1D66FF1C65FF1C65FF2063FC3665EF3665EF6E8FF6C4DBFFC4DBFFDEECFFEBEEFCEBEEFCE9E8F1EDF1F2EDF1F2EDF3F2EDF3F2EBF2F5EBF2F5EBF2F5EBF3F3EDF3F2EDF3F2EDF3F2EDF2F5EDF2F5E7EDF4E7EDF4E3EEFFC5DFFFC5DFFF7CA5E35A92E35A92E35092EB4C91E84C91E85298EB5BA0E95BA0E95CA4EC5CA4EC519DEF4C99EF4C99EF549CF05A92DF5A92DF789CD8C0D8FFC0D8FFABE7FFABE7FF5EB0DF259DD9259DD91297E11B92E81B92E81F88E92782EB2782EB2A78F02D72FD2D72FD2E6BF72E6BF73B70E87DA5FD7DA5FDD5E9FFE4E8FBE4E8FBF4ECFDF5EAFAF5EAFAF1EDF8F1EDF8E8E8F4F5F0FFF5F0FFF1EAFFF2EAFBF2EAFBF5F1FDE5E8F6E5E8F6E1EFFFC6E0FFC6E0FF6D94F06D94F03669E82863F92863F91E5FFF1F62FF1F62FF2465FF2464FE2464FE2264FF2264FF306BF74B75E64B75E69DBBFFD2E6FFD2E6FFE5F1FDE8EEF9E8EEF9EAEDF5EAF0F5EAF0F5ECF1F4ECF1F4EDF0F4EFF1F2EFF1F2F2F1F5F0F2F3F0F2F3EEF3F2EBF2F5EBF2F5EAF0FBEAF0FBDCEAFFA8C9FBA8C9FB5D8FD75092EB5092EB4991EF4B93EB4B93EB559BEE5C9FEA5C9FEA5DA1EC5DA1EC549DEF5098F05098F05397F05A92E45A92E46D97DAB1D0FFB1D0FFABE7FFABE7FF5EB0DF259DD9259DD91297E11B92E81B92E81F88E92782EB2782EB2A78F02D72FD2D72FD2E6BF72E6BF73B70E87DA5FD7DA5FDD5E9FFE4E8FBE4E8FBF4ECFDF5EAFAF5EAFAF1EDF8F1EDF8E8E8F4F5F0FFF5F0FFF1EAFFF2EAFBF2EAFBF5F1FDE5E8F6E5E8F6E1EFFFC6E0FFC6E0FF6D94F06D94F03669E82863F92863F91E5FFF1F62FF1F62FF2465FF2464FE2464FE2264FF2264FF306BF74B75E64B75E69DBBFFD2E6FFD2E6FFE5F1FDE8EEF9E8EEF9EAEDF5EAF0F5EAF0F5ECF1F4ECF1F4EDF0F4EFF1F2EFF1F2F2F1F5F0F2F3F0F2F3EEF3F2EBF2F5EBF2F5EAF0FBEAF0FBDCEAFFA8C9FBA8C9FB5D8FD75092EB5092EB4991EF4B93EB4B93EB559BEE5C9FEA5C9FEA5DA1EC5DA1EC549DEF5098F05098F05397F05A92E45A92E46D97DAB1D0FFB1D0FFA9E6FFA9E6FF58ACDC269FDD269FDD1198E21991EA1991EA1E87E82684E82684E82A79EE316DFF316DFF2F69FF2F69FF236BF44983EC4983ECB5CAFFE9E6FFE9E6FFF7ECFFF3E9F9F3E9F9EAEAFCEAEAFCE5ECFDE8EDFCE8EDFCE8EBF9EFECFBEFECFBF0EEFAECEEF6ECEEF6E7F3FFD1F0FFD1F0FFA0CDFFA0CDFF5188E92765E92765E92563FF2361FF2361FF2765F92B67F62B67F63067F83067F83E6EEB7398EC7398ECC0DBFFDCEAFFDCEAFFE7F0FDE6EFF8E6EFF8E6F0F7E8EFF8E8EFF8ECEFF7ECEFF7F1F1F1F5F0F1F5F0F1F6EEF5F3EFF5F3EFF5EEF3F1E9F3F3E9F3F3E8EFFEE8EFFEC7DAFD84ACE784ACE7568EDF4990F14990F14490F44E97F24E97F2579DF05DA0EB5DA0EB5C9EEC5C9EEC569CF05197F25197F25192EE5A93E95A93E96592DCA0C7FFA0C7FFA9E6FFA9E6FF58ACDC269FDD269FDD1198E21991EA1991EA1E87E82684E82684E82A79EE316DFF316DFF2F69FF2F69FF236BF44983EC4983ECB5CAFFE9E6FFE9E6FFF7ECFFF3E9F9F3E9F9EAEAFCEAEAFCE5ECFDE8EDFCE8EDFCE8EBF9EFECFBEFECFBF0EEFAECEEF6ECEEF6E7F3FFD1F0FFD1F0FFA0CDFFA0CDFF5188E92765E92765E92563FF2361FF2361FF2765F92B67F62B67F63067F83067F83E6EEB7398EC7398ECC0DBFFDCEAFFDCEAFFE7F0FDE6EFF8E6EFF8E6F0F7E8EFF8E8EFF8ECEFF7ECEFF7F1F1F1F5F0F1F5F0F1F6EEF5F3EFF5F3EFF5EEF3F1E9F3F3E9F3F3E8EFFEE8EFFEC7DAFD84ACE784ACE7568EDF4990F14990F14490F44E97F24E97F2579DF05DA0EB5DA0EB5C9EEC5C9EEC569CF05197F25197F25192EE5A93E95A93E96592DCA0C7FFA0C7FFA3E6FFA3E6FF54AAD8249FDD249FDD1299E51A93E91A93E91F88E92A86ED2A86ED2D7BF3306CFE306CFE2E6BFF2E6BFF1867F82A6EE52A6EE5829FEADFE2FFDFE2FFEDE4FEEFE7F8EFE7F8E6E7FBE6E7FBEAF2FFDFE8F2DFE8F2E5ECF5EDEDFBEDEDFBEAE7F6F2F0FCF2F0FCE9F0F9CFE9EFCFE9EFCEFAFFCEFAFF7BB0F33772DF3772DF336DFF2965FF2965FF2463F4316DF5316DF5386DF3386DF3436EDB99BAF999BAF9D1E6FFE4EFFFE4EFFFE6ECF9E6F0FAE6F0FAE4EEF8E8EEF9E8EEF9EBEFF4EBEFF4F2F1EDF5F0EDF5F0EDF6EEF5F5EEF5F5EEF5F0F3F1E9F2F6E9F2F6D9E8FFD9E8FFAAC6F56896DD6896DD5B98EE4893EF4893EF4593F0539CF2539CF2579DF05EA0EF5EA0EF5A9BEC5A9BEC569CF05097EE5097EE4E8FEB5A91EC5A91EC628EE298BEFF98BEFFAAF3FFAAF3FF58B3DA229FDC229FDC139AE61A94E81A94E81E88E72F87F32F87F32774EF286EFD286EFD2268FC2268FC226BFB306EF0306EF04971DBA6B9FFA6B9FFEBEAFFECE6F7ECE6F7EBEEFDEBEEFDE4EDF7E6EDF6E6EDF6E8EDF6EFEFFDEFEFFDF1EDFFEEE5FFEEE5FFF0EFFFDFF0F9DFF0F9CDEEFDCDEEFDB8E5FF6296E36296E3386CEE336CFF336CFF2A6AFE2768F22768F23068E53068E5608CEBBBD7FFBBD7FFE3F1FFE2E8F5E2E8F5EAEEF9E8EDFFE8EDFFE6ECFFECF2F9ECF2F9F0F3F1F0F3F1F6F7EEEEEEE8EEEEE8F2F1F5F6F4FAF6F4FAEDEBEAEBF4FEEBF4FEC2E2FFC2E2FF79A9EB5E94E95E94E95593ED4F99E74F99E756A1EB569CE9569CE9589AEB5C9CF45C9CF45C9FF65C9FF6539DEB4B95E34B95E34C8FE6598FED598FED5F86E89CBCFF9CBCFFAAF3FFAAF3FF58B3DA229FDC229FDC139AE61A94E81A94E81E88E72F87F32F87F32774EF286EFD286EFD2268FC2268FC226BFB306EF0306EF04971DBA6B9FFA6B9FFEBEAFFECE6F7ECE6F7EBEEFDEBEEFDE4EDF7E6EDF6E6EDF6E8EDF6EFEFFDEFEFFDF1EDFFEEE5FFEEE5FFF0EFFFDFF0F9DFF0F9CDEEFDCDEEFDB8E5FF6296E36296E3386CEE336CFF336CFF2A6AFE2768F22768F23068E53068E5608CEBBBD7FFBBD7FFE3F1FFE2E8F5E2E8F5EAEEF9E8EDFFE8EDFFE6ECFFECF2F9ECF2F9F0F3F1F0F3F1F6F7EEEEEEE8EEEEE8F2F1F5F6F4FAF6F4FAEDEBEAEBF4FEEBF4FEC2E2FFC2E2FF79A9EB5E94E95E94E95593ED4F99E74F99E756A1EB569CE9569CE9589AEB5C9CF45C9CF45C9FF65C9FF6539DEB4B95E34B95E34C8FE6598FED598FED5F86E89CBCFF9CBCFFB0F3FFB0F3FF5EB6DB24A0DC24A0DC129BE71C94E71C94E71E86E32F84F22F84F22975F32371FA2371FA2571FF2571FF2167F72C6AF42C6AF43A6DE96F8FF06F8FF0D3D8FFEEEAFFEEEAFFEEEFFDEEEFFDEAEFF8EEF0FBEEF0FBEBECFAEBEAFAEBEAFAEFEAFFEFE8FFEFE8FFF0EDFFE3EDF7E3EDF7DEF4FFDEF4FFC7EAFF98C3FC98C3FC4D7BE7346AF3346AF32A69F93272F93272F94076E84076E886ACFECDE3FFCDE3FFE6F1FFECEFF7ECEFF7EFF0FAE7EAFFE7EAFFEAEEFFEEF1F6EEF1F6EEF2EDEEF2EDF1F5EAEFF2E9EFF2E9EEF2F3F0F3F8F0F3F8F0EFF3E5F0FFE5F0FFA0C8FDA0C8FD649CE95691EE5691EE5594F0549CE4549CE459A5E75BA0E95BA0E95B9DEE589AF3589AF3579BF4579BF44F9AE84A95E34A95E34F8FE7588CEA588CEA6087EA9DBDFF9DBDFFBCF0FFBCF0FF70BBE225A1DD25A1DD149EE71F95E81F95E82084E22E83F02E83F02B7AF32577FB2577FB2170FD2170FD256BFB2864F32864F33067EE466BDD466BDDA7B0FFEDEAFFEDEAFFEDECFFEDECFFEEEFF9F0EEFFF0EEFFEFEDFFEAE8FBEAE8FBECEBFBF0EEFFF0EEFFEDEDFFE8EEFBE8EEFBE4F1FFE4F1FFD7EDFFC6E4FFC6E4FF79A1F44271E44271E4316BF33B75F73B75F75F8CEE5F8CEEB1D0FFDAECFFDAECFFE5ECFDF2F5FAF2F5FAF2F3F7EBEDF8EBEDF8F0F1FFEFF0FAEFF0FAF0F2F3F0F2F3EFF0ECF0F4EFF0F4EFEEF3F4EAF2F9EAF2F9EBEFFFD2E3FFD2E3FF80ABEA80ABEA5B93E55791F05791F05697F3549CE9549CE959A4E95EA2ED5EA2ED5D9FF0599BF4599BF45298F35298F34C98EB4B94E84B94E8508FEB5589E75589E7658CE8A1C3FFA1C3FFBCF0FFBCF0FF70BBE225A1DD25A1DD149EE71F95E81F95E82084E22E83F02E83F02B7AF32577FB2577FB2170FD2170FD256BFB2864F32864F33067EE466BDD466BDDA7B0FFEDEAFFEDEAFFEDECFFEDECFFEEEFF9F0EEFFF0EEFFEFEDFFEAE8FBEAE8FBECEBFBF0EEFFF0EEFFEDEDFFE8EEFBE8EEFBE4F1FFE4F1FFD7EDFFC6E4FFC6E4FF79A1F44271E44271E4316BF33B75F73B75F75F8CEE5F8CEEB1D0FFDAECFFDAECFFE5ECFDF2F5FAF2F5FAF2F3F7EBEDF8EBEDF8F0F1FFEFF0FAEFF0FAF0F2F3F0F2F3EFF0ECF0F4EFF0F4EFEEF3F4EAF2F9EAF2F9EBEFFFD2E3FFD2E3FF80ABEA80ABEA5B93E55791F05791F05697F3549CE9549CE959A4E95EA2ED5EA2ED5D9FF0599BF4599BF45298F35298F34C98EB4B94E84B94E8508FEB5589E75589E7658CE8A1C3FFA1C3FFCEEFFFCEEFFF84C2EB2AA2DD2AA2DD149FE82397EB2397EB2488E62F85EF2F85EF2B7EF2257CFC257CFC1869F21869F22D73FF2361F52361F52762F43864E73864E7717FE9D5D4FFD5D4FFEBEAFFEBEAFFEFECFBF1E9FFF1E9FFF4EEFFF0ECFFF0ECFFECECFAEFF1FCEFF1FCE8ECF7EFF2FFEFF2FFE5E9FBE5E9FBE6EFFFD8EAFFD8EAFFB3D0FF658DE6658DE63B6EE84072EA4072EA87A9FC87A9FCCDE3FFDFEBFFDFEBFFE5E9FBF4F5F9F4F5F9F2F2F2F2F3F7F2F3F7F2F4FCF1EFFBF1EFFBF4F3FCF4F3FCEDEFEFF0F5F3F0F5F3EAF4F4E5F1FDE5F1FDDDEBFFAFC9F8AFC9F86E9CE36E9CE35A93E95996F45996F45A9BF7559FED559FED58A3ED5DA3F05DA3F0599DF0589CF5589CF55197F25197F24B94EF4C92EF4C92EF528FF15386E45386E46C94E6AACCFFAACCFFCEEFFFCEEFFF84C2EB2AA2DD2AA2DD149FE82397EB2397EB2488E62F85EF2F85EF2B7EF2257CFC257CFC1869F21869F22D73FF2361F52361F52762F43864E73864E7717FE9D5D4FFD5D4FFEBEAFFEBEAFFEFECFBF1E9FFF1E9FFF4EEFFF0ECFFF0ECFFECECFAEFF1FCEFF1FCE8ECF7EFF2FFEFF2FFE5E9FBE5E9FBE6EFFFD8EAFFD8EAFFB3D0FF658DE6658DE63B6EE84072EA4072EA87A9FC87A9FCCDE3FFDFEBFFDFEBFFE5E9FBF4F5F9F4F5F9F2F2F2F2F3F7F2F3F7F2F4FCF1EFFBF1EFFBF4F3FCF4F3FCEDEFEFF0F5F3F0F5F3EAF4F4E5F1FDE5F1FDDDEBFFAFC9F8AFC9F86E9CE36E9CE35A93E95996F45996F45A9BF7559FED559FED58A3ED5DA3F05DA3F0599DF0589CF5589CF55197F25197F24B94EF4C92EF4C92EF528FF15386E45386E46C94E6AACCFFAACCFFDEECFFDEECFF9BCBF52FA3DC2FA3DC129EE52498EC2498EC298BE92F86EE2F86EE2B7EF1217BF7217BF7196EF4196EF4266CFF2563FD2563FD2160FE3062F83062F8495CE19FA1FF9FA1FFEAE7FFEAE7FFF2ECFFEFE4FEEFE4FEF6EDFFF5EFFFF5EFFFECECF8EEF3FCEEF3FCE9EEF7F2F2FEF2F2FEECE9F8ECE9F8F3F0FFE4E8FFE4E8FFDDEDFF99B6F999B6F94F7AE15A82E85A82E8B4CCFFB4CCFFDDE9FFE2E8FFE2E8FFE8ECFEF0F1F5F0F1F5F2F1EDFAF8F7FAF8F7F4F3F7EFECFBEFECFBF3F3FFF3F3FFEDF0F4EEF4F3EEF4F3E9F5F7DFF2FFDFF2FFC7DEFF8BAEEE8BAEEE6697E76697E75A96EF5797F55797F5569CF757A0F057A0F058A3EF5CA1F05CA1F05599EC559CF4559CF44E94F14E94F14A91F34B8EF54B8EF5528BF45282E15282E1769EE6B0D4FFB0D4FFEBE9FFEBE9FFB1D4FF37A7DC37A7DC149DE12296EA2296EA288CEA2F85EF2F85EF297CEF1D78F11D78F1237AFF237AFF1A60F32768FF2768FF2262FF2257FB2257FB3A54EE646CE7646CE7D0CFFFD0CFFFEEE9FFEEE5FFEEE5FFF3EBFCF6EFFEF6EFFEEDEBF7EFF4FDEFF4FDEBF3FAECEEF6ECEEF6F5F2FBF5F2FBFAF0FCF3EDFEF3EDFEEAF1FFC7DBFFC7DBFF7699E988A9F888A9F8D8E6FFD8E6FFE6EAFFE6EAFFE6EAFFECF0FFEFF0F4EFF0F4F3F2EEFBF8F3FBF8F3F5F0F1EDEAF9EDEAF9F0EFFFF0EFFFEDEFF7EAF1F4EAF1F4E6F5F8D5EDFFD5EDFFABCAFF739DE8739DE85F95E85F95E85B9AF25396F25396F2559CF457A1F357A1F3569FEF589FEF589FEF5298EC5299F15299F14A91F24A91F2478DF84A89F94A89F95286F85681E25681E283A9E9B9DDFFB9DDFFEBE9FFEBE9FFB1D4FF37A7DC37A7DC149DE12296EA2296EA288CEA2F85EF2F85EF297CEF1D78F11D78F1237AFF237AFF1A60F32768FF2768FF2262FF2257FB2257FB3A54EE646CE7646CE7D0CFFFD0CFFFEEE9FFEEE5FFEEE5FFF3EBFCF6EFFEF6EFFEEDEBF7EFF4FDEFF4FDEBF3FAECEEF6ECEEF6F5F2FBF5F2FBFAF0FCF3EDFEF3EDFEEAF1FFC7DBFFC7DBFF7699E988A9F888A9F8D8E6FFD8E6FFE6EAFFE6EAFFE6EAFFECF0FFEFF0F4EFF0F4F3F2EEFBF8F3FBF8F3F5F0F1EDEAF9EDEAF9F0EFFFF0EFFFEDEFF7EAF1F4EAF1F4E6F5F8D5EDFFD5EDFFABCAFF739DE8739DE85F95E85F95E85B9AF25396F25396F2559CF457A1F357A1F3569FEF589FEF589FEF5298EC5299F15299F14A91F24A91F2478DF84A89F94A89F95286F85681E25681E283A9E9B9DDFFB9DDFFF3E8FFF3E8FFC7E2FF49B0E149B0E11CA0E02094E82094E8268CEC2D85F12D85F12A7DF01F7AF31F7AF3237BFE237BFE1A63F52568FF2568FF2160FF1D51FB1D51FB3656FD4253E24253E29499FC9499FCDCDAFFEDEAFFEDEAFFF1ECF5F7EFFAF7EFFAF3ECFBF1F4FFF1F4FFEAF1FAEBF0F1EBF0F1F6F6F6F6F6F6FDF1F7FDF1FDFDF1FDF0EEFFE0EAFFE0EAFFB1CBFFBBD4FFBBD4FFEAEFFFEAEFFFF0EDFCEDF1FFEDF1FFECF0FFF0F3F7F0F3F7F8F6F5F6F1EEF6F1EEF6F0F1F2EEFAF2EEFAECEBFBECEBFBEDF0F8EAF3F7EAF3F7E2F3FCC5E0FBC5E0FB8BB1F16496E86496E85B97EB5B97EB5D9EF35199ED5199ED559EF258A2F458A2F4539CEE579DF0579DF05198EF4E95F04E95F0498FF4498FF4488BFF4883FE4883FE5683FC5C83E55C83E593B6EEC6E8FFC6E8FFF8EBFFF8EBFFD6EEFF5EBAE55EBAE528A4E01F94E51F94E5238CED2E86F22E86F22D80F4267EFA267EFA1A6FF31A6FF3246FFF2063FF2063FF1F5DFF2256FF2256FF3059FF3953ED3953ED5965E15965E1C4C8FFEAEEFFEAEEFFF1EFF5FAF0FCFAF0FCF7EDFDF3F3FFF3F3FFE7EDF8ECF7F4ECF7F4EDF3EEEDF3EEFBF2F5FAECF7FAECF7F9EFFFE8EAFFE8EAFFE3F7FFD9ECFFD9ECFFEEECF8EEECF8F6EEF8F2F5FFF2F5FFE7EEFDF2F6FBF2F6FBFAF9FBF1ECEBF1ECEBF8F1F4F7F3FEF7F3FEEBEBF7EBEBF7EEF1F9E9F4FCE9F4FCDFF1FFB4D1F6B4D1F6729FE35E95EA5E95EA5999ED5999ED5FA3F6549DED549DED58A3F25AA4F65AA4F65199ED569CF0569CF05299F14E94F24E94F24B8FFA4B8FFA4B88FF4B81FF4B81FF5B84FE6688E66688E6A1C0F3D3F0FFD3F0FFF8EBFFF8EBFFD6EEFF5EBAE55EBAE528A4E01F94E51F94E5238CED2E86F22E86F22D80F4267EFA267EFA1A6FF31A6FF3246FFF2063FF2063FF1F5DFF2256FF2256FF3059FF3953ED3953ED5965E15965E1C4C8FFEAEEFFEAEEFFF1EFF5FAF0FCFAF0FCF7EDFDF3F3FFF3F3FFE7EDF8ECF7F4ECF7F4EDF3EEEDF3EEFBF2F5FAECF7FAECF7F9EFFFE8EAFFE8EAFFE3F7FFD9ECFFD9ECFFEEECF8EEECF8F6EEF8F2F5FFF2F5FFE7EEFDF2F6FBF2F6FBFAF9FBF1ECEBF1ECEBF8F1F4F7F3FEF7F3FEEBEBF7EBEBF7EEF1F9E9F4FCE9F4FCDFF1FFB4D1F6B4D1F6729FE35E95EA5E95EA5999ED5999ED5FA3F6549DED549DED58A3F25AA4F65AA4F65199ED569CF0569CF05299F14E94F24E94F24B8FFA4B8FFA4B88FF4B81FF4B81FF5B84FE6688E66688E6A1C0F3D3F0FFD3F0FFF2EBFAF2EBFAE6FBFF7CCDF07CCDF03CA9DF2698E52698E52691F22E85F32E85F33383FA287CF9287CF92275F92275F91F6CFE2167FF2167FF2761FF2659FD2659FD2653FA2C53F22C53F23C53E53C53E58896FFDCE5FFDCE5FFEEF0FBF9EFFBF9EFFBF9ECFAF3F2FFF3F2FFEDF3FEE8F7F3E8F7F3EBF7F1EBF7F1F4F3F7F9EFFBF9EFFBF8EFFCF0F0FEF0F0FEE6F2FEE8F3FBE8F3FBF9F2F9F9F2F9FAF2F9EDF3FEEDF3FEEAF4FEEDF4FDEDF4FDF1F4F9F7F0F5F7F0F5F5EEF3F2EFF8F2EFF8F8FAFFF8FAFFE8F0F7DFEDF9DFEDF9D7EDFF94B5E294B5E26C9CE4609CF0609CF05FA1F25FA1F25CA4F25AA7F05AA7F058A6F258A2F458A2F4559CF35398EF5398EF5194F04E92F34E92F34B8BFB4B8BFB4C85FF4979FF4979FF6085FD6E8BE66E8BE6BBD3FFDEF5FFDEF5FFF6F1FAF6F1FAE5F8FFA3E4FFA3E4FF4EACDA309BE5309BE5288FEF3189F53189F53280F82C7CF92C7CF92375F92375F91F6CFE2368FF2368FF2D63FE2C5CFA2C5CFA2458F92755F72755F73151F13151F14B61E2C0CFFFC0CFFFE4E8FFFBF0FFFBF0FFF7EAF8F2EFFEF2EFFEEBF2FBE6F6F5E6F6F5E8F6F5E8F6F5EFF2FAF4F0FBF4F0FBF8F0FAF4F2F8F4F2F8EDF5F4EFF5F4EFF5F4FAF3F8FAF3F8FAF3FAEDF4FDEDF4FDE8F5FDE9F3FDE9F3FDF0F2FCF9F1FCF9F1FCF9F0FAF5F3F9F5F3F9F0F4F9F0F4F9E6F1F9DEF0FFDEF0FFB9D3F786ACE286ACE2669BE45D9EEF5D9EEF5CA1F05CA1F058A3EF57A5EC57A5EC57A4ED559EF2559EF2549BF35697F35697F35294F34D8FF64D8FF64988FB4988FB4D85FF5282FF5282FF5C81F188A3F488A3F4CEE0FFE8F7FFE8F7FFF6F1FAF6F1FAE5F8FFA3E4FFA3E4FF4EACDA309BE5309BE5288FEF3189F53189F53280F82C7CF92C7CF92375F92375F91F6CFE2368FF2368FF2D63FE2C5CFA2C5CFA2458F92755F72755F73151F13151F14B61E2C0CFFFC0CFFFE4E8FFFBF0FFFBF0FFF7EAF8F2EFFEF2EFFEEBF2FBE6F6F5E6F6F5E8F6F5E8F6F5EFF2FAF4F0FBF4F0FBF8F0FAF4F2F8F4F2F8EDF5F4EFF5F4EFF5F4FAF3F8FAF3F8FAF3FAEDF4FDEDF4FDE8F5FDE9F3FDE9F3FDF0F2FCF9F1FCF9F1FCF9F0FAF5F3F9F5F3F9F0F4F9F0F4F9E6F1F9DEF0FFDEF0FFB9D3F786ACE286ACE2669BE45D9EEF5D9EEF5CA1F05CA1F058A3EF57A5EC57A5EC57A4ED559EF2559EF2549BF35697F35697F35294F34D8FF64D8FF64988FB4988FB4D85FF5282FF5282FF5C81F188A3F488A3F4CEE0FFE8F7FFE8F7FFF6F5F9F6F5F9E4F5FEC7F6FFC7F6FF72BCE63C9BE03C9BE03094ED348AF4348AF43282F72E7BF92E7BF92875FA2875FA226DFF2569FE2569FE3065FB2E5FF72E5FF7245BF82258F92258F92851FA2851FA2644D88294F38294F3DFE4FFEEE6FFEEE6FFFAF0FFF1F0FAF1F0FAEDF5FCE6F3FBE6F3FBE4F3FCE4F3FCE9F1FEEFF1FBEFF1FBF4F3F5F6F4F3F6F4F3F2F6F1F4F4F4F4F4F4FAF2F9FAF2F9F8F3FCEBF5FCEBF5FCE6F6FCE6F2FCE6F2FCECF2FFF7F2FFF7F2FFFDF5FFF6F7FBF6F7FBE6EFF3E6EFF3E2F2FED2ECFFD2ECFF92B5E177A4E177A4E1639CE75EA1F05EA1F05BA3F05BA3F058A3ED56A4EB56A4EB54A0EC539AF1539AF15497F45494F35494F35391F54E8CF84E8CF84784FA4784FA4C82FF5785FF5785FF5C7EE2A5BEFFA5BEFFDEEAFFECF3FFECF3FFF6F5F9F6F5F9E4F5FEC7F6FFC7F6FF72BCE63C9BE03C9BE03094ED348AF4348AF43282F72E7BF92E7BF92875FA2875FA226DFF2569FE2569FE3065FB2E5FF72E5FF7245BF82258F92258F92851FA2851FA2644D88294F38294F3DFE4FFEEE6FFEEE6FFFAF0FFF1F0FAF1F0FAEDF5FCE6F3FBE6F3FBE4F3FCE4F3FCE9F1FEEFF1FBEFF1FBF4F3F5F6F4F3F6F4F3F2F6F1F4F4F4F4F4F4FAF2F9FAF2F9F8F3FCEBF5FCEBF5FCE6F6FCE6F2FCE6F2FCECF2FFF7F2FFF7F2FFFDF5FFF6F7FBF6F7FBE6EFF3E6EFF3E2F2FED2ECFFD2ECFF92B5E177A4E177A4E1639CE75EA1F05EA1F05BA3F05BA3F058A3ED56A4EB56A4EB54A0EC539AF1539AF15497F45494F35494F35391F54E8CF84E8CF84784FA4784FA4C82FF5785FF5785FF5C7EE2A5BEFFA5BEFFDEEAFFECF3FFECF3FFF2F3F7F2F3F7EAF5FDD5F6FFD5F6FFA2D8FB509FDE509FDE3D97EC368DEF368DEF3287F5307EF9307EF92B76FB2B76FB276DFF2A69FF2A69FF3266F92E61F72E61F7225BF61F58FB1F58FB2251FF2251FF2548EB495BD8495BD8BABEFFE7E1FFE7E1FFF6EEFFF7F6FFF7F6FFEDF3FAE7F2FFE7F2FFE5F2FFE5F2FFE9F2FFECF3FCECF3FCF1F6F4F5F7F1F5F7F1F7F5F4F7F4F6F7F4F6F9F0FAF9F0FAF6F2FDEEF7FBEEF7FBE9F8FBE6F2FCE6F2FCE9F1FEF4F1FFF4F1FFF8F4FFF6F6FCF6F6FCE5EFF6E5EFF6DCF3FFB7D8F9B7D8F979A5DA6BA2E56BA2E562A0EC5FA4F35FA4F35DA5F25DA5F25AA5EF57A4ED57A4ED56A0EE5598F45598F45391F5538FF3538FF3528CF54E8AFC4E8AFC4A83FC4A83FC4B80FF5481F45481F4698DE1C0D8FFC0D8FFE8EFFFF0F0FCF0F0FCF4F2F8F4F2F8F0F6FDE1F1FEE1F1FEC9EBFF78B5ED78B5ED4997E33991EB3991EB2F88F02F82F62F82F62C77FB2C77FB2B6EFF2E68FF2E68FF2E67F92961F62961F61F59F81B55FB1B55FB1C4EFF1C4EFF264BF93547E03547E07278EFDEDDFFDEDDFFEBE8FFF6F6FFF6F6FFEBEEF6ECF0FFECF0FFE9F0FFE9F0FFE9F2FFEAF5F9EAF5F9F0F7F2F3F7F2F3F7F2F5F4F8F7F1FCF7F1FCF5EEFBF5EEFBF3F2FCF1F7FCF1F7FCEDF8FCE9F4FCE9F4FCE8F1FBEFF0FEEFF0FEF3F1FDF3F4FEF3F4FEE6F2FEE6F2FED0EBFF92BCE692BCE66DA6E364A5EF64A5EF60A5F460A6F960A6F95AA3F35AA3F35AA4F259A3F159A3F1579FF35796F85796F8558FF8558CF5558CF55189F64F87FE4F87FE4F86FF4F86FF4D81F95482E75482E789AFEFD4EDFFD4EDFFF0F4FFFAF3FAFAF3FAF4F2F8F4F2F8F0F6FDE1F1FEE1F1FEC9EBFF78B5ED78B5ED4997E33991EB3991EB2F88F02F82F62F82F62C77FB2C77FB2B6EFF2E68FF2E68FF2E67F92961F62961F61F59F81B55FB1B55FB1C4EFF1C4EFF264BF93547E03547E07278EFDEDDFFDEDDFFEBE8FFF6F6FFF6F6FFEBEEF6ECF0FFECF0FFE9F0FFE9F0FFE9F2FFEAF5F9EAF5F9F0F7F2F3F7F2F3F7F2F5F4F8F7F1FCF7F1FCF5EEFBF5EEFBF3F2FCF1F7FCF1F7FCEDF8FCE9F4FCE9F4FCE8F1FBEFF0FEEFF0FEF3F1FDF3F4FEF3F4FEE6F2FEE6F2FED0EBFF92BCE692BCE66DA6E364A5EF64A5EF60A5F460A6F960A6F95AA3F35AA3F35AA4F259A3F159A3F1579FF35796F85796F8558FF8558CF5558CF55189F64F87FE4F87FE4F86FF4F86FF4D81F95482E75482E789AFEFD4EDFFD4EDFFF0F4FFFAF3FAFAF3FAFBF6FFFBF6FFF6F2FDF0F2FDF0F2FDDEEFFFABD6FFABD6FF5B9EE33E97E73E97E72989E72E84F42E84F42D79FB2D79FB326EFF3068FF3068FF2B67FB2460F92460F91D58FB1B53FF1B53FF194AFE194AFE274CFF3546F53546F5494FDEB0B3FFB0B3FFECEDFFE9E9F9E9E9F9F0F1FBF1EFFFF1EFFFEFEFFFEFEFFFEDF3FEEDF6F9EDF6F9EFF9F3F1F8F5F1F8F5F4F2FEF6F0FFF6F0FFF3EFFBF3EFFBF4F3FDF4F7FCF4F7FCF1F7FCEBF5FCEBF5FCE9F2FBEEF0FBEEF0FBEEF0FBF0F2FDF0F2FDE1EFFFE1EFFFBADBFC78ACDB78ACDB67ABEC5DA8F65DA8F65EA7FB5CA5FB5CA5FB579FF3579FF357A0F257A0F257A0F2589BF75993FC5993FC578EFD588BF9588BF95488FA4E83FC4E83FC4E83FC4E83FC4F83F56191E96191E9A9D2FFDDF5FFDDF5FFF5F7FFFFF7FAFFF7FAFEF4FFFEF4FFFBF1FEFAF2FDFAF2FDECF0FFCFECFFCFECFF7EB7F53E9AE13E9AE12990E72C87F32C87F32E7BFA2E7BFA356CFF3368FF3368FF2968FF1F61FC1F61FC1D58FF1D53FF1D53FF1C4CFF1C4CFF284BFF2F42FF2F42FF3F47E86F74DA6F74DAD9DCFFE5E5FDE5E5FDF7F4FFF6EDFFF6EDFFF4EEFFF4EEFFF1F4FCEFF7F6EFF7F6EFF8F5EFF6F9EFF6F9F1F1FFF2EFFFF2EFFFF4F1FFF4F1FFF4F3FCF7F5FBF7F5FBF3F6FBEFF5FAEFF5FAECF5F9EEF4FBEEF4FBEDF2FBEFF2FFEFF2FFD6E5FFD6E5FF9DC4EB6FABDF6FABDF5DAAEF55A7F855A7F859A6FD569FFA569FFA569EF6569EF6569DF4579BF4579BF45796F8588FFE588FFE578AFE5789FB5789FB5687FB4E81FD4E81FD4A7DF74A7DF75488F37FB1FD7FB1FDC1EBFFDEF9FDDEF9FDFAFAFAFFF7F5FFF7F5FEF4FFFEF4FFFBF1FEFAF2FDFAF2FDECF0FFCFECFFCFECFF7EB7F53E9AE13E9AE12990E72C87F32C87F32E7BFA2E7BFA356CFF3368FF3368FF2968FF1F61FC1F61FC1D58FF1D53FF1D53FF1C4CFF1C4CFF284BFF2F42FF2F42FF3F47E86F74DA6F74DAD9DCFFE5E5FDE5E5FDF7F4FFF6EDFFF6EDFFF4EEFFF4EEFFF1F4FCEFF7F6EFF7F6EFF8F5EFF6F9EFF6F9F1F1FFF2EFFFF2EFFFF4F1FFF4F1FFF4F3FCF7F5FBF7F5FBF3F6FBEFF5FAEFF5FAECF5F9EEF4FBEEF4FBEDF2FBEFF2FFEFF2FFD6E5FFD6E5FF9DC4EB6FABDF6FABDF5DAAEF55A7F855A7F859A6FD569FFA569FFA569EF6569EF6569DF4579BF4579BF45796F8588FFE588FFE578AFE5789FB5789FB5687FB4E81FD4E81FD4A7DF74A7DF75488F37FB1FD7FB1FDC1EBFFDEF9FDDEF9FDFAFAFAFFF7F5FFF7F5FBF0FFFBF0FFFCF2FEFCEFF7FCEFF7F9F6FFE4F3FFE4F3FFAAD5FF4898D94898D93997EA2F88F02F88F02E7BF92E7BF93470FF346AFF346AFF2A69FF2162FF2162FF1F5AFF2154FF2154FF2650FF2650FF2647FF2D42FF2D42FF303EEA414DCB414DCBA4ADFDE9EEFFE9EEFFF0EEFFF8EDFFF8EDFFF8EFFFF8EFFFF4F2FEF1F6F9F1F6F9EFF8F5EDF6F9EDF6F9EFF2FFEFF0FFEFF0FFF3F5FFF3F5FFF3F5FDF4F3FCF4F3FCF4F4FAF1F6F9F1F6F9F2F7FAF2F7FAF2F7FAEDF4FDE9F2FFE9F2FFC4DBFBC4DBFB84B2E26EAFEC6EAFEC53A5ED50A5F550A5F559A4FA569DF5569DF559A0F859A0F85A9EF75699F55699F55593F7548CFB548CFB5486FC5585FB5585FB5484FA5685FE5685FE5080F05080F06493EFA4D1FFA4D1FFD2F7FFE3FAF6E3FAF6FCFDF9FFF7F3FFF7F3FBF0FFFBF0FFFCF2FEFCEFF7FCEFF7F9F6FFE4F3FFE4F3FFAAD5FF4898D94898D93997EA2F88F02F88F02E7BF92E7BF93470FF346AFF346AFF2A69FF2162FF2162FF1F5AFF2154FF2154FF2650FF2650FF2647FF2D42FF2D42FF303EEA414DCB414DCBA4ADFDE9EEFFE9EEFFF0EEFFF8EDFFF8EDFFF8EFFFF8EFFFF4F2FEF1F6F9F1F6F9EFF8F5EDF6F9EDF6F9EFF2FFEFF0FFEFF0FFF3F5FFF3F5FFF3F5FDF4F3FCF4F3FCF4F4FAF1F6F9F1F6F9F2F7FAF2F7FAF2F7FAEDF4FDE9F2FFE9F2FFC4DBFBC4DBFB84B2E26EAFEC6EAFEC53A5ED50A5F550A5F559A4FA569DF5569DF559A0F859A0F85A9EF75699F55699F55593F7548CFB548CFB5486FC5585FB5585FB5484FA5685FE5685FE5080F05080F06493EFA4D1FFA4D1FFD2F7FFE3FAF6E3FAF6FCFDF9FFF7F3FFF7F3FAF6FFFAF6FFF9F5FBFFF8F8FFF8F8FCF6F7EAF0FDEAF0FDD2EEFF92CBFF92CBFF4590DF388AF0388AF02B7CF52B7CF53379FC3573FF3573FF2965F72760FB2760FB235BFF1F4EFF1F4EFF2D4FFF2D4FFF304EFF2743FB2743FB2941F13042E33042E35764DEC5D0FFC5D0FFEEF2FFFCF3FFFCF3FFF9EBFFF9EBFFF3E9FFF4F1FFF4F1FFF2FBF8F0FDF5F0FDF5F0F9FCEEF8FFEEF8FFEAF4FBEAF4FBEDF7FEF4FCFFF4FCFFEDF1F6F6F7FBF6F7FBFBFDFEEEF0F1EEF0F1EDF6FFDCF0FFDCF0FFA2C6EEA2C6EE6FA8E560A8F060A8F058A7F653A2F353A2F35B9FEC5C9EEC5C9EEC599CF1599CF1579BF45598F45598F45192F4528DFA528DFA568DFF5688FF5688FF5583F95984F35984F3638CE9638CE997BCFFCAEAFFCAEAFFDBF5FFECFDFAECFDFAFDFFFCFBF8F0FBF8F0F6F5FFF6F5FFF6F4FAFFF9F9FFF9F9FEF9F6F3F4F8F3F4F8E6F5FFBBDEFFBBDEFF7BB2F74287E44287E43C88F83C88F82C79F4246CF5246CF53270FF2C65FF2C65FF2055FC2D5AFF2D5AFF3050FF3050FF2C47FC2645FA2645FA2745F8293EF3293EF33B49DF8C97F18C97F1E5E9FFF2EBFFF2EBFFF3E6FEF3E6FEFFF5FFF7F2FFF7F2FFF1F6F4F2FDF5F2FDF5F4FBFEEBF2FBEBF2FBEDF6FFEDF6FFECF7FFEFF8FFEFF8FFEFF5FCF6F7FBF6F7FBF7F9FAF0F5F8F0F5F8E7F7FFBCDCF9BCDCF98BBBEB8BBBEB64A5EA5AA4F65AA4F658A5FC58A1F758A1F75E9FF0609DED609DED5A99F15A99F15191EF5091F35091F35597FE5493FF5493FF4C87FB4D81F94D81F95987F65D85E55D85E589AAF389AAF3BDDAFFDFF5FFDFF5FFECFCFFF0FBF9F0FBF9F5FBF6FCFDF9FCFDF9F6F5FFF6F5FFF6F4FAFFF9F9FFF9F9FEF9F6F3F4F8F3F4F8E6F5FFBBDEFFBBDEFF7BB2F74287E44287E43C88F83C88F82C79F4246CF5246CF53270FF2C65FF2C65FF2055FC2D5AFF2D5AFF3050FF3050FF2C47FC2645FA2645FA2745F8293EF3293EF33B49DF8C97F18C97F1E5E9FFF2EBFFF2EBFFF3E6FEF3E6FEFFF5FFF7F2FFF7F2FFF1F6F4F2FDF5F2FDF5F4FBFEEBF2FBEBF2FBEDF6FFEDF6FFECF7FFEFF8FFEFF8FFEFF5FCF6F7FBF6F7FBF7F9FAF0F5F8F0F5F8E7F7FFBCDCF9BCDCF98BBBEB8BBBEB64A5EA5AA4F65AA4F658A5FC58A1F758A1F75E9FF0609DED609DED5A99F15A99F15191EF5091F35091F35597FE5493FF5493FF4C87FB4D81F94D81F95987F65D85E55D85E589AAF389AAF3BDDAFFDFF5FFDFF5FFECFCFFF0FBF9F0FBF9F5FBF6FCFDF9FCFDF9F6F3FCF6F3FCF5F2FBFCF8FDFCF8FDF9F8FCF3F3F9F3F3F9F0F8FFDFF3FFDFF3FFBADDFF6A9EE56A9EE54586E84586E82C79F42775FF2775FF246BFF2260FF2260FF2B5CFE355DFF355DFF3354FD3354FD2A47F62847FE2847FE2743FC2A3FF52A3FF5313DE1565BDC565BDCC2C2FFECE8FFECE8FFEBE5FCEBE5FCFFF9FFF9F5FBF9F5FBF4F5F3F6F8F9F6F8F9F8F5FFF0EDFFF0EDFFF1F3FFF1F3FFEFF5FFEFF3FEEFF3FEF2F7FFF2F6FBF2F6FBECF5F9E9F8FFE9F8FFD5F0FF98C4E998C4E976AFE676AFE65CA2EF56A2FC56A2FC549FFF569DFF569DFF5D9AFC5C96F65C96F65894F45894F45492F84F8EFE4F8EFE4B8AFF4A87FF4A87FF4C86FF5086F85086F85B89E8799FE7799FE7B9D5FFB9D5FFE0F3FFEDF9FFEDF9FFF6FFFFF5FBFAF5FBFAF0F4F5FBFFFFFBFFFFF9F4FDF9F4FDF5F2FBF6F5FFF6F5FFF5F6FFF2F1FAF2F1FAF3F5FDF2F8FFF2F8FFE0F1FFABCEFFABCEFF6398E96398E93379EB2C77FF2C77FF266EFF2566FF2566FF3161FF3058F73058F73256FE3256FE2D4DFF2845FF2845FF253CFC293DF6293DF63843F14040E04040E08884FFE3E1FFE3E1FFF0EEFFF0EEFFF1EEF7FAF6F5FAF6F5FCF8F7F9F5FBF9F5FBF6EFFFF7F1FFF7F1FFF1F1FFF1F1FFF3F5FFEFF1F9EFF1F9F4F6FEF1F4FCF1F4FCEAF4FEE0F5FFE0F5FFBBDCFD81B2E481B2E46AA7EB6AA7EB5AA2F6539EFF539EFF5298FF5396FF5396FF5994FF5690FA5690FA5992FB5992FB5691FF508BFF508BFF4985FF4782FF4782FF4C85FF598DF2598DF26996E0AECFFFAECFFFDBF2FFDBF2FFEFFBFFF2F7F8F2F7F8FCFEFEFBFDFDFBFDFDF2F5F9F8FBFFF8FBFFF9F4FDF9F4FDF5F2FBF6F5FFF6F5FFF5F6FFF2F1FAF2F1FAF3F5FDF2F8FFF2F8FFE0F1FFABCEFFABCEFF6398E96398E93379EB2C77FF2C77FF266EFF2566FF2566FF3161FF3058F73058F73256FE3256FE2D4DFF2845FF2845FF253CFC293DF6293DF63843F14040E04040E08884FFE3E1FFE3E1FFF0EEFFF0EEFFF1EEF7FAF6F5FAF6F5FCF8F7F9F5FBF9F5FBF6EFFFF7F1FFF7F1FFF1F1FFF1F1FFF3F5FFEFF1F9EFF1F9F4F6FEF1F4FCF1F4FCEAF4FEE0F5FFE0F5FFBBDCFD81B2E481B2E46AA7EB6AA7EB5AA2F6539EFF539EFF5298FF5396FF5396FF5994FF5690FA5690FA5992FB5992FB5691FF508BFF508BFF4985FF4782FF4782FF4C85FF598DF2598DF26996E0AECFFFAECFFFDBF2FFDBF2FFEFFBFFF2F7F8F2F7F8FCFEFEFBFDFDFBFDFDF2F5F9F8FBFFF8FBFFFCF5FCFCF5FCF8F3FCF3F3FFF3F3FFF4F5FFF2F4FCF2F4FCF5F4F8F9F7F7F9F7F7F1F6FFE1F3FFE1F3FFA6CAFFA6CAFF558CED2C6EEB2C6EEB3076FF3070FF3070FF2D5FF72E58F72E58F72D54FF2D54FF2D50FF2741FF2741FF273EFF283BF8283BF83A44FC413CF6413CF6574FEABDB9FFBDB9FFF4F3FFF4F3FFEFEEF0FDFBF0FDFBF0FDF8F7FBF4FBFBF4FBF5F0FFF7F7FFF7F7FFF1F4F8F1F4F8F6FBFAF4F5F3F4F5F3F7F6F8F2F5FDF2F5FDEBF5FFD4EAFFD4EAFF9DBFF473A4EA73A4EA64A0F464A0F45B9FFF549AFF549AFF5193FF5091FF5091FF5390FF518CFF518CFF5790FF5790FF4D85FC4B83FF4B83FF558DFF5084FF5084FF4B7DED6897E96897E999C0F4D7F5FFD7F5FFE8FCFFE8FCFFF6FDFAF9FBF5F9FBF5FEFBF7FEFCFCFEFCFCFCFBFDF8FAFBF8FAFBFCF5FCFCF5FCF8F3FCF3F3FFF3F3FFF4F5FFF2F4FCF2F4FCF5F4F8F9F7F7F9F7F7F1F6FFE1F3FFE1F3FFA6CAFFA6CAFF558CED2C6EEB2C6EEB3076FF3070FF3070FF2D5FF72E58F72E58F72D54FF2D54FF2D50FF2741FF2741FF273EFF283BF8283BF83A44FC413CF6413CF6574FEABDB9FFBDB9FFF4F3FFF4F3FFEFEEF0FDFBF0FDFBF0FDF8F7FBF4FBFBF4FBF5F0FFF7F7FFF7F7FFF1F4F8F1F4F8F6FBFAF4F5F3F4F5F3F7F6F8F2F5FDF2F5FDEBF5FFD4EAFFD4EAFF9DBFF473A4EA73A4EA64A0F464A0F45B9FFF549AFF549AFF5193FF5091FF5091FF5390FF518CFF518CFF5790FF5790FF4D85FC4B83FF4B83FF558DFF5084FF5084FF4B7DED6897E96897E999C0F4D7F5FFD7F5FFE8FCFFE8FCFFF6FDFAF9FBF5F9FBF5FEFBF7FEFCFCFEFCFCFCFBFDF8FAFBF8FAFBFEF7FAFEF7FAF9F5FBF3F3FFF3F3FFF4F6FFF6F8FFF6F8FFF7F6FAFAF5F2FAF5F2F7F7F7F0F8FFF0F8FFD6EBFFD6EBFF99C0FF5A8CF05A8CF0346EEB316AF5316AF53367F72F5FFA2F5FFA2555FF2555FF2550FF2343FF2343FF2F46FF2B3EFB2B3EFB2E38F73E3BFF3E3BFF443BE9807CED807CEDE5E3FFE5E3FFF5F8FDFEFEF2FEFEF2F9F2F5FBF5FFFBF5FFF3F3FFF2F7FFF2F7FFF2F6F7F2F6F7FAFDFBFAF8F7FAF8F7F9F5FAF4F4FFF4F4FFE8F0FFBFD4FFBFD4FF86A9ED6C9BEF6C9BEF5E98F85E98F85A9AFF5697FF5697FF5091FE508FFF508FFF5091FF4E8CFF4E8CFF528CFF528CFF5087FF5285FF5285FF5383FF5480F15480F1658EEA98BDF998BDF9CDEEFFE5FEFFE5FEFFEBFAF6EBFAF6F8FFF6FFFFF9FFFFF9FCF9F5FEFAF9FEFAF9FFFFFEFFFDFCFFFDFCFEF8F9FEF8F9FDF8FAF8F6FCF8F6FCF5F7FFF8FAFFF8FAFFF5F8FDF4F6F7F4F6F7F8FAFBF1F7FEF1F7FEE6F1FFE6F1FFDBEDFFADC9FFADC9FF668DE94272E24272E23C70F32C65F72C65F7205DFB205DFB2056FF234BFF234BFF2A47FF2E41FF2E41FF2A34F63939FF3939FF403CF3544FDA544FDAAFACFFAFACFFF2F4FFF8F8F8F8F8F8F8F1FFF8F3FFF8F3FFEEF5FFEBF5FFEBF5FFF2F4FEF2F4FEF7F6FFFEF6FFFEF6FFF8F1FFF4F0FFF4F0FFDDE2FFA5B9FAA5B9FA7799EC6795F46795F45A92F75A92F75995F95896FA5896FA5293F64F91F74F91F74D91FA4A8CFC4A8CFC4B88FE4B88FE578CFF5988FB5988FB5A84E97296EA7296EAA3C2FFD0EAFFD0EAFFE6FDFFE8FBFEE8FBFEEDFBF7EDFBF7F8FFFCFDFFFEFDFFFEFDFBFAFFFCF8FFFCF8FFFFF8FFFFF6FFFFF6FEF8F9FEF8F9FDF8FAF8F6FCF8F6FCF5F7FFF8FAFFF8FAFFF5F8FDF4F6F7F4F6F7F8FAFBF1F7FEF1F7FEE6F1FFE6F1FFDBEDFFADC9FFADC9FF668DE94272E24272E23C70F32C65F72C65F7205DFB205DFB2056FF234BFF234BFF2A47FF2E41FF2E41FF2A34F63939FF3939FF403CF3544FDA544FDAAFACFFAFACFFF2F4FFF8F8F8F8F8F8F8F1FFF8F3FFF8F3FFEEF5FFEBF5FFEBF5FFF2F4FEF2F4FEF7F6FFFEF6FFFEF6FFF8F1FFF4F0FFF4F0FFDDE2FFA5B9FAA5B9FA7799EC6795F46795F45A92F75A92F75995F95896FA5896FA5293F64F91F74F91F74D91FA4A8CFC4A8CFC4B88FE4B88FE578CFF5988FB5988FB5A84E97296EA7296EAA3C2FFD0EAFFD0EAFFE6FDFFE8FBFEE8FBFEEDFBF7EDFBF7F8FFFCFDFFFEFDFFFEFDFBFAFFFCF8FFFCF8FFFFF8FFFFF6FFFFF6FDF9F8FDF9F8FFFBFAFBF9F9FBF9F9F8F7F9F7FAFFF7FAFFF4F8FDF1F7FCF1F7FCF5FCFFF7FCFFF7FCFFF5F8FFF5F8FFEEF5FFE3EFFFE3EFFFB9D1FF7194EA7194EA3D6BDA326BEC326BEC2765F32765F3245DF92752FD2752FD2140F53244FF3244FF2D3AFF3138FF3138FF3D3FFC4340E34340E37675E97675E9E2E3FFEEEFFFEEEFFFF8F3FFF6F4FFF6F4FFECF7FFEDF9FDEDF9FDF1F6FFF1F6FFF3F1FDFBF4FFFBF4FFF3EEFFECECFFECECFFCBD7FF89A6F189A6F16A93EF6094F96094F9558FF8558FF85792F95996F85996F85592F4508EF2508EF24B8CF8498AF7498AF74E88F94E88F95486F05E8AE55E8AE5789DE7ACC8FEACC8FEDBF1FFEAFCFFEAFCFFE6F3FBEFFBFDEFFBFDF4FEFEF4FEFEF4FBFEF5F9FAF5F9FAFCFEFEFFFFFBFFFFFBFFFFF5FFFFF1FFFFF1FDFBFAFDFBFAFDFBFAFEFBF7FEFBF7FCFAF9F8FAFBF8FAFBF3F9FEEDF8FFEDF8FFEDF9FFF2F9FCF2F9FCF3F8F7F3F8F7F9F7F6F7F8FFF7F8FFE9F3FFC3D7FFC3D7FF7FA3F74573DE4573DE3066E23066E22C60F02F55F72F55F72F48FC2D3FFF2D3FFF2D3CFF2D3CFF2D3CFF323DFF3C41FC3C41FC4243DB4243DBB2B1FFEBEAFFEBEAFFF0EEFFF1F4FFF1F4FFECFBF7EFFEF6EFFEF6F2F6FBF2F6FBFDFBFFEEEDFDEEEDFDEFF3FFE1EDFFE1EDFF9FB9F56996E76996E75B95F55191FD5191FD4F92FF4F92FF5492FE558FF9558FF95389F45287F65287F65186FE558BFE558BFE5888EE5888EE6490E385ACEA85ACEAB7D7FFDFF7FFDFF7FFECFDFFF1FCFFF1FCFFF6FDFFF7FAFFF7FAFFF7F9FFF7F9FFF5FAFFF7FBFFF7FBFFF8FDFCFAFEF8FAFEF8FEFFF4FEFFF1FEFFF1FDFBFAFDFBFAFDFBFAFEFBF7FEFBF7FCFAF9F8FAFBF8FAFBF3F9FEEDF8FFEDF8FFEDF9FFF2F9FCF2F9FCF3F8F7F3F8F7F9F7F6F7F8FFF7F8FFE9F3FFC3D7FFC3D7FF7FA3F74573DE4573DE3066E23066E22C60F02F55F72F55F72F48FC2D3FFF2D3FFF2D3CFF2D3CFF2D3CFF323DFF3C41FC3C41FC4243DB4243DBB2B1FFEBEAFFEBEAFFF0EEFFF1F4FFF1F4FFECFBF7EFFEF6EFFEF6F2F6FBF2F6FBFDFBFFEEEDFDEEEDFDEFF3FFE1EDFFE1EDFF9FB9F56996E76996E75B95F55191FD5191FD4F92FF4F92FF5492FE558FF9558FF95389F45287F65287F65186FE558BFE558BFE5888EE5888EE6490E385ACEA85ACEAB7D7FFDFF7FFDFF7FFECFDFFF1FCFFF1FCFFF6FDFFF7FAFFF7FAFFF7F9FFF7F9FFF5FAFFF7FBFFF7FBFFF8FDFCFAFEF8FAFEF8FEFFF4FEFFF1FEFFF1F8FAFAF8FAFAFAFBF9FCFCF6FCFCF6FCFCF6FAFBF9FAFBF9F5FAFBF0FAFFF0FAFFEFFBFFF4FEFEF4FEFEF6FBF9F6FBF9FCFAF2FBF9F8FBF9F8F7FAFFE7F2FFE7F2FFC2DAFF9EBEFF9EBEFF4F7BD84F7BD83E6ADD3957E63957E6374CF53443FF3443FF2C3CFF2338FF2338FF2438FF2F3BFF2F3BFF3C43EE3C43EE5F61DED0CDFFD0CDFFEFEDFFF7FAFFF7FAFFF2FBF8F8FFF7F8FFF7F4F6F6F4F6F6F3F5FDEDF2FFEDF2FFEBF7FFC3DDFFC3DDFF82ABF05C95F25C95F24A8EF9418AFC418AFC4389FE4389FE4C8CFC568EFB568EFB5C8DF95D8AF95D8AF95984F95B82EE5B82EE789DEF789DEF9FC1FCC6E6FFC6E6FFDBF8FFE7FCFDE7FCFDF0FEF8F6FDFAF6FDFAF7F8FCFBFAFFFBFAFFFBF9FFFBF9FFF9FAFFF9FCFFF9FCFFF9FEFCF9FFF9F9FFF9F9FFF6F9FFF5F9FFF5F4F9FAF4F9FAF5FAF9F9FAF6F9FAF6FCFBF7FBFCF8FBFCF8F9FCFAF7FCFDF7FCFDF5FDFDF6FEFDF6FEFDF5FDFCF5FDFCF5FAF8F5F7F7F5F7F7F5F9FEF6FBFFF6FBFFF1F8FFE2F2FFE2F2FFC1DFFFC1DFFF88A8F15468D85468D83A48DC3543F53543F53242FF2A40FF2A40FF2840FF2B41FF2B41FF3947F33947F34346D79A99FF9A99FFECECFFEDEAFFEDEAFFF9F5FFFBF5FAFBF5FAFEFDF9FEFDF9F1F7F6EEF9FFEEF9FFD9EFFF96BBF796BBF76094E74B8FFA4B8FFA3985FD428FFF428FFF4691FF4691FF4E90FF5088F35088F35783E86287E96287E97495F688A6F988A6F9BAD2FFBAD2FFD6EDFFE4FEFFE4FEFFE7FFFFE7FCF3E7FCF3F1FFF6F8FEFDF8FEFDF7F5FBFFF8FFFFF8FFFFF8FFFFF8FFFFFBFFFDFDFDFDFDFDF9FFFAF6FFFAF6FFFAF4FFFCF2FFFCF2FFFCF4F9FAF4F9FAF5FAF9F9FAF6F9FAF6FCFBF7FBFCF8FBFCF8F9FCFAF7FCFDF7FCFDF5FDFDF6FEFDF6FEFDF5FDFCF5FDFCF5FAF8F5F7F7F5F7F7F5F9FEF6FBFFF6FBFFF1F8FFE2F2FFE2F2FFC1DFFFC1DFFF88A8F15468D85468D83A48DC3543F53543F53242FF2A40FF2A40FF2840FF2B41FF2B41FF3947F33947F34346D79A99FF9A99FFECECFFEDEAFFEDEAFFF9F5FFFBF5FAFBF5FAFEFDF9FEFDF9F1F7F6EEF9FFEEF9FFD9EFFF96BBF796BBF76094E74B8FFA4B8FFA3985FD428FFF428FFF4691FF4691FF4E90FF5088F35088F35783E86287E96287E97495F688A6F988A6F9BAD2FFBAD2FFD6EDFFE4FEFFE4FEFFE7FFFFE7FCF3E7FCF3F1FFF6F8FEFDF8FEFDF7F5FBFFF8FFFFF8FFFFF8FFFFF8FFFFFBFFFDFDFDFDFDFDF9FFFAF6FFFAF6FFFAF4FFFCF2FFFCF2FFFCF4F9FAF4F9FAF5FAFBF8FAFAF8FAFAFBFCFAFDFBFAFDFBFAFEFDF9FCFDFBFCFDFBFAFDFBF5FBFAF5FBFAF6FEFDF6FEFDF6FEFEF3FBFBF3FBFBF3F8FBF4F7FBF4F7FBF9F7FDF1F6FFF1F6FFEBFBFFEBFBFFDAEFFFC1D0FFC1D0FF909EFF5567EA5567EA2C41D9233AE3233AE32D45F33046F23046F23341E73341E74B4CEA5F5BD85F5BD8CCC8FFF2EBFFF2EBFFFFF6FFFFF7FFFFF7FFFEFAF9FEFAF9F5FAFBEAF8FFEAF8FFC2DDFF7FA7EF7FA7EF5B8FED5292FF5292FF438AFF3B83F93B83F94589FA4589FA5490F46193EB6193EB739AE88EAFF48EAFF4B1CDFFD1E8FFD1E8FFE8F9FFE8F9FFEBF9FFE7F9FAE7F9FAEAFCF5EEFFF4EEFFF4F2FFF7F8FCFDF8FCFDFDFAFFFFF9FFFFF9FFFFFAFFFFFAFFFFFCFEFDFEFCFDFEFCF9FFFAF6FFFCF6FFFCF2FEFFF1FDFFF1FDFFF4F9FAF4F9FAF5FAFBF8FAFAF8FAFAFBFCFAFDFBFAFDFBFAFEFDF9FCFDFBFCFDFBFAFDFBF5FBFAF5FBFAF6FEFDF6FEFDF6FEFEF3FBFBF3FBFBF3F8FBF4F7FBF4F7FBF9F7FDF1F6FFF1F6FFEBFBFFEBFBFFDAEFFFC1D0FFC1D0FF909EFF5567EA5567EA2C41D9233AE3233AE32D45F33046F23046F23341E73341E74B4CEA5F5BD85F5BD8CCC8FFF2EBFFF2EBFFFFF6FFFFF7FFFFF7FFFEFAF9FEFAF9F5FAFBEAF8FFEAF8FFC2DDFF7FA7EF7FA7EF5B8FED5292FF5292FF438AFF3B83F93B83F94589FA4589FA5490F46193EB6193EB739AE88EAFF48EAFF4B1CDFFD1E8FFD1E8FFE8F9FFE8F9FFEBF9FFE7F9FAE7F9FAEAFCF5EEFFF4EEFFF4F2FFF7F8FCFDF8FCFDFDFAFFFFF9FFFFF9FFFFFAFFFFFAFFFFFCFEFDFEFCFDFEFCF9FFFAF6FFFCF6FFFCF2FEFFF1FDFFF1FDFFF7FAFEF7FAFEF7FAFEF7FAFEF7FAFEF9FBFCFDFBFBFDFBFBFFFCF8FFFCF7FFFCF7FDFCF8F7FAF8F7FAF8F5FDFCF5FDFCF4FFFFF3FFFFF3FFFFF5FCFFF8FAFBF8FAFBFDF8F5FBF7F6FBF7F6F4F8FDF4F8FDF1FAFFE9F8FFE9F8FFD8EDFFBCD7FFBCD7FF97B3FA6B84E66B84E64A5FD83D4AD63D4AD63D41DC3D41DC443CE35346D85346D8958BE8F6EBFFF6EBFFFEEEFFFCEDFBFCEDFBFDF5FCFDF5FCFAFBFFDFEBFFDFEBFFA5BBF57092E57092E55C87E85686F05686F05185EF578AEB578AEB6596EC6596EC7CABEF9AC5F89AC5F8B7DDFFCFEFFFCFEFFFDFFAFFE9FFFFE9FFFFF0FDFFF0FDFFEFF9F9F2FDFBF2FDFBF6FFFEF8FFFFF8FFFFF3F8F9F5F8FDF5F8FDFDFDFFFEFDFFFEFDFFFEFEFEFEFEFEFEFFFBFCFFFAFCFFFAFAFFFBF9FFFEF9FFFEF7FDFFF5FCFFF5FCFFFBFCFFFBFCFFFBFCFFFAFAFFFAFAFFFAFBFFFDFAFCFDFAFCFFFBFAFFFBF8FFFBF8FFFCF7FCFDF9FCFDF9F7FDFCF7FDFCF3FCFFF1FCFFF1FCFFF3FCFFF8FCFDF8FCFDFFFEFAFFFDFAFFFDFAFCF7F9FCF7F9F9FAFEF0FCFCF0FCFCE9FCFFE6FFFFE6FFFFE3FAFFD4E5FFD4E5FFBDC9FFA6ACFFA6ACFF9797FF9797FF6E69EA6D65DA6D65DA746EC0CBC5FACBC5FAFBEFFFFFFAFFFFFAFFFFF9FFFFF9FFFAFBFFD2DEFFD2DEFF94A9E07794DE7794DE7A9BEB7E9FEF7E9FEF8AAAF5A9C5FFA9C5FFB4D1FFB4D1FFC4E1FFD6F1FFD6F1FFE3FDFFEAFFFFEAFFFFEBFFFAECFCF1ECFCF1F0FBF3F0FBF3F6FDF8FBFFFFFBFFFFFDFEFFFBFAFFFBFAFFF9F8FFF9F9FFF9F9FFFBFDFEFAFFFDFAFFFDFAFFFAFAFFFAF9FFFAF9FFFBF9FFFBFAFFFDFAFEFFFAFEFFFCFBFFFCFBFFFCFBFFFBFCFFFBFCFFFBFCFFFAFAFFFAFAFFFAFBFFFDFAFCFDFAFCFFFBFAFFFBF8FFFBF8FFFCF7FCFDF9FCFDF9F7FDFCF7FDFCF3FCFFF1FCFFF1FCFFF3FCFFF8FCFDF8FCFDFFFEFAFFFDFAFFFDFAFCF7F9FCF7F9F9FAFEF0FCFCF0FCFCE9FCFFE6FFFFE6FFFFE3FAFFD4E5FFD4E5FFBDC9FFA6ACFFA6ACFF9797FF9797FF6E69EA6D65DA6D65DA746EC0CBC5FACBC5FAFBEFFFFFFAFFFFFAFFFFF9FFFFF9FFFAFBFFD2DEFFD2DEFF94A9E07794DE7794DE7A9BEB7E9FEF7E9FEF8AAAF5A9C5FFA9C5FFB4D1FFB4D1FFC4E1FFD6F1FFD6F1FFE3FDFFEAFFFFEAFFFFEBFFFAECFCF1ECFCF1F0FBF3F0FBF3F6FDF8FBFFFFFBFFFFFDFEFFFBFAFFFBFAFFF9F8FFF9F9FFF9F9FFFBFDFEFAFFFDFAFFFDFAFFFAFAFFFAF9FFFAF9FFFBF9FFFBFAFFFDFAFEFFFAFEFFFCFBFFFCFBFFFCFBFFFDFCFEFDFCFEFDFCFFFCFAFFFCFAFFFCFAFFFEFAFFFEFAFFFFF9FEFFFAFBFFFAFBFFFBFAFFFEFAFFFEFAFCFDF9FCFDF9F7FCFBF5FAFBF5FAFBF3FAFDF3F9FEF3F9FEF7FAFFFBFBFFFBFBFFFFFAFFFFFAFFFFFDFFF7FEFBF7FEFBEEF9F7ECF5FFECF5FFF1F7FFF9F6FFF9F6FFF6F4FFF2F0FFF2F0FFE8EAFFE8EAFFD9E2FFCDD9FFCDD9FFC1CBF3CED3F2CED3F2F5F5FFF4F2F8F4F2F8FBFCFAFBFCFAF3F8FBDAE9FCDAE9FCB8CCEFB2C9F6B2C9F6C3DAFFD3E3FFD3E3FFE8F3FFECF2FFECF2FFF5F8FFF5F8FFF6FCFFF6FCFFF6FCFFF0F9FFF2F9FFF2F9FFFAFEFFFAFFFFFAFFFFF7FFFBF7FFFBF7FFFDF9F9FFF9F9FFFCF3FFFFF3FFFFF3FFFFF9FFFFFCFFFFFCFFF7FAF8F7FFF8F7FFF8F3FFF7F3FFF7F2FFFAF3FFFDF3FFFDF9FEFFFEFDFFFEFDFFFFFBFFFFFBFFFFFBFFFFFCFEFFFCFEFFFBFFFCFAFFFCFAFFFCF9FFFEF9FFFEF9FFFEFAFFFFFBFDFFFBFDFFFBFAFFFCF8FFFCF8FEFEF8FEFEF8FEFFFDFBFFFFFBFFFFF9FEFFF4FAFFF4FAFFF1F8FFF5F7FFF5F7FFFEF5FFFEF5FFFFF8FFFBFFFAFBFFFAF9FFFBF9F9FFF9F9FFFAF5FFFEF4FFFEF4FFFFF7FFFFFCFFFFFCFFF2F7FAF2F7FAF1FFFFECFFFFECFFFFEAFBFFEAF8FFEAF8FFF6FCFFF7FAFEF7FAFEFCFFFAFCFFFAF0F9F6EDFDFFEDFDFFE4FBFFE1F5FFE1F5FFE8F9FFEDF4FFEDF4FFF7F8FCFFFCF9FFFCF9FFFDF6FFFDF6FFFCFBFFFCFEFFFCFEFCFBFFF9F9FFF9F9FFFBF7FFF5F8FDF5F8FDF7FFFBF7FFFBF6FFFCFDF9FFFDF9FFFFF7FFFFF5FFFFF5FFFFF6FFFFFBFFFFFBFFFCFFFAF6FFF8F6FFF8EFFFF7EFFFF7EFFFFCF1FFFFF1FFFFFAFFFFFFFDFFFFFDFFFFFBFFFFFBFFFFFBFFFFFCFEFFFCFEFFFBFFFCFAFFFCFAFFFCF9FFFEF9FFFEF9FFFEFAFFFFFBFDFFFBFDFFFBFAFFFCF8FFFCF8FEFEF8FEFEF8FEFFFDFBFFFFFBFFFFF9FEFFF4FAFFF4FAFFF1F8FFF5F7FFF5F7FFFEF5FFFEF5FFFFF8FFFBFFFAFBFFFAF9FFFBF9F9FFF9F9FFFAF5FFFEF4FFFEF4FFFFF7FFFFFCFFFFFCFFF2F7FAF2F7FAF1FFFFECFFFFECFFFFEAFBFFEAF8FFEAF8FFF6FCFFF7FAFEF7FAFEFCFFFAFCFFFAF0F9F6EDFDFFEDFDFFE4FBFFE1F5FFE1F5FFE8F9FFEDF4FFEDF4FFF7F8FCFFFCF9FFFCF9FFFDF6FFFDF6FFFCFBFFFCFEFFFCFEFCFBFFF9F9FFF9F9FFFBF7FFF5F8FDF5F8FDF7FFFBF7FFFBF6FFFCFDF9FFFDF9FFFFF7FFFFF5FFFFF5FFFFF6FFFFFBFFFFFBFFFCFFFAF6FFF8F6FFF8EFFFF7EFFFF7EFFFFCF1FFFFF1FFFFFAFFFFFFFDFFFFFDFFFFFBFFFFFBFFFFFBFF00);
