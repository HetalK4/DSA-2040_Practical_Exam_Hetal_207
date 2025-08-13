
-- Dimension: Date
CREATE TABLE dim_time (
    time_id INT PRIMARY KEY,
    full_date DATE,
    quarter INT,
    year INT
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50)
);

-- Dimension: Customer
CREATE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(50)
);

-- Fact: Sales
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    time_id INT,
    product_id INT,
    customer_id INT,
    quantity_sold INT,
    revenue DECIMAL(10, 2),
    FOREIGN KEY (time_id) REFERENCES dim_time(time_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id)
);
