PORTFOLIO PROJECT: GLOBAL CORPORATE FINANCIAL DATA ANALYSIS
BACKEND SQL SCRIPTS & DATABASE LOGIC
========================================================================

-- DATA TABLE SCHEMA (financials Table)
-- Column Structure:
--   Country (VARCHAR)  -> Geographic region
--   Product (VARCHAR)  -> Commercial product line
--   Units_Sold (INT)   -> Volume distributed
--   Sales (DECIMAL)    -> Top-line gross revenue
--   Profit (DECIMAL)   -> Bottom-line net profit

========================================================================
1. EXECUTIVE METRICS (KPI SCORECARDS)
========================================================================

-- Query for the "Sum of Sales" Card (Displays: 118.73M)
SELECT 
    SUM(Sales) AS Total_Enterprise_Sales
FROM 
    financials;


-- Query for the "Sum of Profit" Card (Displays: 16.89M)
SELECT 
    SUM(Profit) AS Total_Enterprise_Profit
FROM 
    financials;

========================================================================
2. GEOGRAPHIC DISTRIBUTION
========================================================================

-- Query for the "Sum of Sales by Country" Bar Chart
-- Groups raw data by country and ranks them from highest to lowest sales
SELECT 
    Country,
    SUM(Sales) AS Total_Country_Sales
FROM 
    financials
GROUP BY 
    Country
ORDER BY 
    Total_Country_Sales DESC;

========================================================================
3. PRODUCT PERFORMANCE
========================================================================

-- Query for the "Sum of Units Sold by Product" Donut Chart
-- Tracks which product lines are driving the highest volume
SELECT 
    Product,
    SUM(Units_Sold) AS Total_Units_Distributed
FROM 
    financials
GROUP BY 
    Product
ORDER BY 
    Total_Units_Distributed DESC;
