USE supplement_sales;


-- =====================================================
-- 01. DATASET OVERVIEW
-- =====================================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT `Product Name`) AS total_products,
    COUNT(DISTINCT Category) AS total_categories,
    COUNT(DISTINCT Location) AS total_locations,
    COUNT(DISTINCT Platform) AS total_platforms
FROM sales;


-- =====================================================
-- 02. OVERALL KPI
-- =====================================================

SELECT
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(`Units Sold`) AS total_units_sold,
    SUM(`Units Returned`) AS total_units_returned,
    ROUND(
        SUM(`Units Returned`) / SUM(`Units Sold`) * 100,
        2
    ) AS return_rate_pct,
    ROUND(AVG(Price), 2) AS avg_price,
    ROUND(AVG(Discount) * 100, 2) AS avg_discount_pct
FROM sales;

-- =====================================================
-- 03. CATEGORY PERFORMANCE
-- =====================================================


SELECT
    Category,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(`Units Sold`) AS total_units_sold
FROM sales
GROUP BY Category
ORDER BY total_revenue DESC;


-- =====================================================
-- 04. PLATFORM PERFORMANCE
-- =====================================================

SELECT
    Platform,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(`Units Sold`) AS total_units_sold
FROM sales
GROUP BY Platform
ORDER BY total_revenue DESC;


-- =====================================================
-- 05. LOCATION PERFORMANCE
-- =====================================================

SELECT
    Location,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(`Units Sold`) AS total_units_sold
FROM sales
GROUP BY Location
ORDER BY total_revenue DESC;


-- =====================================================
-- 06. TOP 10 PRODUCTS BY REVENUE
-- =====================================================

SELECT
    `Product Name`,
    Category,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(`Units Sold`) AS total_units_sold
FROM sales
GROUP BY
    `Product Name`,
    Category
ORDER BY total_revenue DESC
LIMIT 10;


-- =====================================================
-- 07. DISCOUNT ANALYSIS
-- =====================================================

SELECT
    CASE
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount <= 0.10 THEN '1-10%'
        WHEN Discount <= 0.20 THEN '11-20%'
        ELSE '>20%'
    END AS discount_level,

    COUNT(*) AS total_transactions,

    ROUND(AVG(Discount) * 100, 2) AS avg_discount_pct,

    ROUND(SUM(Revenue), 2) AS total_revenue,

    SUM(`Units Sold`) AS total_units_sold,

    ROUND(
        SUM(Revenue) / SUM(`Units Sold`),
        2
    ) AS revenue_per_unit

FROM sales

GROUP BY discount_level

ORDER BY revenue_per_unit DESC;


-- =====================================================
-- 08. PRODUCT RETURN RATE
-- =====================================================

SELECT
    `Product Name`,
    Category,
    SUM(`Units Sold`) AS total_units_sold,
    SUM(`Units Returned`) AS total_units_returned,

    ROUND(
        SUM(`Units Returned`)
        / SUM(`Units Sold`) * 100,
        2
    ) AS return_rate_pct

FROM sales

GROUP BY
    `Product Name`,
    Category

ORDER BY return_rate_pct DESC;


-- =====================================================
-- 09. MONTHLY SALES TREND
-- =====================================================

WITH monthly_sales AS (

    SELECT
        DATE_FORMAT(
            CASE
                WHEN CAST(SUBSTRING_INDEX(`ï»¿Date`, '/', 1) AS UNSIGNED) > 12
                    THEN STR_TO_DATE(`ï»¿Date`, '%d/%m/%Y')
                ELSE STR_TO_DATE(`ï»¿Date`, '%m/%d/%Y')
            END,
            '%Y-%m'
        ) AS sales_month,

        ROUND(SUM(Revenue), 2) AS total_revenue,

        SUM(`Units Sold`) AS total_units_sold

    FROM sales

    GROUP BY sales_month
)

SELECT
    sales_month,
    total_revenue,
    total_units_sold
FROM monthly_sales
ORDER BY sales_month;


-- =====================================================
-- 10. YEARLY PERFORMANCE
-- =====================================================

WITH yearly_sales AS (

    SELECT
        YEAR(
            CASE
                WHEN CAST(SUBSTRING_INDEX(`ï»¿Date`, '/', 1) AS UNSIGNED) > 12
                    THEN STR_TO_DATE(`ï»¿Date`, '%d/%m/%Y')
                ELSE STR_TO_DATE(`ï»¿Date`, '%m/%d/%Y')
            END
        ) AS sales_year,

        ROUND(SUM(Revenue), 2) AS total_revenue,

        SUM(`Units Sold`) AS total_units_sold,

        COUNT(*) AS total_transactions

    FROM sales

    GROUP BY sales_year
)

SELECT
    sales_year,
    total_revenue,
    total_units_sold,
    total_transactions
FROM yearly_sales
ORDER BY sales_year;


-- =====================================================
-- 11. REVENUE PER UNIT BY YEAR
-- =====================================================

WITH yearly_sales AS (

    SELECT
        YEAR(
            CASE
                WHEN CAST(SUBSTRING_INDEX(`ï»¿Date`, '/', 1) AS UNSIGNED) > 12
                    THEN STR_TO_DATE(`ï»¿Date`, '%d/%m/%Y')
                ELSE STR_TO_DATE(`ï»¿Date`, '%m/%d/%Y')
            END
        ) AS sales_year,

        ROUND(SUM(Revenue), 2) AS total_revenue,

        SUM(`Units Sold`) AS total_units_sold

    FROM sales

    GROUP BY sales_year
)

SELECT
    sales_year,
    total_revenue,
    total_units_sold,

    ROUND(
        total_revenue / total_units_sold,
        2
    ) AS revenue_per_unit

FROM yearly_sales
ORDER BY sales_year;


