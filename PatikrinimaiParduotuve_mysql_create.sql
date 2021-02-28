CREATE TABLE `Vartotojai` (
	`id` INT(5) NOT NULL AUTO_INCREMENT,
	`vardas` VARCHAR(225) NOT NULL,
	`pavarde` VARCHAR(225) NOT NULL,
	`slaptazodis` VARCHAR(128) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Vertinimas` (
	`vartotojoId` INT(5) NOT NULL,
	`vertinimas` INT(3) NOT NULL
);

CREATE TABLE `CartUserId` (
	`userId` INT(5) NOT NULL,
	`cartId` INT(5) NOT NULL
);

CREATE TABLE `Items` (
	`id` INT(5) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`price` INT(5) NOT NULL,
	`img` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Cart` (
	`id` INT(5) NOT NULL AUTO_INCREMENT,
	`itemId` INT(5) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Vertinimas` ADD CONSTRAINT `Vertinimas_fk0` FOREIGN KEY (`vartotojoId`) REFERENCES `Vartotojai`(`id`);

ALTER TABLE `CartUserId` ADD CONSTRAINT `CartUserId_fk0` FOREIGN KEY (`userId`) REFERENCES `Vartotojai`(`id`);

ALTER TABLE `CartUserId` ADD CONSTRAINT `CartUserId_fk1` FOREIGN KEY (`cartId`) REFERENCES `Cart`(`id`);

ALTER TABLE `Cart` ADD CONSTRAINT `Cart_fk0` FOREIGN KEY (`itemId`) REFERENCES `Items`(`id`);

