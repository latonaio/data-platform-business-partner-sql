CREATE TABLE `data_platform_business_partner_general_data`
(
  `BusinessPartner`                 int(10) NOT NULL,
  `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,
  `BusinessPartnerName`             varchar(100) DEFAULT NULL,
  `CreationDate`                    varchar(80) DEFAULT NULL,
  `CreationTime`                    varchar(80) DEFAULT NULL,
  `Industry`                        varchar(200) DEFAULT NULL,
  `LegalEntityRegistration`         varchar(20) DEFAULT NULL,  -- Peppol対応
  `Language`                        varchar(2) DEFAULT NULL,
  `LastChangeDate`                  varchar(80) DEFAULT NULL,
  `LastChangeTime`                  varchar(80) DEFAULT NULL,
  `OrganizationBPName1`             varchar(100) DEFAULT NULL,
  `OrganizationBPName2`             varchar(100) DEFAULT NULL,
  `OrganizationBPName3`             varchar(100) DEFAULT NULL,
  `OrganizationBPName4`             varchar(100) DEFAULT NULL,
  `BPGroup1`                        varchar(6) DEFAULT NULL,  --新規追加
  `BPGroup2`                        varchar(6) DEFAULT NULL,  --新規追加
  `BPGroup3`                        varchar(6) DEFAULT NULL,  --新規追加
  `BPGroup4`                        varchar(6) DEFAULT NULL,  --新規追加
  `BPGroup5`                        varchar(6) DEFAULT NULL,  --新規追加
  `OrganizationFoundationDate`      varchar(80) DEFAULT NULL,
  `OrganizationLiquidationDate`     varchar(80) DEFAULT NULL,
  `SearchTerm1`                     varchar(20) DEFAULT NULL,
  `SearchTerm2`                     varchar(20) DEFAULT NULL,
  `BusinessPartnerBirthplaceName`   varchar(100) DEFAULT NULL,
  `BusinessPartnerDeathDate`        varchar(80) DEFAULT NULL,
  `BusinessPartnerIsBlocked`        tinyint(1) DEFAULT NULL,
  `GroupBusinessPartnerName1`       varchar(100) DEFAULT NULL,
  `GroupBusinessPartnerName2`       varchar(100) DEFAULT NULL,
  `AddressID`                       int(10) DEFAULT NULL,
  `IsMarkedForArchiving`            tinyint(1) DEFAULT NULL,
  `BusinessPartnerIDByExtSystem`    varchar(20) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
