-- Adminer 3.7.1 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = '+07:00';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `news` (`id`, `title`, `content`) VALUES
(1,	'Title 1',	'Content 1'),
(2,	'Title 2',	'Content 2');

-- 2013-08-02 14:47:04