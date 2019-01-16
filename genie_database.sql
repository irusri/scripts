/*
 Navicat Premium Data Transfer

 Source Server         : Crick_copy
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 130.239.12.240
 Source Database       : popgenie_potri_v31

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : utf-8

 Date: 01/16/2019 10:49:55 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `correlation_affy_clr`
-- ----------------------------
DROP TABLE IF EXISTS `correlation_affy_clr`;
CREATE TABLE `correlation_affy_clr` (
  `gene_i1` int(11) NOT NULL,
  `gene_i2` int(11) NOT NULL,
  `corr1` double(16,10) DEFAULT NULL,
  `gene_id1` varchar(255) DEFAULT NULL,
  `gene_id2` varchar(255) DEFAULT NULL,
  `edg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`edg_id`),
  KEY `gene_i1` (`gene_i1`) USING BTREE,
  KEY `gene_i2` (`gene_i2`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11928904 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `correlation_affy_clr_copy`
-- ----------------------------
DROP TABLE IF EXISTS `correlation_affy_clr_copy`;
CREATE TABLE `correlation_affy_clr_copy` (
  `gene_i1` int(11) DEFAULT NULL,
  `gene_i2` int(11) DEFAULT NULL,
  `corr1` double(16,10) DEFAULT NULL,
  `gene_id1` varchar(255) DEFAULT NULL,
  `gene_id2` varchar(255) DEFAULT NULL,
  `edg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`edg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11928904 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `correlation_exatlas_clr`
-- ----------------------------
DROP TABLE IF EXISTS `correlation_exatlas_clr`;
CREATE TABLE `correlation_exatlas_clr` (
  `gene_i1` int(11) NOT NULL,
  `gene_i2` int(11) NOT NULL,
  `corr1` double(16,10) DEFAULT NULL,
  `gene_id1` varchar(255) DEFAULT NULL,
  `gene_id2` varchar(255) DEFAULT NULL,
  `edg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`edg_id`),
  KEY `gene_i1` (`gene_i1`) USING BTREE,
  KEY `gene_i2` (`gene_i2`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13499518 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `correlation_expatlas_clr_copy`
-- ----------------------------
DROP TABLE IF EXISTS `correlation_expatlas_clr_copy`;
CREATE TABLE `correlation_expatlas_clr_copy` (
  `gene_i1` int(11) DEFAULT NULL,
  `gene_i2` int(11) DEFAULT NULL,
  `corr1` double(16,10) DEFAULT NULL,
  `gene_id1` varchar(255) DEFAULT NULL,
  `gene_id2` varchar(255) DEFAULT NULL,
  `edg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`edg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13499518 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `correlation_wood_clr`
-- ----------------------------
DROP TABLE IF EXISTS `correlation_wood_clr`;
CREATE TABLE `correlation_wood_clr` (
  `gene_i1` int(11) NOT NULL,
  `gene_i2` int(11) NOT NULL,
  `corr1` double(16,10) DEFAULT NULL,
  `gene_id1` varchar(255) DEFAULT NULL,
  `gene_id2` varchar(255) DEFAULT NULL,
  `edg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`edg_id`),
  KEY `gene_i1` (`gene_i1`) USING BTREE,
  KEY `gene_i2` (`gene_i2`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=509379 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `correlation_wood_clr_copy`
-- ----------------------------
DROP TABLE IF EXISTS `correlation_wood_clr_copy`;
CREATE TABLE `correlation_wood_clr_copy` (
  `gene_i1` int(11) DEFAULT NULL,
  `gene_i2` int(11) DEFAULT NULL,
  `corr1` double(16,10) DEFAULT NULL,
  `gene_id1` varchar(255) DEFAULT NULL,
  `gene_id2` varchar(255) DEFAULT NULL,
  `edg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`edg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=509379 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `eplant_asp201_2014_april`
-- ----------------------------
DROP TABLE IF EXISTS `eplant_asp201_2014_april`;
CREATE TABLE `eplant_asp201_2014_april` (
  `id` varchar(255) DEFAULT '',
  `sample` varchar(255) DEFAULT '',
  `log2` varchar(255) DEFAULT NULL,
  `rmd` varchar(255) DEFAULT NULL,
  `log2fc` varchar(255) DEFAULT NULL,
  `num` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=992041 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `eplant_log`
-- ----------------------------
DROP TABLE IF EXISTS `eplant_log`;
CREATE TABLE `eplant_log` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `sample` varchar(255) NOT NULL DEFAULT '',
  `log2` varchar(255) DEFAULT NULL,
  `rmd` varchar(255) DEFAULT NULL,
  `log2fc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`sample`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `eplant_sex_new`
-- ----------------------------
DROP TABLE IF EXISTS `eplant_sex_new`;
CREATE TABLE `eplant_sex_new` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `sample` varchar(255) NOT NULL DEFAULT '',
  `log2` varchar(255) DEFAULT NULL,
  `rmd` varchar(255) DEFAULT NULL,
  `log2fc` varchar(255) DEFAULT NULL,
  `num` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`num`,`id`,`sample`)
) ENGINE=MyISAM AUTO_INCREMENT=826701 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `experiment`
-- ----------------------------
DROP TABLE IF EXISTS `experiment`;
CREATE TABLE `experiment` (
  `experiment_id` int(11) DEFAULT NULL,
  `experiment_name` varchar(255) DEFAULT NULL,
  `experiment_value` varchar(255) DEFAULT NULL,
  `experiment_table` varchar(255) DEFAULT NULL,
  `visibility` varchar(255) DEFAULT NULL,
  `default selection` varchar(255) DEFAULT NULL,
  `tool_category` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `expression_affy_vst`
-- ----------------------------
DROP TABLE IF EXISTS `expression_affy_vst`;
CREATE TABLE `expression_affy_vst` (
  `id` varchar(60) NOT NULL,
  `sample` varchar(60) NOT NULL,
  `log2` double(20,14) DEFAULT NULL,
  `gene_i` mediumint(11) DEFAULT NULL,
  `sample_i` mediumint(11) DEFAULT NULL,
  `sample_name` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `expression_exatlas_vst`
-- ----------------------------
DROP TABLE IF EXISTS `expression_exatlas_vst`;
CREATE TABLE `expression_exatlas_vst` (
  `id` varchar(60) NOT NULL,
  `sample` varchar(60) NOT NULL,
  `log2` double(20,14) DEFAULT NULL,
  `gene_i` mediumint(11) DEFAULT NULL,
  `sample_i` mediumint(11) DEFAULT NULL,
  `sample_name` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `expression_log_vst`
-- ----------------------------
DROP TABLE IF EXISTS `expression_log_vst`;
CREATE TABLE `expression_log_vst` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `sample` varchar(255) NOT NULL DEFAULT '',
  `log2` varchar(255) DEFAULT NULL,
  `sample_i` mediumint(11) DEFAULT NULL,
  `gene_i` mediumint(11) DEFAULT NULL,
  `sample_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`sample`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `expression_sex_vst`
-- ----------------------------
DROP TABLE IF EXISTS `expression_sex_vst`;
CREATE TABLE `expression_sex_vst` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `sample` varchar(255) NOT NULL DEFAULT '',
  `log2` varchar(255) DEFAULT NULL,
  `rmd` varchar(255) DEFAULT NULL,
  `log2fc` varchar(255) DEFAULT NULL,
  `num` int(255) NOT NULL AUTO_INCREMENT,
  `gene_i` mediumint(11) DEFAULT NULL,
  `sample_i` mediumint(11) DEFAULT NULL,
  `sample_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num`,`id`,`sample`)
) ENGINE=MyISAM AUTO_INCREMENT=826701 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `expression_v2log_vst`
-- ----------------------------
DROP TABLE IF EXISTS `expression_v2log_vst`;
CREATE TABLE `expression_v2log_vst` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `sample` varchar(255) NOT NULL DEFAULT '',
  `log2` varchar(255) DEFAULT NULL,
  `rmd` varchar(255) DEFAULT NULL,
  `log2fc` varchar(255) DEFAULT NULL,
  `sample_i` mediumint(11) DEFAULT NULL,
  `gene_i` mediumint(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`sample`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `expression_wood_vst`
-- ----------------------------
DROP TABLE IF EXISTS `expression_wood_vst`;
CREATE TABLE `expression_wood_vst` (
  `id` varchar(60) NOT NULL,
  `sample` varchar(60) NOT NULL,
  `log2` double(20,14) DEFAULT NULL,
  `sample_i` mediumint(11) DEFAULT NULL,
  `gene_i` mediumint(11) DEFAULT NULL,
  `sample_name` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `gene_arabidopsis`
-- ----------------------------
DROP TABLE IF EXISTS `gene_arabidopsis`;
CREATE TABLE `gene_arabidopsis` (
  `gene_id` varchar(255) NOT NULL,
  `arabidopsis_gene_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `gene_id` (`gene_id`),
  KEY `arabidopsis_gene_id` (`arabidopsis_gene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_atg`
-- ----------------------------
DROP TABLE IF EXISTS `gene_atg`;
CREATE TABLE `gene_atg` (
  `gene_id` varchar(255) NOT NULL,
  `atg_description` varchar(255) DEFAULT NULL,
  `atg_id` varchar(24) DEFAULT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `gene_id` (`gene_id`),
  KEY `atg_id` (`atg_id`),
  KEY `gene_i` (`gene_i`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_eucalyptus`
-- ----------------------------
DROP TABLE IF EXISTS `gene_eucalyptus`;
CREATE TABLE `gene_eucalyptus` (
  `gene_id` varchar(255) NOT NULL,
  `populus_gene_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `gene_id` (`gene_id`),
  KEY `populus_gene_id` (`populus_gene_id`)
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
  KEY `gene_id` (`gene_id`),
  KEY `go_id` (`go_id`),
  KEY `gene_i` (`gene_i`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_info`
-- ----------------------------
DROP TABLE IF EXISTS `gene_info`;
CREATE TABLE `gene_info` (
  `gene_id` varchar(60) NOT NULL,
  `chromosome_name` varchar(16) NOT NULL,
  `gene_start` int(16) unsigned NOT NULL,
  `gene_end` int(16) unsigned NOT NULL,
  `description` varchar(255) DEFAULT '',
  `gene_i` mediumint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`gene_i`),
  KEY `gene_id` (`gene_id`),
  KEY `gene_i` (`gene_i`)
) ENGINE=MyISAM AUTO_INCREMENT=42951 DEFAULT CHARSET=latin1;

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
  KEY `gene_id` (`gene_id`),
  KEY `kegg_id` (`kegg_id`),
  KEY `gene_i` (`gene_i`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_maize`
-- ----------------------------
DROP TABLE IF EXISTS `gene_maize`;
CREATE TABLE `gene_maize` (
  `gene_id` varchar(255) NOT NULL,
  `maize_gene_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `gene_id` (`gene_id`),
  KEY `maize_gene_id` (`maize_gene_id`)
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
  KEY `gene_id` (`gene_id`),
  KEY `pfam_id` (`pfam_id`),
  KEY `gene_i` (`gene_i`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_populus`
-- ----------------------------
DROP TABLE IF EXISTS `gene_populus`;
CREATE TABLE `gene_populus` (
  `gene_id` varchar(255) NOT NULL,
  `populus_gene_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `gene_id` (`gene_id`),
  KEY `populus_gene_id` (`populus_gene_id`),
  KEY `gene_i` (`gene_i`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_spruce`
-- ----------------------------
DROP TABLE IF EXISTS `gene_spruce`;
CREATE TABLE `gene_spruce` (
  `gene_id` varchar(255) NOT NULL,
  `spruce_gene_id` varchar(24) NOT NULL,
  `gene_i` mediumint(11) unsigned NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `gene_id` (`gene_id`),
  KEY `spruce_gene_id` (`spruce_gene_id`),
  KEY `gene_i` (`gene_i`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `sample_exatlas_vst`
-- ----------------------------
DROP TABLE IF EXISTS `sample_exatlas_vst`;
CREATE TABLE `sample_exatlas_vst` (
  `sample_name` varchar(255) DEFAULT NULL,
  `sample` varchar(255) DEFAULT NULL,
  `sample_id` varchar(255) DEFAULT NULL,
  `dd` varchar(255) DEFAULT NULL,
  `ee` varchar(255) DEFAULT NULL,
  `ff` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
--  Table structure for `synonyms2`
-- ----------------------------
DROP TABLE IF EXISTS `synonyms2`;
CREATE TABLE `synonyms2` (
  `tid` varchar(255) DEFAULT NULL,
  `Synonyms` varchar(255) DEFAULT NULL,
  KEY `sy` (`Synonyms`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `transcript_atg`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_atg`;
CREATE TABLE `transcript_atg` (
  `transcript_id` varchar(255) NOT NULL,
  `atg_id` varchar(24) NOT NULL,
  `transcript_i` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transcript_i`,`transcript_id`),
  KEY `transcript_id` (`transcript_id`),
  KEY `atg_id` (`atg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `transcript_info`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_info`;
CREATE TABLE `transcript_info` (
  `transcript_id` varchar(255) NOT NULL DEFAULT '',
  `gene_id` varchar(60) NOT NULL,
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
  PRIMARY KEY (`transcript_i`,`transcript_id`),
  KEY `transcript_id` (`transcript_id`),
  KEY `gene_id` (`gene_id`),
  KEY `gene_i` (`gene_i`),
  KEY `transcript_i` (`transcript_i`)
) ENGINE=MyISAM AUTO_INCREMENT=63499 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `transcript_potri`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_potri`;
CREATE TABLE `transcript_potri` (
  `transcript_id` varchar(255) NOT NULL,
  `potri_id` varchar(255) NOT NULL,
  `transcript_i` mediumint(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`transcript_id`),
  KEY `transcript_id` (`transcript_id`),
  KEY `potri_id` (`potri_id`),
  KEY `transcript_i` (`transcript_i`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  View structure for `eplantsearch`
-- ----------------------------
DROP VIEW IF EXISTS `eplantsearch`;
CREATE ALGORITHM=UNDEFINED DEFINER=`chanaka`@`%` SQL SECURITY DEFINER VIEW `eplantsearch` AS select `eplant_log`.`id` AS `id`,`eplant_log`.`sample` AS `sample`,`eplant_log`.`log2` AS `log2`,`eplant_log`.`rmd` AS `rmd`,`eplant_log`.`log2fc` AS `log2fc`,`synonyms2`.`tid` AS `tid`,`synonyms2`.`Synonyms` AS `Synonyms` from (`eplant_log` left join `synonyms2` on((`eplant_log`.`id` = `synonyms2`.`Synonyms`)));

SET FOREIGN_KEY_CHECKS = 1;
