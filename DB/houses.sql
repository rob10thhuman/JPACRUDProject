-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema houses
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `houses` ;

-- -----------------------------------------------------
-- Schema houses
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `houses` DEFAULT CHARACTER SET utf8 ;
USE `houses` ;

-- -----------------------------------------------------
-- Table `agents`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agents` ;

CREATE TABLE IF NOT EXISTS `agents` (
  `nrds` VARCHAR(9) NOT NULL,
  `first_name` VARCHAR(25) NULL DEFAULT NULL,
  `last_name` VARCHAR(35) NULL DEFAULT NULL,
  PRIMARY KEY (`nrds`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `clients`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `clients` ;

CREATE TABLE IF NOT EXISTS `clients` (
  `first_name` VARCHAR(20) NULL DEFAULT NULL,
  `last_name` VARCHAR(20) NULL DEFAULT NULL,
  `client_id` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`client_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `house`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `house` ;

CREATE TABLE IF NOT EXISTS `house` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `MLS` VARCHAR(10) NOT NULL,
  `ss` VARCHAR(5) NULL DEFAULT NULL,
  `address` VARCHAR(40) NULL DEFAULT NULL,
  `city` VARCHAR(50) NULL DEFAULT NULL,
  `zip_code` VARCHAR(5) NULL DEFAULT NULL,
  `zoning` VARCHAR(20) NULL DEFAULT NULL,
  `property_type` VARCHAR(20) NULL DEFAULT NULL,
  `floor_plan` VARCHAR(15) NULL DEFAULT NULL,
  `bedrooms` TINYINT(4) NULL DEFAULT NULL,
  `baths` TINYINT(4) NULL DEFAULT NULL,
  `garage_spaces` TINYINT(4) NULL DEFAULT NULL,
  `year_built` VARCHAR(4) NULL DEFAULT NULL,
  `list_price` DECIMAL(13,2) NULL DEFAULT NULL,
  `close_price` DECIMAL(13,2) NULL DEFAULT NULL,
  `main_bed` VARCHAR(5) NULL DEFAULT NULL,
  `sold_concessions` DECIMAL(13,2) NULL DEFAULT NULL,
  `terms_sale` VARCHAR(30) NULL DEFAULT NULL,
  `closed_date` DATE NULL DEFAULT NULL,
  `area` VARCHAR(50) NULL DEFAULT NULL,
  `subarea` VARCHAR(50) NULL DEFAULT NULL,
  `lp_sf` INT(11) NULL DEFAULT NULL,
  `sp_sf` DECIMAL(4,2) NULL DEFAULT NULL,
  `em` DECIMAL(13,2) NULL DEFAULT '0.00',
  `total_sf` INT(11) NULL DEFAULT NULL,
  `finished_sf` INT(11) NULL DEFAULT NULL,
  `hoa_fee` DECIMAL(13,2) NULL DEFAULT NULL,
  `lot_size` DECIMAL(10,2) NULL DEFAULT NULL,
  `main_beds` INT(11) NULL DEFAULT NULL,
  `school_district` VARCHAR(40) NULL DEFAULT NULL,
  `heat_air` VARCHAR(70) NULL DEFAULT NULL,
  `total_acres` INT(11) NULL DEFAULT NULL,
  `fireplace` VARCHAR(120) NULL DEFAULT NULL,
  `listagent` VARCHAR(20) NULL DEFAULT NULL,
  `buyersagent` VARCHAR(20) NULL DEFAULT NULL,
  `dom` INT(11) NULL DEFAULT NULL,
  `cdom` INT(11) NULL DEFAULT NULL,
  `taxid` VARCHAR(15) NULL DEFAULT NULL,
  `listoffice` VARCHAR(125) NULL DEFAULT NULL,
  `selloffice` VARCHAR(125) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 75802
DEFAULT CHARACTER SET = utf8;

USE `houses` ;

-- -----------------------------------------------------
-- procedure agentsalesreport
-- -----------------------------------------------------

USE `houses`;
DROP procedure IF EXISTS `agentsalesreport`;

DELIMITER $$
USE `houses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `agentsalesreport`(in nrdsid varchar(9))
begin
select sum(close_price) from house where (listagent=nrdsid or buyersagent=nrdsid);
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure daysonmarket
-- -----------------------------------------------------

USE `houses`;
DROP procedure IF EXISTS `daysonmarket`;

DELIMITER $$
USE `houses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `daysonmarket`()
begin
select avg(dom) as D38DOM from house where school_district="38-Lewis-Palmer";
select avg(dom) as D20DOM from house where school_district="20-Academy";
end$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure test
-- -----------------------------------------------------

USE `houses`;
DROP procedure IF EXISTS `test`;

DELIMITER $$
USE `houses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`()
select avg(dom) as D38DOM from house where school_district="38-Lewis-Palmer";$$

DELIMITER ;
SET SQL_MODE = '';
DROP USER IF EXISTS rob2018houses;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'rob2018houses' IDENTIFIED BY 'Sam0403101';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'rob2018houses';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `house`
-- -----------------------------------------------------
START TRANSACTION;
USE `houses`;
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (1, '4286331', 'False', '9084 Vanderwood RD', 'Colorado Springs', '80908', 'UNKNOWN', 'Single Family', '2 Story', 3, 3, 2, '2016', 248075, 248075, 'False', 0, 'VA', '2016-03-10', 'FAN - Falcon North', 'Trails At Forest Meadows', 137, 1, 250, 1811, 1811, 98, 5997, 0, '49-Falcon', 'Central Air, Forced Air, Natural Gas', 0, 'None', '635504004', '230015231', 0, 0, '5305101030', 'Non Member', 'Pink Realty, Inc.');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (2, '8160957', 'False', '6486 Rockville DR', 'Colorado Springs', '80923', 'R-1', 'Single Family', '2 Story', 2, 3, 1, '2004', 184900, 184900, 'False', 5547, 'Conventional', '2016-05-31', 'PWR - Powers', 'Ridgeview At Stetson Hills', 144, 1, 1000, 1280, 1280, 76, 4228, 0, '49-Falcon', 'Forced Air', 0, 'None', '219524084', '230008033', 24, 24, '5318207001', 'Walker Realty Group', 'The Platinum Group');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (3, '3290496', 'False', '15520 Bar X RD', 'Colorado Springs', '80908', 'RR-5', 'Single Family', 'Bi-level', 4, 3, 3, '1992', 529900, 521000, 'False', 750, 'Cash', '2016-06-01', 'BLA - Black Forest', 'Wildwood Village', 138, 0.98, 5500, 3850, 3807, 45, 265716, 0, '38-Lewis-Palmer', 'Ceiling Fan, Forced Air, Natural Gas', 6, 'Main, One, Stove, Wood', '230014894', '230017249', 56, 56, '5128008012', 'The Platinum Group', 'Keller Williams Partners Realty');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (4, '3416963', 'False', '8445 Winding Passage DR', 'Colorado Springs', '80924', 'R-1-6000', 'Single Family', '2 Story', 4, 3, 3, '2004', 359900, 355000, 'False', 2000, 'Conventional', '2016-06-01', 'BRI - Briargate', 'Wolf Ranch', 95, 0.99, 3500, 3783, 2503, 26, 8859, 0, '20-Academy', 'Ceiling Fan, Central Air, Forced Air, Natural Gas', 0, 'Gas, Main, One', '230011332', '230010957', 2, 4, '6301112010', 'RE/MAX Properties, Inc.', 'The Platinum Group');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (5, '7610068', 'False', '6015 Abbey Pond LN', 'Colorado Springs', '80924', 'AO, PUD', 'Single Family', 'Ranch', 5, 3, 3, '2006', 435000, 453500, 'True', 0, 'VA', '2016-06-01', 'BRI - Briargate', 'Wolf Ranch', 128, 1.04, 4000, 3400, 3247, 26, 9120, 2, '20-Academy', 'Ceiling Fan, Central Air, Forced Air, Natural Gas', 0, 'Gas, Main, One', '230014190', '230012419', 2, 2, '5231305039', 'Equity Colorado', 'The Platinum Group');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (6, '8668640', 'False', '5925 Revelstoke DR', 'Colorado Springs', '80924', 'R-1', 'Single Family', '2 Story', 6, 4, 3, '2013', 468500, 472000, 'False', 6500, 'Conventional', '2016-06-01', 'BRI - Briargate', 'Wolf Ranch', 102, 1.01, 4500, 4590, 4590, 26, 6600, 0, '20-Academy', 'Central Air, Forced Air', 0, 'One', '205508361', '230012099', 15, 15, '6236115002', 'Tri-Star Realty', 'Keller Williams Clients Choice Rlty');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74781, '1248467', 'False', '3035 Hollycrest DR', 'Colorado Springs', '80920', 'PUD', 'Single Family', 'Ranch', 5, 4, 3, '2004', 648500, 643000, 'True', 0, 'Cash', '2016-06-01', 'BRI - Briargate', 'Pine Creek', 128, 0.99, 6000, 5048, 4997, 72, 11519, 3, '20-Academy', 'Central Air, Forced Air', 0, 'Basement, Gas, Main', '230003071', '230013913', 15, 15, '6227301007', 'The Platinum Group', 'Redfin Corporation');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74794, '6665807', 'False', '2503 E Willamette AV', 'Colorado Springs', '80909', 'R5', 'Single Family', 'Ranch', 4, 2, 3, '1945', 155000, 150000, 'True', 1000, 'VA', '2016-06-01', 'CEN - Central', 'JR Marks', 101, 0.97, 0, 1528, 1528, 0, 7500, 3, '11-Colorado Springs', 'See Prop Desc Remarks', 0, 'None', '230015032', '635504004', 504, 506, '6409415008', 'Keller Williams Clients Choice Rlty', 'Non Member');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74798, '6649643', 'False', '1019 Stewart PL', 'Colorado Springs', '80910', 'R-1', 'Single Family', 'Ranch', 4, 2, 0, '1965', 159900, 169900, 'False', 0, 'FHA', '2016-06-01', 'CEN - Central', 'Prospect Park', 111, 1.06, 1000, 1440, 1404, 0, 6985, 2, '11-Colorado Springs', 'Forced Air', 0, 'None', '230015225', '635504004', 7, 7, '6421303002', 'MountainPeaks Real Estate, Inc.', 'Non Member');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74807, '1231190', 'False', '2317 N Meade AV', 'Colorado Springs', '80907', 'R1-6', 'Single Family', 'Ranch', 3, 1, 1, '1953', 205000, 203000, 'True', 0, 'Conventional', '2016-06-01', 'CEN - Central', 'Belleville', 186, 0.99, 2000, 1103, 1103, 0, 6100, 3, '11-Colorado Springs', 'Forced Air, Natural Gas', 0, 'None', '230011379', '230017238', 7, 7, '6405111010', 'Assist-2-Sell Buyers & Sellers Choice', 'ERA Shields Real Estate                           ');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74810, '8956391', 'False', '2834 N Institute ST', 'Colorado Springs', '80907', 'R1-6', 'Single Family', 'Ranch', 4, 3, 0, '1959', 235000, 229000, 'True', 500, 'Conventional', '2016-06-01', 'CEN - Central', 'Kitty Hawk', 103, 0.97, 2000, 2275, 2172, 0, 7402, 3, '11-Colorado Springs', 'Ceiling Fan, Forced Air, Natural Gas', 0, 'Main, One, Wood', '230014213', '230004920', 7, 7, '6332309014', 'Keller Williams Clients Choice Rlty', 'RE/MAX Performance, Inc.');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74893, '6107427', 'False', '6878 Millbrook CR', 'Fountain', '80817', 'R-1', 'Single Family', 'Tri-Level', 3, 1, 1, '1979', 132000, 132000, 'False', 0, 'Conventional', '2016-06-01', 'F/V - Fountain Valley', 'Country Club Heights', 93, 1, 1000, 1427, 1182, 0, 7114, 0, '3-Widefield', 'Ceiling Fan, Forced Air, Natural Gas', 0, 'None', '230015128', '230016929', 3, 3, '5520101001', 'Premier Real Estate Group', 'RE/MAX Properties, Inc.');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74911, '4135430', 'True', '7485 Dobbs DR', 'Fountain', '80817', 'PUD', 'Single Family', 'Tri-Level', 3, 3, 2, '2007', 185000, 188000, 'False', 4000, 'VA', '2016-06-01', 'F/V - Fountain Valley', 'Cross Creek', 106, 1.02, 2000, 1746, 1382, 0, 6037, 0, '3-Widefield', 'Forced Air, Natural Gas', 0, 'Gas, Lower', '230017081', '230003118', 91, 91, '5529419002', 'Keller Williams Partners Realty', 'Birger & Birger Inc.                              ');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74926, '8409334', 'True', '7419 CREEKFRONT DR', 'Fountain', '80817', 'R-1 5000', 'Single Family', '2 Story', 4, 3, 2, '2005', 222000, 215000, 'False', 5000, 'VA', '2016-06-01', 'F/V - Fountain Valley', 'Cross Creek', 81, 0.97, 2000, 2745, 2021, 180, 7170, 0, '3-Widefield', 'Central Air, Forced Air', 0, 'Main', '230010922', '230010922', 3, 54, '5529404005', 'Highest Point, Inc.', 'Highest Point, Inc.');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74929, '6675215', 'False', '7615 Dobbs DR', 'Fountain', '80817', 'UNKNOWN', 'Single Family', '2 Story', 3, 3, 2, '2008', 220000, 225000, 'False', 2500, 'VA', '2016-06-01', 'F/V - Fountain Valley', 'Mesa Ridge', 105, 1.02, 1500, 2089, 1402, 0, 6195, 0, '3-Widefield', 'Ceiling Fan, Central Air, Forced Air, Natural Gas', 0, 'None', '230010894', '230014861', 2, 2, '5529419010', 'RE/MAX Properties, Inc.', 'Perkins Real Estate Group, LLC');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74935, '5801658', 'False', '7487 Farmcrest RD', 'Colorado Springs', '80925', 'PUD', 'Single Family', 'Ranch', 4, 2, 2, '2005', 224900, 228000, 'True', 4000, 'VA', '2016-06-01', 'F/V - Fountain Valley', 'The Glen At Widefield', 107, 1.01, 2000, 2100, 1985, 130, 5468, 2, '3-Widefield', 'Ceiling Fan, Central Air, Forced Air', 0, 'Gas, Main, One', '230008326', '230016521', 1, 1, '5528205002', 'Jillian Properties, Inc.', 'RE/MAX Properties, Inc.');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74945, '5422603', 'False', '1030 Ancestra DR', 'Fountain', '80817', 'PUD', 'Single Family', 'Ranch', 5, 3, 2, '1999', 234900, 239900, 'True', 4500, 'FHA', '2016-06-01', 'F/V - Fountain Valley', 'Heritage', 94, 1.02, 1000, 2492, 2431, 0, 5247, 3, '8-Fountain', 'Ceiling Fan, Central Air, Forced Air', 0, 'Gas', '230015134', '230011413', 2, 2, '5532111006', 'Keller Williams Clients Choice Rlty', 'Platinum Realty, Inc.');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74950, '5812592', 'False', '11265 Falling Star RD', 'Fountain', '80817', 'PUD', 'Single Family', '4-Levels', 3, 3, 2, '2007', 245000, 247000, 'False', 4000, 'VA', '2016-06-01', 'F/V - Fountain Valley', 'Countryside North', 99, 1.01, 2000, 2480, 1832, 0, 8289, 0, '8-Fountain', 'Ceiling Fan, Central Air, Forced Air, Natural Gas', 0, 'None', '230013350', '230003660', 19, 20, '5609205008', 'RE/MAX Advantage Realty, Inc.', 'Paradigm Real Estate                              ');
INSERT INTO `house` (`id`, `MLS`, `ss`, `address`, `city`, `zip_code`, `zoning`, `property_type`, `floor_plan`, `bedrooms`, `baths`, `garage_spaces`, `year_built`, `list_price`, `close_price`, `main_bed`, `sold_concessions`, `terms_sale`, `closed_date`, `area`, `subarea`, `lp_sf`, `sp_sf`, `em`, `total_sf`, `finished_sf`, `hoa_fee`, `lot_size`, `main_beds`, `school_district`, `heat_air`, `total_acres`, `fireplace`, `listagent`, `buyersagent`, `dom`, `cdom`, `taxid`, `listoffice`, `selloffice`) VALUES (74962, '6408872', 'False', '11135 Falling Star RD', 'Fountain', '80817', 'PUD', 'Single Family', 'Ranch', 5, 3, 2, '2010', 259900, 259900, 'True', 0, 'VA', '2016-06-01', 'F/V - Fountain Valley', 'Countryside North', 108, 1, 2500, 2404, 2404, 0, 6496, 3, '8-Fountain', 'Ceiling Fan, Forced Air', 0, 'None', '230015735', '230014817', 5, 5, '5609205019', 'Premier Real Estate Group', 'Keller Williams Clients Choice Rlty');

COMMIT;

