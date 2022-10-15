CREATE TABLE `data_platform_business_partner_supplier_fin_inst_data`  -- 新規追加
(
  `BusinessPartner`           int(10) NOT NULL,             -- 新規追加
  `Supplier`                  int(10) NOT NULL,             -- 新規追加
  `FinInstIdentification`     int(4) NOT NULL,              -- 新規追加
  `ValidityEndDate`           varchar(80) NOT NULL,         -- 新規追加
  `ValidityStartDate`         varchar(80) DEFAULT NULL,     -- 新規追加
  `FinInstCountry`            varchar(3) DEFAULT NULL,      -- 新規追加
  `FinInstNumber`             varchar(15) DEFAULT NULL,     -- 新規追加
  `FinInstName`               varchar(100) DEFAULT NULL,    -- 新規追加
  `FinInstBranchName`         varchar(100) DEFAULT NULL,    -- 新規追加
  `SWIFTCode`                 varchar(11) DEFAULT NULL,     -- 新規追加
  `InternalFinInstCustomerID` int(10) DEFAULT NULL,         -- 新規追加
  `InternalFinInstAccountID`  int(10) DEFAULT NULL,         -- 新規追加
  `FinInstControlKey`         varchar(2) DEFAULT NULL,      -- 新規追加
  `FinInstAccountName`        varchar(40) DEFAULT NULL,     -- 新規追加
  `FinInstAccount`            varchar(18) DEFAULT NULL,     -- 新規追加
  `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,      -- 新規追加
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `FinInstIdentification`, `ValidityEndDate`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierFinInstData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
