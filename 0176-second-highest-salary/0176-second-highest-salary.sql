# Write your MySQL query statement belo
SELECT MAX(e1.salary) AS SecondHighestSalary
FROM Employee e1 INNER JOIN Employee e2
on e1.salary < e2.salary