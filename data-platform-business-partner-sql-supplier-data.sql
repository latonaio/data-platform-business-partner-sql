CREATE TABLE `data_platform_business_partner_supplier_data`
(
  `BusinessPartner`               int(12) NOT NULL,         -- 新規追加
  `Supplier`                      int(12) NOT NULL,
  `Currency`                      varchar(5) DEFAULT NULL,
  `PaymentTerms`                  varchar(4) DEFAULT NULL,  -- 名称変更
  `PaymentMethod`                 varchar(1) DEFAULT NULL,  -- 新規追加
  `Incoterms`                     varchar(3) DEFAULT NULL,  -- 名称変更
  `AccountAssignmentGroup`        varchar(2) DEFAULT NULL,  -- 名称変更
  `InvoiceIsGoodsReceiptBased`    tinyint(1) DEFAULT NULL,
  `PurOrdAutoGenerationIsAllowed` tinyint(1) DEFAULT NULL,
  `CreationDate`                  date DEFAULT NULL,
  `QuotationIsBlockedForSupplier` tinyint(1) DEFAULT NULL,  -- 新規追加
  `OrderIsBlockedForSupplier`     tinyint(1) DEFAULT NULL,
  `DeliveryIsBlockedForSupplier`  tinyint(1) DEFAULT NULL,
  `BillingIsBlockedForSupplier`   tinyint(1) DEFAULT NULL,
  `PostingIsBlockedForSupplier`   tinyint(1) DEFAULT NULL,
  `PaymentIsBlockedForSupplier`   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `Supplier`),

  CONSTRAINT `DataPlatformBusinessPartnerSupplierData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierDataSupplier_fk` FOREIGN KEY (`Supplier`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
