# DataWareHousePipeline
End-to-end Azure Data Warehouse pipeline using Data Factory, Databricks (Delta Lake), and Synapse external views — Bronze–Silver–Gold architecture, Lakehouse, cost-efficient analytics.

# Azure Data Warehouse Pipeline (Bronze-Silver-Gold Architecture)

## Architecture Overview


<img width="1746" height="978" alt="image" src="https://github.com/user-attachments/assets/acfe2bee-d68e-4ff2-ac92-af1693926155" />
*End-to-end data flow from ingestion to analytics*

### Pipeline Flow
1. **Data Ingestion (Bronze Layer)**  
   - Azure Data Factory extracts raw data from GitHub  
   - Stores raw datasets in Azure Data Lake (Gen2)  

2. **Data Transformation (Silver Layer)**  
   - Azure Databricks processes raw data using PySpark  
   - Performs essential cleaning and validation  
   - Outputs structured data ready for analysis  

3. **Data Serving (Gold Layer)**  
   - Azure Synapse creates virtual views on processed data  
   - Views connect directly to transformed datasets  
   - Enables analytics without data duplication  

## Project Value
- **Complete ETL Implementation**: Full pipeline from source to analytics-ready data
- **Cost Efficiency**: Synapse views eliminate storage duplication
- **Modern Architecture**: Lakehouse pattern with Bronze-Silver-Gold layers
- **Cloud-Native Solution**: Leverages Azure's managed services
- **Production-Ready Design**: Error handling and monitoring included

## Core Technologies
| Component              | Technology               | Purpose                          |
|------------------------|--------------------------|----------------------------------|
| **Data Ingestion**     | Azure Data Factory       | Extract and load raw data        |
| **Data Storage**       | Azure Data Lake Gen2     | Central storage (Bronze/Silver)  |
| **Data Processing**    | Azure Databricks (PySpark)| Clean and transform data         |
| **Data Serving**       | Azure Synapse Analytics  | Virtual views for analytics      |
| **Data Consumption**   | Power BI                 | Reporting and visualization      |

## Key Components
1. **Bronze Layer (Raw)**
   - Preserves original data structure
   - Historical data retention
   - Schema-on-read flexibility

2. **Silver Layer (Cleansed)**
   - Data quality enforcement
   - Standardized schemas
   - Deduplication and error handling

3. **Gold Layer (Curated)**
   - Business-ready datasets
   - Virtual views for analytics
   - Direct querying without data movement

## Final Outputs
- Analytics-ready datasets in Synapse
- Virtual views for business reporting
- Power BI dashboards for data visualization
- Automated data pipeline documentation
