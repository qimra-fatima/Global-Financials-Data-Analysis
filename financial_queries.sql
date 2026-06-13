Portfolio Project: Global Corporate Financial Data Analysis
Backend SQL Scripts and Database Logic
    
-- Data table schema (financials Table)
-- Column structure:
--   Country (VARCHAR)  
--   Product (VARCHAR)  
--   Units_Sold (INT)   
--   Sales (DECIMAL)    
--   Profit (DECIMAL)   
1. EXECUTIVE METRICS 
-- Sum of Sales Card
SELECT SUM(Sales) AS total_enterprise_sales
FROM financials;
-- Sum of Profit Card 
SELECT SUM(Profit) AS total_enterprise_profit
FROM financials;
2. GEOGRAPHIC DISTRIBUTION
-- Used for regional revenue performance
SELECT Country, SUM(Sales) AS total_country_sales
FROM financials
GROUP BY Country
ORDER BY total_country_sales DESC;
3. PRODUCT PERFORMANCE
-- Used for product volume distribution visual
SELECT Product, SUM(Units_Sold) AS Total_units_distributed
FROM financials
GROUP BY Product
ORDER BY Total_units_distributed DESC;
