CREATE TABLE `data_platform_business_partner_supplier_purchasing_area_tax_data` -- 新規追加
(
    `BusinessPartner`                 int(10) NOT NULL,           -- 新規追加
    `Supplier`                        int(10) NOT NULL,           -- 新規追加
    `PurchaseOrganization`            varchar(4) NOT NULL,        -- 新規追加
    `DistributionChannel`             varchar(2) NOT NULL,        -- 新規追加
    `Division`                        varchar(2) NOT NULL,        -- 新規追加
    `DepartureCountry`                varchar(3) NOT NULL,        -- 新規追加
    `TaxCategory`                     varchar(4) DEFAULT NULL,    -- 新規追加
    `TaxClassification`               varchar(1) DEFAULT NULL,    -- 新規追加

    PRIMARY KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`, `DepartureCountry`),

    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaTaxData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`) REFERENCES `data_platform_business_partner_supplier_purchasing_area_data` (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaTaxDataDepartureCountry_fk` FOREIGN KEY (`DepartureCountry`) REFERENCES `data_platform_country_country_data` (`Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
