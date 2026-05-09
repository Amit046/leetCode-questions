# Write your MySQL query statement below
SELECT product_id , new_price AS price 
FROM Products
WHERE (product_id,change_date) in
(
    SELECT product_id, max(change_date)
    from Products
    where change_date <= '2019-08-16'
    GROUP BY product_id
)
UNION 
SELECT product_id , 10 AS price 
FROM Products
where product_id NOT IN
(
    Select product_id
    from Products
    Where change_date <= '2019-08-16'
)