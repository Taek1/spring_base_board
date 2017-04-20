-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.1.21-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win32
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- test 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- 테이블 test.banner 구조 내보내기
CREATE TABLE IF NOT EXISTS `banner` (
  `b_no` int(50) NOT NULL AUTO_INCREMENT,
  `b_name` int(50) DEFAULT NULL,
  `b_start` datetime DEFAULT NULL,
  `b_end` datetime DEFAULT NULL,
  `b_activate` int(50) DEFAULT NULL,
  `b_link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`b_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 test.banner:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- 테이블 test.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `b_no` int(50) NOT NULL AUTO_INCREMENT,
  `b_bgNo` int(50) DEFAULT NULL,
  `b_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`b_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- 테이블 데이터 test.board:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`b_no`, `b_bgNo`, `b_name`) VALUES
	(1, 1, 'testBoard1'),
	(2, 2, 'testBoard2'),
	(3, 3, 'testBoard3');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 test.board_grp 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_grp` (
  `bg_no` int(50) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`bg_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- 테이블 데이터 test.board_grp:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board_grp` DISABLE KEYS */;
INSERT INTO `board_grp` (`bg_no`, `bg_name`) VALUES
	(1, 'testGRP1'),
	(2, 'testGRP2'),
	(3, 'testGRP3');
/*!40000 ALTER TABLE `board_grp` ENABLE KEYS */;

-- 테이블 test.comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `comment` (
  `c_no` int(50) NOT NULL AUTO_INCREMENT,
  `c_pNo` int(50) NOT NULL DEFAULT '0',
  `c_content` varchar(150) NOT NULL DEFAULT '0',
  `c_uid` int(50) NOT NULL DEFAULT '0',
  `c_ip` varchar(150) NOT NULL DEFAULT '0',
  `c_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- 테이블 데이터 test.comment:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`c_no`, `c_pNo`, `c_content`, `c_uid`, `c_ip`, `c_date`) VALUES
	(1, 1, 'test1', 1, '0', '2017-04-10 15:39:04'),
	(2, 2, 'test2', 2, '0', '2017-04-10 15:39:10'),
	(3, 3, 'test3', 3, '0', '2017-04-10 15:39:19');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 테이블 test.post 구조 내보내기
CREATE TABLE IF NOT EXISTS `post` (
  `p_no` int(50) NOT NULL AUTO_INCREMENT,
  `p_title` varchar(150) NOT NULL DEFAULT '0',
  `p_content` varchar(500) NOT NULL DEFAULT '0',
  `p_bNo` int(50) NOT NULL DEFAULT '0',
  `p_uid` int(50) NOT NULL DEFAULT '0',
  `p_ip` varchar(150) NOT NULL DEFAULT '0',
  `p_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `p_activate` int(1) DEFAULT '1',
  PRIMARY KEY (`p_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- 테이블 데이터 test.post:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` (`p_no`, `p_title`, `p_content`, `p_bNo`, `p_uid`, `p_ip`, `p_date`, `p_activate`) VALUES
	(1, 'test1', 'test1', 1, 1, '0', '2017-04-10 15:38:29', 1),
	(2, 'test2', 'test2', 2, 1, '0', '2017-04-10 15:38:43', 1),
	(3, 'test3', 'test3', 3, 1, '0', '2017-04-10 15:38:53', 1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

-- 테이블 test.users 구조 내보내기
CREATE TABLE IF NOT EXISTS `users` (
  `u_no` int(50) NOT NULL AUTO_INCREMENT,
  `u_userid` varchar(50) DEFAULT NULL,
  `u_pass` varchar(150) DEFAULT NULL,
  `u_email` varchar(150) DEFAULT NULL,
  `u_perm` varchar(150) DEFAULT 'users',
  `u_registerIp` varchar(150) DEFAULT NULL,
  `u_registerDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- 테이블 데이터 test.users:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`u_no`, `u_userid`, `u_pass`, `u_email`, `u_perm`, `u_registerIp`, `u_registerDate`) VALUES
	(1, 'test', '$2a$10$RDNlNax466SZYijBcCzqRekpuR4Aj5YQNVIAHLAM7TVAP6omYERp2', 'test@test.com', 'users', NULL, '2017-04-10 15:40:37'),
	(2, '222', '3333', '222@22', 'users', '0:0:0:0:0:0:0:1', '2017-04-18 17:14:41'),
	(3, '11', '$2a$10$HhVIANhRNYcLRhelX1.rl.HMuWBB1S5YsPjw44KLKdZAqsevj7EVe', '22@2', 'users', '0:0:0:0:0:0:0:1', '2017-04-18 17:19:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
