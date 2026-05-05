# Write your MySQL query statement below
select class
FROm Courses
GROUP BY class
having count(student)>=5