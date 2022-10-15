CREATE TABLE `data_platform_business_partner_supplier_purchasing_area_data`
(
    `BusinessPartner`                   int(10) NOT NULL,           -- 新規追加
    `Supplier`                          int(10) NOT NULL,
    `PurchaseOrganization`              varchar(4) NOT NULL,
    `DistributionChannel`               varchar(2) NOT NULL,        -- 新規追加
    `Division`                          varchar(2) NOT NULL,        -- 新規追加
    `IncotermsClassification`           varchar(3) DEFAULT NULL,
    `InvoiceIsGoodsReceiptBased`        tinyint(1) DEFAULT NULL,
    `PaymentTerms`                      varchar(4) DEFAULT NULL,
    `PurOrdAutoGenerationIsAllowed`     tinyint(1) DEFAULT NULL,
    `PurchaseOrderCurrency`             varchar(5) DEFAULT NULL,
    `PurchasingIsBlockedForSupplier`    tinyint(1) DEFAULT NULL,
    `DeletionIndicator`                 tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Supplier`, `PurchaseOrganization`, `DistributionChannel`, `Division`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierPurchasingAreaData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
