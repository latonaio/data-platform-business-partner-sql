CREATE TABLE `data_platform_business_partner_customer_sales_area_data`
(
    `BusinessPartner`                 varchar(10) NOT NULL,      --新規追加
    `Customer`                        varchar(10) NOT NULL,
    `SalesOrganization`               varchar(4) NOT NULL,
    `DistributionChannel`             varchar(2) NOT NULL,
    `Division`                        varchar(2) NOT NULL,
    `Currency`                        varchar(5) DEFAULT NULL,
    `CustomerPaymentTerms`            varchar(4) DEFAULT NULL,
    `IncotermsClassification`         varchar(3) DEFAULT NULL,
    `InvoiceDate`                     varchar(2) DEFAULT NULL,
    `SalesDistrict`                   varchar(6) DEFAULT NULL,
    `OrderIsBlockedForCustomer`       varchar(2) DEFAULT NULL,
    `DeliveryIsBlockedForCustomer`    varchar(2) DEFAULT NULL,
    `BillingIsBlockedForCustomer`     varchar(2) DEFAULT NULL,
    `DeletionIndicator`               tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
