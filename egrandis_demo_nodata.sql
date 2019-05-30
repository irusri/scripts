/*
 Navicat Premium Data Transfer

 Source Server         : Spruce
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : spruce.plantphys.umu.se
 Source Database       : egrandis_demo

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : utf-8

 Date: 05/30/2019 18:02:41 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Expression`
-- ----------------------------
DROP TABLE IF EXISTS `Expression`;
CREATE TABLE `Expression` (
  `id` varchar(255) DEFAULT NULL,
  `sample` varchar(255) DEFAULT NULL,
  `log2` varchar(255) DEFAULT NULL,
  `rmd` varchar(255) DEFAULT NULL,
  `log2fc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `defaultgenebaskets`
-- ----------------------------
DROP TABLE IF EXISTS `defaultgenebaskets`;
CREATE TABLE `defaultgenebaskets` (
  `gene_basket_id` int(10) NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`gene_basket_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `expression_tissues`
-- ----------------------------
DROP TABLE IF EXISTS `expression_tissues`;
CREATE TABLE `expression_tissues` (
  `id` varchar(255) DEFAULT NULL,
  `sample` varchar(255) DEFAULT NULL,
  `log2` varchar(255) DEFAULT NULL,
  `rmd` varchar(255) DEFAULT NULL,
  `log2fc` varchar(255) DEFAULT NULL,
  `log2dif` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `gene_atg`
-- ----------------------------
DROP TABLE IF EXISTS `gene_atg`;
CREATE TABLE `gene_atg` (
  `gene_id` varchar(255) NOT NULL,
  `atg_description` varchar(255) DEFAULT NULL,
  `atg_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `transcript_id` (`gene_id`),
  KEY `atg_id` (`atg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_go`
-- ----------------------------
DROP TABLE IF EXISTS `gene_go`;
CREATE TABLE `gene_go` (
  `gene_id` varchar(255) NOT NULL,
  `go_description` varchar(255) DEFAULT NULL,
  `go_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `transcript_id` (`gene_id`),
  KEY `atg_id` (`go_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_kegg`
-- ----------------------------
DROP TABLE IF EXISTS `gene_kegg`;
CREATE TABLE `gene_kegg` (
  `gene_id` varchar(255) NOT NULL,
  `kegg_description` varchar(255) DEFAULT NULL,
  `kegg_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `transcript_id` (`gene_id`),
  KEY `atg_id` (`kegg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_pfam`
-- ----------------------------
DROP TABLE IF EXISTS `gene_pfam`;
CREATE TABLE `gene_pfam` (
  `gene_id` varchar(255) NOT NULL,
  `pfam_description` varchar(255) DEFAULT NULL,
  `pfam_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `transcript_id` (`gene_id`),
  KEY `atg_id` (`pfam_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `genebaskets`
-- ----------------------------
DROP TABLE IF EXISTS `genebaskets`;
CREATE TABLE `genebaskets` (
  `gene_basket_id` int(10) NOT NULL AUTO_INCREMENT,
  `gene_basket_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `harga` bigint(16) NOT NULL,
  `genelist` mediumtext COLLATE latin1_general_ci,
  `ip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`gene_basket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
--  Table structure for `sequence_color`
-- ----------------------------
DROP TABLE IF EXISTS `sequence_color`;
CREATE TABLE `sequence_color` (
  `id` varchar(255) DEFAULT NULL,
  `scaffold` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `sequence_color_copy`
-- ----------------------------
DROP TABLE IF EXISTS `sequence_color_copy`;
CREATE TABLE `sequence_color_copy` (
  `id` varchar(255) DEFAULT NULL,
  `scaffold` varchar(255) DEFAULT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `share_table`
-- ----------------------------
DROP TABLE IF EXISTS `share_table`;
CREATE TABLE `share_table` (
  `gene_basket_id` int(10) NOT NULL AUTO_INCREMENT,
  `gene_basket_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `harga` bigint(16) NOT NULL,
  `genelist` mediumtext COLLATE latin1_general_ci,
  `ip` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `randid` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`gene_basket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
--  Table structure for `transcript_atg`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_atg`;
CREATE TABLE `transcript_atg` (
  `transcript_id` varchar(255) NOT NULL,
  `atg_id` varchar(24) NOT NULL,
  `transcript_i` mediumint(11) unsigned NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transcript_i`,`transcript_id`),
  KEY `transcript_id` (`transcript_id`),
  KEY `atg_id` (`atg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `transcript_info`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_info`;
CREATE TABLE `transcript_info` (
  `transcript_id` varchar(255) NOT NULL DEFAULT '',
  `gene_id` varchar(24) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `chromosome_name` varchar(16) NOT NULL,
  `strand` varchar(2) NOT NULL,
  `gene_start` int(16) unsigned NOT NULL,
  `gene_end` int(16) unsigned NOT NULL,
  `pac_id` varchar(20) DEFAULT NULL,
  `peptide_name` varchar(50) DEFAULT NULL,
  `transcript_start` int(16) unsigned NOT NULL,
  `transcript_end` int(16) unsigned NOT NULL,
  `transcript_i` mediumint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gene_i` mediumint(20) DEFAULT NULL,
  PRIMARY KEY (`transcript_i`,`transcript_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46281 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `transcript_potri`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_potri`;
CREATE TABLE `transcript_potri` (
  `transcript_id` varchar(255) NOT NULL,
  `potri_id` varchar(24) NOT NULL,
  `transcript_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`transcript_i`,`transcript_id`),
  KEY `transcript_id` (`transcript_id`),
  KEY `potri_id` (`potri_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

SET FOREIGN_KEY_CHECKS = 1;
