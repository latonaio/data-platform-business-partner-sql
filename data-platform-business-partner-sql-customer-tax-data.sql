CREATE TABLE `data_platform_business_partner_customer_tax_data`
(
    `BusinessPartner`                 int(12) NOT NULL,         -- 新規追加
    `Customer`                        int(12) NOT NULL,
    `DepartureCountry`                varchar(3) NOT NULL,
    `TaxCategory`                     varchar(4) DEFAULT NULL,
    `TaxClassification`               varchar(1) DEFAULT NULL,  -- 名称変更

    PRIMARY KEY (`BusinessPartner`, `Customer`, `DepartureCountry`),

    CONSTRAINT `DataPlatformBusinessPartnerCustomerTaxData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerTaxDataDepartureCountry_fk` FOREIGN KEY (`DepartureCountry`) REFERENCES `data_platform_country_country_data` (`Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
