CREATE TABLE `data_platform_business_partner_customer_partner_function_data`
(
  `BusinessPartner`                 varchar(10) NOT NULL,      --新規追加
  `Customer`                        varchar(10) NOT NULL,
  `SalesOrganization`               varchar(4) NOT NULL,
  `DistributionChannel`             varchar(2) NOT NULL,
  `Division`                        varchar(2) NOT NULL,
  `PartnerCounter`                  varchar(3) NOT NULL,
  `PartnerFunction`                 varchar(2) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`  varchar(10) DEFAULT NULL,
  `DefaultPartner`                  tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`BusinessPartner`, `Customer`, `SalesOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerFunctionData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
