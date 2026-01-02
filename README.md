# Online-Retail-Analytics-SQL-Python-Project
This project analyzes an online retail dataset to understand sales performance and customer behavior. Using SQLite, SQL, and Python, the project covers data cleaning, exploratory data analysis (EDA), and customer segmentation using RFM analysis and K-Means clustering.

The goal is to simulate a real-world data analyst workflow and generate actionable business insights.

# Objectives

Understand revenue and customer purchasing behavior

Clean and prepare raw transactional data

Analyze sales trends and customer patterns

Segment customers for targeted business strategies

# Tools & Technologies

Database: SQLite3

Languages: SQL, Python

Libraries: pandas, matplotlib, scikit-learn

Environment: Jupyter Notebook

# Dataset

Source: Online Retail Dataset kaggle 

File Name: online_retail_.csv

Description: Transaction-level data including invoices, products, quantities, prices, customers, and countries.

# Data Cleaning (SQL)

The following data quality issues were identified and handled:

Removed cancelled invoices (InvoiceNo starting with C)

Removed rows with null CustomerID

Removed negative or zero quantities

Removed zero or negative unit prices

A cleaned analytical table (online_retail_clean) was created in SQLite for downstream analysis.

# Exploratory Data Analysis (EDA)

Key analyses performed:

Monthly revenue trends

Top countries by revenue

Customer purchase frequency distribution

Visualizations were created using matplotlib to identify trends and patterns.

# Customer Segmentation (RFM Analysis)

Customers were segmented using:

Recency: Days since last purchase

Frequency: Number of unique invoices

Monetary: Total revenue generated

RFM features were scaled and clustered using K-Means (k = 4) to identify meaningful customer groups.

Identified Segments

High Value: Recent, frequent, high-spending customers

Loyal: Frequent customers with moderate spending

At Risk: Previously active but recently inactive customers

Low Value: Infrequent, low-spending customers

# Key Insights

A small percentage of customers generate a large portion of total revenue

Most customers make only one or two purchases

At-risk customers present opportunities for re-engagement

# Business Recommendations

Introduce loyalty programs for high-value customers

Run reactivation campaigns for at-risk customers
