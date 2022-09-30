CREATE TABLE `data_platform_business_partner_supplier_accounting_data`
(
    `BusinessPartner`             varchar(10) NOT NULL,          --新規追加
    `Supplier`                    varchar(10) NOT NULL,
    `PaymentBlockingReason`       varchar(1) DEFAULT NULL,
    `PaymentMethodsList`          varchar(10) DEFAULT NULL,
    `PaymentTerms`                varchar(4) DEFAULT NULL,
    `ClearCustomerSupplier`       tinyint(1) DEFAULT NULL,
    `HouseBank`                   varchar(5) DEFAULT NULL,
    `ReconciliationAccount`       varchar(10) DEFAULT NULL,
    `SupplierIsBlockedForPosting` tinyint(1) DEFAULT NULL,
    `DeletionIndicator`           tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
