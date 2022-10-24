CREATE TABLE `data_platform_business_partner_supplier_accounting_data`
(
    `BusinessPartner`             int(12) NOT NULL,          -- 新規追加
    `Supplier`                    int(12) NOT NULL,
--  `PaymentBlockingReason`       tinyint(1) DEFAULT NULL,
    `HouseBank`                   varchar(5) DEFAULT NULL,
--  `PaymentTerms`                varchar(4) DEFAULT NULL,
--  `PaymentMethod`               varchar(1) DEFAULT NULL,
    `ClearCustomerSupplier`       tinyint(1) DEFAULT NULL,
    `ReconciliationAccount`       varchar(10) DEFAULT NULL,
--  `SupplierIsBlockedForPosting` tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Supplier`),

    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingDataHouseBank_fk` FOREIGN KEY (`HouseBank`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`),

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
