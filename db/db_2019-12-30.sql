-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.36-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for apitypeorm
CREATE DATABASE IF NOT EXISTS `apitypeorm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `apitypeorm`;

-- Dumping structure for table apitypeorm.dqwlanguage
DROP TABLE IF EXISTS `dqwlanguage`;
CREATE TABLE IF NOT EXISTS `dqwlanguage` (
  `lang` varchar(2) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table apitypeorm.dqwlanguage: ~2 rows (approximately)
DELETE FROM `dqwlanguage`;
/*!40000 ALTER TABLE `dqwlanguage` DISABLE KEYS */;
INSERT INTO `dqwlanguage` (`lang`, `language`) VALUES
	('CH', 'CHINESE');
INSERT INTO `dqwlanguage` (`lang`, `language`) VALUES
	('EN', 'ENGLISH');
INSERT INTO `dqwlanguage` (`lang`, `language`) VALUES
	('PT', 'PORTUGUESE');
/*!40000 ALTER TABLE `dqwlanguage` ENABLE KEYS */;

-- Dumping structure for table apitypeorm.dqwmenu
DROP TABLE IF EXISTS `dqwmenu`;
CREATE TABLE IF NOT EXISTS `dqwmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FATHER` int(11) DEFAULT NULL,
  `TITLE` varchar(50) NOT NULL,
  `ICON` varchar(40) DEFAULT NULL,
  `HREF` varchar(50) DEFAULT NULL,
  `CLASS` varchar(20) DEFAULT NULL,
  `TARGET` varchar(20) DEFAULT NULL,
  `S` int(11) DEFAULT NULL COMMENT 'SORT',
  `LEVEL` int(11) DEFAULT NULL,
  `SYSTEM` int(11) NOT NULL,
  `STATE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_dqwmenu_dqwmenu` (`FATHER`),
  KEY `FK_dqwmenu_dqwsystem` (`SYSTEM`),
  KEY `FK_dqwmenu_dqwstate` (`STATE`),
  CONSTRAINT `FK_dqwmenu_dqwmenu` FOREIGN KEY (`FATHER`) REFERENCES `dqwmenu` (`ID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_dqwmenu_dqwstate` FOREIGN KEY (`STATE`) REFERENCES `dqwstate` (`ID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_dqwmenu_dqwsystem` FOREIGN KEY (`SYSTEM`) REFERENCES `dqwsystem` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- Dumping data for table apitypeorm.dqwmenu: ~116 rows (approximately)
DELETE FROM `dqwmenu`;
/*!40000 ALTER TABLE `dqwmenu` DISABLE KEYS */;
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(1, NULL, 'HOME', 'fa fa-home', '?p=START', 'black', NULL, 1, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(2, NULL, 'REPORT', 'fas fa-copy', '#', 'blue', NULL, 8, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(6, 2, 'Material Stock', 'flaticon-car-box', '?p=VBM023Q&a=stock', 'black', NULL, 1, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(8, NULL, 'SETUP', 'glyphicon glyphicon-wrench', '#', 'gray', NULL, 9, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(9, 8, 'Users', 'glyphicon glyphicon-user', '?p=DQWUSER', 'black', NULL, 1, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(11, 8, 'Permissions System', 'glyphicon glyphicon-lock', '?p=DQWPERMISSION', 'black', NULL, 2, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(12, NULL, 'QUALITY', 'flaticon-quality2', '#', 'purple', NULL, 5, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(13, 12, 'Daily Repair', 'flaticon-repair1', '?p=DQC021&a=daily_repair', 'black', NULL, 2, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(14, 2, 'Daily Production Line', 'flaticon-production-line', '?p=VQCSUM&a=daily_line_production', 'black', NULL, 2, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(16, 2, 'Target Motherboard', 'flaticon-motherboard', '?p=DVF_PADB&a=target_motherboard', 'black', NULL, 3, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(17, NULL, 'PRODUCTION LINE', 'fa fa-cubes', '#', 'yellow', NULL, 4, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(18, 17, 'Packing', 'fa fa-dropbox', '?p=DQC41CS', 'black', NULL, 3, 2, 1, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(21, NULL, 'NPI', 'fa fa-laptop', '#', 'red', NULL, 2, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(22, 21, 'Station Sequence', 'fa fa-list-ol', '?p=DQC334', 'black', NULL, 1, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(23, 17, 'Traceability PCBA/PPID', 'glyphicon glyphicon-search', '?p=DQC342&a=ssd', 'black', NULL, 1, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(25, 17, 'Traceability Box', 'glyphicon glyphicon-search', '?p=DQC41CS&a=search', 'black', NULL, 2, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(27, NULL, 'ENGINEERING', 'fa fa-cogs', '#', 'green-dark', NULL, 3, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(29, 21, 'Box / Pallet Configuration', 'fa fa-archive', '?p=DQC432', 'black', NULL, 3, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(31, 21, 'Box Weight', 'flaticon-balance', '?p=DVF_WEIGHT_SPEC', 'black', NULL, 6, 2, 1, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(32, 21, 'Import WWN / PSID', 'glyphicon glyphicon-import', '?p=DQC311SS_WWN_TEMP', 'black', NULL, 2, 2, 1, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(33, 21, 'Model Informations', 'fa fa-list-alt', '?p=DQC310LIT', 'black', NULL, 2, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(36, 17, 'RMA System', 'glyphicon glyphicon-transfer', '?p=DQC41PR', 'black', NULL, 11, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(37, 12, 'Bone Pile', 'flaticon-choice', '?p=VQC342', 'black', NULL, 1, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(38, 17, 'Bug Safety Parallel', 'fa fa-bug', '?p=DQC311LIT', 'red', NULL, 7, 2, 1, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(39, 70, 'Label Layout', 'fa fa-tags', '?p=DQCREPORT', 'black', NULL, 2, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(41, 17, 'MSD System', 'glyphicon glyphicon-time', '#', 'black', NULL, 12, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(42, 12, 'RMA Control', 'glyphicon glyphicon-transfer', '?p=DQC41RMA', 'black', NULL, 3, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(45, 8, 'Menu', 'fa fa-ellipsis-h', '?p=DQWMENU', 'black', NULL, 3, 2, 2, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(46, 70, 'Setup Serial PCBA', 'glyphicon glyphicon-qrcode', '?p=DQC90', 'black', NULL, 3, 3, 1, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(48, 49, 'I/O Employee', 'fas fa-user-clock', '?p=DQCIOEMPLOYEE', 'black', NULL, 1, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(49, NULL, 'SAFETY', 'fas fa-shield-alt', '#', 'gray', NULL, 9, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(50, 2, 'I/O Employee', 'fas fa-users-cog', '?p=DQCIOEMPLOYEE&a=report', 'black', NULL, 5, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(51, 8, 'Manpower', 'glyphicon glyphicon-equalizer', '?p=DPR001', 'black', NULL, 3, 2, 2, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(52, 41, 'MSD SSD', 'fa fa-teste', '?p=DQCMSDS', 'black', NULL, 1, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(53, 41, 'MSD Motherboard', 'fa fa-teste', '?p=DQCMSD', 'black', NULL, 2, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(54, NULL, 'WAREHOUSE', 'flaticon-warehouse', '#', 'green-dark', NULL, 7, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(55, 54, 'Import Nota Fiscal', 'glyphicon glyphicon-import', '?p=DQCNOTAFISCAL', 'black', NULL, 1, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(56, 54, 'Consume Component', 'fa fa-caret-down', '?p=DQCNOTAFISCAL&a=balance', 'red', NULL, 2, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(57, 54, 'Scrap', 'glyphicon glyphicon-trash', '?p=DQCNOTAFISCAL&a=scrap', 'black', NULL, 3, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(58, NULL, 'PRODUCTION SCHEDULING', 'flaticon-line-chart', '#', 'blue', NULL, 2, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(59, 58, 'JO Setup', 'fa fa-crosshairs', '?p=DQPJOSCHEDULE', 'black', NULL, 1, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(60, 58, 'Operation Configuration', 'fa fa-fighter-jet', '?p=DQPOPCONFIG', 'black', NULL, 2, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(61, 58, 'Product Cycle Time Setup', 'fa fa-clock-o  ', '?p=DQPCYCLETIME', 'black', NULL, 3, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(62, 58, 'Calendar Setup', 'fa fa-calendar', '?p=DQPCALENDAR', 'black', NULL, 4, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(63, 58, 'Production Schedule', 'fa fa-list', '?p=DQPSCHEDULE', 'black', NULL, 5, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(64, 54, 'File History', 'fas fa-file-contract', '?p=NFFILEHISTORY', 'black', NULL, 4, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(65, NULL, 'HOME', 'glyphicon glyphicon-home', '?P=START', 'black', NULL, 1, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(66, 27, 'Version Control', 'fas fa-code-branch', '?p=DQCCVR', 'black', NULL, 3, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(67, 2, 'Target SSD', 'flaticon-motherboard', '?p=DVF_PADB&a=target_ssd', 'black', NULL, 4, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(68, 17, 'WIP Material Control', 'glyphicon glyphicon-cd', '?p=DQCCODESHELF', 'black', NULL, 5, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(69, 70, 'Setup Serial Number', 'fa fa-barcode', '?p=DQC94', 'black', NULL, 4, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(70, 21, 'Label Management', 'fa fa-bookmark', '#', 'black', NULL, 4, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(72, 36, 'RMA Motherboard', 'glyphicon glyphicon-transfer', '?p=DQC41PR1', 'black', NULL, 1, 3, 1, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(73, 36, 'RMA SSD', 'glyphicon glyphicon-transfer', '?p=DQC41PR1S', 'black', NULL, 2, 3, 1, 2);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(80, 17, 'WIP Counter', 'fa fa-magic', '?p=DQCCNTPRD', 'black', NULL, 7, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(81, 139, 'Material Inspection', 'glyphicon glyphicon-record', '?p=VLPOI4', 'black', NULL, 1, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(82, 27, 'Log File', 'glyphicon glyphicon-open-file', '?p=DVF_SGDV_ERROR', 'black', NULL, 4, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(83, 12, 'ESD Control', 'fa fa-puzzle-piece', '?p=DQCESD', 'black', NULL, 5, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(84, NULL, 'DOCUMENT CONTROL', 'fa fa-file-text-o', '#', 'green-dark', NULL, 3, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(86, 84, 'Manage Flow', 'fa fa-stack-overflow', '?p=DQDFLOW', 'black', NULL, 3, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(87, 84, 'My Requests', 'fa fa-files-o', '?p=DQDREQUEST', 'black', NULL, 1, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(89, NULL, 'LINE NOTIFICATION', 'fas fa-exclamation-triangle', '?p=DQCLCT', 'red', NULL, 10, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(90, 27, 'Machine Control', 'fas fa-laptop-code', '?p=DQCMCT', 'black', NULL, 2, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(91, 84, 'Approval', 'fa fa-check', '?p=DQDFLOWREQUEST', 'black', NULL, 2, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(92, 84, 'Advanced Search', 'fa fa-search-plus', '?p=VQDREQUEST', 'black', NULL, 4, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(94, 139, 'Quality Hist Card', 'glyphicon glyphicon-credit-card', '?p=DQIINSPECTION&a=card', 'black', NULL, 2, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(95, NULL, 'Home', 'fa fa-home', '/ccbsworkshop/Home/Index', 'black', NULL, 1, 1, 3, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(96, 84, 'CheckList', 'fa fa-check-square-o', '?p=DQDCHECKLIST', 'black', NULL, 5, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(97, NULL, 'HELP DESK', 'fa fa-rss', '#', 'orange', NULL, 6, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(98, 97, 'My Tickets', 'fa fa-ticket', '?p=DHDTICKET', 'black', NULL, 1, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(101, 97, 'Manage Ticket', 'fa fa-gears', '?p=DHDTICKET&a=manageticket', 'black', NULL, 2, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(103, 109, 'Entrance', 'fa fa-power-off', '?p=DQC342&a=register_station&b=entrance', 'black', NULL, 1, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(109, 17, 'Stations', 'glyphicon glyphicon-list-alt', '#', 'black', NULL, 4, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(110, 109, 'Register Station', 'fa fa-server', '?p=DQC342&a=register_station&b=register', 'black', NULL, 3, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(111, 109, 'Load Component', 'fas fa-sync-alt', '?p=DQC342&a=register_station&b=load', 'black', NULL, 2, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(112, 2, 'JO/MO/SN', 'fas fa-file-alt', '?p=DMS02C', 'black', NULL, 7, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(113, 109, 'Cut Component', 'fa fa-cut', '?p=DQC342&a=register_station&b=cut', 'black', NULL, 4, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(114, 109, 'Solder Paste', 'fab fa-bitbucket', '?p=DQC856', 'black', NULL, 5, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(115, 109, 'Repair', 'fa fa-wrench', '?p=DQC021', 'black', NULL, 6, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(116, 109, 'Box', 'fas fa-box', '?p=DQC342&a=register_station&b=box', 'black', NULL, 7, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(117, NULL, 'EQUIPMENT MANAGEMENT', 'fa fa-gavel', '#', 'purple', NULL, 4, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(118, 117, 'Main Function', 'fa fa-shopping-cart', '?p=SHOP', 'black', NULL, 1, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(119, 117, 'Material Control', 'fa fa-briefcase', '?p=DSHPRODUCT', 'black', NULL, 2, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(120, 117, 'Return Material', 'fa fa-retweet', '?p=DSHTRANSACTIONS&a=return', 'black', NULL, 3, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(121, 117, 'History Log', 'fa fa-trello', '?p=DSHTRANSACTIONS', NULL, NULL, 4, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(122, 8, 'Permission Tooling', 'glyphicon glyphicon-lock', '?p=DSHPERMISSION', 'black', NULL, 3, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(123, 54, 'Shipment', 'fa fa-truck', '?p=DEDIPO01', 'black', NULL, 6, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(124, 17, 'Line Pass I/O', 'fa fa-users', '?p=DPR112PD', 'black', NULL, 9, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(125, 2, 'Line Pass I/O', 'fa fa-users', '?p=DPR112PD&a=report', 'black', NULL, 8, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(126, 54, 'Pallet', 'fas fa-pallet', '?p=DQC41P', 'black', NULL, 5, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(127, 17, 'Part List', 'fas fa-tasks', '?p=DQC89', 'black', NULL, 10, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(128, 27, 'Feeder Control', 'fa fa-sitemap', '?p=DQCFCT', 'black', NULL, 1, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(129, 17, 'Label offline', 'fa fa-print', '?p=DQC31', 'black', NULL, 3, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(130, 131, 'Target', 'glyphicon glyphicon-screenshot', '?p=DQC89TAR', 'black', NULL, 1, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(131, NULL, 'PLANNING', 'flaticon-line-chart', '#', 'red', NULL, 6, 1, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(132, 131, 'TV', 'fa fa-desktop', '?p=TVAREA', 'black', NULL, 2, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(133, 131, 'Complement M.O', 'fa fa-edit', '?p=DMS02', 'black', NULL, 2, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(134, NULL, 'VISUAL GUIDE LIBRARY', 'fa fa-book', '#', 'red', NULL, 7, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(135, 134, 'Maintain Defect', 'fa fa-caret-right', '?p=TBLQCREASONBASIS', 'black', NULL, 1, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(136, 134, 'Library', 'fa fa-caret-right', '?p=TBLQCREASONBASIS&a=libary', 'black', NULL, 2, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(137, NULL, 'FISCAL CLASSIFICATION', 'fa fa-thumb-tack', '?p=DQDNCM', 'black', NULL, 5, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(138, NULL, 'PROJECT MANAGEMENT', 'fa fa-briefcase', '?p=CCBSPROJECTM', 'gray', NULL, 8, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(139, 12, 'Inspection', 'fa fa-search-plus', '#', 'black', NULL, 4, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(140, 139, 'Daily Report of Material', 'fas fa-chart-bar', '?p=DQIINSPECTION&a=dailyreport', 'black', NULL, 3, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(141, 2, 'Shippment', 'fas fa-shipping-fast', '?p=DEDIPO01&a=shippmentreport', 'black', NULL, 9, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(142, 2, 'EDI Newland', 'glyphicon glyphicon-transfer', '?p=DW_BR_SFA_FILE', 'black', NULL, 10, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(143, 117, 'Search Calibration', 'fa fa-briefcase', '?p=DSHPRODUCT&a=feeder', 'black', NULL, 5, 2, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(144, 70, 'Label Rules', 'fa fa-book', '?p=DQCREPORT&a=datafield', 'black', NULL, 4, 3, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(145, 21, 'Type Serial', 'fa fa-cog', '?p=DQCTYPESERIAL', 'black', NULL, 5, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(146, NULL, 'MO CONTROL', 'fa fa-bar-chart-o', '?p=MO', 'black', NULL, 10, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(147, 54, 'Receive Material', 'fas fa-dolly', '?p=DQC851', 'black', NULL, 7, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(148, NULL, 'FIX ASSET', 'fa fa-tag', '?p=COST_FIXASSET', 'black', NULL, 11, 1, 2, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(149, 54, 'Issue Material', 'fas fa-clipboard-check', '?p=DQC851&a=issueMaterial', 'black', NULL, 8, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(150, 54, 'Reprint Material', 'fas fa-dolly', '?p=DQC851&a=reprintMaterial', 'black', NULL, 9, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(151, 21, 'BOM', 'fas fa-clipboard-list', '?p=DQC84&a=maitainCustomer', 'black', NULL, 7, 2, 1, 1);
INSERT INTO `dqwmenu` (`ID`, `FATHER`, `TITLE`, `ICON`, `HREF`, `CLASS`, `TARGET`, `S`, `LEVEL`, `SYSTEM`, `STATE`) VALUES
	(152, 97, 'Tickets On Going', 'fa fa-play-circle', '?p=DHDTICKET&a=ongoing', 'black', NULL, 3, 2, 2, 1);
/*!40000 ALTER TABLE `dqwmenu` ENABLE KEYS */;

-- Dumping structure for table apitypeorm.dqwmenulang
DROP TABLE IF EXISTS `dqwmenulang`;
CREATE TABLE IF NOT EXISTS `dqwmenulang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menu_fk` int(11) NOT NULL,
  `title_PT` varchar(100) DEFAULT NULL,
  `title_EN` varchar(100) DEFAULT NULL,
  `title_CH` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `menu_fk` (`menu_fk`),
  CONSTRAINT `FK_dqwmenulang_dqwmenu` FOREIGN KEY (`menu_fk`) REFERENCES `dqwmenu` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- Dumping data for table apitypeorm.dqwmenulang: ~116 rows (approximately)
DELETE FROM `dqwmenulang`;
/*!40000 ALTER TABLE `dqwmenulang` DISABLE KEYS */;
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(1, 1, 'INÍCIO', 'HOME', '首頁');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(2, 2, 'RELATÓRIOS', 'REPORT', '報表');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(3, 6, 'Material do Stock', 'Material Stock', '材料庫存');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(4, 8, 'CONFIGURAÇÃO', 'SETUP', '設定');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(5, 9, 'Usuários', 'Users', '使用者管理');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(6, 11, 'Permissões', 'Permissions System', '權限管理');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(7, 12, 'QUALIDADE', 'QUALITY', '品質系統');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(8, 13, 'Reparo Diário', 'Daily Repair', '每日維修紀錄');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(9, 14, 'Linha de Produção', 'Daily Production Line', '每日生產報表');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(10, 16, 'Meta Motherboard', 'Target Motherboard', 'M/B生產報表');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(11, 17, 'LINHA DE PRODUÇÃO', 'PRODUCTION LINE', '生產線管理');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(12, 18, 'Embalagem', 'Packing', '包裝站');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(13, 21, 'NPI', 'NPI', 'NPI');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(14, 22, 'Sequência das Estações', 'Station Sequence', '作業站流程設定');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(15, 23, 'Rastreabilidade SSd', 'Traceability PCBA/PPID', 'SSD生產紀錄查詢');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(16, 25, 'Rastreabilidade Box', 'Traceability Box', '包裝紀錄查詢');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(17, 27, 'ENGENHARIA', 'ENGINEERING', '工程資料管理');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(18, 29, 'Configuração da Caixa', 'Box / Pallet Configuration', '包裝參數設定');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(19, 31, 'Peso da Caixa', 'Box Weight', '包裝秤重');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(20, 32, 'Importar WWN/PSID', 'Import WWN / PSID', 'WWN / PSID 匯入');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(21, 33, 'Datalhes do Modelo', 'Model Informations', 'Detail Model');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(22, 36, 'Sistema RMA', 'RMA System', 'RMA System');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(23, 37, 'Bone Pile', 'Bone Pile', 'Bone Pile');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(24, 38, 'Bug Safety Parallel', 'Bug Safety Parallel', 'Bug Safety Parallel');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(25, 39, 'Dados da Label', 'Label Layout', 'Label Data');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(26, 41, 'Sistema MSD', 'MSD System', 'MSD System');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(27, 42, 'Controle de RMA', 'RMA Control', 'RMA Control');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(28, 45, 'Menu', 'Menu', 'Menu');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(29, 46, 'Configuração do Serial PCBA', 'Setup Serial PCBA', 'Setup Serial PCBA');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(30, 48, 'I/O Employee', 'I/O Employee', 'I/O Employee');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(31, 49, 'SAFETY', 'SAFETY', 'SAFETY');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(32, 50, 'I/O Employee', 'I/O Employee', 'I/O Employee');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(33, 51, 'Manpower', 'Manpower', 'Manpower');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(34, 52, 'MSD SSD', 'MSD SSD', 'MSD SSD');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(35, 53, 'MSD Motherboard', 'MSD Motherboard', 'MSD Motherboard');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(36, 54, 'ALMOXARIFADO', 'WAREHOUSE', 'WAREHOUSE');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(37, 55, 'Importar Nota Fiscal', 'Import Nota Fiscal', 'Import Nota Fiscal');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(38, 56, 'Consumir Componente', 'Consume Component', 'Consume Component');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(39, 57, 'Scrap', 'Scrap', 'Scrap');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(40, 58, 'PLANEJAMENTO', 'PRODUCTION SCHEDULING', '生產排程系統');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(41, 59, 'JO Setup', 'JO Setup', '訂單設定');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(42, 60, 'Operation Configuration', 'Operation Configuration', '作業站定義');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(43, 61, 'Product Cycle Time Setup', 'Product Cycle Time Setup', '產能設定');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(44, 62, 'Calendar Setup', 'Calendar Setup', '工作日設定');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(45, 63, 'Production Schedule', 'Production Schedule', '生產排程報表');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(46, 64, 'Histórico de Arquivo', 'File History', 'File History');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(47, 65, 'INÍCIO', 'HOME', '首頁');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(48, 66, 'Controle de Versão', 'Version Control', 'Version Control');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(49, 67, 'Meta SSD', 'Target SSD', 'Target SSD');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(50, 68, 'WIP Control de Material', 'WIP Material Control', 'WIP Material Control');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(51, 69, 'Configurar Serial', 'Setup Serial Number', 'Setup Serial Prod/EUI/CT');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(52, 70, 'Controle de Etiqueta', 'Label Management', 'Manage Label');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(53, 72, 'RMA Motherboard', 'RMA Motherboard', 'RMA Motherboard');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(54, 73, 'RMA SSD', 'RMA SSD', 'RMA SSD');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(55, 80, 'WIP Counter', 'WIP Counter', 'WIP Counter');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(56, 81, 'Relatório de Inspeção', 'Material Inspection', 'Incoming Inspection');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(57, 82, 'Log File', 'Log File', 'Log File');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(58, 83, 'Controle de ESD', 'ESD Control', 'ESD Control');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(59, 84, 'CONTROL DE DOCUMENTOS', 'DOCUMENT CONTROL', '文件管理系統');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(60, 86, 'Gerenciamento do Fluxo', 'Approval Flow setup', '簽核流程設定');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(61, 87, 'Minhas Requisições', 'My Requests', '我的申請單');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(62, 89, 'Notificação de Linha', 'LINE NOTIFICATION', 'Line Notification');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(63, 90, 'Controle de Máquina', 'Machine Control', 'Machine Control');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(64, 91, 'Aprovação', 'Waiting for approve', '等待簽核');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(65, 92, 'Pesquisa Avançada', 'Advanced Search', '簽核紀錄查詢');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(66, 94, 'Quality Hist Card', 'Quality Hist Card', 'Quality Hist Card');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(67, 95, 'Início', 'Home', '首頁');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(68, 96, 'CheckList', 'CheckList', 'CheckList');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(69, 97, 'HELP DESK', 'HELP DESK', 'HELP DESK');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(70, 98, 'My Tickets', 'My Tickets', 'My Tickets');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(71, 101, 'Manage Ticket', 'Manage Ticket', 'Manage Ticket');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(72, 103, 'Stations', 'Entrance', 'Stations');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(73, 109, 'Stations', 'Stations', 'Stations');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(74, 110, 'Register', 'Register Station', 'Register');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(75, 111, 'Load Component', 'Load Component', 'Load Component');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(76, 112, 'JO/MO/SN', 'JO/MO/SN', 'JO/MO/SN');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(77, 113, 'Cut', 'Cut Component', 'Cut');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(78, 114, 'Solder', 'Solder Paste', 'Solder');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(79, 115, 'Repair', 'Repair', 'Repair');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(80, 116, 'Box', 'Box', 'Box');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(81, 117, 'EQUIPMENT MANAGEMENT', 'EQUIPMENT MANAGEMENT', 'EQUIPMENT MANAGEMENT');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(82, 118, 'Main Function', 'Main Function', 'Main Function');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(83, 119, 'Material Control', 'Material Control', 'Material Control');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(84, 120, 'Return Material', 'Return Material', 'Return Material');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(85, 121, 'History Log', 'History Log', 'History Log');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(86, 122, 'Permission Tooling', 'Permission Tooling', 'Permission Tooling');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(87, 123, 'Shipment', 'Shipment', 'Shipment');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(88, 124, 'Line Pass I/O', 'Line Pass I/O', 'Line Pass I/O');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(89, 125, 'Line Pass I/O', 'Line Pass I/O', 'Line Pass I/O');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(90, 126, 'Pallet', 'Pallet', 'Pallet');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(91, 127, 'Part List', 'Part List', 'Part List');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(92, 128, 'Feeder Control', 'Feeder Control', 'Feeder Control');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(93, 129, 'Label', 'Label offline', 'Label');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(94, 130, 'Target', 'Target', 'Target');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(95, 131, 'PLANNING', 'PLANNING', 'PLANNING');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(96, 132, 'Screens', 'TV', 'Screens');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(97, 133, 'Complement M.O', 'Complement M.O', 'Complement M.O');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(98, 134, 'VISUAL GUIDE LIBARY', 'VISUAL GUIDE LIBRARY', 'VISUAL GUIDE LIBARY');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(99, 135, 'Maintain Defect', 'Maintain Defect', 'Maintain Defect');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(100, 136, 'Libary', 'Library', 'Libary');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(101, 137, 'NCM', 'FISCAL CLASSIFICATION', 'NCM');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(102, 138, 'PROJECT MANAGEMENT', 'PROJECT MANAGEMENT', 'PROJECT MANAGEMENT');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(103, 139, 'Inspection', 'Inspection', 'Inspection');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(104, 140, 'Daily Report of Material', 'Daily Report of Material', 'Daily Report of Material');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(105, 141, 'Tiago', 'Shippment', 'Tiago');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(106, 142, 'EDI Newland', 'EDI Newland', 'EDI Newland');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(107, 143, 'Feeder Control', 'Search Calibration', 'Feeder Control');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(108, 144, 'Label Rules', 'Label Rules', 'Label Rules');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(109, 145, 'TYPE SERIAL', 'Type Serial', 'TYPE SERIAL');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(110, 146, 'MO CONTROL', 'MO CONTROL', 'MO CONTROL');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(111, 147, 'Receive Material', 'Receive Material', 'Receive Material');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(112, 148, 'FIX ASSET', 'FIX ASSET', 'FIX ASSET');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(113, 149, 'Receive Material', 'Issue Material', 'Receive Material');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(114, 150, 'Reprint Material', 'Reprint Material', 'Reprint Material');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(115, 151, 'BOM', 'BOM', 'BOM');
INSERT INTO `dqwmenulang` (`ID`, `menu_fk`, `title_PT`, `title_EN`, `title_CH`) VALUES
	(116, 152, 'Tickets On Going', 'Tickets On Going', 'Tickets On Going');
/*!40000 ALTER TABLE `dqwmenulang` ENABLE KEYS */;

-- Dumping structure for table apitypeorm.dqwpermission
DROP TABLE IF EXISTS `dqwpermission`;
CREATE TABLE IF NOT EXISTS `dqwpermission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFILE` int(11) NOT NULL,
  `MENU` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_dqwpermission_dqwprofile` (`PROFILE`),
  KEY `FK_dqwpermission_dqwmenu` (`MENU`),
  CONSTRAINT `FK_dqwpermission_dqwmenu` FOREIGN KEY (`MENU`) REFERENCES `dqwmenu` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_dqwpermission_dqwprofile` FOREIGN KEY (`PROFILE`) REFERENCES `dqwprofile` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12861 DEFAULT CHARSET=utf8;

-- Dumping data for table apitypeorm.dqwpermission: ~1,073 rows (approximately)
DELETE FROM `dqwpermission`;
/*!40000 ALTER TABLE `dqwpermission` DISABLE KEYS */;
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(3814, 16, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4120, 24, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4121, 24, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4122, 24, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4123, 24, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4124, 24, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4125, 24, 54);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4126, 24, 55);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4127, 24, 56);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4128, 24, 57);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4129, 24, 64);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4130, 24, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4131, 24, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4132, 24, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4133, 24, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4134, 24, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4907, 22, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4908, 22, 49);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(4909, 22, 48);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5207, 16, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5208, 16, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5209, 16, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5210, 16, 101);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5226, 25, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5227, 25, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5228, 25, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5229, 25, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5230, 25, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5231, 25, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5232, 25, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5233, 25, 58);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5234, 25, 59);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5235, 25, 60);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5236, 25, 61);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5237, 25, 62);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5238, 25, 63);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5239, 25, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5240, 25, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5241, 22, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5242, 22, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5243, 22, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5257, 30, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5258, 30, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5259, 30, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5260, 30, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5261, 30, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5262, 28, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5263, 28, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5264, 28, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5265, 28, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(5266, 28, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(6453, 23, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(6454, 23, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(6455, 23, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(6456, 23, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(6457, 23, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(6458, 23, 101);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7453, 35, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7454, 35, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7455, 35, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7799, 11, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7800, 11, 21);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7801, 11, 32);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7802, 11, 29);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7803, 11, 31);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7804, 11, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7805, 11, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7806, 11, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7807, 11, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7808, 11, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7809, 11, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7810, 11, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7811, 11, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7812, 11, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7813, 11, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7814, 11, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7815, 11, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7816, 11, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7817, 11, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7818, 11, 124);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7819, 11, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7820, 11, 37);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7821, 11, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7822, 11, 42);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7823, 11, 83);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7824, 11, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7825, 11, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7826, 11, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7827, 11, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7828, 11, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7829, 11, 50);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(7830, 11, 125);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9414, 24, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9415, 24, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9416, 24, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9417, 24, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9418, 24, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9419, 24, 137);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9420, 24, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9421, 24, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9423, 42, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9424, 42, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9425, 42, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9426, 42, 137);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9470, 31, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9471, 31, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9472, 31, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9473, 31, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9474, 31, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9475, 31, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9476, 31, 50);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9477, 31, 94);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9478, 31, 125);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9572, 23, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9573, 23, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9574, 23, 18);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9575, 23, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9576, 23, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9577, 23, 36);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9578, 23, 72);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9579, 23, 73);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9580, 23, 38);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9581, 23, 41);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9582, 23, 52);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9583, 23, 53);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9584, 23, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9585, 23, 80);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9586, 23, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9587, 23, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9588, 23, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9589, 23, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9590, 23, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9591, 23, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9592, 23, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9593, 23, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9594, 23, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9595, 23, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9596, 23, 124);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9597, 23, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9598, 23, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9599, 23, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9600, 23, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9601, 23, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9602, 23, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9615, 28, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9616, 28, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9617, 28, 80);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9618, 28, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9619, 28, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9620, 28, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9621, 28, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9674, 26, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9675, 26, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9676, 26, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9677, 26, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9678, 26, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9679, 26, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9680, 26, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9681, 26, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9682, 26, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9683, 26, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9684, 26, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9685, 26, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9686, 26, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9687, 26, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9688, 26, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9689, 26, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9690, 26, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9691, 26, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9692, 26, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9693, 26, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9951, 21, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9952, 21, 21);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9953, 21, 22);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9954, 21, 70);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9955, 21, 69);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9956, 21, 29);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9957, 21, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9958, 21, 128);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9959, 21, 90);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9960, 21, 66);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9961, 21, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9962, 21, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9963, 21, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9964, 21, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9965, 21, 36);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9966, 21, 72);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9967, 21, 73);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9968, 21, 41);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9969, 21, 52);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9970, 21, 53);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9971, 21, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9972, 21, 80);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9973, 21, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9974, 21, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9975, 21, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9976, 21, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9977, 21, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9978, 21, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9979, 21, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9980, 21, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9981, 21, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9982, 21, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9983, 21, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9984, 21, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9985, 21, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9986, 21, 37);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9987, 21, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9988, 21, 42);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9989, 21, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9992, 21, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9993, 21, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9994, 21, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9995, 21, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9996, 43, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9997, 43, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9998, 43, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(9999, 43, 137);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10000, 43, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10001, 43, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10212, 19, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10213, 19, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10214, 19, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10215, 19, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10216, 19, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10217, 19, 139);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10218, 19, 81);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10219, 19, 94);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10220, 19, 140);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10221, 19, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10222, 19, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10223, 19, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10224, 19, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10759, 44, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10760, 44, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10761, 44, 142);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10789, 45, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10790, 45, 21);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10791, 45, 22);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10792, 45, 33);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10793, 45, 32);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10794, 45, 29);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10795, 45, 70);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10796, 45, 39);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10797, 45, 46);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10798, 45, 69);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10799, 45, 31);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10800, 45, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10801, 45, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10802, 45, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10803, 45, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10804, 45, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10805, 45, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10806, 45, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10807, 45, 141);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(10808, 45, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11003, 13, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11004, 13, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11005, 13, 90);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11006, 13, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11007, 13, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11008, 13, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11009, 13, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11010, 13, 18);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11011, 13, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11012, 13, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11013, 13, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11014, 13, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11015, 13, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11016, 13, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11017, 13, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11018, 13, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11019, 13, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11020, 13, 80);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11021, 13, 124);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11022, 13, 36);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11023, 13, 72);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11024, 13, 73);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11025, 13, 41);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11026, 13, 52);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11027, 13, 53);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11028, 13, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11029, 13, 37);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11030, 13, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11031, 13, 42);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11032, 13, 81);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11033, 13, 94);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11034, 13, 83);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11035, 13, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11036, 13, 133);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11037, 13, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11038, 13, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11039, 13, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11040, 13, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11041, 13, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11042, 13, 50);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11043, 13, 125);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11044, 13, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11045, 41, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11046, 41, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11047, 41, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11048, 41, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11049, 41, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11050, 41, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11051, 41, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11052, 41, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11053, 41, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11054, 41, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11055, 41, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11056, 41, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11057, 41, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11058, 41, 134);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11059, 41, 136);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11060, 41, 138);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11214, 30, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11215, 30, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11216, 30, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11217, 30, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11218, 30, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11219, 30, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11220, 30, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11221, 30, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11222, 30, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11223, 30, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11224, 30, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11225, 30, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11226, 30, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11227, 30, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11272, 29, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11273, 29, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11274, 29, 66);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11275, 29, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11276, 29, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11277, 29, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11278, 29, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11279, 29, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11280, 29, 42);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11281, 29, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11282, 29, 130);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11283, 29, 132);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11284, 29, 133);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11285, 29, 54);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11286, 29, 55);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11287, 29, 56);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11288, 29, 57);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11289, 29, 64);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11290, 29, 123);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11291, 29, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11292, 29, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11293, 29, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11294, 29, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11295, 29, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11296, 29, 142);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11297, 29, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11341, 47, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11342, 47, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11343, 47, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11344, 47, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11345, 47, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11346, 47, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11347, 47, 134);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11348, 47, 135);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11349, 47, 136);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11474, 33, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11475, 33, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11476, 33, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11477, 33, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11478, 33, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11479, 33, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11480, 33, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11481, 33, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11482, 33, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11483, 33, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11484, 33, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11485, 33, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11486, 33, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11487, 33, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11488, 33, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11489, 33, 134);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11490, 33, 135);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11491, 33, 136);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11492, 33, 138);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11493, 33, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11539, 40, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11540, 40, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11541, 40, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11542, 40, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11543, 40, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11544, 40, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11545, 40, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11546, 40, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11547, 40, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11548, 40, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11549, 40, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11550, 40, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11551, 40, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11552, 40, 134);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11553, 40, 136);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11554, 40, 138);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11555, 40, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11583, 34, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11584, 34, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11585, 34, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11586, 34, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11587, 34, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11588, 34, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11589, 34, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11590, 34, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11591, 34, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11592, 34, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11593, 34, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11594, 34, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11595, 34, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11596, 34, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11597, 34, 134);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11598, 34, 136);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11599, 34, 138);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11600, 34, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11631, 18, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11632, 18, 21);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11633, 18, 22);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11634, 18, 33);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11635, 18, 32);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11636, 18, 29);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11637, 18, 70);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11638, 18, 39);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11639, 18, 46);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11640, 18, 69);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11641, 18, 145);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11642, 18, 31);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11643, 18, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11644, 18, 128);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11645, 18, 90);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11646, 18, 66);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11647, 18, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11648, 18, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11649, 18, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11650, 18, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11651, 18, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11652, 18, 18);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11653, 18, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11654, 18, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11655, 18, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11656, 18, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11657, 18, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11658, 18, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11659, 18, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11660, 18, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11661, 18, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11662, 18, 80);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11663, 18, 38);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11664, 18, 124);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11665, 18, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11666, 18, 36);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11667, 18, 72);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11668, 18, 73);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11669, 18, 41);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11670, 18, 52);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11671, 18, 53);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11672, 18, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11674, 18, 133);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11676, 18, 54);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11677, 18, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11678, 18, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11679, 18, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11680, 18, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11681, 18, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11682, 18, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11683, 18, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11716, 33, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11717, 33, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11718, 33, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11719, 49, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11720, 49, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11721, 49, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11722, 49, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11723, 49, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11724, 49, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11725, 49, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11726, 49, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11727, 49, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11728, 49, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11729, 49, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11730, 49, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11731, 49, 133);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11732, 49, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11733, 49, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11734, 49, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11735, 8, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11736, 8, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11737, 8, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11738, 8, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11739, 8, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11740, 8, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11741, 8, 80);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11742, 8, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11743, 8, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11744, 8, 54);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11745, 8, 55);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11746, 8, 56);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11747, 8, 57);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11748, 8, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11749, 8, 123);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11750, 8, 147);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11751, 8, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11752, 8, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11753, 8, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11754, 8, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11755, 8, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11756, 8, 50);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11757, 8, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11795, 14, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11796, 14, 21);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11797, 14, 33);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11798, 14, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11799, 14, 128);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11800, 14, 90);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11801, 14, 66);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11802, 14, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11803, 14, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11804, 14, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11805, 14, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11806, 14, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11807, 14, 18);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11808, 14, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11809, 14, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11810, 14, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11811, 14, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11812, 14, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11813, 14, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11814, 14, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11815, 14, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11816, 14, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11817, 14, 38);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11818, 14, 124);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11819, 14, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11820, 14, 36);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11821, 14, 72);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11822, 14, 73);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11823, 14, 41);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11824, 14, 52);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11825, 14, 53);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11826, 14, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11827, 14, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11828, 14, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11829, 14, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11830, 14, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11831, 14, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11832, 14, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11833, 14, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11834, 14, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11921, 50, 54);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11922, 50, 55);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11923, 50, 56);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11924, 50, 57);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11925, 50, 64);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11926, 50, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11927, 50, 123);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11928, 50, 147);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11929, 50, 149);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11936, 51, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11937, 51, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11938, 51, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11939, 51, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11940, 51, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11941, 51, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11942, 51, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11943, 51, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(11944, 51, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12087, 36, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12088, 36, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12089, 36, 90);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12090, 36, 66);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12091, 36, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12092, 36, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12093, 36, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12094, 36, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12095, 36, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12096, 36, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12097, 36, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12098, 36, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12099, 36, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12100, 36, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12101, 36, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12102, 36, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12103, 36, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12104, 36, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12105, 36, 124);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12106, 36, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12107, 36, 36);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12108, 36, 72);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12109, 36, 73);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12110, 36, 41);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12111, 36, 52);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12112, 36, 53);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12113, 36, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12114, 36, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12115, 36, 42);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12116, 36, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12117, 36, 130);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12118, 36, 132);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12119, 36, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12120, 36, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12121, 36, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12122, 36, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12123, 36, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12124, 36, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12125, 36, 50);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12126, 36, 125);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12127, 36, 141);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12128, 36, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12298, 1, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12299, 1, 21);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12300, 1, 22);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12301, 1, 32);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12302, 1, 33);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12303, 1, 29);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12304, 1, 70);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12305, 1, 39);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12306, 1, 46);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12307, 1, 69);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12308, 1, 145);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12309, 1, 31);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12310, 1, 151);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12311, 1, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12312, 1, 128);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12313, 1, 90);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12314, 1, 66);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12315, 1, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12316, 1, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12317, 1, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12318, 1, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12319, 1, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12320, 1, 18);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12321, 1, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12322, 1, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12323, 1, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12324, 1, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12325, 1, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12326, 1, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12327, 1, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12328, 1, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12329, 1, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12330, 1, 38);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12331, 1, 80);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12332, 1, 124);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12333, 1, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12334, 1, 36);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12335, 1, 72);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12336, 1, 73);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12337, 1, 41);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12338, 1, 52);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12339, 1, 53);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12340, 1, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12341, 1, 37);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12342, 1, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12343, 1, 42);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12344, 1, 139);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12345, 1, 81);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12346, 1, 94);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12347, 1, 140);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12348, 1, 83);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12349, 1, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12350, 1, 130);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12351, 1, 133);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12352, 1, 132);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12353, 1, 54);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12354, 1, 55);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12355, 1, 56);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12356, 1, 57);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12357, 1, 64);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12358, 1, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12359, 1, 123);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12360, 1, 147);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12361, 1, 149);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12362, 1, 150);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12363, 1, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12364, 1, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12365, 1, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12366, 1, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12367, 1, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12368, 1, 50);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12369, 1, 112);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12370, 1, 125);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12371, 1, 141);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12372, 1, 142);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12373, 1, 49);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12374, 1, 48);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12375, 1, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12376, 27, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12377, 27, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12378, 27, 128);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12379, 27, 90);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12380, 27, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12381, 27, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12382, 27, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12383, 27, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12384, 27, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12385, 27, 18);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12386, 27, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12387, 27, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12388, 27, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12389, 27, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12390, 27, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12391, 27, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12392, 27, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12393, 27, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12394, 27, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12395, 27, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12396, 27, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12397, 27, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12398, 27, 42);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12399, 27, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12400, 27, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12401, 27, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12402, 27, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12403, 27, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12404, 1, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12405, 1, 58);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12406, 1, 59);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12407, 1, 60);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12408, 1, 61);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12409, 1, 62);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12410, 1, 63);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12411, 1, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12412, 1, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12413, 1, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12414, 1, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12415, 1, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12416, 1, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12417, 1, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12418, 1, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12419, 1, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12420, 1, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12421, 1, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12422, 1, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12423, 1, 137);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12424, 1, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12425, 1, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12426, 1, 101);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12427, 1, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12428, 1, 134);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12429, 1, 135);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12430, 1, 136);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12431, 1, 138);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12432, 1, 8);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12433, 1, 9);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12434, 1, 11);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12435, 1, 122);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12436, 1, 51);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12437, 1, 45);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12438, 1, 146);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12439, 1, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12440, 32, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12441, 32, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12442, 32, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12443, 32, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12444, 32, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12445, 32, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12446, 32, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12447, 32, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12448, 32, 138);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12449, 48, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12450, 48, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12451, 48, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12452, 48, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12453, 48, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12454, 31, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12455, 31, 58);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12456, 31, 59);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12457, 31, 60);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12458, 31, 61);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12459, 31, 62);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12460, 31, 63);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12461, 31, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12462, 31, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12463, 31, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12464, 31, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12465, 31, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12466, 31, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12467, 31, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12468, 31, 146);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12469, 18, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12470, 18, 58);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12471, 18, 59);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12472, 18, 60);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12473, 18, 61);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12474, 18, 62);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12475, 18, 63);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12476, 18, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12477, 18, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12478, 18, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12479, 18, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12480, 18, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12481, 18, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12482, 18, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12483, 18, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12484, 18, 137);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12485, 18, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12486, 18, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12487, 18, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12488, 18, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12489, 29, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12490, 29, 58);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12491, 29, 59);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12492, 29, 60);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12493, 29, 61);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12494, 29, 62);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12495, 29, 63);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12496, 29, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12497, 29, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12498, 29, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12499, 29, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12500, 29, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12501, 29, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12502, 29, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12503, 29, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12504, 29, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12505, 29, 146);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12506, 29, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12507, 27, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12508, 27, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12509, 27, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12510, 27, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12511, 27, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12512, 27, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12513, 27, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12514, 27, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12515, 27, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12516, 27, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12517, 27, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12518, 27, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12519, 27, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12520, 27, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12521, 27, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12522, 27, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12523, 19, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12524, 19, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12525, 19, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12526, 19, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12527, 19, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12528, 19, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12529, 19, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12530, 19, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12531, 19, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12532, 19, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12533, 19, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12534, 19, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12535, 19, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12536, 19, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12537, 19, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12538, 19, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12539, 19, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12540, 21, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12541, 21, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12542, 21, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12543, 21, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12544, 21, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12545, 21, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12546, 21, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12547, 21, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12548, 21, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12549, 21, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12550, 21, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12551, 21, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12552, 21, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12553, 21, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12554, 21, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12559, 45, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12560, 45, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12561, 45, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12562, 45, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12563, 45, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12564, 45, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12565, 45, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12566, 45, 137);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12567, 45, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12568, 45, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12569, 45, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12570, 45, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12571, 46, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12572, 46, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12573, 46, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12574, 46, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12575, 46, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12576, 46, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12577, 46, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12578, 46, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12579, 46, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12580, 46, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12581, 46, 146);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12582, 46, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12583, 51, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12584, 51, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12585, 51, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12586, 51, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12587, 51, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12588, 51, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12589, 51, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12590, 49, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12591, 49, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12592, 49, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12593, 49, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12604, 11, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12605, 11, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12606, 11, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12607, 11, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12608, 11, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12609, 11, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12610, 11, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12611, 11, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12612, 11, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12613, 11, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12614, 11, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12615, 11, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12616, 11, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12617, 11, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12618, 11, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12619, 11, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12628, 13, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12629, 13, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12630, 13, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12631, 13, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12632, 13, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12633, 13, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12634, 13, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12635, 13, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12636, 13, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12637, 13, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12638, 13, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12639, 13, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12640, 13, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12641, 13, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12642, 13, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12643, 13, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12644, 13, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12645, 37, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12646, 37, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12647, 37, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12648, 37, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12649, 37, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12650, 37, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12651, 37, 96);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12652, 37, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12653, 37, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12654, 37, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12655, 37, 120);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12656, 37, 121);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12657, 37, 143);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12658, 37, 137);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12659, 37, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12660, 37, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12661, 37, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12662, 37, 8);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12663, 37, 9);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12664, 37, 11);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12665, 37, 146);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12666, 37, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12746, 37, 1);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12747, 37, 21);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12748, 37, 22);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12749, 37, 33);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12750, 37, 29);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12751, 37, 70);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12752, 37, 39);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12753, 37, 46);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12754, 37, 69);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12755, 37, 144);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12756, 37, 145);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12757, 37, 151);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12758, 37, 27);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12759, 37, 128);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12760, 37, 90);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12761, 37, 66);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12762, 37, 82);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12763, 37, 17);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12764, 37, 23);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12765, 37, 25);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12766, 37, 129);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12767, 37, 109);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12768, 37, 103);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12769, 37, 111);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12770, 37, 110);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12771, 37, 113);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12772, 37, 114);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12773, 37, 115);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12774, 37, 116);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12775, 37, 68);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12776, 37, 38);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12777, 37, 80);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12778, 37, 124);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12779, 37, 127);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12780, 37, 41);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12781, 37, 52);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12782, 37, 53);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12783, 37, 12);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12784, 37, 37);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12785, 37, 13);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12786, 37, 42);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12787, 37, 139);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12788, 37, 81);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12789, 37, 94);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12790, 37, 140);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12791, 37, 83);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12792, 37, 131);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12793, 37, 130);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12794, 37, 133);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12795, 37, 132);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12796, 37, 54);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12797, 37, 55);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12798, 37, 56);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12799, 37, 57);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12800, 37, 64);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12801, 37, 126);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12802, 37, 123);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12803, 37, 147);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12804, 37, 149);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12805, 37, 150);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12806, 37, 2);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12807, 37, 6);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12808, 37, 14);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12809, 37, 16);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12810, 37, 67);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12811, 37, 50);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12812, 37, 112);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12813, 37, 125);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12814, 37, 141);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12815, 37, 142);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12816, 37, 49);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12817, 37, 48);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12818, 37, 89);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12819, 8, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12820, 8, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12821, 8, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12822, 8, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12823, 8, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12824, 8, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12825, 8, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12826, 8, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12827, 8, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12828, 8, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12829, 8, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12830, 36, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12831, 36, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12832, 36, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12833, 36, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12834, 36, 86);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12835, 36, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12836, 36, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12837, 36, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12838, 36, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12839, 36, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12840, 36, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12841, 36, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12842, 36, 148);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12843, 14, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12844, 14, 84);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12845, 14, 87);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12846, 14, 91);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12847, 14, 92);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12848, 14, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12849, 14, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12850, 14, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12851, 14, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12852, 14, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12853, 14, 152);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12854, 26, 65);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12855, 26, 117);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12856, 26, 118);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12857, 26, 119);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12858, 26, 97);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12859, 26, 98);
INSERT INTO `dqwpermission` (`ID`, `PROFILE`, `MENU`) VALUES
	(12860, 26, 152);
/*!40000 ALTER TABLE `dqwpermission` ENABLE KEYS */;

-- Dumping structure for table apitypeorm.dqwprofile
DROP TABLE IF EXISTS `dqwprofile`;
CREATE TABLE IF NOT EXISTS `dqwprofile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFILE` varchar(40) NOT NULL,
  `STATE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PROFILE` (`PROFILE`),
  KEY `FK_dqwprofile_dqwstate` (`STATE`),
  CONSTRAINT `FK_dqwprofile_dqwstate` FOREIGN KEY (`STATE`) REFERENCES `dqwstate` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Dumping data for table apitypeorm.dqwprofile: ~40 rows (approximately)
DELETE FROM `dqwprofile`;
/*!40000 ALTER TABLE `dqwprofile` DISABLE KEYS */;
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(1, 'ADMINISTRATOR', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(3, 'WAREHOUSE - MANAGER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(8, 'WAREHOUSE - SUPERVISOR', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(11, '[CS] QUALITY - MANAGER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(13, '[CS] QUALITY - SUPERVISOR', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(14, '[CS] QUALITY - PRODUCTION LEADER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(16, 'NPI - MANAGER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(18, 'NPI - ENGINEER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(19, 'QUALITY - ANALYST', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(21, 'QUALITY - ENGINEER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(22, 'GUARD', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(23, 'PROD. LINE - MSD SYSTEM', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(24, 'SALES', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(25, 'EIP', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(26, 'QUALITY - OPERATOR', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(27, 'PROD. LINE - ENGINEER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(28, 'PROD. LINE - PLASTIC INJ.', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(29, 'PLANNING', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(30, 'PROD. LINE - OPERATOR', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(31, 'GENERAL MANAGER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(32, 'CCBS GROUP', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(33, '[CCBS] QUALITY - ENGINEER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(34, '[CCBS] ENGINEER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(35, 'HELP DESK', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(36, '[CS] PRODUCTION LEADER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(37, '[CS] QUALITY - SUPERVISOR 2', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(38, 'Quality Inspector', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(39, 'SMT Operator', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(40, '[CCBS] OWNER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(41, '[CCBR] OWNER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(42, 'PUBLIC', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(43, 'FISCAL TEAM', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(44, '[CCBS] NEWLAND', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(45, '[CS] ASSISTENT NPI', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(46, '[CS] CUST CENTER', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(47, '[CCBS] QUALITY - TEAM', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(48, 'FIX ASSET', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(49, '[CS] NEWLAND COMPLEMENT', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(50, 'WAREHOUSE - OPERATOR', 1);
INSERT INTO `dqwprofile` (`ID`, `PROFILE`, `STATE`) VALUES
	(51, '[CS] MFG ASSISTENT', 1);
/*!40000 ALTER TABLE `dqwprofile` ENABLE KEYS */;

-- Dumping structure for table apitypeorm.dqwstate
DROP TABLE IF EXISTS `dqwstate`;
CREATE TABLE IF NOT EXISTS `dqwstate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATE` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `STATE` (`STATE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table apitypeorm.dqwstate: ~2 rows (approximately)
DELETE FROM `dqwstate`;
/*!40000 ALTER TABLE `dqwstate` DISABLE KEYS */;
INSERT INTO `dqwstate` (`ID`, `STATE`) VALUES
	(1, 'ACTIVE');
INSERT INTO `dqwstate` (`ID`, `STATE`) VALUES
	(2, 'INACTIVE');
/*!40000 ALTER TABLE `dqwstate` ENABLE KEYS */;

-- Dumping structure for table apitypeorm.dqwsystem
DROP TABLE IF EXISTS `dqwsystem`;
CREATE TABLE IF NOT EXISTS `dqwsystem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SYSTEM` varchar(50) NOT NULL,
  `URL` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SYSTEM` (`SYSTEM`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='CALCOMP SYSTEM > EIP; WORKSHOP';

-- Dumping data for table apitypeorm.dqwsystem: ~4 rows (approximately)
DELETE FROM `dqwsystem`;
/*!40000 ALTER TABLE `dqwsystem` DISABLE KEYS */;
INSERT INTO `dqwsystem` (`ID`, `SYSTEM`, `URL`) VALUES
	(1, 'CCBR WORKSHOP', 'http://10.58.70.32/workshop');
INSERT INTO `dqwsystem` (`ID`, `SYSTEM`, `URL`) VALUES
	(2, 'CAL-COMP EIP', 'http://10.58.70.32/eip');
INSERT INTO `dqwsystem` (`ID`, `SYSTEM`, `URL`) VALUES
	(3, 'CCBS WORKSHOP', 'http://10.58.65.41/ccbsworkshop');
INSERT INTO `dqwsystem` (`ID`, `SYSTEM`, `URL`) VALUES
	(4, 'COMMON LANGUAGE', '');
/*!40000 ALTER TABLE `dqwsystem` ENABLE KEYS */;

-- Dumping structure for table apitypeorm.dqwuser
DROP TABLE IF EXISTS `dqwuser`;
CREATE TABLE IF NOT EXISTS `dqwuser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMP_NO` varchar(20) NOT NULL COMMENT 'NUMBER REGISTRATION',
  `EMP_NAME` varchar(80) NOT NULL,
  `PASSWORD` varchar(225) NOT NULL,
  `PROFILE` int(11) NOT NULL,
  `STATE` int(11) NOT NULL COMMENT 'STATE: ACTIVE OR INACTIVE',
  `LAST_UPD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'WHEN REGISTERED ?',
  `UID1` varchar(20) NOT NULL COMMENT 'WHO REGISTERED ?',
  `EMAIL` varchar(80) DEFAULT NULL COMMENT 'E-MAIL',
  `SPECIAL_PERMISSION` int(11) DEFAULT '0' COMMENT 'BY ARTUR DIONISIO',
  `HASH` varchar(300) DEFAULT NULL,
  `LANG` varchar(2) NOT NULL DEFAULT 'EN',
  `FIRST_LOGIN` int(1) DEFAULT '1' COMMENT '1 - sim, é o primeiro login',
  `LAST_ACCESS` datetime DEFAULT NULL,
  `LAST_CHANGE_PASSWORD` datetime DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMP_NO` (`EMP_NO`),
  KEY `FK_dqwuser_dqwlanguage` (`LANG`),
  KEY `FK_dqwuser_dqwprofile` (`PROFILE`),
  KEY `FK_dqwuser_dqwstate` (`STATE`),
  CONSTRAINT `FK_dqwuser_dqwlanguage` FOREIGN KEY (`LANG`) REFERENCES `dqwlanguage` (`lang`) ON UPDATE CASCADE,
  CONSTRAINT `FK_dqwuser_dqwprofile` FOREIGN KEY (`PROFILE`) REFERENCES `dqwprofile` (`ID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_dqwuser_dqwstate` FOREIGN KEY (`STATE`) REFERENCES `dqwstate` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8;

-- Dumping data for table apitypeorm.dqwuser: ~271 rows (approximately)
DELETE FROM `dqwuser`;
/*!40000 ALTER TABLE `dqwuser` DISABLE KEYS */;
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(2, 'b7gc034', 'ADRIANO DE ABREU', '9a69c3c01bc648a933ccd4d2e871b3e8', 1, 1, '2019-12-27 10:56:28', 'TMCP', 'adriano_abreu@cal-comp.com.br', 0, 'd9079721a77d5f089b6c39fd6328f293', 'EN', 0, '2019-12-27 11:56:21', '2019-11-06 11:29:54', '10.58.149.205');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(3, 'B6G5577', 'CARLA QUEIROZ', '2087a40951ee72f138af71c9ebf1a68e', 37, 1, '2019-12-23 17:32:48', 'TMCP', 'carla_queiroz@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-23 18:32:36', '2019-10-30 09:17:18', '10.58.141.69');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(5, 'b2g1255', 'MAURO MARTINS', '96307d17a7c74bf48f42b2c5c3668944', 11, 1, '2019-10-30 16:14:48', 'TMCP', 'mauro_martins@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-10-30 17:14:41', '2019-10-30 17:14:27', '10.58.140.100');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(7, 'B1G0921', 'GUILHERME', 'e10adc3949ba59abbe56e057f20f883e', 36, 2, '2019-09-23 08:02:16', 'TMCP', 'guilherme@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:06', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(8, 'BB190360', 'CHARLES CHEN', '9d927ca75e76a5eaf9251a77b658ee0f', 1, 1, '2019-12-03 15:47:53', 'TMCP', 'charles_chen@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-12-03 16:47:48', '2019-11-28 09:26:29', '10.58.149.201');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(9, 'B7GC036', 'CARLOS SILVA', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '2019-08-21 19:48:17', 'TMCP', 'carlos_silva@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-08-21 19:04:12', '2019-08-01 09:11:07', '10.58.141.59');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(11, 'B7GC035', 'ARTUR DIONISIO', '7c96370110aec019f6dec0ce3f04b0f4', 1, 1, '2019-12-13 14:38:54', 'TMCP', 'artur_dionisio@cal-comp.com.br', 2, '4bc98abf09c2ce2d970456e7a14fa5e1', 'EN', 0, '2019-12-13 15:38:47', '2019-11-07 10:20:16', '10.58.149.203');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(12, 'b2g1309', 'SUELEN MACHADO', 'fcea920f7412b5da7be0cf42b8c93759', 14, 1, '2019-12-19 15:57:31', 'TMCP', 'suelen_machado@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-19 16:57:23', '2019-10-31 10:49:26', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(13, 'B2G1265', 'TARGLANE OLIVEIRA', 'fcea920f7412b5da7be0cf42b8c93759', 14, 1, '2019-12-19 17:18:45', 'TMCP', 'targlane_marcia@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-19 18:18:32', '2019-10-30 10:28:09', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(14, 'B4G3603', 'KEILA ALMEIDA', '2e13386c853c4620b93fef392659ef63', 18, 1, '2019-12-20 08:36:34', 'TMCP', 'keila_almeida@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-20 09:36:28', '2019-10-31 14:52:55', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(17, 'B2G1074', 'DAYANE FERNANDES', 'e10adc3949ba59abbe56e057f20f883e', 18, 2, '2019-08-01 08:12:21', 'TMCP', 'dayane_fernandes@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:32', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(21, 'b7gc037', 'GENILTON SILVA SOUZA', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '2019-12-27 16:49:27', 'TMCP', 'genilton_souza@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-27 17:49:23', '2019-11-06 14:48:37', '10.58.149.206');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(22, 'b7h5897', 'RENATA KELLY SIQUEIRA', 'de89e4b609740e60e6412614c7f6ed33', 14, 1, '2019-12-18 09:10:23', 'TMCP', 'renata_oliveira@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-18 10:10:17', '2019-10-31 17:30:17', '10.58.131.68');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(23, 'b6g5734', 'THARLISON LOPES', 'ee55e603b6fa8182f3099262fe7e5db7', 21, 1, '2019-12-19 15:31:29', 'TMCP', 'tharlison_lopes@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-19 16:31:24', '2019-11-02 16:53:21', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(24, 'a126762', 'JARUNEE MAGU', 'fcea920f7412b5da7be0cf42b8c93759', 36, 1, '2019-12-24 10:09:45', 'TMCP', 'jarunee@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-24 11:09:30', '2019-12-05 15:41:45', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(25, 'B2G2428', 'HALLEY CARNEIRO', 'e10adc3949ba59abbe56e057f20f883e', 21, 1, '2019-12-17 15:06:14', 'TMCP', 'halley_carneiro@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-08-19 16:54:52', '2019-08-01 09:12:07', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(26, 'B5G5363', 'CAIO CESAR LUAN', '9a286406c252a3d14218228974e1f567', 21, 1, '2019-12-27 01:13:46', 'TMCP', 'caio_luan@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-27 02:13:27', '2019-10-30 09:29:01', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(27, 'b2h1041', 'DAVID LIMA', 'fcea920f7412b5da7be0cf42b8c93759', 36, 1, '2019-12-20 10:53:38', 'TMCP', 'david_lima@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-20 11:53:31', '2019-10-30 08:52:11', '10.58.145.64');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(28, 'BB790084', 'ROCKY', 'e10adc3949ba59abbe56e057f20f883e', 1, 2, '2019-09-30 10:16:54', 'TMCP', 'rocklo@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:06', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(29, 'GLOBAL', 'GLOBAL', '9c70933aff6b2a6d08c687a6cbb6b765', 22, 1, '2019-12-30 03:42:36', 'TMCP', 'global', 0, NULL, 'EN', 0, '2019-12-30 04:42:32', '2019-11-20 10:12:31', '10.58.140.52');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(30, 'b7g6126', 'DANIEL CAMPELLO', 'e10adc3949ba59abbe56e057f20f883e', 36, 1, '2019-12-24 07:43:05', 'TMCP', 'danielcampello@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-24 08:42:59', '2019-10-30 11:46:26', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(31, 'B0H0828', 'LUCIENE', 'e10adc3949ba59abbe56e057f20f883e', 23, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:58', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(32, 'b2h1962', 'REBECA D', '1a034539d2ebd3a2bce79fd12cae6066', 23, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-10-30 18:10:53', '2019-10-30 18:09:29', '10.58.140.60');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(33, 'B3H3439', 'SUELEN GALVÃO', '7bf95c53ad206426ddeede0be715a671', 23, 1, '2019-12-17 12:09:03', 'TMCP', 'suelen_vieira@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-17 13:08:46', '2019-10-30 09:05:29', '10.58.134.63');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(34, 'b7h6041', 'ERNANI L', 'e10adc3949ba59abbe56e057f20f883e', 23, 1, '2019-12-22 11:05:23', 'TMCP', NULL, 0, NULL, 'EN', 1, '2019-12-20 23:34:27', '2019-10-30 01:53:57', '10.58.141.77');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(35, 'A7H0275', 'MARIA DO', '22ce506b8f0ef38fa2056040166db71f', 23, 1, '2019-12-26 08:50:35', 'TMCP', 'maria_docarmo@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-26 09:50:24', '2019-10-31 09:56:01', '10.58.140.60');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(36, 'B7H6061', 'GILVAN F', '6b4fc0ff759840eed0365778d4566e9c', 23, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-17 15:25:46', '2019-10-30 09:50:00', '10.58.141.52');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(37, 'B7H6065', 'THIAGO O', '6330e6753fcb275e39e19a53df2a5408', 23, 1, '2019-12-26 07:55:59', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-26 08:55:50', '2019-11-08 16:01:52', '10.58.131.67');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(38, 'b7h6069', 'DANIZEU', '124bd1296bec0d9d93c7b52a71ad8d5b', 23, 1, '2019-12-23 00:53:30', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-12-23 01:53:23', '2019-11-02 15:48:25', '10.58.131.69');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(39, 'B7H6314', 'JULIA VILLANI', 'e10adc3949ba59abbe56e057f20f883e', 24, 1, '2019-12-13 14:15:02', 'TMCP', 'aprendiz_sales@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:45', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(40, 'bb5g5271', 'ISRAEL CORREIA', 'e10adc3949ba59abbe56e057f20f883e', 29, 1, '2019-12-28 11:15:42', 'TMCP', 'israel_correia@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-28 12:15:32', '2019-10-30 19:37:16', '10.58.140.104');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(44, 'B7G6165', 'MARCO AURELIO CAVALCANTE', 'e10adc3949ba59abbe56e057f20f883e', 24, 2, '2019-09-30 10:16:54', 'TMCP', 'marco_aurelio@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:44', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(45, 'B2H1482', 'KAROLINE RODRIGUES', '1a6d6c7ea8cd373fc6b3028b75bca946', 14, 1, '2019-12-27 07:50:29', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-27 08:50:24', '2019-10-30 18:18:02', '10.58.140.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(46, 'b2h1485', 'MARIA GRACINETE RODRIGUES', '1a034539d2ebd3a2bce79fd12cae6066', 36, 1, '2019-12-12 12:51:48', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-12 13:48:05', '2019-10-30 09:59:22', '10.58.141.58');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(47, 'B7H6125', 'VERA LUCIA', 'e67c10a4c8fbfc0c400e047bb9a056a1', 14, 1, '2019-12-18 16:32:19', 'TMCP', 'vera_lucia@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-18 17:32:11', '2019-10-30 09:51:41', '10.58.132.62');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(48, 'B7H6255', 'EUZILENE PEREIRA FEITOSA', 'fcea920f7412b5da7be0cf42b8c93759', 23, 1, '2019-12-27 16:03:47', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-27 17:03:31', '2019-10-31 08:42:32', '10.58.141.54');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(49, 'B7H6250', 'THIAGO PEREIRA DA SILVA', 'e10adc3949ba59abbe56e057f20f883e', 23, 1, '2019-10-30 09:22:13', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-10-30 10:22:12', '2019-08-01 09:13:16', '10.58.142.53');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(50, 'b7h6257', 'ALEX DE OLIVEIRA', '80d2f169f1a586475915139d767a3f99', 23, 1, '2019-12-22 17:17:04', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-22 18:16:40', '2019-12-22 12:39:54', '10.58.131.69');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(51, 'B9790167', 'HOWARD HUANG', '95dfae5ca4f50ef03cfaf19f87f8dbaa', 25, 1, '2019-09-30 14:01:30', 'TMCP', 'howard@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:13', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(53, 'TB590094', 'VIC CHENG', 'e10adc3949ba59abbe56e057f20f883e', 18, 1, '2019-09-30 14:01:32', 'TMCP', 'vic_cheng@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:12', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(54, 'B3H2851', 'KAIO', 'e10adc3949ba59abbe56e057f20f883e', 8, 1, '2019-09-30 14:05:16', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:45', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(55, 'b7h6043', 'JOYCIANO NASCIMENTO', 'fcea920f7412b5da7be0cf42b8c93759', 8, 1, '2019-12-28 12:54:38', 'TMCP', 'fgi@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-28 13:54:36', '2019-10-30 12:12:00', '10.58.131.87');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(56, 'B2G1777', 'DAVID SILVA DE ASSUNÇÃO', 'fcea920f7412b5da7be0cf42b8c93759', 8, 1, '2019-12-20 19:47:28', 'TMCP', 'david_silva@cal-comp.com.br', 1, NULL, 'PT', 0, '2019-12-20 20:47:22', '2019-12-05 10:23:51', '10.58.131.106');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(57, 'B6H5760', 'ADRIELLE', 'e10adc3949ba59abbe56e057f20f883e', 26, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:43', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(58, 'b7h6175', 'FRANCISHIME RODRIGUES', '4badaee57fed5610012a296273158f5f', 19, 1, '2019-12-20 15:51:13', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-20 16:51:08', '2019-11-07 09:16:49', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(59, 'b7h6176', 'ISMAEL PINHEIRO FERREIRA', 'a076a13e1025f960a3bd02cca112ecc4', 26, 1, '2019-12-12 08:38:37', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-12 09:38:04', '2019-10-30 09:10:46', '10.58.134.61');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(60, 'B7G5764', 'JAMISSON CASSIANO DE MATOS', '4de35585e43001e7436de75dae44b67f', 19, 1, '2019-12-27 14:04:50', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-27 15:04:26', '2019-10-30 09:49:00', '10.58.131.55');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(61, 'b7h5895', 'JÚLIA BARROS SERRA', 'a86f0a9f6bbebcd6f78d5ca35d9c50fd', 26, 1, '2019-12-16 16:56:32', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-16 17:56:25', '2019-10-30 09:09:29', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(62, 'b6h5759', 'MARIA ANA LÚCIA', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-19 00:27:42', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-19 01:27:25', '2019-11-20 17:17:01', '10.58.141.57');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(63, 'B7H6092', 'MARIA CRISTIANA DUARTE SILVA', 'e10adc3949ba59abbe56e057f20f883e', 26, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:46', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(64, 'B7h5896', 'NATALIA LIMA DA COSTA', 'cc077e4074d58b5b3afe96921b220364', 26, 1, '2019-12-21 15:18:57', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-21 16:18:47', '2019-10-30 09:09:19', '10.58.141.65');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(65, 'B7H6093', 'QUEZIA AMANCIA DE SOUZA', 'e10adc3949ba59abbe56e057f20f883e', 19, 1, '2019-12-17 13:52:16', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:18', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(66, 'b7h5898', 'SUELEN ARAUJO DOS SANTOS', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-28 13:03:36', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-28 14:03:31', '2019-10-30 08:58:28', '10.58.131.63');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(67, 'B7H5815', 'VANESSA PARENTES DE FREITAS', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-26 07:55:21', 'TMCP', 'b2h1709', 0, NULL, 'PT', 0, '2019-12-26 08:55:16', '2019-10-30 09:09:03', '10.58.141.55');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(68, 'B2G1271', 'MARCOS ANDRE', 'e10adc3949ba59abbe56e057f20f883e', 27, 1, '2019-12-24 09:30:09', 'TMCP', 'marcos_andre@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-24 10:29:54', '2019-11-28 11:17:56', '10.58.131.69');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(69, 'b7g6131', 'CLEIZE SANTANA', 'e10adc3949ba59abbe56e057f20f883e', 36, 1, '2019-12-27 22:51:12', 'TMCP', 'cleize_araujo@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-27 23:51:06', '2019-10-30 08:53:34', '10.58.140.85');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(70, 'b1h0998', 'TASSILA SILVA', '55587a910882016321201e6ebbc9f595', 19, 1, '2019-12-21 15:16:30', 'TMCP', 'tassila_silva@cal-comp.com.br', 0, '7b30dd48749f1c3a8cc082638ee422c2', 'EN', 0, '2019-12-21 16:16:26', '2019-11-05 14:06:08', '10.58.131.56');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(71, 'B2H1426', 'LIDIANE NASCIMENTO', 'e10adc3949ba59abbe56e057f20f883e', 28, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:56', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(72, 'B2H1054', 'MERES MA', 'e10adc3949ba59abbe56e057f20f883e', 28, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:52', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(73, 'B7H6193', 'EDERSON', 'e10adc3949ba59abbe56e057f20f883e', 28, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:38', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(74, 'B4G3577', 'PIYASAK JAMSOPA', 'e10adc3949ba59abbe56e057f20f883e', 27, 1, '2019-09-30 14:01:37', 'TMCP', 'piyasak@calcomp.co.th', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:19', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(75, 'B4H3666', 'PAULA SANTOS BARROS', 'e10adc3949ba59abbe56e057f20f883e', 14, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:20', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(76, 'b7g5809', 'DIEGO VIEIRA', '28687b314963a63acc29fe433443fb3a', 21, 1, '2019-12-16 12:25:36', 'TMCP', 'diego_silva@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-16 13:19:20', '2019-11-06 18:11:50', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(77, 'b6g5758', 'CAYO FELYPE LIMA COUTINHO', 'f5110c145122863f02b2c8883e138c59', 21, 1, '2019-12-10 11:47:13', 'TMCP', 'cayo_felype@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-10 12:46:33', '2019-10-30 11:08:15', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(78, 'b6g5757', 'KELVIN WEUDEL DE SOUZA COELHO', 'a4903e8c6f7cf1116d9f0c204b76ccb1', 21, 1, '2019-12-27 17:36:16', 'TMCP', 'kelvin_souza@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-27 18:36:01', '2019-10-31 11:39:11', '10.58.131.89');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(79, 'b6g5572', 'ELZIAS ARAUJO DA ROCHA', '2e033e82794e11fea8b2a046f79631eb', 27, 1, '2019-11-26 13:50:25', 'TMCP', 'elzias_rocha@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-11-26 14:50:06', '2019-11-06 14:46:38', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(80, 'b7g5893', 'CANDIDA KARINE CALHEIRO DA COSTA', 'f99da242941c9aa2541299525b17c3c1', 14, 1, '2019-12-27 14:52:39', 'TMCP', 'candida_costa@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-27 15:52:37', '2019-10-30 09:19:04', '10.58.131.104');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(81, 'B7H5786', 'ANDRE FIGUEIRA', '67edfd52b4cb5f2dd2eb9d02c1aaaf6e', 26, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:53', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(82, 'b6h5986', 'VINICIUS ALMEIDA', 'eeafb716f93fa090d7716749a6eefa72', 19, 1, '2019-12-24 09:12:48', 'TMCP', 'vinicius_almeida@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-24 10:12:33', '2019-10-30 09:36:49', '10.58.140.113');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(83, 'OPERATOR', 'OPERATOR', '986496ca5b23669b8661171566a167c3', 30, 2, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:22', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(84, 'b2g1289', 'ANTONIONY COELHO', 'd8138084ec6edb7236924de4dc3e65ca', 1, 1, '2019-12-05 15:22:21', 'TMCP', 'antoniony@cal-comp.com.br', 1, 'd9079721a77d5f089b6c39fd6328f293', 'EN', 0, '2019-12-05 16:22:09', '2019-12-05 16:21:47', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(85, 'B2G1214', 'ARTHUR MENEZES', 'd72f6f02544b3ad8d5ac56c2f24669f5', 1, 1, '2019-09-30 14:01:43', 'TMCP', 'arthur_menezes@cal-comp.com.br', 1, 'd9079721a77d5f089b6c39fd6328f293', 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:57', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(87, 'b7h5767', 'FRANCINAYARA', '25f9e794323b453885f5181f1b624d0b', 28, 1, '2019-12-10 15:01:21', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-10 16:01:16', '2019-12-10 15:59:33', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(88, 'B7H5775', 'SABRINA BATISTA', 'e10adc3949ba59abbe56e057f20f883e', 28, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:35', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(89, 'B7G6196', 'WONALD SILVA', 'e10adc3949ba59abbe56e057f20f883e', 28, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:07', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(90, 'B4G3723', 'DANIELLE OLIVEIRA', 'e10adc3949ba59abbe56e057f20f883e', 29, 2, '2019-09-23 08:02:07', 'TMCP', 'danielle_oliveira@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 08:11:20', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(91, 'B3G3473', 'MARIA ROSARIO', 'e10adc3949ba59abbe56e057f20f883e', 28, 2, '2019-09-30 10:16:54', 'TMCP', 'maria_rosario@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:49', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(92, 'B7G6226', 'HERÁCLITO NETO', 'e10adc3949ba59abbe56e057f20f883e', 28, 2, '2019-09-30 10:16:54', 'TMCP', 'heraclito_neto@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:10', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(93, '9445100', 'SIMON CHEN', 'e10adc3949ba59abbe56e057f20f883e', 31, 1, '2019-09-30 14:01:52', 'TMCP', 'simonchen@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:27', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(94, 'RICO', 'RICO', '31b342f23cb16952131736824b9ccdd1', 34, 1, '2019-09-30 14:01:54', 'TMCP', 'rico@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:08', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(95, 'YILONG', 'YILONG', '8db883fc70b756ee829ed28fe707f11b', 34, 1, '2019-09-30 14:01:56', 'TMCP', 'yilong@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:05', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(96, 'BB6GC012', 'LAIS HORIMOTO', '940ff3672f1e1ffc5d8c00c145a6a9a1', 33, 2, '2019-08-01 08:14:41', 'TMCP', 'lais_horimoto@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:52', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(97, 'BB7H5806', 'ANTONIO JULIANO DA SILVA', 'e3296864c54cdc9b15dbd21974c5f3ac', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:55', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(99, 'BB690022', 'WILL LEE', '9203b885ea89a24fdf8b513f30581b39', 40, 1, '2019-09-30 14:01:57', 'TMCP', 'will_lee@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:08', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(100, 'BB590170', 'SCOTT CHANG', '434b4d90b40e7126fe4f65b549883235', 32, 1, '2019-09-30 14:01:58', 'TMCP', 'scott_chang@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:29', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(101, 'BB6H0006', 'NAIARA -', '1cb9cc6f825e4e51c2fe94d86772b3af', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:54', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(103, 'BB190118', 'JORDAN CHANG', '8d4bd9819f67872b3681761303c77ed0', 32, 1, '2019-09-30 14:01:59', 'TMCP', 'jordan_chang@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:33', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(104, 'BB5L0035', 'ROMIL M. NASARA', '3a4e6e17c6f386857b17bb2a492ece22', 34, 1, '2019-10-15 13:13:07', 'TMCP', 'romil@cal-comp.com.ph', 0, NULL, 'EN', 0, '2019-10-15 14:13:03', '2019-08-01 09:14:06', '10.58.197.127');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(105, 'B9617081', 'NAMFON NAKMA', '7d8509817d1220ce909e551c4d78004a', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:55', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(106, 'BA577104', 'WARAPORN KATWISET', '03a534edb49dada9133f5fb91ae4302b', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:09', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(107, 'BB100050', 'OSVALDO RELDER', 'cf0103f5bb9f12cb9babf884268833fc', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:21', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(108, 'BB100014', 'JOAO PAULO', '23f0b084fed02f8aa66f984bf085343e', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:28', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(109, 'BB490265', 'WS CHOW', '060d4f33e1277e61930f7e5611753e9a', 32, 1, '2019-09-30 14:02:02', 'TMCP', 'wenshih_chow@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:07', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(110, 'BB5L0026', 'Manny Palad', '51620deb2b62b2093ac334caf5435d4e', 40, 1, '2019-09-30 14:05:25', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:41', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(111, 'B9126299', 'SUKRUDEE LUEANGMAI-IAM', '3497ee49a9323d352cf238858ba3ee53', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:24', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(112, 'BB5L0033', 'KARL VIDAR', 'dd3bee7eb8fb2ec1308fdef5f7daf6dc', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:46', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(113, 'BB5L0034', 'RENANTE GARCES', 'd45feed6c3c00cb2936e84ba0b6170ad', 40, 1, '2019-09-30 14:05:35', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:12', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(114, 'BB5L0032', 'JOEY MERCADO', 'b62cb280b98987ac0e79e09721a5da7c', 40, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:31', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(115, 'BB690021', 'TA SHUN', '72ebab1e6f487eb8bfc111866c47af27', 40, 1, '2019-09-30 14:02:17', 'TMCP', 'ta_shun@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:44', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(116, 'BB2H2179', 'ALEXTIANE CARDOSO FERREIRA', 'fb65e75e632fe930d74d93ecbdd560c0', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:46', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(117, 'BB2H1442', 'ANDRE DUARTE DA SILVA', '4739dc8902aba575aee46bfaf0477c34', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:51', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(118, 'BB7GC039', 'MARCIO CHAN YU', '79cfd5e36fe5f76df0046dad353b2da3', 32, 2, '2019-09-30 10:16:54', 'TMCP', 'marcio_yu@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:43', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(119, 'BB4G4456', 'ROCK ZHANG', '2f965c7338c167628e5e3549d5888205', 40, 1, '2019-09-30 14:02:21', 'TMCP', 'rock_zhang@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:07', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(120, 'BB7GC044', 'FABIO RIBEIRO', '2483a51631f8e731372dce0df830ba38', 40, 1, '2019-09-30 14:02:22', 'TMCP', 'fabio_ribeiro@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:51', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(121, 'BB2H1035', 'AMANDA MAIA DA SILVA', 'f1a938314108436b5978105e4019062e', 47, 1, '2019-09-30 14:03:48', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:48', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(122, 'BB2H1400', 'HELOISA MENDES DA CUNHA', '3d7a453fee646672133dcd7b8a588421', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:09', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(123, 'BB0H0839', 'VALDI FERREIRA', '3dc6704d6d3242468cdaf301323e4a46', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:14', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(124, 'BB2H1085', 'CIZIONEILA MORAIS DA SILVA', '276432786ca9fec2fc74c60b0a6d9999', 32, 1, '2019-09-30 14:05:02', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:15', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(125, 'BB3H3434', 'LUIZ CARLOS', '69de3ef229870e81ed00b20ad800a037', 32, 2, '2019-09-30 10:16:54', 'TMCP', 'luiz_carlos@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:59', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(126, 'BA7H0465', 'JOZIMA DE CRISTO BARROS', '98c4cbcc277f1cd4d69135b7871402b4', 32, 1, '2019-10-02 13:30:25', 'TMCP', 'jozima_cristo@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-10-02 13:30:08', '2019-08-01 09:13:43', '10.58.132.88');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(127, 'BB3H3397', 'KATYANE -', 'ce8d52989c8dd00fea4d46305155417e', 32, 1, '2019-09-30 14:05:19', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:47', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(128, 'BB1H1014', 'SAMANTHA -', '74dd0976e021b5a4779e6beee2229aa7', 32, 1, '2019-09-30 14:05:40', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:36', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(129, 'BB5G5041', 'ARTORN KHUMPAO', '6be19bad1984dde1720a09eb42659a38', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:58', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(130, 'BB2G1268', 'ANDERSON -', 'e262f4a0df98ccaab3424702c02a7305', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:50', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(131, 'BB2G1258', 'ILEONILDO -', '8f5b5c36b673759ed39c413ff028234a', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:15', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(132, 'B1G1259', 'LUCIAN ARAUJO', 'e10adc3949ba59abbe56e057f20f883e', 34, 1, '2019-11-07 15:07:57', 'TMCP', 'lucian_araujo@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:57', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(133, 'BB2G1381', 'ROMULO -', '825ef5fb550a43820832c430f66e91b0', 34, 1, '2019-09-30 14:05:36', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:06', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(134, 'BB2H1093', 'HUMBERTO BRAGA', '9823a6f63eb2b57a09777f1e3f7f5e96', 47, 1, '2019-09-30 14:05:08', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:14', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(135, 'BB3H3436', 'MAURICIO -', '33d63acd6dff398f8a40e908c26b2b22', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:50', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(136, 'B9023802', 'SUKANYA THONGSUE', '8d4f2715c09540b2d5dee31f098ded18', 32, 2, '2019-09-30 10:16:54', 'TMCP', 'sukanya@calcomp.co.th', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:25', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(137, 'BB6H0007', 'ELIZANGELA -', 'bf7792b0e7db4949185047cfaf6c5659', 32, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:42', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(138, 'BB1G0987', 'IVONEA -', '74f2610cb0d80c969fe6cedd7de5bc7a', 40, 1, '2019-09-30 14:05:10', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:18', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(139, 'B3G3310', 'JORGIANE SOUZA SENA', 'e10adc3949ba59abbe56e057f20f883e', 32, 2, '2019-09-30 10:16:54', 'TMCP', 'jorgianne@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:34', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(140, 'b6h5685', 'LARYSSA SILVA', '3ab88dd28f749fe4ec90c0b6f9896eb5', 26, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-11-22 14:53:13', '2019-10-30 09:05:40', '10.58.131.58');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(141, 'A7H0326', 'ESTER SILVA', 'af8f9dffa5d420fbc249141645b962ee', 30, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-12-18 10:23:49', '2019-10-30 09:42:41', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(142, 'b4h5950', 'DALSILENE MARTINS', 'e10adc3949ba59abbe56e057f20f883e', 36, 1, '2019-12-21 15:41:54', 'TMCP', 'dalsilene_martins@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-21 16:41:51', '2019-10-30 08:40:51', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(143, 'b4g3876', 'DANILO ARAUJO SILVA', 'c33367701511b4f6020ec61ded352059', 27, 1, '2019-12-26 13:55:39', 'TMCP', 'danilo_silva@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-12 17:01:37', '2019-10-30 16:05:49', '10.58.132.55');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(145, 'B7H5888', 'SILAS PEREIRA DE SOUZA', 'fcea920f7412b5da7be0cf42b8c93759', 14, 1, '2019-12-17 15:17:41', 'TMCP', 'suelen_machado@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-17 16:17:37', '2019-10-30 16:37:58', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(146, 'b7h5810', 'EMERSON VIERA', 'fcea920f7412b5da7be0cf42b8c93759', 21, 1, '2019-12-14 08:03:35', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-14 09:03:29', '2019-11-08 16:25:41', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(147, 'BB6G0008', 'Marcelo Veiga Barroso', 'e10adc3949ba59abbe56e057f20f883e', 32, 2, '2019-09-30 10:16:54', 'TMCP', 'marcelo_veiga@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:42', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(148, 'BB5GA049', 'Neidson Santos', '3851b1ae73ca0ca6e3c24a0256a80ace', 32, 1, '2019-09-30 14:02:32', 'TMCP', 'neidson@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:34', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(149, 'BB2H1062', 'TATIANE', '508d8a21acc4c2242f30f8736796cef7', 33, 1, '2019-09-30 14:02:33', 'TMCP', 'tatiane_sena@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:22', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(150, 'bb4h4950', 'KATHLEEN KARINE RODRIGUES', '6712d1b8b24a5d9f9cc637f229132afe', 27, 1, '2019-12-26 13:55:48', 'TMCP', 'kathleen_rodrigues@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-12 17:46:38', '2019-11-01 15:22:19', '172.16.132.93');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(152, 'BB6G5681', 'IURY ANE FLORES', 'e10adc3949ba59abbe56e057f20f883e', 35, 2, '2019-12-17 15:06:30', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:17', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(153, 'B8G6318', 'WANDERSON', 'e10adc3949ba59abbe56e057f20f883e', 36, 1, '2019-12-27 14:30:09', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:10', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(154, 'B7H5807', 'BRENDA SILVA BASTOS', 'e10adc3949ba59abbe56e057f20f883e', 30, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-12-19 17:33:05', '2019-10-30 10:11:18', '10.58.141.65');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(155, 'B7H5805', 'ANA CLEIA DUQUE PANTOJA', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-07 13:56:20', 'TMCP', 'qc_smtcs@cal-comp.com.br ', 0, NULL, 'EN', 0, '2019-12-07 14:55:56', '2019-10-31 15:39:01', '10.58.141.57');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(156, 'B7H5816', 'YASMIN RAILDA MATOS PINHEIRO', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-11-29 13:51:18', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-11-29 14:51:00', '2019-11-22 12:49:46', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(157, 'b7h5879', 'BRENDA FLAVIA DA SILVA PEREIRA', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-12-07 14:22:21', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-07 15:22:04', '2019-10-30 09:05:38', '10.58.140.114');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(158, 'B7H5884', 'JOYCE CASTRO DA SILVA', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:37', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(159, 'B7H5890', 'THELMA CRISTINA SA MACHADO', 'e28a2fc90264b9094e2ae02a1b1d979d', 14, 1, '2019-12-14 08:31:08', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-14 09:30:34', '2019-11-07 18:24:41', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(160, 'B7H5891', 'EDMARA MADEIRA RAMOS', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:39', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(161, 'B7H5811', 'JOELMARA DE OLIVEIRA ADRIANO', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-12-20 17:43:01', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-20 18:42:40', '2019-11-20 17:15:10', '10.58.131.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(162, 'b7h5813', 'RAILSON BRITO CASTRO', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-12-22 18:09:12', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-22 19:09:03', '2019-11-26 11:08:26', '10.58.131.67');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(164, 'B7H5814', 'ROBERVAL C DE OLIVEIRA NETO', '1780177aecb9c0a7747fc7ce729e74f0', 26, 1, '2019-12-07 23:45:23', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-08 00:45:09', '2019-10-30 18:42:38', '10.58.141.72');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(165, 'b7h5886', 'RICARDO NARCISO MAGALHAES', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-12-28 01:46:50', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-28 02:46:31', '2019-11-08 09:02:13', '10.58.131.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(166, 'b7h6062', 'JANDERSON CALDERARO FIGUEIREDO', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-11-28 08:35:12', '2019-11-01 08:36:29', '10.58.142.52');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(167, 'B7H6066', 'KLINGER CABRAL BARBOSA', 'aad408d8b7389b69cb2069a17baee2c9', 30, 1, '2019-12-27 13:44:29', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-27 14:44:02', '2019-10-31 11:13:46', '10.58.131.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(168, 'B7H6087', 'JONATAS DA COSTA MACEDO', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:32', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(169, 'b7h6129', 'JAILSON NASCIMENTO DE OLIVEIRA', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-27 17:28:01', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-27 18:27:55', '2019-11-05 09:03:52', '10.58.131.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(171, 'B7H6143', 'RAIMUNDO NONATO GAMA PERES', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:14', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(172, 'B7H6195', 'CHARLENE LOPES DE AQUINO ALVES', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:11', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(173, 'b7h6294', 'ADILSON H BARBOSA DE S JUNIOR', '96d2b653ba34edf1fec7ecc906cc12d1', 30, 1, '2019-12-11 08:08:41', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-11 09:08:26', '2019-11-01 09:07:44', '172.16.132.91');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(174, 'b7h6354', 'ODETE DUARTE DE SOUZA', 'e10adc3949ba59abbe56e057f20f883e', 30, 1, '2019-12-27 17:39:31', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-27 18:39:22', '2019-10-30 09:08:42', '10.58.131.63');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(175, 'B7H6321', 'SAMUEL DAVID FARIAS FERREIRA', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:30', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(176, 'b5h5352', 'RAFAEL CAMUÇA', 'd400e53bf099d5340a6d0bb0732d2adf', 49, 1, '2019-12-13 15:29:47', 'TMCP', 'rafael_camurca@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-13 16:29:34', '2019-10-30 12:27:38', '10.58.133.69');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(177, 'BB3G2676', 'Erick Castro de Carvalho', 'e10adc3949ba59abbe56e057f20f883e', 40, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:45', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(179, 'B6G0009', 'ANA PAULA LECOMTE', 'e10adc3949ba59abbe56e057f20f883e', 24, 1, '2019-12-17 15:06:23', 'TMCP', 'ana_lecomte@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:50', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(182, 'B7H6099', 'NILSON SANTOS DO ROSARIO', '961903be5a9c7ea73b4af5ef06ae03b3', 26, 1, '2019-12-20 13:13:32', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-20 14:13:00', '2019-10-30 08:36:02', '10.58.141.65');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(183, 'b7h5770', 'LEONARDO VICTOR GOMES BARROS', 'c33367701511b4f6020ec61ded352059', 26, 1, '2019-11-21 08:18:21', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-11-21 09:18:14', '2019-11-21 09:17:30', '10.58.134.77');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(184, 'B7H5812', 'KELLY MARA DE SOUZA MELO', 'e10adc3949ba59abbe56e057f20f883e', 26, 1, '2019-10-16 09:18:03', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-10-16 10:17:54', '2019-08-01 09:13:49', '10.58.141.65');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(185, 'RECEPCAO', 'RECEPCAO', '46c7c2bdb743ecf2eefc412bb403082b', 35, 2, '2019-09-30 10:16:54', 'TMCP', 'recepcao', 0, NULL, 'PT', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:13', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(186, 'B7G6051', 'Maria Vitoria de Jesus Souza', 'e10adc3949ba59abbe56e057f20f883e', 51, 1, '2019-11-13 10:06:45', 'TMCP', 'vitoria_souza@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:49', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(187, 'B8G6563', 'RAFAEL VIEIRA', 'e10adc3949ba59abbe56e057f20f883e', 18, 1, '2019-09-09 14:37:17', 'TMCP', 'rafael_vieira@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-09-09 14:37:02', '2019-08-01 09:14:17', '10.58.131.96');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(188, 'BB8GC054', 'CASSIA VIEIRA', 'e10adc3949ba59abbe56e057f20f883e', 33, 1, '2019-11-13 08:56:54', 'TMCP', 'cassia_vieira@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-11-13 09:55:53', '2019-11-05 09:10:46', '10.58.197.87');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(189, 'B5G5212', 'Giuliana Neves', 'e10adc3949ba59abbe56e057f20f883e', 46, 1, '2019-09-30 13:51:45', 'TMCP', 'giuliana_neves@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:04', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(191, 'B8L0010', 'Edwin Evora', 'e10adc3949ba59abbe56e057f20f883e', 40, 1, '2019-09-30 14:02:43', 'TMCP', 'edwin_evora@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:40', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(192, 'B3H3434', 'Luiz Carlos', '371550781a1c853d643798290d6a3063', 40, 2, '2019-09-30 10:16:54', 'TMCP', 'luiz_carlos@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:39', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(193, 'B8G6639', 'DENIS COELHO', '35aba0fdecc7f4260cb2383210687de6', 13, 1, '2019-12-27 09:22:01', 'TMCP', 'denis_coelho@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-27 10:21:49', '2019-10-30 14:40:17', '10.58.70.90');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(194, 'B2H1430', 'LUANA ELIZABETH FARIAS MORAES ', 'e10adc3949ba59abbe56e057f20f883e', 26, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:57', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(195, 'B7H6145', 'LUCINEIA ALMEIDA FERREIRA', 'dc4c7c69ed2bd1931bc0b6096b051515', 26, 1, '2019-12-27 18:32:43', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-27 19:32:35', '2019-10-30 09:12:26', '10.58.131.78');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(196, 'b6h5662', 'JESSICA BATISTA GONCALVES', 'e42a4f1a5798c4cd532275a25b7d428f', 45, 1, '2019-12-11 08:35:30', 'TMCP', 'jessica@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-11 09:35:26', '2019-10-30 12:12:58', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(197, 'B2H1709', 'MARIA RENATA DE ANDRADE MARTIN', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-20 11:35:47', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-20 12:35:34', '2019-10-30 09:05:40', '10.58.141.65');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(198, 'B5H5129', 'NILTA MATTOS DOS SANTOS', 'e10adc3949ba59abbe56e057f20f883e', 26, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:28', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(199, 'b7h6258', 'ERINALDO', '556d924734b364013152630bcbc9ffdb', 23, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-12-13 03:16:27', '2019-10-30 08:52:53', '10.58.141.52');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(200, 'B7G5897', 'RENATA KELLY DE S C OLIVEIRA', 'e10adc3949ba59abbe56e057f20f883e', 26, 1, '2019-09-30 14:05:34', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:10', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(201, 'B4H3863', 'TAYANE MOTA', 'd1cf0ecc87fdcd1a35152fa87c74eae4', 29, 1, '2019-12-18 08:07:01', 'TMCP', 'tayae_mota@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-18 09:06:26', '2019-11-19 15:45:27', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(202, 'B5H5978', 'EWERSON AMORIM', 'e10adc3949ba59abbe56e057f20f883e', 36, 1, '2019-12-26 16:08:13', 'TMCP', 'ewerson_carmo@cal-comp.com.br', 1, NULL, 'PT', 0, '2019-12-26 17:08:10', '2019-10-31 11:14:06', '10.58.131.61');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(203, 'calcomp', 'calcomp', 'e10adc3949ba59abbe56e057f20f883e', 42, 2, '2019-09-30 14:04:47', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:04', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(204, 'b7h6164', 'MIRELE SOUZA DE MEDEIROS', 'fcea920f7412b5da7be0cf42b8c93759', 36, 1, '2019-12-28 02:47:09', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-28 03:47:03', '2019-10-30 09:28:50', '10.58.131.58');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(205, 'b5h5954', 'NILTA MATTOS', 'fcea920f7412b5da7be0cf42b8c93759', 36, 1, '2019-12-21 14:46:12', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-21 15:46:02', '2019-11-05 12:32:48', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(206, 'B490112', 'BRITTANY HUANG', '1ab54332dcad50f0e32dc690bb3c7412', 43, 1, '2019-09-30 14:03:55', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:01', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(207, 'b6h5627', 'SHEILA SOARES DA SILVA', 'c33367701511b4f6020ec61ded352059', 23, 1, '2019-12-14 14:07:32', 'TMCP', 'suelen_vieira@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-14 15:06:54', '2019-10-30 17:16:01', '10.58.134.54');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(208, 'b6h5620', 'DANIELLY DA SILVA FIALHO', 'eaa97dfcbd144e853d3eb8366c409adb', 23, 1, '2019-12-21 11:37:45', 'TMCP', 'suelen_vieira@cal-comp.com.br', 0, NULL, 'PT', 0, '2019-12-21 12:36:38', '2019-10-30 16:38:56', '10.58.134.64');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(209, 'b8h6490', 'GABRIEL SILVA DA SILVA', 'c33367701511b4f6020ec61ded352059', 23, 1, '2019-12-11 17:26:54', 'TMCP', 'suelen_vieira@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-11 18:26:46', '2019-10-31 15:34:00', '10.58.134.52');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(210, 'b5h5356', 'PHELIPE MARTINS', 'c33367701511b4f6020ec61ded352059', 23, 1, '2019-12-17 17:55:42', 'TMCP', 'suelen_vieira@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-17 18:55:36', '2019-10-30 09:02:31', '10.58.134.88');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(211, 'b8g6642', 'TAIRO LEMOS COLLYER', 'd400e53bf099d5340a6d0bb0732d2adf', 27, 1, '2019-12-26 13:55:27', 'TMCP', 'tairo_collyer@cal-comp.com.br', 2, NULL, 'EN', 0, '2019-12-19 16:27:01', '2019-10-30 11:47:34', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(212, 'B7H5883', 'FLAVIA FERNANDA DA SILVA', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:53', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(213, 'B7H6067', 'CHRISTELA OLIVEIRA FE DE JESUS', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:14', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(214, 'B8H6355', 'KETYLA OLIVEIRA SANTOS', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:50', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(216, 'B8H6467', 'MARIA CAROLINE DA ROCHA ARAUJO', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:46', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(217, 'B8G6591', 'WANESSA CAROLINA GARCIA', 'f0a4c51bb8422a7941d3a0b047eae45e', 29, 1, '2019-12-27 13:11:02', 'TMCP', 'wanessa_garcia@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-27 14:11:00', '2019-10-30 19:01:02', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(218, 'B8H6568', 'ADEVAN OLIVEIRA DA COSTA', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-10-31 14:38:39', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-10-31 15:38:27', '2019-10-31 15:38:27', '10.58.140.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(219, 'b9g6898', 'JENIFFER PAIXAO DA SILVA', '7409685c5b5d3a187c6591fe545e1114', 29, 1, '2019-11-19 14:09:54', 'TMCP', 'jeniffer_silva@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-11-19 15:09:43', '2019-10-30 10:04:36', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(220, 'B5H5467', 'JESSICA FORTE GOMES', 'a19b7130b4d09c078df5dd1886cae7f1', 26, 1, '2019-12-18 16:28:54', 'TMCP', 'jessica_forte@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-18 17:28:37', '2019-12-18 17:27:41', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(221, 'b6h5592', 'JOSE EDNELSON DE SOUZA FILHO', '545aedc4b60723b0b57ad64718c53491', 26, 1, '2019-12-21 07:58:50', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-21 08:58:23', '2019-10-30 09:11:42', '10.58.134.77');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(222, 'b8h6336', 'LISSANDRA DE ARAUJO SILVA', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-07 15:04:12', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-07 16:03:56', '2019-10-30 09:03:08', '10.58.142.54');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(223, 'b5h5351', 'MARCIA MARQUES DE OLIVEIRA', '27a0b997b16e0d562a736bb7ff4dd4ba', 26, 1, '2019-12-20 07:57:45', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-20 08:57:20', '2019-10-30 09:05:45', '10.58.134.81');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(224, 'B7H6135', 'MATHEUS VASCONCELOS DE LIMA', 'e10adc3949ba59abbe56e057f20f883e', 26, 1, '2019-12-02 19:27:47', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-02 20:27:21', '2019-08-01 09:14:50', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(226, 'B7h6100', 'SUELEN PEREIRA RODRIGUES', 'c33367701511b4f6020ec61ded352059', 26, 1, '2019-12-28 19:44:28', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-28 20:44:23', '2019-10-30 14:21:26', '10.58.131.63');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(228, 'B890172', 'CHARLIE TENG', '3053e5032cf81b2047da9c514163c62a', 34, 1, '2019-09-30 14:02:46', 'TMCP', 'charlie_teng@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:11:13', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(229, 'B9GC074', 'THIAGO NEGREIROS', '8aedb163673172db8f2e851f0ec87946', 1, 1, '2019-12-26 09:39:38', 'TMCP', 'thiago_vieira@cal-comp.com.br', 1, 'd9079721a77d5f089b6c39fd6328f293', 'EN', 0, '2019-12-26 10:39:06', '2019-11-05 11:34:42', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(230, 'B8HC056', 'CARLA LIMA DA SILVA CAMPOS', 'e10adc3949ba59abbe56e057f20f883e', 33, 1, '2019-11-26 09:05:17', 'TMCP', 'carla_campos@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-11-26 10:04:26', '2019-08-01 09:11:06', '10.58.149.203');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(231, 'BB8GC055', 'Sarah Souza Rodrigues', 'f5129ca7154464205700c1f3602d8586', 34, 1, '2019-09-30 14:02:49', 'TMCP', 'sarah_souza@cal-comp.com', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:29', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(232, 'B8H6466', 'LUIZ CARLOS RIBEIRO DE SOUZA', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:40', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(241, 'b5h5479', 'ROSELY PEREIRA DOS SANTOS', '2a4732f0397291f03a5b91cd2e11c926', 23, 1, '2019-12-23 07:59:48', 'TMCP', 'suelen_vieira@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-23 08:59:38', '2019-11-05 12:58:42', '10.58.140.60');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(242, 'b7h5827', 'LUZIMAR LUIZ PINTO', 'e4897f4a78f7f8e5f9bb8c356f006dd0', 30, 1, '2019-12-20 17:47:35', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-20 18:47:19', '2019-10-30 08:53:43', '10.58.131.78');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(243, 'B7H5826', 'JOELCIO FIGUEIREDO JUNIOR', 'e10adc3949ba59abbe56e057f20f883e', 30, 1, '2019-11-29 08:06:02', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-11-29 09:05:52', '2019-08-01 09:12:29', '10.58.134.53');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(244, 'B9H6746', 'AUREO AUGUSTO FERREIRA DO NASCIMENTO', 'e10adc3949ba59abbe56e057f20f883e', 30, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-11-01 11:06:57', '2019-08-01 09:10:59', '10.58.134.55');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(245, 'b8h6463', 'LEANDRO SANTANA SOBRINHO', '3d186804534370c3c817db0563f0e461', 30, 1, '2019-11-08 10:53:06', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-11-08 11:52:06', '2019-11-08 11:52:06', '10.58.132.51');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(246, 'b9h6749', 'DANILO DA SILVA RAMOS', '6c44e5cd17f0019c64b042e4a745412a', 30, 1, '2019-12-12 08:03:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-12 09:03:46', '2019-10-30 08:58:59', '10.58.134.54');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(247, 'b9h6829', 'GABRIEL DE ALBUQUERQUE GUEDES', 'c33367701511b4f6020ec61ded352059', 30, 1, '2019-12-21 16:14:03', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-21 17:01:56', '2019-11-05 18:23:00', '10.58.134.78');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(249, 'B9H6743', 'ANDREW SERRAO GUIMARAES', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:10:54', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(251, 'b6h5666', 'DACIO DA SILVA LIMA', 'd9900d0f5f7b6bbee3c5716e3ee114b3', 30, 1, '2019-12-20 08:31:08', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-12-20 09:31:04', '2019-11-01 09:09:51', '10.58.134.70');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(252, 'b7h5849', 'HELITON TERCO OLIVEIRA', 'f1e727fa0ffb4bc57047d8be796200f4', 30, 1, '2019-12-20 07:50:58', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-20 08:50:46', '2019-10-31 09:02:45', '10.58.134.53');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(253, 'b8h6600', 'HIRLAN DUARTE NOGUEIRA', '5b9c071d19007b1d6ae284e33e0fbe1f', 30, 1, '2019-12-19 10:49:11', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-19 11:48:41', '2019-10-30 16:28:42', '10.58.134.69');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(254, 'b7h5833', 'THIAGO DOS SANTOS FARIAS', '46b56c38bf7777047743839c07c11ba2', 30, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'PT', 0, '2019-12-07 08:52:28', '2019-10-30 09:01:49', '10.58.134.70');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(255, 'B6G6918', 'ROSA IBÊRE TAVARES DANTAS', 'fcea920f7412b5da7be0cf42b8c93759', 18, 1, '2019-08-09 17:29:19', 'TMCP', 'rosa_dantas@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-08-09 23:28:17', '2019-08-09 23:28:17', '10.58.149.78');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(256, 'B7H6081', 'CASSIA MARQUES SALAZAR', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-20 01:29:42', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-20 02:29:35', '2019-10-30 19:10:16', '10.58.141.51');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(257, 'b9h6896', 'DARLIANE FERREIRA DA F PEREIRA', 'e398bd9220d081840ebd0961fe3fa8da', 26, 1, '2019-12-28 08:07:08', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-28 09:07:01', '2019-11-05 09:08:30', '10.58.131.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(258, 'b7h6085', 'JANAINA LEITAO DOS SANTOS', 'f7fa8e2e822a3e6806f971b6a9d36ec2', 26, 1, '2019-11-11 16:28:28', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-11-11 17:28:07', '2019-10-30 09:12:20', '10.58.145.62');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(262, 'B9H6899', 'THAYNARA F DE S C DE OLIVEIRA', 'b2408366889e147e847ddb81c7d0004d', 26, 1, '2019-12-20 18:32:37', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-20 19:32:26', '2019-10-30 01:24:59', '10.58.131.78');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(264, 'B9G6917', 'RENATA FERREIRA PALHETA', '8c462c26630b2eb662816e294e941383', 14, 1, '2019-12-18 11:42:28', 'TMCP', 'renata_palheta@cal-comp.com.br', 1, NULL, 'PT', 0, '2019-12-18 12:42:26', '2019-10-30 09:14:32', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(265, 'b9g6897', 'GISELE SALES MONTEIRO', 'ee6f05997f5d4d763bf777bc03d0884c', 23, 1, '2019-12-17 14:44:17', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-17 15:43:50', '2019-10-30 16:11:57', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(266, 'jsan', '周功恩 J_San', 'fcea920f7412b5da7be0cf42b8c93759', 44, 1, '2019-11-26 20:55:23', 'TMCP', 'jsan@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-11-26 21:55:17', '2019-11-05 04:05:31', '10.2.27.157');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(267, 'ericchang', '張哲維(CS) Chang Che Wei', 'e10adc3949ba59abbe56e057f20f883e', 44, 1, '2019-09-30 14:02:51', 'TMCP', 'ericchang@calcomp.com.tw', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:13:02', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(269, 'B9G6916', 'Joseph Gilson Farias', 'ffa6309bfd075feae3d00564bd472dd8', 18, 1, '2019-12-20 13:41:50', 'TMCP', 'joseph_aquino@cal-comp.com.br', 2, NULL, 'EN', 0, '2019-12-20 14:41:49', '2019-10-30 08:41:01', '10.58.135.71');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(272, 'b8h6614', 'DIEGO HENRIQUE ARAUJO VIEIRA', 'd6a9a933c8aafc51e55ac0662b6e4d4a', 26, 1, '2019-12-20 12:48:06', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-20 13:48:02', '2019-10-30 09:09:40', '10.58.141.65');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(277, 'B7H6150', 'GARDENIA DOS SANTOS BRECHO ', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-28 21:29:06', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-12-28 22:28:53', '2019-11-20 17:15:45', '10.58.131.63');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(280, 'b7h6136', 'RONDINELE', 'c0defabd20d84b4aa72d9a092c6c270a', 27, 1, '2019-12-06 08:12:04', 'TMCP', 'marcos_andre@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-05 18:07:59', '2019-10-30 15:58:54', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(281, 'b9h6900', 'ALCILENE AROUCA', 'e35cf7b66449df565f93c607d5a81d09', 30, 1, '2019-12-13 14:59:03', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-13 15:58:57', '2019-10-30 09:13:44', '172.16.132.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(282, 'b9h6901', 'ALICE SILVA', 'ea2befea2efb3cff74e1f086f2e65bdd', 30, 1, '2019-11-05 13:27:07', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-11-05 14:26:55', '2019-11-01 14:57:06', '172.16.132.104');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(283, 'b9h6902', 'ANDREZA DANTAS', '73845411efb3d2aeb7133c4d357862b1', 30, 1, '2019-12-05 07:37:17', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-05 08:37:07', '2019-10-30 14:25:12', '172.16.132.92');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(284, 'b9h6903', 'DANIELE BARBOSA', 'c33367701511b4f6020ec61ded352059', 30, 1, '2019-12-12 08:01:25', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-12 09:00:46', '2019-10-30 09:31:19', '172.16.132.78');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(285, 'B9H6904', 'DENEIVA SOUZA', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-12-12 13:31:26', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-12 14:31:10', '2019-11-06 10:14:33', '10.58.132.53');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(286, 'B9H6906', 'FABRICIO SENA', 'c33367701511b4f6020ec61ded352059', 30, 1, '2019-11-30 07:50:50', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-11-30 08:50:32', '2019-10-30 11:18:53', '172.16.132.95');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(287, 'b9h6907', 'JESSIKA SANTOS', 'c33367701511b4f6020ec61ded352059', 30, 1, '2019-12-11 17:37:04', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-11 18:36:55', '2019-12-11 16:29:08', '172.16.132.74');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(288, 'B9H6908', 'JHONATA PEREIRA', 'e10adc3949ba59abbe56e057f20f883e', 30, 1, '2019-10-02 08:19:16', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-10-02 08:14:20', '2019-08-01 09:12:26', '10.58.149.203');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(289, 'B9H6909', 'KRIFE MACEDO', 'e10adc3949ba59abbe56e057f20f883e', 30, 1, '2019-11-20 11:58:01', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-11-20 12:57:48', '2019-08-01 09:13:51', '172.16.132.91');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(290, 'B9H6910', 'LETICIA ARAUJO', '8826a82a83879da6bf27af5dbb4d2535', 30, 1, '2019-12-19 13:46:28', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-19 14:46:24', '2019-11-06 10:00:23', '10.58.133.61');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(291, 'b9h6911', 'MARCELA BARROSO', 'be47a762edb1ac1e31812b5165884685', 30, 1, '2019-12-13 11:10:09', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-13 12:10:01', '2019-10-30 12:25:40', '172.16.132.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(292, 'B9H6912', 'MONICA COSTA', 'e10adc3949ba59abbe56e057f20f883e', 30, 2, '2019-09-30 10:16:54', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:54', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(293, 'b9h6913', 'NATANY MAGALHAES', 'b4c94d6af3a4e36f6458d4ae7a1dbae1', 30, 1, '2019-12-13 13:23:24', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-13 14:23:10', '2019-12-13 14:22:50', '172.16.132.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(294, 'B9H6914', 'RENATO MONTEIRO', '22554b0f72eb10670ffd95148420b675', 30, 1, '2019-12-18 18:07:16', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-18 19:06:53', '2019-12-17 20:45:03', '10.58.131.54');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(295, 'B9H6915', 'WALERIA NUNES', 'fcea920f7412b5da7be0cf42b8c93759', 30, 1, '2019-11-29 10:01:15', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-11-29 11:01:02', '2019-11-29 11:00:42', '172.16.132.97');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(297, 'B7H5906', 'BRUNO FLORES', 'e10adc3949ba59abbe56e057f20f883e', 30, 1, '2019-08-23 16:32:00', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-08-23 16:31:39', '2019-08-01 09:11:02', '10.58.132.94');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(298, 'wenjuan', 'Wenjuan Xu', 'e10adc3949ba59abbe56e057f20f883e', 46, 1, '2019-09-30 14:02:54', 'TMCP', 'wenjuan_xu@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:12:04', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(300, 'B9HC077', 'RAISSA LORENA', '8a51789c13b888d6aa4ee43271ce776c', 18, 1, '2019-12-27 12:22:53', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-27 13:22:33', '2019-11-06 15:13:59', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(302, 'b4h3851', 'CLEBERSON', 'e10adc3949ba59abbe56e057f20f883e', 8, 1, '2019-12-23 17:27:32', 'TMCP', 'cleiberson_lisboa@cal-comp.com.br', 1, NULL, 'PT', 0, '2019-12-23 18:27:29', '2019-11-11 16:45:18', '10.58.132.58');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(303, 'B9G6945', 'JOSÉ CARLOS BRANDÃO COLARES', '5de3ed9de13fd314bb074f7c55efbc9c', 21, 2, '2019-12-17 15:26:08', 'TMCP', 'jose_colares@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-09-26 13:59:27', '2019-08-27 13:53:18', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(304, 'B8H6451', 'JOEL FERREIRA CARVALHO', 'dcc7a642511e1fd49c9e215cbff094bd', 19, 1, '2019-12-27 10:48:53', 'TMCP', 'jfcontabilidade17@gmail.com', 0, NULL, 'PT', 0, '2019-12-27 11:48:46', '2019-11-26 11:30:21', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(307, 'B9G6946', 'MARINHO MOREIRA RODRIGUES', '94da8f746fb94e84d46addfec360e951', 26, 1, '2019-10-03 11:11:36', 'TMCP', 'marinho_r@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-10-03 11:11:33', '2019-09-17 12:24:51', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(309, 'B8H6426', 'ADRIELLY DA CONCEIÇÃO DIAS', 'e10adc3949ba59abbe56e057f20f883e', 27, 2, '2019-09-18 17:13:47', 'TMCP', NULL, 0, NULL, 'EN', 1, '2019-09-18 13:42:05', '2019-08-01 09:11:25', '0');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(311, 'B8H6481', 'SUELLEN LETICIA NASCIMENTO', 'e10adc3949ba59abbe56e057f20f883e', 27, 2, '2019-09-18 17:13:47', 'TMCP', NULL, 0, NULL, 'EN', 1, '2019-09-18 13:42:05', '2019-08-01 09:11:25', '0');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(312, 'B8H6476', 'ROSY MONTAIRO RIBEIRO', 'e10adc3949ba59abbe56e057f20f883e', 27, 2, '2019-09-18 17:13:47', 'TMCP', NULL, 0, NULL, 'EN', 1, '2019-09-18 13:42:05', '2019-08-01 09:11:25', '0');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(313, 'B1G0988', 'EDILSON', 'e10adc3949ba59abbe56e057f20f883e', 48, 1, '2019-10-03 11:09:27', 'B7GC034', NULL, 0, NULL, 'EN', 0, '2019-10-03 11:09:27', '2019-10-03 11:09:27', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(314, 'B9GC086', 'EDLA PAULA', 'e10adc3949ba59abbe56e057f20f883e', 48, 1, '2019-12-04 09:46:35', 'B7GC034', NULL, 0, NULL, 'EN', 0, '2019-12-04 10:46:03', '2019-10-03 11:09:27', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(315, 'B2G2562', 'MANOEL', 'e10adc3949ba59abbe56e057f20f883e', 48, 1, '2019-10-03 11:09:27', 'B7GC034', NULL, 0, NULL, 'EN', 0, '2019-10-03 11:09:27', '2019-10-03 11:09:27', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(316, 'B1H1028', 'NATHALIE', 'e10adc3949ba59abbe56e057f20f883e', 48, 1, '2019-10-03 11:09:27', 'B7GC034', NULL, 0, NULL, 'EN', 0, '2019-10-03 11:09:27', '2019-10-03 11:09:27', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(317, 'B6H5756', 'ELITON SANTOS', 'a5e10524dda9887ddb4efcee847e3a71', 8, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-17 15:37:08', '2019-10-23 20:35:17', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(318, 'B7H5937', 'RAFAEL', 'c33367701511b4f6020ec61ded352059', 36, 1, '2019-12-28 21:09:31', 'TMCP', 'rafael@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-28 22:09:29', '2019-10-31 14:39:48', '10.58.131.54');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(319, 'B7H5802', 'STEFANY MENEZES DOS SANTOS ', 'bc1cfdf8c4aca5929ce7d1a3ade1d86a', 26, 1, '2019-12-10 17:25:28', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-10 18:25:03', '2019-11-22 10:29:51', '10.58.145.58');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(320, 'B9H6959', 'NILTON FERREIRA RIBEIRO', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-20 13:33:36', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-20 14:33:26', '2019-11-06 09:04:53', '10.58.141.65');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(321, 'B9H6958', 'VINICIUS SABOIA DO CARMO', 'fcea920f7412b5da7be0cf42b8c93759', 26, 1, '2019-12-13 09:00:19', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-13 10:00:12', '2019-11-01 14:40:31', '10.58.141.51');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(323, 'B7H6040', 'FRANCIELIO SOUZA DA COSTA  ', '3940d87d35bdb2d90a78cbb9fa38bc16', 26, 1, '2019-12-27 15:27:51', 'TMCP', NULL, 1, NULL, 'EN', 0, '2019-12-27 16:26:29', '2019-11-05 10:22:28', '10.58.131.102');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(325, 'B9G6948', 'JAMES ABENSUR', 'e10adc3949ba59abbe56e057f20f883e', 19, 1, '2019-12-17 13:52:06', 'TMCP', 'qc_smtcs@cal-comp.com.br', 0, NULL, 'EN', 0, '2019-07-31 19:16:51', '2019-08-01 09:14:18', NULL);
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(326, 'B8H6464', 'LEONARDO OLIVEIRA SOUZA', '25a4b05ba9e28eaff3b663530947f44d', 23, 1, '2019-12-21 14:23:57', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-21 15:23:46', '2019-11-12 09:07:23', '10.58.134.66');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(329, 'B7H5829', 'MATHEUS DA SILVA MENEZES', '4515d712f66193e63445df89d7b4b889', 23, 1, '2019-12-19 16:44:29', 'TMCP', NULL, 0, NULL, 'EN', 0, '2019-12-17 09:53:26', '2019-11-08 16:03:39', '10.58.134.61');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(330, 'B990304', 'JEN ', 'ee8f1817f9532be6b81bacf3b2ec490b', 18, 1, '2019-12-02 17:40:34', 'TMCP', 'jww@calcomp.com.tw', 2, NULL, 'EN', 0, '2019-12-02 18:40:24', '2019-11-21 16:44:37', '10.58.148.56');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(331, 'B7H6259', 'VANDERLAN BATISTA DOS SANTOS', 'de2129c76d8a23c1596cd35f70052795', 8, 1, '2019-12-20 20:56:10', 'TMCP', 'vanderlan_s@cal-comp.com.br', 1, NULL, 'EN', 0, '2019-12-20 21:55:55', '2019-12-19 10:27:37', '10.58.0.50');
INSERT INTO `dqwuser` (`ID`, `EMP_NO`, `EMP_NAME`, `PASSWORD`, `PROFILE`, `STATE`, `LAST_UPD`, `UID1`, `EMAIL`, `SPECIAL_PERMISSION`, `HASH`, `LANG`, `FIRST_LOGIN`, `LAST_ACCESS`, `LAST_CHANGE_PASSWORD`, `IP`) VALUES
	(334, 'B7H6225', 'ANGEOLI SANTOS', 'e10adc3949ba59abbe56e057f20f883e', 26, 1, '2019-12-17 15:31:08', 'TMCP', NULL, 0, NULL, 'EN', 1, '2019-07-31 19:16:51', '2019-08-01 09:12:25', NULL);
/*!40000 ALTER TABLE `dqwuser` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
