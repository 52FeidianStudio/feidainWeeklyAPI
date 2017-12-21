-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: feidianweekly
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
  `blog_tags` varchar(1000) NOT NULL COMMENT '博客标签',
  `blog_catalog` varchar(100) NOT NULL COMMENT '博客所属目录',
  `blog_comments` varchar(1000) DEFAULT NULL COMMENT '博客评论',
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
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `catalog_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '目录id',
  `catalog_name` varchar(100) NOT NULL COMMENT '目录名',
  `catalog_status` int(1) DEFAULT '1' COMMENT '状态，是否有效',
  `catalog_show` int(1) DEFAULT '1' COMMENT '显示，是否显示在导航中',
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
  `weekly_contents` varchar(1000) NOT NULL COMMENT '周刊目录',
  `weekly_blogs` varchar(1000) NOT NULL COMMENT '周刊博客',
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


create table `comments` (

) ENGINE=InnoDB DEFAULT CHARSET=utf8;



create table `blog_tags` (

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table `blog_weekly` (

) ENGINE=InnoDB DEFAULT CHARSET=utf8;



create table `blog_catalog` (

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table `blog_comments` (

) ENGINE=InnoDB DEFAULT CHARSET=utf8;
