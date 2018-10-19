-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema giraffedb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema giraffedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `giraffedb` DEFAULT CHARACTER SET utf8 ;
USE `giraffedb` ;

-- -----------------------------------------------------
-- Table `giraffedb`.`giraffe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `giraffedb`.`giraffe` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `names` VARCHAR(45) NOT NULL,
  `neck_length_meters` DOUBLE NULL,
  `combat_power` INT NULL,
  `health_points` INT NULL,
  `mother_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE USER 'giraffeuser'@'localhost';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `giraffedb`.* TO 'giraffeuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
