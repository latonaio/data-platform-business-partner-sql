CREATE TABLE `data_platform_business_partner_general_pdf_data`
(
  `BusinessPartner`                int(12) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `DocType`, `DocVersionID`, `DocID`),

    CONSTRAINT `DataPlatformBusinessPartnerGeneralPDFData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformBusinessPartnerGeneralPDFDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
