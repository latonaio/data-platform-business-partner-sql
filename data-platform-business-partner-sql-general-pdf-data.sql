CREATE TABLE `data_platform_business_partner_general_pdf_data` -- 新規追加
(
  `BusinessPartner`                int(12) NOT NULL,          -- 新規追加
  `DocType`                        varchar(20) NOT NULL,      -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `DocID`                          varchar(100) NOT NULL,     -- 新規追加
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,      -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加

    PRIMARY KEY (`BusinessPartner`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DataPlatformBusinessPartnerGeneralPDFData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformBusinessPartnerGeneralPDFDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
