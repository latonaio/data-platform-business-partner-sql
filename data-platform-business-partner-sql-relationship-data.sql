CREATE TABLE `data_platform_business_partner_relationship_data`    --名称変更
(
    `BusinessPartner`           int(10) NOT NULL,
    `RelationshipNumber`        int(4) NOT NULL,
    `RelationshipCategory`      varchar(20) DEFAULT NULL,
    `BusinessPartner`           int(10) DEFAULT NULL,              --名称変更
    `BusinessPartnerPerson`     varchar(100) DEFAULT NULL,
    `ValidityEndDate`           varchar(80) DEFAULT NULL,
    `ValidityStartDate`         varchar(80) DEFAULT NULL,
    `IsStandardRelationship`    tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `RelationshipNumber`),
    CONSTRAINT `DataPlatformBusinessPartnerRelationshipData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `sap_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
