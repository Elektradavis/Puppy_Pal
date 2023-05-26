-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema puppy_pal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema puppy_pal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `puppy_pal` DEFAULT CHARACTER SET utf8 ;
USE `puppy_pal` ;

-- -----------------------------------------------------
-- Table `puppy_pal`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puppy_pal`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `puppy_pal`.`dogs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puppy_pal`.`dogs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `breed` VARCHAR(255) NULL,
  `color` VARCHAR(255) NULL,
  `age` INT NULL,
  `weight` INT NULL,
  `sex` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dogs_users_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_dogs_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `puppy_pal`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `puppy_pal`.`trackings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `puppy_pal`.`trackings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `event` VARCHAR(255) NULL,
  `date` DATETIME NULL,
  `time` DATETIME NULL,
  `comments` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `dog_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_trackings_dogs1_idx` (`dog_id` ASC) VISIBLE,
  CONSTRAINT `fk_trackings_dogs1`
    FOREIGN KEY (`dog_id`)
    REFERENCES `puppy_pal`.`dogs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
