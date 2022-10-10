CREATE TABLE `data_platform_business_partner_bank_data`
(
  `BusinessPartner`           int(10) NOT NULL,
  `BankIdentification`        int(4) NOT NULL,
  `BankCountryKey`            varchar(3) DEFAULT NULL,
  `BankName`                  varchar(60) DEFAULT NULL,
  `BankNumber`                varchar(15) DEFAULT NULL,
  `SWIFTCode`                 varchar(11) DEFAULT NULL,
  `BankControlKey`            varchar(2) DEFAULT NULL,
  `BankAccountName`           varchar(40) DEFAULT NULL,
  `ValidityStartDate`         varchar(80) DEFAULT NULL,
  `ValidityEndDate`           varchar(80) DEFAULT NULL,
  `BankAccount`               varchar(18) DEFAULT NULL,
  PRIMARY KEY (`BusinessPartner`, `BankIdentification`),
  CONSTRAINT `DataPlatformBusinessPartnerBankData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
