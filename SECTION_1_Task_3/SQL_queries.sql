
-- Roll-up (summarizes data): Total sales by country and quarter 
    --  Grouping sales by 'Country' and Quarter from 'TimeDim'
    -- Using month values to calculate the quarter
    -- This helps to see how each country is performing across the year

SELECT 
    sf.Country,
    td.Year,
    ((td.Month - 1) / 3) + 1 AS Quarter,
    SUM(sf.TotalSales) AS TotalSales
FROM SalesFact sf
JOIN TimeDim td ON DATE(sf.InvoiceDate) = td.Date
GROUP BY sf.Country, td.Year, Quarter
ORDER BY sf.Country, td.Year, Quarter;



-- Drill-down: Sales details for a specific country ('UK') by month
    -- Obtaining the sales for UK by  month
    -- This helps discover seasonal trends in the UK
SELECT 
    td.Year,
    td.Month,
    SUM(sf.TotalSales) AS MonthlySales
FROM SalesFact sf
JOIN TimeDim td ON DATE(sf.InvoiceDate) = td.Date
WHERE sf.Country = 'United Kingdom'
GROUP BY td.Year, td.Month
ORDER BY td.Year, td.Month;



--Slice: Total sales for electronics category 
    -- This shows the performance of electronics over time.
    -- This helps in stock planning.
SELECT 
    td.Year,
    td.Month,
    SUM(sf.TotalSales) AS ElectronicsSales
FROM SalesFact sf
JOIN TimeDim td ON DATE(sf.InvoiceDate) = td.Date
WHERE sf.StockCode = 'Electronics' -- Assuming the StockCode is 'Electronics'
GROUP BY td.Year, td.Month
ORDER BY td.Year, td.Month;


