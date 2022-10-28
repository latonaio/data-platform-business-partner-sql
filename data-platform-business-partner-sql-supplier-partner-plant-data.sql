CREATE TABLE `data_platform_business_partner_supplier_partner_plant_data` -- 新規追加
(
  `BusinessPartner`                 int(12) NOT NULL,           -- 新規追加
  `Supplier`                        int(12) NOT NULL,           -- 新規追加
--`PurchaseOrganization`            varchar(4) NOT NULL,        -- 新規追加 
--`DistributionChannel`             varchar(2) NOT NULL,        -- 新規追加
--`Division`                        varchar(2) NOT NULL,        -- 新規追加
  `PartnerCounter`                  int(3) NOT NULL,            -- 新規追加
  `PartnerFunction`                 varchar(40) NOT NULL,       -- 新規追加
  `PartnerFunctionBusinessPartner`  int(12) NOT NULL,           -- 新規追加
  `PlantCounter`                    int(3) NOT NULL,            -- 新規追加
  `Plant`                           varchar(4) DEFAULT NULL,    -- 新規追加
  `DefaultPlant`                    tinyint(1) DEFAULT NULL,    -- 新規追加
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,    -- 新規追加
  
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`, `PlantCounter`),
  
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`) REFERENCES `data_platform_business_partner_supplier_partner_function_data` (`BusinessPartner`, `Supplier`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
