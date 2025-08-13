select top 5 * from gold.extsales a left join gold.extproducts b on a.ProductKey=b.ProductKey
select DISTINCT AnnualIncome  from gold.customers

-- Calculate total sales for each customer
    SELECT 
        case when AnnualIncome >= $30000 then 'Low_Income'
            when AnnualIncome >= $70000 then 'Medium_Income'
            when AnnualIncome >= $100000 then 'High_Income'
        else 'Very_Low' end as Income_segment,
        SUM(sales.Multiply * pro.ProductPrice) as TotalSales
    FROM gold.extsales AS sales
    LEFT JOIN gold.extproducts pro
    ON sales.ProductKey = pro.ProductKey
    LEFT JOIN gold.extcustomers cus
    ON sales.CustomerKey = cus.CustomerKey
    GROUP BY 
        case when AnnualIncome >= $30000 then 'Low_Income'
            when AnnualIncome >= $70000 then 'Medium_Income'
            when AnnualIncome >= $100000 then 'High_Income'
        else 'Very_Low' end

-- Calulate MoM for sales
WITH MOM_Sales as 
(
    SELECT
        FORMAT(sales.OrderDate,'yyyyMM') as Period,
        pro.ProductKey,
        pro.ProductName,
        SUM(sales.Multiply * pro.ProductPrice) AS MonthlySales,
        LAG(SUM(sales.Multiply * pro.ProductPrice), 1, 0) OVER (PARTITION BY pro.ProductKey ORDER BY FORMAT(sales.OrderDate,'yyyyMM')) AS PreviousMonthSales
    
    FROM gold.extsales AS sales
    LEFT JOIN gold.extproducts pro
    ON sales.ProductKey = pro.ProductKey
    GROUP BY
        FORMAT(sales.OrderDate,'yyyyMM'),
        pro.ProductKey,
        pro.productName

)
SELECT
    Period,
    ProductName,
    MonthlySales,
    PreviousMonthSales,
    CASE 
        WHEN PreviousMonthSales = 0 THEN 0
        ELSE (MonthlySales - PreviousMonthSales) * 1.0 / PreviousMonthSales
    END AS MonthlyGrowthRate

FROM MOM_Sales 