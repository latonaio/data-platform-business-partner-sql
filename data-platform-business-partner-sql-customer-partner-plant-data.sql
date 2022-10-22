CREATE TABLE `data_platform_business_partner_customer_partner_plant_data` -- 新規追加
(
  `BusinessPartner`                 int(10) NOT NULL,           -- 新規追加
  `Customer`                        int(10) NOT NULL,           -- 新規追加
  `SalesOrganization`               varchar(4) NOT NULL,        -- 新規追加 
  `DistributionChannel`             varchar(2) NOT NULL,        -- 新規追加
  `Division`                        varchar(2) NOT NULL,        -- 新規追加
  `PartnerCounter`                  int(3) NOT NULL,            -- 新規追加
  `PartnerFunction`                 varchar(2) NOT NULL,        -- 新規追加
  `PartnerFunctionBusinessPartner`  int(10) NOT NULL,           -- 新規追加
  `PlantCounter`                    int(3) NOT NULL,          　-- 新規追加
  `Plant`                           varchar(4) DEFAULT NULL,    -- 新規追加
  `DefaultPlant`                    tinyint(1) DEFAULT NULL,    -- 新規追加
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,    -- 新規追加
  
  PRIMARY KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`, `PlantCounter`),
  
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`, `PartnerFunctionBusinessPartner`) REFERENCES `data_platform_business_partner_customer_partner_function_data` (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`, `PartnerFunctionBusinessPartner`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)
  
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
