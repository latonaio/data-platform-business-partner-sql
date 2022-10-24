CREATE TABLE `data_platform_business_partner_customer_partner_function_data`
(
  `BusinessPartner`                 int(12) NOT NULL,         -- 新規追加
  `Customer`                        int(12) NOT NULL,
--`SalesOrganization`               varchar(4) NOT NULL,
--`DistributionChannel`             varchar(2) NOT NULL,
--`Division`                        varchar(2) NOT NULL,
  `PartnerCounter`                  int(3) NOT NULL,
  `PartnerFunction`                 varchar(4) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`  int(12) DEFAULT NULL,     -- 名称変更
  `DefaultPartner`                  tinyint(1) DEFAULT NULL,
  `CreationDate`                    date DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,  -- 新規追加

  PRIMARY KEY (`BusinessPartner`, `Customer`, `PartnerCounter`),

  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerFunctionData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`),  
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerFunctionDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`)
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerFunctionDataPartnerFunctionBusinessPartner_fk` FOREIGN KEY (`PartnerFunctionBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
