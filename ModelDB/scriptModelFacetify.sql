-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema FacetifyDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema FacetifyDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `FacetifyDB` DEFAULT CHARACTER SET utf8 ;
USE `FacetifyDB` ;

-- -----------------------------------------------------
-- Table `FacetifyDB`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FacetifyDB`.`users` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `fullname` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `cellphone` VARCHAR(10) NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FacetifyDB`.`profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FacetifyDB`.`profile` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `rol` VARCHAR(45) NOT NULL,
  `biography` VARCHAR(200) NOT NULL,
  `photo` VARCHAR(45) NOT NULL,
  `fk_user_id` BIGINT NOT NULL,
  INDEX `fk_user_id_idx` (`fk_user_id` ASC) VISIBLE,
  PRIMARY KEY (`id`, `fk_user_id`),
  CONSTRAINT `fk_user_id`
    FOREIGN KEY (`fk_user_id`)
    REFERENCES `FacetifyDB`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FacetifyDB`.`publications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FacetifyDB`.`publications` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `footer` VARCHAR(45) NOT NULL,
  `img` VARCHAR(45) NOT NULL,
  `events_details` VARCHAR(400) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FacetifyDB`.`profile_has_publications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FacetifyDB`.`profile_has_publications` (
  `profile_id` BIGINT NOT NULL,
  `publications_id` BIGINT NOT NULL,
  PRIMARY KEY (`profile_id`, `publications_id`),
  INDEX `publications_id_idx` (`publications_id` ASC) VISIBLE,
  CONSTRAINT `profile_id`
    FOREIGN KEY (`profile_id`)
    REFERENCES `FacetifyDB`.`profile` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `publications_id`
    FOREIGN KEY (`publications_id`)
    REFERENCES `FacetifyDB`.`publications` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
