CREATE TABLE `users` (
                         `name` VARCHAR(50) NOT NULL,
                         `id` INT NOT NULL AUTO_INCREMENT,
                         `password` VARCHAR(16) NOT NULL,
                         `email` VARCHAR(128),
                         PRIMARY KEY (`id`)
);