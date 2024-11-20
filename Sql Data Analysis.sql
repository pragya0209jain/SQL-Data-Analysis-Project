-- Created Database
CREATE DATABASE ecommerce_sales_db;
USE ecommerce_sales_db;

-- Created Table using the structure of dataset
CREATE TABLE ecommerce_sales (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(255),
    price DECIMAL(10, 2),
    review_score DECIMAL(3, 2),
    review_count INT,
    sales_month_1 INT,
    sales_month_2 INT,
    sales_month_3 INT,
    sales_month_4 INT,
    sales_month_5 INT,
    sales_month_6 INT,
    sales_month_7 INT,
    sales_month_8 INT,
    sales_month_9 INT,
    sales_month_10 INT,
    sales_month_11 INT,
    sales_month_12 INT
);

-- Loaded data into table
LOAD DATA INFILE 'G:\Downloads/ecommerce_sales_analysis.csv'
INTO TABLE ecommerce_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Count the total number of records in the dataset.
SELECT COUNT(*) AS Total_Records FROM ecommerce_sales;

-- Find the sum of a numerical column (e.g., sales, prices, scores).
SELECT SUM(price) AS Total_Sales FROM ecommerce_sales;

-- Find the average of a numerical column (e.g., sales, prices, scores).
SELECT AVG(review_score) AS Average_Review_Score FROM ecommerce_sales;

-- Filter the dataset based on a condition (e.g., find all records where a column meets a specific threshold or value).
SELECT * FROM ecommerce_sales WHERE price > 300;