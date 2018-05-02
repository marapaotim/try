-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2018 at 01:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `srn_master_cms_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `srn_artifact_files`
--

CREATE TABLE IF NOT EXISTS `srn_artifact_files` (
`id` int(11) NOT NULL,
  `artifact_id` int(11) NOT NULL,
  `file_url` text NOT NULL,
  `file_description` text NOT NULL,
  `file_status` varchar(255) NOT NULL,
  `file_datecreated` datetime NOT NULL,
  `file_datemodified` datetime NOT NULL,
  `file_version` varchar(255) NOT NULL,
  `file_security` text NOT NULL,
  `file_tags` text NOT NULL,
  `file_createdby` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_cms`
--

CREATE TABLE IF NOT EXISTS `srn_cms` (
`cms_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  `version` decimal(5,2) NOT NULL,
  `release_notes` text NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) unsigned zerofill DEFAULT NULL,
  `modified_by` int(11) unsigned zerofill DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_email_templates`
--

CREATE TABLE IF NOT EXISTS `srn_email_templates` (
`template_id` int(11) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `template_description` text NOT NULL,
  `template_module` varchar(255) NOT NULL,
  `template_tags` text NOT NULL,
  `template_datecreated` datetime NOT NULL,
  `template_datemodified` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `template_body` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_jmeter_testscripts`
--

CREATE TABLE IF NOT EXISTS `srn_jmeter_testscripts` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `project` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tags` text NOT NULL,
  `script` longtext NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `datecreated` datetime NOT NULL,
  `datemodified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_logs`
--

CREATE TABLE IF NOT EXISTS `srn_logs` (
`log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_type` varchar(255) NOT NULL,
  `log_meta` text NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_master_release`
--

CREATE TABLE IF NOT EXISTS `srn_master_release` (
`release_id` int(11) NOT NULL,
  `version` decimal(10,2) NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_master_users`
--

CREATE TABLE IF NOT EXISTS `srn_master_users` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_permissions`
--

CREATE TABLE IF NOT EXISTS `srn_permissions` (
`permission_id` int(11) NOT NULL,
  `permission_title` varchar(255) NOT NULL,
  `permission_description` varchar(500) NOT NULL,
  `permission_code` varchar(255) NOT NULL,
  `permission_group` varchar(255) NOT NULL,
  `permission_remarks` varchar(500) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_plugins`
--

CREATE TABLE IF NOT EXISTS `srn_plugins` (
`plugin_id` int(11) NOT NULL,
  `plugin_cms_id` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `version` decimal(6,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `tags` text NOT NULL,
  `description` varchar(500) NOT NULL,
  `version_metas` longtext NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_projects`
--

CREATE TABLE IF NOT EXISTS `srn_projects` (
`project_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_logo` varchar(100) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `themes` varchar(1000) NOT NULL,
  `tools` varchar(1000) NOT NULL,
  `config_meta` text NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `project_status` varchar(45) NOT NULL DEFAULT 'Not Started'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_project_artifacts`
--

CREATE TABLE IF NOT EXISTS `srn_project_artifacts` (
`id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `artifact_name` varchar(255) NOT NULL,
  `artifact_description` text NOT NULL,
  `artifact_status` varchar(255) NOT NULL,
  `artifact_tags` text NOT NULL,
  `artifact_datecreated` datetime NOT NULL,
  `artifact_datemodified` datetime NOT NULL,
  `artifact_createdby` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_themes`
--

CREATE TABLE IF NOT EXISTS `srn_themes` (
`theme_id` int(11) NOT NULL,
  `theme_cms_id` varchar(50) NOT NULL,
  `theme_title` varchar(255) NOT NULL,
  `theme_author` varchar(255) NOT NULL,
  `theme_version` decimal(4,2) NOT NULL DEFAULT '1.00',
  `theme_category` varchar(255) NOT NULL,
  `theme_tags` text NOT NULL,
  `theme_description` varchar(500) NOT NULL,
  `version_metas` text NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_tools`
--

CREATE TABLE IF NOT EXISTS `srn_tools` (
`tool_id` int(11) NOT NULL,
  `tool_cms_id` varchar(50) NOT NULL,
  `tool_title` varchar(255) NOT NULL,
  `tool_type` varchar(255) NOT NULL,
  `tool_author` varchar(255) NOT NULL,
  `tool_version` decimal(4,2) NOT NULL DEFAULT '1.00',
  `tool_category` varchar(255) NOT NULL,
  `tool_tags` text NOT NULL,
  `tool_description` varchar(500) NOT NULL,
  `version_metas` text NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `srn_user_roles`
--

CREATE TABLE IF NOT EXISTS `srn_user_roles` (
`user_role_id` int(11) NOT NULL,
  `user_role_title` varchar(255) NOT NULL,
  `user_role_description` varchar(500) NOT NULL,
  `user_role_code` varchar(255) NOT NULL,
  `user_role_permissions` text NOT NULL,
  `user_role_remarks` varchar(500) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `srn_artifact_files`
--
ALTER TABLE `srn_artifact_files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srn_cms`
--
ALTER TABLE `srn_cms`
 ADD PRIMARY KEY (`cms_id`);

--
-- Indexes for table `srn_email_templates`
--
ALTER TABLE `srn_email_templates`
 ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `srn_jmeter_testscripts`
--
ALTER TABLE `srn_jmeter_testscripts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srn_logs`
--
ALTER TABLE `srn_logs`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `srn_master_release`
--
ALTER TABLE `srn_master_release`
 ADD PRIMARY KEY (`release_id`);

--
-- Indexes for table `srn_master_users`
--
ALTER TABLE `srn_master_users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `srn_permissions`
--
ALTER TABLE `srn_permissions`
 ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `srn_plugins`
--
ALTER TABLE `srn_plugins`
 ADD PRIMARY KEY (`plugin_id`);

--
-- Indexes for table `srn_projects`
--
ALTER TABLE `srn_projects`
 ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `srn_project_artifacts`
--
ALTER TABLE `srn_project_artifacts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srn_themes`
--
ALTER TABLE `srn_themes`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `srn_tools`
--
ALTER TABLE `srn_tools`
 ADD PRIMARY KEY (`tool_id`);

--
-- Indexes for table `srn_user_roles`
--
ALTER TABLE `srn_user_roles`
 ADD PRIMARY KEY (`user_role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `srn_artifact_files`
--
ALTER TABLE `srn_artifact_files`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `srn_cms`
--
ALTER TABLE `srn_cms`
MODIFY `cms_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `srn_email_templates`
--
ALTER TABLE `srn_email_templates`
MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `srn_jmeter_testscripts`
--
ALTER TABLE `srn_jmeter_testscripts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `srn_logs`
--
ALTER TABLE `srn_logs`
MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `srn_master_release`
--
ALTER TABLE `srn_master_release`
MODIFY `release_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `srn_master_users`
--
ALTER TABLE `srn_master_users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `srn_permissions`
--
ALTER TABLE `srn_permissions`
MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `srn_plugins`
--
ALTER TABLE `srn_plugins`
MODIFY `plugin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `srn_projects`
--
ALTER TABLE `srn_projects`
MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `srn_project_artifacts`
--
ALTER TABLE `srn_project_artifacts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `srn_themes`
--
ALTER TABLE `srn_themes`
MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `srn_tools`
--
ALTER TABLE `srn_tools`
MODIFY `tool_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `srn_user_roles`
--
ALTER TABLE `srn_user_roles`
MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
