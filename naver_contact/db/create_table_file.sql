CREATE TABLE IF NOT EXISTS `nct1`.`contactAdd` (
  `contSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `contFirstName` VARCHAR(45) NULL,
  `contLastName` VARCHAR(45) NOT NULL,
  `contHonorificTitle` VARCHAR(45) NULL,
  `contMidName` VARCHAR(45) NULL,
  `contTitle` VARCHAR(45) NULL,
  `contId` VARCHAR(45) NULL,
  `contNickname` VARCHAR(45) NULL,
  `contMemo` TEXT(4000) NULL,
  `contImage` VARCHAR(100) NULL,
  `contImportant` TINYINT NULL,
  PRIMARY KEY (`contSeq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `nct1`.`contactPhone` (
  `phonSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `phonNumber` VARCHAR(45) NULL,
  `phonList` VARCHAR(45) NOT NULL,
  `contactAdd_contSeq` INT UNSIGNED NOT NULL,
  `phonMain` TINYINT NOT NULL,
  PRIMARY KEY (`phonSeq`),
  INDEX `fk_contactPhone_contactAdd_idx` (`contactAdd_contSeq` ASC) VISIBLE,
  CONSTRAINT `fk_contactPhone_contactAdd`
    FOREIGN KEY (`contactAdd_contSeq`)
    REFERENCES `nct1`.`contactAdd` (`contSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `nct1`.`GroupName` (
  `grouSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `grouName` VARCHAR(45) NULL,
  PRIMARY KEY (`grouSeq`))
ENGINE = InnoDB
;
DROP TABLE contactpage;

CREATE TABLE IF NOT EXISTS `nct1`.`contactGroup` (
  `grouSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `contactAdd_contSeq` INT UNSIGNED NOT NULL,
  `GroupName_grouSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`grouSeq`),
  INDEX `fk_contactGroup2_contactAdd1_idx` (`contactAdd_contSeq` ASC) VISIBLE,
  INDEX `fk_contactGroup_GroupName1_idx` (`GroupName_grouSeq` ASC) VISIBLE,
  CONSTRAINT `fk_contactGroup2_contactAdd1`
    FOREIGN KEY (`contactAdd_contSeq`)
    REFERENCES `nct1`.`contactAdd` (`contSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contactGroup_GroupName1`
    FOREIGN KEY (`GroupName_grouSeq`)
    REFERENCES `nct1`.`GroupName` (`grouSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `nct1`.`contactEmail` (
  `mailSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mailAddr` VARCHAR(45) NULL,
  `contactAdd_contSeq` INT UNSIGNED NOT NULL,
  `mailMain` TINYINT NOT NULL,
  PRIMARY KEY (`mailSeq`),
  INDEX `fk_contactEmail_contactAdd1_idx` (`contactAdd_contSeq` ASC) VISIBLE,
  CONSTRAINT `fk_contactEmail_contactAdd1`
    FOREIGN KEY (`contactAdd_contSeq`)
    REFERENCES `nct1`.`contactAdd` (`contSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `nct1`.`contactAnniversary` (
  `anniSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `anniCalendar` TINYINT NOT NULL,
  `anniList` VARCHAR(45) NOT NULL,
  `anniDate` DATE NULL,
  `contactAdd_contSeq` INT UNSIGNED NOT NULL,
  `anniMain` TINYINT NOT NULL,
  PRIMARY KEY (`anniSeq`),
  INDEX `fk_contactAnniversary_contactAdd1_idx` (`contactAdd_contSeq` ASC) VISIBLE,
  CONSTRAINT `fk_contactAnniversary_contactAdd1`
    FOREIGN KEY (`contactAdd_contSeq`)
    REFERENCES `nct1`.`contactAdd` (`contSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `nct1`.`contactCompany` (
  `compSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `compName` VARCHAR(45) NULL,
  `compDepartment` VARCHAR(45) NULL,
  `compPosition` VARCHAR(45) NULL,
  `contactAdd_contSeq` INT UNSIGNED NOT NULL,
  `compMain` TINYINT NOT NULL,
  PRIMARY KEY (`compSeq`),
  INDEX `fk_contactCompany_contactAdd1_idx` (`contactAdd_contSeq` ASC) VISIBLE,
  CONSTRAINT `fk_contactCompany_contactAdd1`
    FOREIGN KEY (`contactAdd_contSeq`)
    REFERENCES `nct1`.`contactAdd` (`contSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `nct1`.`contactAddress` (
  `addrSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `addrList` VARCHAR(45) NOT NULL,
  `addrZipCode` VARCHAR(45) NULL,
  `addrAddress` VARCHAR(45) NULL,
  `contactAdd_contSeq` INT UNSIGNED NOT NULL,
  `addrMain` TINYINT NOT NULL,
  PRIMARY KEY (`addrSeq`),
  INDEX `fk_contactAddress_contactAdd1_idx` (`contactAdd_contSeq` ASC) VISIBLE,
  CONSTRAINT `fk_contactAddress_contactAdd1`
    FOREIGN KEY (`contactAdd_contSeq`)
    REFERENCES `nct1`.`contactAdd` (`contSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `nct1`.`contactPage` (
  `pageSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pageAddress` VARCHAR(45) NULL,
  `contactAdd_contSeq` INT UNSIGNED NOT NULL,
  `pageMain` TINYINT NOT NULL,
  PRIMARY KEY (`pageSeq`),
  INDEX `fk_contactPage_contactAdd1_idx` (`contactAdd_contSeq` ASC) VISIBLE,
  CONSTRAINT `fk_contactPage_contactAdd1`
    FOREIGN KEY (`contactAdd_contSeq`)
    REFERENCES `nct1`.`contactAdd` (`contSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `nct1`.`contactMessenger` (
  `messSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `messList` VARCHAR(45) NOT NULL,
  `messAddress` VARCHAR(45) NULL,
  `contactAdd_contSeq` INT UNSIGNED NOT NULL,
  `messMain` TINYINT NOT NULL,
  PRIMARY KEY (`messSeq`),
  INDEX `fk_contactMessenger_contactAdd1_idx` (`contactAdd_contSeq` ASC) VISIBLE,
  CONSTRAINT `fk_contactMessenger_contactAdd1`
    FOREIGN KEY (`contactAdd_contSeq`)
    REFERENCES `nct1`.`contactAdd` (`contSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;