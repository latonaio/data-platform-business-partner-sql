CREATE TABLE `data_platform_business_partner_customer_accounting_data`   --名称変更
(
    `BusinessPartner`                 int(10) NOT NULL,
    `Customer`                        int(10) NOT NULL,
    `CustomerSupplierClearingIsUsed`  tinyint(1) DEFAULT NULL,
    `HouseBank`                       varchar(5) DEFAULT NULL,
    `PaymentMethodsList`              varchar(10) DEFAULT NULL,
    `PaymentTerms`                    varchar(4) DEFAULT NULL,
    `ReconciliationAccount`           varchar(10) DEFAULT NULL,
    `DeletionIndicator`               tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Customer`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerAccountingData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
