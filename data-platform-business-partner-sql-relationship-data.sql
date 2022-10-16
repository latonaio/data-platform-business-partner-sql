CREATE TABLE `data_platform_business_partner_relationship_data`  -- 名称変更
(
    `BusinessPartner`                int(10) NOT NULL,
    `RelationshipNumber`             int(4) NOT NULL,
    `ValidityEndDate`                varchar(80) NOT NULL,
    `ValidityStartDate`              varchar(80) DEFAULT NULL,
    `RelationshipCategory`           varchar(20) DEFAULT NULL,
    `RelationshipBusinessPartner`    int(10) DEFAULT NULL,        -- 名称変更
    `BusinessPartnerPerson`          varchar(100) DEFAULT NULL,
    `IsStandardRelationship`         tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,      -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `RelationshipNumber`, `ValidityEndDate`),
    CONSTRAINT `DataPlatformBusinessPartnerRelationshipData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
