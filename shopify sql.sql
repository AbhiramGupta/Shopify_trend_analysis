--How many total products are there in the dataset?
select count(product_id) AS Total_Products from shopify_products;

--What are the top 5 categories by number of products?
select category,count(product_id) AS Total_Products
from shopify_products
group by category
order by Total_Products desc
limit 5

--What is the average price of products overall?
select avg(price) AS Average_Price
from shopify_products;

--What is the average price per category?
select category,avg(price) AS average_price_per_category
from shopify_products
group by category

--Which categories have an average price higher than the overall average price?
select category,avg(price) AS average_price from shopify_products
group by category
having avg(price) > (
select avg(price) from shopify_products
)


--How many products are priced above the average price?
select count(product_id) from shopify_products
where price > (
select avg(price) from shopify_products
)

--Which categories have the highest average trend score?
select category,avg(trend_score) AS Average_Trend_Score
from shopify_products
group by category
order by Average_Trend_Score desc

--What is the minimum, maximum, and average price for each category?
select category,min(price),max(price),avg(price)
from shopify_products
group by category

--Which categories have more than 20 products?
select category,count(product_id)
from shopify_products
group by category
having count(product_id) > 20


--What percentage of total products does each category contribute?
SELECT 
    category,
    COUNT(product_id) * 100.0 / (
        SELECT COUNT(product_id) 
        FROM shopify_products
    ) AS category_percentage
FROM shopify_products
GROUP BY category;

--How many products have a trend score above the category’s average trend score?
select count(product_id) AS product_count from shopify_products p
join (select category,avg(trend_score) AS averagescore
from shopify_products
group by category) c
on p.category = c.category
where p.trend_score > c.averagescore

--Which categories have the highest number of products priced above the overall average price?
select category,count(product_name) AS products
from shopify_products where price > (
select avg(price) from shopify_products
)
group by category

--What is the average trend score for products priced above the overall average price?
select avg(trend_score) from shopify_products
where price > (
select avg(price) from shopify_products
)

--Which top 5 products have the highest trend score overall?
select product_name,trend_score from shopify_products
order by trend_score desc
limit 5

--Top 3 products in category by trend score
SELECT
    category,
    product_name,
    trend_score
FROM (
    SELECT
        category,
        product_name,
        trend_score,
        DENSE_RANK() OVER (
            PARTITION BY category
            ORDER BY trend_score DESC
        ) AS trend_rank
    FROM shopify_products
) ranked_products
WHERE trend_rank <= 3
ORDER BY category, trend_rank;

WITH cte AS (
select category,product_name,trend_score,
DENSE_RANK() OVER (
PARTITION BY category
ORDER BY trend_score desc
) AS trend_rank
from shopify_products
)

select * from cte
where trend_rank <= 3
order by category,trend_score desc


