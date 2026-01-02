/* =========================
   PHASE 1: EXPLORATION
   ========================= */

SELECT * FROM online_retail LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM online_retail;

SELECT COUNT(*) AS null_customers
FROM online_retail
WHERE CustomerID IS NULL;

SELECT COUNT(*) AS negative_quantity
FROM online_retail
WHERE Quantity < 0;

SELECT COUNT(*) AS cancelled_invoices
FROM online_retail
WHERE InvoiceNo LIKE 'C%';


/* =========================
   PHASE 3: DATA CLEANING
   ========================= */

DROP TABLE IF EXISTS online_retail_clean;

CREATE TABLE online_retail_clean AS
SELECT *
FROM online_retail
WHERE
    CustomerID IS NOT NULL
    AND Quantity > 0
    AND UnitPrice > 0
    AND InvoiceNo NOT LIKE 'C%';


/* =========================
   PHASE 3: ANALYSIS
   ========================= */

-- Total Revenue
SELECT 
    ROUND(SUM(Quantity * UnitPrice), 2) AS total_revenue
FROM online_retail_clean;

-- Monthly Revenue (SQLite style)
SELECT
    strftime('%Y-%m', InvoiceDate) AS month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS monthly_revenue
FROM online_retail_clean
GROUP BY month
ORDER BY month;

-- Top Products
SELECT
    Description,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail_clean
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;

-- Top Countries
SELECT
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail_clean
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;

-- Customer metrics
SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS frequency,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM online_retail_clean
GROUP BY CustomerID
ORDER BY revenue DESC;
