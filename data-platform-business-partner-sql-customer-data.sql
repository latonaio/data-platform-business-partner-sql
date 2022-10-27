CREATE TABLE `data_platform_business_partner_customer_data`
(
  `BusinessPartner`               int(12) NOT NULL,         -- 新規追加
  `Customer`                      int(12) NOT NULL,
  `Currency`                      varchar(5) DEFAULT NULL,
  `PaymentTerms`                  varchar(4) DEFAULT NULL,  -- 名称変更
  `PaymentMethod`                 varchar(1) DEFAULT NULL,  -- 新規追加
  `Incoterms`                     varchar(3) DEFAULT NULL,  -- 名称変更
  `BPAccountAssignmentGroup`      varchar(2) DEFAULT NULL,  -- 名称変更
  `CreationDate`                  date DEFAULT NULL,
  `QuotationIsBlockedForCustomer` tinyint(1) DEFAULT NULL,  -- 新規追加
  `OrderIsBlockedForCustomer`     tinyint(1) DEFAULT NULL,
  `DeliveryIsBlockedForCustomer`  tinyint(1) DEFAULT NULL,
  `BillingIsBlockedForCustomer`   tinyint(1) DEFAULT NULL,
  `PostingIsBlockedForCustomer`   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `Customer`),

  CONSTRAINT `DataPlatformBusinessPartnerCustomerData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerDataCustomer_fk` FOREIGN KEY (`Customer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
