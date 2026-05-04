# Write your MySQL query statement below
select 
    product_id,
    year AS first_year,
    quantity,
    price
from Sales
where (product_id , year) IN (
    Select product_id , MIN(year) AS f_year
    from Sales
    GROUP BY product_id
)
