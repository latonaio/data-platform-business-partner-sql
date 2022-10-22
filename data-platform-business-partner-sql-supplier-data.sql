CREATE TABLE `data_platform_business_partner_supplier_data`
(
  `BusinessPartner`              int(10) NOT NULL,          -- 新規追加
  `Supplier`                     int(10) NOT NULL,
  `CreationDate`                 varchar(80) DEFAULT NULL,
  `PaymentIsBlockedForSupplier`  tinyint(1) DEFAULT NULL,
  `PostingIsBlocked`             tinyint(1) DEFAULT NULL,
  `PurchasingIsBlocked`          tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `Supplier`),

  CONSTRAINT `DataPlatformBusinessPartnerSupplierData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierDataSupplier_fk` FOREIGN KEY (`Supplier`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
