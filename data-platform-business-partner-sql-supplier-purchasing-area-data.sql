CREATE TABLE `data_platform_business_partner_supplier_purchasing_area_data`
(
    `BusinessPartner`                   int(10) NOT NULL,           -- 新規追加
    `Supplier`                          int(10) NOT NULL,
    `PurchaseOrganization`              varchar(4) NOT NULL,
    `DistributionChannel`               varchar(2) NOT NULL,        -- 新規追加
    `Division`                          varchar(2) NOT NULL,        -- 新規追加
    `Currency`                          varchar(5) DEFAULT NULL,    -- 新規追加
    `AccountAssignmentGroup`            varchar(2) DEFAULT NULL,    -- 新規追加    
    `Incoterms`                         varchar(3) DEFAULT NULL,    -- 名称変更
    `InvoiceIsGoodsReceiptBased`        tinyint(1) DEFAULT NULL,
    `PaymentTerms`                      varchar(4) DEFAULT NULL,
    `PaymentMethod`                     varchar(1) DEFAULT NULL,    -- 新規追加
    `PurOrdAutoGenerationIsAllowed`     tinyint(1) DEFAULT NULL,
    `PurchasingIsBlockedForSupplier`    tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`               tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`),

    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaDataDistributionChannel_fk` FOREIGN KEY (`DistributionChannel`) REFERENCES `data_platform_distribution_channel_distribution_channel_data` (`DistributionChannel`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaDataDivision_fk` FOREIGN KEY (`Division`) REFERENCES `data_platform_division_division_data` (`Division`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
