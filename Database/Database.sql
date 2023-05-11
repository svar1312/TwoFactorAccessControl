CREATE DATABASE  IF NOT EXISTS `finegrained`
USE `finegrained`;

DROP TABLE IF EXISTS `attacker`;

CREATE TABLE `attacker` (
  `user` text,
  `fname` text,
  `sk` text,
  `dt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `authority`;

CREATE TABLE `authority` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `authority` WRITE;

INSERT INTO `authority` VALUES ('authority','authority');

UNLOCK TABLES;

DROP TABLE IF EXISTS `authorityfile`;

CREATE TABLE `authorityfile` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `ct` text,
  `trapdoor` text,
  `sk` text,
  `rank` int(11) default NULL,
  `dt` text,
  `Access` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `cloud` WRITE;

INSERT INTO `cloud` VALUES ('cloud','cloud');

UNLOCK TABLES;

DROP TABLE IF EXISTS `cloudserver`;

CREATE TABLE `cloudserver` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `ct` text,
  `trapdoor` text,
  `sk` text,
  `rank` int(11) default NULL,
  `dt` text,
  `Access` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `fname` text,
  `sk` text,
  `task` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `trustee`;

CREATE TABLE `trustee` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `trustee` WRITE;

INSERT INTO `trustee` VALUES ('trust','trust');

UNLOCK TABLES;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `otp` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;