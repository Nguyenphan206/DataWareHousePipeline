CREATE DATABASE SCOPED CREDENTIAL cred_ptn
WITH
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awspool2.blob.core.windows.net/gold',
    CREDENTIAL = cred_ptn

)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)



--- CREATE EXTERNAL TABLE EXTSALES

CREATE EXTERNAL TABLE gold.extsales

WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales



--- CREATE EXTERNAL TABLE EXTCUSTOMERS

CREATE EXTERNAL TABLE gold.extcustomers

WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customers



--- CREATE EXTERNAL TABLE EXTPRODUCTS

CREATE EXTERNAL TABLE gold.extproducts

WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.products



--- CREATE EXTERNAL TABLE EXTRETURNS

CREATE EXTERNAL TABLE gold.extreturns

WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.returns




--- CREATE EXTERNAL TABLE EXTSUBCATEGORIES

CREATE EXTERNAL TABLE gold.extsubcategories

WITH
(
    LOCATION = 'extsubcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.subcategories



--- CREATE EXTERNAL TABLE EXTTERRITORIES

CREATE EXTERNAL TABLE gold.extteritories

WITH
(
    LOCATION = 'extteritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.territories









