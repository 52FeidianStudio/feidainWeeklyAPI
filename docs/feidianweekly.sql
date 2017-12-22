-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: feidianweekly
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `blog_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '博客id',
  `blog_title` varchar(100) NOT NULL COMMENT '博客标题',
  `blog_author` varchar(100) NOT NULL COMMENT '博客作者',
  `blog_article` text NOT NULL COMMENT '博客正文',
  `blog_date` date NOT NULL COMMENT '博客日期',
  `blog_viewtimes` int(10) DEFAULT '0' COMMENT '博客浏览次数',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_catalog`
--

DROP TABLE IF EXISTS `blog_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_catalog` (
  `blog_catalog_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `blog_id` int(10) NOT NULL COMMENT '博客id',
  `catalog_id` int(10) NOT NULL COMMENT '目录id',
  PRIMARY KEY (`blog_catalog_id`),
  KEY `fk_blog_catalog_blog` (`blog_id`),
  KEY `fk_blog_catalog_catalog` (`catalog_id`),
  CONSTRAINT `fk_blog_catalog_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`),
  CONSTRAINT `fk_blog_catalog_catalog` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`catalog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_catalog`
--

LOCK TABLES `blog_catalog` WRITE;
/*!40000 ALTER TABLE `blog_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `blog_comment_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `blog_id` int(10) NOT NULL COMMENT '博客id',
  `comment_id` int(10) NOT NULL COMMENT '评论id',
  PRIMARY KEY (`blog_comment_id`),
  KEY `fk_blog_comment_blog` (`blog_id`),
  KEY `fk_blog_comment_comment` (`comment_id`),
  CONSTRAINT `fk_blog_comment_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`),
  CONSTRAINT `fk_blog_comment_comment` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `blog_tags_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `blog_id` int(10) NOT NULL COMMENT '博客id',
  `tag_id` int(10) NOT NULL COMMENT '标签id',
  PRIMARY KEY (`blog_tags_id`),
  KEY `fk_blog_tag_blog` (`blog_id`),
  KEY `fk_blog_tag_tag` (`tag_id`),
  CONSTRAINT `fk_blog_tag_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`),
  CONSTRAINT `fk_blog_tag_tag` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `catalog_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '目录id',
  `catalog_name` varchar(100) NOT NULL COMMENT '目录名',
  `catalog_status` int(1) DEFAULT '1' COMMENT '状态',
  `catalog_show` int(1) DEFAULT '0' COMMENT '显示',
  PRIMARY KEY (`catalog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `comment_author` varchar(100) NOT NULL COMMENT '评论人',
  `comment_time` datetime NOT NULL COMMENT '评论时间',
  `comment_type` int(10) NOT NULL COMMENT '评论类型',
  `comment_target` varchar(1000) DEFAULT NULL COMMENT '评论对象',
  `comment_content` varchar(1000) NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tag_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `tag_name` varchar(100) NOT NULL COMMENT '标签名',
  `tag_desc` varchar(1000) DEFAULT NULL COMMENT '标签描述',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wcontent`
--

DROP TABLE IF EXISTS `wcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wcontent` (
  `wcontent_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '周刊目录id',
  `wcontent_name` varchar(100) NOT NULL COMMENT '周刊目录名称',
  PRIMARY KEY (`wcontent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wcontent`
--

LOCK TABLES `wcontent` WRITE;
/*!40000 ALTER TABLE `wcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `wcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly`
--

DROP TABLE IF EXISTS `weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly` (
  `weekly_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '周刊id',
  `weekly_name` int(10) NOT NULL COMMENT '周刊名称',
  `weekly_editor` varchar(100) NOT NULL COMMENT '周刊编辑',
  `weekly_authors` varchar(1000) NOT NULL COMMENT '周刊文章作者',
  `weekly_date` date NOT NULL COMMENT '周刊发布日期',
  `weekly_guide` varchar(1000) NOT NULL COMMENT '周刊导言',
  `weekly_img` varchar(1000) NOT NULL COMMENT '周刊图片',
  PRIMARY KEY (`weekly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly`
--

LOCK TABLES `weekly` WRITE;
/*!40000 ALTER TABLE `weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_blog`
--

DROP TABLE IF EXISTS `weekly_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly_blog` (
  `weekly_blog_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `blog_id` int(10) NOT NULL COMMENT '博客id',
  `weekly_id` int(10) NOT NULL COMMENT '周刊id',
  PRIMARY KEY (`weekly_blog_id`),
  KEY `fk_weekly_blog_blog` (`blog_id`),
  KEY `fk_weekly_blog_weekly` (`weekly_id`),
  CONSTRAINT `fk_weekly_blog_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`),
  CONSTRAINT `fk_weekly_blog_weekly` FOREIGN KEY (`weekly_id`) REFERENCES `weekly` (`weekly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_blog`
--

LOCK TABLES `weekly_blog` WRITE;
/*!40000 ALTER TABLE `weekly_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_wcontent`
--

DROP TABLE IF EXISTS `weekly_wcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly_wcontent` (
  `weekly_wcontent_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `weekly_id` int(10) NOT NULL COMMENT '周刊id',
  `wcontent_id` int(10) NOT NULL COMMENT '目录id',
  PRIMARY KEY (`weekly_wcontent_id`),
  KEY `fk_weekly_wcontent_wcontent` (`wcontent_id`),
  KEY `fk_weekly_wcontent_weekly` (`weekly_id`),
  CONSTRAINT `fk_weekly_wcontent_wcontent` FOREIGN KEY (`wcontent_id`) REFERENCES `wcontent` (`wcontent_id`),
  CONSTRAINT `fk_weekly_wcontent_weekly` FOREIGN KEY (`weekly_id`) REFERENCES `weekly` (`weekly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_wcontent`
--

LOCK TABLES `weekly_wcontent` WRITE;
/*!40000 ALTER TABLE `weekly_wcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly_wcontent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-22 21:06:47
