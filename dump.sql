SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `correlation_expatlas_clr`
-- ----------------------------
DROP TABLE IF EXISTS `correlation_expatlas_clr`;
CREATE TABLE `correlation_expatlas_clr` (
  `edg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gene_i1` int(11) NOT NULL,
  `gene_i2` int(11) NOT NULL,
  `corr1` double(16,10) DEFAULT NULL,
  PRIMARY KEY (`edg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- ----------------------------
--  Table structure for `expression_exatlas_tissue_tpm`
-- ----------------------------
DROP TABLE IF EXISTS `expression_exatlas_tissue_tpm`;
CREATE TABLE `expression_exatlas_tissue_tpm` (
  `id` varchar(60) NOT NULL,
  `sample` varchar(60) NOT NULL,
  `log2` double(20,14) DEFAULT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NULL,
  `sample_i` mediumint(20) unsigned DEFAULT 0 NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `gene_arabidopsis`
-- ----------------------------
DROP TABLE IF EXISTS `gene_arabidopsis`;
CREATE TABLE `gene_arabidopsis` (
  `gene_id` varchar(255) NOT NULL,
  `arabidopsis_gene_id` varchar(255) DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `arabidopsis_gene_id` (`arabidopsis_gene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_atg`
-- ----------------------------
DROP TABLE IF EXISTS `gene_atg`;
CREATE TABLE `gene_atg` (
  `gene_id` varchar(255) NOT NULL,
  `atg_description` varchar(1000) DEFAULT '' NOT NULL,
  `atg_id` varchar(255) DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `atg_id` (`atg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_eucalyptus`
-- ----------------------------
DROP TABLE IF EXISTS `gene_eucalyptus`;
CREATE TABLE `gene_eucalyptus` (
  `gene_id` varchar(255) NOT NULL,
  `populus_gene_id` varchar(255) DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `populus_gene_id` (`populus_gene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_go`
-- ----------------------------
DROP TABLE IF EXISTS `gene_go`;
CREATE TABLE `gene_go` (
  `gene_id` varchar(255) NOT NULL,
  `go_description` varchar(1000)  DEFAULT '' NOT NULL,
  `go_id` varchar(255)  DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `go_id` (`go_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `transcript_go`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_go`;
CREATE TABLE `transcript_go` (
  `transcript_id` varchar(255) NOT NULL,
  `go_description` varchar(1000) NOT NULL DEFAULT '',
  `go_id` varchar(255) NOT NULL DEFAULT '',
  `transcript_i` mediumint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`transcript_i`,`transcript_id`),
  KEY `go_id` (`go_id`)
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
  `description` varchar(1000)  DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`gene_i`,`gene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- ----------------------------
--  Table structure for `gene_kegg`
-- ----------------------------
DROP TABLE IF EXISTS `gene_kegg`;
CREATE TABLE `gene_kegg` (
  `gene_id` varchar(255) NOT NULL,
  `kegg_description` varchar(1000)  DEFAULT '' NOT NULL,
  `kegg_id` varchar(255)  DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `kegg_id` (`kegg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_maize`
-- ----------------------------
DROP TABLE IF EXISTS `gene_maize`;
CREATE TABLE `gene_maize` (
  `gene_id` varchar(255) NOT NULL,
  `maize_gene_id` varchar(255)  DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `maize_gene_id` (`maize_gene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_pfam`
-- ----------------------------
DROP TABLE IF EXISTS `gene_pfam`;
CREATE TABLE `gene_pfam` (
  `gene_id` varchar(255) NOT NULL,
  `pfam_description` varchar(1000)  DEFAULT '' NOT NULL,
  `pfam_id` varchar(255)  DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `pfam_id` (`pfam_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_populus`
-- ----------------------------
DROP TABLE IF EXISTS `gene_populus`;
CREATE TABLE `gene_populus` (
  `gene_id` varchar(255) NOT NULL,
  `populus_gene_id` varchar(255)  DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `populus_gene_id` (`populus_gene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `gene_spruce`
-- ----------------------------
DROP TABLE IF EXISTS `gene_spruce`;
CREATE TABLE `gene_spruce` (
  `gene_id` varchar(255) NOT NULL,
  `spruce_gene_id` varchar(255)  DEFAULT '' NOT NULL,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`gene_i`,`gene_id`),
  KEY `spruce_gene_id` (`spruce_gene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
--  Table structure for `transcript_info`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_info`;
CREATE TABLE `transcript_info` (
  `transcript_id` varchar(255) NOT NULL DEFAULT '',
  `gene_id` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT '',
  `chromosome_name` varchar(16) NOT NULL,
  `strand` varchar(2) NOT NULL,
  `gene_start` int(16) unsigned NOT NULL,
  `gene_end` int(16) unsigned NOT NULL,
  `pac_id` varchar(20) DEFAULT NULL,
  `peptide_name` varchar(50) DEFAULT NULL,
  `transcript_start` int(16) unsigned NOT NULL,
  `transcript_end` int(16) unsigned NOT NULL,
  `transcript_i` mediumint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gene_i` mediumint(20) unsigned DEFAULT 0 NOT NULL ,
  PRIMARY KEY (`transcript_i`,`transcript_id`),
  INDEX `gene_i` (`gene_i`),	
  INDEX `gene_id` (`gene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1;

-- ----------------------------
--  Table structure for `transcript_potri`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_potri`;
CREATE TABLE `transcript_potri` (
  `transcript_id` varchar(255)  DEFAULT '' NOT NULL,
  `potri_id` varchar(255)  DEFAULT '' NOT NULL,
  `transcript_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  PRIMARY KEY (`transcript_i`,`transcript_id`),
  KEY `potri_id` (`potri_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `transcript_atg`
-- ----------------------------
DROP TABLE IF EXISTS `transcript_atg`;
CREATE TABLE `transcript_atg` (
  `transcript_id` varchar(255) NOT NULL,
  `atg_id` varchar(255)  DEFAULT '' NOT NULL,
  `transcript_i` mediumint(20) unsigned DEFAULT 0 NOT NULL,
  `description` varchar(1000)  DEFAULT '' NOT NULL,
  PRIMARY KEY (`transcript_i`,`transcript_id`),
  KEY `atg_id` (`atg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

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
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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

SET FOREIGN_KEY_CHECKS = 1;
