--Create views calendar
-----------------------
CREATE VIEW gold.calendar
AS
(
SELECT * 
    FROM

    OPENROWSET(
        BULK 'https://awspool2.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    ) as query1
)

--Create views Customer
-----------------------
CREATE VIEW gold.customers
AS
(
SELECT * 
    FROM

    OPENROWSET(
        BULK 'https://awspool2.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    ) as query1
)

--Create views returns
-----------------------
CREATE VIEW gold.returns
AS
(
SELECT * 
    FROM

    OPENROWSET(
        BULK 'https://awspool2.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) as query1
)

--Create views products
-----------------------
CREATE VIEW gold.products
AS
(
SELECT * 
    FROM

    OPENROWSET(
        BULK 'https://awspool2.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    ) as query1
)

--Create views Subcategories
-----------------------
CREATE VIEW gold.subcategories
AS
(
SELECT * 
    FROM

    OPENROWSET(
        BULK 'https://awspool2.blob.core.windows.net/silver/AdventureWorks_SubCategories/',
        FORMAT = 'PARQUET'
    ) as query1
)

--Create views Territories
-----------------------
CREATE VIEW gold.territories
AS
(
SELECT * 
    FROM

    OPENROWSET(
        BULK 'https://awspool2.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) as query1
)

--Create views Sales
-----------------------
CREATE VIEW gold.sales
AS
(
SELECT * 
    FROM

    OPENROWSET(
        BULK 'https://awspool2.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    ) as query1
)

