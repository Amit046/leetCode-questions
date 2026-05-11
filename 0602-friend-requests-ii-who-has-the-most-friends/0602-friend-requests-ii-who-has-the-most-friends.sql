# Write your MySQL query statement below
SELECT id,COUNT(*) AS num
FROM(
SELECT requester_id AS id
FROM RequestAccepted

UNION ALL

SELECT accepter_id AS id
FROM RequestAccepted

) AS friend_name
GROUP BY id
ORDER BY num desc
LIMIT 1