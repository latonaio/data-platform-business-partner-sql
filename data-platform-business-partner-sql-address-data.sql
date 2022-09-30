CREATE TABLE `data_platform_business_partner_address_data`
(
    `BusinessPartner`       varchar(10) NOT NULL,
    `AddressID`             varchar(10) NOT NULL,
    `ValidityEndDate`       varchar(80) NOT NULL,
    `ValidityStartDate`     varchar(80) DEFAULT NULL,
    `Country`               varchar(3) DEFAULT NULL,
    `Region`                varchar(3) DEFAULT NULL,
    `District`              varchar(6) DEFAULT NULL,
    `StreetName`            varchar(60) DEFAULT NULL,
    `CityName`              varchar(40) DEFAULT NULL,
    `PostalCode`            varchar(10) DEFAULT NULL,
    `Language`              varchar(2) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `AddressID`, `ValidityEndDate`),
    CONSTRAINT `DataPlatformBusinessPartnerAddressData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
