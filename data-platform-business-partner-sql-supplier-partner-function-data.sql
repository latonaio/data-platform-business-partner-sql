CREATE TABLE `data_platform_business_partner_supplier_partner_function_data`
(
  `BusinessPartner`                 int(12) NOT NULL,         -- 新規追加
  `Supplier`                        int(12) NOT NULL,
--`PurchaseOrganization`            varchar(4) NOT NULL,
--`DistributionChannel`             varchar(2) NOT NULL,      -- 新規追加
--`Division`                        varchar(2) NOT NULL,      -- 新規追加
  `PartnerCounter`                  int(3) NOT NULL,
  `PartnerFunction`                 varchar(4) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`  int(12) DEFAULT NULL,     -- 新規追加
  `DefaultPartner`                  tinyint(1) DEFAULT NULL,
  `CreationDate`                    date DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,  -- 新規追加

  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PartnerCounter`),

  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerFunctionData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerFunctionDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerFunctionDataPartnerFunctionBusinessPartner_fk` FOREIGN KEY (`PartnerFunctionBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
