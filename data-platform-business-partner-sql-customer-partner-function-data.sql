CREATE TABLE `data_platform_business_partner_customer_partner_function_data`
(
  `BusinessPartner`                 int(10) NOT NULL,      -- 新規追加
  `Customer`                        int(10) NOT NULL,
  `SalesOrganization`               varchar(4) NOT NULL,
  `DistributionChannel`             varchar(2) NOT NULL,
  `Division`                        varchar(2) NOT NULL,
  `PartnerCounter`                  int(3) NOT NULL,
  `PartnerFunction`                 varchar(2) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`  int(10) DEFAULT NULL,
  `DefaultPartner`                  tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerFunctionData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`) REFERENCES `data_platform_business_partner_customer_sales_area_data` (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
