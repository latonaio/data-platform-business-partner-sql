CREATE TABLE `data_platform_business_partner_supplier_partner_function_data`
(
  `BusinessPartner`                 varchar(10) NOT NULL,       --新規追加
  `Supplier`                        varchar(10) NOT NULL,
  `PurchasingOrganization`          varchar(4) NOT NULL,
  `PartnerCounter`                  varchar(3) NOT NULL,
  `PartnerFunction`                 varchar(2) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`   varchar(10) DEFAULT NULL,  --新規追加
  `DefaultPartner`                  tinyint(1) DEFAULT NULL,
  `CreationDate`                    varchar(80) DEFAULT NULL,
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PurchasingOrganization`, `PartnerCounter`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierFunctionData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
