CREATE TABLE `data_platform_business_partner_customer_partner_plant_data` --新規追加
(
  `BusinessPartner`                 varchar(10) NOT NULL,       --新規追加
  `Customer`                        varchar(10) NOT NULL,       --新規追加
  `SalesOrganization`               varchar(4) NOT NULL,        --新規追加 
  `DistributionChannel`             varchar(2) NOT NULL,        --新規追加
  `Division`                        varchar(2) NOT NULL,        --新規追加
  `PartnerCounter`                  varchar(3) NOT NULL,        --新規追加
  `PartnerFunction`                 varchar(2) NOT NULL,        --新規追加
  `PartnerFunctionBusinessPartner`  varchar(10) NOT NULL,       --新規追加
  `PlantCounter`                    varchar(3) NOT NULL,        --新規追加
  `Plant`                           varchar(4) DEFAULT NULL,    --新規追加
  `DefaultPlant`                    tinyint(1) DEFAULT NULL,    --新規追加
  PRIMARY KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`, `PlantCounter`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
