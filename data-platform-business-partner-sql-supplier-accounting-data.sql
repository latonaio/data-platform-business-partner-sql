CREATE TABLE `data_platform_business_partner_supplier_accounting_data`
(
    `BusinessPartner`             int(10) NOT NULL,          -- 新規追加
    `Supplier`                    int(10) NOT NULL,
    `PaymentBlockingReason`       varchar(1) DEFAULT NULL,
    `PaymentMethodsList`          varchar(10) DEFAULT NULL,
    `PaymentTerms`                varchar(4) DEFAULT NULL,
    `ClearCustomerSupplier`       tinyint(1) DEFAULT NULL,
    `HouseBank`                   varchar(5) DEFAULT NULL,
    `ReconciliationAccount`       varchar(10) DEFAULT NULL,
    `SupplierIsBlockedForPosting` tinyint(1) DEFAULT NULL,
    `DeletionIndicator`           tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
