CREATE TABLE `data_platform_business_partner_role_data`
(
    `BusinessPartner`       int(12) NOT NULL,
    `BusinessPartnerRole`   varchar(30) NOT NULL,
    `ValidityEndDate`       date NOT NULL,
    `ValidityStartDate`     date DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `BusinessPartnerRole`, `ValidityEndDate`),

    CONSTRAINT `DataPlatformBusinessPartnerRoleData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
