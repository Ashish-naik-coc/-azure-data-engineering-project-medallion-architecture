# Azure End-to-End Data Engineering Project – Medallion Architecture

This project demonstrates a **real-world Azure data pipeline** using the **Medallion Architecture (Bronze → Silver → Gold). It showcases skills in data ingestion, processing, transformation, security, and visualization.

---

## Business Scenario

A retail company wants to modernize its analytics by:
- Migrating operational data from on-premises SQL Server
- Building a scalable, secure, and high-performance cloud data pipeline
- Enabling data-driven decisions via Power BI dashboards

---

## Technologies Used

| Layer         | Tools & Services |
|---------------|------------------|
| Ingestion     | Azure Data Factory, ADLS Gen2 |
| Processing    | Azure Databricks (PySpark, Delta Lake) |
| Storage       | Bronze, Silver, Gold layers (Medallion Architecture) |
| Querying      | Azure Synapse Analytics |
| Visualization | Power BI |
| Security      | Azure Key Vault |
| DevOps        | GitHub |

---

## Pipeline Flow

1. **Ingest SQL Server data**  
   → using ADF to the **Bronze** layer in ADLS

2. **Clean & transform**  
   → using Databricks to **Silver** layer

3. **Business aggregations & modeling**  
   → Databricks outputs to **Gold** layer

4. **Query**  
   → using external tables in Synapse

5. **Visualize**  
   → Power BI connected to Synapse

---

## Features Implemented

- Incremental Data Loading
- Bronze/Silver/Gold Architecture
- Delta Lake Format & ACID Transactions
- Star Schema (Fact + Dimension Tables)
- Synapse External Tables
- Power BI Dashboard
- Azure Key Vault for secrets

---



