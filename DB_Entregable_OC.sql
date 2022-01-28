CREATE TABLE `users` (
   `id` INT(10) NOT NULL,
   `name` VARCHAR(10),
   `email` VARCHAR(10),
   PRIMARY KEY (`id`)
);

CREATE TABLE `note` (
   `id` INT(10),
   `id_user` ,
   `title` VARCHAR(100),
   `creation_date` DATE,
   `last_modified_date` DATE,
   `description` TEXT,
   `delete` TINYINT(5),
   PRIMARY KEY (`id`)
);

CREATE TABLE `category` (
   `id` INT(10),
   `name` VARCHAR(15),
   PRIMARY KEY (`id`)
);

CREATE TABLE `Category_Note` (
   `id` INT(10),
   `id_category` INT(10),
   `id_note` INT(10),
   PRIMARY KEY (`id`)
);


ALTER TABLE `note` ADD CONSTRAINT `FK_f0d34e02-28ae-443d-bf0d-2dee4a8b625b` FOREIGN KEY (`id_user`) REFERENCES `users`(`id`)  ;

ALTER TABLE `Category_Note` ADD CONSTRAINT `FK_0022e9a9-a76b-4cc1-b4b6-c79b0e136e83` FOREIGN KEY (`id_note`) REFERENCES `note`(`id`)  ;

ALTER TABLE `Category_Note` ADD CONSTRAINT `FK_64274364-a5f1-41b0-adf4-f79312b6fff6` FOREIGN KEY (`id_category`) REFERENCES `category`(`id`)  ;
