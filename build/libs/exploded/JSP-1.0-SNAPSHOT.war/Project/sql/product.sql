CREATE TABLE `product` (
    `productId` varchar(70) NOT NULL,
    `productName` varchar(45) DEFAULT NULL,
    `unitPrice` int DEFAULT NULL,
    `unitsInStock` bigint DEFAULT NULL,
    `description` varchar(100) DEFAULT NULL,
    `producerId` varchar(45) DEFAULT NULL,
    `originalFileName` varchar(70) DEFAULT NULL,
    `location` varchar(45) DEFAULT NULL,
    `category` varchar(45) DEFAULT NULL,
    `shopName` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`productId`)
)