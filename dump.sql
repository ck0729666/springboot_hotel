-- MySQL dump 10.13  Distrib 8.0.15, for osx10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `in_room_info`
--

DROP TABLE IF EXISTS `in_room_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `in_room_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `customer_name` varchar(40) DEFAULT NULL COMMENT '客人姓名',
  `gender` varchar(2) DEFAULT '1' COMMENT '性别(1男 0女)',
  `is_vip` varchar(2) DEFAULT '0' COMMENT '0普通，1vip',
  `idcard` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `money` float(10,2) DEFAULT NULL COMMENT '押金',
  `create_date` datetime DEFAULT NULL COMMENT '入住时间',
  `room_id` bigint(20) DEFAULT NULL COMMENT '房间表主键',
  `status` varchar(2) DEFAULT '1' COMMENT '1：显示 0：隐藏',
  `out_room_status` varchar(2) DEFAULT '0' COMMENT '退房状态： 0未退房 1已经退房',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_room_info`
--

LOCK TABLES `in_room_info` WRITE;
/*!40000 ALTER TABLE `in_room_info` DISABLE KEYS */;
INSERT INTO `in_room_info` VALUES (1,'赵子龙','1','0','411311199001015599','13012345678',200.00,'2018-09-06 20:19:03',1,'0','0'),(2,'张飞','1','0','411311199001015588','13812345678',249.00,'2018-09-05 20:20:01',2,'0','0'),(3,'刘备','1','0','411311199001015577','15912345612',200.00,'2018-09-04 20:20:32',3,'0','0'),(4,'诸葛亮','1','0','411311199001015599','15912345611',150.00,'2018-09-06 20:20:59',4,'0','0'),(5,'曹操','1','0','411311199001015566','13912345622',200.00,'2018-09-03 20:21:28',5,'0','0'),(10,'刘华强','1','1','122121212121212121','15922053891',666.00,'2019-05-13 00:00:00',6,'1','0'),(11,'杰杰','1','1','4113111990010155789','15912345612',666.00,'2018-09-04 20:20:32',7,'1','0');
/*!40000 ALTER TABLE `in_room_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_num` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `order_money` float(10,2) DEFAULT NULL COMMENT '订单总价',
  `order_status` varchar(2) DEFAULT '0' COMMENT '0未结算，1已结算',
  `room_id` bigint(20) DEFAULT NULL COMMENT '房间主键',
  `create_date` datetime DEFAULT NULL COMMENT '下单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'f936eb09-31b3-4d19-b7a6-9ed3be1e749a',700.00,'0',2,'2019-05-10 17:20:32'),(2,'0265cd82-97ec-40a8-a8e2-3338458b2d1f',700.00,'0',3,'2019-05-10 17:24:50'),(8,'9e1a5632-4651-4ccd-948e-0910e1f48cfe',9999.00,'0',1,'2019-05-10 18:18:18'),(9,'2ab07d71-93b6-4146-90f2-8d42e90a460f',7777.00,'0',1,'2019-05-10 18:21:52'),(10,'73c26482-2b18-4c4c-a368-d5d5919657a4',50009.00,'0',2,'2019-05-10 19:04:02'),(11,'20361920-b2d5-4b6c-8b24-b2d265c4f154',1.00,'0',2,'2019-05-10 19:08:19'),(12,'5968660b-cd17-446f-bfbf-979190e4dc12',11.00,'0',2,'2019-05-10 19:47:38'),(13,'0e60a7f7-89e8-4267-b242-e1f866d39f35',23.00,'1',3,'2019-05-10 19:49:33'),(14,'e3ab8740-64dd-472b-9b1e-6da8c9bb37f9',999.00,'1',3,'2019-05-10 19:50:19'),(15,'cbae1e5b-93fc-4417-a8c2-d8b053ae663b',1.00,'0',2,'2019-05-10 19:59:10'),(16,'e11bdd04-f54b-49a4-be48-3deeba041c56',1.00,'1',3,'2019-05-10 20:01:01'),(17,'8220591e-764c-41c2-8a7e-b5b5e5f95dc9',12.00,'0',2,'2019-05-10 22:18:04'),(18,'e9c46efa-b1ea-400b-86e5-a79fb717d601',666.00,'1',5,'2019-05-10 22:45:54'),(19,'ffb723dc-9b57-43bc-a521-cb434231c76b',999.00,'0',5,'2019-05-10 22:46:46'),(21,'f936eb09-31b3-4d19-b7a6-9ed3be1e749a',400.00,'0',4,'2019-05-10 17:20:32'),(22,'939dd283-0d1e-4f14-964f-55ebdd14bb55',88898.00,'1',2,'2019-06-09 23:38:01'),(23,'bfb52c4e-58ca-4d50-946a-0e6240e82ea0',8889.00,'0',6,'2019-06-09 23:38:28');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `room_type_name` varchar(20) DEFAULT NULL COMMENT '房间类型名',
  `room_price` float(10,2) DEFAULT NULL COMMENT '房间的单价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'单人间',140.00),(2,'双人间',180.00),(3,'豪华间',280.00),(4,'总统套房',500.00),(5,'钟点房',80.00),(6,'单人间带窗',150.00),(8,'双人床带窗',300.00),(9,'三人床',300.00),(10,'四人间',300.00);
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rooms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `room_num` varchar(10) DEFAULT NULL COMMENT '房间编号',
  `room_status` varchar(2) DEFAULT '0' COMMENT '房间的状态(0空闲，1已入住，2打扫)',
  `room_type_id` bigint(20) DEFAULT NULL COMMENT '房间类型主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'8201','2',1),(2,'8202','1',1),(3,'8203','1',1),(4,'8204','2',2),(5,'8205','1',2),(6,'8206','1',3),(7,'8207','1',3),(8,'8208','0',2),(9,'8209','0',4),(10,'8210','0',1),(11,'8211','0',4),(12,'8218','0',2),(13,'8219','0',1);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `stuName` varchar(20) DEFAULT NULL COMMENT '学生名字',
  `subject` varchar(20) DEFAULT NULL COMMENT '学习科目',
  `score` float(10,1) DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'缓缓一失去','java',NULL),(2,'缓缓一失去','java',59.0),(3,'缓缓一失去','java',59.0),(5,NULL,NULL,NULL),(6,NULL,NULL,NULL),(7,NULL,NULL,NULL),(10,NULL,NULL,NULL),(11,'guanxi','yuwen',66.0),(12,'chenk','shuxue',66.0);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_authority`
--

DROP TABLE IF EXISTS `system_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `system_authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `authority_name` varchar(20) DEFAULT NULL COMMENT '权限名',
  `authority_url` varchar(200) DEFAULT '#' COMMENT '权限跳转地址',
  `parent` bigint(20) DEFAULT '0' COMMENT '记住上级的主键，0为一级节点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_authority`
--

LOCK TABLES `system_authority` WRITE;
/*!40000 ALTER TABLE `system_authority` DISABLE KEYS */;
INSERT INTO `system_authority` VALUES (1,'入住管理','#',0),(2,'订单管理','#',0),(3,'会员管理','#',0),(4,'客房管理','#',0),(5,'用户管理','#',0),(6,'客人意见','#',0),(7,'入住信息查询','/getInRoomInfo.do',1),(8,'入住信息添加','/checkIn.do',1),(9,'消费记录','#',1),(10,'结账退房','/jieZhang.do',1),(11,'订单信息','/getAllOrders.do',2),(12,'订单添加','/toAddOrder.do',2),(13,'会员信息查询','/getAllVip.do',3),(14,'会员信息管理','#',3),(15,'添加会员','/pages/admin/vip/addvip.jsp',3),(16,'客房信息查询','/getHouseInfo.do',4),(17,'客房信息管理','/getHouseManage.do',4),(18,'添加客房','/pages/admin/room/addRoom.jsp',4),(19,'用户信息查询','/getUserInfo.do',5),(20,'用户信息管理','#',5),(21,'添加用户','/toAddUser.do',5),(22,'客人意见','#',6);
/*!40000 ALTER TABLE `system_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `system_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(40) DEFAULT NULL COMMENT '账号',
  `pwd` varchar(40) DEFAULT NULL COMMENT '密码',
  `create_date` datetime DEFAULT NULL,
  `use_status` varchar(2) DEFAULT '1' COMMENT '启用状态：1启用 0禁用',
  `is_admin` varchar(2) DEFAULT '0' COMMENT '1超级管理员 0普通管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user`
--

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` VALUES (1,'admin','d5d23b080c52f070e3dc61821f325c7d','2019-05-06 10:02:31','1','0'),(2,'bigbird','d5d23b080c52f070e3dc61821f325c7d','2017-10-05 10:02:39','1','1'),(4,'lock6','d95b512601d65ad943ddc88c1bfbc6ff','2019-05-20 17:12:55','1','0'),(5,'lock66','d95b512601d65ad943ddc88c1bfbc6ff','2019-05-20 17:12:55','1','0');
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uName` varchar(40) DEFAULT NULL COMMENT ' 用户名',
  `pwd` varchar(40) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'王二麻子','123'),(2,'李四','123');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authority`
--

DROP TABLE IF EXISTS `user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_authority` (
  `user_id` bigint(20) NOT NULL COMMENT '系统用户主键',
  `authority_id` bigint(20) DEFAULT NULL COMMENT '权限主键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authority`
--

LOCK TABLES `user_authority` WRITE;
/*!40000 ALTER TABLE `user_authority` DISABLE KEYS */;
INSERT INTO `user_authority` VALUES (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(3,1),(3,2),(3,3),(3,4),(3,6),(3,7),(3,11),(3,13),(3,16),(3,22),(4,1),(4,2),(4,3),(4,4),(4,6),(4,7),(4,11),(4,13),(4,16),(4,22);
/*!40000 ALTER TABLE `user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vip_num` varchar(50) DEFAULT NULL COMMENT '会员卡编号',
  `vip_rate` float(2,1) DEFAULT NULL COMMENT '1~9折',
  `idcard` varchar(20) DEFAULT NULL COMMENT '会员身份证',
  `create_date` datetime DEFAULT NULL COMMENT '会员办理日期',
  `phone` varchar(20) DEFAULT NULL,
  `customer_name` varchar(40) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip`
--

LOCK TABLES `vip` WRITE;
/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
INSERT INTO `vip` VALUES (1,'880888',0.9,'123456789123456781','2018-10-25 10:23:47','15912345678','王二麻子','1'),(2,'99999',0.9,'123456789123456780','2018-10-25 10:25:37','15912345612','丁鹏','0'),(9,'1234567',0.8,'120113199806875432','2018-10-25 10:25:37','18687651111','楚瑜','1'),(10,'52f66a7b-e4f7-410f-8fca-40a445d8ef95',0.9,'120114199507295617','2019-05-19 19:18:55','15022056898','厨茗','1'),(11,'bbbf5b97-564d-437b-9259-d9d48c6e93bb',0.8,'4113111990010155789','2019-05-19 19:21:41','15922053891','楚瑜','0'),(12,'06c063c4-d68c-49d8-8ad2-92a889586686',0.9,'122121212121212678','2019-05-19 19:50:02','15922053891','楼数为','1'),(13,'dbd7b35d-0df8-4e3d-88a4-db3420fa8e4f',0.9,'122121212121212347','2019-06-10 21:34:07','15922053891','楚玉玉','0'),(14,'9478fd1b-8488-4b28-84ce-61ed47801228',0.9,'122121212121212999','2019-06-10 22:58:07','15922053999','冠ke','1');
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-15 11:01:11
