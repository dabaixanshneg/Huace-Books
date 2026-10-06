-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookshelf`
--

DROP TABLE IF EXISTS `bookshelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelf` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `book_id` bigint DEFAULT NULL COMMENT '书本id',
  `pre_content_id` varchar(50) DEFAULT NULL COMMENT '书本编号',
  `cat_name` varchar(50) DEFAULT NULL COMMENT '类型',
  `cat_id` int DEFAULT NULL COMMENT '类型id',
  `book_name` varchar(200) DEFAULT NULL COMMENT '书本名',
  `last_index_name` varchar(200) DEFAULT NULL COMMENT '最新章节名',
  `last_index_update_time` varchar(30) DEFAULT NULL COMMENT '最新更新时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='书架数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelf`
--

LOCK TABLES `bookshelf` WRITE;
/*!40000 ALTER TABLE `bookshelf` DISABLE KEYS */;
INSERT INTO `bookshelf` VALUES (1,30365,'2106886710725025792','玄幻奇幻',1,'重生之我在蛊界卖钩子','仙道杀招','10/05 07:18:31','2026-10-06 21:15:33'),(2,118,'83','科幻灵异',5,'我的123反派生涯','第六章　进大牢了','08/08 17:43:30','2026-10-06 21:15:33'),(3,261,'980','其他类型',1,'成吉思汗的动物军团','物产丰富兴安岭 银鼠大闹鹿鸣滩3','08/08 17:43:30','2026-10-06 21:15:33'),(4,29666,'2035948233255092224','玄幻奇幻',1,'全球气温','1','03/23 13:14:20','2026-10-06 21:15:33'),(5,2415,'1781946400391380992','玄幻奇幻',1,'汉武帝传','新章节标题1-2026-08-24-134400','08/24 13:44:13','2026-10-06 21:15:33'),(6,3317,'1877261288783011840','玄幻奇幻',1,'李泽宁','新章节编号001','02/11 10:09:44','2026-10-06 21:15:33'),(7,214,'164','其他类型',1,'他太太才是真大佬','第20章 一般般','08/08 17:43:30','2026-10-06 21:15:33'),(8,224,'1871','玄幻魔法',4,'开局得到如来舍利','第二十章 暗劲','08/08 17:43:30','2026-10-06 21:15:33'),(9,134,'1557','武侠修真',3,'云上夕轮','第二十章 倚诗栏亭','08/08 17:43:30','2026-10-06 21:15:33'),(10,171,'1832','其他类型',1,'神医毒妃帅炸了','020 覆巢之下无完卵','08/08 17:43:30','2026-10-06 21:15:33');
/*!40000 ALTER TABLE `bookshelf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybookshelf`
--

DROP TABLE IF EXISTS `mybookshelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybookshelf` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `book_id` bigint DEFAULT NULL COMMENT '书本id',
  `pre_content_id` varchar(50) DEFAULT NULL COMMENT '书本编号',
  `cat_name` varchar(50) DEFAULT NULL COMMENT '类型',
  `cat_id` int DEFAULT NULL COMMENT '类型id',
  `book_name` varchar(200) DEFAULT NULL COMMENT '书本名',
  `last_index_name` varchar(200) DEFAULT NULL COMMENT '最新章节名',
  `last_index_update_time` varchar(30) DEFAULT NULL COMMENT '最新更新时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='我的书架数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybookshelf`
--

LOCK TABLES `mybookshelf` WRITE;
/*!40000 ALTER TABLE `mybookshelf` DISABLE KEYS */;
INSERT INTO `mybookshelf` VALUES (1,30310,'2105167216088555520','女生频道',7,'自动化验证书_0930131554','第一章 新的开始','09/30 13:15:59','2026-10-06 21:11:43'),(2,30316,'2105167216088555520','女生频道',7,'自动化验证书_0930132546','第一章 新的开始','09/30 13:25:51','2026-10-06 21:11:43'),(3,30365,'2106886710725025792','玄幻奇幻',1,'重生之我在蛊界卖钩子','仙道杀招','10/05 07:18:31','2026-10-06 21:11:43'),(4,121,'2063','其他类型',1,'九唳','第20章 幻境','08/08 17:43:30','2026-10-06 21:11:43'),(5,2415,'1781946400391380992','玄幻奇幻',1,'汉武帝传','新章节标题1-2026-08-24-134400','08/24 13:44:13','2026-10-06 21:11:43'),(6,3317,'1877261288783011840','玄幻奇幻',1,'李泽宁','新章节编号001','02/11 10:09:44','2026-10-06 21:11:43'),(7,150,'324','网游动漫',6,'某御主的型月事件簿','第二十章 交易','08/08 17:43:30','2026-10-06 21:11:43'),(8,141,'440','网游动漫',6,'综漫之咖啡店主','第二十章：坑','08/08 17:43:30','2026-10-06 21:11:43'),(9,133,'22','武侠修真',3,'史上最狂老祖','第20章 画符寻女妖精！','08/08 17:43:30','2026-10-06 21:11:43'),(10,4990,'1960676427925868544','玄幻奇幻',1,'重生后我不装了','02章 莫欺少年穷','08/27 20:11:35','2026-10-06 21:11:43');
/*!40000 ALTER TABLE `mybookshelf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-06 21:25:58
