
# DSA-2040_Practical_Exam_Hetal_207

**Overview:** This project is designed to test my practical skills in data warehousing and data mining.

## Project Workflow:

## Section 1: Data Warehousing

### Task 1: Data Warehouse Design

Designing a data warehouse for a retail company that sells products across categories (e.g., electronics, clothing, footwear). The company tracks sales, customers, products, and time.

1. Designed a star schema for this warehouse, where there are:
    - 3 dimension tables ('dim_time', 'dim_product', 'dim_customer')
    - 1 fact table ('fact_sales')

    - The schema design is saved as `1_Star_Schema_Design.jpg`
    - The schema diagram is saved as `2_Star_Schema_Diagram.jpg`

**2. Explain why you chose star schema over snowflake**

    I chose star schema because it has a straightforward design thus making it faster for read-heavy queries (such as aggregations and reports).
    Unlike snowflake schema, it avoids complex joins by denormalizing the dimension tables, thus faster data processing.

3. Thereafter, wrote SQL queries to create tables for the fact table ('fact_sales') and all the dimension tables ('dim_time', 'dim_product', 'dim_customer'). This is in `schema.sql`

Furthermore, created CSV files ('dim_time.csv', 'dim_product.csv', 'dim_customer.csv', 'fact_sales.csv') with a few populated data. This could be used to run queries like total sales by product category per quarter, customer demographics analysis, and inventory trends.

### Task 2: ETL Process Implementation

Used the "Online Retail" dataset from UCI ML Repository.

**Dataset used**: https://archive.ics.uci.edu/dataset/352/online+retail

**Dataset Information:**

This is a transactional data set which contains all the transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail.The company mainly sells unique all-occasion gifts. Many customers of the company are wholesalers.

**Variables**:

- `InvoiceNo` – (categorical) a 6-digit integral number uniquely assigned to each transaction. If this code starts with letter 'c', it indicates a cancellation.	

- `StockCode` – (categorical) a 5-digit integral number uniquely assigned to each distinct product

- `Description` – (categorical) product name

- `Quantity` – (Integer) the quantities of each product (item) per transaction

- `InvoiceDate` – (Date) the day and time when each transaction was generated

- `UnitPrice` – (Continuous) product price per unit, in sterling

- `CustomerID` – (Categorical) a 5-digit integral number uniquely assigned to each customer

- `Country` – (Categorical) the name of the country where each customer resides

1. **Extract:** (`etl_retail.ipynb`)
    - Read the CSV file into a pandas DataFrame
    - Displayed the data through '.head()'
    - Described the dataset through '.info()'
    - Checked and removed duplicate rows
    - Calculated the total number of missing values for each column and dropped rows with missing values
    - Converted 'InvoiceDate' column to datetime format
    - Converted 'CustomerID' column to string

2. **Transform:** (`etl_retail.ipynb`)
    - Removed outliers by keeping rows where the 'Quantity' is greater that 0 and 'UnitPrice' is greater than 0
    - Created a new column for total sales 
    - Filtered data for sales for last year's data 
    - Created a customer dimension table
    - Created a Time dimension table

3. **Load:** (`etl_retail.ipynb`)
    - Used 'sqlite3' in Python to create a database file (`retail_dw.db`).
    - Loaded the transformed data into a fact table (SalesFact) and two dimension tables (CustomerDim, TimeDim).
    - Exported the loaded tables to CSV files (`CustomerDim.csv`, `SalesFact.csv`, `TimDim.csv`)

4. **Function:** (`etl_retail.ipynb`)
    - Wrote a function to perform the full ETL and logged the number of rows processed at each stage.


### Task 3: OLAP Queries and Analysis


## Section 2: Data Mining

### Task 1: Data Preprocessing and Exploration


### Task 2: Clustering


### Task 3: Part A : Classification


### Task 3: Part B: Association Rule Mining