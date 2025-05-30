-- Create external data source pointing to your ADLS Gen2
CREATE EXTERNAL DATA SOURCE adls_gold_source
WITH (
    TYPE = HADOOP,
    LOCATION = 'abfss://<container-name>@<storage-account-name>.dfs.core.windows.net/gold/'
);

-- Create external file format for Delta/Parquet
CREATE EXTERNAL FILE FORMAT parquet_format
WITH (
    FORMAT_TYPE = PARQUET
);

-- Create external table for Gold Customer Aggregation
CREATE EXTERNAL TABLE dbo.CustomerCountByCompany (
    CompanyName NVARCHAR(255),
    CustomerCount BIGINT
)
WITH (
    LOCATION = 'SalesLT/CustomerCountByCompany',
    DATA_SOURCE = adls_gold_source,
    FILE_FORMAT = parquet_format
);
