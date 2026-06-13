SELECT
ROUND(SUM(Sales),2) AS TotalSales,
ROUND(SUM(Profit),2) AS TotalProfit,
SUM(Quantity) AS TotalQuantitySold
FROM superstoredata;

SELECT 
Region,
SUM(Sales) AS TotalSales
FROM superstoredata
GROUP BY Region;

SELECT 
Category,
SUM(Profit) AS TotalProfit
FROM superstoredata
GROUP BY Category;

SELECT 
Category,
`Sub-Category`,
SUM(Sales) AS TotalSales,
SUM(Profit) AS TotalProfit
FROM superstoredata
GROUP BY Category, `Sub-Category`
HAVING SUM(Profit) < 0;

SELECT 
Discount,
SUM(Sales) AS TotalSales,
SUM(Profit) AS TotalProfit
FROM superstoredata
GROUP BY Discount;
