CREATE TABLE `data_platform_business_partner_customer_accounting_data`   -- 名称変更
(
    `BusinessPartner`                 int(10) NOT NULL,
    `Customer`                        int(10) NOT NULL,
    `CustomerSupplierClearingIsUsed`  tinyint(1) DEFAULT NULL,
    `HouseBank`                       varchar(5) DEFAULT NULL,
    `PaymentTerms`                    varchar(4) DEFAULT NULL,
    `PaymentMethod`                   varchar(1) DEFAULT NULL,
    `ReconciliationAccount`           varchar(10) DEFAULT NULL,
    `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Customer`),

    CONSTRAINT `DataPlatformBusinessPartnerCustomerAccountingData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerAccountingDataHouseBank_fk` FOREIGN KEY (`HouseBank`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerAccountingDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerAccountingDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
