CREATE TABLE `data_platform_business_partner_supplier_accounting_data`
(
    `BusinessPartner`             int(10) NOT NULL,          -- 新規追加
    `Supplier`                    int(10) NOT NULL,
    `PaymentBlockingReason`       tinyint(1) DEFAULT NULL,
    `HouseBank`                   varchar(5) DEFAULT NULL,
    `PaymentTerms`                varchar(4) DEFAULT NULL,
    `PaymentMethod`               varchar(1) DEFAULT NULL,
    `ClearCustomerSupplier`       tinyint(1) DEFAULT NULL,
    `ReconciliationAccount`       varchar(10) DEFAULT NULL,
    `SupplierIsBlockedForPosting` tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Supplier`),

    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingDataHouseBank_fk` FOREIGN KEY (`HouseBank`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
