# Write your MySQL query statement below
SELECT user_id,
    ConCAT(UPPER(LEFT(name,1)),LOWER(RIght(name,length(name)-1))) as name

FROM Users
ORDER BY user_id