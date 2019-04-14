/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP SCHEMA IF EXISTS multidim;
CREATE SCHEMA multidim;
USE multidim;
SET AUTOCOMMIT=0;

DROP TABLE IF EXISTS `country_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Name` CHAR(64) NOT NULL DEFAULT '',
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `6_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `6_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`PDI` INT(11),
`IDV` INT(11),
`MAS` INT(11),
`UAI` INT(11),
`ltowvs` INT(11),
`IVR` INT(11),
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `GovernmentEffectiveness_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GovernmentEffectiveness_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`GovernmentEffectiveness` FLOAT,
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `GovernmentEffectiveness_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GovernmentEffectiveness_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`GovernmentEffectiveness` FLOAT,
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `PoliticalStability_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PoliticalStability_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`PoliticalStability` FLOAT,
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `RegulatoryQuality_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegulatoryQuality_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`RegulatoryQuality` FLOAT,
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `RuleOfLaw_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RuleOfLaw_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`RuleOfLaw` FLOAT,
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `Voice_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Voice_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`Voice` FLOAT,
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `PIB_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PIB_dim`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`PIB` FLOAT,
PRIMARY KEY (`ID`));

DROP TABLE IF EXISTS `Fait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fait`(
`ID` INT(11) NOT NULL AUTO_INCREMENT,
`Country` CHAR(64) NOT NULL DEFAULT '',
`GovernmentEffectiveness` FLOAT,
`PoliticalStability` FLOAT,
`RegulatoryQuality` FLOAT,
`RuleOfLaw` FLOAT,
`Voice` FLOAT,
`PIB` FLOAT,
`PDI` INT(11),
`IDV` INT(11),
`MAS` INT(11),
`UAI` INT(11),
`ltowvs` INT(11),
`IVR` INT(11),
PRIMARY KEY (`ID`));



