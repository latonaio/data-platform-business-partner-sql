CREATE TABLE `data_platform_business_partner_supplier_partner_plant_data` --新規追加
(
  `BusinessPartner`                 varchar(10) NOT NULL,       --新規追加
  `Supplier`                        varchar(10) NOT NULL,       --新規追加
  `PurchaseOrganization`            varchar(4) NOT NULL,        --新規追加 
  `PartnerCounter`                  varchar(3) NOT NULL,        --新規追加
  `PartnerFunction`                 varchar(2) NOT NULL,        --新規追加
  `PartnerFunctionBusinessPartner`  varchar(10) NOT NULL,       --新規追加
  `PlantCounter`                    varchar(3) NOT NULL,        --新規追加
  `Plant`                           varchar(4) DEFAULT NULL,    --新規追加
  `DefaultPlant`                    tinyint(1) DEFAULT NULL,    --新規追加
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`, `PlantCounter`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
