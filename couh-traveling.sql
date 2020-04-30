-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/FEzqyk
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `country` (
    `id` int  NOT NULL ,
    `Name` VARCHAR(255)  NOT NULL ,
    `Capital` VARCHAR(255)  NOT NULL ,
    `Flag` VARCHAR(255)  NOT NULL ,
    `Population` int  NOT NULL ,
    `idCurrency` int  NOT NULL ,
    `idLanguage` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `currency` (
    `id` int  NOT NULL ,
    `Name` VARCHAR(255)  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `language` (
    `id` int  NOT NULL ,
    `Name` VARCHAR(255)  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `food` (
    `id` int  NOT NULL ,
    `Name` VARCHAR(255)  NOT NULL ,
    `idCountry` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `music` (
    `id` int  NOT NULL ,
    `Artist` VARCHAR(255)  NOT NULL ,
    `Title` VARCHAR(255)  NOT NULL ,
    `idCountry` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `museum` (
    `id` int  NOT NULL ,
    `name` VARCHAR(255)  NOT NULL ,
    `description` text  NOT NULL ,
    `website` VARCHAR(255)  NOT NULL ,
    `idCountry` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

ALTER TABLE `country` ADD CONSTRAINT `fk_country_idCurrency` FOREIGN KEY(`idCurrency`)
REFERENCES `currency` (`id`);

ALTER TABLE `country` ADD CONSTRAINT `fk_country_idLanguage` FOREIGN KEY(`idLanguage`)
REFERENCES `language` (`id`);

ALTER TABLE `food` ADD CONSTRAINT `fk_food_idCountry` FOREIGN KEY(`idCountry`)
REFERENCES `country` (`id`);

ALTER TABLE `music` ADD CONSTRAINT `fk_music_idCountry` FOREIGN KEY(`idCountry`)
REFERENCES `country` (`id`);

ALTER TABLE `museum` ADD CONSTRAINT `fk_museum_idCountry` FOREIGN KEY(`idCountry`)
REFERENCES `country` (`id`);

