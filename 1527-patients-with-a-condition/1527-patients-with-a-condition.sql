# Write your MySQL query statement below
Select * 
FROM Patients
WHERE conditions like ('DIAB1%') OR conditions LIKE ('% DIAB1%')