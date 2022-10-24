CREATE TABLE `data_platform_business_partner_supplier_contact_data`
(
  `BusinessPartner`               int(12) NOT NULL,            -- 新規追加
  `Supplier`                      int(12) NOT NULL,            -- 新規追加
  `ContactID`                     int(4) NOT NULL,             -- 新規追加
  `ContactPersonName`             varchar(100) DEFAULT NULL,   -- 新規追加
  `EmailAddress`                  varchar(200) DEFAULT NULL,   -- 新規追加
  `PhoneNumber`                   varchar(100) DEFAULT NULL,   -- 新規追加
  `MobilePhoneNumber`             varchar(100) DEFAULT NULL,   -- 新規追加
  `FaxNumber`                     varchar(100) DEFAULT NULL,   -- 新規追加
  `ContactTag1`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag2`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag3`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag4`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `DefaultContact`                tinyint(1) DEFAULT NULL,     -- 新規追加
  `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,     -- 新規追加
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `ContactID`) ,
  CONSTRAINT `DataPlatformBusinessPartnerSupplierContactData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
