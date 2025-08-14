
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

This is a transactional data set which contains all the transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail.The company mainly sells unique all-occasion gifts. Many customers of the company are wholesalers.

### Task 3: OLAP Queries and Analysis


## Section 2: Data Mining

### Task 1: Data Preprocessing and Exploration


### Task 2: Clustering


### Task 3: Part A : Classification


### Task 3: Part B: Association Rule Mining