# MySQL Setup and Data Analysis

## Setup Instructions

### 1. **Install MySQL**

If you don't have MySQL installed, follow the instructions below to install it based on your operating system.

#### **On Windows:**

1. **Download the MySQL Installer**  
   Go to the official MySQL website and download the MySQL Installer for Windows:  
   [MySQL Installer for Windows](https://dev.mysql.com/downloads/installer/).

2. **Run the MySQL Installer**  
   Once the installer is downloaded, open it and select the **MySQL Server** package. Follow the installation prompts.

3. **Set Root Password**  
   During installation, you will be prompted to set a **root password**. Make sure to remember this password as you will need it later to connect to MySQL.

4. **Install MySQL Workbench**  
   As part of the installation, MySQL Workbench will also be installed. This tool provides a graphical interface to manage MySQL databases.

5. **Complete the Installation**  
   Finish the installation process and MySQL will be ready for use.

### 2. Start MySQL Server

Once MySQL is installed, start the MySQL service:

- **On Windows**: Open MySQL Workbench and connect to the MySQL server using the root password you set during installation.
### 3. Create a New Database

Once MySQL is running, log into MySQL using the following command:

```bash
mysql -u root -p
```
Enter your root password when prompted.

Create a new database where your dataset will be stored:
```
CREATE DATABASE ecommerce_db;
```
Use the newly created database:

sql
```
USE ecommerce_db;
```
### 4. Load the Data into the Database

Place your CSV file (e.g., `ecommerce_sales_analysis.csv`) in a known location on your computer, and then run the `load_data.sql` script.

Here’s an example of how to use `LOAD DATA INFILE` in the `load_data.sql` script to load the data into MySQL:

```
-- Load data into the ecommerce_sales table
LOAD DATA INFILE 'C:/path/to/your/ecommerce_sales_analysis.csv'
INTO TABLE ecommerce_sales
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```
### 5. Run the SQL Queries

After loading the data into MySQL, you can run your queries to analyze the data.
