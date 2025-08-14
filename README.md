
# DSA-2040_Practical_Exam_Hetal_207

**Overview:** This project is designed to test my practical skills in data warehousing and data mining.

## Project Structure

```
- SECTION_1_Task_1
    - Data
        - dim_customer.csv
        - dim_product.csv
        - dim_time.csv
        - fact_sales.csv
    - Screenshots
        - 1_Star_Schema_Design.jpg
        - 2_Star_Schema_Diagram.jpg
    - schema.sql
- SECTION_1_Task_2
    - Data
        - CustomerDim.csv
        - SalesFact.csv
        - TimDim.csv
    - etl_retail.ipynb
    - Online Retail.xlsx
    - retail_dw.db
- SECTION_1_Task_3
    - Monthly_Sales_of_UK.png
    - retail_dw.db
    - sales_analysis_report.md
    - SQL_queries.sql
    - visual.ipynb
- SECTION_2_Task_1
    - boxplots.png
    - correlation_heatmap.png
    - pairplot.png
    - preprocessing_iris.ipynb
- SECTION_2_Task_2
    - cluster_analysis_report.md
    - cluster_scatter_plot.png
    - clustering_iris.ipynd
    - elbow_curve.png
- SECTION_2_Task_3
    - classification_association_rules_report.md
    - decision_tree.png
    - minig_iris_basket.ipynb
    - mitai_transaction.csv
- LICENSE
- README.md
```

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

1. **Queries:** Wrote and executed 3 OLAP-style SQL queries:(`SQL_queries.sql`)
    - Roll-up (summarizes data): Grouping sales by 'Country' and Quarter from 'TimeDim'. This helps to see how each country is performing across the year.
    - Drill-down: Obtaining the sales for UK by month. This helps discover seasonal trends in the UK.
    - Slice: Total sales for electronics category. This shows the performance of electronics over time. This helps in inventory planning.

2. **Visualization:** (`visual.ipynb`)
    - Used Python to visualize one query result (ran drill-down query of sales in the UK by month).
    - Visualized the data using a bar chart and saved it as `Monthly_Sales_of_UK.png`.

3. **Report:** (`sales_analysis_report.md`)
    - Indentifed countries making the most revenue (UK). 
    - Described the monthly sales trends in the UK.
    - Described monthly sales trends specific to electronics.



## Section 2: Data Mining

### Task 1: Data Preprocessing and Exploration

**Dataset:** Use the "Iris" dataset from scikit-learn (built-in: from sklearn.datasets import load_iris) with features: sepal length, sepal width, petal length, petal width, and class(species).

(`preprocessing_iris.ipynb`): 

1. Loaded the dataset in Python using pandas
2. **Preprocess:**
    - Checked for missing values in each column (there were none)
    - Checked and removed duplicates from the data set
    - Normalized features using Min-Max scaling
    - Encoded/converted class label (species: 'setosa', 'versicolor', 'virginica') as numbers

3.**Explore:** 
    - Obtained summary statistics to help see the general shape of the data
    - Visualized a pairplot colored by species and saved it as `pairplot.png`.
    - Visualized a correlation heatmap and saved it as `correlation_heatmap.png`. 
    - Visualized boxplots to find outliers by each species and saved it as `boxplots.png`. 

4. Wrote a function to split data into train/test (80/20).


### Task 2: Clustering

(`clustering_iris.ipynb`): 

1. Applied K-Means clustering (from scikit-learn) with k=3.
    - Fit the model on features (excluding class).
    - Predicted clusters and compared with actual classes using Adjusted Rand Index (ARI).

2. **Experiment:** 
    - Experimented with K-Means clustering with k=2 and evaluated with ARI
    - Experimented with K-Means clustering with k=4 and evaluated with ARI
    - Plotted the elbow curve to justify optimal k. Save the visual as `elbow_curve.png`.

3. Visualized clusters (petal length vs width, colored by cluster). This helped see how well the model separated the flower types. Saved the visual as `cluster_scatter_plot.png`.

4. Analyzed the clustering in `cluster_analysis_report.md` (discussed cluster quality, misclassifications, and real-world applications like customer segmentation).  

### Task 3: Part A : Classification

(`minig_iris_basket.ipynb`):

1. Trained a Decision Tree classifier (scikit-learn) on train set.
    - Predicted on test set; computed accuracy, precision, recall, F1-score.
    - Visualized the tree (using plot_tree). Saved the visual as `decision_tree.png`.
2. Compared the model with another classifier ( KNN with k=5); reported which is better and why in `classification_association_rules_report.md`.


### Task 3: Part B: Association Rule Mining

(`minig_iris_basket.ipynb`):

**Dataset:** Generated synthetic transactional data (with 50 transactions, each having a list of 3-8 items from a pool of 20 items). Exported the generated dataset as `mitai_transactions.csv`.

1. Applied Apriori algorithm (using mlxtend library)
    - Found rules with min_support=0.2, min_confidence=0.5.
    - Sorted by lift and displayed top 5 rules.
2. Discussed one rule's implications in `classification_association_rules_report.md`.



