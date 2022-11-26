CREATE TABLE `reservation` (
    `orderNumber` varchar(80) NOT NULL,
    `reserveUser` varchar(70) NOT NULL,
    `productId` varchar(70) NOT NULL,
    `productName` varchar(45) DEFAULT NULL,
    `reserveAmount` varchar(45) DEFAULT NULL,
    `producerId` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`reserveUser`,`productId`,`orderNumber`)
)