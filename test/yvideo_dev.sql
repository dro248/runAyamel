-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2017 at 04:06 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videodb_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountLink`
--

CREATE TABLE `accountLink` (
  `id` bigint(20) NOT NULL,
  `userIds` longtext NOT NULL,
  `primaryAccount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `addCourseRequest`
--

CREATE TABLE `addCourseRequest` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `courseId` bigint(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` bigint(20) NOT NULL,
  `courseId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `timeMade` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contentType` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `resourceId` varchar(255) NOT NULL,
  `dateAdded` varchar(255) NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT '2',
  `shareability` int(11) NOT NULL DEFAULT '3',
  `authKey` varchar(255) NOT NULL,
  `labels` longtext NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `name`, `contentType`, `thumbnail`, `resourceId`, `dateAdded`, `visibility`, `shareability`, `authKey`, `labels`, `views`) VALUES
(1, 'Dreyfus by Yves Duteil', 'video', '', '515c9b7d35e544681f000000', '2017-03-03T14:30:39.911-07:00', 2, 3, '991b1f27a125fcc2755dbb878b6a9638', '', 0),
(2, 'Resource 2', 'video', '', 'resource2', '2017-03-03T14:30:39.953-07:00', 2, 3, 'df7aac86bacf1ee56f2e776951d6eae6', '', 0),
(3, 'Resource 3', 'video', '', 'resource3', '2017-03-03T14:30:39.964-07:00', 2, 3, 'e08005e45fa9f5bebbfeede992423afd', '', 0),
(4, 'Resource 4', 'video', '', 'resource4', '2017-03-03T14:30:39.975-07:00', 2, 3, '50d6b48a5e4b0920e2720719cf8e2fba', '', 0),
(5, 'Resource 5', 'video', '', 'resource5', '2017-03-03T14:30:39.982-07:00', 2, 3, 'e367c32ec3c4d1b854f16e74a39305b2', '', 0),
(6, 'Resource 6', 'video', '', 'resource6', '2017-03-03T14:30:39.993-07:00', 2, 3, '1a7fe6da2083b4683ca304daf1c7b346', '', 0),
(7, 'Resource 7', 'video', '', 'resource7', '2017-03-03T14:30:40.006-07:00', 2, 3, 'c8dc220db8cad785959de429887b7057', '', 0),
(8, 'Resource 8', 'video', '', 'resource8', '2017-03-03T14:30:40.014-07:00', 2, 3, 'f20220149e1dea6bd12146f761d6698c', '', 0),
(10, 'allstar', 'video', '', '58c6b21533e57cfe3e8b4567', '2017-03-13T08:52:05.777-06:00', 2, 3, 'e8350eafccd84a5f93995a8a9d73f48d', '', 0),
(11, 'dirty loops', 'video', '', '58c7280033e57cfe3e8b4568', '2017-03-13T17:15:13.197-06:00', 2, 3, '392f67fdf9eddc62e18e7aec77a2a0eb', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contentListing`
--

CREATE TABLE `contentListing` (
  `id` bigint(20) NOT NULL,
  `courseId` bigint(20) NOT NULL,
  `contentId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contentListing`
--

INSERT INTO `contentListing` (`id`, `courseId`, `contentId`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 1, 6),
(7, 2, 7),
(8, 3, 8),
(9, 6, 10),
(10, 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `contentOwnership`
--

CREATE TABLE `contentOwnership` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `contentId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contentOwnership`
--

INSERT INTO `contentOwnership` (`id`, `userId`, `contentId`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 3),
(4, 5, 4),
(5, 7, 5),
(6, 8, 6),
(7, 10, 7),
(8, 11, 8),
(10, 13, 10),
(11, 13, 11);

-- --------------------------------------------------------

--
-- Table structure for table `contentSetting`
--

CREATE TABLE `contentSetting` (
  `id` bigint(20) NOT NULL,
  `contentId` bigint(20) NOT NULL,
  `setting` varchar(255) NOT NULL,
  `argument` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `startDate` varchar(255) NOT NULL,
  `endDate` varchar(255) NOT NULL,
  `enrollment` varchar(128) NOT NULL DEFAULT 'closed',
  `featured` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `startDate`, `endDate`, `enrollment`, `featured`) VALUES
(1, 'Course 101', '2013-03-14T20:37:01.665Z', '2014-03-14T20:37:01.665Z', 'closed', 0),
(2, 'Course 102', '2013-03-14T20:37:01.665Z', '2014-03-14T20:37:01.665Z', 'closed', 0),
(3, 'Course 103', '2013-03-14T20:37:01.665Z', '2014-03-14T20:37:01.665Z', 'closed', 0),
(4, 'Course 104', '2013-03-14T20:37:01.665Z', '2014-03-14T20:37:01.665Z', 'closed', 0),
(5, 'Course 105', '2013-03-14T20:37:01.665Z', '2014-03-14T20:37:01.665Z', 'closed', 0),
(6, 'Test Course 1', '', '', 'closed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `courseMembership`
--

CREATE TABLE `courseMembership` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `courseId` bigint(20) NOT NULL,
  `teacher` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseMembership`
--

INSERT INTO `courseMembership` (`id`, `userId`, `courseId`, `teacher`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 2, 2, 0),
(4, 2, 3, 0),
(5, 3, 3, 0),
(6, 3, 4, 0),
(7, 4, 4, 0),
(8, 4, 5, 0),
(9, 5, 1, 0),
(10, 6, 1, 0),
(11, 7, 1, 1),
(12, 8, 2, 1),
(13, 9, 3, 1),
(14, 10, 4, 1),
(15, 11, 5, 1),
(16, 12, 1, 1),
(17, 13, 6, 1),
(18, 14, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coursePermissions`
--

CREATE TABLE `coursePermissions` (
  `id` bigint(20) NOT NULL,
  `courseId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `permission` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursePermissions`
--

INSERT INTO `coursePermissions` (`id`, `courseId`, `userId`, `permission`) VALUES
(1, 6, 14, 'viewData'),
(2, 6, 14, 'editCourse'),
(3, 6, 14, 'addContent'),
(4, 6, 14, 'makeAnnouncement'),
(5, 6, 14, 'removeContent'),
(6, 6, 14, 'addStudent'),
(7, 6, 14, 'removeStudent');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `submitted` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `helpPage`
--

CREATE TABLE `helpPage` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` longtext NOT NULL,
  `category` varchar(255) NOT NULL DEFAULT 'Uncategorized'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `helpPage`
--

INSERT INTO `helpPage` (`id`, `title`, `contents`, `category`) VALUES
(1, 'Updating account information', '', 'Uncategorized'),
(2, 'Changing your password', '', 'Uncategorized'),
(3, 'Merging accounts', '', 'Uncategorized'),
(4, 'Notifications', '', 'Uncategorized'),
(5, 'Searching', '', 'Uncategorized'),
(6, 'Course directory', '', 'Uncategorized'),
(7, 'Joining courses', '', 'Uncategorized'),
(8, 'Making announcements', '', 'Uncategorized'),
(9, 'Adding content you own to a course', '', 'Uncategorized'),
(10, 'Content types', '', 'Uncategorized'),
(11, 'Browsing content', '', 'Uncategorized'),
(12, 'Viewing content', '', 'Uncategorized'),
(13, 'Viewing captions and transcripts', '', 'Uncategorized'),
(14, 'Translating', '', 'Uncategorized'),
(15, 'Viewing annotations', '', 'Uncategorized'),
(16, 'Sharing content', '', 'Uncategorized'),
(17, 'Viewing content information', '', 'Uncategorized'),
(18, 'Public content listing', '', 'Uncategorized'),
(19, 'Uploading', '', 'Uncategorized'),
(20, 'Adding hosted content', '', 'Uncategorized'),
(21, 'Adding a YouTube video', '', 'Uncategorized'),
(22, 'Adding a Brightcove video', '', 'Uncategorized'),
(23, 'Create from existing resource', '', 'Uncategorized'),
(24, 'Content settings', '', 'Uncategorized'),
(25, 'Updating metadata', '', 'Uncategorized'),
(26, 'Setting a thumbnail', '', 'Uncategorized'),
(27, 'Setting the shareability', '', 'Uncategorized'),
(28, 'Setting the visibility', '', 'Uncategorized'),
(29, 'Deleting content', '', 'Uncategorized'),
(30, 'Ownership and availability', '', 'Uncategorized'),
(31, 'Uploading captions', '', 'Uncategorized'),
(32, 'Creating new annotations', '', 'Uncategorized'),
(33, 'Editing existing annotations', '', 'Uncategorized'),
(34, 'Publishing personal captions and annotations', '', 'Uncategorized'),
(35, 'Becoming a teacher', '', 'Uncategorized'),
(36, 'Creating a course', '', 'Uncategorized'),
(37, 'Adding content you don\'t own to a course', '', 'Uncategorized'),
(38, 'Setting course captions and annotations', '', 'Uncategorized'),
(39, 'How playlists work', '', 'Uncategorized'),
(40, 'Creating a playlist', '', 'Uncategorized'),
(41, 'Viewing a playlist', '', 'Uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `homePageContent`
--

CREATE TABLE `homePageContent` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `linkText` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homePageContent`
--

INSERT INTO `homePageContent` (`id`, `title`, `text`, `link`, `linkText`, `background`, `active`) VALUES
(1, 'Enrich your studies', 'With Ayamel, increase your language speaking ability.', '', '', '/assets/images/home/byu-campus.jpg', 1),
(2, 'Pardon our dust', 'We\'re working hard to provide language learning magic, so there may be some things don\'t work well, or at all. Please be patient. You will be rewarded as awesomeness occurs.', '', '', '/assets/images/home/construction.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE `login_tokens` (
  `token` varchar(127) NOT NULL,
  `action` varchar(32) NOT NULL,
  `redirect` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `message` varchar(512) NOT NULL,
  `dateSent` varchar(255) NOT NULL,
  `messageRead` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `userId`, `message`, `dateSent`, `messageRead`) VALUES
(1, 14, 'Your request for Create Course permission has been approved.', '2017-03-13T17:12:43.614-06:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `play_evolutions`
--

CREATE TABLE `play_evolutions` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `applied_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `apply_script` mediumtext,
  `revert_script` mediumtext,
  `state` varchar(255) DEFAULT NULL,
  `last_problem` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `play_evolutions`
--

INSERT INTO `play_evolutions` (`id`, `hash`, `applied_at`, `apply_script`, `revert_script`, `state`, `last_problem`) VALUES
(1, '8ef039a9a5170d7b37a3c04e77541d9aa68e5b9a', '2017-03-03 21:30:34', 'create table content (\nid             bigint not null auto_increment,\nname           varchar(255) not null,\ncontentType    varchar(255) not null,\nthumbnail      varchar(255) not null,\nresourceId     varchar(255) not null,\ndateAdded      varchar(255) not null,\nprimary key(id)\n);\n\ncreate table contentListing (\nid             bigint not null auto_increment,\ncourseId       bigint not null,\ncontentId      bigint not null,\nprimary key(id)\n);\n\ncreate table contentOwnership (\nid             bigint not null auto_increment,\nuserId         bigint not null,\ncontentId      bigint not null,\nprimary key(id)\n);\n\ncreate table course (\nid             bigint not null auto_increment,\nname           varchar(255) not null,\nstartDate      varchar(255) not null,\nendDate        varchar(255) not null,\nlmsKey         varchar(255) not null,\nprimary key(id)\n);\n\ncreate table courseMembership (\nid             bigint not null auto_increment,\nuserId         bigint not null,\ncourseId       bigint not null,\nteacher        boolean not null,\nprimary key(id)\n);\n\ncreate table userAccount (\nid             bigint not null auto_increment,\nauthId         varchar(255) not null,\nauthScheme     varchar(255) not null,\nusername       varchar(255) not null,\nname           varchar(255) null,\nemail          varchar(255) null,\nrole           int not null,\nprimary key(id)\n);', 'drop table if exists content;\ndrop table if exists contentListing;\ndrop table if exists contentOwnership;\ndrop table if exists course;\ndrop table if exists courseMembership;\ndrop table if exists userAccount;', 'applied', ''),
(2, '1f2c39fa3a343e2f2c517bf3c87440b7bab6f064', '2017-03-03 21:30:34', 'alter table userAccount add column picture varchar(511) null;\n\ncreate table announcement (\nid             bigint not null auto_increment,\ncourseId       bigint not null,\nuserId         bigint not null,\ntimeMade       varchar(255) not null,\ncontent        varchar(255) not null,\nprimary key(id)\n);', 'alter table userAccount drop column picture;\ndrop table if exists announcement;', 'applied', ''),
(3, 'f3cb06664ce0592bb655effba4be8d2035f369e7', '2017-03-03 21:30:34', 'alter table content\nadd column visibility int not null default 2,\nadd column shareability int not null default 3;', 'alter table content drop column visibility, drop column shareability;', 'applied', ''),
(4, '18d50baeacf6828ff16d553f3040c1c7cacb3545', '2017-03-03 21:30:34', 'create table teacherRequest (\nid             bigint not null auto_increment,\nuserId         bigint not null,\nreason         varchar(2048) not null,\nprimary key(id)\n);\n\ncreate table notification (\nid             bigint not null auto_increment,\nuserId         bigint not null,\nmessage        varchar(512) not null,\ndateSent       varchar(255) not null,\nmessageRead    boolean not null,\nprimary key(id)\n);\n\nalter table content add column settings longtext not null;', 'drop table if exists teacherRequest;\ndrop table if exists notification;\nalter table content drop column settings;', 'applied', ''),
(5, 'c883e4d6f77695fa5538320d3df09739c93c8301', '2017-03-03 21:30:34', 'create table accountLink (\nid                bigint not null auto_increment,\nuserIds           longtext not null,\nprimaryAccount    bigint not null,\nprimary key(id)\n);\n\nalter table userAccount add column accountLinkId bigint not null default -1;', 'drop table if exists accountLink;\nalter table userAccount drop column accountLinkId;', 'applied', ''),
(6, '2a2fc82997fd83b562b2c2358685dbddca6fdf77', '2017-03-03 21:30:34', 'create table addCourseRequest (\nid             bigint not null auto_increment,\nuserId         bigint not null,\ncourseId       bigint not null,\nmessage        varchar(255) not null,\nprimary key(id)\n);', 'drop table if exists addCourseRequest;', 'applied', ''),
(7, '0d25ff9c3ea8289aca41d624e6f1025fdf8cbe15', '2017-03-03 21:30:34', 'alter table content add column authKey varchar(255) not null;', 'alter table content drop column authKey;', 'applied', ''),
(8, '9fc2d64acae83d78b4a51212a650cec6a05fe928', '2017-03-03 21:30:34', 'create table activity (\nid                bigint not null auto_increment,\nactor             bigint not null,\nverb              varchar(255) not null,\npageCategory      varchar(255) not null,\npageAction        varchar(255) not null,\npageId            bigint not null,\ngeneratorType     varchar(255) not null,\ngeneratorId       varchar(255) not null,\ngeneratorItemRef  varchar(255) not null,\nobjectType        varchar(255) not null,\nobjectId          varchar(255) not null,\nobjectItemRef     varchar(255) not null,\npublished         varchar(255) not null,\nprimary key(id)\n);', 'drop table if exists activity;', 'applied', ''),
(9, 'ad8302e5a725ca53350e818df9c46c82657fdda4', '2017-03-03 21:30:34', 'create table homePageContent (\nid            bigint not null auto_increment,\ntitle         varchar(255) not null,\ntext          varchar(255) not null,\nlink          varchar(255) not null,\nlinkText      varchar(255) not null,\nbackground    varchar(255) not null,\nactive        boolean not null,\nprimary key(id)\n);', 'drop table if exists homePageContent;', 'applied', ''),
(10, 'e88607eeb00f4ea3bb82c4ddcdd531a4dd88560c', '2017-03-03 21:30:34', 'alter table content add column labels longtext not null;', 'alter table content drop column labels;', 'applied', ''),
(11, '8e0945c031165f0ac00790b957bafcf93d587a90', '2017-03-03 21:30:34', 'create table helpPage (\nid             bigint not null auto_increment,\ntitle          varchar(255) not null,\ncontents       longtext not null,\nprimary key(id)\n);', 'drop table if exists helpPage;', 'applied', ''),
(12, '9fa985a23137266a688423d415ca43100f4e4bda', '2017-03-03 21:30:34', 'create table feedback (\nid             bigint not null auto_increment,\nuserId         bigint not null,\ncategory       varchar(255) not null,\ndescription    longtext not null,\nsubmitted      varchar(255) not null,\nprimary key(id)\n);', 'drop table if exists feedback;', 'applied', ''),
(13, '21dd35496f0ea06489e1237f833c189df90291b4', '2017-03-03 21:30:34', 'create table setting (\nid             bigint not null auto_increment,\nname           varchar(255) not null,\nsettingValue   longtext not null,\nprimary key(id)\n);', 'drop table if exists setting;', 'applied', ''),
(14, '1dd590787fa32fedde36b49430bcd011831f4479', '2017-03-03 21:30:34', 'alter table userAccount\nadd column created varchar(255) not null default "2013-01-01T12:00:00.000-06:00",\nadd column lastLogin varchar(255) not null default "2013-01-01T12:00:00.000-06:00";', 'alter table userAccount drop column created, drop column lastLogin;', 'applied', ''),
(15, '0596616e0a524a1656ca054847b8c09f84232a78', '2017-03-03 21:30:34', '# TODO remove enrollment\nalter table course add column enrollment varchar(128) not null default "closed";', 'alter table course drop column enrollment;', 'applied', ''),
(16, 'd1436b80c30af17d0473bcfedda82761143b520d', '2017-03-03 21:30:35', 'create table scoring (\nid             bigint not null auto_increment,\nscore          double not null,\npossible       double not null,\nresults        text not null,\nuserId         bigint not null,\ncontentId      bigint not null,\ngraded         varchar(255) not null,\nprimary key(id)\n);', 'drop table if exists scoring;', 'applied', ''),
(17, '136dec65e533f9f9247ab7c03520ab7ea5195a9b', '2017-03-03 21:30:35', 'alter table helpPage add column category varchar(255) not null default "Uncategorized";', 'alter table helpPage drop column category;', 'applied', ''),
(18, 'f2a7a35ab71d3968d905b74634d2b4039aaee7e4', '2017-03-03 21:30:35', 'create table wordList (\nid             bigint not null auto_increment,\nword           text not null,\n`language`     varchar(8) not null,\nuserId         bigint not null,\nprimary key(id)\n);', 'drop table if exists wordList;', 'applied', ''),
(19, '34626bb1d35bcb8148d40605d3892e73949fe9c8', '2017-03-03 21:30:35', 'create table sitePermissions (\nid                bigint not null auto_increment,\nuserId            bigint not null,\npermission        varchar(255) not null,\nprimary key(id)\n);\n\ncreate table coursePermissions (\nid                bigint not null auto_increment,\ncourseId          bigint not null,\nuserId            bigint not null,\npermission        varchar(255) not null,\nprimary key(id)\n);\n\ncreate table sitePermissionRequest (\nid             bigint not null auto_increment,\nuserId         bigint not null,\npermission     varchar(255) not null,\nreason         varchar(2048) not null,\nprimary key(id)\n);\n\ndrop table if exists teacherRequest;', 'drop table if exists sitePermissions;\ndrop table if exists coursePermissions;\ndrop table if exists sitePermissionRequest;\n\ncreate table teacherRequest (\nid             bigint not null auto_increment,\nuserId         bigint not null,\nreason         varchar(2048) not null,\nprimary key(id)\n);', 'applied', ''),
(20, 'e9cbd055312661662a9b98544711df58e0924124', '2017-03-03 21:30:35', 'alter table content drop column settings;\n\ncreate table contentSetting (\nid                bigint not null auto_increment,\ncontentId         bigint not null,\nsetting           varchar(255) not null,\nargument          text not null,\nprimary key(id)\n);', 'alter table content add column settings longtext not null;\n\ndrop table if exists contentSetting;', 'applied', ''),
(21, 'efa9e332cee0d316ac7f07170443b9e6a8351e4e', '2017-03-03 21:30:35', 'alter table userAccount alter column role set default \'1\';', '', 'applied', ''),
(22, 'bd6222779b8d8779b2cdfe7f67f1a16bb5cbe880', '2017-03-03 21:30:35', 'alter table wordList add column srcLang varchar(8) not null default "eng";\nalter table wordList add column destLang varchar(8) not null default "eng";\nupdate wordList set srcLang = language;\nalter table wordList drop language;', 'alter table wordList add column language varchar(8) not null default "eng";\nupdate wordList set language = srcLang;\nalter table wordList drop srcLang;\nalter table wordList drop destLang;', 'applied', ''),
(23, '05f9502b4cd2bf5ad7ee1e372cc3c98626864b4f', '2017-03-03 21:30:35', 'create table login_tokens (\ntoken    varchar(127) not null,\naction   varchar(32) not null,\nredirect text not null,\nprimary key(token)\n);', 'drop table if exists login_tokens;', 'applied', ''),
(24, 'aa4a9473a47c2904abfd4155004b2c14ab31619c', '2017-03-03 21:30:35', 'alter table content add column views bigint not null default 0;', 'alter table content drop views;', 'applied', ''),
(25, 'b391ee812d87ec10f707dae3d5fa447502ad3d8b', '2017-03-03 21:30:35', 'alter table announcement modify column content text not null;', 'alter table announcement modify column content varchar(255) not null;', 'applied', ''),
(26, 'f59e38292e9905acd4d972edb18c9d2679a2ace1', '2017-03-03 21:30:35', 'alter table course add column featured boolean default false;', 'alter table course drop column featured;', 'applied', ''),
(27, '424f72c916967547be57f815292b34170cd69ca9', '2017-03-03 21:30:35', 'drop table if exists activity;', 'create table activity (\nid                bigint not null auto_increment,\nactor             bigint not null,\nverb              varchar(255) not null,\npageCategory      varchar(255) not null,\npageAction        varchar(255) not null,\npageId            bigint not null,\ngeneratorType     varchar(255) not null,\ngeneratorId       varchar(255) not null,\ngeneratorItemRef  varchar(255) not null,\nobjectType        varchar(255) not null,\nobjectId          varchar(255) not null,\nobjectItemRef     varchar(255) not null,\npublished         varchar(255) not null,\nprimary key(id)\n);', 'applied', ''),
(28, '6556baef0ae7319e57b4030b0b9cd69e9326c46c', '2017-03-03 21:30:35', 'alter table course drop column lmsKey;', 'alter table course add column lmsKey varchar(255) not null;', 'applied', '');

-- --------------------------------------------------------

--
-- Table structure for table `scoring`
--

CREATE TABLE `scoring` (
  `id` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `possible` double NOT NULL,
  `results` text NOT NULL,
  `userId` bigint(20) NOT NULL,
  `contentId` bigint(20) NOT NULL,
  `graded` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `settingValue` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `settingValue`) VALUES
(1, 'notifications.emails', ''),
(2, 'notifications.notifyOn.error', 'false'),
(3, 'notifications.notifyOn.errorReport', 'true'),
(4, 'notifications.notifyOn.bugReport', 'true'),
(5, 'notifications.notifyOn.rating', 'false'),
(6, 'notifications.notifyOn.suggestion', 'false'),
(7, 'notifications.users.emailOn.notification', 'true'),
(8, 'help.gettingStartedContent', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sitePermissionRequest`
--

CREATE TABLE `sitePermissionRequest` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `reason` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sitePermissions`
--

CREATE TABLE `sitePermissions` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `permission` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitePermissions`
--

INSERT INTO `sitePermissions` (`id`, `userId`, `permission`) VALUES
(1, 1, 'requestPermission'),
(2, 1, 'createContent'),
(3, 1, 'joinCourse'),
(4, 2, 'requestPermission'),
(5, 2, 'createContent'),
(6, 2, 'joinCourse'),
(7, 3, 'requestPermission'),
(8, 3, 'createContent'),
(9, 3, 'joinCourse'),
(10, 4, 'requestPermission'),
(11, 4, 'createContent'),
(12, 4, 'joinCourse'),
(13, 5, 'requestPermission'),
(14, 5, 'createContent'),
(15, 5, 'joinCourse'),
(16, 6, 'requestPermission'),
(17, 6, 'createContent'),
(18, 6, 'joinCourse'),
(19, 7, 'requestPermission'),
(20, 7, 'createContent'),
(21, 7, 'joinCourse'),
(22, 7, 'createCourse'),
(23, 7, 'viewRestricted'),
(24, 8, 'requestPermission'),
(25, 8, 'createContent'),
(26, 8, 'joinCourse'),
(27, 8, 'createCourse'),
(28, 8, 'viewRestricted'),
(29, 9, 'requestPermission'),
(30, 9, 'createContent'),
(31, 9, 'joinCourse'),
(32, 9, 'createCourse'),
(33, 9, 'viewRestricted'),
(34, 10, 'requestPermission'),
(35, 10, 'createContent'),
(36, 10, 'joinCourse'),
(37, 10, 'createCourse'),
(38, 10, 'viewRestricted'),
(39, 11, 'requestPermission'),
(40, 11, 'createContent'),
(41, 11, 'joinCourse'),
(42, 11, 'createCourse'),
(43, 11, 'viewRestricted'),
(49, 13, 'admin'),
(50, 14, 'requestPermission'),
(51, 14, 'createContent'),
(52, 14, 'joinCourse'),
(53, 15, 'requestPermission'),
(54, 15, 'createContent'),
(55, 15, 'joinCourse'),
(56, 14, 'createCourse');

-- --------------------------------------------------------

--
-- Table structure for table `userAccount`
--

CREATE TABLE `userAccount` (
  `id` bigint(20) NOT NULL,
  `authId` varchar(255) NOT NULL,
  `authScheme` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `picture` varchar(511) DEFAULT NULL,
  `accountLinkId` bigint(20) NOT NULL DEFAULT '-1',
  `created` varchar(255) NOT NULL DEFAULT '2013-01-01T12:00:00.000-06:00',
  `lastLogin` varchar(255) NOT NULL DEFAULT '2013-01-01T12:00:00.000-06:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userAccount`
--

INSERT INTO `userAccount` (`id`, `authId`, `authScheme`, `username`, `name`, `email`, `role`, `picture`, `accountLinkId`, `created`, `lastLogin`) VALUES
(1, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'student1', 'Student 1', 's1@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:38.558-07:00', '2017-03-03T14:30:38.561-07:00'),
(2, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'student2', 'Student 2', 's2@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:38.935-07:00', '2017-03-03T14:30:38.935-07:00'),
(3, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'student3', 'Student 3', 's3@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.001-07:00', '2017-03-03T14:30:39.001-07:00'),
(4, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'student4', 'Student 4', 's4@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.057-07:00', '2017-03-03T14:30:39.057-07:00'),
(5, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'student5', 'Student 5', 's5@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.098-07:00', '2017-03-03T14:30:39.098-07:00'),
(6, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'student6', 'Student 6', 's6@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.126-07:00', '2017-03-03T14:30:39.126-07:00'),
(7, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'teacher1', 'Teacher 1', 't1@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.174-07:00', '2017-03-03T14:30:39.174-07:00'),
(8, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'teacher2', 'Teacher 2', 't2@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.244-07:00', '2017-03-03T14:30:39.244-07:00'),
(9, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'teacher3', 'Teacher 3', 't3@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.318-07:00', '2017-03-03T14:30:39.318-07:00'),
(10, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'teacher4', 'Teacher 4', 't4@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.395-07:00', '2017-03-03T14:30:39.395-07:00'),
(11, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'teacher5', 'Teacher 5', 't5@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.452-07:00', '2017-03-03T14:30:39.452-07:00'),
(12, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'teacher6', 'Teacher 6', 't6@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.779-07:00', '2017-03-03T14:30:39.779-07:00'),
(13, '7NcYcNGWMxapfjrDQIyYNa2M8PPBvHA1J8MCZVNPda4=', 'password', 'admin', 'Admin', 'admin@ayamel.byu.edu', 1, NULL, -1, '2017-03-03T14:30:39.873-07:00', '2017-04-05T13:32:18.098-06:00'),
(14, 'hutchibw', 'cas', 'hutchibw', NULL, NULL, 1, NULL, -1, '2017-03-03T20:33:44.926-07:00', '2017-03-13T17:10:35.951-06:00'),
(15, 'bradizzletheindiekid@gmail.com', 'google', 'bradizzletheindiekid@gmail.com', NULL, 'bradizzletheindiekid@gmail.com', 1, NULL, -1, '2017-03-08T13:31:38.306-07:00', '2017-03-16T09:25:16.768-06:00');

-- --------------------------------------------------------

--
-- Table structure for table `wordList`
--

CREATE TABLE `wordList` (
  `id` bigint(20) NOT NULL,
  `word` text NOT NULL,
  `userId` bigint(20) NOT NULL,
  `srcLang` varchar(8) NOT NULL DEFAULT 'eng',
  `destLang` varchar(8) NOT NULL DEFAULT 'eng'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountLink`
--
ALTER TABLE `accountLink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addCourseRequest`
--
ALTER TABLE `addCourseRequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contentListing`
--
ALTER TABLE `contentListing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contentOwnership`
--
ALTER TABLE `contentOwnership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contentSetting`
--
ALTER TABLE `contentSetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseMembership`
--
ALTER TABLE `courseMembership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursePermissions`
--
ALTER TABLE `coursePermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `helpPage`
--
ALTER TABLE `helpPage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homePageContent`
--
ALTER TABLE `homePageContent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play_evolutions`
--
ALTER TABLE `play_evolutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scoring`
--
ALTER TABLE `scoring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitePermissionRequest`
--
ALTER TABLE `sitePermissionRequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitePermissions`
--
ALTER TABLE `sitePermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userAccount`
--
ALTER TABLE `userAccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wordList`
--
ALTER TABLE `wordList`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountLink`
--
ALTER TABLE `accountLink`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `addCourseRequest`
--
ALTER TABLE `addCourseRequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contentListing`
--
ALTER TABLE `contentListing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `contentOwnership`
--
ALTER TABLE `contentOwnership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contentSetting`
--
ALTER TABLE `contentSetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `courseMembership`
--
ALTER TABLE `courseMembership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `coursePermissions`
--
ALTER TABLE `coursePermissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `helpPage`
--
ALTER TABLE `helpPage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `homePageContent`
--
ALTER TABLE `homePageContent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scoring`
--
ALTER TABLE `scoring`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sitePermissionRequest`
--
ALTER TABLE `sitePermissionRequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sitePermissions`
--
ALTER TABLE `sitePermissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `userAccount`
--
ALTER TABLE `userAccount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wordList`
--
ALTER TABLE `wordList`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
