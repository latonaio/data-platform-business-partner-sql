CREATE TABLE `data_platform_business_partner_supplier_partner_function_contact_data`    -- 新規追加
(
  `BusinessPartner`                 int(10) NOT NULL,            -- 新規追加
  `Supplier`                        int(10) NOT NULL,            -- 新規追加
  `PurchaseOrganization`            varchar(4) NOT NULL,         -- 新規追加
  `DistributionChannel`             varchar(2) NOT NULL,         -- 新規追加
  `Division`                        varchar(2) NOT NULL,         -- 新規追加
  `PartnerCounter`                  int(3) NOT NULL,             -- 新規追加
  `ContactID`                       int(4) NOT NULL,             -- 新規追加
  `PartnerFunction`                 varchar(2) DEFAULT NULL,     -- 新規追加
  `PartnerFunctionBusinessPartner`  int(10) DEFAULT NULL,        -- 新規追加
  `DefaultPartner`                  int(10) DEFAULT NULL,        -- 新規追加 
  `ContactPersonName`               varchar(100) DEFAULT NULL,   -- 新規追加
  `EmailAddress`                    varchar(200) DEFAULT NULL,   -- 新規追加
  `PhoneNumber`                     varchar(100) DEFAULT NULL,   -- 新規追加
  `MobilePhoneNumber`               varchar(100) DEFAULT NULL,   -- 新規追加
  `FaxNumber`                       varchar(100) DEFAULT NULL,   -- 新規追加
  `ContactTag1`                     varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag2`                     varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag3`                     varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag4`                     varchar(40) DEFAULT NULL,    -- 新規追加
  `DefaultContact`                  tinyint(1) DEFAULT NULL,     -- 新規追加
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,     -- 新規追加
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`, `ContactID`) ,
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerFunctionContactData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`) REFERENCES `data_platform_business_partner_supplier_partner_function_data` (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`, `PartnerCounter`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
