CREATE TABLE `data_platform_business_partner_customer_sales_area_tax_data`
(
    `BusinessPartner`                 int(10) NOT NULL,         -- 新規追加
    `Customer`                        int(10) NOT NULL,
    `SalesOrganization`               varchar(4) NOT NULL,
    `DistributionChannel`             varchar(2) NOT NULL,
    `Division`                        varchar(2) NOT NULL,
    `DepartureCountry`                varchar(3) NOT NULL,
    `TaxCategory`                     varchar(4) DEFAULT NULL,
    `TaxClassification`               varchar(4) DEFAULT NULL,  -- 名称変更
    PRIMARY KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`, `DepartureCountry`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerSalesAreaTaxData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`) REFERENCES `data_platform_business_partner_customer_sales_area_data` (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
