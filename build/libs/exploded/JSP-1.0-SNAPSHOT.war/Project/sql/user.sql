CREATE TABLE `user` (
    `id` varchar(50) NOT NULL,
    `password` varchar(45) NOT NULL,
    `role` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`)
)