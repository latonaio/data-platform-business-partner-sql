CREATE TABLE `data_platform_business_partner_role_data`
(
    `BusinessPartner`       varchar(10) NOT NULL,
    `BusinessPartnerRole`   varchar(7) NOT NULL,
    `ValidTo`               varchar(80) NOT NULL,
    `ValidFrom`             varchar(80) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `BusinessPartnerRole`, `ValidTo`),
    CONSTRAINT `DataPlatformBusinessPartnerRoleData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
