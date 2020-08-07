-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 05:05 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clg_management`
--
CREATE DATABASE IF NOT EXISTS `clg_management` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `clg_management`;

-- --------------------------------------------------------

--
-- Table structure for table `registrattion`
--

CREATE TABLE `registrattion` (
  `f_name` varchar(10) DEFAULT NULL,
  `l_name` varchar(10) DEFAULT NULL,
  `gender` char(6) DEFAULT NULL,
  `mob_no` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sname` varchar(50) DEFAULT NULL,
  `s_add` varchar(100) DEFAULT NULL,
  `s_phno` bigint(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sname`, `s_add`, `s_phno`, `dob`, `sid`) VALUES
('Srushti', 'New York', 7387999868, '1999-03-10', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);
--
-- Database: `connect_roots`
--
CREATE DATABASE IF NOT EXISTS `connect_roots` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `connect_roots`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `product_img` varchar(100) DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `features` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `product_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_img`, `product_desc`, `features`, `benefits`, `product_link`) VALUES
(36, 'Coconut Oil', 'Coconut_1L_Square.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'https://www.w3schools.com/php/php_mysql_insert_lastid.asp'),
(37, 'Mustard Oil', 'Mustard_1L_Square.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'https://www.w3schools.com/php/php_mysql_insert_lastid.asp'),
(38, 'Groundnut Oil', 'Groundnut_1L_Square.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'https://www.w3schools.com/php/php_mysql_insert_lastid.asp'),
(39, 'Safflower Oil', 'Safflower_1L_Square.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'https://www.w3schools.com/php/php_mysql_insert_lastid.asp'),
(40, 'Sesame Oil', 'Sesame_1L_Square.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sem diam, maximus nec blandit eget, eleifend vel urna. Nunc rutrum dolor vitae ipsum laoreet, vitae feugiat libero aliquam. Donec et sem nisl. Proin et tincidunt nunc. Duis consectetur diam vel lectus pulvinar, nec pharetra purus volutpat. Aliquam in elit a erat imperdiet sollicitudin at in quam. Aliquam egestas pulvinar turpis ac lobortis.', 'https://www.w3schools.com/php/php_mysql_insert_lastid.asp');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `quantity_id` int(11) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`quantity_id`, `qty`, `price`, `product_id`) VALUES
(33, '40ml', '20', 36),
(34, '50ml', '39', 36),
(35, '90ml', '12', 36),
(36, '2ml', '60', 37),
(37, '3ml', '20', 37),
(38, '15l', '30', 38),
(39, '20l', '12', 38),
(40, '4l', '13', 38),
(41, '12l', '34', 38),
(42, '1ml', '2', 39),
(43, '40ml', '12', 40),
(44, '23ml', '14', 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`quantity_id`),
  ADD KEY `quantity_ibfk_1` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `quantity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quantity`
--
ALTER TABLE `quantity`
  ADD CONSTRAINT `quantity_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;
--
-- Database: `inventory`
--
CREATE DATABASE IF NOT EXISTS `inventory` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventory`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL,
  `productname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idproduct`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"connect_roots\",\"table\":\"products\"},{\"db\":\"connect_roots\",\"table\":\"quantity\"},{\"db\":\"zensar\",\"table\":\"employee\"},{\"db\":\"zensar\",\"table\":\"grosssal\"},{\"db\":\"rental\",\"table\":\"car_details\"},{\"db\":\"rental\",\"table\":\"login_creds\"},{\"db\":\"rental\",\"table\":\"car_rental_history\"},{\"db\":\"rental\",\"table\":\"car_images\"},{\"db\":\"women_safety\",\"table\":\"user_details\"},{\"db\":\"women_safety\",\"table\":\"complaint_details\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('connect_roots', 'quantity', 'qty'),
('rental', 'car_details', 'reg_no');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'rental', 'car_details', '[]', '2019-10-10 14:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-07-27 15:02:26', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":111,\"NavigationWidth\":230}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rental`
--
CREATE DATABASE IF NOT EXISTS `rental` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rental`;

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `car_id` int(11) NOT NULL,
  `reg_no` varchar(11) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `car_type` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pick_up_date` date NOT NULL,
  `drop_off_date` date NOT NULL,
  `price` int(11) NOT NULL,
  `fuel_type` varchar(50) NOT NULL,
  `gear_type` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `address` varchar(600) NOT NULL,
  `car_image` varchar(600) NOT NULL,
  `car_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`car_id`, `reg_no`, `model_name`, `car_type`, `user_id`, `pick_up_date`, `drop_off_date`, `price`, `fuel_type`, `gear_type`, `location`, `address`, `car_image`, `car_status`) VALUES
(5, 'MH06346', 'Ford Figo', 'Luxury', 2, '2019-10-13', '2019-10-23', 900, 'Petrol', 'Automatic', 'Pune', 'Flat No. 301, Chandra Darshan Sthal, Plot No. 35, Sector 5, Karanjade', 'car-img3.jpgjpg', 0),
(6, 'MH06346', 'Ford Figo', 'SUV', 2, '2019-10-13', '2019-10-23', 1000, 'Petrol', 'Automatic', 'Pune', 'Flat No. 301, Chandra Darshan Sthal, Plot No. 35, Sector 5, Karanjade', 'car-img3.jpg', 0),
(7, 'MH09134', 'Toyota Camry', 'Luxury', 2, '2019-11-17', '2019-11-21', 800, 'Diesel', 'Manual', 'Alibag', 'Beside Sea Shore', 'download (14).jpg', 0),
(8, 'MH41789', 'Honda City', 'SUV', 1, '2019-11-19', '2019-11-30', 1100, 'Diesel', 'Manual', 'Mumbai', 'Beside Orion Mall, C Heights', 'car-img1.jpg', 0),
(9, 'MH01346', 'Hyundai i20 Asta', 'Muscle', 1, '2019-11-14', '2019-11-17', 300, 'Petrol', 'Manual', 'Mumbai', 'Beside Marine Drive', 'car-image2.jpg', 0),
(10, 'MH53892', 'Ford Ecosport', 'Sedan', 2, '2019-11-15', '2019-11-18', 400, 'CNG', 'Automatic', 'Mumbai', 'Beside Fort', 'car-img3.jpg', 0),
(11, 'MH06346', 'Honda City', 'Muscle', 2, '2019-11-08', '2019-11-15', 200, 'CNG', 'Automatic', 'Alibag', 'Beside Sea Shore', 'download.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `car_rental_history`
--

CREATE TABLE `car_rental_history` (
  `number_plate` int(11) NOT NULL,
  `pick_up_date` date NOT NULL,
  `drop_off_date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_creds`
--

CREATE TABLE `login_creds` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_creds`
--

INSERT INTO `login_creds` (`user_id`, `first_name`, `last_name`, `dob`, `gender`, `email`, `password`) VALUES
(1, 'Srushti', 'Thale', '2019-09-09', 'female', 'srushtithale1999@gmail.com', '123'),
(2, 'Kira', 'knight', '2019-09-03', 'female', 'kira@acd.com', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `login_creds`
--
ALTER TABLE `login_creds`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login_creds`
--
ALTER TABLE `login_creds`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_details`
--
ALTER TABLE `car_details`
  ADD CONSTRAINT `car_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login_creds` (`user_id`) ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `women_safety`
--
CREATE DATABASE IF NOT EXISTS `women_safety` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `women_safety`;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_details`
--

CREATE TABLE `complaint_details` (
  `complaint_id` int(11) NOT NULL,
  `complaint` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_complaint` int(11) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `nearby` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_details`
--

CREATE TABLE `location_details` (
  `location_id` int(11) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `name_of_site` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `relative_no` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `f_name`, `l_name`, `phone_no`, `relative_no`, `password`, `user_name`) VALUES
(1, 'Srushti', 'Thale', 2147483647, 785, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint_details`
--
ALTER TABLE `complaint_details`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `location_details`
--
ALTER TABLE `location_details`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint_details`
--
ALTER TABLE `complaint_details`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_details`
--
ALTER TABLE `location_details`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `zensar`
--
CREATE DATABASE IF NOT EXISTS `zensar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zensar`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `salary`) VALUES
(1, 'Srushti', 20000),
(2, 'Ashu', 100),
(3, 'Naresh', 0),
(4, 'Diya', 20),
(5, 'Shruti', 25),
(6, 'Kshitij', 30);

-- --------------------------------------------------------

--
-- Table structure for table `grosssal`
--

CREATE TABLE `grosssal` (
  `id` int(11) NOT NULL,
  `gross_sal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
