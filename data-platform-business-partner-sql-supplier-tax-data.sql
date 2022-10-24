CREATE TABLE `data_platform_business_partner_supplier_tax_data` -- 新規追加
(
    `BusinessPartner`                 int(12) NOT NULL,           -- 新規追加
    `Supplier`                        int(12) NOT NULL,           -- 新規追加
    `DepartureCountry`                varchar(3) NOT NULL,        -- 新規追加
    `TaxCategory`                     varchar(4) DEFAULT NULL,    -- 新規追加
    `TaxClassification`               varchar(1) DEFAULT NULL,    -- 新規追加

    PRIMARY KEY (`BusinessPartner`, `Supplier`, `DepartureCountry`),

    CONSTRAINT `DataPlatformBusinessPartnerSupplierTaxData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierTaxDataDepartureCountry_fk` FOREIGN KEY (`DepartureCountry`) REFERENCES `data_platform_country_country_data` (`Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
