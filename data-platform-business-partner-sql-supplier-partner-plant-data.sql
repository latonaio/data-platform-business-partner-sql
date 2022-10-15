CREATE TABLE `data_platform_business_partner_supplier_partner_plant_data` -- 新規追加
(
  `BusinessPartner`                 int(10) NOT NULL,           -- 新規追加
  `Supplier`                        int(10) NOT NULL,           -- 新規追加
  `PurchaseOrganization`            varchar(4) NOT NULL,        -- 新規追加 
  `DistributionChannel`             varchar(2) NOT NULL,        -- 新規追加
  `Division`                        varchar(2) NOT NULL,        -- 新規追加
  `PartnerCounter`                  int(3) NOT NULL,            -- 新規追加
  `PartnerFunction`                 varchar(2) NOT NULL,        -- 新規追加
  `PartnerFunctionBusinessPartner`  int(10) NOT NULL,           -- 新規追加
  `PlantCounter`                    int(3) NOT NULL,            -- 新規追加
  `Plant`                           varchar(4) DEFAULT NULL,    -- 新規追加
  `DefaultPlant`                    tinyint(1) DEFAULT NULL,    -- 新規追加
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`, `PlantCounter`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`) REFERENCES `data_platform_business_partner_supplier_partner_function_data` (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
