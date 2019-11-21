-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.49


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema disksystem
--

CREATE DATABASE IF NOT EXISTS disksystem;
USE disksystem;

--
-- Definition of table `t_doc`
--

DROP TABLE IF EXISTS `t_doc`;
CREATE TABLE `t_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `filename` varchar(200) NOT NULL COMMENT '文件名称',
  `savepath` varchar(100) NOT NULL COMMENT '存储路径',
  `filesize` mediumtext COMMENT '大小（字节）',
  `catalog` varchar(50) DEFAULT NULL COMMENT '分类',
  `filetype` varchar(50) DEFAULT NULL COMMENT '文件类型',
  `memo` varchar(500) DEFAULT NULL COMMENT '文件介绍',
  `isshare` varchar(10) NOT NULL COMMENT '是否共享',
  `uploaddate` varchar(50) DEFAULT NULL COMMENT '上传时间',
  `count` int(11) NOT NULL COMMENT '下载次数',
  `username` varchar(50) NOT NULL COMMENT '外键，上传者',
  PRIMARY KEY (`id`),
  KEY `user_doc` (`username`),
  CONSTRAINT `user_doc` FOREIGN KEY (`username`) REFERENCES `t_user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_doc`
--

/*!40000 ALTER TABLE `t_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doc` ENABLE KEYS */;


--
-- Definition of table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `username` varchar(50) NOT NULL COMMENT '用户',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `tel` varchar(12) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_user`
--

/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
