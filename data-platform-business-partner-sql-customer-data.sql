CREATE TABLE `data_platform_business_partner_customer_data`
(
  `BusinessPartner`               int(10) NOT NULL,      -- 新規追加
  `Customer`                      int(10) NOT NULL,
  `BillingIsBlockedForCustomer`   tinyint(1) DEFAULT NULL,
  `CreationDate`                  varchar(80) DEFAULT NULL,
  `DeliveryIsBlocked`             tinyint(1) DEFAULT NULL,
  `OrderIsBlockedForCustomer`     tinyint(1) DEFAULT NULL,
  `PostingIsBlocked`              tinyint(1) DEFAULT NULL,
  `DeletionIndicator`             tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`BusinessPartner`, `Customer`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
