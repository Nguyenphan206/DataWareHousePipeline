# DataWareHousePipeline
End-to-end Azure Data Warehouse pipeline using Data Factory, Databricks (Delta Lake), and Synapse external views — Bronze–Silver–Gold architecture, Lakehouse, cost-efficient analytics.

# Azure Data Warehouse Pipeline (Bronze-Silver-Gold Architecture)

## Architecture Overview


<img width="1746" height="978" alt="image" src="https://github.com/user-attachments/assets/acfe2bee-d68e-4ff2-ac92-af1693926155" />
*End-to-end data flow from ingestion to analytics*

### Pipeline Flow
1. **Data Ingestion (Bronze Layer)**  
   - Azure Data Factory extracts raw data from GitHub
   ![55E4A4AC-7568-4E34-8713-3F19340613FA](https://github.com/user-attachments/assets/db354335-704b-4afc-84fc-0f89741fbb6f)
   - Stores raw datasets in Azure Data Lake (Gen2)
   <img width="3386" height="1170" alt="image" src="https://github.com/user-attachments/assets/99443c44-b5fe-46b6-93e7-23955edf2386" />

2. **Data Transformation (Silver Layer)**  
   - Azure Databricks processes raw data using PySpark  
   - Performs essential cleaning and validation
   <img width="3396" height="1532" alt="image" src="https://github.com/user-attachments/assets/93f9125d-4361-47b9-a81c-e13b360d6725" />
   - Outputs structured data ready for analysis  
   <img width="2592" height="1398" alt="image" src="https://github.com/user-attachments/assets/d2fdc359-5de9-477a-9204-75a677451dde" />

3. **Data Serving (Gold Layer)**  
   - Azure Synapse creates virtual views on processed data
   ![402C7E10-E362-4B57-AE8F-1F4FEC6DF9AD](https://github.com/user-attachments/assets/6347694e-bf57-4d6f-8e66-6ea080b91f54)
   - Views connect directly to transformed datasets  
   - Enables analytics without data duplication
   <img width="3186" height="1576" alt="image" src="https://github.com/user-attachments/assets/5cbb4869-38d3-4713-a904-590f9a35c183" />

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
