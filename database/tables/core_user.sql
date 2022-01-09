CREATE TABLE `u558561951_accessmgmt`.`core_user` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `full_name` VARCHAR(45) GENERATED ALWAYS AS (CONCAT(first_name,' ',last_name)) STORED,
  `email_address` VARCHAR(45) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  `start_date` DATETIME NULL,
  `end_date` DATETIME NULL,
  `creation_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` INT NOT NULL,
  `last_Updated` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` INT NOT NULL,
  `location` VARCHAR(45) NULL,
  `phone_countrycode` SMALLINT(3) NOT NULL,
  `phone_identificationcode` SMALLINT(4) NOT NULL,
  `phone_subscribernumber` MEDIUMINT(12) NOT NULL,
  `photo` TINYBLOB NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC))
ENGINE = MyISAM
COMMENT = 'This table will contain preliminary and Login information for the core users.\nCore users could be developer, tester, administrator who are authorized with priviliges to manage the system and perform any changes to the system.';
