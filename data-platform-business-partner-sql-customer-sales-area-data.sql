CREATE TABLE `data_platform_business_partner_customer_sales_area_data`
(
    `BusinessPartner`                 int(10) NOT NULL,         -- 新規追加
    `Customer`                        int(10) NOT NULL,
    `SalesOrganization`               varchar(4) NOT NULL,
    `DistributionChannel`             varchar(2) NOT NULL,
    `Division`                        varchar(2) NOT NULL,
    `Currency`                        varchar(5) DEFAULT NULL,
    `AccountAssignmentGroup`          varchar(2) DEFAULT NULL,  -- 名称変更    
    `PaymentTerms`                    varchar(4) DEFAULT NULL,  -- 名称変更
    `PaymentMethod`                   varchar(1) DEFAULT NULL,  -- 新規追加
    `Incoterms`                       varchar(3) DEFAULT NULL,  -- 名称変更
    `InvoiceDate`                     varchar(2) DEFAULT NULL,
    `OrderIsBlockedForCustomer`       tinyint(1) DEFAULT NULL,
    `DeliveryIsBlockedForCustomer`    tinyint(1) DEFAULT NULL,
    `BillingIsBlockedForCustomer`     tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`),

    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaDataDistributionChannel_fk` FOREIGN KEY (`DistributionChannel`) REFERENCES `data_platform_distribution_channel_distribution_channel_data` (`DistributionChannel`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaDataDivision_fk` FOREIGN KEY (`Division`) REFERENCES `data_platform_division_division_data` (`Division`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
