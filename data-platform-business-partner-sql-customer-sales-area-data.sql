CREATE TABLE `data_platform_business_partner_customer_sales_area_data`
(
    `BusinessPartner`                 int(10) NOT NULL,         -- 新規追加
    `Customer`                        int(10) NOT NULL,
    `SalesOrganization`               varchar(4) NOT NULL,
    `DistributionChannel`             varchar(2) NOT NULL,
    `Division`                        varchar(2) NOT NULL,
    `Currency`                        varchar(5) DEFAULT NULL,
    `PaymentTerms`                    varchar(4) DEFAULT NULL,  -- 名称変更
    `Incoterms`                       varchar(3) DEFAULT NULL,  -- 名称変更
    `InvoiceDate`                     varchar(2) DEFAULT NULL,
    `OrderIsBlockedForCustomer`       tinyint(1) DEFAULT NULL,
    `DeliveryIsBlockedForCustomer`    tinyint(1) DEFAULT NULL,
    `BillingIsBlockedForCustomer`     tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
