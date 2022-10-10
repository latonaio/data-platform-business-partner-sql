CREATE TABLE `data_platform_business_partner_supplier_partner_function_data`
(
  `BusinessPartner`                 int(10) NOT NULL,         --新規追加
  `Supplier`                        int(10) NOT NULL,
  `PurchasingOrganization`          varchar(4) NOT NULL,
  `DistributionChannel`             varchar(2) NOT NULL,      --新規追加
  `Division`                        varchar(2) NOT NULL,      --新規追加
  `PartnerCounter`                  int(3) NOT NULL,
  `PartnerFunction`                 varchar(2) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`  int(10) DEFAULT NULL,     --新規追加
  `DefaultPartner`                  tinyint(1) DEFAULT NULL,
  `CreationDate`                    varchar(80) DEFAULT NULL,
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PurchasingOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerFunctionData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`, `PurchasingOrganization`, `DistributionChannel`, `Division`) REFERENCES `data_platform_business_partner_supplier_purchasing_area_data` (`BusinessPartner`, `Supplier`, `PurchasingOrganization`, `DistributionChannel`, `Division`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
