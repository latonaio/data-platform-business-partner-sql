CREATE TABLE `data_platform_business_partner_fin_inst_data`  -- 新規追加
(
  `BusinessPartner`           int(12) NOT NULL,              -- 新規追加
  `FinInstIdentification`     int(4) NOT NULL,               -- 新規追加
  `ValidityEndDate`           date NOT NULL,                 -- 新規追加
  `ValidityStartDate`         date DEFAULT NULL,             -- 新規追加
  `FinInstCountry`            varchar(3) DEFAULT NULL,       -- 新規追加
  `FinInstNumber`             varchar(15) DEFAULT NULL,      -- 新規追加
  `FinInstName`               varchar(100) DEFAULT NULL,     -- 新規追加
  `FinInstBranchName`         varchar(100) DEFAULT NULL,     -- 新規追加
  `SWIFTCode`                 varchar(11) DEFAULT NULL,      -- 新規追加
  `InternalFinInstCustomerID` int(12) DEFAULT NULL,          -- 新規追加
  `InternalFinInstAccountID`  int(12) DEFAULT NULL,          -- 新規追加
  `FinInstControlKey`         varchar(2) DEFAULT NULL,       -- 新規追加
  `FinInstAccountName`        varchar(40) DEFAULT NULL,      -- 新規追加
  `FinInstAccount`            varchar(18) DEFAULT NULL,      -- 新規追加
  `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,       -- 新規追加

  PRIMARY KEY (`BusinessPartner`, `FinInstIdentification`, `ValidityEndDate`),

  CONSTRAINT `DataPlatformBusinessPartnerFinInstData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformBusinessPartnerFinInstDataFinInstAccount_fk` FOREIGN KEY (`FinInstCountry`, `FinInstNumber`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`, `FinInstControlKey`, `FinInstAccountName`, `FinInstAccount`) REFERENCES `data_platform_fin_inst_account_item_data` (`FinInstCountry`, `FinInstNumber`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`, `FinInstControlKey`, `FinInstAccountName`, `FinInstAccount``)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
